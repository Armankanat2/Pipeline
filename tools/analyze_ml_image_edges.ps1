param()

$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.Drawing

$repoRoot = Split-Path -Parent $PSScriptRoot
$assetBase = Join-Path $repoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready'
$reportDir = Join-Path $repoRoot '02_Research\Montazhnik_lesov\08_Deck\edge_diagnostics'
$reportPath = Join-Path $repoRoot '02_Research\Montazhnik_lesov\08_Deck\08_image_edge_diagnostics_report.html'

if (Test-Path $reportDir) {
    Get-ChildItem $reportDir -File | Remove-Item -Force
} else {
    New-Item -ItemType Directory -Path $reportDir | Out-Null
}

$targets = @(
    @{ Id='TOOLS'; SlideTitle='13A Instrumenty montazhnika'; Pptx=(Join-Path $assetBase 'ML_tools_markup_editable_single_v0.1.pptx'); Slide=1; Png=(Join-Path $assetBase 'ML_tools_markup_final_v01.png') }
    @{ Id='S13'; SlideTitle='S13 Klinovye lesa: ankerovanie'; Pptx=(Join-Path $assetBase 'ML_S13_markup_editable_single_v0.1.pptx'); Slide=1; Png=(Join-Path $assetBase 'ML_S13_KL_ankerovanie_markup_final_v01.png') }
    @{ Id='S14'; SlideTitle='S14 Klinovye lesa v sbore'; Pptx=(Join-Path $assetBase 'ML_S14_S16_markup_editable_v0.1.pptx'); Slide=1; Png=(Join-Path $assetBase 'ML_S14_KL_vid_v_sbore_markup_v01.png') }
    @{ Id='S16'; SlideTitle='S16 Homutovye lesa: soedinenie trub'; Pptx=(Join-Path $assetBase 'ML_S16_markup_editable_single_v0.1.pptx'); Slide=1; Png=(Join-Path $assetBase 'ML_S16_HL_soedinenie_trub_markup_final_v01.png') }
    @{ Id='S17'; SlideTitle='S17 Kreplenie lesov k balke'; Pptx=(Join-Path $assetBase 'ML_S17_markup_editable_single_v0.1.pptx'); Slide=1; Png=(Join-Path $assetBase 'ML_S17_HL_kreplenie_k_balke_markup_final_v01.png') }
    @{ Id='S18'; SlideTitle='S18 Homutovye lesa: ankerovanie'; Pptx=(Join-Path $assetBase 'ML_S18_markup_editable_single_v0.1.pptx'); Slide=1; Png=(Join-Path $assetBase 'ML_S18_HL_ankerovanie_markup_final_v01.png') }
)

function Get-ZipEntryBySuffix {
    param(
        $Zip,
        [string[]]$Suffixes
    )
    foreach ($suffix in $Suffixes) {
        $entry = $Zip.Entries | Where-Object { $_.FullName -eq $suffix } | Select-Object -First 1
        if ($entry) { return $entry }
    }
    foreach ($suffix in $Suffixes) {
        $entry = $Zip.Entries | Where-Object { $_.FullName -like "*$suffix" } | Select-Object -First 1
        if ($entry) { return $entry }
    }
    return $null
}

function Get-ZipXml {
    param(
        [string]$PptxPath,
        [string[]]$Suffixes
    )
    $zip = [IO.Compression.ZipFile]::OpenRead($PptxPath)
    try {
        $entry = Get-ZipEntryBySuffix -Zip $zip -Suffixes $Suffixes
        if (-not $entry) { return $null }
        $reader = New-Object IO.StreamReader($entry.Open())
        try { return $reader.ReadToEnd() }
        finally { $reader.Close() }
    }
    finally {
        $zip.Dispose()
    }
}

