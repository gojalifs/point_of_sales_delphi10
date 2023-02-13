object frmCreateSalesOrder: TfrmCreateSalesOrder
  Left = 0
  Top = 0
  Caption = 'Create Sales Order'
  ClientHeight = 234
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 234
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 72
      Top = 56
      Width = 76
      Height = 13
      Caption = 'Customer Name'
    end
    object RzLabel2: TRzLabel
      Left = 72
      Top = 91
      Width = 51
      Height = 13
      Caption = 'Sales Date'
    end
    object RzDBLookupCustomer: TRzDBLookupComboBox
      Left = 168
      Top = 48
      Width = 217
      Height = 21
      DataField = 'custAccount'
      DataSource = frmSales.DsHeader
      KeyField = 'custAccount'
      ListField = 'custName'
      ListSource = frmSales.DataSourceCustomer
      TabOrder = 0
    end
    object RzDBDateTimeEdit1: TRzDBDateTimeEdit
      Left = 168
      Top = 88
      Width = 113
      Height = 21
      DataSource = frmSales.DsHeader
      DataField = 'transDate'
      TabOrder = 1
      Date = 44941.000000000000000000
      EditType = etDate
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 168
      Top = 128
      Width = 48
      Height = 15
      DataField = 'isPpn'
      DataSource = frmPembelian.DsHeader
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Caption = 'is PPN'
      TabOrder = 2
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 191
      Width = 531
      Height = 41
      Align = alBottom
      TabOrder = 3
      object btnCancel: TRzBitBtn
        Left = 352
        Top = 8
        TabOrder = 0
        OnClick = btnCancelClick
        Kind = bkCancel
      end
      object btnOK: TRzBitBtn
        Left = 448
        Top = 8
        TabOrder = 1
        OnClick = btnOKClick
        Kind = bkOK
      end
    end
  end
end
