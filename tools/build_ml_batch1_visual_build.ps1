param(
    [string]$OutputPath = "05_Release\Montazhnik_lesov\01_PPTX\02_No_Test\ML_08_batch1_visual_build_v0.1.pptx",
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

function Add-RoundedCard {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Title,
        [string]$Body,
        [string]$FillHex,
        [string]$LineHex,
        [string]$TitleHex = "#17324D",
        [string]$BodyHex = "#425466"
    )

    $card = $Slide.Shapes.AddShape(5, $Left, $Top, $Width, $Height)
    $card.Adjustments.Item(1) = 0.15
    Set-ShapeFill -Shape $card -FillHex $FillHex
    Set-ShapeLine -Shape $card -LineHex $LineHex -Weight 1.4

    Add-TextBox -Slide $Slide -Left ($Left + 10) -Top ($Top + 8) -Width ($Width - 20) -Height 26 -Text $Title -FontSize 16 -Bold $true -ColorHex $TitleHex -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 10) -Top ($Top + 36) -Width ($Width - 20) -Height ($Height - 44) -Text $Body -FontSize 11.5 -ColorHex $BodyHex -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    return $card
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

    $card = $Slide.Shapes.AddShape(5, $Left, $Top, $Width, $Height)
    $card.Adjustments.Item(1) = 0.12
    Set-ShapeFill -Shape $card -FillHex "#FFFFFF"
    Set-ShapeLine -Shape $card -LineHex "#B8C4CE" -Weight 1.3

    $badge = $Slide.Shapes.AddShape(9, $Left + 12, $Top + 12, 28, 28)
    Set-ShapeFill -Shape $badge -FillHex $AccentHex
    $badge.Line.Visible = 0
    Add-TextBox -Slide $Slide -Left ($Left + 12) -Top ($Top + 12) -Width 28 -Height 28 -Text $StepNumber -FontSize 12 -Bold $true -ColorHex "#FFFFFF" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    Add-TextBox -Slide $Slide -Left ($Left + 48) -Top ($Top + 12) -Width ($Width - 58) -Height 24 -Text $Title -FontSize 14 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 12) -Top ($Top + 44) -Width ($Width - 24) -Height ($Height - 54) -Text $Body -FontSize 11.5 -ColorHex "#425466" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    return $card
}

function Add-Arrow {
    param(
        $Slide,
        [double]$X1,
        [double]$Y1,
        [double]$X2,
        [double]$Y2,
        [string]$ColorHex = "#6D7E8D",
        [double]$Weight = 2.0
    )

    $line = $Slide.Shapes.AddLine($X1, $Y1, $X2, $Y2)
    $line.Line.ForeColor.RGB = Get-OfficeColor $ColorHex
    $line.Line.Weight = $Weight
    $line.Line.EndArrowheadStyle = 3
    return $line
}

function Add-StageBand {
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

    $shape = $Slide.Shapes.AddShape(5, $Left, $Top, $Width, $Height)
    $shape.Adjustments.Item(1) = 0.18
    Set-ShapeFill -Shape $shape -FillHex $FillHex
    $shape.Line.Visible = 0
    Add-TextBox -Slide $Slide -Left $Left -Top ($Top + 2) -Width $Width -Height ($Height - 2) -Text $Text -FontSize 10 -Bold $true -ColorHex $TextHex -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    return $shape
}

function Add-ChecklistItem {
    param(
        $Slide,
        [double]$Left,
        [double]$Top,
        [double]$Width,
        [double]$Height,
        [string]$Title,
        [string]$Body,
        [string]$AccentHex = "#2E7D5B"
    )

    $card = $Slide.Shapes.AddShape(5, $Left, $Top, $Width, $Height)
    $card.Adjustments.Item(1) = 0.1
    Set-ShapeFill -Shape $card -FillHex "#FBFCFD"
    Set-ShapeLine -Shape $card -LineHex "#CCD5DD" -Weight 1.15

    $marker = $Slide.Shapes.AddShape(1, $Left + 12, $Top + 14, 10, 10)
    Set-ShapeFill -Shape $marker -FillHex $AccentHex
    $marker.Line.Visible = 0

    Add-TextBox -Slide $Slide -Left ($Left + 28) -Top ($Top + 9) -Width ($Width - 40) -Height 22 -Text $Title -FontSize 13 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left ($Left + 28) -Top ($Top + 32) -Width ($Width - 40) -Height ($Height - 38) -Text $Body -FontSize 11.2 -ColorHex "#465769" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    return $card
}

