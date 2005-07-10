object FrmPlanner: TFrmPlanner
  Left = 446
  Top = 231
  BorderStyle = bsDialog
  Caption = 'FrmPlanner'
  ClientHeight = 443
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 658
    Height = 408
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Semaine'
      object DBPlanner1: TDBPlanner
        Left = 0
        Top = 0
        Width = 631
        Height = 400
        ActiveDisplay = True
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
        AutoInsDel = True
        Bands.Show = True
        Bands.ActivePrimary = 16705483
        Bands.ActiveSecondary = 16439727
        Bands.NonActivePrimary = clSilver
        Bands.NonActiveSecondary = 11053224
        Caption.Title = 'TDBPlanner'
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -13
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = [fsBold]
        Caption.Alignment = taLeftJustify
        Caption.Background = 8569007
        Caption.BackgroundTo = 4487779
        Caption.Height = 32
        Caption.Visible = False
        Color = clWindow
        DayNames.Strings = (
          'Sun'
          'Mon'
          'Tue'
          'Wed'
          'Thu'
          'Fri'
          'Sat')
        DefaultItem.Alarm.Active = False
        DefaultItem.Alarm.ID = 0
        DefaultItem.Alarm.NotifyType = anCaption
        DefaultItem.Alarm.Tag = 0
        DefaultItem.Alarm.Time = atBefore
        DefaultItem.Alignment = taLeftJustify
        DefaultItem.AllowOverlap = True
        DefaultItem.Background = False
        DefaultItem.BrushStyle = bsSolid
        DefaultItem.CaptionAlign = taLeftJustify
        DefaultItem.CaptionBkg = 13993046
        DefaultItem.CaptionBkgTo = 9714695
        DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
        DefaultItem.CaptionFont.Color = clWindowText
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'MS Sans Serif'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.CaptionType = ctNone
        DefaultItem.Color = 15004146
        DefaultItem.ColorTo = 11197146
        DefaultItem.Completion = 0
        DefaultItem.CompletionDisplay = cdNone
        DefaultItem.Cursor = -1
        DefaultItem.DBTag = 0
        DefaultItem.FixedPos = False
        DefaultItem.FixedPosition = False
        DefaultItem.FixedSize = False
        DefaultItem.FixedTime = False
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = clWindowText
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'MS Sans Serif'
        DefaultItem.Font.Style = []
        DefaultItem.ImageID = -1
        DefaultItem.ImagePosition = ipHorizontal
        DefaultItem.InHeader = False
        DefaultItem.InplaceEdit = peMemo
        DefaultItem.ItemBegin = 16
        DefaultItem.ItemEnd = 17
        DefaultItem.ItemPos = 0
        DefaultItem.Layer = 0
        DefaultItem.Name = 'PlannerItem0'
        DefaultItem.OwnsItemObject = False
        DefaultItem.ReadOnly = False
        DefaultItem.SelectColor = 8506617
        DefaultItem.SelectColorTo = 6206458
        DefaultItem.SelectFontColor = clRed
        DefaultItem.Selected = False
        DefaultItem.Shadow = True
        DefaultItem.Tag = 0
        DefaultItem.TrackColor = clBlue
        DefaultItem.TrackSelectColor = clBlue
        DeleteGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
          0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
          161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
          56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
          075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
          EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
          EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
          5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
          0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
        DirectMove = False
        DisjunctSelect = False
        DisjunctSelectColor = clHighlight
        Display.ActiveStart = 16
        Display.ActiveEnd = 40
        Display.CurrentPosFrom = 1520
        Display.CurrentPosTo = 1520
        Display.DisplayStart = 0
        Display.DisplayEnd = 47
        Display.DisplayOffset = 0
        Display.DisplayScale = 24
        Display.DisplayUnit = 30
        Display.DisplayText = 0
        Display.ColorActive = 13696253
        Display.ColorNonActive = 12121599
        Display.ColorCurrent = clYellow
        Display.ColorCurrentItem = clLime
        Display.ScaleToFit = False
        Display.ShowCurrent = True
        Display.ShowCurrentItem = False
        DragItem = False
        EditRTF = False
        EditDirect = False
        EditScroll = ssNone
        EnableAlarms = False
        EnableFlashing = False
        FlashColor = clRed
        FlashFontColor = clWhite
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Alignment = taLeftJustify
        Footer.Captions.Strings = (
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          '')
        Footer.CompletionType = ctFullTime
        Footer.Color = 13627626
        Footer.ColorTo = 9224369
        Footer.Completion.Level2Color = 50943
        Footer.Completion.Font.Charset = DEFAULT_CHARSET
        Footer.Completion.Font.Color = clWindowText
        Footer.Completion.Font.Height = -11
        Footer.Completion.Font.Name = 'Arial'
        Footer.Completion.Font.Style = []
        Footer.CustomCompletionValue = False
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ImagePosition = ipLeft
        Footer.LineColor = clBlack
        Footer.ShowCompletion = False
        Footer.VAlignment = vtaCenter
        Footer.Visible = False
        GradientHorizontal = False
        GridLeftCol = 1
        GridTopRow = 3
        GroupGapOnly = False
        Header.Alignment = taCenter
        Header.Captions.Strings = (
          ''
          'mai 05/05/2001'
          'mai 05/06/2001'
          'mai 05/07/2001'
          'mai 05/08/2001'
          'mai 05/09/2001'
          'mai 05/10/2001'
          'mai 05/11/2001')
        Header.Color = 13627626
        Header.ColorTo = 9224369
        Header.Height = 32
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clBlack
        Header.Font.Height = -11
        Header.Font.Name = 'MS Sans Serif'
        Header.Font.Style = []
        Header.ImagePosition = ipLeft
        Header.ItemColor = clGray
        Header.ItemHeight = 32
        Header.LineColor = clGray
        Header.TextHeight = 32
        Header.VAlignment = vtaCenter
        Header.Visible = True
        HintOnItemChange = True
        HourType = ht24hrs
        HTMLHint = False
        HTMLOptions.Width = 100
        HTMLOptions.CellFontStyle = []
        HTMLOptions.HeaderFontStyle = []
        HTMLOptions.SidebarFontStyle = []
        HTMLOptions.ShowCaption = False
        InActiveDays.Sat = True
        InActiveDays.Sun = True
        InActiveDays.Mon = False
        InActiveDays.Tue = False
        InActiveDays.Wed = False
        InActiveDays.Thu = False
        InActiveDays.Fri = False
        IndicateNonVisibleItems = False
        InplaceEdit = ieAlways
        InsertAlways = True
        ItemGap = 11
        Items = <>
        ItemSelection.AutoUnSelect = True
        ItemSelection.Button = sbLeft
        Layer = 0
        Mode.Clip = False
        Mode.Month = 7
        Mode.PeriodStartDay = 2
        Mode.PeriodStartMonth = 7
        Mode.PeriodStartYear = 2005
        Mode.PeriodEndDay = 19
        Mode.PeriodEndMonth = 8
        Mode.PeriodEndYear = 2005
        Mode.PlannerType = plDay
        Mode.TimeLineStart = 38535.000000000000000000
        Mode.TimeLineNVUBegin = 0
        Mode.TimeLineNVUEnd = 0
        Mode.WeekStart = 0
        Mode.Year = 2005
        MultiSelect = False
        NavigatorButtons.ShowHint = False
        ShadowColor = clGray
        ShowHint = False
        Sidebar.ActiveColor = clNone
        Sidebar.Alignment = taLeftJustify
        Sidebar.AMPMPos = apUnderTime
        Sidebar.Background = 13627626
        Sidebar.BackgroundTo = 9224369
        Sidebar.Font.Charset = DEFAULT_CHARSET
        Sidebar.Font.Color = clBlack
        Sidebar.Font.Height = -11
        Sidebar.Font.Name = 'Arial'
        Sidebar.Font.Style = []
        Sidebar.LineColor = clOlive
        Sidebar.Occupied = 557032
        Sidebar.OccupiedTo = 8182519
        Sidebar.OccupiedFontColor = clWhite
        Sidebar.Position = spLeftRight
        Sidebar.SeparatorLineColor = clOlive
        Sidebar.ShowInPositionGap = False
        Sidebar.ShowOccupied = False
        Sidebar.Width = 40
        Positions = 7
        PositionGap = 2
        PositionGroup = 0
        PositionProps = <>
        PositionWidth = 0
        PositionZoomWidth = 0
        PrintOptions.FooterAlignment = taLeftJustify
        PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
        PrintOptions.FooterFont.Color = clWindowText
        PrintOptions.FooterFont.Height = -11
        PrintOptions.FooterFont.Name = 'MS Sans Serif'
        PrintOptions.FooterFont.Style = []
        PrintOptions.FooterSize = 0
        PrintOptions.HeaderAlignment = taLeftJustify
        PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
        PrintOptions.HeaderFont.Color = clWindowText
        PrintOptions.HeaderFont.Height = -11
        PrintOptions.HeaderFont.Name = 'MS Sans Serif'
        PrintOptions.HeaderFont.Style = []
        PrintOptions.HeaderSize = 0
        PrintOptions.LeftMargin = 0
        PrintOptions.Orientation = poPortrait
        PrintOptions.RightMargin = 0
        ScrollSmooth = True
        ScrollSynch = True
        ScrollBarStyle.Color = clNone
        ScrollBarStyle.Style = ssNormal
        ScrollBarStyle.Width = 16
        SelectBackground = False
        SelectColor = clHighlight
        TrackColor = clOlive
        TrackWidth = 4
        URLGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
          0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
          0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
          88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
          888887F8F8222208888888776888208888888887777778888888}
        Version = '2.2.1.0'
        Skin.SkinCaptionX = 0
        Skin.SkinCaptionY = 0
        Skin.SkinX = 0
        Skin.SkinY = 0
        ItemSource = DBDaySource1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Mois'
      ImageIndex = 3
      object DBPlannerMonthView1: TDBPlannerMonthView
        Left = 0
        Top = 0
        Width = 631
        Height = 400
        Cursor = crDefault
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
        AutoInsDel = True
        BackgroundPosition = bpTiled
        BevelOuter = bvNone
        BorderXP = True
        CaptionColor = clNone
        CaptionColorTo = clNone
        CaptionHoverColor = clHighlight
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionHeight = 13
        Color = 13696253
        ColorCurrent = clYellow
        ColorCurrentItem = clLime
        DateFormat = 'dd/mm/yyyy'
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = clWindowText
        DayFont.Height = -11
        DayFont.Name = 'MS Sans Serif'
        DayFont.Style = []
        DefaultItem.Alarm.Active = False
        DefaultItem.Alarm.ID = 0
        DefaultItem.Alarm.NotifyType = anCaption
        DefaultItem.Alarm.Tag = 0
        DefaultItem.Alarm.Time = atBefore
        DefaultItem.Alignment = taLeftJustify
        DefaultItem.AllowOverlap = True
        DefaultItem.Background = False
        DefaultItem.BrushStyle = bsSolid
        DefaultItem.CaptionAlign = taLeftJustify
        DefaultItem.CaptionBkg = 13993046
        DefaultItem.CaptionBkgTo = 9714695
        DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
        DefaultItem.CaptionFont.Color = clWindowText
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'MS Sans Serif'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.CaptionType = ctNone
        DefaultItem.Color = 15004146
        DefaultItem.ColorTo = 11197146
        DefaultItem.Completion = 0
        DefaultItem.CompletionDisplay = cdNone
        DefaultItem.Cursor = -1
        DefaultItem.DBTag = 0
        DefaultItem.FixedPos = False
        DefaultItem.FixedPosition = False
        DefaultItem.FixedSize = False
        DefaultItem.FixedTime = False
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = clWindowText
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'MS Sans Serif'
        DefaultItem.Font.Style = []
        DefaultItem.ImageID = -1
        DefaultItem.ImagePosition = ipHorizontal
        DefaultItem.InHeader = False
        DefaultItem.InplaceEdit = peMemo
        DefaultItem.ItemBegin = 16
        DefaultItem.ItemEnd = 17
        DefaultItem.ItemPos = 0
        DefaultItem.Layer = 0
        DefaultItem.Name = 'PlannerItem0'
        DefaultItem.OwnsItemObject = False
        DefaultItem.ReadOnly = False
        DefaultItem.SelectColor = 8506617
        DefaultItem.SelectColorTo = 6206458
        DefaultItem.SelectFontColor = clRed
        DefaultItem.Selected = False
        DefaultItem.Shadow = True
        DefaultItem.Tag = 0
        DefaultItem.TrackColor = clBlue
        DefaultItem.TrackSelectColor = clBlue
        DeleteGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
          0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
          161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
          56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
          075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
          EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
          EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
          5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
          0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
        DirectMove = False
        FocusColor = 13627626
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GradientStartColor = clNone
        GradientEndColor = clBtnFace
        GradientDirection = gdHorizontal
        HeaderColor = clNone
        HintPrevYear = 'Ann'#233'e pr'#233'c'#233'dente'
        HintPrevMonth = 'Mois pr'#233'c'#233'dent'
        HintNextMonth = 'Mois suivant'
        HintNextYear = 'Ann'#233'e suivante'
        InActiveColor = clWhite
        InversColor = clGray
        InversBkColor = 12121599
        InversBkColorTo = clNone
        Items = <>
        ItemSpace = 2
        LineColor = clGray
        Line3D = False
        Look = lookFlat
        MaxDate.Day = 0
        MaxDate.Month = 0
        MaxDate.Year = 0
        MaxDate.Use = False
        MinDate.Day = 0
        MinDate.Month = 0
        MinDate.Year = 0
        MinDate.Use = False
        MaxItemsDisplayed = 3
        MonthGradientStartColor = 13627626
        MonthGradientEndColor = 9224369
        MonthGradientDirection = gdHorizontal
        MultiSelect = False
        NameOfDays.Monday = 'lun.'
        NameOfDays.Tuesday = 'mar.'
        NameOfDays.Wednesday = 'mer.'
        NameOfDays.Thursday = 'jeu.'
        NameOfDays.Friday = 'ven.'
        NameOfDays.Saturday = 'sam.'
        NameOfDays.Sunday = 'dim.'
        NameOfDays.UseIntlNames = True
        NameOfMonths.January = 'janv.'
        NameOfMonths.February = 'f'#233'vr.'
        NameOfMonths.March = 'mars'
        NameOfMonths.April = 'avr.'
        NameOfMonths.May = 'mai'
        NameOfMonths.June = 'juin'
        NameOfMonths.July = 'juil.'
        NameOfMonths.August = 'ao'#251't'
        NameOfMonths.September = 'sept.'
        NameOfMonths.October = 'oct.'
        NameOfMonths.November = 'nov.'
        NameOfMonths.December = 'd'#233'c.'
        NameOfMonths.UseIntlNames = True
        PrintOptions.FooterAlignment = taLeftJustify
        PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
        PrintOptions.FooterFont.Color = clWindowText
        PrintOptions.FooterFont.Height = -11
        PrintOptions.FooterFont.Name = 'MS Sans Serif'
        PrintOptions.FooterFont.Style = []
        PrintOptions.FooterSize = 0
        PrintOptions.HeaderAlignment = taLeftJustify
        PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
        PrintOptions.HeaderFont.Color = clWindowText
        PrintOptions.HeaderFont.Height = -11
        PrintOptions.HeaderFont.Name = 'MS Sans Serif'
        PrintOptions.HeaderFont.Style = []
        PrintOptions.HeaderSize = 0
        PrintOptions.LeftMargin = 0
        PrintOptions.Orientation = poPortrait
        PrintOptions.RightMargin = 0
        ReturnIsSelect = False
        SelectColor = clHighlight
        SelectFontColor = clWhite
        ShadowColor = clGray
        Skin.SkinCaptionX = 0
        Skin.SkinCaptionY = 0
        Skin.SkinX = 0
        Skin.SkinY = 0
        ShowCurrent = False
        ShowCurrentItem = False
        ShowLines = True
        ShowToday = False
        ShowWeeks = True
        StartDay = 1
        TextColor = clBlack
        TabOrder = 0
        TodayStyle = tsSunken
        TrackWidth = 4
        URLGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
          0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
          0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
          88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
          888887F8F8222208888888776888208888888887777778888888}
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clWindowText
        WeekFont.Height = -11
        WeekFont.Name = 'MS Sans Serif'
        WeekFont.Style = []
        WeekName = 'S'
        WeekSelect = True
        WeekendColor = clScrollBar
        WeekWidth = 30
        YearStartAt.StartDay = 1
        YearStartAt.StartMonth = 1
        YearStartAt.PrevYearStartDay = 1
        YearStartAt.PrevYearStartMonth = 1
        YearStartAt.NextYearStartDay = 1
        YearStartAt.NextYearStartMonth = 1
        Day = 3
        Month = 7
        Year = 2005
        Version = '1.2.0.0'
        OnMonthChange = DBPlannerMonthView1YearChange
        OnYearChange = DBPlannerMonthView1YearChange
        OnDayChange = DBPlannerMonthView1YearChange
        DataBinding.StartTimeField = 'ITEMBEGIN'
        DataBinding.EndTimeField = 'ITEMEND'
        DataBinding.KeyField = 'ITEMKEY'
        DataBinding.NotesField = 'ITEMDESCR'
        DataBinding.SubjectField = 'ITEMSUBJ'
        DataSource = DataSource1
        OnInsertItem = DBDaySource1InsertItem
        OnDeleteItem = DBDaySource1DeleteItem
        OnUpdateItem = DBDaySource1UpdateItem
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Taches'
      ImageIndex = 1
      object TodoList1: TDBTodoList
        Left = 0
        Top = 0
        Width = 631
        Height = 240
        ActiveColumnColor = clWhite
        ActiveItemColor = clNone
        ActiveItemColorTo = clNone
        Align = alClient
        AutoAdvanceEdit = False
        BorderStyle = bsNone
        Color = clWindow
        Columns = <
          item
            Alignment = taLeftJustify
            Color = clWindow
            Editable = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = -1
            Tag = False
            TodoData = tdHandle
            Width = 32
            MaxLength = 0
          end
          item
            Alignment = taLeftJustify
            Caption = 'Priorit'#233
            Color = clWindow
            Editable = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = -1
            Tag = False
            TodoData = tdPriority
            Width = 45
            MaxLength = 0
          end
          item
            Alignment = taLeftJustify
            Caption = 'Sujet'
            Color = clWindow
            Editable = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = -1
            Tag = False
            TodoData = tdSubject
            Width = 350
            MaxLength = 0
          end
          item
            Alignment = taLeftJustify
            Caption = 'Date d'#39'ech'#233'ance'
            Color = clWindow
            Editable = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = -1
            Tag = False
            TodoData = tdDueDate
            Width = 100
            MaxLength = 0
          end
          item
            Alignment = taLeftJustify
            Caption = 'Ach'#232'vement'
            Color = clWindow
            Editable = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = -1
            Tag = False
            TodoData = tdCompletion
            Width = 100
            MaxLength = 0
          end>
        CompleteCheck.CheckType = ctCheckBox
        CompletionFont.Charset = DEFAULT_CHARSET
        CompletionFont.Color = clGray
        CompletionFont.Height = -11
        CompletionFont.Name = 'MS Sans Serif'
        CompletionFont.Style = [fsStrikeOut]
        DataSource = DataSource2
        DateFormat = 'dd/MM/yyyy'
        DragCursor = crDrag
        DragMode = dmManual
        DragKind = dkDrag
        Editable = True
        EditColors.StringEditor.FontColor = clWindowText
        EditColors.StringEditor.BackColor = clWindow
        EditColors.MemoEditor.FontColor = clWindowText
        EditColors.MemoEditor.BackColor = clWindow
        EditColors.IntegerEditor.FontColor = clWindowText
        EditColors.IntegerEditor.BackColor = clWindow
        EditColors.PriorityEditor.FontColor = clWindowText
        EditColors.PriorityEditor.BackColor = clWindow
        EditColors.StatusEditor.FontColor = clWindowText
        EditColors.StatusEditor.BackColor = clWindow
        EditColors.DateEditor.BackColor = clWindow
        EditColors.DateEditor.FontColor = clWindowText
        EditSelectAll = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GridLineColor = clSilver
        HeaderActiveColor = 9758459
        HeaderActiveColorTo = 1414638
        HeaderColor = 13627626
        HeaderColorTo = 9224369
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HeaderHeight = 22
        ItemHeight = 22
        Preview = False
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        PreviewHeight = 0
        PreviewColor = clNone
        PreviewColorTo = clNone
        PriorityFont.Charset = DEFAULT_CHARSET
        PriorityFont.Color = clRed
        PriorityFont.Height = -11
        PriorityFont.Name = 'MS Sans Serif'
        PriorityFont.Style = []
        PriorityStrings.Lowest = 'Minimale'
        PriorityStrings.Low = 'Basse'
        PriorityStrings.Normal = 'Normale'
        PriorityStrings.High = 'Haute'
        PriorityStrings.Highest = 'Maximale'
        PriorityListWidth = 80
        ProgressLook.CompleteColor = clRed
        ProgressLook.CompleteFontColor = clBlue
        ProgressLook.UnCompleteColor = clNone
        ProgressLook.UnCompleteFontColor = clWindowText
        ProgressLook.Level0Color = clLime
        ProgressLook.Level0ColorTo = 14811105
        ProgressLook.Level1Color = clYellow
        ProgressLook.Level1ColorTo = 13303807
        ProgressLook.Level2Color = 5483007
        ProgressLook.Level2ColorTo = 11064319
        ProgressLook.Level3Color = clRed
        ProgressLook.Level3ColorTo = 13290239
        ProgressLook.Level1Perc = 70
        ProgressLook.Level2Perc = 90
        ProgressLook.BorderColor = clBlack
        ProgressLook.ShowBorder = False
        ProgressLook.Stacked = False
        ProgressLook.ShowPercentage = True
        ProgressLook.CompletionSmooth = True
        ProgressLook.ShowGradient = True
        ProgressLook.Steps = 11
        SelectionColor = clHighlight
        SelectionColorTo = clNone
        SelectionFontColor = clHighlightText
        ShowPriorityText = False
        ShowSelection = True
        Sorted = False
        SortDirection = sdAscending
        SortColumn = 0
        StatusStrings.Deferred = 'Diff'#233'r'#233'e'
        StatusStrings.NotStarted = 'Non commenc'#233'e'
        StatusStrings.Completed = 'Termin'#233'e'
        StatusStrings.InProgress = 'En cours'
        StretchLastColumn = False
        TabOrder = 2
        TabStop = False
        TodoFields.AutoIncKey = False
        TodoFields.SubjectField = 'ITEMSUBJ'
        TodoFields.NotesField = 'ITEMDESCR'
        TodoFields.DueDateField = 'ITEMEND'
        TodoFields.CreationDateField = 'ITEMBEGIN'
        TodoFields.KeyField = 'ITEMKEY'
        OnClick = TodoList1Click
        OnDblClick = TodoList1DblClick
        OnDragDrop = TodoList1DragDrop
        OnDragOver = TodoList1DragOver
        OnEditDone = TodoList1EditDone
        OnEditStart = TodoList1EditStart
        OnEnter = TodoList1Enter
        OnExit = TodoList1Exit
        OnHeaderClick = TodoList1HeaderClick
        OnHeaderRightClick = TodoList1HeaderRightClick
        OnItemDelete = TodoList1ItemDelete
        OnItemInsert = TodoList1ItemInsert
        OnItemSelect = TodoList1ItemSelect
        OnItemRightClick = TodoList1ItemRightClick
        OnStartDrag = TodoList1StartDrag
        OnEndDrag = TodoList1EndDrag
        OnStatusToString = TodoList1StatusToString
        OnStringToStatus = TodoList1StringToStatus
        OnPriorityToString = TodoList1PriorityToString
        OnStringToPriority = TodoList1StringToPriority
        OnCompleteClick = TodoList1CompleteClick
        Version = '1.2.3.0'
      end
      object Memo1: TMemo
        Left = 0
        Top = 240
        Width = 631
        Height = 160
        Align = alBottom
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 658
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object Button3: TButton
      Left = 579
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Fermer'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object DBDaySource1: TDBDaySource
    OnSetFilter = DBDaySource1SetFilter
    AutoIncKey = False
    DataSource = DataSource1
    ResourceMap = <>
    StartTimeField = 'ITEMBEGIN'
    EndTimeField = 'ITEMEND'
    KeyField = 'ITEMKEY'
    ReadOnly = False
    SubjectField = 'ITEMSUBJ'
    NotesField = 'ITEMDESCR'
    UpdateByQuery = False
    OnInsertItem = DBDaySource1InsertItem
    OnDeleteItem = DBDaySource1DeleteItem
    OnUpdateItem = DBDaySource1UpdateItem
    AutoHeaderUpdate = True
    DateFormat = 'mmm mm/dd/yyyy'
    Day = 37016.000000000000000000
    DayIncrement = 7
    Mode = dmMultiDay
    Left = 248
    Top = 8
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = JvUIBDataSet1
    Left = 280
    Top = 8
  end
  object JvUIBDataBase1: TJvUIBDataBase
    Params.Strings = (
      'sql_dialect=3'
      'lc_ctype=NONE'
      'user_name=sysdba'
      'password=masterkey')
    DatabaseName = 'G:\Programmation\MEDIA.KIT\WallPap 1.0\Plugins\PLANNER.GDB'
    UserName = 'sysdba'
    PassWord = 'masterkey'
    LibraryName = 'G:\Programmation\MEDIA.KIT\WallPap 1.0\Plugins\fbembed.dll'
    Left = 344
    Top = 8
  end
  object JvUIBTransaction1: TJvUIBTransaction
    DataBase = JvUIBDataBase1
    Left = 376
    Top = 8
  end
  object JvUIBDataSet1: TJvUIBDataSet
    Transaction = JvUIBTransaction1
    Database = JvUIBDataBase1
    SQL.Strings = (
      'select * from PLANITEMS')
    FetchBlobs = True
    Left = 312
    Top = 8
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = JvUIBDataSet2
    Left = 280
    Top = 40
  end
  object JvUIBDataSet2: TJvUIBDataSet
    Transaction = JvUIBTransaction1
    Database = JvUIBDataBase1
    SQL.Strings = (
      'select * from TASKS')
    FetchBlobs = True
    Left = 312
    Top = 40
  end
end
