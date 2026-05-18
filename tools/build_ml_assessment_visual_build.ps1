param(
    [string]$OutputPath = "05_Release\Montazhnik_lesov\01_PPTX\02_No_Test\ML_08_assessment_visual_build_v0.1.pptx",
    [switch]$Visible
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.Drawing

$RepoRoot = Split-Path -Parent $PSScriptRoot
$AnchorRefDir = Join-Path $RepoRoot '02_Research\Montazhnik_lesov\07_Assets\01_Client_Intake\03_Anchor_Reference'
$UiFontSize = 14
$PlaqueTitleFontSize = 20

function New-UnicodeString {
    param([int[]]$CodePoints)

    return -join ($CodePoints | ForEach-Object { [char]$_ })
}

function Get-OfficeColor {
    param([string]$Hex)

    $clean = $Hex.TrimStart("#")
    if ($clean.Length -ne 6) {
        throw "Invalid color value: $Hex"
    }

    $r = [Convert]::ToInt32($clean.Substring(0, 2), 16)
    $g = [Convert]::ToInt32($clean.Substring(2, 2), 16)
    $b = [Convert]::ToInt32($clean.Substring(4, 2), 16)

    return $r + ($g * 256) + ($b * 65536)
}

function Set-ShapeFill {
    param(
        $Shape,
        [string]$FillHex,
        [double]$Transparency = 0
    )

    $Shape.Fill.Visible = -1
    $Shape.Fill.Solid()
    $Shape.Fill.ForeColor.RGB = Get-OfficeColor $FillHex
    $Shape.Fill.Transparency = $Transparency
}

function Set-ShapeLine {
    param(
        $Shape,
        [string]$LineHex,
        [double]$Weight = 1.25,
        [double]$Transparency = 0
    )

    $Shape.Line.Visible = -1
    $Shape.Line.ForeColor.RGB = Get-OfficeColor $LineHex
    $Shape.Line.Weight = $Weight
    $Shape.Line.Transparency = $Transparency
}

function Add-TextBox {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Text,
        [string]$FontName = "Segoe UI",
        [double]$FontSize = 18,
        [string]$ColorHex = "#1F2933",
        [bool]$Bold = $false,
        [int]$Alignment = 1,
        [double]$MarginLeft = 8,
        [double]$MarginRight = 8,
        [double]$MarginTop = 4,
        [double]$MarginBottom = 4
    )

    $shape = $Slide.Shapes.AddTextbox(1, $Left, $Top, $Width, $Height)
    $shape.TextFrame2.WordWrap = -1
    $shape.TextFrame2.AutoSize = 0
    $shape.TextFrame2.MarginLeft = $MarginLeft
    $shape.TextFrame2.MarginRight = $MarginRight
    $shape.TextFrame2.MarginTop = $MarginTop
    $shape.TextFrame2.MarginBottom = $MarginBottom
    $shape.TextFrame2.VerticalAnchor = 3
    $shape.TextFrame2.TextRange.Text = $Text
    $shape.TextFrame2.TextRange.Font.Name = $FontName
    $shape.TextFrame2.TextRange.Font.Size = $FontSize
    $shape.TextFrame2.TextRange.Font.Bold = [int]$Bold
    $shape.TextFrame2.TextRange.Font.Fill.ForeColor.RGB = Get-OfficeColor $ColorHex
    $shape.TextFrame2.TextRange.ParagraphFormat.Alignment = $Alignment
    return $shape
}

function Add-RoundedRect {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$FillHex = "#FFFFFF",
        [string]$LineHex = "#BAC6CF",
        [double]$Radius = 0.12
    )

    $shape = $Slide.Shapes.AddShape(5, $Left, $Top, $Width, $Height)
    $shape.Adjustments.Item(1) = $Radius
    Set-ShapeFill -Shape $shape -FillHex $FillHex
    Set-ShapeLine -Shape $shape -LineHex $LineHex -Weight 1.25
    return $shape
}

