inherited frmUsers: TfrmUsers
  Caption = 'User Setup'
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
    object RzBtnAccess: TRzBitBtn
      Left = 242
      Top = 2
      Height = 37
      Align = alLeft
      Caption = '&Add Access'
      TabOrder = 1
      OnClick = RzBtnAccessClick
    end
  end
  inherited Panel3: TPanel
    inherited RzPanel1: TRzPanel
      object SMDBGridHeader: TSMDBGrid
        Left = 2
        Top = 2
        Width = 684
        Height = 123
        Align = alClient
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        DefaultRowHeight = 24
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'idUser'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'username'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'password'
            Width = 140
            Visible = True
          end>
      end
    end
    inherited RzPanel2: TRzPanel
      inherited SMDBGrid1: TSMDBGrid
        DataSource = DsDetail
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply]
        Columns = <
          item
            Expanded = False
            FieldName = 'formName'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'formDescription'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mark'
            Visible = True
          end>
      end
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    AfterScroll = FDQuery1AfterScroll
    SQL.Strings = (
      'select * from [user]')
    Left = 696
    Top = 49
    object FDQuery1idUser: TWideStringField
      FieldName = 'idUser'
      Origin = 'idUser'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1username: TWideStringField
      FieldName = 'username'
      Origin = 'username'
      Size = 60
    end
    object FDQuery1password: TWideStringField
      FieldName = 'password'
      Origin = 'password'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 696
  end
  object FDQueryDetail: TFDQuery
    Active = True
    MasterSource = DataSource1
    MasterFields = 'idUser'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from usersform')
    Left = 696
    Top = 201
  end
  object DsDetail: TDataSource
    DataSet = FDQueryDetail
    Left = 696
    Top = 257
  end
  object FDStoredProc1: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.insertFormToUser'
    Left = 796
    Top = 65
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserId'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
end