function Parse-PictureBounds {
    param(
        [string]$PptxPath,
        [int]$SlideNumber
    )

    $presentationXmlText = Get-ZipXml -PptxPath $PptxPath -Suffixes @('ppt/presentation.xml','ppt\presentation.xml')
    $slideXmlText = Get-ZipXml -PptxPath $PptxPath -Suffixes @("ppt/slides/slide$SlideNumber.xml","ppt\slides\slide$SlideNumber.xml")
    if (-not $presentationXmlText -or -not $slideXmlText) { return $null }

    $presentationXml = New-Object System.Xml.XmlDocument
    $presentationXml.LoadXml($presentationXmlText)
    $slideXml = New-Object System.Xml.XmlDocument
    $slideXml.LoadXml($slideXmlText)

    $pNs = 'http://schemas.openxmlformats.org/presentationml/2006/main'
    $aNs = 'http://schemas.openxmlformats.org/drawingml/2006/main'
    $nsPres = New-Object System.Xml.XmlNamespaceManager($presentationXml.NameTable)
    $nsPres.AddNamespace('p', $pNs)
    $nsSlide = New-Object System.Xml.XmlNamespaceManager($slideXml.NameTable)
    $nsSlide.AddNamespace('p', $pNs)
    $nsSlide.AddNamespace('a', $aNs)

    $sizeNode = $presentationXml.SelectSingleNode('//p:sldSz', $nsPres)
    $slideCx = [double]$sizeNode.GetAttribute('cx')
    $slideCy = [double]$sizeNode.GetAttribute('cy')

    $pics = @()
    $picNodes = $slideXml.SelectNodes('//p:pic', $nsSlide)
    $idx = 0
    foreach ($pic in $picNodes) {
        $idx++
        $nameNode = $pic.SelectSingleNode('./p:nvPicPr/p:cNvPr', $nsSlide)
        $xfrmNode = $pic.SelectSingleNode('./p:spPr/a:xfrm', $nsSlide)
        $offNode = $xfrmNode.SelectSingleNode('./a:off', $nsSlide)
        $extNode = $xfrmNode.SelectSingleNode('./a:ext', $nsSlide)
        $pics += [pscustomobject]@{
            Index = $idx
            Name  = $nameNode.GetAttribute('name')
            X     = [double]$offNode.GetAttribute('x')
            Y     = [double]$offNode.GetAttribute('y')
            Cx    = [double]$extNode.GetAttribute('cx')
            Cy    = [double]$extNode.GetAttribute('cy')
            SlideCx = $slideCx
            SlideCy = $slideCy
        }
    }
    return $pics
}

function Get-AverageColor {
    param(
        [System.Drawing.Bitmap]$Bitmap,
        [int]$X,
        [int]$Y1,
        [int]$Y2
    )
    $r = 0; $g = 0; $b = 0; $count = 0
    for ($y = $Y1; $y -le $Y2; $y++) {
        $px = $Bitmap.GetPixel($X, $y)
        $r += $px.R
        $g += $px.G
        $b += $px.B
        $count++
    }
    if ($count -eq 0) { return $null }
    return [pscustomobject]@{
        R = [math]::Round($r / $count, 2)
        G = [math]::Round($g / $count, 2)
        B = [math]::Round($b / $count, 2)
        Brightness = [math]::Round((($r + $g + $b) / 3) / $count, 2)
    }
}

function Save-Crop {
    param(
        [System.Drawing.Bitmap]$Bitmap,
        [int]$CenterX,
        [int]$Y,
        [int]$Height,
        [string]$OutPath
    )
    $cropWidth = 120
    $left = [Math]::Max(0, $CenterX - [math]::Floor($cropWidth / 2))
    if ($left + $cropWidth -gt $Bitmap.Width) { $left = [Math]::Max(0, $Bitmap.Width - $cropWidth) }
    $top = [Math]::Max(0, $Y)
    $cropHeight = [Math]::Min($Height, $Bitmap.Height - $top)
    if ($cropHeight -lt 10) { $cropHeight = [Math]::Min(10, $Bitmap.Height) }

    $rect = New-Object System.Drawing.Rectangle($left, $top, [Math]::Min($cropWidth, $Bitmap.Width - $left), $cropHeight)
    $target = New-Object System.Drawing.Bitmap($rect.Width, $rect.Height)
    $graphics = [System.Drawing.Graphics]::FromImage($target)
    try {
        $graphics.DrawImage($Bitmap, 0, 0, $rect, [System.Drawing.GraphicsUnit]::Pixel)
        $markerX = [Math]::Max(0, [Math]::Min($rect.Width - 1, $CenterX - $left))
        $pen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(230, 220, 38, 38), 2)
        try {
            $graphics.DrawLine($pen, $markerX, 0, $markerX, $rect.Height)
        }
        finally {
            $pen.Dispose()
        }
        $target.Save($OutPath, [System.Drawing.Imaging.ImageFormat]::Png)
    }
    finally {
        $graphics.Dispose()
        $target.Dispose()
    }
}