function Initialize-Slide {
    param(
        $Slide,
        [string]$ModuleCode,
        [string]$ModuleTitle,
        [string]$Headline,
        [string]$SupportText
    )

    Set-ShapeFill -Shape $Slide.Background -FillHex "#F4F1EA"

    $headerBar = $Slide.Shapes.AddShape(1, 0, 0, 960, 18)
    Set-ShapeFill -Shape $headerBar -FillHex "#1F2933"
    $headerBar.Line.Visible = 0

    $moduleBadge = $Slide.Shapes.AddShape(5, 48, 34, 82, 26)
    $moduleBadge.Adjustments.Item(1) = 0.22
    Set-ShapeFill -Shape $moduleBadge -FillHex "#2F5D7C"
    $moduleBadge.Line.Visible = 0
    Add-TextBox -Slide $Slide -Left 48 -Top 36 -Width 82 -Height 20 -Text $ModuleCode -FontSize 10.5 -Bold $true -ColorHex "#FFFFFF" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    Add-TextBox -Slide $Slide -Left 144 -Top 30 -Width 640 -Height 28 -Text $ModuleTitle -FontSize 11.5 -Bold $true -ColorHex "#5E6C78" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left 48 -Top 68 -Width 760 -Height 44 -Text $Headline -FontSize 25 -Bold $true -ColorHex "#17324D" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
    Add-TextBox -Slide $Slide -Left 48 -Top 116 -Width 760 -Height 36 -Text $SupportText -FontSize 13 -ColorHex "#445465" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $footerLine = $Slide.Shapes.AddLine(48, 500, 912, 500)
    $footerLine.Line.ForeColor.RGB = Get-OfficeColor "#C7D0D8"
    $footerLine.Line.Weight = 1

    Add-TextBox -Slide $Slide -Left 48 -Top 506 -Width 480 -Height 18 -Text "Montazhnik lesov | Batch 1 visual build draft" -FontSize 9.5 -ColorHex "#6A7782" -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null

    $qr = $Slide.Shapes.AddShape(5, 816, 506, 96, 18)
    $qr.Adjustments.Item(1) = 0.15
    Set-ShapeFill -Shape $qr -FillHex "#F4F1EA"
    Set-ShapeLine -Shape $qr -LineHex "#B7C3CC" -Weight 1
    Add-TextBox -Slide $Slide -Left 816 -Top 507 -Width 96 -Height 16 -Text "QR / client slot" -FontSize 8.5 -ColorHex "#77838E" -Alignment 2 -MarginLeft 0 -MarginRight 0 -MarginTop 0 -MarginBottom 0 | Out-Null
}

