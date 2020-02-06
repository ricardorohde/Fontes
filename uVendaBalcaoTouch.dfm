object frmVendaBalcaoTouch: TfrmVendaBalcaoTouch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'AGENTE'
  ClientHeight = 671
  ClientWidth = 1020
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1010
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lbObservacoes: TLabel
    Left = 210
    Top = 360
    Width = 102
    Height = 19
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 574
    Top = 619
    Width = 72
    Height = 13
    Alignment = taCenter
    Caption = 'Inserir Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object grKeyboard3: TAdvGroupBox
    Left = 65
    Top = 441
    Width = 528
    Height = 199
    BorderStyle = bsNone
    Transparent = False
    TabOrder = 0
    object btKb3_LIMPAR: TAdvGlowButton
      Left = 6
      Top = 158
      Width = 68
      Height = 40
      Caption = 'LIMPAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btLimparQuantidadeClick
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
    end
    object btKb3_X: TAdvGlowButton
      Left = 56
      Top = 120
      Width = 50
      Height = 38
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btKb3_XClick
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
    end
    object btKb3_Z: TAdvGlowButton
      Left = 6
      Top = 120
      Width = 50
      Height = 38
      Caption = 'Z'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btKb3_ZClick
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
    end
    object btKb3_C: TAdvGlowButton
      Left = 106
      Top = 120
      Width = 50
      Height = 38
      Caption = 'C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btKb3_CClick
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
    end
    object btKb3_A: TAdvGlowButton
      Left = 6
      Top = 82
      Width = 60
      Height = 38
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btKb3_AClick
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
    end
    object btKb3_S: TAdvGlowButton
      Left = 66
      Top = 82
      Width = 50
      Height = 38
      Caption = 'S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btKb3_SClick
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
    end
    object btKb3_D: TAdvGlowButton
      Left = 116
      Top = 82
      Width = 50
      Height = 38
      Caption = 'D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btKb3_DClick
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
    end
    object btKb3_Q: TAdvGlowButton
      Left = 6
      Top = 44
      Width = 50
      Height = 38
      Caption = 'Q'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btKb3_QClick
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
    end
    object btKb3_W: TAdvGlowButton
      Left = 56
      Top = 44
      Width = 50
      Height = 38
      Caption = 'W'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btKb3_WClick
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
    end
    object btKb3_E: TAdvGlowButton
      Left = 106
      Top = 44
      Width = 50
      Height = 38
      Caption = 'E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btKb3_EClick
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
    end
    object btKb3_BackSpace: TAdvGlowButton
      Left = 406
      Top = 4
      Width = 110
      Height = 40
      Caption = #11013' BACKSPACE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btKb3_BackSpaceClick
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
    end
    object btKb3_R: TAdvGlowButton
      Left = 156
      Top = 44
      Width = 50
      Height = 38
      Caption = 'R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btKb3_RClick
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
    end
    object btKb3_T: TAdvGlowButton
      Left = 206
      Top = 44
      Width = 50
      Height = 38
      Caption = 'T'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btKb3_TClick
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
    end
    object btKb3_Y: TAdvGlowButton
      Left = 256
      Top = 44
      Width = 50
      Height = 38
      Caption = 'Y'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btKb3_YClick
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
    end
    object btKb3_U: TAdvGlowButton
      Left = 306
      Top = 44
      Width = 50
      Height = 38
      Caption = 'U'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = btKb3_UClick
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
    end
    object btKb3_I: TAdvGlowButton
      Left = 356
      Top = 44
      Width = 50
      Height = 38
      Caption = 'I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = btKb3_IClick
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
    end
    object btKb3_O: TAdvGlowButton
      Left = 406
      Top = 44
      Width = 50
      Height = 38
      Caption = 'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = btKb3_OClick
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
    end
    object btKb3_P: TAdvGlowButton
      Left = 456
      Top = 44
      Width = 60
      Height = 38
      Caption = 'P'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = btKb3_PClick
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
    end
    object btKb3_F: TAdvGlowButton
      Left = 166
      Top = 82
      Width = 50
      Height = 38
      Caption = 'F'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = btKb3_FClick
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
    end
    object btKb3_G: TAdvGlowButton
      Left = 216
      Top = 82
      Width = 50
      Height = 38
      Caption = 'G'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = btKb3_GClick
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
    end
    object btKb3_H: TAdvGlowButton
      Left = 266
      Top = 82
      Width = 50
      Height = 38
      Caption = 'H'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 20
      OnClick = btKb3_HClick
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
    end
    object btKb3_J: TAdvGlowButton
      Left = 316
      Top = 82
      Width = 50
      Height = 38
      Caption = 'J'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 21
      OnClick = btKb3_JClick
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
    end
    object btKb3_K: TAdvGlowButton
      Left = 366
      Top = 82
      Width = 50
      Height = 38
      Caption = 'K'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = btKb3_KClick
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
    end
    object btKb3_L: TAdvGlowButton
      Left = 416
      Top = 82
      Width = 50
      Height = 38
      Caption = 'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 23
      OnClick = btKb3_LClick
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
    end
    object btKb3_CEDILH: TAdvGlowButton
      Left = 466
      Top = 82
      Width = 50
      Height = 38
      Caption = #199
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 24
      OnClick = btKb3_CEDILHClick
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
    end
    object btKb3_V: TAdvGlowButton
      Left = 156
      Top = 120
      Width = 50
      Height = 38
      Caption = 'V'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 25
      OnClick = btKb3_VClick
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
    end
    object btKb3_B: TAdvGlowButton
      Left = 206
      Top = 120
      Width = 50
      Height = 38
      Caption = 'B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 26
      OnClick = btKb3_BClick
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
    end
    object btKb3_N: TAdvGlowButton
      Left = 256
      Top = 120
      Width = 50
      Height = 38
      Caption = 'N'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 27
      OnClick = btKb3_NClick
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
    end
    object btKb3_M: TAdvGlowButton
      Left = 306
      Top = 120
      Width = 50
      Height = 38
      Caption = 'M'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 28
      OnClick = btKb3_MClick
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
    end
    object btKb3_VIRG: TAdvGlowButton
      Left = 356
      Top = 120
      Width = 50
      Height = 38
      Caption = ','
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 29
      OnClick = btKb3_VIRGClick
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
    end
    object btKb3_PONTO: TAdvGlowButton
      Left = 406
      Top = 120
      Width = 50
      Height = 38
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 30
      OnClick = btKb3_PONTOClick
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
    end
    object btKb3_PONTVIRG: TAdvGlowButton
      Left = 456
      Top = 120
      Width = 60
      Height = 38
      Caption = ';'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 31
      OnClick = btKb3_PONTVIRGClick
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
    end
    object btKb3_ESPACO: TAdvGlowButton
      Left = 74
      Top = 158
      Width = 332
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 32
      OnClick = btKb3_ESPACOClick
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
    end
    object btKb1_0: TAdvGlowButton
      Left = 6
      Top = 4
      Width = 40
      Height = 40
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 33
      OnClick = btKb1_0Click
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
    end
    object btKb1_2: TAdvGlowButton
      Left = 86
      Top = 4
      Width = 40
      Height = 40
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 34
      OnClick = btKb1_2Click
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
    end
    object btKb1_1: TAdvGlowButton
      Left = 46
      Top = 4
      Width = 40
      Height = 40
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 35
      OnClick = btKb1_1Click
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
    end
    object btKb1_3: TAdvGlowButton
      Left = 126
      Top = 4
      Width = 40
      Height = 40
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 36
      Visible = False
      OnClick = btKb1_3Click
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
    end
    object btKb1_4: TAdvGlowButton
      Left = 166
      Top = 4
      Width = 40
      Height = 40
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 37
      OnClick = btKb1_4Click
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
    end
    object btKb1_5: TAdvGlowButton
      Left = 206
      Top = 4
      Width = 40
      Height = 40
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 38
      OnClick = btKb1_5Click
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
    end
    object btKb1_6: TAdvGlowButton
      Left = 246
      Top = 4
      Width = 40
      Height = 40
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 39
      OnClick = btKb1_6Click
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
    end
    object btKb1_7: TAdvGlowButton
      Left = 286
      Top = 4
      Width = 40
      Height = 40
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 40
      OnClick = btKb1_7Click
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
    end
    object btKb1_8: TAdvGlowButton
      Left = 326
      Top = 4
      Width = 40
      Height = 40
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 41
      OnClick = btKb1_8Click
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
    end
    object btKb1_9: TAdvGlowButton
      Left = 366
      Top = 4
      Width = 40
      Height = 40
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 42
      OnClick = btKb1_9Click
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
    end
    object btKb3_Enter: TAdvGlowButton
      Left = 406
      Top = 158
      Width = 110
      Height = 40
      Caption = 'ENTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 43
      OnClick = btKb3_EnterClick
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
    end
  end
  object pnTopo: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 1
    object Label7: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 152
      Height = 19
      Align = alClient
      Alignment = taCenter
      Caption = 'MENU CATEGORIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pn4Rodape: TPanel
    Left = 0
    Top = 646
    Width = 1020
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 2
    object lbProdutosEncontrados: TLabel
      AlignWithMargins = True
      Left = 25
      Top = 3
      Width = 761
      Height = 19
      Margins.Left = 25
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total de 0 produtos localizados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object pnListaProdutos: TPanel
    Left = 496
    Top = 155
    Width = 505
    Height = 491
    Align = alRight
    Caption = 'pnListaProdutos'
    TabOrder = 3
    object Label5: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 158
      Width = 151
      Height = 16
      Margins.Top = 1
      Margins.Bottom = 1
      Align = alTop
      Alignment = taCenter
      Caption = 'RELA'#199#195'O DE PRODUTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGridItens: TcxGrid
      Tag = 1
      AlignWithMargins = True
      Left = 4
      Top = 178
      Width = 497
      Height = 179
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGridItensDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        DataController.DataSource = dsVendaItem
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnPopup.MultiSelect = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = cxGrid2DBTableView1StylesGetContentStyle
        object cxGridItensDBTableView1nro_item: TcxGridDBColumn
          Caption = 'Item'
          DataBinding.FieldName = 'ordem_item'
          Options.Editing = False
          Options.Filtering = False
          Options.ShowEditButtons = isebNever
          Options.Moving = False
          Options.Sorting = False
          Width = 44
        end
        object cxGridItensDBTableView1descricao_item: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_item'
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 190
        end
        object cxGridItensDBTableView1qtdevenda: TcxGridDBColumn
          DataBinding.FieldName = 'qtdevenda'
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 69
        end
        object cxGridItensDBTableView1vlrvenda: TcxGridDBColumn
          DataBinding.FieldName = 'vlrvenda'
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 82
        end
        object cxGridItensDBTableView1valor_total: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total'
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 85
        end
        object cxGridItensDBTableView1Desconto: TcxGridDBColumn
          DataBinding.FieldName = 'desconto'
          Visible = False
        end
        object cxGridItensDBTableView1Column1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList24
          Properties.OnButtonClick = cxGrid2DBTableView1Column1PropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Options.AutoWidthSizable = False
          Width = 32
        end
      end
      object cxGridItensDBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DetailKeyFieldNames = 'nro_item'
        DataController.KeyFieldNames = 'id_venda'
        DataController.MasterKeyFieldNames = 'nro_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.CardExpanding = True
        OptionsView.CardAutoWidth = True
        OptionsView.CardBorderWidth = 1
        OptionsView.CardIndent = 0
        OptionsView.CardWidth = 715
        OptionsView.EmptyRows = False
        OptionsView.SeparatorWidth = 0
        object cxGridItensDBCardView1observacao: TcxGridDBCardViewRow
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'observacao'
          Options.Filtering = False
          Position.BeginsLayer = True
        end
      end
      object cxGridItensDBCardView2: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DetailKeyFieldNames = 'id_vendaitem'
        DataController.MasterKeyFieldNames = 'nro_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardIndent = 7
      end
      object cxGridItensDBCardView3: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DetailKeyFieldNames = 'id_vendaitem'
        DataController.MasterKeyFieldNames = 'nro_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsCustomize.CardExpanding = True
        OptionsView.CaptionSeparator = #0
        OptionsView.CardAutoWidth = True
        OptionsView.CardBorderWidth = 1
        OptionsView.CardIndent = 1
        OptionsView.CardWidth = 500
        OptionsView.EmptyRows = False
        object cxGridItensDBCardView3descricao: TcxGridDBCardViewRow
          DataBinding.FieldName = 'descricao'
          Position.BeginsLayer = True
          Styles.Content = frmMenu.cxDesconto
          IsCaptionAssigned = True
        end
      end
      object cxGridItensDBCardView4: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsVendaItemOpcional
        DataController.DetailKeyFieldNames = 'id_vendaitem'
        DataController.MasterKeyFieldNames = 'nro_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsCustomize.CardExpanding = True
        OptionsView.CaptionSeparator = #0
        OptionsView.CardAutoWidth = True
        OptionsView.CardBorderWidth = 1
        OptionsView.CardIndent = 0
        OptionsView.CardWidth = 297
        OptionsView.CategoryIndent = 15
        OptionsView.EmptyRows = False
        OptionsView.SeparatorWidth = 0
        object cxGridItensDBCardView4descricao: TcxGridDBCardViewRow
          DataBinding.FieldName = 'descricao'
          Position.BeginsLayer = True
          Styles.Content = frmMenu.cxDesconto
          IsCaptionAssigned = True
        end
      end
      object cxGridItensLevel1: TcxGridLevel
        GridView = cxGridItensDBTableView1
        object cxGridItensLevel2: TcxGridLevel
          GridView = cxGridItensDBCardView4
        end
      end
    end
    object pnlAcoes: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 391
      Width = 497
      Height = 96
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 5263440
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        493
        92)
      object Label12: TLabel
        Left = 433
        Top = 79
        Width = 18
        Height = 13
        Alignment = taCenter
        Anchors = [akTop, akRight]
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 449
      end
      object Label16: TLabel
        Left = 339
        Top = 79
        Width = 66
        Height = 13
        Alignment = taCenter
        Caption = 'Fechar Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label3: TLabel
        Left = 248
        Top = 79
        Width = 75
        Height = 13
        Alignment = taCenter
        Caption = 'Cancelar Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label9: TLabel
        Left = 171
        Top = 79
        Width = 63
        Height = 13
        Alignment = taCenter
        Caption = 'Salvar venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 4
        Top = 79
        Width = 67
        Height = 13
        Alignment = taCenter
        Caption = 'Inserir Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 86
        Top = 79
        Width = 65
        Height = 13
        Alignment = taCenter
        Caption = 'Buscar Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object btnSair: TAdvGlowButton
        Left = 406
        Top = 7
        Width = 66
        Height = 66
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = frmMenu.ImgList64B
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 0
        OnClick = btnSairClick
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTopAdjusted
        ExplicitLeft = 418
      end
      object btFecharMesa: TAdvGlowButton
        AlignWithMargins = True
        Left = 336
        Top = 8
        Width = 66
        Height = 66
        Margins.Top = 4
        Margins.Right = 1
        Margins.Bottom = 2
        Action = acFecharVenda
        ImageIndex = 10
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
        Transparent = True
        TabOrder = 1
        Appearance.BorderColor = clGray
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
      end
      object btCancelarMesa: TAdvGlowButton
        AlignWithMargins = True
        Left = 252
        Top = 7
        Width = 66
        Height = 66
        Margins.Top = 4
        Margins.Right = 1
        Margins.Bottom = 2
        Action = acCancelarVenda
        ImageIndex = 18
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
        Transparent = True
        TabOrder = 2
        Appearance.BorderColor = clGray
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
      end
      object btSalva: TAdvGlowButton
        AlignWithMargins = True
        Left = 169
        Top = 7
        Width = 66
        Height = 66
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 1
        Margins.Bottom = 2
        Action = acVendaemespera
        ImageIndex = 24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
        Transparent = True
        TabOrder = 3
        Appearance.BorderColor = clGray
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
      end
      object btInserirItem: TAdvGlowButton
        AlignWithMargins = True
        Left = 4
        Top = 7
        Width = 66
        Height = 66
        Margins.Top = 4
        Margins.Right = 1
        Margins.Bottom = 2
        Action = acPesquisarItem
        ImageIndex = 25
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
        Transparent = True
        TabOrder = 4
        Appearance.BorderColor = clGray
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
      end
      object AdvGlowButton3: TAdvGlowButton
        AlignWithMargins = True
        Left = 85
        Top = 7
        Width = 66
        Height = 66
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 1
        Margins.Bottom = 2
        ImageIndex = 11
        Images = frmMenu.ImgList64A
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
        Transparent = True
        TabOrder = 5
        OnClick = AdvGlowButton3Click
        Appearance.BorderColor = clGray
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
      end
    end
    object pnDadosProduto: TAdvGroupBox
      Left = 1
      Top = 360
      Width = 503
      Height = 28
      BorderColor = clNavy
      BorderStyle = bsNone
      Transparent = False
      Align = alBottom
      Color = 15790320
      Constraints.MaxWidth = 550
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Tag = 1
        Left = 249
        Top = 3
        Width = 150
        Height = 23
        Caption = 'Total da Venda:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 170
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Tag = 1
        Left = 405
        Top = 3
        Width = 81
        Height = 23
        AutoSize = True
        DataField = 'total_venda'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnNumerico: TPanel
      Left = 1
      Top = 1
      Width = 503
      Height = 99
      Align = alTop
      TabOrder = 3
      DesignSize = (
        503
        99)
      object Label15: TLabel
        Left = 426
        Top = 81
        Width = 74
        Height = 13
        Alignment = taCenter
        Anchors = [akTop, akRight]
        Caption = 'Gravar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object grKeyborad2: TAdvGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 495
        Height = 95
        BorderColor = clWindowFrame
        BorderStyle = bsNone
        Align = alTop
        TabOrder = 0
        object btKb2_0: TAdvGlowButton
          Left = 211
          Top = 46
          Width = 65
          Height = 40
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btKb2_0Click
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
        end
        object btKb2_2: TAdvGlowButton
          Left = 71
          Top = 1
          Width = 65
          Height = 40
          Caption = '2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btKb2_2Click
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
        end
        object btKb2_1: TAdvGlowButton
          Left = 1
          Top = 1
          Width = 65
          Height = 40
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btKb2_1Click
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
        end
        object btKb2_3: TAdvGlowButton
          Left = 141
          Top = 1
          Width = 65
          Height = 40
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btKb2_3Click
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
        end
        object btKb2_4: TAdvGlowButton
          Left = 211
          Top = 1
          Width = 65
          Height = 40
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btKb2_4Click
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
        end
        object btKb2_5: TAdvGlowButton
          Left = 282
          Top = 1
          Width = 65
          Height = 40
          Caption = '5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btKb2_5Click
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
        end
        object btKb2_6: TAdvGlowButton
          Left = 353
          Top = 1
          Width = 65
          Height = 40
          Caption = '6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btKb2_6Click
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
        end
        object btKb2_7: TAdvGlowButton
          Left = 1
          Top = 46
          Width = 65
          Height = 40
          Caption = '7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btKb2_7Click
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
        end
        object btKb2_8: TAdvGlowButton
          Left = 71
          Top = 46
          Width = 65
          Height = 40
          Caption = '8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btKb2_8Click
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
        end
        object btKb2_9: TAdvGlowButton
          Left = 141
          Top = 46
          Width = 65
          Height = 40
          Caption = '9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btKb2_9Click
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
        end
        object btKb2_virg: TAdvGlowButton
          Left = 353
          Top = 47
          Width = 65
          Height = 40
          Caption = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = btKb2_virgClick
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
        end
        object btLimparQuantidade: TAdvGlowButton
          Left = 283
          Top = 46
          Width = 65
          Height = 40
          Caption = 'LIMPAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = btLimparQuantidadeClick
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
        end
      end
      object btInserir: TAdvGlowButton
        Left = 431
        Top = 15
        Width = 64
        Height = 66
        Hint = 'Inserir item'
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          38000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000019
          C54944415478DAEC9D6B8C24D775DF7FE7DEAA7ECD6B7796DC5D2EC92525F121
          890C635BA225C28E6539B605055680D8489C40B690870D01E617C78010584880
          048621044800C3462038861340B69200B190040A62C6882808899E604049B4C9
          15C9A5482EB9E43E6666E7D1DDF5BAF7E4435575575557CFCCCEEE52915B0514
          BAFA5D75FEF7FCCFEBDE5342CBF69EDFFC77DCF9819FC7C511180041044C6851
          E5AE649C7C70B4137D60BC13BD3B89B3932E712B66D0ED6C9D7F5D1D01620D22
          02461063106BD8DE8EF8BD8FDCCEC73EFC6E9224E5FB69EB74423EF33F9EE5E3
          7FFC22773D78078393B7898BD32408CC6EA76B2FF757BBCF0E56BA5FEA74ED17
          45E4359F7954151440319D3EAF3FF927FCDFDFFEFB33BF1D1CE6046C6071997B
          6CE3D5CD5FBF7A61EBC3BB1BC395244A51054440215C5F818D2D7C2648182062
          402407C358FC28214B8F814F48D3ECFB0B8040C9D2043636196D2CB31377F1C3
          312827C1BF43441EEB74ED3F5A39DEDFBDEDAED53F3D766AE577AC355F75993F
          F0B7F705408C2056EEDEB8B0F12F5F7FEE8DBFBBB7B1278A6002833106AC9900
          6003C1190B568AD78BF7AC0153ECDFAF9B48712D16B1421008CE4AFE9E1A504F
          1AA55CBD10AD6C5CD8FC3BCBEBFDBF7DE7FD27FFD3FA99D57FA2CA852300A018
          6B4986D9CFBDF2CD57FEE0CACB574EA382096D7132F9677215281E8AE3E2EBC5
          67BE779B35E6BACF41BDE2ABD731F783D36B2F8F05C516A0EC6D0CE53B57BFFB
          F76EBFE7F807EFF92B677EB5DB35FFFDBA00308161BC33FAF8B92F3EFB6F7637
          F66CD0B1C5089682D7AA92AE61F1FFC5E69C231AEDE63C7C3DA0052161B7BF3F
          6E5AD9A538D0A92850C55803DE73E9FC95D3C3ADD17F7DE75F7BE7E32690DF3F
          340059627FF9DC979EFBF4DED55D093A0160204BF37F097AB3D2D6EA9949CB7B
          6FDD1604862B9B3B3CFEA9FFC9EE28CA35E110DB30CAF8E5BFF1108FFFE2FB18
          276E7F04D4976A5FD186CAF3E2A26D68D9DB18DA735F7EE9D3EB413002FEE840
          001EF8E827DFBF353CFDE9BDAB1B62039BFF990960E305C822B8EB47C1BB76B5
          3C507315BCC77B7FCB00509F5FFFB7AFF5D8CC56080E697A76F6123E343418A3
          B3E7E73CEA1B148BCF1FBDE6C735308A6B55C506C2DE954D9113F77CFA818FFD
          B3179EFFCC6F7D6D2E002B67EF1B0477FFF4EF6EBEBCBD648D14FF6420D943A3
          21A847A22DE8AE4D052ED455705F0072E1DF4A009C07F59E6E7F404F06047238
          154C4C82B506EF66CFCF7B87AAAF5070493B8D91DFB00BE56E0DEC6D8C974EBE
          EDC3BFBB72F63FFEE4EEAB2F8E26745FFDA3533FF10F7FE5DAA5F45121ABA893
          C0F66B48771D19DC015B17EA44A88D3F9FEB49E4A3A204E096EE137AF0D7B5EF
          777E537B3287760ABF5F5527A3BFBA0B29D7AEFA474FFDD4C77FA5666FCB83A5
          3BEE5DF6CB0F3F9E0C770A27A7F8C3F1163ADA85DE71E8AEA2718CEE5CCEDD4C
          D55C05B5B8584AC3D42A7FBC57DC5B01807347303E5200E0667ECF4D40ADF09C
          FA56E14FE5D1004021D9DBC11FFFA1C797CEDCBB3C03C0DABB7EEA4351143E20
          A58151050F8631F6B6BB402C20D81377634D54D88159C3B39FEFF79668404921
          4730FEFB6A80F7D32B9BD130EA5AA17340C01325DD07D61EFA990FCDD8007BFC
          C18FC451844865F46B861CBB1BD4C1D5CD5CBCC78E41EF4ED81DE53181613202
          0EF27ABCF738E770CEDDBA98895CCBAE7BFC4B6EA3DACECF39C17BADD8BBAAB0
          290CF47CC1979F1551B2714CF7B6873E027C6E02406FFDF601FD333FA27182E0
          A7A35804B73B42E35DC812104BB6B9812C5506BAAF06275504B41D802CBBE500
          F823FEBEF74A96CD01407D6B20A6BEE29636045E9349F9F92C86C19DEFE9AD9F
          1C449B9747B90698EE59A57B16F59528B712150F96F35C8F18B2ED3D7CE6EB54
          53F308642E155555FC566D5E38F2EFCF3B3FEF720A2A3C894A1CC0DCD15E37D4
          75E0547A7763BA67817301804BFCC92CCE56A574B36AA90641BD21DD8E400475
          521820731DC156AEBEFA9651903B3200ED14443DAA3E0CEDA0B3EE6AC16259E2
          565DE66F9F00A0AA2BDE39C90D6D894025E7E31CEA5DF19A01D300A1B4FEFB18
          602928287B0B00F0CE1FC90BF2EA712EC3B9BA0664AED02AA11664CD05005F4B
          4D540128344AD4EBEAC406A83240B59EDB1040A54E49220D7A2A40D0C34462F9
          0566594696DD3A005043E6DC911282EAB538BF0600594E4D520E7F3F0F005FCB
          8FCD505105145506250016B4DBCA5955176112E74B65AF84E40D1B3073FDCAC4
          45BCE536C0B9EB96BF48E9A5B545C252BC26953484AFC4040D21EFF7BCB423D0
          056C509CA79905A042459343995A7699939EDD8783A65E90BFB536C01DD50694
          36CACFD8801A283ECF69D56282A6B0E77943538FC8001254CEBB2244AD2479EA
          87531AD20976F84A243C4166760C7AD5C206DC4A00FC9101F05E0B1BA0ED1424
          B4185A5AE8883900543C29541AC9B8FD46714598A52D989C4C3512E46023DCC2
          B137D706C81101107462A31A005853D780927664CEA8D74686A046D1F5CC7140
          33BCAE8D7E69C85F1B36408A9328BDA079E01563D3BF1536A0E0EB235488FC24
          5BAB0DCDA0C80555E3003F2BFCB6E04B1B5A528B5E4B009A0889161E90CEB051
          FBD83EC00694E7E0DB39F6E65250AE01CAF5596191DC0B72999BA120E7B4E686
          B6A79EFD6C46A08DAE1AB20C666A6D7A688B55D80339A41B9A8FA2FC026F3100
          371009E7366A1600F5CD54846F8F845B7D7F9DCD1AE85C0AAA96180FA222EA46
          678ED9A827E3668DDCCD06E0E8B9A05243DB35609229987841321F8C9AEA5763
          296DB3012D3180C8AC5027995299D5067F989258CEAFB7DA06B81BCE05CDDA00
          A531BABD4E857918C1D70231DF6684AB023E8C27443DB0500F2E9B3BFF478CB0
          3B4EC9B214EFE59602E09D639C38465EB11C0E8C51E24952D70A80CB3C4952D4
          3FBC2F02DE52037C8B97D3F02A6B8F75CA6EB8A1D4B2A00726D88A5485A8A259
          8688429A40303BD9220843BE75D1F3A1BD3DC2DEF22DB303EA61B0D4E7271F08
          8834C01C12EB28F1BCF36C97CCD70339630C5114F3FC9B3146C90B51D93EF140
          53F8AD1AD0A0205545BD62AC16AAD632FFA74A3F335E91E24711E16A1FF7C665
          08BB4827A8B9AB6128FCC5CE0A5FFCD6157EF63D066BFB387FF36D81F34A2714
          FEE9DFBA8DC09843FB1422B0338CB8B6B33721582382D5986F9CBBCAD75FB174
          35423AEBF8BD618D465A053F0780B234AB5523ECBD328E339606B665F4CF998C
          D5A0268D227CBF47786C89F4EA4574B082841D10834EA6315A3EFB7487ED9DD7
          F8F1772D736CB5974F71DC2F7C98A78DFB48D601AF6C5DA9D3E62134414C31A9
          B8F0D8F68631DF3CBFCB7F7E4A89864AFFCC095CE2C0A5F5B4CC5CBAA9D755CA
          E3719C4EECE0842B46518AB5965EC7B4DAD9BA63DD96B210B2AD6B04C7D6E89C
          0EF13BDB683CCA6BC945E46CC49062F9DCB35DBEF246C2A975C15A41678424D3
          DC138DC7B6D799556D26D17E43F5AB6E61F3F38DCCE8C6B5980B97416D87C1D9
          35BCE9E1B6772B96F900A1378CB20051E21845E9E46283E928577687316848AF
          1B14DFD5F6D1A3323B148BE02DDBDC427A3DCCD271A49CBC8B4C846745306278
          03C36B5B456DC11830763A89D758086C3E19D6D8DCA64CF6307FB4F9FB185BA6
          328BAC99CB13F82ECBF7C971FE9E3A9FD7B85DF179F5F5991D7E9ADDB428C1E9
          FCFD348ED1F14E858AB5DDCB516D19103A11FEEE382B3C466DB8A1851AEDECC5
          64CEB3D40B8B89CF5A19FDDA1207CC82A151848BA2E26B5500CA3D17BC2D6750
          5701B0E56380D8000903B085D0C310824EF158BE9ECFD6C055849EA690950014
          C7DEA199435D7E9CE7175CE1529682F7D3E78590332D3395954CE83CE137032F
          05919CEF8751C6304AF358029DEF868AC0689C92668EE57E8730280C996A7B4A
          429A465B686394590F8ACA1C22CD47E58436643A59CA7BC438503BAD365535B3
          597498D46B7D654497C276486D325673F2964EAFB3169036339C4D23ABAD3428
          409A7986A39424739553D539A9089D72559A38AE6511836E40BF17608C99D645
          A54947DA78AD612F6A698B0220638AEC6C8996C9CD67A99DC5C0C6951AE3C0DB
          220A6D9B87A4153A71B9466419F89C7EB4D490C9E86FECFB95195B339A6DB6A4
          F07424776C4671C638CEF07E9AC59F1309CFBA1765EE7B384E89928C412FA4DB
          C9FD6AD543C40935CD68D4104C991AD7A937617CBED8C194A3779A99D522909B
          5094F72DFEB74EED40297C974196A1D9D4064C76E7A7801D545C9FEB62CE8E78
          55651C3BC67146E6FC54499559E06628A8852E4472DF7A7718338E52FADD906E
          C7624CC98CDAD02A9D2DCA94D9D56A291957B1099AD7124DA3A8513951CD245F
          F6646D5EC8F38DC960A5507DC1FB2E852C45B3B4A8AABB2938EAA645A44309FE
          00AA917C5AE338718CE37452EF1099E732EB7ED9D0460C30B1A342E694DD51C2
          3816BA9D805EC762ADA99C4F5BEEBA91D49B8021D3A246A909B49545A9CCC6C8
          C005D3E277A915D5FA6C39FACB91DFF0822686B76A6C5B0B292DA5D6C6682F03
          BF28498913475644F7022DB9A0CA4487CAA50507A61B5ABCD1CC29D928611C09
          9DD0D2ED5A3A411EC424A9234DE74C0D94392F4845DDAA9E92B5B9906DE17E86
          1DA4DB855E1FFA03E80DA0D3C9051E8D218EF23D89D124990ADEB98A316ECC60
          D0F660A97E9C9F602730743A165525C93C719211A76E923B92B9759336963814
          00F34B30E574F3284E89E20C630C42C823F7DDC6DBCE2CE71435495A4D2F5ACB
          E455C1F33AE39168DDDB5105525453606F7AEE71B14B8357C3625F9289E197AA
          2B4C6501A14CE31431E57333F9AC50ACF4348257E1BB177779E6A50DBC288A9F
          F816D216CCE97EA17B6B32EE88F97711BC07A35D7EEBD71EE3F15F7C98E57EC8
          5FC66D384EF9FDCFFD399FFCBD2F137B87B134B4E4FA735B370C80AA4216F0DB
          9FF8713EF1D147F8CBBC2DF5437EE3977E181B06FCFAA79E448D9BE48EF6AF26
          EADCE737BC785753E5C147EEE5E3BFF0308BB2FDEACF3FCC23EF7D079AB8F6F9
          A033FBFCCDD4FCCDEBDD5110C3A38F3DC06ACF2C0C00835078F4B1FBF3695537
          B83EF7C6284881B0C3DA6D6B2CDAB67C620D3A1D341B21D7DD05E0D05E90ECFF
          B208188B0476E10070138F899BA4012287AB5ACC84CA2CE876C8B5B987A7A039
          00C8BE25A44546E0A66C413385DC2AF9B911AC9FAD4A2DD27668D638088032B4
          AD09F33000C8620330210E39C0D6EA75DA00D98FEF2BAF95C9B0C596FE21CC65
          63605732C3FB00D092976E3EF7FC8082E6B1C07E3513E17A0190D9190B908FFE
          85A6A00A00CD7A88346712B6A72AE6BBA172100002F89BE20B7FDF3350EB20AC
          8022DA90DB8114D4267CA96B86909710171A806A4ABB8582666690CC05405A00
          68D09134D4AEFCC585B60195BAC23CBEAF4E7A96594310D45D29691FE933AF49
          65FAFA0F8C706D10D66AEBDAEE59B67B4186BC5AA4B354D4FA581A9A1F50D074
          D122EDEB2A6A1A21B532DAAC0D10A9737F3348AB3E6A59E25B60008C4C6521FB
          075DD36E03F38CB0B4784133A3BE71BCF01464A6536B749E216E396E35C21363
          D2360BB929FC4AE7D84505C148E109D258555AB58FDAE2BBEA1C1BD01CD9D208
          36660C8F822FE7E514B38E1762E4DB69B798AA2CAA3300E570E98B760A9A0B40
          B52459BC678A399D8C01BF28433FBF662375A3AAF347FAAC1DA0C50D35550A92
          7657AB6AF521D78012005D1000C414DA6EA6E998DA626CA9CC266F684763E96F
          3B05D534A2C2FD4D2D28F341934953BA201A20850698C2063647BDEEA305520B
          6C83198B5E45B1B1BAA5399B2CDF2CF9B2C1E82DEF13FDBDDDC24A45B09C21A2
          87A8544A2D4F34F5828CCCF776669E573EABA506ECE6339C176253D0D569F05A
          A59DD20ED60232A97B97BE5503CC5403E6793D33F3824A1B90E500B04000D0AF
          C88C8AB04D9D866A2C5482600EF282E6F0BFB46880182005760A301661F3A0C7
          0F3929A16907643F2FA8C508CB3C37B4786E6C4E417E275F42B410F277F9A033
          66BAD641F669DA244D1ADA37106BE37FD37E8C14A33E05DD060D168481B27CD0
          89C99D10D183FB29351BA1CCAC13AE7A41ADDECF3E14A409F85DF0E18268408A
          6A36BF18735032AEA90152AE5A6CF2BEB19595EED5FAA7CFA7654BC50BF27B8B
          03804BF3EEBC550A42A7CBA5AA4B5ABDABB4F62FDCCFA225824E0030061B189C
          6FA418D211A4C30284691C20837530E134102303B707BEB3301A806640A7D082
          1C14461BF5057EDE43D887A05F3478CA6D800D029C35530028EF1051FE1892AF
          42BFF2327AE50508BAB53F97077E06964EE4C88AE427E387F90AC5850020C953
          11652EC81888B6D10B5FCBE536D1940439F636B8FDA19CA60B0AD266BFA0C93A
          DAB033152A0A4BA790C119B0DDDCF5128178276F17505D6FA50E5C046E4142E1
          AC00A06A03822E72FA47A0BB3A4D45BBA430D8E5E02ED74E172B38A9F48A9068
          04DD4111A5557B3A044583DDC2389BA051863345838C11640B928C33F114806A
          4A5AC29C9A279DB18A55F852AF344A9234521122301A222BEB796F1F4A55F1F9
          A267B55300B2AC60A9A9CBAADE413A46D3C5D0009138BFE646714ACBC620130D
          C840B4E2B0E48B1A49E289531A00A2684616FBC0A72609FA93D266B0BA86E9F7
          72644BA1275D323A9540ACD080284293C548458816F7D0A924E3A4D32538731A
          3A4B850724A0297E342C1A2CE65E4F3714329FFAC28A4BCE2D3ED9531F0F7BBD
          70C59B802CCD30A2D03F86F6BAF5FC507F19467185D7246F1110A768B2208198
          4FF3BE43A5115645832EBA746CEAEDA8E619536F611CE19DE7F8B125C24EC0E6
          1BDF1DE2933D26A16BB47DD5479B5B61BFBF72FAEE3B79F33BAF9021B950E3AC
          11059BA211D394FBD42B44199A2E8A1754345DAA5290F764DB7B33F71390C21B
          3DBED4E5C1471FE4C5BF780D8D37B788B7AF9614E4810D86AF9EF72A67D7EE3D
          C37ADFF0FC33AF3076820D1AABCADB76E7214AD1744102B12CCBAF59A468C034
          0DAE6AAD8C55F09963A96BF8899FFD215EE99CC0EBEB30BC701ED8007C09C035
          BDFAED6F8AE8079D0A9DD3A7F96010F395739B5C1B3A6CB88FF08D419D429477
          A45A8C4838CB5DEEA29D81B62682049F79BABD0EEF7BF41E2EAD9E62BC1363AC
          C75FFDD637816B2500007BBA79EE293F7A6DC3D81F3BB11345EC5C1EF3C85D7D
          9EB9AA6C6D8D109BB7A869CD07792051343BAA17B4DFD40D39E26F347FEF6652
          9016932204BCD4BBF1E4B727413365EDC40AB7AD0F387FCDD13B9161C30E7EEF
          C2866E3CF714B057CD868E419F4BBEF3F9AFF2377FE9E78224E6D26ECA85E72E
          72EABEB3DCFE8EDB79F3CD6D76460E029BDFB8B8E2DB7A2710175D498EE6D755
          328B4537272DA6B91CB6D03F090C2B2DCFA83406B9A91AE026372D52914951D2
          390FA9676D39E01DF79E647B37E1C20BAFB3F6F67B5832820421F1B9CF7F15F4
          B95CE653001CF0FAF0E9CF3F317EE92B8FF5CEBEFF84B582739E57CF5FE2E4C3
          F7F3633FFA76D8DDE6DBAF0D7963D7D56E17E8BD4296615C7AE0786C2E9BCA6F
          E661C186881DE4818C4FC18F519722657AE3C0BA8701D329022141C9A37BD1AC
          DE74EF10E59383952D9DDCC2A46C55638CE1F47A97BF7AEF1ACBB7AFF38D17AE
          71E1C50B84788C114C77C0E8FCFFD9183EFDF92780D70B99D7166A6FE1D26F5C
          FAA3DF7CE2AE4FFCB78F8ACDBB26DAC070792BE6CF5E75DCB73CE0A13B1C77AE
          65BC115B46DEB09D0D304BAB68FF3491EBD6D62C1463B29ED52EDE37D5FB40D8
          10C23558BA073A2720D982E1CB105FCB935CE8C1132E4C88844B303809A607F1
          1588B7F06932B91167B50D94560640ADEB6463A068ADD54FD17AD3C6D8A55582
          F515D6ACA11B08277AC2F163035E366BBC783EC55D1963ADC91792DA1017EF70
          E98F3FF9042EFD06B0350FF075E0AFAFFDF43FF88DEEFBFEF1FBB79E3987EFF6
          E0CCDDE8FA09FC680C172FD0BD72815E32245C1A609797192CF7585902093B18
          6BF31E4B02D608D6E4C746046B64F25EC7426884D0423F341C5FEAF2F63B8E71
          62ADCFC64EC40B17AF71653766942AA93F9844422B9C580A79E8CE3556FB212F
          BDB9CDAB1B63B622473CE9A9A1954CB14EFAFF693192F3CEF45AB949AC4EBFE7
          3D9A65A8CB902C652F12C6C30C371E918C63A2C11AC9A97BE1E41D7966FFCA25
          B87411AB8E133FFC30D197FFD5D7B7FEEC0FFF35F0056073B622966FD780A7B6
          FFD7BFFF0FFD38382E677FE14192FCDEC242DEC08AD09079656F6B07BD741515
          837607D05BC9BB58D9A0BDAAD636F3BA7C0C2CBD7EC0A9B53D96FB9661E4B8BC
          9D302A9B9C1E66198235743A86B5C10E811576C68E61944192B536CD6EEF7A4B
          7BA3BE32AF9FC4F91E47483A069FE597D7EB4377151B483E4B47A7B428CB4B6C
          3FF93BDF197DE90F3F0B3C55C8987900F8829F9E1CFFEF3F58320F6F7E4CDEFB
          6BEF2218CCF2A43148D9C1B61342CF40B718DEFB015011BC168FC680C1B33D8C
          D81D1B7C71EBD7B0035E0FE7C1E49AE589E234FF6BAF74ADE2BA32D3D67FB68B
          E1018F4A5E7A2D674188CD6D8D2B3B3E9A7AEB5425AF012CF5499FFEB7CFC57F
          FEB9CF004F16B2AD29735B15DD013BC0A65E7E6E9BCD6797E59E474E73FA7E4B
          92C1CE16B27B0DC6C3DC101953F4730BF3C74A32EF2000A472D337EF95C479E2
          CC93649ECC15BC7FC8929F9237D0CB9C923A25F35A6F2F7AA34EA9EAB4FFDCA4
          FB62214B1BC0F20AAC1E87D575182CC19B4F27FEC97FFE357DF10B9F059E005E
          009219C59DE76801DBC065B62F5ED667FECB48861797E4F4FD6BD865233B3B30
          DCCD4F428AA67A653BE11B59B477887B121F28A4FD5EAB34A6BD6E0A529DB646
          2EF7D2130C3B70EC24DC7127F80DA75FF8D477FD9FFE8B27D87AF54F8A91FF12
          7987BBEB1E0C16B81D7827F05E968EBFCFDCF78147E4D8C367C4AF2EE13B8209
          A1BB94A3DEEB1F6C031A33AF15DA1786CC7BFEBD02C0FB8A0D8821897277190F
          36550DF786BAF9CC45FFFC93DF66B8F5F582EFCF01574A97F34642C41E700A78
          007837701FDDE5BB65E98E93F4D656241C8404A1AD15F667FE415AFF4D9BA771
          B333DABAEFBF1D10A0545E2B6BBC6591C5A54EB33825DEDED5E11B9789F72E00
          2F02CF02CF039780E8A6C41D0D208E03270B404E002BC5EB8BD6B5C91502DE2D
          126B9780CB858F1F1DF6478E3ADE4C9EECA653EC9559AA0BB315B90E92624F8F
          92F3F87F0300892FE43BE35D06480000000049454E44AE426082}
        Transparent = True
        TabOrder = 1
        OnClick = btInserirClick
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
        Layout = blGlyphTop
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 100
      Width = 503
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clWindowFrame
      ParentBackground = False
      TabOrder = 4
      DesignSize = (
        503
        57)
      object lbQuantidade: TLabel
        Left = 184
        Top = 3
        Width = 82
        Height = 16
        Alignment = taCenter
        Caption = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbValorUnitario: TLabel
        Left = 288
        Top = 3
        Width = 109
        Height = 16
        Alignment = taCenter
        Caption = 'VALOR UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 427
        Top = 28
        Width = 58
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_total'
        DataSource = dsBuscaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 445
        Top = 3
        Width = 40
        Height = 16
        Alignment = taRightJustify
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edQuantidade: TcxDBCurrencyEdit
        Left = 184
        Top = 25
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'quantidade'
        DataBinding.DataSource = dsBuscaItem
        ParentFont = False
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.000'
        Properties.EditFormat = '0.000'
        Properties.ValidationOptions = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnClick = edQuantidadeClick
        Width = 89
      end
      object edValor: TcxDBCurrencyEdit
        Left = 288
        Top = 25
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'valor_unit'
        DataBinding.DataSource = dsBuscaItem
        ParentFont = False
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '0.00'
        Properties.EditFormat = '0.00'
        Properties.ValidationOptions = []
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnClick = edValorClick
        Width = 113
      end
      object pnCodProduto: TPanel
        Left = 0
        Top = 0
        Width = 121
        Height = 57
        Align = alLeft
        BevelOuter = bvNone
        Color = clWindowFrame
        ParentBackground = False
        TabOrder = 2
        object Label17: TLabel
          Tag = 1
          Left = 4
          Top = 3
          Width = 93
          Height = 16
          Caption = 'COD. PRODUTO'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object edCodProduto: TcxButtonEdit
          Left = 4
          Top = 25
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisarItem
              Default = True
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.ClickKey = 0
          Properties.Images = frmMenu.ImgList16
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnExit = edCodProdutoExit
          OnKeyDown = edCodProdutoKeyDown
          Width = 100
        end
      end
    end
  end
  object pnCategoria: TPanel
    Left = 0
    Top = 25
    Width = 1020
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnCategoria'
    TabOrder = 4
    object DBCtrlGridCategoria: TDBCtrlGrid
      Left = 59
      Top = 0
      Width = 902
      Height = 105
      Align = alClient
      ColCount = 10
      DataSource = dsCategoria
      PanelBorder = gbNone
      PanelHeight = 105
      PanelWidth = 88
      TabOrder = 2
      RowCount = 1
      SelectedColor = 12691076
      Touch.InteractiveGestures = []
      OnClick = DBCtrlGridCategoriaClick
      OnPaintPanel = DBCtrlGridCategoriaPaintPanel
      object imgCategoria: TImage
        Left = 0
        Top = 0
        Width = 88
        Height = 105
        Align = alClient
        Center = True
        Proportional = True
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 120
        ExplicitHeight = 54
      end
      object lbCategoria: TcxDBLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = dsCategoria
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taBottomJustify
        Properties.LabelStyle = cxlsRaised
        Properties.ShadowedColor = clBtnShadow
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = DBCtrlGridCategoriaClick
        Height = 95
        Width = 78
        AnchorX = 44
        AnchorY = 100
      end
    end
    object btPagCategoriaAnt: TDBAdvGlowButton
      Left = 19
      Top = 0
      Width = 40
      Height = 105
      Align = alLeft
      ImageIndex = 34
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btPagCategoriaAntClick
      Appearance.BorderColor = clNavy
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
      AutoDisable = False
      ConfirmAction = False
      DBButtonType = dbCustom
      DisableControl = []
    end
    object btPagCategoriaProx: TDBAdvGlowButton
      Left = 961
      Top = 0
      Width = 40
      Height = 105
      Align = alRight
      ImageIndex = 35
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btPagCategoriaProxClick
      Appearance.BorderColor = clNavy
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
      AutoDisable = False
      ConfirmAction = False
      DBButtonType = dbCustom
      DisableControl = []
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 19
      Height = 105
      Align = alLeft
      BevelOuter = bvNone
      Color = clWindowFrame
      ParentBackground = False
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 1001
      Top = 0
      Width = 19
      Height = 105
      Align = alRight
      BevelOuter = bvNone
      Color = clWindowFrame
      ParentBackground = False
      TabOrder = 4
    end
  end
  object pnProdutos: TPanel
    Left = 19
    Top = 155
    Width = 477
    Height = 491
    Align = alClient
    Caption = 'pnProdutos'
    TabOrder = 5
    object DBCtrlGridProduto: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 475
      Height = 426
      Align = alClient
      ColCount = 4
      DataSource = dsBuscaItem
      PanelHeight = 60
      PanelWidth = 114
      TabOrder = 0
      RowCount = 7
      SelectedColor = 12691076
      OnClick = DBCtrlGridProdutoClick
      OnPaintPanel = DBCtrlGridProdutoPaintPanel
      object imgProduto: TImage
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 64
        Height = 56
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Anchors = [akLeft]
        Center = True
        Proportional = True
        OnClick = DBCtrlGridProdutoClick
        ExplicitHeight = 51
      end
      object lbDescProduto: TcxDBLabel
        Left = 68
        Top = 0
        Align = alClient
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = dsBuscaItem
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.LabelStyle = cxlsRaised
        Properties.ShadowedColor = clBtnShadow
        Properties.WordWrap = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = DBCtrlGridProdutoClick
        OnDblClick = btInserirClick
        Height = 60
        Width = 46
        AnchorX = 91
        AnchorY = 30
      end
    end
    object pnNavegProdutos: TPanel
      Left = 1
      Top = 427
      Width = 475
      Height = 63
      Align = alBottom
      TabOrder = 1
      StyleElements = []
      object btPagÇProdutoProx: TDBAdvGlowButton
        Left = 442
        Top = 1
        Width = 32
        Height = 61
        Align = alRight
        ImageIndex = 35
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btPagÇProdutoProxClick
        Appearance.BorderColor = clNavy
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
        AutoDisable = False
        ConfirmAction = False
        DBButtonType = dbCustom
        DisableControl = []
      end
      object btPagProdutoAnt: TDBAdvGlowButton
        Left = 1
        Top = 1
        Width = 32
        Height = 61
        Align = alLeft
        ImageIndex = 34
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btPagProdutoAntClick
        Appearance.BorderColor = clNavy
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
        AutoDisable = False
        ConfirmAction = False
        DBButtonType = dbCustom
        DisableControl = []
      end
      object pnControlesOcultos: TPanel
        Left = 33
        Top = 1
        Width = 409
        Height = 61
        Align = alClient
        TabOrder = 2
        DesignSize = (
          409
          61)
        object Label6: TLabel
          Left = 201
          Top = 27
          Width = 122
          Height = 18
          Anchors = [akTop, akRight]
          Caption = 'Painel de senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 330
          Top = 25
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'nro_venda'
          DataBinding.DataSource = dsVenda
          ParentFont = False
          Properties.SpinButtons.Visible = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 72
        end
        object AdvGlowButton1: TAdvGlowButton
          AlignWithMargins = True
          Left = 101
          Top = 5
          Width = 95
          Height = 52
          Margins.Left = 0
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 1
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = AdvGlowButton1Click
          Appearance.BorderColor = clNavy
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
          Layout = blGlyphTop
          MinButtonSizeState = bsLabel
        end
        object AdvGlowButton2: TAdvGlowButton
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 95
          Height = 52
          Margins.Left = 0
          Caption = 'Opcionais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 28
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = AdvGlowButton2Click
          Appearance.BorderColor = clNavy
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
          Layout = blGlyphTop
          MinButtonSizeState = bsLabel
        end
      end
    end
  end
  object pn1Esquerda: TPanel
    Left = 0
    Top = 155
    Width = 19
    Height = 491
    Align = alLeft
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 6
  end
  object pn2Direita: TPanel
    Left = 1001
    Top = 155
    Width = 19
    Height = 491
    Align = alRight
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 7
  end
  object pn3Topo2: TPanel
    Left = 0
    Top = 130
    Width = 1020
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 8
    DesignSize = (
      1020
      25)
    object DBText6: TDBText
      AlignWithMargins = True
      Left = 664
      Top = 3
      Width = 481
      Height = 19
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'descricao'
      DataSource = dsBuscaItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText3: TDBText
      AlignWithMargins = True
      Left = 847
      Top = 3
      Width = 148
      Height = 19
      Margins.Right = 25
      Align = alRight
      Alignment = taRightJustify
      DataField = 'cod_ref'
      DataSource = dsBuscaItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 4
      ExplicitHeight = 25
    end
    object Label1: TLabel
      Left = 354
      Top = 6
      Width = 151
      Height = 16
      Caption = 'RELA'#199#195'O DE PRODUTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnMeio: TPanel
    Left = 496
    Top = 155
    Width = 0
    Height = 491
    Align = alRight
    BevelOuter = bvNone
    Color = clWindowFrame
    ParentBackground = False
    TabOrder = 9
  end
  object qrVenda: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO venda'
      
        '  (ven_001, ven_004, emp_001, ven_002, cli_001, sit_001, ven_023' +
        ', b_taxa_entrega,'
      
        '   usu_001_1, dat_001_1, ven_009, ven_024, ven_008, id_caixa_abe' +
        'rtura, ven_027, cpf_cliente, '
      '   terminal_abertura, ven_029, nome_cliente, id_vendedor)'
      'VALUES'
      
        '  (:ven_001, LOCALTIMESTAMP, :emp_001, :venda_orcamento, :id_cli' +
        'ente, :sit_001, '#39'N'#39', :b_taxa_entrega,'
      
        '   :usu_001_1, :data_cadastro, :total_venda, :tipo_venda, :acres' +
        'cimo, :id_caixa_abertura, :observacao, :cpf_cliente,'
      '   :terminal_abertura, :nro_venda, :nome_cliente, :id_vendedor)')
    SQLDelete.Strings = (
      'DELETE FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE venda'
      'SET'
      
        '  ven_002 = :venda_orcamento, cli_001 = :id_cliente, sit_001 = :' +
        'sit_001, usu_001_1 = :usu_001_1, '
      
        '  dat_001_1 = :data_cadastro, ven_009 = :total_venda, ven_024 = ' +
        ':tipo_venda, ven_007 = :desconto,'
      
        '  ven_008= :acrescimo, id_caixa_abertura = :id_caixa_abertura, v' +
        'en_027 = :observacao,'
      
        '  cpf_cliente =:cpf_cliente, b_taxa_entrega = :b_taxa_entrega, t' +
        'erminal_abertura = :terminal_abertura,'
      
        '  ven_029 = :nro_venda, nome_cliente = :nome_cliente, id_vendedo' +
        'r = :id_vendedor'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ven_001, emp_001, ven_002, cli_001, sit_001, usu_001_1, d' +
        'at_001_1, ven_009, ven_024 FROM venda'
      'WHERE'
      '  ven_001 = :ven_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001, '
      'v.emp_001, '
      'v.cli_001 as id_cliente,'
      'v.dat_001_1 data_cadastro, '
      'v.ven_024 as tipo_venda, '
      'v.ven_002 as venda_orcamento,'
      'coalesce(v.ven_007,0.00) as desconto,'
      'coalesce(v.ven_008, 0.00) as acrescimo,'
      'coalesce(v.ven_009, 0.00) as total_venda,'
      
        'coalesce(case when v.ven_009=0.00 then 0.00 else v.ven_007/v.ven' +
        '_009/0.01  end,0.00) as desconto_percent,'
      'v.sit_001,'
      'v.usu_001_1,'
      'cast(fn_situacoes(v.sit_001) as varchar(100)) as status_desc,'
      'v.id_caixa_abertura,'
      'v.cpf_cliente,'
      'v.ven_027 as observacao,'
      'v.b_taxa_entrega,'
      
        'cast(coalesce(v.nome_cliente, c.cli_002) as varchar(90)) as nome' +
        '_cliente,'
      'terminal_abertura,'
      'ven_029 as nro_venda,'
      'v.id_vendedor'
      'from venda v'
      
        'left join clientes c on c.cli_001=v.cli_001 and c.emp_001=v.emp_' +
        '001'
      'where v.ven_001=:id_venda and v.emp_001=:id_empresa')
    AfterOpen = qrVendaAfterOpen
    AfterClose = qrVendaAfterClose
    Left = 304
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrVendadata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
    end
    object qrVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object qrVendavenda_orcamento: TIntegerField
      FieldName = 'venda_orcamento'
    end
    object qrVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendausu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendastatus_desc: TWideStringField
      FieldName = 'status_desc'
      ReadOnly = True
      Size = 100
    end
    object qrVendatotal_venda: TFloatField
      FieldName = 'total_venda'
      currency = True
    end
    object qrVendatotal_itens: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_itens'
      currency = True
      Calculated = True
    end
    object qrVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
      currency = True
    end
    object qrVendadesconto_percent: TFloatField
      FieldName = 'desconto_percent'
      DisplayFormat = '##0.00%'
    end
    object qrVendadesconto: TFloatField
      FieldName = 'desconto'
      currency = True
    end
    object qrVendaid_caixa_abertura: TIntegerField
      FieldName = 'id_caixa_abertura'
    end
    object qrVendaobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
    end
    object qrVendab_taxa_entrega: TBooleanField
      FieldName = 'b_taxa_entrega'
    end
    object qrVendaterminal_abertura: TWideStringField
      FieldName = 'terminal_abertura'
      Size = 100
    end
    object qrVendanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      Size = 80
    end
    object qrVendanro_venda: TIntegerField
      FieldName = 'nro_venda'
    end
    object qrVendaid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    OnDataChange = dsVendaDataChange
    Left = 368
    Top = 176
  end
  object qrBuscaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_001 as id_material, '
      'm.mat_003 as descricao,'
      'm.mat_003 as descricao_old, '
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')  as varchar(100)) a' +
        's descricao_p,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39')  as varchar(100)) a' +
        's descricao_m,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39')  as varchar(100)) a' +
        's descricao_g,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  as varchar(100)) ' +
        'as descricao_gg,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')  as varchar(100' +
        ')) as descricao_extra,'
      'u.uni_003 as unidade , '
      'm.tamanho_padrao,'
      'm.b_venda_tamanho,'
      'm.valor_tam_p,'
      'm.valor_tam_m,'
      'm.valor_tam_g,'
      'm.valor_tam_gg,'
      'm.valor_tam_extra,'
      'mat_004 as cod_ref,'
      '0.00 as quantidade,'
      'coalesce(m.mat_021, 0) as cod_impressora,'
      'coalesce(g.usu_002,  default_garcom.usu_002) as nome_garcom,'
      'case when m.b_venda_tamanho then'
      '  case m.tamanho_padrao'
      '    when '#39'P'#39' then m.valor_tam_p'
      '    when '#39'M'#39' then m.valor_tam_m'
      '    when '#39'G'#39' then m.valor_tam_g'
      '    when '#39'GG'#39' then m.valor_tam_gg'
      '    when '#39'E'#39' then m.valor_tam_extra'
      '    else m.mat_008'
      '   end '
      'else'
      '  m.mat_008'
      'end as valor_unit,'
      'm.mat_008 as valor_unit_old,  '
      'coalesce(ui.ite_001, 0) as ultimo_item,'
      'coalesce(ui.id_garcom, default_garcom.usu_001) as id_garcom,'
      'm.b_peso_balanca,'
      'm.cat_001 as id_categoria,'
      'm.b_exige_alterar_preco_venda,'
      'coalesce(m.tara_balanca, 0.0) as tara_balanca,'
      'm.arquivo_img'
      'from materiais m'
      
        'join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_00' +
        '1'
      'join desc_tamanho_material dm on dm.id_empresa=m.emp_001'
      
        'left join (select gar_001 as id_garcom, ite_001, ite_013 from ve' +
        'ndaitem where ven_001=:id_venda and emp_001=:emp order by ite_00' +
        '1 desc limit 1) ui on true'
      'left join usuarios g on g.usu_001=ui.id_garcom '
      
        'left join (select usu_001 , usu_002 from usuarios where b_funcao' +
        '_garcom and sit_001=4 order by 1  limit 1 ) default_garcom on tr' +
        'ue'
      'where  m.emp_001=:id_empresa and m.sit_001=4')
    AfterOpen = qrBuscaItemAfterOpen
    AfterScroll = qrBuscaItemAfterScroll
    OnCalcFields = qrBuscaItemCalcFields
    Left = 304
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrBuscaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrBuscaItemdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrBuscaItemunidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrBuscaItemvalor_unit: TFloatField
      Alignment = taLeftJustify
      FieldName = 'valor_unit'
      Required = True
      EditFormat = '#,##0.00'
      currency = True
    end
    object qrBuscaItemcod_ref: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object qrBuscaItemvalortotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object qrBuscaItemultimo_item: TIntegerField
      FieldName = 'ultimo_item'
      ReadOnly = True
    end
    object qrBuscaItemquantidade: TFloatField
      Alignment = taLeftJustify
      FieldName = 'quantidade'
    end
    object qrBuscaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
      ReadOnly = True
    end
    object qrBuscaItemdescricao_old: TWideStringField
      FieldName = 'descricao_old'
      Required = True
      Size = 50
    end
    object qrBuscaItemdescricao_p: TWideStringField
      FieldName = 'descricao_p'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_m: TWideStringField
      FieldName = 'descricao_m'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_g: TWideStringField
      FieldName = 'descricao_g'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_gg: TWideStringField
      FieldName = 'descricao_gg'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_extra: TWideStringField
      FieldName = 'descricao_extra'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemtamanho_padrao: TWideStringField
      FieldName = 'tamanho_padrao'
      Size = 2
    end
    object qrBuscaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrBuscaItemvalor_tam_p: TFloatField
      FieldName = 'valor_tam_p'
    end
    object qrBuscaItemvalor_tam_m: TFloatField
      FieldName = 'valor_tam_m'
    end
    object qrBuscaItemvalor_tam_g: TFloatField
      FieldName = 'valor_tam_g'
    end
    object qrBuscaItemvalor_tam_gg: TFloatField
      FieldName = 'valor_tam_gg'
    end
    object qrBuscaItemvalor_tam_extra: TFloatField
      FieldName = 'valor_tam_extra'
    end
    object qrBuscaItemvalor_unit_old2: TFloatField
      FieldName = 'valor_unit_old'
      Required = True
    end
    object qrBuscaItemid_garcom2: TIntegerField
      FieldName = 'id_garcom'
      ReadOnly = True
    end
    object qrBuscaItemnome_garcom2: TWideStringField
      FieldName = 'nome_garcom'
      ReadOnly = True
      Size = 30
    end
    object qrBuscaItemvalor_acrescimo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_acrescimo'
      currency = True
      Calculated = True
    end
    object qrBuscaItemb_peso_balanca: TBooleanField
      FieldName = 'b_peso_balanca'
      Required = True
    end
    object qrBuscaItemid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object qrBuscaItemb_exige_alterar_preco_venda: TBooleanField
      FieldName = 'b_exige_alterar_preco_venda'
      Required = True
    end
    object qrBuscaItemtara_balanca: TFloatField
      FieldName = 'tara_balanca'
      ReadOnly = True
    end
    object qrBuscaItemarquivo_img: TWideStringField
      FieldName = 'arquivo_img'
      Size = 200
    end
  end
  object dsBuscaItem: TDataSource
    DataSet = qrBuscaItem
    Left = 368
    Top = 232
  end
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      
        '  (emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite_005' +
        ', ite_006, sit_001, desconto)'
      'VALUES'
      
        '  (:emp_001, :ven_001, :ite_001, :mat_001, :ite_002, :ite_003, :' +
        'ite_005, :ite_006, :sit_001, :desconto)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :emp_001, ven_001 = :ven_001, ite_001 = :ite_001, ma' +
        't_001 = :mat_001, ite_002 = :ite_002, ite_003 = :ite_003, ite_00' +
        '5 = :ite_005, ite_006 = :ite_006,  sit_001 = :sit_001, desconto ' +
        '= :desconto'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite' +
        '_005, ite_006,  sit_001, desconto FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND ven_001 = :ven_001 AND ite_001 = :ite_0' +
        '01')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA '
      '     , ite.acrescimo    '
      ',cast(( '
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(mat.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      
        '    when '#39'E'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')' +
        ' '
      '  else MAT.MAT_003 end'
      'else '
      '  MAT.MAT_003'
      'end) as varchar(100)) as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      
        '     , (ITE.ITE_002 * ITE.ITE_003 * ite.desconto * 0.01) as valo' +
        'r_desconto'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , cast(('
      'case when ite.b_venda_tamanho then '
      '  case ite.tamanho'
      '    when '#39'P'#39' then  dm.tamanho_p'
      '    when '#39'M'#39' then  dm.tamanho_m'
      '    when '#39'G'#39' then  dm.tamanho_g'
      '    when '#39'GG'#39' then dm.tamanho_gg '
      '    when '#39'E'#39' then  dm.tamanho_extra'
      '  else '#39#39' end '
      'else '#39#39' end) as varchar(100)) as desc_tamanho,'
      'ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    AfterOpen = qrVendaItemAfterOpen
    AfterClose = qrVendaItemAfterClose
    AfterRefresh = qrVendaItemAfterRefresh
    Left = 304
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 27
      end>
    object qrVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaItemnro_item: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'nro_item'
      Required = True
    end
    object qrVendaItemvlrvenda: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object qrVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemcod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qrVendaItemstatus: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaItemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrVendaItemvalor_taxa10: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object qrVendaItemvalor_total_taxa10: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object qrVendaItemordem_item: TLargeintField
      Alignment = taCenter
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object qrVendaItemvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemqtdevenda: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrVendaItemdesc_tamanho: TWideStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemacrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'acrescimo'
      currency = True
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object dsVendaItem: TDataSource
    AutoEdit = False
    DataSet = qrVendaItem
    Left = 368
    Top = 280
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList64B
    Left = 424
    Top = 176
    object acAberturaVenda: TAction
      Caption = 'Abertura [F1]'
      ImageIndex = 69
      OnExecute = acAberturaVendaExecute
    end
    object acFecharVenda: TAction
      Caption = '&Finalizar venda [F6]'
      ImageIndex = 10
      ShortCut = 117
      OnExecute = acFecharVendaExecute
    end
    object acCancelarVenda: TAction
      Caption = 'Cancelar venda [F8]'
      ImageIndex = 18
      ShortCut = 119
      OnExecute = acCancelarVendaExecute
    end
    object acPesquisarItem: TAction
      ImageIndex = 25
      ShortCut = 113
      OnExecute = acPesquisarItemExecute
    end
    object acCancelaItem: TAction
      Caption = 'Cancelar item [F3]'
      ImageIndex = 76
      OnExecute = acCancelaItemExecute
    end
    object acDescontoItem: TAction
      Caption = 'Desconto no item [Ctrl+D]'
      ImageIndex = 79
      OnExecute = acDescontoItemExecute
    end
    object acObservacaoItem: TAction
      Caption = 'Obs. no item [Ctrl+S]'
      ImageIndex = 78
      OnExecute = acObservacaoItemExecute
    end
    object acInsereProdutoFracionado: TAction
      Caption = 'Inserir Fracionado [F11]'
      ImageIndex = 84
      OnExecute = acInsereProdutoFracionadoExecute
    end
    object acOpcionaisItem: TAction
      Caption = 'Opcionais [Ctrl+O]'
      ImageIndex = 20
      ShortCut = 16463
      OnExecute = acOpcionaisItemExecute
    end
    object acConsultarProduto: TAction
      Caption = 'Consultar Produto [F7]'
      ImageIndex = 65
      OnExecute = acConsultarProdutoExecute
    end
    object acAbreBuscaCliente: TAction
      Caption = 'Cliente/CPF [F4]'
      ImageIndex = 34
      OnExecute = acAbreBuscaClienteExecute
    end
    object acAbreGaveta: TAction
      Caption = 'acAbreGaveta'
      ShortCut = 16455
      OnExecute = acAbreGavetaExecute
    end
    object acConfiguracoes: TAction
      Caption = 'acConfiguracoes'
      ImageIndex = 21
    end
    object acVendaemespera: TAction
      Caption = 'acVendaemespera'
      ImageIndex = 24
      OnExecute = acVendaemesperaExecute
    end
  end
  object qrInsereItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'insert into vendaitem '
      '(emp_001, ven_001, mat_001, ite_002, ite_003, '
      ' ite_005,  ite_001,'
      ' ite_012, sit_001, ite_011, ite_008,'
      ' tamanho, b_venda_tamanho, ite_006,'
      ' ite_013, item_fracionado, quantidade_impressao, desconto)'
      'values '
      '(:emp, :id_venda, :id_material, :quantidade, :valor_unit, '
      ' :valor_total, :nro_item , '
      ' '#39'N'#39', 4, '#39'N'#39', '#39'N'#39', '
      ' :tamanho, :b_venda_tamanho, :observacao,'
      
        ' :cod_impressora, :item_fracionado, :quantidade_impressao, :desc' +
        'onto)')
    Left = 424
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_material'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantidade'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_unit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_total'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nro_item'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tamanho'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'b_venda_tamanho'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'observacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cod_impressora'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item_fracionado'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantidade_impressao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        Value = nil
      end>
  end
  object jvdsBuscaItem: TJvDataSource
    DataSet = qrBuscaItem
    Left = 424
    Top = 232
  end
  object dsVendaItemOpcional: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemOpcional
    Left = 424
    Top = 312
  end
  object qrVendaItemOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.VEN_001 as id_venda,'
      '       ITE.EMP_001 as id_empresa,'
      '       ITE.ITE_001 as id_vendaitem,'
      '       0 as id_opcional,     '
      
        '       cast(concat('#39'Observa'#231#245'es: '#39', ITE.ITE_006) as varchar(200)' +
        ') as descricao,'
      '       0.00 as valor,'
      '       0 as ord,'
      '       0 as tipo '
      'FROM VENDAITEM ITE'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      
        'and not ite.sit_001 in (0,1,2,3) and not (ITE.ITE_006 is null or' +
        ' ITE.ITE_006='#39#39')'
      ''
      'union all'
      ''
      'select '
      'vio.id_venda, '
      'vio.id_empresa, '
      'vio.id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao) as varchar(200)) as descr' +
        'icao, '
      'o.valor ,'
      '1 as ord,'
      'o.tipo'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      'order by 3,7,8')
    ReadOnly = True
    Left = 304
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 27
      end>
    object qrVendaItemOpcionalid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_opcional: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object qrVendaItemOpcionalvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object qrVendaItemOpcionaldescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object qrVendaItemOpcionalord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
    object qrVendaItemOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
  end
  object qrCategoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select c.cat_001 as id_categoria, c.cat_002 as descricao, c.b_ex' +
        'ibir_icone, c.arquivo_img , sub_mat.nro_produtos from categoria ' +
        'c'
      'join '
      
        ' (select cat_001, emp_001 , count(1) as nro_produtos from materi' +
        'ais where sit_001=4 group by cat_001 , emp_001 ) sub_mat'
      ' on sub_mat.cat_001=c.cat_001 and c.emp_001=sub_mat.emp_001'
      'where c.sit_001=4 and c.emp_001=:id_empresa'
      'order by  sub_mat.nro_produtos desc')
    Left = 368
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrCategoriaid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Required = True
    end
    object qrCategoriadescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 40
    end
    object qrCategoriab_exibir_icone: TBooleanField
      FieldName = 'b_exibir_icone'
    end
    object qrCategoriaarquivo_img: TWideStringField
      FieldName = 'arquivo_img'
      Size = 200
    end
    object qrCategorianro_produtos: TLargeintField
      FieldName = 'nro_produtos'
      ReadOnly = True
    end
  end
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = qrCategoria
    Left = 304
    Top = 384
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 433
    Top = 383
  end
  object cdsOpcionais: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 304
    Top = 440
    object cdsOpcionaisid_opcional: TIntegerField
      FieldName = 'id_opcional'
    end
    object cdsOpcionaisdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object cdsOpcionaisvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object cdsOpcionaistipo: TIntegerField
      FieldName = 'tipo'
    end
    object cdsOpcionaistotal_opcionais: TAggregateField
      FieldName = 'total_opcionais'
      Active = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
end