function New-CroppedTileImage {
    param(
        [string]$SourcePath,
        [string]$OutPath,
        [double]$CropX,
        [double]$CropY,
        [double]$CropWidth,
        [double]$CropHeight,
        [int]$TargetWidth,
        [int]$TargetHeight
    )

    $image = [System.Drawing.Bitmap]::FromFile($SourcePath)
    try {
        $sourceRect = New-Object System.Drawing.Rectangle(
            [int][Math]::Round($image.Width * $CropX),
            [int][Math]::Round($image.Height * $CropY),
            [int][Math]::Round($image.Width * $CropWidth),
            [int][Math]::Round($image.Height * $CropHeight)
        )

        if ($sourceRect.X + $sourceRect.Width -gt $image.Width) {
            $sourceRect.Width = $image.Width - $sourceRect.X
        }
        if ($sourceRect.Y + $sourceRect.Height -gt $image.Height) {
            $sourceRect.Height = $image.Height - $sourceRect.Y
        }

        $targetRatio = [double]$TargetWidth / [double]$TargetHeight
        $sourceRatio = [double]$sourceRect.Width / [double]$sourceRect.Height

        if ($sourceRatio -gt $targetRatio) {
            $newWidth = [int][Math]::Round($sourceRect.Height * $targetRatio)
            $sourceRect.X += [int][Math]::Round(($sourceRect.Width - $newWidth) / 2)
            $sourceRect.Width = $newWidth
        }
        elseif ($sourceRatio -lt $targetRatio) {
            $newHeight = [int][Math]::Round($sourceRect.Width / $targetRatio)
            $sourceRect.Y += [int][Math]::Round(($sourceRect.Height - $newHeight) / 2)
            $sourceRect.Height = $newHeight
        }

        $target = New-Object System.Drawing.Bitmap($TargetWidth, $TargetHeight)
        $graphics = [System.Drawing.Graphics]::FromImage($target)
        try {
            $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
            $graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
            $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
            $graphics.DrawImage($image, (New-Object System.Drawing.Rectangle(0, 0, $TargetWidth, $TargetHeight)), $sourceRect, [System.Drawing.GraphicsUnit]::Pixel)
            $target.Save($OutPath, [System.Drawing.Imaging.ImageFormat]::Png)
        }
        finally {
            $graphics.Dispose()
            $target.Dispose()
        }
    }
    finally {
        $image.Dispose()
    }
}

function Add-EmbeddedPicture {
    param(
        $Slide,
        [string]$Path,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height
    )

    return $Slide.Shapes.AddPicture($Path, 0, -1, $Left, $Top, $Width, $Height)
}

function Add-BandLabel {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Text,
        [string]$FillHex,
        [string]$TextHex = "#FFFFFF",
        [double]$FontSize = $PlaqueTitleFontSize
    )

    $band = Add-RoundedRect -Slide $Slide -Left $Left -Top $Top -Width $Width -Height $Height -FillHex $FillHex -LineHex $FillHex -Radius 0.18
    Add-TextBox -Slide $Slide -Left $Left -Top ($Top + 2) -Width $Width -Height ($Height - 2) -Text $Text -FontSize $FontSize -Bold $true -ColorHex $TextHex -Alignment 2 -MarginLeft 6 -MarginRight 6 -MarginTop 0 -MarginBottom 0 | Out-Null
    return $band
}

function Add-Arrow {
    param(
        $Slide,
        [double]$X1,
        [double]$Y1,
        [double]$X2,
        [double]$Y2,
        [string]$ColorHex = "#738394",
        [double]$Weight = 2.0
    )

    $line = $Slide.Shapes.AddLine($X1, $Y1, $X2, $Y2)
    $line.Line.ForeColor.RGB = Get-OfficeColor $ColorHex
    $line.Line.Weight = $Weight
    $line.Line.EndArrowheadStyle = 3
    return $line
}

function Add-MarkerDot {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Size,
        [string]$FillHex
    )

    $dot = $Slide.Shapes.AddShape(9, $Left, $Top, $Size, $Size)
    Set-ShapeFill -Shape $dot -FillHex $FillHex
    $dot.Line.Visible = 0
    return $dot
}