function New-Batch1Presentation {
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
        Initialize-Slide -Slide $slide -ModuleCode "ML-20" -ModuleTitle "05. Start montazha: baza i pervyy yarus" -Headline "Kachestvo bazy opredelyaet bezopasnost vsego dalneyshego montazha" -SupportText "Bezopasnyy start idet ne ot skorosti, a ot pravilnoy logiki: ploshchadka, opory, pervyy yarus i kontrol geometrii."

        $nodes20 = @(
            @{ Title = "Ploshchadka"; Body = "Osnovanie, podkhody i rabochaya zona gotovy k startu." },
            @{ Title = "Opory"; Body = "Opornyy kontur vystavlen ustoychivo i bez sluchaynykh podkladok." },
            @{ Title = "Pervyy yarus"; Body = "Nachalnyy karkas sobiraetsya bez propuskov kritichnykh elementov." },
            @{ Title = "Kontrol geometrii"; Body = "Do nabora vysoty proveryaem vertikalnost i obshchuyu logiku skhemy." }
        )
        $left20 = 52
        foreach ($index in 0..3) {
            $x = $left20 + ($index * 214)
            Add-RoundedCard -Slide $slide -Left $x -Top 190 -Width 180 -Height 146 -Title $nodes20[$index].Title -Body $nodes20[$index].Body -FillHex "#FFFFFF" -LineHex "#BAC6CF" | Out-Null
            if ($index -lt 3) {
                Add-Arrow -Slide $slide -X1 ($x + 182) -Y1 262 -X2 ($x + 206) -Y2 262 | Out-Null
            }
        }
        Add-StageBand -Slide $slide -Left 52 -Top 352 -Width 344 -Height 24 -Text "Oshibka v baze ne ostaetsya lokalnoy" -FillHex "#C65D18" | Out-Null

        $slide = $presentation.Slides.Add(2, $blankLayout)
        Initialize-Slide -Slide $slide -ModuleCode "ML-22" -ModuleTitle "05. Start montazha: baza i pervyy yarus" -Headline "Pervyy yarus sobiraetsya po poryadku, a ne po improvizatsii" -SupportText "Poryadok vazhen ne menshe samikh elementov: imenno on uderzhivaet geometriyu v protsesse sborki."

        $steps22 = @(
            @{ Title = "Opory"; Body = "Podgotovit ustoychivuyu oporu pod start konstruktsii." },
            @{ Title = "Stoyki"; Body = "Vystavit pervye stoyki bez perekosa i sluchaynogo shaga." },
            @{ Title = "Gorizontalnye elementy"; Body = "Svyazat karkas v chitaemuyu ramku pervogo yarusa." },
            @{ Title = "Pervye svyazi"; Body = "Zafiksirovat zhestkost do prodolzheniya rabot." }
        )
        foreach ($index in 0..3) {
            $x = 58 + ($index * 220)
            Add-StepCard -Slide $slide -Left $x -Top 210 -Width 194 -Height 150 -StepNumber ($index + 1) -Title $steps22[$index].Title -Body $steps22[$index].Body | Out-Null
            if ($index -lt 3) {
                Add-Arrow -Slide $slide -X1 ($x + 196) -Y1 285 -X2 ($x + 214) -Y2 285 -ColorHex "#8A99A6" -Weight 1.8 | Out-Null
            }
        }
        Add-StageBand -Slide $slide -Left 58 -Top 378 -Width 414 -Height 24 -Text "Poryadok sborki uderzhivaet geometriyu" -FillHex "#2F5D7C" | Out-Null

        $slide = $presentation.Slides.Add(3, $blankLayout)
        Initialize-Slide -Slide $slide -ModuleCode "ML-26" -ModuleTitle "06. Nabor vysoty, kreplenie i zhestkost skhemy" -Headline "Vysota dobavlyaetsya tolko vmeste s kontrolem ustoychivosti" -SupportText "Novyy yarus nelzya vosprinimat kak prosto dostavku detaley naverkh: kazhdyy etap trebuet proverki i krepleniya."

        $nodes26 = @(
            @{ Title = "Nabor yarusa"; Body = "Podnyat konstruktsiyu na sleduyushchiy uroven tolko posle gotovnosti predydushchego." },
            @{ Title = "Kontrol"; Body = "Proverit geometriyu i chitaemost silovoy logiki skhemy." },
            @{ Title = "Kreplenie"; Body = "Dobavit svyazi i fiksatsiyu do perekhoda k sleduyushchemu rostu." },
            @{ Title = "Dalneyshee narashchivanie"; Body = "Prodolzhat tolko v upravlyaemom i ustoychivom rezhime." }
        )
        foreach ($index in 0..3) {
            $y = 172 + ($index * 70)
            Add-RoundedCard -Slide $slide -Left 314 -Top $y -Width 332 -Height 56 -Title $nodes26[$index].Title -Body $nodes26[$index].Body -FillHex "#FFFFFF" -LineHex "#BAC6CF" | Out-Null
            if ($index -lt 3) {
                Add-Arrow -Slide $slide -X1 480 -Y1 ($y + 58) -X2 480 -Y2 ($y + 68) | Out-Null
            }
        }
        Add-StageBand -Slide $slide -Left 318 -Top 458 -Width 324 -Height 24 -Text "Rost konstruktsii bez kontrolya nedopustim" -FillHex "#C65D18" | Out-Null

        $slide = $presentation.Slides.Add(4, $blankLayout)
        Initialize-Slide -Slide $slide -ModuleCode "ML-27" -ModuleTitle "06. Nabor vysoty, kreplenie i zhestkost skhemy" -Headline "Nedostroennyy yarus ne yavlyaetsya bezopasnoy rabochey pozitsiey" -SupportText "U novogo yarusa est poryadok: karkas, svyazi, rabochaya ploshchadka i zashchita do prodolzheniya rosta."

        $steps27 = @(
            @{ Title = "Karkas yarusa"; Body = "Sobrat nesushchiy kontur bez propuskov na starte." },
            @{ Title = "Svyazi i zhestkost"; Body = "Vernut skheme ustoychivost do sleduyushchikh operatsiy." },
            @{ Title = "Rabochaya ploshchadka"; Body = "Podgotovit nastil tolko na gotovoy osnove." },
            @{ Title = "Zashchita"; Body = "Proverit ograzhdenie i dostup pered prodolzheniem nabora vysoty." }
        )
        foreach ($index in 0..3) {
            $x = 58 + ($index * 220)
            Add-StepCard -Slide $slide -Left $x -Top 212 -Width 194 -Height 152 -StepNumber ($index + 1) -Title $steps27[$index].Title -Body $steps27[$index].Body -AccentHex "#2E7D5B" | Out-Null
            if ($index -lt 3) {
                Add-Arrow -Slide $slide -X1 ($x + 196) -Y1 288 -X2 ($x + 214) -Y2 288 -ColorHex "#8A99A6" -Weight 1.8 | Out-Null
            }
        }
        Add-StageBand -Slide $slide -Left 486 -Top 382 -Width 346 -Height 24 -Text "Nelzya rabotat s nedostroennogo yarusa" -FillHex "#A63D40" | Out-Null

        $slide = $presentation.Slides.Add(5, $blankLayout)
        Initialize-Slide -Slide $slide -ModuleCode "ML-36" -ModuleTitle "07. Proverka pered ekspluatatsiey i pravila raboty na lesakh" -Headline "Sobral ne znachit dopustil k rabote" -SupportText "Mezhdu montazhom i ekspluatatsiey est obyazatelnyy etap proverki: imenno on otdelyaet sobrannuyu skhemu ot bezopasnogo dopuska."

        $stages36 = @(
            @{ Title = "Sborka"; Body = "Konstruktsiya doshla do rabochego sostoyaniya po montazhnoy logike."; Fill = "#FFFFFF"; Line = "#BAC6CF"; Band = "#2F5D7C" },
            @{ Title = "Proverka"; Body = "Uzly, nastily, zashchita i dostup prokhodyat obyazatelnyy kontrol."; Fill = "#FFF6E7"; Line = "#E0B66B"; Band = "#C65D18" },
            @{ Title = "Dopusk k ekspluatatsii"; Body = "Rabota razreshaetsya tolko posle podtverzhdennoy gotovnosti."; Fill = "#F4FBF7"; Line = "#98C7AF"; Band = "#2E7D5B" }
        )
        foreach ($index in 0..2) {
            $x = 70 + ($index * 286)
            Add-RoundedCard -Slide $slide -Left $x -Top 220 -Width 248 -Height 146 -Title $stages36[$index].Title -Body $stages36[$index].Body -FillHex $stages36[$index].Fill -LineHex $stages36[$index].Line | Out-Null
            Add-StageBand -Slide $slide -Left ($x + 16) -Top 190 -Width 108 -Height 22 -Text ("Etap " + ($index + 1)) -FillHex $stages36[$index].Band | Out-Null
            if ($index -lt 2) {
                Add-Arrow -Slide $slide -X1 ($x + 250) -Y1 292 -X2 ($x + 278) -Y2 292 -ColorHex "#7E8E9C" -Weight 2.0 | Out-Null
            }
        }

        $slide = $presentation.Slides.Add(6, $blankLayout)
        Initialize-Slide -Slide $slide -ModuleCode "ML-37" -ModuleTitle "07. Proverka pered ekspluatatsiey i pravila raboty na lesakh" -Headline "Pered ekspluatatsiey lesa dolzhny byt provereny po minimumu" -SupportText "Dopusk k rabote vydaetsya po cheklistu, a ne po vpechatleniyu: proveryaem klyuchevye zony gotovnosti."

        $items37 = @(
            @{ Title = "Uzly"; Body = "Kritichnye soedineniya ne vyzyvayut somneniy i ne sobrany 'vremenno'." },
            @{ Title = "Nastily"; Body = "Rabochaya poverkhnost sobrana polno i chitaetsya kak bezopasnaya zona." },
            @{ Title = "Ograzhdeniya"; Body = "Zashchita ustanovlena tam, gde bez nee rabota stanet riskovannoy." },
            @{ Title = "Dostup"; Body = "Podyom i peremeshchenie organizovany bez opasnoy improvizatsii." },
            @{ Title = "Obshchee sostoyanie"; Body = "Net priznakov, chto konstruktsiyu pytayutsya pustit v rabotu 'na avos'." }
        )
        $positions37 = @(
            @{ X = 58; Y = 196; W = 262; H = 98 },
            @{ X = 350; Y = 196; W = 262; H = 98 },
            @{ X = 642; Y = 196; W = 262; H = 98 },
            @{ X = 204; Y = 312; W = 262; H = 98 },
            @{ X = 496; Y = 312; W = 262; H = 98 }
        )
        foreach ($index in 0..4) {
            $pos = $positions37[$index]
            Add-ChecklistItem -Slide $slide -Left $pos.X -Top $pos.Y -Width $pos.W -Height $pos.H -Title $items37[$index].Title -Body $items37[$index].Body | Out-Null
        }
        Add-StageBand -Slide $slide -Left 360 -Top 428 -Width 240 -Height 24 -Text "Cheklist prigoden i dlya A3 / A5" -FillHex "#2F5D7C" | Out-Null

        $slide = $presentation.Slides.Add(7, $blankLayout)
        Initialize-Slide -Slide $slide -ModuleCode "ML-43" -ModuleTitle "07. Proverka pered ekspluatatsiey i pravila raboty na lesakh" -Headline "Ekspluatatsiya bez proverki i distsipliny bystro stanovitsya opasnoy" -SupportText "Posle sborki nachinaetsya ne svobodnyy rezhim, a upravlyaemyy algoritm: proverka, dopusk, rezhim raboty i stop pri riskakh."

        $nodes43 = @(
            @{ Title = "Proverka"; Body = "Podtverzhdaem gotovnost konstruktsii do nachala rabot."; Fill = "#FFFFFF"; Line = "#BAC6CF" },
            @{ Title = "Dopusk"; Body = "Razreshenie na rabotu daetsya tolko posle cheklista."; Fill = "#F4FBF7"; Line = "#98C7AF" },
            @{ Title = "Rezhim raboty"; Body = "Nagruzku, marshruty i poryadok derzhim pod kontrolem."; Fill = "#FFFFFF"; Line = "#BAC6CF" },
            @{ Title = "Stop pri riskakh"; Body = "Lyuboy krasnyy flag perevodit rabotu v ostanovku i ustranenie."; Fill = "#FFF3F0"; Line = "#D48A8D" }
        )
        foreach ($index in 0..3) {
            $x = 52 + ($index * 214)
            Add-RoundedCard -Slide $slide -Left $x -Top 198 -Width 180 -Height 150 -Title $nodes43[$index].Title -Body $nodes43[$index].Body -FillHex $nodes43[$index].Fill -LineHex $nodes43[$index].Line | Out-Null
            if ($index -lt 3) {
                Add-Arrow -Slide $slide -X1 ($x + 182) -Y1 273 -X2 ($x + 206) -Y2 273 -ColorHex "#7E8E9C" -Weight 1.9 | Out-Null
            }
        }
        Add-StageBand -Slide $slide -Left 694 -Top 366 -Width 206 -Height 24 -Text "Stop-signal vazhnee srokov" -FillHex "#A63D40" | Out-Null

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

$result = New-Batch1Presentation -TargetPath $OutputPath -ShowWindow $Visible.IsPresent
Write-Output "Created: $result"
