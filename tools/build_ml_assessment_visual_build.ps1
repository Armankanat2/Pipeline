param(
    [string]$OutputPath = "05_Release\Montazhnik_lesov\01_PPTX\02_No_Test\ML_08_assessment_visual_build_v0.1.pptx",
    [switch]$Visible
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

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

function Add-BandLabel {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Text,
        [string]$FillHex,
        [string]$TextHex = "#FFFFFF"
    )

    $band = Add-RoundedRect -Slide $Slide -Left $Left -Top $Top -Width $Width -Height $Height -FillHex $FillHex -LineHex $FillHex -Radius 0.18
    Add-TextBox -Slide $Slide -Left $Left -Top ($Top + 2) -Width $Width -Height ($Height - 2) -Text $Text -FontSize 10 -Bold $true -ColorHex $TextHex -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
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
    Add-TextBox -Slide $Slide -Left ($Left + 28) -Top ($Top + 8) -Width ($Width - 38) -Height 22 -Text $Title -FontSize 12.5 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 28) -Top ($Top + 30) -Width ($Width - 38) -Height ($Height - 36) -Text $Body -FontSize 10.8 -ColorHex "#4A5968" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
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
        [string]$FootText = ""
    )

    Add-RoundedRect -Slide $Slide -Left $Left -Top $Top -Width $Width -Height $Height -FillHex "#FFFFFF" -LineHex "#B8C4CE" -Radius 0.1 | Out-Null
    Add-BandLabel -Slide $Slide -Left ($Left + 16) -Top ($Top + 14) -Width 104 -Height 22 -Text $BandText -FillHex $BandHex | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 16) -Top ($Top + 42) -Width ($Width - 32) -Height 24 -Text $Title -FontSize 15 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    for ($i = 0; $i -lt $Bullets.Length; $i++) {
        $y = $Top + 78 + ($i * 34)
        Add-MarkerDot -Slide $Slide -Left ($Left + 18) -Top ($y + 5) -Size 10 -FillHex $BandHex | Out-Null
        Add-TextBox -Slide $Slide -Left ($Left + 34) -Top $y -Width ($Width - 48) -Height 22 -Text $Bullets[$i] -FontSize 11.2 -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    }

    if ($FootText) {
        Add-TextBox -Slide $Slide -Left ($Left + 16) -Top ($Top + $Height - 38) -Width ($Width - 32) -Height 28 -Text $FootText -FontSize 10.4 -ColorHex "#6A7782" -Bold $true -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
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
    $badge = $Slide.Shapes.AddShape(9, $Left + 12, $Top + 12, 28, 28)
    Set-ShapeFill -Shape $badge -FillHex $AccentHex
    $badge.Line.Visible = 0
    Add-TextBox -Slide $Slide -Left ($Left + 12) -Top ($Top + 12) -Width 28 -Height 28 -Text $StepNumber -FontSize 12 -Bold $true -ColorHex "#FFFFFF" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 48) -Top ($Top + 11) -Width ($Width - 60) -Height 24 -Text $Title -FontSize 13 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $bodyTop = $Top + 40
    $bodyHeight = [Math]::Max(16, $Height - 46)
    Add-TextBox -Slide $Slide -Left ($Left + 12) -Top $bodyTop -Width ($Width - 24) -Height $bodyHeight -Text $Body -FontSize 10.8 -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
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
    Add-TextBox -Slide $Slide -Left 48 -Top 36 -Width 92 -Height 20 -Text $AssetCode -FontSize 10.5 -Bold $true -ColorHex "#FFFFFF" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    Add-TextBox -Slide $Slide -Left 154 -Top 30 -Width 650 -Height 26 -Text $ModuleTitle -FontSize 11.5 -Bold $true -ColorHex "#5E6C78" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left 48 -Top 68 -Width 800 -Height 42 -Text $Headline -FontSize 25 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left 48 -Top 114 -Width 820 -Height 32 -Text $SupportText -FontSize 13 -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    Add-BandLabel -Slide $Slide -Left 48 -Top 152 -Width 350 -Height 24 -Text $PromptText -FillHex "#C65D18" | Out-Null

    $footerLine = $Slide.Shapes.AddLine(48, 500, 912, 500)
    $footerLine.Line.ForeColor.RGB = Get-OfficeColor "#C7D0D8"
    $footerLine.Line.Weight = 1

    Add-TextBox -Slide $Slide -Left 48 -Top 506 -Width 520 -Height 18 -Text "Montazhnik lesov | Assessment visual build draft" -FontSize 9.5 -ColorHex "#6A7782" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $slot = Add-RoundedRect -Slide $Slide -Left 786 -Top 504 -Width 126 -Height 20 -FillHex "#F4F1EA" -LineHex "#B7C3CC" -Radius 0.16
    Set-ShapeLine -Shape $slot -LineHex "#B7C3CC" -Weight 1
    Add-TextBox -Slide $Slide -Left 786 -Top 506 -Width 126 -Height 16 -Text "TV anchor / QA slot" -FontSize 8.5 -ColorHex "#77838E" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function Add-RecognitionSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-44 / TV-01" -ModuleTitle "Assessment recognition board" -Headline "Rabochaya ploshchadka dolzhna schityvatsya kak otdelnaya rol gruppy elementov" -SupportText "Etot board nuzhen dlya bystrogo raspoznavaniya: chto dayot rabochuyu ploshchadku, chto derzhit zhestkost, a chto fiksiruet skhemu." -PromptText "Test prompt: ukazhite gruppu, kotoraya formiruet rabochuyu ploshchadku"

    $frame = Add-RoundedRect -Slide $Slide -Left 60 -Top 196 -Width 448 -Height 244 -FillHex "#FFFFFF" -LineHex "#BAC6CF" -Radius 0.08
    Add-TextBox -Slide $Slide -Left 76 -Top 208 -Width 220 -Height 22 -Text "Recognition scheme" -FontSize 14 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $tower = $Slide.Shapes.AddShape(1, 238, 236, 92, 150)
    Set-ShapeFill -Shape $tower -FillHex "#E6EEF4"
    Set-ShapeLine -Shape $tower -LineHex "#8FA3B7" -Weight 2

    $platform = $Slide.Shapes.AddShape(1, 176, 286, 216, 22)
    Set-ShapeFill -Shape $platform -FillHex "#E8F3EC"
    Set-ShapeLine -Shape $platform -LineHex "#2E7D5B" -Weight 2

    $braceLeft = $Slide.Shapes.AddLine(238, 242, 176, 330)
    $braceLeft.Line.ForeColor.RGB = Get-OfficeColor "#D58B22"
    $braceLeft.Line.Weight = 3
    $braceRight = $Slide.Shapes.AddLine(330, 242, 392, 330)
    $braceRight.Line.ForeColor.RGB = Get-OfficeColor "#D58B22"
    $braceRight.Line.Weight = 3

    $fixLeft = $Slide.Shapes.AddShape(9, 222, 388, 16, 16)
    Set-ShapeFill -Shape $fixLeft -FillHex "#8E4A76"
    $fixLeft.Line.Visible = 0
    $fixRight = $Slide.Shapes.AddShape(9, 330, 388, 16, 16)
    Set-ShapeFill -Shape $fixRight -FillHex "#8E4A76"
    $fixRight.Line.Visible = 0

    Add-Arrow -Slide $Slide -X1 530 -Y1 238 -X2 366 -Y2 298 -ColorHex "#2E7D5B" -Weight 1.8 | Out-Null
    Add-CalloutCard -Slide $Slide -Left 536 -Top 210 -Width 340 -Height 62 -Title "Badge 1: nastily / rabochaya ploshchadka" -Body "Imenno eta gruppa dolzhna byt pravilnym fokusom otveta na Q-07." -AccentHex "#2E7D5B"

    Add-Arrow -Slide $Slide -X1 530 -Y1 310 -X2 294 -Y2 266 -ColorHex "#D58B22" -Weight 1.8 | Out-Null
    Add-CalloutCard -Slide $Slide -Left 536 -Top 286 -Width 340 -Height 62 -Title "Badge 2: svyazi / zhestkost" -Body "Eta gruppa derzhit geometriyu, no ne yavlyaetsya rabochey ploshchadkoy." -AccentHex "#D58B22"

    Add-Arrow -Slide $Slide -X1 530 -Y1 382 -X2 338 -Y2 396 -ColorHex "#8E4A76" -Weight 1.8 | Out-Null
    Add-CalloutCard -Slide $Slide -Left 536 -Top 362 -Width 340 -Height 62 -Title "Badge 3: kreplenie / fiksatsiya" -Body "Kreplenie uderzhivaet skhemu i ne dolzhno podmenyat soboy roli drugih grupp." -AccentHex "#8E4A76"

    Add-BandLabel -Slide $Slide -Left 74 -Top 410 -Width 196 -Height 22 -Text "Optional distractor: ne eto ishchem" -FillHex "#6C7A89" | Out-Null
}

