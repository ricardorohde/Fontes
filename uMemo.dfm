inherited frmMemo: TfrmMemo
  Caption = 'frmMemo'
  ClientHeight = 280
  ClientWidth = 493
  OnKeyDown = FormKeyDown
  ExplicitWidth = 499
  ExplicitHeight = 309
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 493
    Height = 231
    ExplicitWidth = 493
    ExplicitHeight = 231
    FullHeight = 200
    object lbTitulo: TLabel
      Left = 7
      Top = 5
      Width = 32
      Height = 16
      Caption = 'T'#237'tulo'
    end
    object lbObs: TLabel
      Left = 7
      Top = 58
      Width = 65
      Height = 16
      Caption = 'Justificativa'
    end
    object lbNumCaracteres: TLabel
      Left = 404
      Top = 58
      Width = 83
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0 Caracter(es)'
    end
    object edTitulo: TEdit
      Left = 7
      Top = 25
      Width = 480
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 7
      Top = 80
      Width = 480
      Height = 148
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      WantReturns = False
      OnChange = Memo1Change
      OnKeyDown = Memo1KeyDown
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 231
    Width = 493
    ExplicitTop = 231
    ExplicitWidth = 493
    object FlowPanel1: TFlowPanel
      Left = -162
      Top = 0
      Width = 655
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      Color = 12691076
      FlowStyle = fsRightLeftTopBottom
      ParentBackground = False
      TabOrder = 0
      object btCancela: TAdvGlowButton
        AlignWithMargins = True
        Left = 536
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
        Left = 417
        Top = 3
        Width = 116
        Height = 41
        Margins.Left = 0
        Caption = 'Confirma'
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
end
