object FormMainProgram: TFormMainProgram
  Left = 0
  Top = 0
  Caption = 'FormMainProgram'
  ClientHeight = 558
  ClientWidth = 795
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
  object RibbonMainProgram: TRibbon
    Left = 0
    Top = 0
    Width = 795
    Height = 143
    ActionManager = ActionManager
    ApplicationMenu.CommandType = ctCommands
    ApplicationMenu.Menu = RibbonApplicationMenuBar
    Caption = 'DITTA-SERIA'
    ShowHelpButton = False
    Tabs = <
      item
        Caption = 'Hale'
        Page = pageHalls
      end
      item
        Caption = 'Zarz'#261'dzanie'
        Page = pageHelp
      end
      item
        Caption = 'Pomoc'
        Page = pageManagment
      end>
    TabIndex = 2
    DesignSize = (
      795
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonApplicationMenuBar: TRibbonApplicationMenuBar
      ActionManager = ActionManager
      OptionItems = <>
      RecentItems = <>
    end
    object pageHalls: TRibbonPage
      Left = 0
      Top = 50
      Width = 794
      Height = 93
      Caption = 'Hale'
      Index = 0
      object rgHalls: TRibbonGroup
        Left = 4
        Top = 3
        Width = 100
        Height = 86
        ActionManager = ActionManager
        Caption = 'Hale'
        GroupIndex = 0
      end
    end
    object pageHelp: TRibbonPage
      Left = 0
      Top = 50
      Width = 794
      Height = 93
      Caption = 'Pomoc'
      Index = 1
      object rgAdministration: TRibbonGroup
        Left = 4
        Top = 3
        Width = 100
        Height = 86
        ActionManager = ActionManager
        Caption = 'Administracja'
        GroupIndex = 0
      end
      object rgSettings: TRibbonGroup
        Left = 106
        Top = 3
        Width = 116
        Height = 86
        ActionManager = ActionManager
        Caption = 'Ustawienia'
        GroupIndex = 1
      end
    end
    object pageManagment: TRibbonPage
      Left = 0
      Top = 50
      Width = 794
      Height = 93
      Caption = 'Zarz'#261'dzanie'
      Index = 2
      object rgHelp: TRibbonGroup
        Left = 4
        Top = 3
        Width = 179
        Height = 86
        ActionManager = ActionManager
        Caption = 'Pomoc'
        GroupIndex = 0
      end
    end
  end
  object Button1: TButton
    Left = 312
    Top = 208
    Width = 155
    Height = 25
    Action = actAddUser
    TabOrder = 1
  end
  object Button2: TButton
    Left = 392
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object ActionList: TActionList
    Left = 72
    Top = 288
    object actAddUser: TAction
      Category = 'User'
      Caption = 'Dodaj U'#380'ytkownika'
      OnExecute = actAddUserExecute
    end
    object actCloseProgram: TAction
      Category = 'Program'
      Caption = 'Zamknij Program'
      OnExecute = actCloseProgramExecute
    end
    object actAboutProgram: TAction
      Category = 'Pomoc'
      Caption = 'O programie'
      OnExecute = actAboutProgramExecute
    end
    object actUserInstruction: TAction
      Category = 'Pomoc'
      Caption = 'Instrukcja u'#380'ytkownika'
      OnExecute = actUserInstructionExecute
    end
    object actHelpOnline: TAction
      Category = 'Pomoc'
      Caption = 'Pomoc Online'
      OnExecute = actHelpOnlineExecute
    end
    object actSettings: TAction
      Category = 'Ustawienia'
      Caption = 'Ustawienia'
      OnExecute = actSettingsExecute
    end
    object actLookChange: TAction
      Category = 'Ustawienia'
      Caption = 'Wygl'#261'd'
      OnExecute = actLookChangeExecute
    end
    object actUsers: TAction
      Category = 'Administracja'
      Caption = 'U'#380'ytkownicy'
      OnExecute = actUsersExecute
    end
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Caption = 'ActionClientItem0'
              end>
            Caption = 'ActionClientItem0'
          end>
        ActionBar = RibbonApplicationMenuBar
        AutoSize = False
      end
      item
        Items = <
          item
            Action = actAboutProgram
            Caption = '&O programie'
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actUserInstruction
            Caption = '&Instrukcja u'#380'ytkownika'
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actHelpOnline
            Caption = '&Pomoc Online'
            CommandProperties.ButtonSize = bsLarge
          end>
        ActionBar = rgHelp
      end
      item
        Items = <
          item
            Action = actSettings
            Caption = '&Ustawienia'
            CommandProperties.ButtonSize = bsLarge
          end
          item
            Action = actLookChange
            Caption = '&Wygl'#261'd'
            CommandProperties.ButtonSize = bsLarge
            CommandProperties.ButtonType = btDropDown
          end>
        ActionBar = rgSettings
      end>
    Left = 160
    Top = 288
    StyleName = 'Ribbon - Luna'
  end
  object ImageList: TImageList
    Left = 72
    Top = 352
  end
end