function Add-IntakeSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-45 / TV-02" -ModuleTitle "Assessment intake compare-card" -Headline "Do sborki nuzhen prostoy filtr: godno ili srazu vyvodim iz raboty" -SupportText "Visual nuzhen ne dlya 'pochti godno', a dlya mgnovennogo resheniya po priemke elementa." -PromptText "Test prompt: kakoy element nado srazu vyvesti iz sborki"

    Add-ComparePanel -Slide $Slide -Left 70 -Top 204 -Width 360 -Height 228 -Title "Godno v sborku" -BandText "GOOD" -BandHex "#2E7D5B" -Bullets @(
        "bez deformatsii i slomannykh konturov",
        "komplektnyy uzel bez yavnykh propuskov",
        "rabochiy vid, a ne 'idealnaya vitrinna'"
    ) -FootText "Neutralnyy rabochiy etalon"

    Add-ComparePanel -Slide $Slide -Left 530 -Top 204 -Width 360 -Height 228 -Title "Ne godno v sborku" -BandText "NO-GO" -BandHex "#A63D40" -Bullets @(
        "deformatsiya ili yavnoe iskrivlenie",
        "nekomplektnyy ili povrezhdennyy uzel",
        "element srazu vyvoditsya iz sborki"
    ) -FootText "Ne 'pochti godno', a srazu v brak / otbor"

    $arrow = $Slide.Shapes.AddLine(450, 316, 510, 316)
    $arrow.Line.ForeColor.RGB = Get-OfficeColor "#7E8E9C"
    $arrow.Line.Weight = 3
    $arrow.Line.EndArrowheadStyle = 3

    Add-BandLabel -Slide $Slide -Left 398 -Top 288 -Width 116 -Height 24 -Text "otbor do starta" -FillHex "#C65D18" | Out-Null
    Add-CalloutCard -Slide $Slide -Left 270 -Top 444 -Width 418 -Height 38 -Title "Q-08 support" -Body "Pravilnyy vybor dolzhen byt svyazan s defektom ili nekomplektnostyu, a ne s vizualnoy 'staryu' detaley." -AccentHex "#C65D18"
}

