param()

$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.Drawing

$repoRoot = Split-Path -Parent $PSScriptRoot
$pptBase = Join-Path $repoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready'

$targets = @(
    @{
        Pptx = (Join-Path $pptBase 'ML_tools_markup_editable_single_v0.1.pptx')
        Media = @(
            @{ Entry = 'ppt/media/image3.png'; Side = 'left'; FadeWidth = 24; WhiteHold = 2 }
        )
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_tools_markup_final_v01.png') }
        )
    },
    @{
        Pptx = (Join-Path $pptBase 'ML_S17_markup_editable_single_v0.1.pptx')
        Media = @(
            @{ Entry = 'ppt/media/image2.png'; Side = 'left'; FadeWidth = 36; WhiteHold = 3 }
        )
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S17_HL_kreplenie_k_balke_markup_final_v01.png') }
        )
    },
    @{
        Pptx = (Join-Path $pptBase 'ML_S18_markup_editable_single_v0.1.pptx')
        Media = @(
            @{ Entry = 'ppt/media/image1.png'; Side = 'left'; FadeWidth = 72; WhiteHold = 4 }
        )
        Exports = @(
            @{ Slide = 1; Out = (Join-Path $pptBase 'ML_S18_HL_ankerovanie_markup_final_v01.png') }
        )
    }
)

function Get-FadeStrength {
    param(
        [int]$Distance,
        [int]$FadeWidth,
        [int]$WhiteHold
    )

    if ($Distance -lt $WhiteHold) { return 1.0 }
    $span = [Math]::Max(1, $FadeWidth - $WhiteHold)
    $t = 1.0 - (($Distance - $WhiteHold) / $span)
    if ($t -lt 0) { return 0.0 }
    return [Math]::Pow($t, 1.8)
}

function Apply-WhiteEdgeFade {
    param(
        [System.Drawing.Bitmap]$Bitmap,
        [string]$Side,
        [int]$FadeWidth,
        [int]$WhiteHold
    )

    if ($FadeWidth -le 0) { return }

    if ($Side -eq 'left') {
        $xStart = 0
        $xEnd = [Math]::Min($Bitmap.Width - 1, $FadeWidth - 1)
        for ($x = $xStart; $x -le $xEnd; $x++) {
            $strength = Get-FadeStrength -Distance $x -FadeWidth $FadeWidth -WhiteHold $WhiteHold
            if ($strength -le 0) { continue }
            for ($y = 0; $y -lt $Bitmap.Height; $y++) {
                $p = $Bitmap.GetPixel($x, $y)
                $r = [int][Math]::Round(($p.R * (1.0 - $strength)) + (255 * $strength))
                $g = [int][Math]::Round(($p.G * (1.0 - $strength)) + (255 * $strength))
                $b = [int][Math]::Round(($p.B * (1.0 - $strength)) + (255 * $strength))
                $Bitmap.SetPixel($x, $y, [System.Drawing.Color]::FromArgb($p.A, $r, $g, $b))
            }
        }
        return
    }

    if ($Side -eq 'right') {
        $xStart = [Math]::Max(0, $Bitmap.Width - $FadeWidth)
        $xEnd = $Bitmap.Width - 1
        for ($x = $xStart; $x -le $xEnd; $x++) {
            $distance = ($Bitmap.Width - 1) - $x
            $strength = Get-FadeStrength -Distance $distance -FadeWidth $FadeWidth -WhiteHold $WhiteHold
            if ($strength -le 0) { continue }
            for ($y = 0; $y -lt $Bitmap.Height; $y++) {
                $p = $Bitmap.GetPixel($x, $y)
                $r = [int][Math]::Round(($p.R * (1.0 - $strength)) + (255 * $strength))
                $g = [int][Math]::Round(($p.G * (1.0 - $strength)) + (255 * $strength))
                $b = [int][Math]::Round(($p.B * (1.0 - $strength)) + (255 * $strength))
                $Bitmap.SetPixel($x, $y, [System.Drawing.Color]::FromArgb($p.A, $r, $g, $b))
            }
        }
    }
}

function Update-ZipImageEntry {
    param(
        $Zip,
        [hashtable]$MediaSpec
    )

    $entry = $Zip.Entries | Where-Object FullName -eq $MediaSpec.Entry | Select-Object -First 1
    if (-not $entry) {
        throw "Media entry not found: $($MediaSpec.Entry)"
    }

    $entryName = $entry.FullName
    $memory = New-Object IO.MemoryStream
    $input = $entry.Open()
    try {
        $input.CopyTo($memory)
    }
    finally {
        $input.Close()
    }
    $memory.Position = 0

    $bitmap = [System.Drawing.Bitmap]::FromStream($memory)
    try {
        Apply-WhiteEdgeFade -Bitmap $bitmap -Side $MediaSpec.Side -FadeWidth $MediaSpec.FadeWidth -WhiteHold $MediaSpec.WhiteHold

        $output = New-Object IO.MemoryStream
        try {
            $bitmap.Save($output, [System.Drawing.Imaging.ImageFormat]::Png)
            $output.Position = 0

            $entry.Delete()
            $newEntry = $Zip.CreateEntry($entryName)
            $zipStream = $newEntry.Open()
            try {
                $output.CopyTo($zipStream)
            }
            finally {
                $zipStream.Close()
            }
        }
        finally {
            $output.Dispose()
        }
    }
    finally {
        $bitmap.Dispose()
        $memory.Dispose()
    }
}

function Update-PptxMedia {
    param(
        [string]$PptxPath,
        [array]$MediaSpecs
    )

    $zip = [System.IO.Compression.ZipFile]::Open($PptxPath, [System.IO.Compression.ZipArchiveMode]::Update)
    try {
        foreach ($media in $MediaSpecs) {
            Update-ZipImageEntry -Zip $zip -MediaSpec $media
        }
    }
    finally {
        $zip.Dispose()
    }
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
            $match = Get-ChildItem $exportDir -Filter ("*{0}.PNG" -f $item.Slide) -ErrorAction SilentlyContinue | Select-Object -First 1
            if (-not $match) {
                $match = Get-ChildItem $exportDir -Filter ("*{0}.png" -f $item.Slide) -ErrorAction SilentlyContinue | Select-Object -First 1
            }
            if (-not $match) {
                throw "Exported slide image not found for slide $($item.Slide) in $exportDir"
            }
            Copy-Item -Force $match.FullName $item.Out
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
        Update-PptxMedia -PptxPath $target.Pptx -MediaSpecs $target.Media
        Write-Output ("UPDATED {0}" -f [System.IO.Path]::GetFileName($target.Pptx))
        Export-PresentationSlides -PowerPointApp $pp -PptxPath $target.Pptx -Exports $target.Exports
        Write-Output ("EXPORTED {0}" -f [System.IO.Path]::GetFileName($target.Pptx))
    }
}
finally {
    $pp.Quit()
}
