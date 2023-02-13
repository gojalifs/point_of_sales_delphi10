inherited frmSupplier: TfrmSupplier
  Caption = 'Master Supplier'
  ClientHeight = 529
  ClientWidth = 845
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 861
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 845
    ExplicitWidth = 845
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Left = 736
    Width = 109
    Height = 488
    ExplicitLeft = 736
    ExplicitWidth = 109
    ExplicitHeight = 488
  end
  inherited Panel3: TPanel
    Width = 736
    Height = 488
    ExplicitWidth = 736
    ExplicitHeight = 488
    inherited RzPanel1: TRzPanel
      Width = 732
      Height = 175
      ExplicitLeft = -2
      ExplicitTop = 4
      ExplicitWidth = 732
      ExplicitHeight = 175
      object RzLabel1: TRzLabel
        Left = 32
        Top = 16
        Width = 76
        Height = 13
        Caption = 'Vendor Account'
      end
      object RzLabel2: TRzLabel
        Left = 32
        Top = 43
        Width = 64
        Height = 13
        Caption = 'Vendor Name'
      end
      object RzLabel3: TRzLabel
        Left = 32
        Top = 76
        Width = 50
        Height = 13
        Caption = 'Telephone'
      end
      object RzLabel4: TRzLabel
        Left = 32
        Top = 108
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object RzLabel5: TRzLabel
        Left = 32
        Top = 139
        Width = 29
        Height = 13
        Caption = 'NPWP'
      end
      object RzLabel6: TRzLabel
        Left = 328
        Top = 21
        Width = 74
        Height = 13
        Caption = 'Contact Person'
      end
      object RzLabel7: TRzLabel
        Left = 328
        Top = 43
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object RzLabel8: TRzLabel
        Left = 328
        Top = 89
        Width = 39
        Height = 13
        Caption = 'Address'
      end
      object RzDBEdit1: TRzDBEdit
        Left = 88
        Top = 13
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'vendAccount'
        TabOrder = 0
      end
      object RzDBEdit2: TRzDBEdit
        Left = 88
        Top = 40
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'vendorName'
        TabOrder = 1
      end
      object RzDBEdit3: TRzDBEdit
        Left = 88
        Top = 67
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'telp'
        TabOrder = 2
      end
      object RzDBEdit4: TRzDBEdit
        Left = 87
        Top = 109
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'fax'
        TabOrder = 3
      end
      object RzDBEdit6: TRzDBEdit
        Left = 454
        Top = 18
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'contactPerson'
        TabOrder = 4
      end
      object RzDBEdit7: TRzDBEdit
        Left = 454
        Top = 59
        Width = 121
        Height = 21
        DataSource = DataSource1
        DataField = 'email'
        TabOrder = 5
      end
    end
    inherited RzPanel2: TRzPanel
      Top = 177
      Width = 732
      Height = 309
      ExplicitTop = 177
      ExplicitWidth = 732
      ExplicitHeight = 309
      inherited SMDBGrid1: TSMDBGrid
        Width = 728
        Height = 305
        DataSource = DataSource1
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clOlive
        GridStyle.EvenColor = clGreen
        Columns = <
          item
            Expanded = False
            FieldName = 'vendAccount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vendorName'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telp'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fax'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'npwp'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contactPerson'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Visible = True
          end>
      end
    end
    object RzDBMemo1: TRzDBMemo
      Left = 456
      Top = 88
      Width = 207
      Height = 71
      DataField = 'address'
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object RzDBEdit5: TRzDBEdit [3]
    Left = 89
    Top = 179
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'npwp'
    TabOrder = 3
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from vendor')
    Left = 656
    Top = 65
    object FDQuery1vendAccount: TWideStringField
      FieldName = 'vendAccount'
      Origin = 'vendAccount'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1vendorName: TWideStringField
      FieldName = 'vendorName'
      Origin = 'vendorName'
      Size = 80
    end
    object FDQuery1telp: TWideStringField
      FieldName = 'telp'
      Origin = 'telp'
      Size = 80
    end
    object FDQuery1fax: TWideStringField
      FieldName = 'fax'
      Origin = 'fax'
      Size = 50
    end
    object FDQuery1npwp: TWideStringField
      FieldName = 'npwp'
      Origin = 'npwp'
      Size = 50
    end
    object FDQuery1contactPerson: TWideStringField
      FieldName = 'contactPerson'
      Origin = 'contactPerson'
      Size = 80
    end
    object FDQuery1email: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 80
    end
    object FDQuery1address: TWideStringField
      FieldName = 'address'
      Origin = 'address'
      Size = 250
    end
  end
  inherited DataSource1: TDataSource
    Left = 656
    Top = 121
  end
end