function Save-Overview {
    param(
        [System.Drawing.Bitmap]$Bitmap,
        [int]$EdgeX,
        [int]$Y1,
        [int]$Y2,
        [string]$OutPath
    )
    $target = New-Object System.Drawing.Bitmap($Bitmap.Width, $Bitmap.Height)
    $graphics = [System.Drawing.Graphics]::FromImage($target)
    try {
        $graphics.DrawImage($Bitmap, 0, 0)
        $rectWidth = 12
        $rectX = [Math]::Max(0, $EdgeX - [math]::Floor($rectWidth / 2))
        if ($rectX + $rectWidth -gt $Bitmap.Width) { $rectWidth = [Math]::Max(1, $Bitmap.Width - $rectX) }
        $rectY = [Math]::Max(0, $Y1)
        $rectHeight = [Math]::Max(8, [Math]::Min($Bitmap.Height - $rectY, $Y2 - $Y1 + 1))

        $fill = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(70, 220, 38, 38))
        $pen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(240, 220, 38, 38), 4)
        try {
            $graphics.FillRectangle($fill, $rectX, $rectY, $rectWidth, $rectHeight)
            $graphics.DrawRectangle($pen, $rectX, $rectY, $rectWidth, $rectHeight)
        }
        finally {
            $fill.Dispose()
            $pen.Dispose()
        }

        $target.Save($OutPath, [System.Drawing.Imaging.ImageFormat]::Png)
    }
    finally {
        $graphics.Dispose()
        $target.Dispose()
    }
}

$results = @()

