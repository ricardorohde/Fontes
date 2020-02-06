inherited frmLogAparelho: TfrmLogAparelho
  Caption = 'Log Aparelho SAT'
  ClientHeight = 462
  ClientWidth = 749
  ExplicitWidth = 765
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Top = 424
    Width = 749
    Align = alBottom
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 743
      end>
    inherited pnPadrao: TPanel
      Width = 743
      ExplicitWidth = 743
      inherited tBarPadrao: TToolBar
        Width = 743
        ButtonHeight = 30
        ButtonWidth = 93
        ShowCaptions = True
        ExplicitWidth = 697
        object btnCopiar: TToolButton
          Left = 0
          Top = 0
          Cursor = crHandPoint
          Caption = 'Copiar Tudo'
          ImageIndex = 27
          OnClick = btnCopiarClick
        end
        object btnSair: TToolButton
          Left = 93
          Top = 0
          Cursor = crHandPoint
          Caption = 'Sair'
          ImageIndex = 18
          OnClick = btnSairClick
        end
      end
    end
  end
  object mmoLog: TMemo [1]
    Left = 0
    Top = 0
    Width = 749
    Height = 424
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitWidth = 731
  end
end
