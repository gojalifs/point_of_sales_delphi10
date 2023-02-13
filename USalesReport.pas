unit USalesReport;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
    Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit, FireDAC.Stan.Intf,
    FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
    FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
    Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
    TfrmReportSales = class(TForm)
        RzPanel1: TRzPanel;
        RzPanel2: TRzPanel;
        RzPanel3: TRzPanel;
        RzBtnPrint: TRzBitBtn;
        RzBtnClose: TRzBitBtn;
        RzDateTimeFrom: TRzDateTimeEdit;
        RzDateTimeTo: TRzDateTimeEdit;
        RzLabel1: TRzLabel;
        RzLabel2: TRzLabel;
        frxReport1: TfrxReport;
        frxDBDataset1: TfrxDBDataset;
        DataSource1: TDataSource;
        FDQuReport: TFDQuery;
        procedure RzBtnCloseClick(Sender: TObject);

        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure RzBtnPrintClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmReportSales: TfrmReportSales;

implementation

{$R *.dfm}

procedure TfrmReportSales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    WindowState := wsMinimized;
    frmReportSales := Nil;
    Action := caFree;
end;

procedure TfrmReportSales.RzBtnCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmReportSales.RzBtnPrintClick(Sender: TObject);
var
    wPath: String;
begin
    wPath := ExtractFilePath(Application.ExeName);
    with FDQuReport do
    begin
        sql.Clear;
        sql.Add('select * from vsales where salesdate between :A and :B');
        Params[0].AsDateTime := RzDateTimeFrom.AsDateTime;
        Params[1].AsDateTime := RzDateTimeTo.AsDateTime;
        open;
    end;
    with frxReport1 do
    begin
        LoadFromFile(wPath + 'rptSalesReport.fr3');
        TfrxMemoView(frxReport1.FindComponent('MemoPeriode')).Text :=
          'Periode : ' + FormatDateTime('dd/mm/yyyy', RzDateTimeFrom.AsDateTime)
          + ' to ' + FormatDateTime('dd/mm/yyyy', RzDateTimeTo.AsDateTime);
          ShowReport();
    end;
end;

end.
