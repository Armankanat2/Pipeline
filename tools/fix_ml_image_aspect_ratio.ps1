param()

$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.Drawing

$repoRoot = Split-Path -Parent $PSScriptRoot
$pptPath = Join-Path $repoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready\ML_S17_markup_editable_single_v0.1.pptx'
$exportPath = Join-Path $repoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready\ML_S17_HL_kreplenie_k_balke_markup_final_v01.png'

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
    $xml.PreserveWhitespace = $true
    $xml.LoadXml($text)
    return $xml
}

function Get-ImageSize {
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
            Width = $image.Width
            Height = $image.Height
        }
    }
    finally {
        $image.Dispose()
        $memory.Dispose()
    }
}

function Update-S17PictureAspect {
    param(
        [string]$PptxPath
    )

    $zip = [IO.Compression.ZipFile]::Open($PptxPath, [IO.Compression.ZipArchiveMode]::Update)
    try {
        $slideXml = Get-ZipXmlDocument -Zip $zip -EntryName 'ppt/slides/slide1.xml'
        $relsXml = Get-ZipXmlDocument -Zip $zip -EntryName 'ppt/slides/_rels/slide1.xml.rels'

        $ns = New-Object System.Xml.XmlNamespaceManager($slideXml.NameTable)
        $ns.AddNamespace('p', 'http://schemas.openxmlformats.org/presentationml/2006/main')
        $ns.AddNamespace('a', 'http://schemas.openxmlformats.org/drawingml/2006/main')

        $pic = $slideXml.SelectSingleNode('(//p:pic)[1]', $ns)
        if (-not $pic) { throw 'Picture 1 not found in S17 slide 1.' }

        $blip = $pic.SelectSingleNode('.//a:blip', $ns)
        $relId = $blip.GetAttribute('embed', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships')
        $relNode = $relsXml.Relationships.Relationship | Where-Object Id -eq $relId | Select-Object -First 1
        $mediaPath = $relNode.Target -replace '^\.\./', 'ppt/'
        $imageSize = Get-ImageSize -Zip $zip -EntryName $mediaPath

        $offNode = $pic.SelectSingleNode('./p:spPr/a:xfrm/a:off', $ns)
        $extNode = $pic.SelectSingleNode('./p:spPr/a:xfrm/a:ext', $ns)

        $x = [double]$offNode.GetAttribute('x')
        $y = [double]$offNode.GetAttribute('y')
        $cx = [double]$extNode.GetAttribute('cx')
        $cy = [double]$extNode.GetAttribute('cy')

        $sourceRatio = [double]$imageSize.Width / [double]$imageSize.Height
        $newCy = [math]::Round($cx / $sourceRatio)
        $deltaCy = $newCy - $cy
        $newY = [math]::Round($y - ($deltaCy / 2.0))

        $null = $extNode.SetAttribute('cy', [string][int64]$newCy)
        $null = $offNode.SetAttribute('y', [string][int64]$newY)

        $settings = New-Object System.Xml.XmlWriterSettings
        $settings.Encoding = New-Object System.Text.UTF8Encoding($false)
        $settings.Indent = $false

        $tmp = Join-Path $env:TEMP ("s17_slide_" + [guid]::NewGuid().ToString() + '.xml')
        $writer = [System.Xml.XmlWriter]::Create($tmp, $settings)
        $slideXml.Save($writer)
        $writer.Close()

        $newContent = [System.IO.File]::ReadAllText($tmp, (New-Object System.Text.UTF8Encoding($false)))
        Remove-Item $tmp -Force

        $entry = $zip.Entries | Where-Object FullName -eq 'ppt/slides/slide1.xml' | Select-Object -First 1
        $entry.Delete()
        $newEntry = $zip.CreateEntry('ppt/slides/slide1.xml')
        $streamWriter = New-Object IO.StreamWriter($newEntry.Open(), (New-Object System.Text.UTF8Encoding($false)))
        try {
            $streamWriter.Write($newContent)
        }
        finally {
            $streamWriter.Close()
        }

        return [pscustomobject]@{
            OldCy = [int64]$cy
            NewCy = [int64]$newCy
            OldY = [int64]$y
            NewY = [int64]$newY
        }
    }
    finally {
        $zip.Dispose()
    }
}

function Export-S17Slide {
    param(
        [string]$PptxPath,
        [string]$OutputPath
    )

    $pp = New-Object -ComObject PowerPoint.Application
    $pp.Visible = -1
    try {
        $presentation = $pp.Presentations.Open($PptxPath, $false, $true, $false)
        $exportDir = Join-Path $env:TEMP ("ml_png_" + [guid]::NewGuid().ToString())
        New-Item -ItemType Directory -Path $exportDir | Out-Null
        try {
            $presentation.SaveAs($exportDir, 18)
            $match = Get-ChildItem $exportDir -Filter '*1.PNG' -ErrorAction SilentlyContinue | Select-Object -First 1
            if (-not $match) {
                $match = Get-ChildItem $exportDir -Filter '*1.png' -ErrorAction SilentlyContinue | Select-Object -First 1
            }
            if (-not $match) {
                throw "Exported slide image not found for S17 in $exportDir"
            }
            Copy-Item -Force $match.FullName $OutputPath
        }
        finally {
            $presentation.Close()
            if (Test-Path $exportDir) { Remove-Item $exportDir -Recurse -Force }
        }
    }
    finally {
        $pp.Quit()
    }
}

$result = Update-S17PictureAspect -PptxPath $pptPath
Write-Output ("UPDATED S17 picture 1: cy {0} -> {1}; y {2} -> {3}" -f $result.OldCy, $result.NewCy, $result.OldY, $result.NewY)
Export-S17Slide -PptxPath $pptPath -OutputPath $exportPath
Write-Output 'EXPORTED S17'
