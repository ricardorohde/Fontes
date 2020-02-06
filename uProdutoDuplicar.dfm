inherited frmProdutoDuplicar: TfrmProdutoDuplicar
  Caption = 'Duplicar Produto'
  ClientHeight = 248
  ClientWidth = 436
  KeyPreview = True
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  ExplicitWidth = 442
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 16
  object Label7: TLabel [0]
    Left = 310
    Top = 141
    Width = 94
    Height = 19
    Caption = 'Valor a prazo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited pnPrincipal: TAdvPanel
    Width = 436
    Height = 199
    Font.Height = -16
    ExplicitWidth = 436
    ExplicitHeight = 199
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 50
      Height = 19
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 151
      Top = 10
      Width = 67
      Height = 19
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 74
      Width = 100
      Height = 19
      Caption = 'Qtde. Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 161
      Top = 74
      Width = 104
      Height = 19
      Caption = 'Valor de Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 143
      Width = 108
      Height = 19
      Caption = 'Valor de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 310
      Top = 74
      Width = 72
      Height = 19
      Caption = 'Lucro (%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edCodigo: TEdit
      Left = 8
      Top = 35
      Width = 137
      Height = 27
      TabOrder = 3
    end
    object edDescricao: TEdit
      Left = 151
      Top = 35
      Width = 280
      Height = 27
      TabOrder = 4
    end
    object edQtdeEstoque: TJvValidateEdit
      Left = 8
      Top = 99
      Width = 137
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 3
      TabOrder = 5
      OnKeyPress = edQtdeEstoqueKeyPress
    end
    object edValorCusto: TJvValidateEdit
      Left = 161
      Top = 99
      Width = 137
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      HasMinValue = True
      TabOrder = 0
      OnChange = edValorCustoChange
    end
    object edValorVenda: TJvValidateEdit
      Left = 8
      Top = 166
      Width = 137
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      HasMinValue = True
      TabOrder = 2
      OnChange = edValorVendaChange
    end
    object edValorporcentagem: TJvValidateEdit
      Left = 310
      Top = 99
      Width = 121
      Height = 27
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfPercent
      DecimalPlaces = 2
      HasMinValue = True
      TabOrder = 1
      OnChange = edValorCustoChange
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 199
    Width = 436
    ExplicitTop = 199
    ExplicitWidth = 436
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 317
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
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 198
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
  end
  object qrMaterialInsercao: TUniQuery
    Connection = frmMenu.conexao
    Left = 256
    Top = 65528
  end
end