function Add-CalloutCard {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Title,
        [string]$Body,
        [string]$AccentHex
    )

    Add-RoundedRect -Slide $Slide -Left $Left -Top $Top -Width $Width -Height $Height -FillHex "#FFFFFF" -LineHex "#C7D0D8" -Radius 0.12 | Out-Null
    Add-MarkerDot -Slide $Slide -Left ($Left + 12) -Top ($Top + 13) -Size 10 -FillHex $AccentHex | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 28) -Top ($Top + 8) -Width ($Width - 38) -Height 24 -Text $Title -FontSize $UiFontSize -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 28) -Top ($Top + 32) -Width ($Width - 38) -Height ($Height - 38) -Text $Body -FontSize $UiFontSize -ColorHex "#4A5968" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function Add-ComparePanel {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Title,
        [string]$BandText,
        [string]$BandHex,
        [string[]]$Bullets,
        [string]$FootText = "",
        [double]$BulletFontSize = $UiFontSize,
        [double]$TitleFontSize = 18,
        [double]$FootFontSize = $UiFontSize,
        [double]$BulletStep = 34
    )

    Add-RoundedRect -Slide $Slide -Left $Left -Top $Top -Width $Width -Height $Height -FillHex "#FFFFFF" -LineHex "#B8C4CE" -Radius 0.1 | Out-Null
    Add-BandLabel -Slide $Slide -Left ($Left + 16) -Top ($Top + 14) -Width 132 -Height 34 -Text $BandText -FillHex $BandHex -FontSize $PlaqueTitleFontSize | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 16) -Top ($Top + 56) -Width ($Width - 32) -Height 30 -Text $Title -FontSize $TitleFontSize -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    for ($i = 0; $i -lt $Bullets.Length; $i++) {
        $y = $Top + 96 + ($i * $BulletStep)
        Add-MarkerDot -Slide $Slide -Left ($Left + 18) -Top ($y + 5) -Size 10 -FillHex $BandHex | Out-Null
        Add-TextBox -Slide $Slide -Left ($Left + 34) -Top $y -Width ($Width - 48) -Height 32 -Text $Bullets[$i] -FontSize $BulletFontSize -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    }

    if ($FootText) {
        Add-TextBox -Slide $Slide -Left ($Left + 16) -Top ($Top + $Height - 42) -Width ($Width - 32) -Height 30 -Text $FootText -FontSize $FootFontSize -ColorHex "#6A7782" -Bold $true -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    }
}

function Add-StepCard {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$StepNumber,
        [string]$Title,
        [string]$Body,
        [string]$AccentHex = "#2F5D7C"
    )

    Add-RoundedRect -Slide $Slide -Left $Left -Top $Top -Width $Width -Height $Height -FillHex "#FFFFFF" -LineHex "#BAC6CF" -Radius 0.1 | Out-Null
    $badge = $Slide.Shapes.AddShape(9, $Left + 12, $Top + 10, 26, 26)
    Set-ShapeFill -Shape $badge -FillHex $AccentHex
    $badge.Line.Visible = 0
    Add-TextBox -Slide $Slide -Left ($Left + 12) -Top ($Top + 10) -Width 26 -Height 26 -Text $StepNumber -FontSize $UiFontSize -Bold $true -ColorHex "#FFFFFF" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    $titleShape = Add-TextBox -Slide $Slide -Left ($Left + 46) -Top ($Top + 8) -Width ($Width - 58) -Height 20 -Text $Title -FontSize $UiFontSize -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0
    $titleShape.TextFrame2.VerticalAnchor = 1

    $bodyTop = $Top + 36
    $bodyHeight = [Math]::Max(16, $Height - 44)
    $bodyShape = Add-TextBox -Slide $Slide -Left ($Left + 12) -Top $bodyTop -Width ($Width - 24) -Height $bodyHeight -Text $Body -FontSize $UiFontSize -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0
    $bodyShape.TextFrame2.VerticalAnchor = 1
}

