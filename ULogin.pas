unit ULogin;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzEdit,
    Vcl.StdCtrls, Vcl.Mask, RzLabel, RzButton;

type
    TFrmLogin = class(TForm)
        RzPanel1: TRzPanel;
        RzPanel2: TRzPanel;
        RzLabel1: TRzLabel;
        RzLabel2: TRzLabel;
        RzEditUserName: TRzEdit;
        RzEditpassword: TRzMaskEdit;
        RzBtnLogin: TRzButton;
        RzPanel3: TRzPanel;
        procedure RzBtnLoginClick(Sender: TObject);
        procedure RzBitBtn1Click(Sender: TObject);
        procedure RzPanel3Click(Sender: TObject);

    private
        { Private declarations }
    public
        { Public declarations }
        NewString: integer;
    end;

var
    FrmLogin: TFrmLogin;
    query: string;

implementation

Uses Umain, UDM;

{$R *.dfm}

procedure TFrmLogin.RzBitBtn1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFrmLogin.RzBtnLoginClick(Sender: TObject);
var
    i: integer;
    s: string;

begin
    DM.FDQuGlobal.SQL.Add
      ('select * from vusers where iduser =:A and password =:B');
    DM.FDQuGlobal.Params[0].AsString := RzEditUserName.Text;
    DM.FDQuGlobal.Params[1].AsString := RzEditpassword.Text;
    DM.FDQuGlobal.Open();

    // check login status
    if DM.FDQuGlobal.RecordCount <> 0 then
    begin
        NewString := 1;

        frmMain.vUserName := DM.FDQuGlobal.FieldByName('idUser').AsString;
        frmMain.vUser := DM.FDQuGlobal.FieldByName('idUser').AsString;

        frmMain.RzStatusPane1.Caption := 'Welcome, ' + frmMain.vUserName;
        frmMain.Logout1.Caption := 'Logout';
        frmMain.isLoggedIn := True;

        frmMain.Logout1.Enabled := True;

        DM.FDQuGlobal.First;
        while not DM.FDQuGlobal.Eof do
        begin
            for i := 0 to frmMain.ActionList1.ActionCount - 1 do
            begin
                if frmMain.ActionList1.Actions[i]
                  .Name = DM.FDQuGlobal.FieldByName('formName').AsString then
                begin
                    if DM.FDQuGlobal.FieldByName('mark').AsBoolean = True then
                    begin
                        frmMain.ActionList1.Actions[i].Visible := True;
                    end;
                end;
            end;
            DM.FDQuGlobal.Next;
        end;

        Close;

    end
    else
    begin
        ShowMessage('Username atau Kata sandi salah!');

    end;

end;

procedure TFrmLogin.RzPanel3Click(Sender: TObject);
begin
    Application.Terminate;
end;

end.
