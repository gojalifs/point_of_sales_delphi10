unit UUsers;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMasterData, Data.DB,
    FireDAC.Stan.Intf,
    FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
    FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
    FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, SMDBGrid,
    RzPanel, RzDBNav, Vcl.ExtCtrls, RzButton;

type
    TfrmUsers = class(TfrmMasterData)
        SMDBGridHeader: TSMDBGrid;
        FDQueryDetail: TFDQuery;
        DsDetail: TDataSource;
        RzBtnAccess: TRzBitBtn;
        FDStoredProc1: TFDStoredProc;
        FDQuery1idUser: TWideStringField;
        FDQuery1username: TWideStringField;
        FDQuery1password: TWideStringField;
        procedure RzBtnAccessClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FDQuery1AfterScroll(DataSet: TDataSet);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmUsers: TfrmUsers;

implementation

Uses UDM;
{$R *.dfm}

procedure TfrmUsers.FDQuery1AfterScroll(DataSet: TDataSet);
begin
    inherited;
    with FDQueryDetail do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM usersform where iduser =:iduser');
        Params[0].AsString := FDQuery1idUser.AsString;
        Active := True;
    end;
end;

procedure TfrmUsers.FormCreate(Sender: TObject);
begin
    inherited;
    with FDQuery1 do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM [user]');
        Active := True;
    end;

    with FDQueryDetail do
    begin
        sql.Clear;
        sql.Add('SELECT * FROM usersform');
        Active := True;
    end;
end;

procedure TfrmUsers.RzBtnAccessClick(Sender: TObject);
begin
    inherited;
    // get users
    with FDStoredProc1 do
    begin
        Close;
        Prepare;
        StoredProcName := 'POS.dbo.insertFormToUser';
        ParamByName('@userId').AsString := FDQuery1idUser.AsString;
        ExecProc;
        Sleep(20);
    end;
    FDQueryDetail.Refresh;
end;

end.
