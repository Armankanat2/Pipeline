param()

$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.Drawing

$repoRoot = Split-Path -Parent $PSScriptRoot
$assetBase = Join-Path $repoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready'
$reportPath = Join-Path $repoRoot '02_Research\Montazhnik_lesov\08_Deck\08_image_aspect_ratio_report.html'

$targets = @(
    @{ Id='TOOLS'; Pptx=(Join-Path $assetBase 'ML_tools_markup_editable_single_v0.1.pptx'); Slides=@(1) }
    @{ Id='S13';   Pptx=(Join-Path $assetBase 'ML_S13_markup_editable_single_v0.1.pptx'); Slides=@(1) }
    @{ Id='S14';   Pptx=(Join-Path $assetBase 'ML_S14_S16_markup_editable_v0.1.pptx'); Slides=@(1) }
    @{ Id='S16A';  Pptx=(Join-Path $assetBase 'ML_S14_S16_markup_editable_v0.1.pptx'); Slides=@(2) }
    @{ Id='S16';   Pptx=(Join-Path $assetBase 'ML_S16_markup_editable_single_v0.1.pptx'); Slides=@(1) }
    @{ Id='S17';   Pptx=(Join-Path $assetBase 'ML_S17_markup_editable_single_v0.1.pptx'); Slides=@(1) }
    @{ Id='S18';   Pptx=(Join-Path $assetBase 'ML_S18_markup_editable_single_v0.1.pptx'); Slides=@(1) }
)

function Get-ZipXmlDocument {
    param(
        $Zip,
        [string]$EntryName
    )

    $entry = $Zip.Entries | Where-Object FullName -eq $EntryName | Select-Object -First 1
    if (-not $entry) { return $null }

    $reader = New-Object IO.StreamReader($entry.Open())
    try {
        $text = $reader.ReadToEnd()
    }
    finally {
        $reader.Close()
    }

    $xml = New-Object System.Xml.XmlDocument
    $xml.LoadXml($text)
    return $xml
}

function Get-ZipBitmapInfo {
    param(
        $Zip,
        [string]$EntryName
    )

    $entry = $Zip.Entries | Where-Object FullName -eq $EntryName | Select-Object -First 1
    if (-not $entry) { return $null }

    $memory = New-Object IO.MemoryStream
    $stream = $entry.Open()
    try {
        $stream.CopyTo($memory)
    }
    finally {
        $stream.Close()
    }
    $memory.Position = 0

    $image = [System.Drawing.Image]::FromStream($memory)
    try {
        return [pscustomobject]@{
            Width  = $image.Width
            Height = $image.Height
            Entry  = $EntryName
        }
    }
    finally {
        $image.Dispose()
        $memory.Dispose()
    }
}

function Get-CropFactor {
    param(
        [System.Xml.XmlNode]$SrcRectNode,
        [string]$Attr
    )

    if (-not $SrcRectNode) { return 1.0 }
    $value = $SrcRectNode.GetAttribute($Attr)
    if ([string]::IsNullOrWhiteSpace($value)) { return 1.0 }
    return 1.0 - ([double]$value / 100000.0)
}

$rows = @()

