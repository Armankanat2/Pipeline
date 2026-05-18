param()

$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$repoRoot = Split-Path -Parent $PSScriptRoot
$pptBase = Join-Path $repoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready'

$arrowSpec = @{
    Geometry = 'bentConnector3'
    WidthEmu = '28575'
    Color    = '000000'
    EndType  = 'triangle'
    EndW     = 'sm'
    EndLen   = 'sm'
}

$targets = @(
    @{
        Pptx = (Join-Path $pptBase 'ML_S13_markup_editable_single_v0.1.pptx')
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S13_KL_ankerovanie_markup_final_v01.png') }
        )
    },
    @{
        Pptx = (Join-Path $pptBase 'ML_S14_S16_markup_editable_v0.1.pptx')
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S14_KL_vid_v_sbore_markup_v01.png') }
            @{ Slide = 2; Out = (Join-Path $pptBase 'ML_S16_HL_soedinenie_trub_markup_v01.png') }
        )
    },
    @{
        Pptx = (Join-Path $pptBase 'ML_S16_markup_editable_single_v0.1.pptx')
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S16_HL_soedinenie_trub_markup_final_v01.png') }
        )
    },
    @{
        Pptx = (Join-Path $pptBase 'ML_S17_markup_editable_single_v0.1.pptx')
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S17_HL_kreplenie_k_balke_markup_final_v01.png') }
        )
    },
    @{
        Pptx = (Join-Path $pptBase 'ML_S18_markup_editable_single_v0.1.pptx')
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S18_HL_ankerovanie_markup_final_v01.png') }
        )
    }
)

function Update-ConnectorXml {
    param(
        [string]$SlideXmlPath,
        [hashtable]$Spec
    )

    $xml = New-Object System.Xml.XmlDocument
    $xml.PreserveWhitespace = $true
    $xml.Load($SlideXmlPath)

    $ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
    $ns.AddNamespace('p', 'http://schemas.openxmlformats.org/presentationml/2006/main')
    $ns.AddNamespace('a', 'http://schemas.openxmlformats.org/drawingml/2006/main')

    $connectors = $xml.SelectNodes('//p:cxnSp', $ns)
    foreach ($connector in $connectors) {
        $spPr = $connector.SelectSingleNode('./p:spPr', $ns)
        if (-not $spPr) { continue }

        $prstGeom = $spPr.SelectSingleNode('./a:prstGeom', $ns)
        if ($prstGeom) {
            $null = $prstGeom.SetAttribute('prst', $Spec.Geometry)
        }

        $ln = $spPr.SelectSingleNode('./a:ln', $ns)
        if (-not $ln) {
            $ln = $xml.CreateElement('a', 'ln', $ns.LookupNamespace('a'))
            $null = $spPr.AppendChild($ln)
        }

        $null = $ln.SetAttribute('w', $Spec.WidthEmu)
        $null = $ln.SetAttribute('cap', 'rnd')

        foreach ($childName in @('solidFill', 'gradFill', 'pattFill', 'tailEnd', 'headEnd', 'round', 'bevel', 'miter')) {
            $nodes = @($ln.SelectNodes("./a:$childName", $ns))
            foreach ($node in $nodes) {
                $null = $ln.RemoveChild($node)
            }
        }

        $solidFill = $xml.CreateElement('a', 'solidFill', $ns.LookupNamespace('a'))
        $srgbClr = $xml.CreateElement('a', 'srgbClr', $ns.LookupNamespace('a'))
        $null = $srgbClr.SetAttribute('val', $Spec.Color)
        $null = $solidFill.AppendChild($srgbClr)
        $null = $ln.AppendChild($solidFill)

        $round = $xml.CreateElement('a', 'round', $ns.LookupNamespace('a'))
        $null = $ln.AppendChild($round)

        $tailEnd = $xml.CreateElement('a', 'tailEnd', $ns.LookupNamespace('a'))
        $null = $tailEnd.SetAttribute('type', $Spec.EndType)
        $null = $tailEnd.SetAttribute('w', $Spec.EndW)
        $null = $tailEnd.SetAttribute('len', $Spec.EndLen)
        $null = $ln.AppendChild($tailEnd)
    }

    $settings = New-Object System.Xml.XmlWriterSettings
    $settings.Encoding = New-Object System.Text.UTF8Encoding($false)
    $settings.Indent = $false
    $writer = [System.Xml.XmlWriter]::Create($SlideXmlPath, $settings)
    $xml.Save($writer)
    $writer.Close()

    return $connectors.Count
}

