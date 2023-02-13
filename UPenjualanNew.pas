unit UPembelian;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTransaksiData, Data.DB,
    FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
    FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
    FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
    Vcl.Grids, Vcl.DBGrids, SMDBGrid, RzTabs, RzPanel, RzDBNav, Vcl.ExtCtrls,
    RzButton, frxClass, frxDBSet;

type
    TfrmPembelian = class(TfrmTransaksiData)
        FDQueryDetailpurchaseId: TWideStringField;
        FDQueryDetailitemId: TWideStringField;
        FDQueryDetailqty: TFMTBCDField;
        FDQueryDetailunit: TWideStringField;
        FDQueryDetailprice: TFMTBCDField;
        FDQueryDetaillineAmount: TFMTBCDField;
        FDQueryDetailrecordId: TLargeintField;
        FDQueryDetailtransDate: TSQLTimeStampField;
        FDQueryDetailuserId: TWideStringField;
        FDQueryVendor: TFDQuery;
        DataSourceVendor: TDataSource;
        RzPanel1: TRzPanel;
        RzBtnAddItem: TRzBitBtn;
        FDQuItem: TFDQuery;
        DsItem: TDataSource;
        FDQuItemitemId: TWideStringField;
        FDQuItemitemName: TWideStringField;
        FDQuItemunit: TWideStringField;
        FDQuItemminStock: TFMTBCDField;
        FDQuItemmaxStock: TFMTBCDField;
        FDQuItemhargaBeli: TFMTBCDField;
        FDQuItemhargaJual: TFMTBCDField;
        FDQuItemisActive: TBooleanField;
        FDQueryDetaillkItemName: TStringField;
        frxReport1: TfrxReport;
        FDQuReport: TFDQuery;
        DataSource1: TDataSource;
        frxDBDataset1: TfrxDBDataset;
        RzBitBtn1: TRzBitBtn;
        FDQueryDetailid: TIntegerField;
    FDQueryHeadersalesId: TWideStringField;
    FDQueryHeadercustAccount: TWideStringField;
    FDQueryHeadersalesDate: TDateField;
    FDQueryHeaderisPpn: TBooleanField;
    FDQueryHeaderTotalAmount: TFMTBCDField;
    FDQueryHeadergrandTotal: TFMTBCDField;
    FDQueryHeaderuserId: TWideStringField;
    FDQueryHeadertransDate: TSQLTimeStampField;
    FDQueryHeadertopCode: TWideStringField;
    FDQuery1: TFDQuery;
        procedure FormCreate(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FDQueryHeaderAfterInsert(DataSet: TDataSet);
        procedure FDQueryHeaderNewRecord(DataSet: TDataSet);
        procedure RzBtnAddItemClick(Sender: TObject);
        procedure FDQueryHeaderAfterScroll(DataSet: TDataSet);
        procedure FDQueryDetailqtyChange(Sender: TField);
        procedure FDQueryDetailpriceChange(Sender: TField);
        procedure FDQueryDetailunitChange(Sender: TField);
        procedure FDQueryDetailAfterPost(DataSet: TDataSet);
        procedure RzBitBtn1Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmPembelian: TfrmPembelian;

implementation

{$R *.dfm}

Uses UDM, UCreatePO, UAddItem, UMain;

procedure TfrmPembelian.FDQueryDetailAfterPost(DataSet: TDataSet);
begin
    inherited;
    with DM.FDQuGlobal do
    begin
        sql.Clear;
        sql.Add('SELECT SUM (lineAmount) as Total FROM purchaseDetail WHERE purchaseId =:A');
        Params[0].AsString := FDQueryHeaderpurchaseId.AsString;
        open;
    end;

    with DM.FDQuGlobal2 do
    begin
        sql.Clear;
        sql.Add('UPDATE PurchaseHeader SET totalAmount =:A , grandTotal =:B WHERE purchaseId =:C');

        Params[0].AsFloat := DM.FDQuGlobal.FieldByName('total').AsFloat;
        if FDQueryHeaderisPpn.AsBoolean = True then
        begin
            Params[1].AsFloat := (DM.FDQuGlobal.FieldByName('total').AsFloat *
              0.11) + DM.FDQuGlobal.FieldByName('total').AsFloat;
        end
        else
            Params[1].AsFloat := DM.FDQuGlobal.FieldByName('total').AsFloat;

        Params[2].AsString := FDQueryHeaderpurchaseId.AsString;
        ExecSQL;
    end;

    FDQueryHeader.RefreshRecord();
end;

procedure TfrmPembelian.FDQueryDetailpriceChange(Sender: TField);
begin
    inherited;
    FDQueryDetaillineAmount.AsFloat := FDQueryDetailqty.AsFloat *
      FDQueryDetailprice.AsFloat;
end;

procedure TfrmPembelian.FDQueryDetailqtyChange(Sender: TField);
begin
    inherited;
    FDQueryDetaillineAmount.AsFloat := FDQueryDetailqty.AsFloat *
      FDQueryDetailprice.AsFloat;
end;

procedure TfrmPembelian.FDQueryDetailunitChange(Sender: TField);
begin
    inherited;
    FDQueryDetaillineAmount.AsFloat := FDQueryDetailqty.AsFloat *
      FDQueryDetailprice.AsFloat;
end;

procedure TfrmPembelian.FDQueryHeaderAfterInsert(DataSet: TDataSet);
begin
    inherited;
    DM.FDQueryGetRecordId.Active := True;
    FDQueryHeaderpurchaseDate.AsDateTime := DM.FDQueryGetRecordId.FieldByName
      ('transdate').AsDateTime;
    FDQueryHeadertransDate.AsDateTime := DM.FDQueryGetRecordId.FieldByName
      ('transdate').AsDateTime;
    FDQueryHeadertotalAmount.AsCurrency := 0;
    FDQueryHeadergrandTotal.AsCurrency := 0;
    FDQueryHeaderisPpn.AsBoolean := True;
    FDQueryHeaderuserId.AsString := frmMain.vUser;
end;

procedure TfrmPembelian.FDQueryHeaderAfterScroll(DataSet: TDataSet);
begin
    inherited;
    with FDQueryDetail do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM Purchasedetail where purchaseid =:PURCHASEID');
        Params[0].AsString := FDQueryHeaderpurchaseId.AsString;
        Active := True;
    end;
end;

procedure TfrmPembelian.FDQueryHeaderNewRecord(DataSet: TDataSet);
begin
    inherited;
    if frmCreatePurchaseOrder = nil then
    begin
        Application.CreateForm(TfrmCreatePurchaseOrder, frmCreatePurchaseOrder);
        frmCreatePurchaseOrder.Show;
    end;
end;

procedure TfrmPembelian.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    WindowState := wsMinimized;
    frmPembelian := Nil;
    Action := caFree;
end;

procedure TfrmPembelian.FormCreate(Sender: TObject);
begin
    inherited;
    with FDQueryHeader do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM Purchaseheader');
        Active := True;
    end;

    with FDQueryDetail do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM Purchasedetail');
        Active := True;
    end;

    with FDQueryVendor do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM vendor');
        Active := True;
    end;
end;

procedure TfrmPembelian.RzBitBtn1Click(Sender: TObject);
var
    wPath: String;
begin
    inherited;
    wPath := ExtractFilePath(Application.ExeName);
    with FDQuReport do
    begin
        sql.Clear;
        sql.Add('select * from vpurchase where purchaseid =:A');
        Params[0].AsString := FDQueryHeaderpurchaseId.AsString;
        open;
    end;
    with frxReport1 do
    begin
        LoadFromFile(wPath + 'rptPurchaseOrder.fr3');
        TfrxMemoView(frxReport1.FindComponent('MemoPreparedBy')).Text :=
          frmMain.vUserName;

        ShowReport();
    end;
end;

procedure TfrmPembelian.RzBtnAddItemClick(Sender: TObject);
begin
    inherited;
    if frmAddItem = nil then
    begin
        Application.CreateForm(TfrmAddItem, frmAddItem);
        frmAddItem.vType := 'PO';
        frmAddItem.vPurchaseid := FDQueryHeaderpurchaseId.AsString;
        frmAddItem.Show;
    end;
end;

end.