function Add-TierSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-46 / TV-03" -ModuleTitle "Assessment working tier compare-board" -Headline "Rabochiy yarus schitaetsya gotovym tolko pri polnom nastile i bezopasnom dostupe" -SupportText "Slayd dolzhen davat binarnyy signal: mozhno rabotat ili rabotu ne nachinat." -PromptText "Test prompt: kakoy yarus schitaetsya nedopustimym dlya raboty"

    Add-ComparePanel -Slide $Slide -Left 62 -Top 198 -Width 372 -Height 236 -Title "Yarus gotov" -BandText "ALLOWED" -BandHex "#2E7D5B" -Bullets @(
        "polnyy nastil schityvaetsya kak rabochaya poverkhnost",
        "bezopasnyy dostup ponyaten bez domyslov",
        "zashchitnyy kontur na meste"
    ) -FootText "Mozhno perekhodit k rabote tolko posle etogo minimuma"

    Add-ComparePanel -Slide $Slide -Left 526 -Top 198 -Width 372 -Height 236 -Title "Yarus ne gotov" -BandText "BLOCKED" -BandHex "#A63D40" -Bullets @(
        "nepolnyy nastil ili razryv rabochey poverkhnosti",
        "net bezopasnogo dostupa",
        "rabotu ne nachinat do ustraneniya prichiny"
    ) -FootText "Odin blocked-priznak uzhe lomaet dopusk"

    Add-BandLabel -Slide $Slide -Left 392 -Top 444 -Width 176 -Height 24 -Text "blocked signal dolzhen byt mgnovennym" -FillHex "#A63D40" | Out-Null
}

