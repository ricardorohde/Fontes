inherited frmServidor: TfrmServidor
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informe o Servidor'
  ClientHeight = 93
  ClientWidth = 271
  ExplicitWidth = 277
  ExplicitHeight = 122
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 43
    Width = 40
    Height = 13
    Caption = 'Servidor'
    FocusControl = edServidor
  end
  inherited CoolBar1: TCoolBar
    Width = 271
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 522
      end>
    ExplicitWidth = 195
    inherited pnPadrao: TPanel
      Left = 3
      ExplicitLeft = 3
      inherited tBarPadrao: TToolBar
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
  object edServidor: TcxTextEdit [2]
    Left = 8
    Top = 59
    TabOrder = 1
    Width = 179
  end
  inherited ActionList1: TActionList
    Left = 96
    Top = 0
    inherited act_confirmar: TAction
      OnExecute = act_confirmarExecute
    end
    inherited act_cancelar: TAction
      OnExecute = act_cancelarExecute
    end
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 144
    Top = 0
  end
end
