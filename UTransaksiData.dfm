object frmTransaksiData: TfrmTransaksiData
  Left = 0
  Top = 0
  Caption = 'frmTransaksiData'
  ClientHeight = 470
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 827
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object RzDBNavigator1: TRzDBNavigator
      Left = 2
      Top = 2
      Width = 240
      Height = 37
      DataSource = DsHeader
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 41
    Width = 827
    Height = 192
    Hint = ''
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Header'
      object SMDBGridHeader: TSMDBGrid
        Left = 0
        Top = 0
        Width = 823
        Height = 169
        Align = alClient
        DataSource = DsHeader
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = SMDBGridHeaderEnter
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
    end
  end
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 233
    Width = 827
    Height = 237
    Hint = ''
    ActivePage = TabSheet2
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet2: TRzTabSheet
      Caption = 'Detail'
      object SMDBGridDetail: TSMDBGrid
        Left = 0
        Top = 0
        Width = 823
        Height = 214
        Align = alClient
        DataSource = DsDetail
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = SMDBGridDetailEnter
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
      end
    end
  end
  object FDQueryHeader: TFDQuery
    BeforeDelete = FDQueryHeaderBeforeDelete
    Connection = DM.FDConnection1
    Left = 712
    Top = 80
  end
  object FDQueryDetail: TFDQuery
    MasterSource = DsHeader
    Connection = DM.FDConnection1
    Left = 721
    Top = 293
  end
  object DsHeader: TDataSource
    DataSet = FDQueryHeader
    Left = 721
    Top = 149
  end
  object DsDetail: TDataSource
    DataSet = FDQueryDetail
    Left = 721
    Top = 357
  end
end
