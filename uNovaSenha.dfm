inherited frmNovaSenha: TfrmNovaSenha
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Nova Senha'
  ClientHeight = 101
  ClientWidth = 249
  ExplicitWidth = 255
  ExplicitHeight = 130
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 43
    Width = 80
    Height = 13
    Caption = 'Informe a Senha'
  end
  inherited CoolBar1: TCoolBar
    Width = 249
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 249
      end>
    ExplicitWidth = 249
    inherited pnPadrao: TPanel
      Width = 249
      ExplicitWidth = 249
      inherited tBarPadrao: TToolBar
        Width = 249
        ExplicitWidth = 249
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Action = act_confirmar
        end
        object ToolButton2: TToolButton
          Left = 31
          Top = 0
          Action = act_cancelar
        end
      end
    end
  end
  object edNovaSenha: TEdit [2]
    Left = 24
    Top = 59
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 1
  end
  inherited ActionList1: TActionList
    Left = 112
    Top = 0
    inherited act_confirmar: TAction
      OnExecute = act_confirmarExecute
    end
    inherited act_cancelar: TAction
      OnExecute = act_cancelarExecute
    end
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 152
    Top = 0
  end
end
