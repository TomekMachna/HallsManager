program HallsManager;

uses
  Vcl.Forms,
  frmMainProgram in '..\view\frmMainProgram.pas' {FormMainProgram},
  cUser in '..\model\cUser.pas',
  cServiceUser in '..\service\cServiceUser.pas',
  frmUserDetails in '..\view\frmUserDetails.pas' {FormUserDetails},
  frmLogin in '..\view\frmLogin.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMainProgram, FormMainProgram);
  Application.CreateForm(TFormUserDetails, FormUserDetails);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