foreach ($target in $targets) {
    $zip = [IO.Compression.ZipFile]::OpenRead($target.Pptx)
    try {
        foreach ($slideNumber in $target.Slides) {
            $slideXml = Get-ZipXmlDocument -Zip $zip -EntryName ("ppt/slides/slide{0}.xml" -f $slideNumber)
            $relsXml = Get-ZipXmlDocument -Zip $zip -EntryName ("ppt/slides/_rels/slide{0}.xml.rels" -f $slideNumber)
            if (-not $slideXml -or -not $relsXml) { continue }

            $ns = New-Object System.Xml.XmlNamespaceManager($slideXml.NameTable)
            $ns.AddNamespace('p', 'http://schemas.openxmlformats.org/presentationml/2006/main')
            $ns.AddNamespace('a', 'http://schemas.openxmlformats.org/drawingml/2006/main')
            $ns.AddNamespace('r', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships')

            $picNodes = $slideXml.SelectNodes('//p:pic', $ns)
            $index = 0
            foreach ($pic in $picNodes) {
                $index++

                $nameNode = $pic.SelectSingleNode('./p:nvPicPr/p:cNvPr', $ns)
                $name = if ($nameNode) { $nameNode.GetAttribute('name') } else { "Picture $index" }

                $blip = $pic.SelectSingleNode('.//a:blip', $ns)
                if (-not $blip) { continue }
                $relId = $blip.GetAttribute('embed', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships')
                $relNode = $relsXml.Relationships.Relationship | Where-Object Id -eq $relId | Select-Object -First 1
                if (-not $relNode) { continue }

                $targetPath = $relNode.Target -replace '^\.\./', 'ppt/'
                $bitmap = Get-ZipBitmapInfo -Zip $zip -EntryName $targetPath
                if (-not $bitmap) { continue }

                $extNode = $pic.SelectSingleNode('./p:spPr/a:xfrm/a:ext', $ns)
                if (-not $extNode) { continue }
                $cx = [double]$extNode.GetAttribute('cx')
                $cy = [double]$extNode.GetAttribute('cy')
                if ($cx -le 0 -or $cy -le 0 -or $bitmap.Width -le 0 -or $bitmap.Height -le 0) { continue }

                $srcRect = $pic.SelectSingleNode('./p:blipFill/a:srcRect', $ns)
                $visibleWidthFactor = Get-CropFactor -SrcRectNode $srcRect -Attr 'l'
                $visibleWidthFactor *= Get-CropFactor -SrcRectNode $srcRect -Attr 'r'
                $visibleHeightFactor = Get-CropFactor -SrcRectNode $srcRect -Attr 't'
                $visibleHeightFactor *= Get-CropFactor -SrcRectNode $srcRect -Attr 'b'

                $sourceRatio = ($bitmap.Width * $visibleWidthFactor) / ($bitmap.Height * $visibleHeightFactor)
                $slideRatio = $cx / $cy
                $distortionPercent = [math]::Abs(($slideRatio / $sourceRatio) - 1.0) * 100.0

                $risk = 'ok'
                if ($distortionPercent -ge 3.0) {
                    $risk = 'high'
                }
                elseif ($distortionPercent -ge 1.0) {
                    $risk = 'medium'
                }

                $rows += [pscustomobject]@{
                    SlideId      = $target.Id
                    Pptx         = [IO.Path]::GetFileName($target.Pptx)
                    SlideNumber  = $slideNumber
                    PictureIndex = $index
                    PictureName  = $name
                    MediaEntry   = $bitmap.Entry
                    SourceSize   = ('{0}x{1}' -f $bitmap.Width, $bitmap.Height)
                    SlideRatio   = [math]::Round($slideRatio, 4)
                    SourceRatio  = [math]::Round($sourceRatio, 4)
                    Distortion   = [math]::Round($distortionPercent, 2)
                    Risk         = $risk
                }
            }
        }
    }
    finally {
        $zip.Dispose()
    }
}

$summary = $rows | Group-Object SlideId | ForEach-Object {
    $riskOrder = @{ high = 3; medium = 2; ok = 1 }
    $top = $_.Group | Sort-Object @{ Expression = { $riskOrder[$_.Risk] }; Descending = $true }, @{ Expression = 'Distortion'; Descending = $true } | Select-Object -First 1
    [pscustomobject]@{
        SlideId = $_.Name
        MaxRisk = $top.Risk
        MaxDistortion = $top.Distortion
        ProblemCount = ($_.Group | Where-Object Risk -ne 'ok').Count
    }
}

$summaryRows = foreach ($row in ($summary | Sort-Object @{ Expression = { @{ high = 3; medium = 2; ok = 1 }[$_.MaxRisk] }; Descending = $true }, SlideId)) {
    "<tr class='risk-$($row.MaxRisk)'><td>$($row.SlideId)</td><td>$($row.MaxRisk)</td><td>$($row.MaxDistortion)%</td><td>$($row.ProblemCount)</td></tr>"
}

$detailRows = foreach ($row in ($rows | Sort-Object @{ Expression = { @{ high = 3; medium = 2; ok = 1 }[$_.Risk] }; Descending = $true }, SlideId, PictureIndex)) {
    "<tr class='risk-$($row.Risk)'><td>$($row.SlideId)</td><td>$($row.PictureIndex)</td><td>$($row.PictureName)</td><td>$($row.SourceSize)</td><td>$($row.SourceRatio)</td><td>$($row.SlideRatio)</td><td>$($row.Distortion)%</td><td>$($row.Risk)</td></tr>"
}

$html = @"
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Image Aspect Ratio Report</title>
  <style>
    body { margin: 0; font-family: "Segoe UI", Arial, sans-serif; background: #f3f5f7; color: #111827; }
    .wrap { max-width: 1280px; margin: 0 auto; padding: 32px 24px 56px; }
    h1 { margin: 0 0 10px; font-size: 32px; }
    .lead { color: #6b7280; line-height: 1.6; margin: 0 0 20px; }
    .note { margin-bottom: 20px; padding: 16px 18px; border-radius: 16px; background: #ffffff; border: 1px solid #d1d5db; line-height: 1.6; }
    table { width: 100%; border-collapse: collapse; background: #fff; border-radius: 18px; overflow: hidden; box-shadow: 0 10px 24px rgba(17,24,39,0.06); margin-bottom: 28px; }
    th, td { padding: 12px 14px; border-bottom: 1px solid #e5e7eb; text-align: left; font-size: 14px; }
    th { background: #f9fafb; }
    .risk-high td, .risk-high { background: #fff3f2; }
    .risk-medium td, .risk-medium { background: #fff9ed; }
    .risk-ok td, .risk-ok { background: #f8fafc; }
  </style>
</head>
<body>
  <div class="wrap">
    <h1>Image Aspect Ratio Report</h1>
    <p class="lead">Proverka na deformatsiyu izobrazheniy na slaydakh. Sravnivayutsya proportsii istochnika i proportsii kartinki na slide s uchetom crop.</p>
    <div class="note">
      Thresholds: <strong>high</strong> = distortion 3% i vyshe, <strong>medium</strong> = distortion ot 1% do 3%, <strong>ok</strong> = menshe 1%.
    </div>
    <table>
      <thead>
        <tr><th>Slide</th><th>Max Risk</th><th>Max Distortion</th><th>Problem Pictures</th></tr>
      </thead>
      <tbody>
        $($summaryRows -join "`n")
      </tbody>
    </table>
    <table>
      <thead>
        <tr><th>Slide</th><th>Picture</th><th>Name</th><th>Source Size</th><th>Source Ratio</th><th>Slide Ratio</th><th>Distortion</th><th>Risk</th></tr>
      </thead>
      <tbody>
        $($detailRows -join "`n")
      </tbody>
    </table>
  </div>
</body>
</html>
"@

[System.IO.File]::WriteAllText($reportPath, $html, (New-Object System.Text.UTF8Encoding($false)))
Write-Output "REPORT: $reportPath"
