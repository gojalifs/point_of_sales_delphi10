program POS_FajarSidikPrasetio;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {frmMain},
  UMasterData in 'UMasterData.pas' {frmMasterData},
  UDM in 'UDM.pas' {DM: TDataModule},
  UBarang in 'UBarang.pas' {frmBarang},
  USupplier in 'USupplier.pas' {frmSupplier},
  UCustomer in 'UCustomer.pas' {frmCustomer},
  UUnit in 'UUnit.pas' {frmUnit},
  UTransaksiData in 'UTransaksiData.pas' {frmTransaksiData},
  UCreatePO in 'UCreatePO.pas' {frmCreatePurchaseOrder},
  UAddItem in 'UAddItem.pas' {frmAddItem},
  UPurchaseReport in 'UPurchaseReport.pas' {frmReportPurchase},
  UUsers in 'UUsers.pas' {frmUsers},
  ULogin in 'ULogin.pas' {FrmLogin},
  UPembelian in 'UPembelian.pas' {frmPembelian},
  USales in 'USales.pas' {frmSales},
  UCreateSO in 'UCreateSO.pas' {frmCreateSalesOrder},
  USalesReport in 'USalesReport.pas' {frmReportSales};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
