unit frmMainProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, System.ImageList, Vcl.ImgList;

type
  TFormMainProgram = class(TForm)
    RibbonMainProgram: TRibbon;
    ActionList: TActionList;
    actAddUser: TAction;
    Button1: TButton;
    RibbonApplicationMenuBar: TRibbonApplicationMenuBar;
    actCloseProgram: TAction;
    pageHalls: TRibbonPage;
    pageManagment: TRibbonPage;
    pageHelp: TRibbonPage;
    rgAdministration: TRibbonGroup;
    rgSettings: TRibbonGroup;
    ActionManager: TActionManager;
    rgHalls: TRibbonGroup;
    ImageList: TImageList;
    actAboutProgram: TAction;
    actUserInstruction: TAction;
    actHelpOnline: TAction;
    actSettings: TAction;
    actLookChange: TAction;
    actUsers: TAction;
    Button2: TButton;
    procedure actAddUserExecute(Sender: TObject);
    procedure actCloseProgramExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actAboutProgramExecute(Sender: TObject);
    procedure actUserInstructionExecute(Sender: TObject);
    procedure actHelpOnlineExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actSettingsExecute(Sender: TObject);
    procedure actLookChangeExecute(Sender: TObject);
    procedure actUsersExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainProgram: TFormMainProgram;

implementation

uses
  frmUserDetails;
{$R *.dfm}

procedure TFormMainProgram.actAboutProgramExecute(Sender: TObject);
begin
  ShowMessage('AboutProgram');
end;

procedure TFormMainProgram.actAddUserExecute(Sender: TObject);
begin
  if FormUserDetails = nil then begin
    FormUserDetails := TFormUserDetails.Create(Application, 'Dodaj U퓓tkownika');
  end;

  FormUserDetails.ShowModal;
end;

procedure TFormMainProgram.actCloseProgramExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormMainProgram.actHelpOnlineExecute(Sender: TObject);
begin
  ShowMessage('Pomoc Online');
end;

procedure TFormMainProgram.Action1Execute(Sender: TObject);
begin
  ShowMessage('act1');
end;

procedure TFormMainProgram.actLookChangeExecute(Sender: TObject);
begin
  ShowMessage('Wygl퉐');
end;

procedure TFormMainProgram.actSettingsExecute(Sender: TObject);
begin
  ShowMessage('Ustawienia');
end;

procedure TFormMainProgram.actUserInstructionExecute(Sender: TObject);
begin
  ShowMessage('Instrukcja u퓓tkownika');
end;

procedure TFormMainProgram.actUsersExecute(Sender: TObject);
begin
  ShowMessage('U퓓tkownicy');
end;

procedure TFormMainProgram.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormMainProgram.FormDestroy(Sender: TObject);
begin
  FormMainProgram := nil;
end;

end.
