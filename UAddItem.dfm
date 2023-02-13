object frmAddItem: TfrmAddItem
  Left = 0
  Top = 0
  Caption = 'Add Item'
  ClientHeight = 302
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 41
    Align = alTop
    BorderOuter = fsBump
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 41
    Width = 712
    Height = 261
    Align = alClient
    BorderOuter = fsBump
    TabOrder = 1
    object SMDBGrid1: TSMDBGrid
      Left = 2
      Top = 2
      Width = 708
      Height = 257
      Align = alClient
      DataSource = Dsitem
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
      ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'mark'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itemId'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itemName'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hargaBeli'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hargaJual'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unit'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object RzPanel3: TRzPanel
    Left = 712
    Top = 41
    Width = 82
    Height = 261
    Align = alRight
    BorderOuter = fsBump
    TabOrder = 2
    object RzBtnOK: TRzBitBtn
      Left = 2
      Top = 2
      Width = 78
      Align = alTop
      Caption = 'OK'
      TabOrder = 0
      OnClick = RzBtnOKClick
    end
  end
  object FDQueryItem: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from selectitem')
    Left = 664
    Top = 73
  end
  object Dsitem: TDataSource
    DataSet = FDQueryItem
    Left = 664
    Top = 113
  end
  object DsAddItem: TDataSource
    DataSet = FDQueryAddItem
    Left = 664
    Top = 233
  end
  object FDQueryAddItem: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from selectitem')
    Left = 664
    Top = 177
    object FDQueryAddItemitemId: TWideStringField
      FieldName = 'itemId'
      Origin = 'itemId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryAddItemitemName: TWideStringField
      FieldName = 'itemName'
      Origin = 'itemName'
      Size = 30
    end
    object FDQueryAddItemhargaBeli: TFMTBCDField
      FieldName = 'hargaBeli'
      Origin = 'hargaBeli'
      Precision = 18
      Size = 2
    end
    object FDQueryAddItemhargaJual: TFMTBCDField
      FieldName = 'hargaJual'
      Origin = 'hargaJual'
      Precision = 18
      Size = 2
    end
    object FDQueryAddItemunit: TWideStringField
      FieldName = 'unit'
      Origin = 'unit'
      Size = 10
    end
    object FDQueryAddItemmark: TBooleanField
      FieldName = 'mark'
      Origin = 'mark'
    end
  end
  object FDStoredAddItem: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.insertSelectItem'
    Left = 200
    Top = 153
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
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@Transtype'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end>
  end
  object FDStoredAddPurchase: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertPurchaseDetail'
    Left = 200
    Top = 201
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@userId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@purchaseId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@itemId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@qty'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@unit'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 7
        Name = '@price'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@lineAmount'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object FDStoredAddSales: TFDStoredProc
    Connection = DM.FDConnection1
    StoredProcName = 'POS.dbo.InsertSalesDetail'
    Left = 312
    Top = 201
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@userId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@salesId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@itemId'
        DataType = ftWideString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@qty'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@unit'
        DataType = ftWideString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 7
        Name = '@price'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@lineAmount'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
end
