inherited frmLancamentocontasinclusao: TfrmLancamentocontasinclusao
  Caption = 'INCLUS'#195'O'
  ClientHeight = 291
  ClientWidth = 775
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 781
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 775
    Height = 242
    ExplicitWidth = 775
    ExplicitHeight = 242
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 10
      Top = 8
      Width = 762
      Height = 231
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 81
        Top = 54
        Width = 41
        Height = 16
        Alignment = taRightJustify
        Caption = 'DATA:'
      end
      object Label8: TLabel
        Left = 41
        Top = 116
        Width = 81
        Height = 16
        Alignment = taRightJustify
        Caption = 'DOCUMENTO:'
      end
      object Label9: TLabel
        Left = 30
        Top = 146
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Caption = 'OBSERVA'#199#195'O:'
      end
      object Label10: TLabel
        Left = 73
        Top = 86
        Width = 49
        Height = 16
        Alignment = taRightJustify
        Caption = 'VALOR:'
      end
      object Label2: TLabel
        Left = 8
        Top = 25
        Width = 114
        Height = 16
        Alignment = taRightJustify
        Caption = 'TIPO MOVIMENTO:'
      end
      object dtDataDocumento: TDateTimePicker
        Left = 128
        Top = 51
        Width = 105
        Height = 24
        Date = 43145.000000000000000000
        Time = 43145.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edDocumento: TEdit
        Left = 128
        Top = 113
        Width = 105
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
      end
      object edObservacao: TEdit
        Left = 128
        Top = 142
        Width = 627
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 140
        ParentFont = False
        TabOrder = 4
      end
      object edValor: TJvValidateEdit
        Tag = 1
        Left = 128
        Top = 83
        Width = 105
        Height = 24
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 2
      end
      object cbTipomovimento: TComboBox
        Left = 128
        Top = 21
        Width = 145
        Height = 24
        TabOrder = 0
        Items.Strings = (
          'ENTRADA'
          'SAIDA')
      end
      object ckCompensado: TcxCheckBox
        Left = 125
        Top = 192
        Caption = 'COMPENSADO'
        TabOrder = 5
        OnClick = ckCompensadoClick
      end
      object ckAutocompensar: TcxCheckBox
        Left = 264
        Top = 192
        Caption = 'AUTO COMPENSAR'
        TabOrder = 6
        OnClick = ckAutocompensarClick
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 242
    Width = 775
    ExplicitTop = 242
    ExplicitWidth = 775
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 656
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
      MinButtonSizeState = bsLabel
    end
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 537
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
      MinButtonSizeState = bsLabel
    end
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 450
    Top = 66
  end
end