function Add-HazardSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-47 / TV-04" -ModuleTitle "Assessment hazard board" -Headline "Yavnyy red flag dolzhen perevodit brigadu v stop, a ne v obsuuzhdenie 'mozhno li dotyanut'" -SupportText "Board materializuet hazard-recognition: odna situatsiya, neskolko risk-signalov i yavnoe deystvie." -PromptText "Test prompt: kakoy priznak trebuet nemedlennogo stopa i ustraneniya"

    $scene = Add-RoundedRect -Slide $Slide -Left 64 -Top 198 -Width 518 -Height 244 -FillHex "#FFFFFF" -LineHex "#BAC6CF" -Radius 0.08
    Add-TextBox -Slide $Slide -Left 82 -Top 210 -Width 220 -Height 22 -Text "Hazard scene" -FontSize 14 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $platform = $Slide.Shapes.AddShape(1, 152, 302, 250, 20)
    Set-ShapeFill -Shape $platform -FillHex "#E8EEF2"
    Set-ShapeLine -Shape $platform -LineHex "#8EA2B4" -Weight 2

    $guardGap = $Slide.Shapes.AddShape(1, 152, 270, 250, 10)
    Set-ShapeFill -Shape $guardGap -FillHex "#FAD7D9"
    Set-ShapeLine -Shape $guardGap -LineHex "#A63D40" -Weight 2

    $worker = $Slide.Shapes.AddShape(9, 252, 244, 26, 26)
    Set-ShapeFill -Shape $worker -FillHex "#2F5D7C"
    $worker.Line.Visible = 0
    $body = $Slide.Shapes.AddLine(265, 270, 265, 304)
    $body.Line.ForeColor.RGB = Get-OfficeColor "#2F5D7C"
    $body.Line.Weight = 3
    $arm = $Slide.Shapes.AddLine(265, 280, 288, 292)
    $arm.Line.ForeColor.RGB = Get-OfficeColor "#2F5D7C"
    $arm.Line.Weight = 3

    Add-BandLabel -Slide $Slide -Left 96 -Top 246 -Width 114 -Height 22 -Text "narushenie zashchity" -FillHex "#A63D40" | Out-Null
    Add-BandLabel -Slide $Slide -Left 356 -Top 330 -Width 118 -Height 22 -Text "opasnyy contour" -FillHex "#C65D18" | Out-Null
    Add-BandLabel -Slide $Slide -Left 212 -Top 372 -Width 128 -Height 22 -Text "rabotu ne prodolzhat" -FillHex "#A63D40" | Out-Null

    Add-Arrow -Slide $Slide -X1 212 -Y1 268 -X2 224 -Y2 272 -ColorHex "#A63D40" -Weight 1.8 | Out-Null
    Add-Arrow -Slide $Slide -X1 356 -Y1 352 -X2 318 -Y2 312 -ColorHex "#C65D18" -Weight 1.8 | Out-Null
    Add-Arrow -Slide $Slide -X1 340 -Y1 384 -X2 278 -Y2 284 -ColorHex "#A63D40" -Weight 1.8 | Out-Null

    Add-RoundedRect -Slide $Slide -Left 624 -Top 212 -Width 258 -Height 192 -FillHex "#FFF6F6" -LineHex "#D48A8D" -Radius 0.08 | Out-Null
    Add-BandLabel -Slide $Slide -Left 642 -Top 228 -Width 108 -Height 22 -Text "Action panel" -FillHex "#A63D40" | Out-Null
    Add-StepCard -Slide $Slide -Left 642 -Top 264 -Width 216 -Height 40 -StepNumber "1" -Title "STOP" -Body "Ostanovit rabotu pri yavnom risk-signale." -AccentHex "#A63D40"
    Add-StepCard -Slide $Slide -Left 642 -Top 312 -Width 216 -Height 40 -StepNumber "2" -Title "USTRANIT" -Body "Snachala ustranit prichinu, a ne normalizovat ee." -AccentHex "#C65D18"
    Add-StepCard -Slide $Slide -Left 642 -Top 360 -Width 216 -Height 40 -StepNumber "3" -Title "VERNUTSYA" -Body "Prodolzhit tolko posle povtornoy proverki." -AccentHex "#2E7D5B"
}

