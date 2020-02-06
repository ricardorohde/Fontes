inherited frmInutilizacaoNFCe: TfrmInutilizacaoNFCe
  Caption = 'Inutilizacao de NFe / NFCe'
  ClientHeight = 219
  ClientWidth = 389
  ExplicitWidth = 395
  ExplicitHeight = 248
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 389
    Height = 170
    ExplicitWidth = 389
    ExplicitHeight = 170
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 22
      Height = 16
      Caption = 'Ano'
    end
    object Label2: TLabel
      Left = 135
      Top = 8
      Width = 41
      Height = 16
      Caption = 'Modelo'
    end
    object Label3: TLabel
      Left = 262
      Top = 8
      Width = 30
      Height = 16
      Caption = 'S'#233'rie'
    end
    object Label4: TLabel
      Left = 8
      Top = 60
      Width = 82
      Height = 16
      Caption = 'N'#250'mero Inicial'
    end
    object Label5: TLabel
      Left = 135
      Top = 60
      Width = 76
      Height = 16
      Caption = 'N'#250'mero Final'
    end
    object Label6: TLabel
      Left = 8
      Top = 112
      Width = 65
      Height = 16
      Caption = 'Justificativa'
    end
    object edAno: TEdit
      Left = 8
      Top = 30
      Width = 121
      Height = 24
      NumbersOnly = True
      TabOrder = 0
    end
    object edModelo: TEdit
      Left = 135
      Top = 30
      Width = 121
      Height = 24
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 1
      Text = '65'
    end
    object edSerie: TEdit
      Left = 262
      Top = 30
      Width = 121
      Height = 24
      NumbersOnly = True
      TabOrder = 2
    end
    object edNroInicial: TEdit
      Left = 8
      Top = 82
      Width = 121
      Height = 24
      NumbersOnly = True
      TabOrder = 3
    end
    object edNroFinal: TEdit
      Left = 135
      Top = 82
      Width = 121
      Height = 24
      NumbersOnly = True
      TabOrder = 4
    end
    object edJustificativa: TEdit
      Left = 8
      Top = 134
      Width = 375
      Height = 24
      TabOrder = 5
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 170
    Width = 389
    ExplicitTop = 170
    ExplicitWidth = 389
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 270
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btCancelaClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      MinButtonSizeState = bsLabel
    end
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 151
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirmar'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btConfirmaClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      MinButtonSizeState = bsLabel
    end
  end
end