foreach ($target in $targets) {
    $pics = Parse-PictureBounds -PptxPath $target.Pptx -SlideNumber $target.Slide
    if (-not $pics) { continue }

    $bitmap = [System.Drawing.Bitmap]::FromFile($target.Png)
    try {
        foreach ($pic in $pics) {
            $xPx = [math]::Round(($pic.X / $pic.SlideCx) * $bitmap.Width)
            $yPx = [math]::Round(($pic.Y / $pic.SlideCy) * $bitmap.Height)
            $wPx = [math]::Round(($pic.Cx / $pic.SlideCx) * $bitmap.Width)
            $hPx = [math]::Round(($pic.Cy / $pic.SlideCy) * $bitmap.Height)

            $sampleTop = [Math]::Max(0, $yPx + [math]::Round($hPx * 0.15))
            $sampleBottom = [Math]::Min($bitmap.Height - 1, $yPx + [math]::Round($hPx * 0.85))
            if ($sampleBottom -le $sampleTop) { continue }

            foreach ($side in @('left','right')) {
                if ($side -eq 'left') {
                    $outsideX = $xPx - 1
                    $insideX = $xPx
                    $edgeX = $xPx
                } else {
                    $outsideX = $xPx + $wPx
                    $insideX = $xPx + $wPx - 1
                    $edgeX = $xPx + $wPx - 1
                }

                if ($outsideX -lt 0 -or $outsideX -ge $bitmap.Width -or $insideX -lt 0 -or $insideX -ge $bitmap.Width) {
                    continue
                }

                $outside = Get-AverageColor -Bitmap $bitmap -X $outsideX -Y1 $sampleTop -Y2 $sampleBottom
                $inside = Get-AverageColor -Bitmap $bitmap -X $insideX -Y1 $sampleTop -Y2 $sampleBottom
                if (-not $outside -or -not $inside) { continue }

                $delta = [math]::Sqrt([math]::Pow(($outside.R - $inside.R),2) + [math]::Pow(($outside.G - $inside.G),2) + [math]::Pow(($outside.B - $inside.B),2))
                $outsideIsWhiteish = ($outside.R -ge 240 -and $outside.G -ge 240 -and $outside.B -ge 240)

                $risk = 'low'
                if ($outsideIsWhiteish -and $delta -ge 45) {
                    $risk = 'high'
                } elseif ($outsideIsWhiteish -and $delta -ge 20) {
                    $risk = 'medium'
                }

                $cropName = '{0}_pic{1}_{2}.png' -f $target.Id.ToLower(), $pic.Index, $side
                $cropPath = Join-Path $reportDir $cropName
                Save-Crop -Bitmap $bitmap -CenterX $edgeX -Y ([Math]::Max(0, $sampleTop - 10)) -Height ([Math]::Min($bitmap.Height - $sampleTop, ($sampleBottom - $sampleTop) + 20)) -OutPath $cropPath
                $overviewName = '{0}_pic{1}_{2}_overview.png' -f $target.Id.ToLower(), $pic.Index, $side
                $overviewPath = Join-Path $reportDir $overviewName
                Save-Overview -Bitmap $bitmap -EdgeX $edgeX -Y1 $sampleTop -Y2 $sampleBottom -OutPath $overviewPath

                $results += [pscustomobject]@{
                    SlideId = $target.Id
                    SlideTitle = $target.SlideTitle
                    PictureIndex = $pic.Index
                    PictureName = $pic.Name
                    Side = $side
                    Risk = $risk
                    Delta = [math]::Round($delta, 2)
                    OutsideWhite = $outsideIsWhiteish
                    OutsideRGB = ('{0},{1},{2}' -f [int]$outside.R, [int]$outside.G, [int]$outside.B)
                    InsideRGB = ('{0},{1},{2}' -f [int]$inside.R, [int]$inside.G, [int]$inside.B)
                    CropFile = $cropName
                    OverviewFile = $overviewName
                }
            }
        }
    }
    finally {
        $bitmap.Dispose()
    }
}

$slideSummaries = $results | Group-Object SlideId, SlideTitle | ForEach-Object {
    $items = $_.Group
    $riskOrder = @{ high = 3; medium = 2; low = 1 }
    $top = $items | Sort-Object @{ Expression = { $riskOrder[$_.Risk] }; Descending = $true }, @{ Expression = 'Delta'; Descending = $true } | Select-Object -First 1
    [pscustomobject]@{
        SlideId = $top.SlideId
        SlideTitle = $top.SlideTitle
        MaxRisk = $top.Risk
        MaxDelta = $top.Delta
        RiskCount = ($items | Where-Object Risk -ne 'low').Count
    }
}

$summaryRows = foreach ($row in $slideSummaries | Sort-Object @{Expression={@{high=3;medium=2;low=1}[$_.MaxRisk]};Descending=$true}, SlideId) {
    $cls = 'risk-' + $row.MaxRisk
    "<tr class='$cls'><td>$($row.SlideId)</td><td>$($row.SlideTitle)</td><td>$($row.MaxRisk)</td><td>$($row.MaxDelta)</td><td>$($row.RiskCount)</td></tr>"
}

$detailCards = foreach ($item in ($results | Where-Object Risk -ne 'low' | Sort-Object @{Expression={@{high=3;medium=2;low=1}[$_.Risk]};Descending=$true}, SlideId, PictureIndex, Side)) {
    $cls = 'risk-' + $item.Risk
    @"
<article class='card $cls'>
  <div class='meta-line'><strong>$($item.SlideId)</strong> | $($item.SlideTitle)</div>
  <div class='meta-line'>Picture $($item.PictureIndex): $($item.PictureName)</div>
  <div class='meta-line'>Side: $($item.Side) | Risk: <strong>$($item.Risk)</strong> | Delta: $($item.Delta)</div>
  <div class='meta-line'>Outside RGB: $($item.OutsideRGB) | Inside RGB: $($item.InsideRGB)</div>
  <div class='preview-label'>Full slide with highlighted problem area</div>
  <img class='slide-overview' src='edge_diagnostics/$($item.OverviewFile)' alt='$($item.SlideId) overview $($item.PictureIndex) $($item.Side)'>
  <div class='preview-row'>
    <div class='preview-block'>
      <div class='preview-label'>Edge zoom</div>
      <img class='img-zoom' src='edge_diagnostics/$($item.CropFile)' alt='$($item.SlideId) pic $($item.PictureIndex) $($item.Side) zoom'>
    </div>
  </div>
</article>
"@
}

