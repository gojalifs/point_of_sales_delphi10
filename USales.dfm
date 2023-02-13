inherited frmSales: TfrmSales
  Caption = 'Transaksi Sales'
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
    object RzBitBtn1: TRzBitBtn
      Left = 242
      Top = 2
      Height = 37
      Align = alLeft
      Caption = 'Print'
      TabOrder = 1
      OnClick = RzBitBtn1Click
    end
  end
  inherited RzPageControl1: TRzPageControl
    FixedDimension = 19
    inherited TabSheet1: TRzTabSheet
      inherited SMDBGridHeader: TSMDBGrid
        GridStyle.Style = gsCustom
        GridStyle.EvenColor = clAppWorkSpace
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply]
        Columns = <
          item
            Expanded = False
            FieldName = 'salesId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'custAccount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'salesDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'isPpn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalAmount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grandTotal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'userId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'transDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'topCode'
            Visible = True
          end>
      end
    end
  end
  inherited RzPageControl2: TRzPageControl
    Width = 698
    Align = alNone
    ExplicitWidth = 698
    FixedDimension = 19
    inherited TabSheet2: TRzTabSheet
      ExplicitWidth = 694
      inherited SMDBGridDetail: TSMDBGrid
        Width = 694
        GridStyle.Style = gsCustom
        GridStyle.EvenColor = clGradientActiveCaption
        Columns = <
          item
            Expanded = False
            FieldName = 'itemId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'unit'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'price'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lineAmount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recordId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'transDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserId'
            Visible = True
          end>
      end
    end
  end
  object RzPanel1: TRzPanel [3]
    Left = 704
    Top = 233
    Width = 123
    Height = 237
    Align = alRight
    BorderOuter = fsBump
    TabOrder = 3
    object RzBtnAddItem: TRzBitBtn
      Left = 2
      Top = 2
      Width = 119
      Align = alTop
      Caption = '& Add Item'
      TabOrder = 0
      OnClick = RzBtnAddItemClick
    end
  end
  inherited FDQueryHeader: TFDQuery
    AfterInsert = FDQueryHeaderAfterInsert
    AfterScroll = FDQueryHeaderAfterScroll
    OnNewRecord = FDQueryHeaderNewRecord
    AfterExecute = FDQueryHeaderAfterExecute
    SQL.Strings = (
      'select * from salesheader')
    Left = 720
    Top = 96
    object FDQueryHeadersalesId: TWideStringField
      FieldName = 'salesId'
      Origin = 'salesId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQueryHeadercustAccount: TWideStringField
      FieldName = 'custAccount'
      Origin = 'custAccount'
      Required = True
      Size = 10
    end
    object FDQueryHeadersalesDate: TDateField
      FieldName = 'salesDate'
      Origin = 'salesDate'
    end
    object FDQueryHeaderisPpn: TBooleanField
      FieldName = 'isPpn'
      Origin = 'isPpn'
    end
    object FDQueryHeaderTotalAmount: TFMTBCDField
      FieldName = 'TotalAmount'
      Origin = 'TotalAmount'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 2
    end
    object FDQueryHeadergrandTotal: TFMTBCDField
      FieldName = 'grandTotal'
      Origin = 'grandTotal'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 2
    end
    object FDQueryHeaderuserId: TWideStringField
      FieldName = 'userId'
      Origin = 'userId'
      Size = 10
    end
    object FDQueryHeadertransDate: TSQLTimeStampField
      FieldName = 'transDate'
      Origin = 'transDate'
    end
    object FDQueryHeadertopCode: TWideStringField
      FieldName = 'topCode'
      Origin = 'topCode'
    end
  end
  inherited FDQueryDetail: TFDQuery
    AfterPost = FDQueryDetailAfterPost
    MasterFields = 'salesId'
    SQL.Strings = (
      'select * from salesdetail')
    Left = 137
    Top = 285
    object FDQueryDetailsalesId: TWideStringField
      FieldName = 'salesId'
      Origin = 'salesId'
      Required = True
      Size = 30
    end
    object FDQueryDetailitemId: TWideStringField
      FieldName = 'itemId'
      Origin = 'itemId'
      Required = True
    end
    object FDQueryDetailqty: TFMTBCDField
      FieldName = 'qty'
      Origin = 'qty'
      Precision = 18
      Size = 2
    end
    object FDQueryDetailunit: TWideStringField
      FieldName = 'unit'
      Origin = 'unit'
      Size = 10
    end
    object FDQueryDetailprice: TFMTBCDField
      FieldName = 'price'
      Origin = 'price'
      Precision = 18
      Size = 2
    end
    object FDQueryDetaillineAmount: TFMTBCDField
      FieldName = 'lineAmount'
      Origin = 'lineAmount'
      Precision = 18
      Size = 2
    end
    object FDQueryDetailrecordId: TLargeintField
      FieldName = 'recordId'
      Origin = 'recordId'
      Required = True
    end
    object FDQueryDetailtransDate: TSQLTimeStampField
      FieldName = 'transDate'
      Origin = 'transDate'
    end
    object FDQueryDetailUserId: TWideStringField
      FieldName = 'UserId'
      Origin = 'UserId'
      Size = 10
    end
  end
  inherited DsDetail: TDataSource
    Left = 137
    Top = 341
  end
  object FDQueryCustomer: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from customer')
    Left = 177
    Top = 93
    object FDQueryCustomercustAccount: TWideStringField
      FieldName = 'custAccount'
      Origin = 'custAccount'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQueryCustomercustName: TWideStringField
      FieldName = 'custName'
      Origin = 'custName'
      Size = 80
    end
    object FDQueryCustomertelp: TWideStringField
      FieldName = 'telp'
      Origin = 'telp'
      Size = 80
    end
    object FDQueryCustomerfax: TWideStringField
      FieldName = 'fax'
      Origin = 'fax'
      Size = 50
    end
    object FDQueryCustomernpwp: TWideStringField
      FieldName = 'npwp'
      Origin = 'npwp'
      Size = 50
    end
    object FDQueryCustomercontactPerson: TWideStringField
      FieldName = 'contactPerson'
      Origin = 'contactPerson'
      Size = 80
    end
    object FDQueryCustomeremail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 80
    end
    object FDQueryCustomeraddress: TWideStringField
      FieldName = 'address'
      Origin = 'address'
      Size = 250
    end
  end
  object DataSourceCustomer: TDataSource
    DataSet = FDQueryCustomer
    Left = 177
    Top = 173
  end
  object FDQuItem: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from inventtable')
    Left = 64
    Top = 288
    object FDQuItemitemId: TWideStringField
      FieldName = 'itemId'
      KeyFields = 'itemId'
      Origin = 'itemId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuItemitemName: TWideStringField
      FieldName = 'itemName'
      Origin = 'itemName'
      Size = 30
    end
    object FDQuItemunit: TWideStringField
      FieldName = 'unit'
      Origin = 'unit'
      Size = 10
    end
    object FDQuItemminStock: TFMTBCDField
      FieldName = 'minStock'
      Origin = 'minStock'
      Precision = 18
      Size = 2
    end
    object FDQuItemmaxStock: TFMTBCDField
      FieldName = 'maxStock'
      Origin = 'maxStock'
      Precision = 18
      Size = 2
    end
    object FDQuItemhargaBeli: TFMTBCDField
      FieldName = 'hargaBeli'
      Origin = 'hargaBeli'
      Precision = 18
      Size = 2
    end
    object FDQuItemhargaJual: TFMTBCDField
      FieldName = 'hargaJual'
      Origin = 'hargaJual'
      Precision = 18
      Size = 2
    end
    object FDQuItemisActive: TBooleanField
      FieldName = 'isActive'
      Origin = 'isActive'
    end
  end
  object DsItem: TDataSource
    DataSet = FDQuItem
    Left = 64
    Top = 344
  end
  object frxReport1: TfrxReport
    Version = '6.6.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44936.872648888900000000
    ReportOptions.LastChange = 44941.465799120370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 457
    Top = 293
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 354.921460000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 151.181200000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 151.181200000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Prepared By')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 102.047310000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Approved By')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub Total :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PPN 11% :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 18.897650000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."lineAmount">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 41.574830000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[(SUM(<frxDBDataset1."lineAmount">,MasterData1,2)) * 0.11 ]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 64.252010000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[((SUM(<frxDBDataset1."lineAmount">,MasterData1,2)) * 0.11) + (S' +
              'UM(<frxDBDataset1."lineAmount">,MasterData1,2)) ]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Top = 320.905690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 320.905690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 320.905690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object MemoPreparedBy: TfrxMemoView
          AllowVectorExport = True
          Top = 253.228510000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Prepared By')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 253.228510000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '.....................................')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 362.834880000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'itemName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."itemName"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'itemName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."itemName"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."qty"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'unit'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."unit"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'price'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."price"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'totalAmount'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."totalAmount"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795275590000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015770000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 124.724490000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Id')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 170.078850000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Name')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 41.574830000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 79.370130000000000000
          Height = 37.795275590551200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 128.504020000000000000
          Height = 37.795275590000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Price')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 162.519790000000000000
          Height = 37.795275590000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Line Amount')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 222.992270000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 224.693058500000000000
          Top = 11.338590000000000000
          Width = 291.023810000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Poppins'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT MAJU BERKAH BERSAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 224.693058500000000000
          Top = 45.354360000000000000
          Width = 291.023810000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kawasan KITIC Deltamas Blok CC No. 12'
            'Pasirranji, Cikarang Pusat, Kab. Bekasi'
            'Indonesia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kepada')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 124.724490000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'CustomerName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 151.181200000000000000
          Width = 211.653680000000000000
          Height = 45.354360000000000000
          DataField = 'CustomerAddress'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustomerAddress"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SO Number')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SO Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 124.724490000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'salesId'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."salesId"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 151.181200000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'salesDate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Poppins'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."salesDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FDQuReport: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from vsales')
    Left = 456
    Top = 352
  end
  object DataSource1: TDataSource
    DataSet = FDQuReport
    Left = 512
    Top = 352
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'salesId=salesId'
      'custAccount=custAccount'
      'CustomerName=CustomerName'
      'CustomerAddress=CustomerAddress'
      'salesDate=salesDate'
      'isPpn=isPpn'
      'TotalAmount=totalAmount'
      'grandTotal=grandTotal'
      'itemId=itemId'
      'itemName=itemName'
      'qty=qty'
      'unit=unit'
      'price=price'
      'lineAmount=lineAmount')
    DataSet = FDQuReport
    BCDToCurrency = False
    Left = 504
    Top = 296
  end
end
