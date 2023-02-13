unit UMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
    Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ToolWin, System.Actions,
    Vcl.ActnList, RzButton, System.ImageList, Vcl.ImgList, RzStatus, RzPanel;

type
    TfrmMain = class(TForm)
        MainMenu1: TMainMenu;
        MasterData1: TMenuItem;
        Transaksi1: TMenuItem;
        Reporting1: TMenuItem;
        Barang1: TMenuItem;
        Supplier1: TMenuItem;
        Customer1: TMenuItem;
        Unit1: TMenuItem;
        Pembelian1: TMenuItem;
        Penjualan1: TMenuItem;
        ReportPenjualan1: TMenuItem;
        ReportPembelian1: TMenuItem;
        ToolBar1: TToolBar;
        ToolButton1: TToolButton;
        ToolButton2: TToolButton;
        ToolButton3: TToolButton;
        ToolButton4: TToolButton;
        ToolButton6: TToolButton;
        ToolButton7: TToolButton;
        ToolButton9: TToolButton;
        ToolButton10: TToolButton;
        ToolButton11: TToolButton;
        Image1: TImage;
        User1: TMenuItem;
        ActionList1: TActionList;
        Barang: TAction;
        Supplier: TAction;
        Customer: TAction;
        User: TAction;
        Units: TAction;
        Pembelian: TAction;
        Penjualan: TAction;
        ReportPembelian: TAction;
        ReportPenjualan: TAction;
        ToolButton5: TToolButton;
        ToolButton8: TToolButton;
        ImageList1: TImageList;
        RzStatusBar1: TRzStatusBar;
        RzStatusPane1: TRzStatusPane;
        RzClockStatus1: TRzClockStatus;
        RzStatusPane2: TRzStatusPane;
        Logout1: TMenuItem;
        procedure Barang1Click(Sender: TObject);
        procedure Supplier1Click(Sender: TObject);
        procedure Customer1Click(Sender: TObject);
        procedure Unit1Click(Sender: TObject);
        procedure Pembelian1Click(Sender: TObject);
        procedure ReportPembelian1Click(Sender: TObject);
        procedure User1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure Penjualan1Click(Sender: TObject);
        procedure Logout1Click(Sender: TObject);
        procedure ReportPenjualan1Click(Sender: TObject);

    private
        { Private declarations }
    public
        { Public declarations }
        vUser: string;
        vUserName: string;
        isLoggedIn: Boolean;
        formShowed: string;
        function getNumberSequencePO(sValue: String): String;
        function getNumberSequenceSO(sValue: String): String;

    end;

var
    frmMain: TfrmMain;
    iNew: integer;

implementation

Uses UDM, UBarang, UCustomer, USupplier, UUnit, UPembelian, UPenjualan,
    UPurchaseReport, USalesReport, UUsers, ULogin, Usales;
{$R *.dfm}

Function TfrmMain.getNumberSequenceSO(sValue: string): String;
begin
    /// ambil stored procedure
    DM.FDStoredProcPO.Close;
    DM.FDStoredProcPO.Prepare;
    DM.FDStoredProcPO.StoredProcName := 'POS.dbo.GetNumberSequence';
    DM.FDStoredProcPO.ParamByName('@Param').Value := sValue;
    DM.FDStoredProcPO.Open;

    Result := DM.FDStoredProcPO.Fields[0].AsString;
end;

Function TfrmMain.getNumberSequencePO(sValue: string): String;

begin
    /// ambil stored procedure
    DM.FDStoredProcPO.Close;
    DM.FDStoredProcPO.Prepare;
    DM.FDStoredProcPO.StoredProcName := 'POS.dbo.GetNumberSequence';
    DM.FDStoredProcPO.ParamByName('@Param').Value := sValue;
    DM.FDStoredProcPO.Open;

    Result := DM.FDStoredProcPO.Fields[0].AsString;
end;

procedure TfrmMain.Logout1Click(Sender: TObject);

var
    I: integer;
begin
    for I := 0 to ActionList1.ActionCount - 1 do
    begin
        ActionList1.Actions[I].Visible := False;
    end;
    isLoggedIn := False;
    if isLoggedIn = False then
    begin

        Logout1.Caption := 'Logged Out';
        Logout1.Enabled := False;

        RzStatusPane1.Caption := 'Logged Out, Please Login Again.';
        frmLogin := TFrmLogin.Create(self);

        frmLogin.ShowModal;
    end
    else
    begin

        // RzBtnLogout.Caption := 'Log Out';
    end;

end;

procedure TfrmMain.Barang1Click(Sender: TObject);
begin
    if frmBarang = nil then
    begin
        Application.CreateForm(TfrmBarang, frmBarang);
        frmBarang.Show;
    end;
end;

procedure TfrmMain.Customer1Click(Sender: TObject);
begin
    if frmCustomer = nil then
    begin
        Application.CreateForm(TfrmCustomer, frmCustomer);
        frmCustomer.Show;
    end;
end;

procedure TfrmMain.FormShow(Sender: TObject);

var
    I: integer;
begin
    for I := 0 to ActionList1.ActionCount - 1 do
    begin
        ActionList1.Actions[I].Visible := False;
    end;
    frmLogin := TFrmLogin.Create(self);
    frmLogin.ShowModal;
    iNew := frmLogin.NewString;
    if iNew = 0 then
    begin
        Application.Terminate;
    end;
end;

procedure TfrmMain.Pembelian1Click(Sender: TObject);
begin
    if frmPembelian = nil then
    begin
        formShowed := 'purchase';
        Application.CreateForm(TfrmPembelian, frmPembelian);
        frmPembelian.Show;
    end;
end;

procedure TfrmMain.Penjualan1Click(Sender: TObject);
begin
    if frmPenjualan = nil then
    begin
        formShowed := 'sales';
        Application.CreateForm(TfrmSales, frmSales);
        frmSales.Show;
    end;

end;

procedure TfrmMain.ReportPembelian1Click(Sender: TObject);
begin
    begin
        if frmReportPurchase = nil then
        begin
            Application.CreateForm(TfrmReportPurchase, frmReportPurchase);
            frmReportPurchase.Show;
        end;
    end;
end;

procedure TfrmMain.ReportPenjualan1Click(Sender: TObject);
begin
    begin
        if frmReportPurchase = nil then
        begin
            Application.CreateForm(TfrmReportSales, frmReportSales);
            frmReportSales.Show;
        end;
    end;
end;

procedure TfrmMain.Supplier1Click(Sender: TObject);
begin
    if frmSupplier = nil then
    begin
        Application.CreateForm(TfrmSupplier, frmSupplier);
        frmSupplier.Show;
    end;
end;

procedure TfrmMain.Unit1Click(Sender: TObject);
begin
    if frmUnit = nil then
    begin
        Application.CreateForm(TfrmUnit, frmUnit);
        frmUnit.Show;
    end;
end;

procedure TfrmMain.User1Click(Sender: TObject);
begin
    if frmUsers = nil then
    begin
        Application.CreateForm(TfrmUsers, frmUsers);
        frmUsers.Show;
    end;
end;

end.