$html = @"
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Image Edge Diagnostics</title>
  <style>
    body { margin: 0; font-family: "Segoe UI", Arial, sans-serif; background: #f3f5f7; color: #111827; }
    .wrap { max-width: 1340px; margin: 0 auto; padding: 32px 24px 56px; }
    h1 { margin: 0 0 10px; font-size: 32px; }
    .lead { color: #6b7280; line-height: 1.6; margin: 0 0 24px; }
    table { width: 100%; border-collapse: collapse; background: #fff; border-radius: 18px; overflow: hidden; box-shadow: 0 10px 24px rgba(17,24,39,0.06); margin-bottom: 28px; }
    th, td { padding: 12px 14px; border-bottom: 1px solid #e5e7eb; text-align: left; font-size: 14px; }
    th { background: #f9fafb; }
    .risk-high td, .risk-high { background: #fff3f2; }
    .risk-medium td, .risk-medium { background: #fff9ed; }
    .risk-low td, .risk-low { background: #f8fafc; }
    .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 16px; }
    .card { background: #fff; border: 1px solid #d1d5db; border-radius: 18px; padding: 14px; box-shadow: 0 10px 24px rgba(17,24,39,0.05); }
    .preview-row { display: flex; gap: 14px; align-items: flex-start; margin-top: 12px; flex-wrap: wrap; }
    .preview-block { min-width: 0; }
    .preview-label { font-size: 12px; color: #6b7280; margin: 10px 0 6px; }
    .card img { border-radius: 10px; border: 1px solid #d1d5db; background: #fff; display: block; image-rendering: pixelated; image-rendering: crisp-edges; }
    .slide-overview { width: 100%; image-rendering: auto; }
    .img-zoom { width: 360px; max-width: 100%; }
    .meta-line { font-size: 13px; line-height: 1.5; margin-bottom: 4px; }
    .note { margin-bottom: 22px; padding: 16px 18px; border-radius: 16px; background: #ffffff; border: 1px solid #d1d5db; line-height: 1.6; }
  </style>
</head>
<body>
  <div class="wrap">
    <h1>Image Edge Diagnostics</h1>
    <p class="lead">Avtomaticheskaya proverka krayev izobrazheniy na aktualnykh slaydakh. Smysl proverki: nayti mesta, gde na belom ili neytralnom fone mozhet byt zametna granitsa mezhdu kartinkoy i polem slayda.</p>
    <div class="note">
      Risk logic: <strong>high</strong> = silnaya raznitsa na granitse pri belykh vneshnikh polyakh, <strong>medium</strong> = zametnyy perekhod, <strong>low</strong> = granitsa libo nevidima, libo ne vygladit problemnoy po tekhnicheskim metrikam.
    </div>
    <div class="note">
      V detail-cards pokazany tolko problemnye mesta. Krasnaya polosa na polnom slide pokazyvaet, gde imenno nayden podozritelnyy kray. V uvelichenii krasnaya liniya prokhodit po granitse mezhdu izobrazheniem i polem slayda.
    </div>
    <table>
      <thead>
        <tr><th>Slide</th><th>Title</th><th>Max Risk</th><th>Max Delta</th><th>Risk Edges</th></tr>
      </thead>
      <tbody>
        $($summaryRows -join "`n")
      </tbody>
    </table>
    <div class="grid">
      $($detailCards -join "`n")
    </div>
  </div>
</body>
</html>
"@

[System.IO.File]::WriteAllText($reportPath, $html, (New-Object System.Text.UTF8Encoding($false)))
Write-Output "REPORT: $reportPath"
