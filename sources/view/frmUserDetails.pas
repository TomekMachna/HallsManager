unit frmUserDetails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormUserDetails = class(TForm)
    btnSaveUser: TButton;
    btnCancel: TButton;
    ActionList: TActionList;
    actSaveUser: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    Bevel1: TBevel;
    lblFormUserDetails: TLabel;
    lblName: TLabel;
    Panel2: TPanel;
    edtName: TEdit;
    lblSureName: TLabel;
    edtSureName: TEdit;
    lblPhoneNumber: TLabel;
    edtPhoneNumber: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblIsAdmin: TLabel;
    Panel3: TPanel;
    chbIsAdminNo: TCheckBox;
    chbIsAdminYes: TCheckBox;
    procedure actSaveUserExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure chbIsAdminNoClick(Sender: TObject);
    procedure chbIsAdminYesClick(Sender: TObject);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSureNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPhoneNumberKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(aOwner : TComponent; pTitle : string); overload;
  end;

var
  FormUserDetails: TFormUserDetails;

implementation

{$R *.dfm}

procedure TFormUserDetails.actCancelExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormUserDetails.actSaveUserExecute(Sender: TObject);
begin
  ShowMessage('save');
end;

procedure TFormUserDetails.chbIsAdminNoClick(Sender: TObject);
begin
  chbIsAdminYes.Checked := NOT chbIsAdminNo.Checked;
end;

procedure TFormUserDetails.chbIsAdminYesClick(Sender: TObject);
begin
  chbIsAdminNo.Checked := Not chbIsAdminYes.Checked;
end;

constructor TFormUserDetails.Create(aOwner : TComponent; pTitle: string);
begin
  inherited Create(aOwner);
  Self.Caption := pTitle;
  lblFormUserDetails.Caption := pTitle;
end;

procedure TFormUserDetails.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    edtSureName.SetFocus;
  end;
end;

procedure TFormUserDetails.edtPhoneNumberKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    edtEmail.SetFocus;
  end;
end;

procedure TFormUserDetails.edtSureNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    edtPhoneNumber.SetFocus;
  end;
end;

procedure TFormUserDetails.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormUserDetails.FormDestroy(Sender: TObject);
begin
  FormUserDetails := nil;
end;

end.
