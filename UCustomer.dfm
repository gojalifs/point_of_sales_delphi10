inherited frmCustomer: TfrmCustomer
  Caption = 'Master Customer'
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    TabOrder = 8
    inherited RzDBNavigator1: TRzDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Left = 768
    Width = 109
    TabOrder = 9
    ExplicitLeft = 768
    ExplicitWidth = 109
  end
  inherited Panel3: TPanel
    Width = 768
    TabOrder = 10
    ExplicitWidth = 768
    inherited RzPanel1: TRzPanel
      Width = 764
      Height = 303
      ExplicitWidth = 764
      ExplicitHeight = 303
      object RzLabel1: TRzLabel
        Left = 64
        Top = 32
        Width = 88
        Height = 13
        Caption = 'Customer Account'
      end
      object RzLabel2: TRzLabel
        Left = 64
        Top = 64
        Width = 76
        Height = 13
        Caption = 'Customer Name'
      end
      object RzLabel3: TRzLabel
        Left = 64
        Top = 95
        Width = 50
        Height = 13
        Caption = 'Telephone'
      end
      object RzLabel4: TRzLabel
        Left = 64
        Top = 126
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object RzLabel5: TRzLabel
        Left = 64
        Top = 159
        Width = 29
        Height = 13
        Caption = 'NPWP'
      end
      object RzLabel6: TRzLabel
        Left = 432
        Top = 95
        Width = 74
        Height = 13
        Caption = 'Contact Person'
      end
      object RzLabel7: TRzLabel
        Left = 432
        Top = 125
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object RzLabel8: TRzLabel
        Left = 432
        Top = 159
        Width = 39
        Height = 13
        Caption = 'Address'
      end
    end
    inherited RzPanel2: TRzPanel
      Top = 305
      Width = 764
      Height = 123
      ExplicitTop = 305
      ExplicitWidth = 764
      ExplicitHeight = 123
      inherited SMDBGrid1: TSMDBGrid
        Width = 760
        Height = 119
        DataSource = DataSource1
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clTeal
        GridStyle.EvenColor = clOlive
        Columns = <
          item
            Expanded = False
            FieldName = 'custAccount'
            Title.Caption = 'Cust Account'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'custName'
            Title.Caption = 'Customer Name'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telp'
            Title.Caption = 'Telephone'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fax'
            Title.Caption = 'Fax'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'npwp'
            Title.Caption = 'NPWP'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contactPerson'
            Title.Caption = 'Contact Person'
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'Email'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Title.Caption = 'Address'
            Width = 229
            Visible = True
          end>
      end
    end
  end
  object RzDBEdit1: TRzDBEdit [3]
    Left = 200
    Top = 77
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'custAccount'
    TabOrder = 0
  end
  object RzDBEdit2: TRzDBEdit [4]
    Left = 200
    Top = 104
    Width = 225
    Height = 21
    DataSource = DataSource1
    DataField = 'custName'
    TabOrder = 1
  end
  object RzDBEdit3: TRzDBEdit [5]
    Left = 200
    Top = 139
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'telp'
    TabOrder = 2
  end
  object RzDBEdit4: TRzDBEdit [6]
    Left = 200
    Top = 166
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'fax'
    TabOrder = 3
  end
  object RzDBEdit5: TRzDBEdit [7]
    Left = 200
    Top = 193
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'npwp'
    TabOrder = 4
  end
  object RzDBEdit6: TRzDBEdit [8]
    Left = 528
    Top = 138
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'contactPerson'
    TabOrder = 5
  end
  object RzDBEdit7: TRzDBEdit [9]
    Left = 528
    Top = 165
    Width = 121
    Height = 21
    DataSource = DataSource1
    DataField = 'email'
    TabOrder = 6
  end
  object RzDBMemo1: TRzDBMemo [10]
    Left = 528
    Top = 192
    Width = 234
    Height = 89
    DataField = 'address'
    DataSource = DataSource1
    TabOrder = 7
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from customer')
    Left = 728
    object FDQuery1custAccount: TWideStringField
      FieldName = 'custAccount'
      Origin = 'custAccount'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object FDQuery1custName: TWideStringField
      FieldName = 'custName'
      Origin = 'custName'
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
    Left = 736
    Top = 153
  end
end
