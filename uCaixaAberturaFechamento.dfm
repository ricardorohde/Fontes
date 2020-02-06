object frmCaixaAberturaFechamento: TfrmCaixaAberturaFechamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Abertura e Fechamento de Caixa'
  ClientHeight = 417
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 368
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.4.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object pnTopo: TPanel
      Left = 0
      Top = 0
      Width = 961
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 0
      object lbTipoMovimentoCaixa: TLabel
        Left = 16
        Top = 7
        Width = 167
        Height = 23
        Caption = 'Abertura de caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 6
      Top = 44
      Width = 323
      Height = 320
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 1
      object Label3: TLabel
        Left = 14
        Top = 79
        Width = 75
        Height = 19
        Caption = 'Dinheiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 112
        Width = 61
        Height = 19
        Caption = 'Cart'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 14
        Top = 145
        Width = 67
        Height = 19
        Caption = 'Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 14
        Top = 178
        Width = 60
        Height = 19
        Caption = 'Outros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 14
        Top = 256
        Width = 108
        Height = 19
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 14
        Top = 16
        Width = 93
        Height = 19
        Caption = 'Data/Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 14
        Top = 47
        Width = 68
        Height = 19
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 14
        Top = 211
        Width = 69
        Height = 19
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edValorDinheiro: TJvValidateEdit
        Tag = 1
        Left = 113
        Top = 76
        Width = 200
        Height = 27
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 0
        OnClick = edValorDinheiroClick
        DataConnector.DataField = 'desconto'
      end
      object edValorCartao: TJvValidateEdit
        Tag = 1
        Left = 113
        Top = 109
        Width = 200
        Height = 27
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 1
        OnClick = edValorCartaoClick
        DataConnector.DataField = 'desconto'
      end
      object edValorCheque: TJvValidateEdit
        Tag = 1
        Left = 113
        Top = 142
        Width = 200
        Height = 27
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 2
        OnClick = edValorChequeClick
        DataConnector.DataField = 'desconto'
      end
      object edValorOutros: TJvValidateEdit
        Tag = 1
        Left = 113
        Top = 175
        Width = 200
        Height = 27
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 3
        OnClick = edValorOutrosClick
        DataConnector.DataField = 'desconto'
      end
      object edObservacao: TEdit
        Left = 12
        Top = 281
        Width = 301
        Height = 25
        TabOrder = 4
      end
      object cbPeriodo: TComboBox
        Left = 113
        Top = 208
        Width = 200
        Height = 27
        Style = csDropDownList
        TabOrder = 5
        Items.Strings = (
          'Manh'#227
          'Tarde'
          'Noite')
      end
      object edData: TEdit
        Left = 113
        Top = 14
        Width = 200
        Height = 25
        TabStop = False
        ReadOnly = True
        TabOrder = 6
      end
      object edUsuario: TEdit
        Left = 113
        Top = 45
        Width = 200
        Height = 25
        TabStop = False
        ReadOnly = True
        TabOrder = 7
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 335
      Top = 44
      Width = 336
      Height = 320
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 2
      object grNumKeys: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 331
        Height = 312
        BorderStyle = bsNone
        Color = clBlack
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object btNumKey_7: TAdvGlowButton
          Left = 3
          Top = 3
          Width = 76
          Height = 72
          Caption = '7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btNumKey_7Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_Del: TAdvGlowButton
          Left = 3
          Top = 237
          Width = 76
          Height = 72
          Caption = 'Del'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btNumKey_DelClick
          Appearance.BorderColor = clMaroon
          Appearance.Color = 344515
          Appearance.ColorTo = 5939445
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 5939445
          Appearance.ColorMirrorTo = 5939445
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_0: TAdvGlowButton
          Left = 85
          Top = 237
          Width = 76
          Height = 72
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btNumKey_0Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_Virg: TAdvGlowButton
          Left = 167
          Top = 237
          Width = 76
          Height = 72
          Caption = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btNumKey_VirgClick
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_1: TAdvGlowButton
          Left = 3
          Top = 159
          Width = 76
          Height = 72
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btNumKey_1Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_2: TAdvGlowButton
          Left = 85
          Top = 159
          Width = 76
          Height = 72
          Caption = '2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btNumKey_2Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_3: TAdvGlowButton
          Left = 167
          Top = 159
          Width = 76
          Height = 72
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btNumKey_3Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_4: TAdvGlowButton
          Left = 3
          Top = 81
          Width = 76
          Height = 72
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btNumKey_4Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_5: TAdvGlowButton
          Left = 85
          Top = 81
          Width = 76
          Height = 72
          Caption = '5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btNumKey_5Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_6: TAdvGlowButton
          Left = 167
          Top = 81
          Width = 76
          Height = 72
          Caption = '6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btNumKey_6Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_8: TAdvGlowButton
          Left = 85
          Top = 3
          Width = 76
          Height = 72
          Caption = '8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = btNumKey_8Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_9: TAdvGlowButton
          Left = 167
          Top = 3
          Width = 76
          Height = 72
          Caption = '9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = btNumKey_9Click
          Appearance.BorderColor = clNavy
          Appearance.Color = 10182470
          Appearance.ColorTo = 15110495
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 15110495
          Appearance.ColorMirrorTo = 15110495
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_Enter: TAdvGlowButton
          Left = 249
          Top = 159
          Width = 76
          Height = 150
          Caption = 'ENTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = btNumKey_EnterClick
          Appearance.BorderColor = clGreen
          Appearance.Color = 2001950
          Appearance.ColorTo = 9563025
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 9563025
          Appearance.ColorMirrorTo = 9563025
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 9563025
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
        object btNumKey_Limpar: TAdvGlowButton
          Left = 249
          Top = 3
          Width = 76
          Height = 150
          Caption = 'LIMPAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = btNumKey_LimparClick
          Appearance.BorderColor = clMaroon
          Appearance.Color = 344515
          Appearance.ColorTo = 5939445
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirror = 5939445
          Appearance.ColorMirrorTo = 5939445
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.TextColorDown = clWhite
          Appearance.TextColorHot = clWhite
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 677
      Top = 44
      Width = 281
      Height = 321
      TabOrder = 3
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyPress = cxGrid1DBTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellDblClick
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dsMovimentosForma
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1desc_forma: TcxGridDBColumn
          Caption = 'Forma'
          DataBinding.FieldName = 'desc_forma'
          Options.Editing = False
          Width = 178
        end
        object cxGrid1DBTableView1total_forma: TcxGridDBColumn
          DataBinding.FieldName = 'total_forma'
          Width = 101
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 368
    Width = 961
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    TabStop = True
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 838
      Top = 3
      Width = 120
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
      TabOrder = 1
      TabStop = True
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
      Left = 715
      Top = 3
      Width = 120
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
      TabOrder = 0
      TabStop = True
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
    object btAbrirGaveta: TAdvGlowButton
      AlignWithMargins = True
      Left = 571
      Top = 3
      Width = 141
      Height = 41
      Margins.Left = 0
      Caption = 'Abrir Gaveta'
      ImageIndex = 51
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      TabStop = True
      OnClick = btAbrirGavetaClick
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
    object btSaidaMovimento: TAdvGlowButton
      AlignWithMargins = True
      Left = 407
      Top = 3
      Width = 161
      Height = 41
      Margins.Left = 0
      Caption = 'Sa'#237'da (Sangria)'
      ImageIndex = 56
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      TabStop = True
      OnClick = btSaidaMovimentoClick
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
    object btEntradaMovimento: TAdvGlowButton
      AlignWithMargins = True
      Left = 196
      Top = 3
      Width = 208
      Height = 41
      Margins.Left = 0
      Caption = 'Entrada (Suprimento)'
      ImageIndex = 57
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      TabStop = True
      OnClick = btEntradaMovimentoClick
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
    Left = 24
    Top = 368
  end
  object repCaixaAberturaFechamento: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42713.451345659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 368
    Datasets = <
      item
        DataSet = frmCaixaStatus.dbMovimentoFormaPag
        DataSetName = 'dbMovimentoFormaPag'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end
      item
        Name = 'sDataHora'
        Value = ''
      end
      item
        Name = 'sObservacoes'
        Value = ''
      end
      item
        Name = 'sHoraAbertura'
        Value = ''
      end
      item
        Name = 'sDataAbertura'
        Value = ''
      end
      item
        Name = 'sUsuario'
        Value = ''
      end
      item
        Name = 'sFormapgto'
        Value = ''
      end
      item
        Name = 'sValorDinheiro'
        Value = ''
      end
      item
        Name = 'sValorCheque'
        Value = ''
      end
      item
        Name = 'sValorCartao'
        Value = ''
      end
      item
        Name = 'sValorOutros'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 448.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 319.700990000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 283.464750000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 20.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 20.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sDataAbertura]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 235.787570000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 57.370130000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO FECHAMENTO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 57.370130000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sUsuarioFechamento]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 93.149660000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 97.503949210000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR INFORMADO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 178.740260000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 238.433210000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 193.858380000000000000
          Width = 234.330860000000000000
          Height = 37.795300000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sObservacoes]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000010000
          Top = 238.433210000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sDataHora]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 116.401587010000000000
          Width = 75.590600000000000000
          Height = 52.913420000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DINHEIRO'
            'CART'#195'O'
            'CHEQUE'
            'OUTROS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 116.267780000000000000
          Width = 132.283550000000000000
          Height = 52.913420000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sValorDinheiro]'
            '[sValorCartao]'
            '[sValorCheque]'
            '[sValorOutros]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 276.567100000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.779530000000001200
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 74.811070000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TERMINAL')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 145.842610000000000000
          Top = 74.811070000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sTerminal]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO ABERTURA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 145.842610000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = frmCaixaStatus.dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sUsuario]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 495.118430000000000000
        Width = 283.464750000000000000
        DataSet = frmCaixaStatus.dbMovimentoFormaPag
        DataSetName = 'dbMovimentoFormaPag'
        RowCount = 0
        object dbMovimentoFormaPagdesc_forma: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'desc_forma'
          DataSet = frmCaixaStatus.dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."desc_forma"]')
          ParentFont = False
        end
        object dbMovimentoFormaPagtipo_movimento: TfrxMemoView
          Left = 90.708666300000000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'tipo_movimento'
          DataSet = frmCaixaStatus.dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."tipo_movimento"]')
          ParentFont = False
        end
        object dbMovimentoFormaPagtipo_venda: TfrxMemoView
          Left = 124.724414330000000000
          Top = 3.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'tipo_venda'
          DataSet = frmCaixaStatus.dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."tipo_venda"]')
          ParentFont = False
        end
        object dbMovimentoFormaPagtotal_forma: TfrxMemoView
          Left = 192.756030000000000000
          Top = 3.779530000000022000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'total_forma'
          DataSet = frmCaixaStatus.dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."total_forma"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 400.630180000000000000
        Width = 283.464750000000000000
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574830000000020000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Forma')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 90.708720000000000000
          Top = 41.574830000000020000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E/S')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 124.724490000000000000
          Top = 41.574830000000020000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'T.Venda')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 200.315090000000000000
          Top = 41.574830000000020000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118119999999980000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTALIZADOR FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 234.330708661417300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 234.330708661417300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 540.472790000000000000
        Width = 283.464750000000000000
        object Memo16: TfrxMemoView
          Left = 3.779527560000000000
          Top = 7.559060000000045000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 113.385897560000000000
          Top = 7.559060000000045000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbMovimentoFormaPag."total_forma">,MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 234.330708661417300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 30.236239999999960000
          Width = 234.330708661417300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qrMovimentosForma: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      '(sum(valor)* :flag_mostrar_pagamentos) as total_forma,'
      'sum(valor) as total_forma_db,'
      'id_caixa, '
      'id_empresa,'
      'desc_forma, '
      'sfi_codigo'
      'from '
      '( select '
      
        'case ci.tipo_movimento when  '#39'S'#39' then -ci.valor else ci.valor en' +
        'd as valor,'
      'ci.id_caixa,'
      'ci.id_empresa,'
      'fp.for_002 as desc_forma,  '
      'ci.tipo_movimento, '
      'fp.sfi_codigo '
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formapgt' +
        'o=fp.for_001'
      'where ((ci.tipo_movimento='#39'E'#39' and ci.classificacao in ('#39'C'#39','#39'S'#39'))'
      'or (ci.tipo_movimento='#39'S'#39' and ci.classificacao in ('#39'R'#39','#39'D'#39')))'
      'and c.id_caixa=:id_caixa and c.id_empresa=:id_empresa'
      ''
      'union all'
      ''
      'select '
      'valor_inicial as valor,  '
      'c.id_caixa, '
      'c.id_empresa, '
      #39'DINHEIRO'#39' as forma,'
      #39'E'#39' as tipo_movimento, '
      '1 as sfi_codigo'
      'from caixa c'
      'where c.id_caixa=:id_caixa and c.id_empresa=:id_empresa'
      ''
      'union all'
      ''
      'select '
      'ci.valor, '
      'ci.id_caixa, '
      'ci.id_empresa, '
      'fp.for_002 as desc_forma, '
      'ci.tipo_movimento, '
      'fp.sfi_codigo'
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      
        'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formapgt' +
        'o=fp.for_001'
      
        'join venda v on v.ven_001=ci.id_venda and v.emp_001=ci.id_empres' +
        'a'
      
        'where c.id_caixa=:id_caixa and c.id_empresa=:id_empresa and ci.t' +
        'ipo_movimento='#39'E'#39
      '-- n'#227'o traz as vendas cancelas'
      'and ci.id_venda not in'
      '(select sci.id_venda '
      'from caixaitem sci'
      
        'join venda sv on sv.ven_001=sci.id_venda and sv.emp_001=sci.id_e' +
        'mpresa'
      
        'where sci.id_caixa=:id_caixa and sci.id_empresa=:id_empresa and ' +
        'sv.sit_001=2)'
      ') sub'
      'group by id_caixa, id_empresa , desc_forma,  sfi_codigo'
      'order by id_caixa, id_empresa , desc_forma')
    Left = 410
    Top = 207
    ParamData = <
      item
        DataType = ftInteger
        Name = 'flag_mostrar_pagamentos'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 10
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrMovimentosFormatotal_forma: TFloatField
      FieldName = 'total_forma'
    end
    object qrMovimentosFormaid_caixa: TIntegerField
      FieldName = 'id_caixa'
    end
    object qrMovimentosFormaid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object qrMovimentosFormadesc_forma: TWideMemoField
      FieldName = 'desc_forma'
      BlobType = ftWideMemo
    end
    object qrMovimentosFormasfi_codigo: TIntegerField
      FieldName = 'sfi_codigo'
    end
    object qrMovimentosFormatotal_forma_db: TFloatField
      FieldName = 'total_forma_db'
    end
  end
  object dspMovimentosForma: TDataSetProvider
    DataSet = qrMovimentosForma
    Left = 522
    Top = 207
  end
  object cdsMovimentosForma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimentosForma'
    AfterPost = cdsMovimentosFormaAfterPost
    Left = 370
    Top = 111
    object cdsMovimentosFormatotal_forma: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total_forma'
      currency = True
    end
    object cdsMovimentosFormaid_caixa: TIntegerField
      FieldName = 'id_caixa'
    end
    object cdsMovimentosFormaid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object cdsMovimentosFormadesc_forma: TWideMemoField
      FieldName = 'desc_forma'
      BlobType = ftWideMemo
    end
    object cdsMovimentosFormasfi_codigo: TIntegerField
      FieldName = 'sfi_codigo'
    end
    object cdsMovimentosFormatotal_forma_db: TFloatField
      FieldName = 'total_forma_db'
    end
  end
  object dsMovimentosForma: TDataSource
    DataSet = cdsMovimentosForma
    Left = 626
    Top = 143
  end
end
