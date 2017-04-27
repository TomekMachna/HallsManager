unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cServiceUser;

type
  TFormLogin = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    edtUsername: TEdit;
    edtPass: TEdit;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure edtUsernameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPassKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

procedure TFormLogin.btnLoginClick(Sender: TObject);
var
  usernameTmp, passwordTmp : string;
  loginResultTmp : Integer;
  ServiceUser : TServiceUser;
begin
  usernameTmp := edtUsername.Text;
  passwordTmp := edtPass.Text;

  if usernameTmp.Length <= 0 then begin
    ShowMessage('Podaj nazwe usera');
    edtUsername.SetFocus;
    Exit;
  end;

  if passwordTmp.Length <= 0 then begin
    ShowMessage('Podaj has�o');
    edtPass.SetFocus;
    Exit;
  end;

  ServiceUser := TServiceUser.Create;

  loginResultTmp :=  ServiceUser.MakeLogin(usernameTmp, passwordTmp);

end;


procedure TFormLogin.edtPassKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    btnLogin.SetFocus;
  end;
end;

procedure TFormLogin.edtUsernameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    edtPass.SetFocus;
  end;

end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormLogin.FormDestroy(Sender: TObject);
begin
  FormLogin := nil;
end;

end.