function Update-PptxConnectors {
    param(
        [string]$PptxPath,
        [hashtable]$Spec
    )

    $updated = 0
    $zip = [System.IO.Compression.ZipFile]::Open($PptxPath, [System.IO.Compression.ZipArchiveMode]::Update)
    try {
        $slideEntries = @($zip.Entries | Where-Object { $_.FullName -like 'ppt/slides/slide*.xml' -or $_.FullName -like 'ppt\slides\slide*.xml' })
        foreach ($slideEntry in $slideEntries) {
            $entryName = $slideEntry.FullName
            $tmpSlide = Join-Path $env:TEMP ("ml_slide_" + [guid]::NewGuid().ToString() + '.xml')

            $reader = New-Object IO.StreamReader($slideEntry.Open())
            $content = $reader.ReadToEnd()
            $reader.Close()
            [System.IO.File]::WriteAllText($tmpSlide, $content, (New-Object System.Text.UTF8Encoding($false)))

            $updated += Update-ConnectorXml -SlideXmlPath $tmpSlide -Spec $Spec
            $newContent = [System.IO.File]::ReadAllText($tmpSlide, (New-Object System.Text.UTF8Encoding($false)))

            $slideEntry.Delete()
            $newEntry = $zip.CreateEntry($entryName)
            $writer = New-Object IO.StreamWriter($newEntry.Open(), (New-Object System.Text.UTF8Encoding($false)))
            $writer.Write($newContent)
            $writer.Close()

            Remove-Item $tmpSlide -Force
        }
    }
    finally {
        $zip.Dispose()
    }

    return $updated
}

function Export-PresentationSlides {
    param(
        $PowerPointApp,
        [string]$PptxPath,
        [array]$Exports
    )

    $presentation = $PowerPointApp.Presentations.Open($PptxPath, $false, $true, $false)
    $exportDir = Join-Path $env:TEMP ("ml_png_" + [guid]::NewGuid().ToString())
    New-Item -ItemType Directory -Path $exportDir | Out-Null

    try {
        $presentation.SaveAs($exportDir, 18)
        foreach ($item in $Exports) {
            $patternUpper = "*{0}.PNG" -f $item.Slide
            $patternLower = "*{0}.png" -f $item.Slide
            $match = Get-ChildItem $exportDir -Filter $patternUpper -ErrorAction SilentlyContinue | Select-Object -First 1
            if (-not $match) {
                $match = Get-ChildItem $exportDir -Filter $patternLower -ErrorAction SilentlyContinue | Select-Object -First 1
            }
            if ($match) {
                Copy-Item -Force $match.FullName $item.Out
            }
            else {
                throw "Exported slide image not found for slide $($item.Slide) in $exportDir"
            }
        }
    }
    finally {
        $presentation.Close()
        if (Test-Path $exportDir) { Remove-Item $exportDir -Recurse -Force }
    }
}

$pp = New-Object -ComObject PowerPoint.Application
$pp.Visible = -1

try {
    foreach ($target in $targets) {
        $updated = Update-PptxConnectors -PptxPath $target.Pptx -Spec $arrowSpec
        Write-Output ("UPDATED {0}: connectors={1}" -f [System.IO.Path]::GetFileName($target.Pptx), $updated)
        Export-PresentationSlides -PowerPointApp $pp -PptxPath $target.Pptx -Exports $target.Exports
        Write-Output ("EXPORTED {0}" -f [System.IO.Path]::GetFileName($target.Pptx))
    }
}
finally {
    $pp.Quit()
}