function Add-SequenceSlide {
    param($Slide)

    Initialize-Slide -Slide $Slide -AssetCode "A-48 / TV-05" -ModuleTitle "Assessment demolition sequence board" -Headline "Bezopasnyy demontazh chitaetsya kak poryadok deystviy, a ne kak lyubaya udobnaya razborka" -SupportText "Board dolzhen pokazat sequence logic: kontrol zony, poryadok, peredacha elementa bez sbrosa vniz i stop pri riske." -PromptText "Test prompt: kakaya logika demontazha yavlyaetsya pravilnoy"

    $steps = @(
        @{ Title = "Zona pod kontrolem"; Body = "Snachala organizovat zonu i ne dopuskat sluchaynogo prokhoda vnizu."; Accent = "#2F5D7C" },
        @{ Title = "Poryadok deystviy"; Body = "Razbirat po upravlyaemoy posledovatelnosti, a ne po sluchaynoy udobnosti."; Accent = "#2E7D5B" },
        @{ Title = "Bez sbrosa vniz"; Body = "Element peredayetsya ili prinimaetsya pod kontrolem, a ne sbrasyvaetsya vniz."; Accent = "#C65D18" },
        @{ Title = "Stop pri spornom riske"; Body = "Pri neyasnom ili opasnom signale rabotu ostanovit i pereproverit contour."; Accent = "#A63D40" }
    )

    foreach ($index in 0..3) {
        $x = 54 + ($index * 220)
        Add-StepCard -Slide $Slide -Left $x -Top 228 -Width 194 -Height 150 -StepNumber ($index + 1) -Title $steps[$index].Title -Body $steps[$index].Body -AccentHex $steps[$index].Accent
        if ($index -lt 3) {
            Add-Arrow -Slide $Slide -X1 ($x + 196) -Y1 302 -X2 ($x + 214) -Y2 302 -ColorHex "#7E8E9C" -Weight 1.8 | Out-Null
        }
    }

    Add-RoundedRect -Slide $Slide -Left 286 -Top 404 -Width 390 -Height 44 -FillHex "#FFF3F0" -LineHex "#D48A8D" -Radius 0.12 | Out-Null
    Add-BandLabel -Slide $Slide -Left 304 -Top 415 -Width 96 -Height 22 -Text "NO-GO" -FillHex "#A63D40" | Out-Null
    Add-TextBox -Slide $Slide -Left 410 -Top 412 -Width 248 -Height 26 -Text "Tak nelzya: sbros vniz ili snyatie bez kontrolya zony" -FontSize 12 -Bold $true -ColorHex "#7A1D22" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
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
        $presentation.PageSetup.SlideWidth = 960
        $presentation.PageSetup.SlideHeight = 540

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
            $presentation.Close()
            [System.Runtime.InteropServices.Marshal]::ReleaseComObject($presentation) | Out-Null
        }
        if ($ppt -ne $null) {
            $ppt.Quit()
            [System.Runtime.InteropServices.Marshal]::ReleaseComObject($ppt) | Out-Null
        }
        [GC]::Collect()
        [GC]::WaitForPendingFinalizers()
    }
}

$result = New-AssessmentPresentation -TargetPath $OutputPath -ShowWindow $Visible.IsPresent
Write-Output "Created: $result"