function Initialize-Slide {
    param(
        $Slide,
        [string]$AssetCode,
        [string]$ModuleTitle,
        [string]$Headline,
        [string]$SupportText,
        [string]$PromptText
    )

    Set-ShapeFill -Shape $Slide.Background -FillHex "#F4F1EA"

    $headerBar = $Slide.Shapes.AddShape(1, 0, 0, 960, 18)
    Set-ShapeFill -Shape $headerBar -FillHex "#1F2933"
    $headerBar.Line.Visible = 0

    $assetBadge = Add-RoundedRect -Slide $Slide -Left 48 -Top 34 -Width 92 -Height 26 -FillHex "#2F5D7C" -LineHex "#2F5D7C" -Radius 0.2
    $assetBadge.Line.Visible = 0
    Add-TextBox -Slide $Slide -Left 48 -Top 36 -Width 92 -Height 20 -Text $AssetCode -FontSize $UiFontSize -Bold $true -ColorHex "#FFFFFF" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    Add-TextBox -Slide $Slide -Left 154 -Top 30 -Width 650 -Height 26 -Text $ModuleTitle -FontSize $UiFontSize -Bold $true -ColorHex "#5E6C78" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left 48 -Top 68 -Width 840 -Height 42 -Text $Headline -FontSize 24 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left 48 -Top 114 -Width 840 -Height 34 -Text $SupportText -FontSize 18 -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    Add-BandLabel -Slide $Slide -Left 48 -Top 152 -Width 560 -Height 34 -Text $PromptText -FillHex "#C65D18" -FontSize $PlaqueTitleFontSize | Out-Null

    $footerLine = $Slide.Shapes.AddLine(48, 506, 912, 506)
    $footerLine.Line.ForeColor.RGB = Get-OfficeColor "#C7D0D8"
    $footerLine.Line.Weight = 1

    Add-TextBox -Slide $Slide -Left 48 -Top 510 -Width 520 -Height 18 -Text "Montazhnik lesov | Assessment visual build draft" -FontSize $UiFontSize -ColorHex "#6A7782" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $slot = Add-RoundedRect -Slide $Slide -Left 732 -Top 504 -Width 180 -Height 24 -FillHex "#F4F1EA" -LineHex "#B7C3CC" -Radius 0.16
    Set-ShapeLine -Shape $slot -LineHex "#B7C3CC" -Weight 1
    Add-TextBox -Slide $Slide -Left 732 -Top 507 -Width 180 -Height 16 -Text "TV anchor / QA slot" -FontSize $UiFontSize -ColorHex "#77838E" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function Add-RecognitionSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-44 / TV-01" -ModuleTitle "Assessment recognition board" -Headline "Ishchi ploshchadku po nastilu." -SupportText "Nastil = rabota. Rigel = zhestkost. Uzel = fiksatsiya." -PromptText "Q-07: chto dayot ploshchadku?"

    $tempDir = Join-Path $env:TEMP ("a44_" + [guid]::NewGuid().ToString())
    New-Item -ItemType Directory -Path $tempDir | Out-Null

    try {
        $tiles = @(
            @{
                Source = (Join-Path $RepoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready\ML_S14_KL_vid_v_sbore_edit_ready_v01.png')
                Out = (Join-Path $tempDir 'tile_platform.png')
                CropX = 0.06; CropY = 0.08; CropWidth = 0.88; CropHeight = 0.42
                Accent = '#2E7D5B'
                Title = 'Nastil / ploshchadka'
                Body = 'Po nemu stoyat i rabotayut.'
            },
            @{
                Source = (Join-Path $RepoRoot '02_Research\Montazhnik_lesov\07_Assets\02_Edit_Ready\ML_S14_KL_vid_v_sbore_edit_ready_v01.png')
                Out = (Join-Path $tempDir 'tile_brace.png')
                CropX = 0.00; CropY = 0.00; CropWidth = 0.42; CropHeight = 0.28
                Accent = '#D58B22'
                Title = 'Rigel / zhestkost'
                Body = 'Derzhit zhestkost. Ne ploshchadka.'
            },
            @{
                Source = (Join-Path $AnchorRefDir 'ML_REF_KL_klinovoy_uzel_client_v01.png')
                Out = (Join-Path $tempDir 'tile_fix.png')
                CropX = 0.02; CropY = 0.08; CropWidth = 0.84; CropHeight = 0.84
                Accent = '#8E4A76'
                Title = 'Klinovoy uzel / fiksatsiya'
                Body = 'Fiksiruet uzel. Ne ploshchadka.'
            }
        )

        foreach ($tile in $tiles) {
            New-CroppedTileImage -SourcePath $tile.Source -OutPath $tile.Out -CropX $tile.CropX -CropY $tile.CropY -CropWidth $tile.CropWidth -CropHeight $tile.CropHeight -TargetWidth 230 -TargetHeight 148
        }

        $cardLefts = @(54, 348, 642)

        for ($i = 0; $i -lt $tiles.Count; $i++) {
            $tile = $tiles[$i]
            $left = $cardLefts[$i]

            Add-RoundedRect -Slide $Slide -Left $left -Top 194 -Width 264 -Height 278 -FillHex "#FFFFFF" -LineHex "#C7D0D8" -Radius 0.1 | Out-Null
            $pic = Add-EmbeddedPicture -Slide $Slide -Path $tile.Out -Left ($left + 17) -Top 210 -Width 230 -Height 152
            Set-ShapeLine -Shape $pic -LineHex "#D4DCE3" -Weight 0.75

            $accentBar = $Slide.Shapes.AddShape(1, $left + 17, 366, 230, 6)
            Set-ShapeFill -Shape $accentBar -FillHex $tile.Accent
            $accentBar.Line.Visible = 0

            $plaque = Add-RoundedRect -Slide $Slide -Left ($left + 17) -Top 380 -Width 230 -Height 54 -FillHex "#535861" -LineHex "#535861" -Radius 0.16
            $plaque.Line.Visible = 0
            Add-MarkerDot -Slide $Slide -Left ($left + 28) -Top 402 -Size 10 -FillHex $tile.Accent | Out-Null
            Add-TextBox -Slide $Slide -Left ($left + 44) -Top 390 -Width 188 -Height 40 -Text $tile.Title -FontSize $PlaqueTitleFontSize -Bold $true -ColorHex "#FFFFFF" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
            Add-TextBox -Slide $Slide -Left ($left + 17) -Top 438 -Width 230 -Height 30 -Text $tile.Body -FontSize $UiFontSize -ColorHex "#465564" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
        }

        Add-RoundedRect -Slide $Slide -Left 146 -Top 478 -Width 668 -Height 34 -FillHex "#FFF3E8" -LineHex "#E4B07E" -Radius 0.14 | Out-Null
        Add-BandLabel -Slide $Slide -Left 160 -Top 480 -Width 104 -Height 30 -Text "Q-07" -FillHex "#C65D18" -FontSize $PlaqueTitleFontSize | Out-Null
        Add-TextBox -Slide $Slide -Left 280 -Top 486 -Width 516 -Height 18 -Text "Ne putay nastil, rigel i uzel." -FontSize $UiFontSize -Bold $true -ColorHex "#7A4A1A" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    }
    finally {
        if (Test-Path $tempDir) {
            Remove-Item $tempDir -Recurse -Force
        }
    }
}

function Add-IntakeSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-45 / TV-02" -ModuleTitle "Assessment intake compare-card" -Headline "Prover elementy do sborki. Brak ne ispolzuy." -SupportText "Reshenie prostoe: v rabotu ili v brak." -PromptText "Do sborki: chto godno, chto v brak?"

    Add-ComparePanel -Slide $Slide -Left 62 -Top 198 -Width 376 -Height 274 -Title "Godno v sborku" -BandText "GOOD" -BandHex "#2E7D5B" -Bullets @(
        "odin proizvoditel",
        "komplekt po PPR ili tekhkarte",
        "detali bez deformatsiy i treshchin",
        "ne v naval, a rassortirovanno"
    ) -FootText "Etalon proverki pered sborkoy" -BulletFontSize $UiFontSize -TitleFontSize 18 -FootFontSize $UiFontSize -BulletStep 38

    Add-ComparePanel -Slide $Slide -Left 522 -Top 198 -Width 376 -Height 274 -Title "Ne godno v sborku" -BandText "NO-GO" -BandHex "#A63D40" -Bullets @(
        "deformatsiya ili iskrivlenie",
        "nekomplektnyy ili povrezhdennyy uzel",
        "srazu vyvesti iz sborki"
    ) -FootText "Ne 'pochti godno'. Srazu v brak." -BulletFontSize $UiFontSize -TitleFontSize 18 -FootFontSize $UiFontSize -BulletStep 42

    $arrow = $Slide.Shapes.AddLine(454, 332, 506, 332)
    $arrow.Line.ForeColor.RGB = Get-OfficeColor "#7E8E9C"
    $arrow.Line.Weight = 3
    $arrow.Line.EndArrowheadStyle = 3

    Add-BandLabel -Slide $Slide -Left 374 -Top 312 -Width 162 -Height 34 -Text "otbor do starta" -FillHex "#C65D18" -FontSize $PlaqueTitleFontSize | Out-Null
    Add-RoundedRect -Slide $Slide -Left 176 -Top 474 -Width 608 -Height 34 -FillHex "#FFF3E8" -LineHex "#E4B07E" -Radius 0.14 | Out-Null
    Add-BandLabel -Slide $Slide -Left 190 -Top 476 -Width 104 -Height 30 -Text "Q-08" -FillHex "#C65D18" -FontSize $PlaqueTitleFontSize | Out-Null
    Add-TextBox -Slide $Slide -Left 312 -Top 482 -Width 454 -Height 18 -Text "Defekt ili nekomplektnost = srazu v brak." -FontSize $UiFontSize -Bold $true -ColorHex "#7A4A1A" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function Add-TierSlide {
    param($Slide)

    $a46Headline = New-UnicodeString @(0x042F,0x0440,0x0443,0x0441,0x0020,0x0433,0x043E,0x0442,0x043E,0x0432,0x0020,0x0442,0x043E,0x043B,0x044C,0x043A,0x043E,0x0020,0x043F,0x0440,0x0438,0x0020,0x043F,0x043E,0x043B,0x043D,0x043E,0x043C,0x0020,0x043D,0x0430,0x0441,0x0442,0x0438,0x043B,0x0435,0x0020,0x0438,0x0020,0x0431,0x0435,0x0437,0x043E,0x043F,0x0430,0x0441,0x043D,0x043E,0x043C,0x0020,0x0434,0x043E,0x0441,0x0442,0x0443,0x043F,0x0435)
    Initialize-Slide -Slide $Slide -AssetCode "A-46 / TV-03" -ModuleTitle "Assessment working tier compare-board" -Headline $a46Headline -SupportText "Signal prostoy: gotov ili stop." -PromptText "Q-16: kakoy yarus ne gotov?"

    Add-ComparePanel -Slide $Slide -Left 62 -Top 198 -Width 372 -Height 236 -Title "Yarus gotov" -BandText "ALLOWED" -BandHex "#2E7D5B" -Bullets @(
        "polnyy nastil",
        "bezopasnyy dostup",
        "zashchitnyy kontur na meste"
    ) -FootText "Potom mozhno rabotat" -TitleFontSize 18

    Add-ComparePanel -Slide $Slide -Left 526 -Top 198 -Width 372 -Height 236 -Title "Yarus ne gotov" -BandText "BLOCKED" -BandHex "#A63D40" -Bullets @(
        "nepolnyy nastil ili razryv",
        "net bezopasnogo dostupa",
        "do ustraneniya rabotu ne nachinat"
    ) -FootText "Odin priznak = stop" -TitleFontSize 18

    Add-BandLabel -Slide $Slide -Left 332 -Top 444 -Width 296 -Height 34 -Text "blocked signal = srazu stop" -FillHex "#A63D40" -FontSize $PlaqueTitleFontSize | Out-Null
}

function Add-HazardSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-47 / TV-04" -ModuleTitle "Assessment hazard board" -Headline "Red flag = stop. Ne obsuzhday, a ostanovi." -SupportText "Na foto dolzhny schityvatsya vse opasnye oshibki." -PromptText "Q-21: kakie oshibki trebuut stopa?"

    $hazardImage = Join-Path $RepoRoot '02_Research\Montazhnik_lesov\07_Assets\03_Generated\ML_A47_hazard_scaffold_defects_v01.png'

    Add-RoundedRect -Slide $Slide -Left 54 -Top 198 -Width 500 -Height 292 -FillHex "#FFFFFF" -LineHex "#BAC6CF" -Radius 0.08 | Out-Null

    $hazardPhoto = Add-EmbeddedPicture -Slide $Slide -Path $hazardImage -Left 92 -Top 208 -Width 282 -Height 282
    Set-ShapeLine -Shape $hazardPhoto -LineHex "#D4DCE3" -Weight 0.75

    $arrow1 = Add-Arrow -Slide $Slide -X1 430 -Y1 258 -X2 322 -Y2 256 -ColorHex "#A63D40" -Weight 2.2
    $arrow2 = Add-Arrow -Slide $Slide -X1 420 -Y1 318 -X2 280 -Y2 286 -ColorHex "#A63D40" -Weight 2.2
    $arrow3 = Add-Arrow -Slide $Slide -X1 420 -Y1 378 -X2 232 -Y2 396 -ColorHex "#A63D40" -Weight 2.2
    $arrow4 = Add-Arrow -Slide $Slide -X1 420 -Y1 438 -X2 284 -Y2 338 -ColorHex "#A63D40" -Weight 2.2
    foreach ($arrow in @($arrow1, $arrow2, $arrow3, $arrow4)) {
        $arrow.Line.BeginArrowheadStyle = 1
        $arrow.Line.EndArrowheadStyle = 3
    }

    Add-MarkerDot -Slide $Slide -Left 314 -Top 248 -Size 12 -FillHex "#A63D40" | Out-Null
    Add-MarkerDot -Slide $Slide -Left 272 -Top 280 -Size 12 -FillHex "#A63D40" | Out-Null
    Add-MarkerDot -Slide $Slide -Left 226 -Top 390 -Size 12 -FillHex "#A63D40" | Out-Null
    Add-MarkerDot -Slide $Slide -Left 278 -Top 332 -Size 12 -FillHex "#A63D40" | Out-Null

    Add-RoundedRect -Slide $Slide -Left 576 -Top 204 -Width 330 -Height 284 -FillHex "#FFF6F6" -LineHex "#D48A8D" -Radius 0.08 | Out-Null
    $stopPlaque = Add-RoundedRect -Slide $Slide -Left 596 -Top 220 -Width 172 -Height 48 -FillHex "#FFF6F6" -LineHex "#A63D40" -Radius 0.16
    Set-ShapeLine -Shape $stopPlaque -LineHex "#A63D40" -Weight 2.2
    $stopText = New-UnicodeString @(0x0421,0x0422,0x041E,0x041F)
    Add-TextBox -Slide $Slide -Left 596 -Top 224 -Width 172 -Height 34 -Text $stopText -FontSize 28 -Bold $true -ColorHex "#A63D40" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $hazards = @(
        "net bezopasnogo dostupa",
        "snizu net diagonaley",
        "vtoroy yarus s nepolnym nastilom",
        "naverkhu net bokovogo ograzhdeniya"
    )

    for ($i = 0; $i -lt $hazards.Count; $i++) {
        $y = 290 + ($i * 42)
        Add-MarkerDot -Slide $Slide -Left 596 -Top ($y + 4) -Size 12 -FillHex "#A63D40" | Out-Null
        Add-TextBox -Slide $Slide -Left 616 -Top $y -Width 264 -Height 24 -Text $hazards[$i] -FontSize $UiFontSize -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    }

    Add-RoundedRect -Slide $Slide -Left 596 -Top 460 -Width 286 -Height 20 -FillHex "#FFF3F0" -LineHex "#D48A8D" -Radius 0.12 | Out-Null
    Add-TextBox -Slide $Slide -Left 606 -Top 459 -Width 266 -Height 18 -Text "Lyuboy iz etikh priznakov = stop." -FontSize $UiFontSize -Bold $true -ColorHex "#A63D40" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function Add-SequenceSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-48 / TV-05" -ModuleTitle "Assessment demolition sequence board" -Headline "Demontazh = poryadok. Ne razbiray kak popalo." -SupportText "Zona pod kontrolem. Bez sbrosa vniz." -PromptText "Q-22: kakaya logika demontazha pravilnaya?"

    $steps = @(
        @{ Title = "Kontrol zony"; Body = "Snachala zakroy zonu vnizu."; Accent = "#2F5D7C" },
        @{ Title = "Poryadok"; Body = "Razbiray po poryadku."; Accent = "#2E7D5B" },
        @{ Title = "Bez sbrosa vniz"; Body = "Ne sbrasyvay element vniz."; Accent = "#C65D18" },
        @{ Title = "Stop pri riske"; Body = "Risk neyasen - ostanovi rabotu."; Accent = "#A63D40" }
    )

    foreach ($index in 0..3) {
        $x = 54 + ($index * 220)
        Add-StepCard -Slide $Slide -Left $x -Top 228 -Width 194 -Height 150 -StepNumber ($index + 1) -Title $steps[$index].Title -Body $steps[$index].Body -AccentHex $steps[$index].Accent
        if ($index -lt 3) {
            Add-Arrow -Slide $Slide -X1 ($x + 196) -Y1 302 -X2 ($x + 214) -Y2 302 -ColorHex "#7E8E9C" -Weight 1.8 | Out-Null
        }
    }

    Add-RoundedRect -Slide $Slide -Left 250 -Top 404 -Width 460 -Height 48 -FillHex "#FFF3F0" -LineHex "#D48A8D" -Radius 0.12 | Out-Null
    Add-BandLabel -Slide $Slide -Left 268 -Top 411 -Width 116 -Height 34 -Text "NO-GO" -FillHex "#A63D40" -FontSize $PlaqueTitleFontSize | Out-Null
    Add-TextBox -Slide $Slide -Left 396 -Top 415 -Width 296 -Height 22 -Text "Tak nelzya: sbros vniz bez kontrolya." -FontSize $UiFontSize -Bold $true -ColorHex "#7A1D22" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function New-AssessmentPresentation {
    param(
        [string]$TargetPath,
        [bool]$ShowWindow
    )

    $resolvedTarget = Join-Path (Get-Location) $TargetPath
    $targetDir = Split-Path -Parent $resolvedTarget
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
    if (Test-Path -LiteralPath $resolvedTarget) {
        Remove-Item -LiteralPath $resolvedTarget -Force
    }

    $ppt = $null
    $presentation = $null

    try {
        $ppt = New-Object -ComObject PowerPoint.Application
        $ppt.Visible = -1

        $presentation = $ppt.Presentations.Add()
        try {
            $presentation.PageSetup.SlideWidth = 960
            $presentation.PageSetup.SlideHeight = 540
        }
        catch {
        }

        $blankLayout = 12

        $slide = $presentation.Slides.Add(1, $blankLayout)
        Add-RecognitionSlide -Slide $slide

        $slide = $presentation.Slides.Add(2, $blankLayout)
        Add-IntakeSlide -Slide $slide

        $slide = $presentation.Slides.Add(3, $blankLayout)
        Add-TierSlide -Slide $slide

        $slide = $presentation.Slides.Add(4, $blankLayout)
        Add-HazardSlide -Slide $slide

        $slide = $presentation.Slides.Add(5, $blankLayout)
        Add-SequenceSlide -Slide $slide

        $presentation.SaveAs($resolvedTarget)
        return $resolvedTarget
    }
    finally {
        if ($presentation -ne $null) {
            try {
                $presentation.Close()
            }
            catch {
            }
            [System.Runtime.InteropServices.Marshal]::ReleaseComObject($presentation) | Out-Null
        }
        if ($ppt -ne $null) {
            try {
                $ppt.Quit()
            }
            catch {
            }
            [System.Runtime.InteropServices.Marshal]::ReleaseComObject($ppt) | Out-Null
        }
        [GC]::Collect()
        [GC]::WaitForPendingFinalizers()
    }
}

$result = New-AssessmentPresentation -TargetPath $OutputPath -ShowWindow $Visible.IsPresent
Write-Output "Created: $result"
