object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Logowanie'
  ClientHeight = 321
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 392
      Height = 39
      Align = alClient
      ExplicitLeft = 256
      ExplicitTop = -8
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
  end
  object edtUsername: TEdit
    Left = 100
    Top = 89
    Width = 200
    Height = 37
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 100
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    TextHint = 'User'
    OnKeyUp = edtUsernameKeyUp
  end
  object edtPass: TEdit
    Left = 100
    Top = 152
    Width = 200
    Height = 37
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 255
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
    TextHint = 'Has'#322'o'
    OnKeyUp = edtPassKeyUp
  end
  object btnLogin: TButton
    Left = 135
    Top = 232
    Width = 130
    Height = 40
    Caption = 'Zaloguj'
    TabOrder = 3
    OnClick = btnLoginClick
  end
end
