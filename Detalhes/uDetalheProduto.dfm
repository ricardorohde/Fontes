object frmDetalheProduto: TfrmDetalheProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de produtos'
  ClientHeight = 624
  ClientWidth = 915
  Color = clBtnFace
  Constraints.MinHeight = 525
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label46: TLabel
    Left = 544
    Top = 52
    Width = 34
    Height = 16
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object b: TFlowPanel
    Left = 0
    Top = 575
    Width = 915
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 913
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 808
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btCancelarClick
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
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 701
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
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
      OnClick = btSalvarClick
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
    object btExcluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 594
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 7
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btExcluirClick
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 487
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 15
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btEditarClick
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 380
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btNovoClick
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
    object btMovimentoEstoque: TAdvGlowButton
      AlignWithMargins = True
      Left = 243
      Top = 3
      Width = 134
      Height = 41
      Margins.Left = 0
      Caption = 'Mov. Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 18
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btMovimentoEstoqueClick
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
  object pgControl: TAdvPageControl
    Left = 0
    Top = 0
    Width = 915
    Height = 575
    ActivePage = pgDadosCadastro
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clNavy
    ActiveFont.Height = -13
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = [fsBold]
    Align = alClient
    DoubleBuffered = True
    DefaultTabColor = 14997705
    ActiveColor = 14997705
    TabBackGroundColor = 14997705
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.10'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 1
    OnChange = pgControlChange
    ExplicitWidth = 913
    object pgDadosCadastro: TAdvTabSheet
      Caption = 'Dados cadastrais'
      Color = 14997705
      ColorTo = 12691076
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      DesignSize = (
        907
        544)
      object lblUltimaalteracao: TLabel
        Left = 3
        Top = 523
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object advEstoque: TAdvGroupBox
        Left = 381
        Top = 273
        Width = 363
        Height = 117
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
        object Label13: TLabel
          Left = 10
          Top = 37
          Width = 90
          Height = 16
          Caption = 'Estoque M'#237'nimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 126
          Top = 37
          Width = 93
          Height = 16
          Caption = 'Estoque M'#225'ximo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 242
          Top = 37
          Width = 98
          Height = 16
          Caption = 'Estoque no Setor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 10
          Top = 59
          DataBinding.DataField = 'mat_014'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.000'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnKeyPress = cxDBCurrencyEdit5KeyPress
          Width = 100
        end
        object cxDBCurrencyEdit6: TcxDBCurrencyEdit
          Left = 126
          Top = 59
          DataBinding.DataField = 'mat_015'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.000'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnKeyPress = cxDBCurrencyEdit6KeyPress
          Width = 100
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 242
          Top = 59
          DataBinding.DataField = 'estoque'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.000'
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnKeyPress = cxDBCurrencyEdit6KeyPress
          Width = 100
        end
      end
      object advPreco: TAdvGroupBox
        Left = 3
        Top = 396
        Width = 363
        Height = 122
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Composi'#231#227'o do pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = True
        object Label29: TLabel
          Left = 252
          Top = 18
          Width = 57
          Height = 16
          Caption = 'Lucro (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 18
          Width = 82
          Height = 16
          Caption = 'Valor de custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 10
          Top = 67
          Width = 86
          Height = 16
          Caption = 'Valor de venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 131
          Top = 18
          Width = 66
          Height = 16
          Caption = 'Custo ingr. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPrazo: TLabel
          Left = 131
          Top = 67
          Width = 66
          Height = 16
          Caption = 'Valor Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAtacado: TLabel
          Left = 251
          Top = 67
          Width = 80
          Height = 16
          Caption = 'Valor Atacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edCusto: TcxDBCurrencyEdit
          Left = 10
          Top = 35
          DataBinding.DataField = 'mat_012'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnKeyPress = edCustoKeyPress
          Width = 100
        end
        object edLucro: TcxDBCurrencyEdit
          Left = 252
          Top = 35
          DataBinding.DataField = 'mat_018'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnKeyPress = edLucroKeyPress
          Width = 100
        end
        object edVenda: TcxDBCurrencyEdit
          Left = 10
          Top = 84
          DataBinding.DataField = 'mat_008'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = 3342335
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnKeyPress = edVendaKeyPress
          Width = 100
        end
        object edIngredientes: TcxDBCurrencyEdit
          Left = 131
          Top = 35
          TabStop = False
          DataBinding.DataField = 'mat_006'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ReadOnly = True
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = 14997705
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 100
        end
        object edPrazo: TcxDBCurrencyEdit
          Left = 131
          Top = 84
          DataBinding.DataField = 'valor_tabela2'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = 3342335
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnKeyPress = edVendaKeyPress
          Width = 100
        end
        object edAtacado: TcxDBCurrencyEdit
          Left = 252
          Top = 84
          DataBinding.DataField = 'valor_atacado'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = 3342335
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          OnKeyPress = edVendaKeyPress
          Width = 100
        end
      end
      object grTamanhos: TAdvGroupBox
        Left = 641
        Top = 27
        Width = 263
        Height = 208
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TabStop = True
        Visible = False
        ExplicitLeft = 639
        object Label24: TLabel
          Left = 7
          Top = 146
          Width = 98
          Height = 16
          Caption = 'Tamanho padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBCurrencyEdit12: TcxDBCurrencyEdit
          Left = 151
          Top = 7
          DataBinding.DataField = 'valor_tam_p'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnKeyPress = cxDBCurrencyEdit12KeyPress
          Width = 103
        end
        object cxDBCurrencyEdit13: TcxDBCurrencyEdit
          Left = 151
          Top = 33
          DataBinding.DataField = 'valor_tam_m'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          OnKeyPress = cxDBCurrencyEdit13KeyPress
          Width = 103
        end
        object cxDBCurrencyEdit14: TcxDBCurrencyEdit
          Left = 151
          Top = 60
          DataBinding.DataField = 'valor_tam_g'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          OnKeyPress = cxDBCurrencyEdit14KeyPress
          Width = 103
        end
        object cxDBCurrencyEdit15: TcxDBCurrencyEdit
          Left = 151
          Top = 86
          DataBinding.DataField = 'valor_tam_gg'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          OnKeyPress = cxDBCurrencyEdit15KeyPress
          Width = 103
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 151
          Top = 114
          DataBinding.DataField = 'valor_tam_extra'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Properties.MaxValue = 99999999.990000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          OnKeyPress = cxDBCurrencyEdit16KeyPress
          Width = 103
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 7
          Top = 7
          TabStop = False
          DataBinding.DataField = 'tamanho_p'
          DataBinding.DataSource = dsDescTamanhoMaterial
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyPress = cxDBTextEdit2KeyPress
          Width = 127
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 7
          Top = 33
          TabStop = False
          DataBinding.DataField = 'tamanho_m'
          DataBinding.DataSource = dsDescTamanhoMaterial
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          OnKeyPress = cxDBTextEdit3KeyPress
          Width = 127
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 7
          Top = 60
          TabStop = False
          DataBinding.DataField = 'tamanho_g'
          DataBinding.DataSource = dsDescTamanhoMaterial
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          OnKeyPress = cxDBTextEdit4KeyPress
          Width = 127
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 7
          Top = 86
          TabStop = False
          DataBinding.DataField = 'tamanho_gg'
          DataBinding.DataSource = dsDescTamanhoMaterial
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          OnKeyPress = cxDBTextEdit5KeyPress
          Width = 127
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 7
          Top = 114
          TabStop = False
          DataBinding.DataField = 'tamanho_extra'
          DataBinding.DataSource = dsDescTamanhoMaterial
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          OnKeyPress = cxDBTextEdit6KeyPress
          Width = 127
        end
        object cbTamanhoPadrao: TJvDBComboBox
          Left = 7
          Top = 168
          Width = 247
          Height = 24
          DataField = 'tamanho_padrao'
          DataSource = dsDetalhe
          TabOrder = 5
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = cbTamanhoPadraoChange
        end
      end
      object ckVendaTamanho: TcxDBCheckBox
        Left = 641
        Top = -3
        Anchors = [akTop, akRight]
        Caption = 'Habillita venda por tamanho'
        DataBinding.DataField = 'b_venda_tamanho'
        DataBinding.DataSource = dsDetalhe
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Transparent = True
        OnClick = ckVendaTamanhoClick
        ExplicitLeft = 639
      end
      object AdvGroupBox3: TAdvGroupBox
        Left = 3
        Top = 273
        Width = 363
        Height = 117
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Informa'#231#245'es Para Balan'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        object Label30: TLabel
          Left = 7
          Top = 66
          Width = 77
          Height = 16
          Caption = 'Dias Validade'
          FocusControl = cxDBSpinEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 92
          Top = 66
          Width = 83
          Height = 16
          Caption = 'Tara Bal. Peso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 180
          Top = 66
          Width = 122
          Height = 16
          Hint = 'No MGV6 ir nas configura'#231#245'es da loja e ativar as 3 op'#231#245'es TARA'
          Caption = 'Tara Predeterminada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 3
          Top = 17
          Caption = 'Habilita venda por peso na balan'#231'a'
          DataBinding.DataField = 'b_peso_balanca'
          DataBinding.DataSource = dsDetalhe
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clNavy
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Transparent = True
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 3
          Top = 40
          Caption = 'Exporta peso para balan'#231'a'
          DataBinding.DataField = 'b_exporta_peso_balanca'
          DataBinding.DataSource = dsDetalhe
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clNavy
          Style.TextStyle = []
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 7
          Top = 84
          DataBinding.DataField = 'dias_validade'
          DataBinding.DataSource = dsDetalhe
          Properties.AssignedValues.MinValue = True
          Properties.MaxValue = 999.000000000000000000
          Properties.SpinButtons.Visible = False
          Style.TextColor = clWindowText
          Style.TextStyle = []
          TabOrder = 2
          Width = 80
        end
        object cxDBCurrencyEdit19: TcxDBCurrencyEdit
          Left = 92
          Top = 84
          DataBinding.DataField = 'tara_balanca'
          DataBinding.DataSource = dsDetalhe
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.MaxValue = 99999999.999000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.TextColor = clWindowText
          Style.TextStyle = []
          TabOrder = 3
          Width = 83
        end
        object DBLookupComboBox14: TDBLookupComboBox
          Left = 180
          Top = 84
          Width = 172
          Height = 22
          Hint = 'No MGV6 ir nas configura'#231#245'es da loja e ativar as 3 op'#231#245'es TARA'
          DataField = 'tar_001'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'tar_001'
          ListField = 'descricao'
          ListSource = dsListaTara
          NullValueKey = 46
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
      end
      object AdvGroupBox12: TAdvGroupBox
        Left = 3
        Top = 6
        Width = 630
        Height = 261
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        TabStop = True
        object Label1: TLabel
          Left = 7
          Top = 2
          Width = 12
          Height = 16
          Caption = 'ID'
          FocusControl = cxDBTextEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelUnidade: TLabel
          Left = 4
          Top = 136
          Width = 110
          Height = 16
          Caption = 'Unidade de medida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 89
          Top = 2
          Width = 39
          Height = 16
          Caption = 'C'#243'digo'
          FocusControl = edCodRef
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 229
          Top = 2
          Width = 55
          Height = 16
          Caption = 'Categoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 7
          Top = 41
          Width = 55
          Height = 16
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbTempo: TLabel
          Left = 320
          Top = 136
          Width = 111
          Height = 16
          Caption = 'Tempo de preparo '
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 214
          Top = 136
          Width = 100
          Height = 16
          Caption = 'Tipo de produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 4
          Top = 87
          Width = 65
          Height = 16
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 459
          Top = 136
          Width = 140
          Height = 16
          Caption = 'Impressora de produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 459
          Top = 2
          Width = 98
          Height = 16
          Caption = 'Setor de estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edCodRef: TcxDBTextEdit
          Left = 90
          Top = 18
          AutoSize = False
          DataBinding.DataField = 'mat_004'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Height = 24
          Width = 133
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 4
          Top = 18
          TabStop = False
          AutoSize = False
          DataBinding.DataField = 'mat_001'
          DataBinding.DataSource = dsDetalhe
          ParentColor = True
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 24
          Width = 72
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 4
          Top = 57
          DataBinding.DataField = 'mat_003'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 617
        end
        object DBEdit1: TDBEdit
          Left = 320
          Top = 156
          Width = 133
          Height = 22
          DataField = 'tempo_producao'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 229
          Top = 18
          Width = 191
          Height = 22
          DataField = 'cat_001'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cat_001'
          ListField = 'descr'
          ListSource = dsListaCategoria
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 4
          Top = 156
          Width = 168
          Height = 22
          DataField = 'uni_001'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'uni_001'
          ListField = 'descr'
          ListSource = dsqrListaUnidadeMedida
          NullValueKey = 46
          ParentFont = False
          TabOrder = 9
        end
        object btIncluirCategoria: TAdvGlowButton
          Left = 426
          Top = 18
          Width = 27
          Height = 24
          Hint = 'Incluir categoria'
          ImageIndex = 2
          Images = frmMenu.ImgList16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btIncluirCategoriaClick
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
        end
        object btIncluirUnidadeMedida: TAdvGlowButton
          Left = 177
          Top = 156
          Width = 27
          Height = 24
          Hint = 'Incluir unidade de medida'
          ImageIndex = 2
          Images = frmMenu.ImgList16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btIncluirUnidadeMedidaClick
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
        end
        object cbTipoProducao: TJvDBComboBox
          Left = 214
          Top = 156
          Width = 100
          Height = 24
          DataField = 'tipo_producao'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Pr'#243'prio'
            'Terceiros')
          ParentFont = False
          TabOrder = 11
          Values.Strings = (
            'P'
            'T')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object Btcodigofornecedor: TcxDBButtonEdit
          Tag = -1
          Left = 4
          Top = 105
          AutoSize = False
          DataBinding.DataField = 'id_fornecedor'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisafornecedor
              Default = True
              Kind = bkGlyph
            end>
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
          TabOrder = 6
          Height = 27
          Width = 100
        end
        object btIncluirfornecedor: TAdvGlowButton
          Left = 109
          Top = 105
          Width = 27
          Height = 27
          Hint = 'Incluir fornecedor'
          ImageIndex = 2
          Images = frmMenu.ImgList16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btIncluirfornecedorClick
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
        end
        object DBEdit3: TDBEdit
          Left = 147
          Top = 105
          Width = 474
          Height = 25
          DataField = 'nome_fantasia'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object CBImpressora: TJvDBComboBox
          Left = 459
          Top = 156
          Width = 162
          Height = 24
          DataField = 'mat_021'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Nenhum'
            'Balc'#227'o'
            'Cozinha'
            'Bar'
            'Salao'
            'Ambiente')
          ParentFont = False
          TabOrder = 13
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbSetor: TDBLookupComboBox
          Left = 459
          Top = 18
          Width = 162
          Height = 22
          DataField = 'id_setor'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'id_setor'
          ListField = 'descricao'
          ListSource = dsListaSetor
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 4
          Top = 184
          Caption = 'Permite alterar valor unit'#225'rio do produto'
          DataBinding.DataField = 'b_exige_alterar_preco_venda'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 14
          Transparent = True
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 4
          Top = 206
          Caption = 'Exige o m'#237'nimo de 70% do valor unit'#225'rio na venda'
          DataBinding.DataField = 'b_exige_70pc_valor_unit'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
        end
        object ckSituacao: TcxCheckBox
          Left = 459
          Top = 184
          Caption = 'Situa'#231#227'o do produto'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleFocused.BorderColor = clMenuText
          StyleFocused.TextColor = clMenu
          TabOrder = 16
          Transparent = True
          OnClick = cxCheckBox1Click
        end
        object ckCombo: TcxDBCheckBox
          Left = 4
          Top = 229
          Caption = 'Produto utiliza combo'
          DataBinding.DataField = 'utiliza_combo'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 17
        end
      end
      object AdvGroupBox13: TAdvGroupBox
        Left = 381
        Top = 396
        Width = 521
        Height = 122
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Happy Hour'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        TabStop = True
        object lblHH_Inicial: TLabel
          Left = 10
          Top = 98
          Width = 79
          Height = 16
          Caption = 'Hor'#225'rio Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblHH_Final: TLabel
          Left = 196
          Top = 98
          Width = 73
          Height = 16
          Caption = 'Hor'#225'rio Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object lblHH_Valor: TLabel
          Left = 373
          Top = 98
          Width = 30
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object grHH_Ativos: TAdvGroupBox
          Left = 5
          Top = 33
          Width = 300
          Height = 56
          BorderColor = clNavy
          RoundEdges = True
          Caption = 'Dias ativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          object cxDBCheckBox5: TcxDBCheckBox
            Left = 2
            Top = 15
            Caption = 'Segunda'
            DataBinding.DataField = 'hh_dia_seg'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckSegundaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 0
          end
          object cxDBCheckBox6: TcxDBCheckBox
            Left = 2
            Top = 33
            Caption = 'Ter'#231'a'
            DataBinding.DataField = 'hh_dia_ter'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckTercaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 1
          end
          object cxDBCheckBox7: TcxDBCheckBox
            Left = 84
            Top = 15
            Caption = 'Quarta'
            DataBinding.DataField = 'hh_dia_qua'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckQuartaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 2
          end
          object cxDBCheckBox8: TcxDBCheckBox
            Left = 84
            Top = 33
            Caption = 'Quinta'
            DataBinding.DataField = 'hh_dia_qui'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckQuintaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 3
          end
          object cxDBCheckBox9: TcxDBCheckBox
            Left = 155
            Top = 15
            Caption = 'Sexta'
            DataBinding.DataField = 'hh_dia_sex'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckSextaPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 4
          end
          object cxDBCheckBox10: TcxDBCheckBox
            Left = 155
            Top = 33
            Caption = 'S'#225'bado'
            DataBinding.DataField = 'hh_dia_sab'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckSabadoPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 5
          end
          object cxDBCheckBox11: TcxDBCheckBox
            Left = 224
            Top = 15
            Caption = 'Domingo'
            DataBinding.DataField = 'hh_dia_dom'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Properties.OnChange = ckDomingoPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 6
          end
        end
        object grHH_Tipo: TAdvGroupBox
          Left = 308
          Top = 33
          Width = 208
          Height = 56
          BorderColor = clNavy
          RoundEdges = True
          Caption = 'Tipo de venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Visible = False
          object cxDBCheckBox17: TcxDBCheckBox
            Left = 3
            Top = 15
            Caption = 'Mesa'
            DataBinding.DataField = 'hh_tipo_mesa'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 0
          end
          object cxDBCheckBox18: TcxDBCheckBox
            Left = 84
            Top = 15
            Caption = 'Delivery'
            DataBinding.DataField = 'hh_tipo_delivery'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 2
          end
          object cxDBCheckBox19: TcxDBCheckBox
            Left = 3
            Top = 33
            Caption = 'Comanda'
            DataBinding.DataField = 'hh_tipo_comanda'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 1
          end
          object cxDBCheckBox20: TcxDBCheckBox
            Left = 84
            Top = 33
            Caption = 'Balc'#227'o'
            DataBinding.DataField = 'hh_tipo_balcao'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 3
          end
          object cxDBCheckBox21: TcxDBCheckBox
            Left = 159
            Top = 15
            Caption = 'PDV'
            DataBinding.DataField = 'hh_tipo_pdv'
            DataBinding.DataSource = dsDetalhe
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 4
          end
        end
        object ckAtivaHappyHour: TcxDBCheckBox
          Left = 7
          Top = 12
          Caption = 'Ativar Happy Hour'
          DataBinding.DataField = 'hh_ativar'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.OnChange = ckAtivaHappyHourPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object edHH_Valor: TcxDBCurrencyEdit
          Left = 409
          Top = 93
          DataBinding.DataField = 'hh_valor'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Visible = False
          OnKeyPress = cxDBCurrencyEdit16KeyPress
          Width = 103
        end
        object edHH_Inicial: TcxDBTimeEdit
          Left = 95
          Top = 93
          DataBinding.DataField = 'hh_inicial'
          DataBinding.DataSource = dsDetalhe
          Properties.TimeFormat = tfHourMin
          Style.TextStyle = []
          TabOrder = 3
          Visible = False
          Width = 80
        end
        object edHH_Final: TcxDBTimeEdit
          Left = 274
          Top = 93
          DataBinding.DataField = 'hh_final'
          DataBinding.DataSource = dsDetalhe
          Properties.TimeFormat = tfHourMin
          Style.TextStyle = []
          TabOrder = 4
          Visible = False
          Width = 80
        end
      end
    end
    object pgFiscal: TAdvTabSheet
      Caption = 'Informa'#231#245'es Fiscais'
      Color = 14997705
      ColorTo = 12691076
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      object AdvGroupBox1: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 733
        Height = 78
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'Classifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 19
          Top = 19
          Width = 26
          Height = 16
          Caption = 'NCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 136
          Top = 19
          Width = 31
          Height = 16
          Caption = 'CEST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCNPJ: TLabel
          Left = 415
          Top = 22
          Width = 92
          Height = 16
          Caption = 'CNPJ Fabricante'
          FocusControl = edCNPJ
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btAtualizaImpostos: TAdvGlowButton
          Left = 574
          Top = 33
          Width = 148
          Height = 32
          Caption = '+ Atualiza Impostos'
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
          TabOrder = 2
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
          Enabled = False
        end
        object edNCM: TcxDBButtonEdit
          Tag = -1
          Left = 19
          Top = 41
          AutoSize = False
          DataBinding.DataField = 'ncm'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisaNCM
              Default = True
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 21
          Width = 111
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Tag = -1
          Left = 136
          Top = 41
          AutoSize = False
          DataBinding.DataField = 'cest'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisaCEST
              Default = True
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Height = 21
          Width = 111
        end
        object ckEscala: TcxDBCheckBox
          Left = 258
          Top = 41
          Caption = 'Escala N'#195'O Relevante'
          DataBinding.DataField = 'nao_relevante'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.OnChange = ckEscalaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Transparent = True
        end
        object edCNPJ: TcxDBTextEdit
          Left = 415
          Top = 41
          DataBinding.DataField = 'cnpj_fabricante'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyPress = edCNPJKeyPress
          Width = 147
        end
      end
      object AdvGroupBox2: TAdvGroupBox
        Left = 3
        Top = 87
        Width = 733
        Height = 194
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label22: TLabel
          Left = 19
          Top = 25
          Width = 42
          Height = 16
          Caption = 'Origem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 19
          Top = 81
          Width = 41
          Height = 16
          Caption = 'CSOSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 19
          Top = 109
          Width = 47
          Height = 16
          Caption = 'CST PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 19
          Top = 137
          Width = 72
          Height = 16
          Caption = 'CST COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 19
          Top = 53
          Width = 61
          Height = 16
          Caption = 'CFT (CST)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 19
          Top = 165
          Width = 78
          Height = 16
          Caption = 'Al'#237'quotas (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 122
          Top = 166
          Width = 30
          Height = 16
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 237
          Top = 166
          Width = 83
          Height = 16
          Caption = 'Redu'#231#227'o ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 407
          Top = 166
          Width = 19
          Height = 16
          Caption = 'PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 510
          Top = 166
          Width = 44
          Height = 16
          Caption = 'COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 98
          Top = 22
          Width = 523
          Height = 22
          DataField = 'orm_codigo'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'orm_codigo'
          ListField = 'descr'
          ListSource = dsListaOrigemMercadoria
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 98
          Top = 50
          Width = 523
          Height = 22
          DataField = 'cst_consumidor'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'icm_codigo'
          ListField = 'descr'
          ListSource = dsListaCSTICMS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 98
          Top = 78
          Width = 523
          Height = 22
          DataField = 'cso_codigo'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cso_codigo'
          ListField = 'descr'
          ListSource = dsListaCSOSNICMS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 98
          Top = 106
          Width = 523
          Height = 22
          DataField = 'pis_codigo_saida'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'pis_codigo'
          ListField = 'descr'
          ListSource = dsListaCSTPIS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 97
          Top = 134
          Width = 523
          Height = 22
          DataField = 'cof_codigo_saida'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cof_codigo'
          ListField = 'descr'
          ListSource = dsListaCSTCofins
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
        end
        object cxDBCurrencyEdit18: TcxDBCurrencyEdit
          Left = 159
          Top = 162
          DataBinding.DataField = 'icms'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DisplayFormat = '0.00;-0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyPress = cxDBCurrencyEdit18KeyPress
          Width = 60
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 327
          Top = 162
          DataBinding.DataField = 'redbasecalcicms'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DisplayFormat = '0.00;-0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyPress = cxDBCurrencyEdit18KeyPress
          Width = 60
        end
        object cxDBCurrencyEdit20: TcxDBCurrencyEdit
          Left = 432
          Top = 162
          DataBinding.DataField = 'pis'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DisplayFormat = '0.00;-0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          OnKeyPress = cxDBCurrencyEdit18KeyPress
          Width = 60
        end
        object cxDBCurrencyEdit21: TcxDBCurrencyEdit
          Left = 560
          Top = 162
          DataBinding.DataField = 'cofins'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DisplayFormat = '0.00;-0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          OnKeyPress = cxDBCurrencyEdit18KeyPress
          Width = 60
        end
      end
      object btDefinirFiscalIsento: TAdvGlowButton
        Left = 328
        Top = 501
        Width = 112
        Height = 39
        Caption = 'Definir Isento'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btDefinirFiscalIsentoClick
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
      end
      object btDefinirFiscalTributado: TAdvGlowButton
        Left = 460
        Top = 501
        Width = 114
        Height = 39
        Caption = 'Definir Tributado'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btDefinirFiscalTributadoClick
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
      end
      object btDefinirFiscalST: TAdvGlowButton
        Left = 593
        Top = 501
        Width = 111
        Height = 39
        Caption = 'Definir ST'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btDefinirFiscalSTClick
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
      end
      object AdvGroupBox8: TAdvGroupBox
        Left = 3
        Top = 281
        Width = 733
        Height = 194
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object JvLabel2: TJvLabel
          Left = 10
          Top = 25
          Width = 91
          Height = 16
          Caption = 'CFOP de Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel1: TJvLabel
          Left = 10
          Top = 53
          Width = 178
          Height = 16
          Caption = 'CFOP de Venda fora do estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel3: TJvLabel
          Left = 10
          Top = 81
          Width = 113
          Height = 16
          Caption = 'CFOP de Devolu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel4: TJvLabel
          Left = 10
          Top = 109
          Width = 200
          Height = 16
          Caption = 'CFOP de Devolu'#231#227'o fora do estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel5: TJvLabel
          Left = 10
          Top = 137
          Width = 103
          Height = 16
          Caption = 'CFOP de Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel6: TJvLabel
          Left = 10
          Top = 165
          Width = 190
          Height = 16
          Caption = 'CFOP de Garantia fora do estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 214
          Top = 22
          Width = 407
          Height = 22
          DataField = 'cfop_consumidor'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cfop_codigo'
          ListField = 'descr'
          ListSource = dslistacfop
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 214
          Top = 50
          Width = 407
          Height = 22
          DataField = 'cfop_venda_outra_uf'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cfop_codigo'
          ListField = 'descr'
          ListSource = dslistacfop
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 214
          Top = 78
          Width = 407
          Height = 22
          DataField = 'cfop_devolucao'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cfop_codigo'
          ListField = 'descr'
          ListSource = dslistacfop
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 214
          Top = 106
          Width = 407
          Height = 22
          DataField = 'cfop_devolucao_outra_uf'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cfop_codigo'
          ListField = 'descr'
          ListSource = dslistacfop
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
        end
        object DBLookupComboBox12: TDBLookupComboBox
          Left = 214
          Top = 134
          Width = 407
          Height = 22
          DataField = 'cfop_garantia'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cfop_codigo'
          ListField = 'descr'
          ListSource = dslistacfop
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupComboBox13: TDBLookupComboBox
          Left = 214
          Top = 162
          Width = 407
          Height = 22
          DataField = 'cfop_garantia_outra_uf'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'cfop_codigo'
          ListField = 'descr'
          ListSource = dslistacfop
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
        end
      end
      object AdvGroupBox9: TAdvGroupBox
        Left = 3
        Top = 475
        Width = 250
        Height = 64
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'Outros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object JvLabel7: TJvLabel
          Left = 10
          Top = 18
          Width = 68
          Height = 16
          Caption = 'C'#243'digo ANP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel8: TJvLabel
          Left = 127
          Top = 18
          Width = 108
          Height = 16
          Caption = 'Peso KG (Vl. Part.)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object DBEdit2: TDBEdit
          Left = 10
          Top = 36
          Width = 105
          Height = 22
          DataField = 'codigo_anp'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 127
          Top = 36
          DataBinding.DataField = 'peso_partida_anp'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.000'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 112
        end
      end
    end
    object pgComposicao: TAdvTabSheet
      Caption = 'Composi'#231#227'o'
      Color = 14997705
      ColorTo = 12691076
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      DesignSize = (
        907
        544)
      object cxGrid1: TcxGrid
        Left = 3
        Top = 89
        Width = 750
        Height = 362
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 748
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsProdutoComposicao
          DataController.MultiThreadedOptions.Filtering = bFalse
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnAddValueItems = False
          Filtering.ColumnMRUItemsList = False
          OptionsSelection.HideSelection = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1id_composicao: TcxGridDBColumn
            DataBinding.FieldName = 'id_composicao'
            Width = 63
          end
          object cxGrid1DBTableView1descricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            Width = 358
          end
          object cxGrid1DBTableView1quantidade: TcxGridDBColumn
            DataBinding.FieldName = 'quantidade'
            Width = 66
          end
          object cxGrid1DBTableView1unidade: TcxGridDBColumn
            DataBinding.FieldName = 'unidade'
            Width = 57
          end
          object cxGrid1DBTableView1custo_unitario: TcxGridDBColumn
            DataBinding.FieldName = 'custo_unitario'
            Width = 108
          end
          object cxGrid1DBTableView1total_custo: TcxGridDBColumn
            DataBinding.FieldName = 'total_custo'
            Width = 103
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Action = acDeletaItemComposicao
                Default = True
                Kind = bkEllipsis
              end>
            Options.ShowEditButtons = isebAlways
            Width = 26
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object AdvGroupBox6: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 750
        Height = 80
        BorderColor = clNavy
        RoundEdges = True
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Busca Ingrediente / Item de Composi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 748
        object DBText1: TDBText
          Left = 346
          Top = 47
          Width = 200
          Height = 16
          DataField = 'descricao'
          DataSource = dsBuscaItemComposicao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 99
          Top = 22
          Width = 65
          Height = 16
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 13
          Top = 22
          Width = 39
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 217
          Top = 47
          Width = 46
          Height = 16
          DataField = 'unidade'
          DataSource = dsBuscaItemComposicao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 217
          Top = 22
          Width = 46
          Height = 16
          Caption = 'Unidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 274
          Top = 22
          Width = 61
          Height = 16
          Caption = 'Custo unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 274
          Top = 47
          Width = 47
          Height = 16
          AutoSize = True
          DataField = 'custo_unitario'
          DataSource = dsBuscaItemComposicao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 346
          Top = 22
          Width = 26
          Height = 16
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edCodItemBusca: TcxButtonEdit
          Left = 13
          Top = 44
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisaItemComposicao
              Default = True
              Kind = bkGlyph
            end>
          Properties.ClickKey = 0
          Properties.Images = frmMenu.ImgList16
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnExit = edCodItemBuscaExit
          OnKeyPress = edCodItemBuscaKeyPress
          Width = 80
        end
        object edQuantidade: TJvValidateEdit
          Tag = 1
          Left = 99
          Top = 44
          Width = 70
          Height = 24
          Flat = False
          ParentFlat = False
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloatFixed
          DecimalPlaces = 3
          EditText = '0,000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HasMaxValue = True
          HasMinValue = True
          MaxValue = 999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DataConnector.DataSource = JvdsBuscaItemComposicao
          DataConnector.DataField = 'quantidade'
        end
        object btInserirItemComposicao: TAdvGlowButton
          Left = 175
          Top = 38
          Width = 36
          Height = 30
          Hint = 'Inserir item'
          ImageIndex = 83
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          TabStop = True
          OnClick = btInserirItemComposicaoClick
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
        end
      end
      object AdvGroupBox7: TAdvGroupBox
        Left = 3
        Top = 457
        Width = 449
        Height = 85
        BorderColor = clNavy
        RoundEdges = True
        Anchors = [akLeft, akBottom]
        Caption = 'Composi'#231#227'o do pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label19: TLabel
          Left = 276
          Top = 21
          Width = 57
          Height = 16
          Caption = 'Lucro (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 10
          Top = 21
          Width = 82
          Height = 16
          Caption = 'Valor de custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 339
          Top = 21
          Width = 86
          Height = 16
          Caption = 'Valor de venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 116
          Top = 21
          Width = 143
          Height = 16
          Caption = 'Custo ingr. (composi'#231#227'o)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 10
          Top = 43
          DataBinding.DataField = 'mat_012'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 100
        end
        object cxDBCurrencyEdit9: TcxDBCurrencyEdit
          Left = 276
          Top = 43
          DataBinding.DataField = 'mat_018'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 57
        end
        object cxDBCurrencyEdit10: TcxDBCurrencyEdit
          Left = 339
          Top = 43
          DataBinding.DataField = 'mat_008'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.EditFormat = '0.00'
          Style.Color = 3342335
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 86
        end
        object cxDBCurrencyEdit11: TcxDBCurrencyEdit
          Left = 116
          Top = 43
          TabStop = False
          DataBinding.DataField = 'mat_006'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.EditFormat = '0.00'
          Properties.ReadOnly = True
          Style.Color = 14997705
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 143
        end
      end
    end
    object pgOpcionais: TAdvTabSheet
      Caption = 'Opcionais'
      Color = 14997705
      ColorTo = clNone
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      DesignSize = (
        907
        544)
      object AdvGroupBox10: TAdvGroupBox
        Left = 7
        Top = 11
        Width = 900
        Height = 80
        BorderColor = clNavy
        RoundEdges = True
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Pesquisa Opcional'
        Color = 14997705
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 898
        object Label42: TLabel
          Left = 13
          Top = 22
          Width = 43
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 199
          Top = 44
          Width = 184
          Height = 16
          DataField = 'descricao'
          DataSource = dsBuscaItemOpc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 199
          Top = 22
          Width = 63
          Height = 16
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 389
          Top = 22
          Width = 34
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 389
          Top = 44
          Width = 47
          Height = 16
          AutoSize = True
          DataField = 'valor'
          DataSource = dsBuscaItemOpc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edCodOpcBusca: TcxButtonEdit
          Left = 13
          Top = 44
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisaOpc
              Default = True
              Kind = bkGlyph
            end>
          Properties.ClickKey = 0
          Properties.Images = frmMenu.ImgList16
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnExit = edCodOpcBuscaExit
          OnKeyPress = edCodOpcBuscaKeyPress
          Width = 80
        end
        object btInserirOpc: TAdvGlowButton
          Left = 99
          Top = 38
          Width = 36
          Height = 30
          Hint = 'Inserir opcional'
          ImageIndex = 83
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          TabStop = True
          OnClick = btInserirOpcClick
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
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 97
        Width = 911
        Height = 448
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 909
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsProdutoOpc
          DataController.MultiThreadedOptions.Filtering = bFalse
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnAddValueItems = False
          Filtering.ColumnMRUItemsList = False
          OptionsSelection.HideSelection = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1id_opcional: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'id_opcional'
          end
          object cxGridDBTableView1descricao: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'descricao'
          end
          object cxGridDBTableView1valor: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'valor'
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Action = acDeletaItemOpc
                Default = True
                Kind = bkGlyph
              end>
            Properties.Images = frmMenu.ImgList16
            Options.ShowEditButtons = isebAlways
            Width = 26
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object pgImagem: TAdvTabSheet
      Caption = 'Imagem do produto'
      Color = 14997705
      ColorTo = 12691076
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      DesignSize = (
        907
        544)
      object DBCtrlGridImagens: TDBCtrlGrid
        Left = 156
        Top = 11
        Width = 739
        Height = 520
        Anchors = [akLeft, akTop, akRight, akBottom]
        ColCount = 6
        DataSource = dsImagens
        PanelBorder = gbNone
        PanelHeight = 104
        PanelWidth = 120
        TabOrder = 0
        RowCount = 5
        SelectedColor = clWhite
        OnClick = DBCtrlGridImagensClick
        OnPaintPanel = DBCtrlGridImagensPaintPanel
        ExplicitWidth = 737
        object imgProdutoLista: TImage
          Left = 0
          Top = 0
          Width = 120
          Height = 104
          Align = alClient
          Center = True
          OnClick = DBCtrlGridImagensClick
          ExplicitLeft = 64
          ExplicitTop = 24
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
      object AdvGroupBox11: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 147
        Height = 145
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Imagem Selecionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object imgProduto2: TImage
          Left = 9
          Top = 23
          Width = 128
          Height = 113
          Center = True
        end
      end
      object btAbrirPastaImagens: TAdvGlowButton
        AlignWithMargins = True
        Left = 3
        Top = 232
        Width = 147
        Height = 41
        Hint = 'Abrir registro'
        Margins.Right = 5
        Caption = 'Abrir pasta de imagens'
        ImageIndex = 25
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btAbrirPastaImagensClick
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
      object memInfoImagens: TMemo
        Left = 3
        Top = 154
        Width = 147
        Height = 72
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Formato obrigat'#243'rio: PNG'
          'Dimens'#245'es ideais: 64 x 64'
          'Pasta de imagens:'
          '%s')
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object advtbsht1: TAdvTabSheet
      Caption = 'Gr'#225'fico de vendas'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      DesignSize = (
        907
        544)
      object grpGrafico: TAdvGroupBox
        Left = 0
        Top = 0
        Width = 904
        Height = 588
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Quantidade vendida por per'#237'odo'
        Color = 12691076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 902
        object lbl1: TLabel
          Left = 128
          Top = 120
          Width = 147
          Height = 16
          Align = alCustom
          Alignment = taCenter
          Caption = '<Sem dados para exibir>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBChart1: TDBChart
          Left = 2
          Top = 19
          Width = 900
          Height = 567
          Title.Text.Strings = (
            'TDBChart')
          Title.Visible = False
          View3D = False
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Zoom.KeepAspectRatio = True
          Align = alClient
          BevelOuter = bvNone
          Color = 12691076
          TabOrder = 0
          ExplicitWidth = 898
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            15
            -54
            15
            -54)
          ColorPaletteIndex = 13
          object psrsSeries1: TPieSeries
            Legend.Visible = False
            Marks.Emboss.Color = 8487297
            Marks.Shadow.Color = 8618883
            Marks.Shadow.Visible = False
            Marks.Style = smsLabelValue
            Marks.Arrow.Color = clBlack
            Marks.Callout.Arrow.Color = clBlack
            DataSource = qrGraficoProdutosVendidos
            ShowInLegend = False
            XLabelsSource = 'mes_ano'
            XValues.Order = loAscending
            YValues.Name = 'Pie'
            YValues.Order = loNone
            YValues.ValueSource = 'qtde_total_item'
            Frame.InnerBrush.BackColor = clRed
            Frame.InnerBrush.Gradient.EndColor = clGray
            Frame.InnerBrush.Gradient.MidColor = clWhite
            Frame.InnerBrush.Gradient.StartColor = 4210752
            Frame.InnerBrush.Gradient.Visible = True
            Frame.MiddleBrush.BackColor = clYellow
            Frame.MiddleBrush.Gradient.EndColor = 8553090
            Frame.MiddleBrush.Gradient.MidColor = clWhite
            Frame.MiddleBrush.Gradient.StartColor = clGray
            Frame.MiddleBrush.Gradient.Visible = True
            Frame.OuterBrush.BackColor = clGreen
            Frame.OuterBrush.Gradient.EndColor = 4210752
            Frame.OuterBrush.Gradient.MidColor = clWhite
            Frame.OuterBrush.Gradient.StartColor = clSilver
            Frame.OuterBrush.Gradient.Visible = True
            Frame.Width = 4
            Gradient.Direction = gdTopBottom
            OtherSlice.Legend.Visible = False
          end
        end
      end
    end
    object tsPromocao: TAdvTabSheet
      Caption = 'Promo'#231#227'o'
      Color = 14997705
      ColorTo = clNone
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      object grDias: TAdvGroupBox
        Left = 5
        Top = -1
        Width = 342
        Height = 84
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'Dias ativos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ckSegunda: TcxDBCheckBox
          Left = 10
          Top = 24
          Caption = 'Segunda'
          DataBinding.DataField = 'dia_seg'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckSegundaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object ckTerca: TcxDBCheckBox
          Left = 10
          Top = 54
          Caption = 'Ter'#231'a'
          DataBinding.DataField = 'dia_ter'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckTercaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 1
        end
        object ckQuarta: TcxDBCheckBox
          Left = 106
          Top = 24
          Caption = 'Quarta'
          DataBinding.DataField = 'dia_qua'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckQuartaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 2
        end
        object ckQuinta: TcxDBCheckBox
          Left = 106
          Top = 54
          Caption = 'Quinta'
          DataBinding.DataField = 'dia_qui'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckQuintaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 3
        end
        object ckSexta: TcxDBCheckBox
          Left = 186
          Top = 24
          Caption = 'Sexta'
          DataBinding.DataField = 'dia_sex'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckSextaPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 4
        end
        object ckSabado: TcxDBCheckBox
          Left = 186
          Top = 54
          Caption = 'S'#225'bado'
          DataBinding.DataField = 'dia_sab'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckSabadoPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 5
        end
        object ckDomingo: TcxDBCheckBox
          Left = 259
          Top = 24
          Caption = 'Domingo'
          DataBinding.DataField = 'dia_dom'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.OnChange = ckDomingoPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 6
        end
      end
      object grTipoVenda: TAdvGroupBox
        Left = 353
        Top = -1
        Width = 342
        Height = 84
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'Tipo de venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object cxDBCheckBox12: TcxDBCheckBox
          Left = 6
          Top = 23
          Caption = 'Mesa'
          DataBinding.DataField = 'tipo_mesa'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object cxDBCheckBox13: TcxDBCheckBox
          Left = 146
          Top = 24
          Caption = 'Delivery'
          DataBinding.DataField = 'tipo_delivery'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 2
        end
        object cxDBCheckBox14: TcxDBCheckBox
          Left = 66
          Top = 24
          Caption = 'Comanda'
          DataBinding.DataField = 'tipo_comanda'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 1
        end
        object cxDBCheckBox15: TcxDBCheckBox
          Left = 219
          Top = 24
          Caption = 'Balc'#227'o'
          DataBinding.DataField = 'tipo_balcao'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 3
        end
        object cxDBCheckBox16: TcxDBCheckBox
          Left = 286
          Top = 24
          Caption = 'PDV'
          DataBinding.DataField = 'tipo_pdv'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 4
        end
      end
      object grTipoDesconto: TAdvGroupBox
        Left = 701
        Top = -1
        Width = 162
        Height = 84
        BorderColor = clNavy
        RoundEdges = True
        Caption = 'Tipo Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object rgTipoDesconto: TcxDBRadioGroup
          Left = 4
          Top = 4
          DataBinding.DataField = 'tipo_desconto'
          DataBinding.DataSource = dsPromocao
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'Percentual'
              Value = 0
            end
            item
              Caption = 'Valor'
              Value = 1
            end>
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 66
          Width = 108
        end
      end
      object grAgrupamento: TAdvGroupBox
        Left = 3
        Top = 89
        Width = 905
        Height = 192
        BorderColor = clNavy
        BorderStyle = bsNone
        RoundEdges = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object grTamanhosProm: TAdvGroupBox
          Left = 2
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Tamanhos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object edTamanhoP: TcxDBTextEdit
            Left = 6
            Top = 46
            TabStop = False
            DataBinding.DataField = 'tamanho_p'
            DataBinding.DataSource = dsDescTamanhoMaterial
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnKeyPress = cxDBTextEdit2KeyPress
            Width = 90
          end
          object edTamanhoM: TcxDBTextEdit
            Left = 6
            Top = 74
            TabStop = False
            DataBinding.DataField = 'tamanho_m'
            DataBinding.DataSource = dsDescTamanhoMaterial
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnKeyPress = cxDBTextEdit3KeyPress
            Width = 90
          end
          object edTamanhoG: TcxDBTextEdit
            Left = 6
            Top = 102
            TabStop = False
            DataBinding.DataField = 'tamanho_g'
            DataBinding.DataSource = dsDescTamanhoMaterial
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            OnKeyPress = cxDBTextEdit4KeyPress
            Width = 90
          end
          object edTamanhoGG: TcxDBTextEdit
            Left = 6
            Top = 130
            TabStop = False
            DataBinding.DataField = 'tamanho_gg'
            DataBinding.DataSource = dsDescTamanhoMaterial
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            OnKeyPress = cxDBTextEdit5KeyPress
            Width = 90
          end
          object edTamanhoExtra: TcxDBTextEdit
            Left = 6
            Top = 158
            TabStop = False
            DataBinding.DataField = 'tamanho_extra'
            DataBinding.DataSource = dsDescTamanhoMaterial
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            OnKeyPress = cxDBTextEdit6KeyPress
            Width = 90
          end
          object edTamanhoPadrao: TEdit
            Left = 6
            Top = 18
            Width = 90
            Height = 22
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = 'UNICO'
          end
        end
        object grSegunda: TAdvGroupBox
          Left = 104
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Segunda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          object eddesconto_seg_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_seg_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_seg_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_seg_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_seg_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_seg_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_seg_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_seg_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_seg_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_seg_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_seg_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 158
            DataBinding.DataField = 'desconto_seg_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
        object grTerca: TAdvGroupBox
          Left = 206
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Ter'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Visible = False
          object eddesconto_ter_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_ter_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_ter_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_ter_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_ter_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_ter_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_ter_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_ter_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_ter_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_ter_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_ter_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 158
            DataBinding.DataField = 'desconto_ter_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
        object grQuarta: TAdvGroupBox
          Left = 308
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Quarta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          object eddesconto_qua_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_qua_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_qua_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_qua_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_qua_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_qua_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_qua_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_qua_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_qua_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_qua_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_qua_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 158
            DataBinding.DataField = 'desconto_qua_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
        object grQuinta: TAdvGroupBox
          Left = 410
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Quinta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
          object eddesconto_qui_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_qui_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_qui_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_qui_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_qui_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_qui_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_qui_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_qui_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_qui_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_qui_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_qui_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 158
            DataBinding.DataField = 'desconto_qui_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
        object grSexta: TAdvGroupBox
          Left = 512
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Sexta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Visible = False
          object eddesconto_sex_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_sex_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_sex_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_sex_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_sex_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_sex_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_sex_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_sex_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_sex_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_sex_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_sex_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 160
            DataBinding.DataField = 'desconto_sex_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
        object grSabado: TAdvGroupBox
          Left = 614
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'S'#225'bado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
          object eddesconto_sab_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_sab_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_sab_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_sab_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_sab_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_sab_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_sab_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_sab_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_sab_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_sab_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_sab_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 158
            DataBinding.DataField = 'desconto_sab_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
        object grDomingo: TAdvGroupBox
          Left = 716
          Top = 3
          Width = 102
          Height = 187
          BorderColor = clNavy
          RoundEdges = True
          Align = alLeft
          Caption = 'Domingo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Visible = False
          object eddesconto_dom_padrao: TcxDBCurrencyEdit
            Left = 6
            Top = 18
            DataBinding.DataField = 'desconto_dom_padrao'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_dom_p: TcxDBCurrencyEdit
            Left = 6
            Top = 46
            DataBinding.DataField = 'desconto_dom_tam_p'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnKeyPress = cxDBCurrencyEdit12KeyPress
            Width = 90
          end
          object eddesconto_dom_m: TcxDBCurrencyEdit
            Left = 6
            Top = 74
            DataBinding.DataField = 'desconto_dom_tam_m'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            OnKeyPress = cxDBCurrencyEdit13KeyPress
            Width = 90
          end
          object eddesconto_dom_g: TcxDBCurrencyEdit
            Left = 6
            Top = 102
            DataBinding.DataField = 'desconto_dom_tam_g'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnKeyPress = cxDBCurrencyEdit14KeyPress
            Width = 90
          end
          object eddesconto_dom_gg: TcxDBCurrencyEdit
            Left = 6
            Top = 130
            DataBinding.DataField = 'desconto_dom_tam_gg'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnKeyPress = cxDBCurrencyEdit15KeyPress
            Width = 90
          end
          object eddesconto_dom_extra: TcxDBCurrencyEdit
            Left = 6
            Top = 158
            DataBinding.DataField = 'desconto_dom_tam_extra'
            DataBinding.DataSource = dsPromocao
            ParentFont = False
            Properties.EditFormat = '0.00'
            Properties.MaxValue = 99999999.990000000000000000
            Properties.ValidationOptions = [evoShowErrorIcon]
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            OnKeyPress = cxDBCurrencyEdit16KeyPress
            Width = 90
          end
        end
      end
    end
    object pgCombo: TAdvTabSheet
      Caption = 'Combo'
      Color = 14997705
      ColorTo = 12691076
      TabColor = 14997705
      TabColorTo = clNone
      ExplicitWidth = 905
      DesignSize = (
        907
        544)
      object AdvGroupBox4: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 832
        Height = 538
        BorderColor = clNavy
        RoundEdges = True
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Pesquisa produto para inserir no combo'
        Color = 14997705
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 830
        object Label7: TLabel
          Left = 3
          Top = 22
          Width = 43
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDescricao: TDBText
          Left = 146
          Top = 47
          Width = 379
          Height = 16
          DataField = 'descricao'
          DataSource = dsBuscaItemOpc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 146
          Top = 22
          Width = 63
          Height = 16
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 702
          Top = 25
          Width = 79
          Height = 16
          Caption = 'Valor Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 550
          Top = 25
          Width = 31
          Height = 16
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 619
          Top = 25
          Width = 75
          Height = 16
          Caption = 'Valor Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edCodProduto: TcxButtonEdit
          Left = 3
          Top = 42
          ParentFont = False
          Properties.Buttons = <
            item
              Action = acPesquisaproduto
              Default = True
              Kind = bkGlyph
            end>
          Properties.ClickKey = 0
          Properties.Images = frmMenu.ImgList16
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnExit = edCodProdutoExit
          Width = 138
        end
        object btInserir: TAdvGlowButton
          Left = 789
          Top = 35
          Width = 36
          Height = 34
          Hint = 'Inserir opcional'
          ImageIndex = 83
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          TabStop = True
          OnClick = btInserirClick
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
        end
        object edQuantidadecombo: TJvValidateEdit
          Left = 550
          Top = 44
          Width = 63
          Height = 25
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloatFixed
          DecimalPlaces = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          HasMaxValue = True
          MaxValue = 999.000000000000000000
          ParentFont = False
          TabOrder = 1
        end
        object edvalorvendacombo: TJvValidateEdit
          Left = 702
          Top = 44
          Width = 82
          Height = 25
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloatFixed
          DecimalPlaces = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          HasMaxValue = True
          HasMinValue = True
          MaxValue = 9999.990000000000000000
          ParentFont = False
          TabOrder = 2
          DataConnector.DataField = 'valor_unit'
        end
        object cxGrid3: TcxGrid
          Left = 3
          Top = 72
          Width = 824
          Height = 463
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsCombo
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1mat_004: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'mat_004'
              Width = 105
            end
            object cxGrid3DBTableView1mat_003: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'mat_003'
              Width = 410
            end
            object cxGrid3DBTableView1quantidade: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'quantidade'
            end
            object cxGrid3DBTableView1preco_custo: TcxGridDBColumn
              Caption = 'Pre'#231'o de Custo'
              DataBinding.FieldName = 'preco_custo'
              Width = 101
            end
            object cxGrid3DBTableView1preco_venda: TcxGridDBColumn
              Caption = 'Pre'#231'o Venda'
              DataBinding.FieldName = 'preco_venda'
              Width = 105
            end
            object cxGrid3DBTableView1Column1: TcxGridDBColumn
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Action = acDeletecombo
                  Default = True
                  Kind = bkGlyph
                end>
              Properties.Images = frmMenu.ImgList16
              Options.ShowEditButtons = isebAlways
              Width = 26
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object edvalorcustocombo: TJvValidateEdit
          Left = 619
          Top = 44
          Width = 77
          Height = 25
          TabStop = False
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloatFixed
          DecimalPlaces = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          HasMaxValue = True
          HasMinValue = True
          MaxValue = 9999.990000000000000000
          ParentFont = False
          TabOrder = 5
          DataConnector.DataField = 'valor_unit'
        end
      end
    end
  end
  object qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO materiais'
      
        '  (mat_001, emp_001, mat_002, mat_003, mat_004, uni_001, mat_005' +
        ', mat_007, mat_008, '
      
        '   mtp_001, mat_009, mat_010, mat_011, usu_001_1, usu_001_2, dat' +
        '_001_1, dat_001_2, mat_006, mat_012, '
      '   mat_013, mat_014, mat_015,   mat_017, cat_001, mat_018, '
      
        '   mat_019, mat_020, mat_021, orm_codigo, cfop_consumidor, cfop_' +
        'revendedor, icms, iva, '
      
        '   redbasecalcst, redbasecalcicms, cst_consumidor, cst_revendedo' +
        'r, ipi, pis_codigo, pis, cofins, '
      
        '   pis_codigo_entrada, pis_codigo_saida, cof_codigo_entrada, cof' +
        '_codigo_saida, ncm, cso_codigo,'
      
        '   mat_aliqmunicipal, mat_aliqestadual,mat_aliqfederal, tempo_pr' +
        'oducao, tipo_producao, '
      
        '   tamanho_padrao, valor_tam_p, valor_tam_m, valor_tam_g, valor_' +
        'tam_gg, b_venda_tamanho,'
      
        '   valor_tam_extra,b_peso_balanca, b_exporta_peso_balanca, cest,' +
        ' b_exige_alterar_preco_venda, sit_001,'
      
        '   dias_validade, tara_balanca,b_exige_70pc_valor_unit, cfop_ven' +
        'da_outra_uf, cfop_devolucao, '
      
        '   cfop_devolucao_outra_uf, cfop_garantia, cfop_garantia_outra_u' +
        'f, codigo_anp, arquivo_img,id_fornecedor, id_setor,'
      
        '   hh_ativar, hh_dia_seg, hh_dia_ter, hh_dia_qua, hh_dia_qui, hh' +
        '_dia_sex, hh_dia_sab, hh_dia_dom,'
      
        '   hh_tipo_mesa, hh_tipo_delivery, hh_tipo_comanda, hh_tipo_balc' +
        'ao, hh_tipo_pdv,'
      
        '   hh_inicial, hh_final, hh_valor, valor_tabela2, valor_atacado,' +
        ' utiliza_combo, tar_001,cnpj_fabricante,nao_relevante, peso_part' +
        'ida_anp)'
      'VALUES'
      
        '  (:mat_001, :emp_001, :mat_002, trim(:mat_003),  :mat_004, :uni' +
        '_001, :mat_005, :mat_007, :mat_008, '
      
        '   1, :mat_009, :mat_010, :mat_011, :usu_001_1, :usu_001_2, :dat' +
        '_001_1, :dat_001_2, :mat_006, :mat_012, '
      '   :mat_013, :mat_014, :mat_015, :mat_017, :cat_001, :mat_018, '
      
        '   :mat_019, :mat_020, :mat_021, :orm_codigo, :cfop_consumidor, ' +
        ':cfop_revendedor, :icms, :iva, '
      
        '   :redbasecalcst, :redbasecalcicms, :cst_consumidor, :cst_reven' +
        'dedor, :ipi, :pis_codigo, :pis, :cofins, '
      
        '   :pis_codigo_entrada, :pis_codigo_saida, :cof_codigo_entrada, ' +
        ':cof_codigo_saida, :ncm, :cso_codigo, '
      
        '   :mat_aliqmunicipal, :mat_aliqestadual, :mat_aliqfederal, :tem' +
        'po_producao, :tipo_producao, '
      
        '   :tamanho_padrao, :valor_tam_p,:valor_tam_m, :valor_tam_g, :va' +
        'lor_tam_gg, :b_venda_tamanho, '
      
        '   :valor_tam_extra,:b_peso_balanca, :b_exporta_peso_balanca, :c' +
        'est, :b_exige_alterar_preco_venda, :sit_001,'
      
        '   :dias_validade, :tara_balanca , :b_exige_70pc_valor_unit, :cf' +
        'op_venda_outra_uf, :cfop_devolucao, '
      
        '   :cfop_devolucao_outra_uf, :cfop_garantia, :cfop_garantia_outr' +
        'a_uf, :codigo_anp, :arquivo_img, :id_fornecedor, :id_setor,'
      
        '   :hh_ativar, :hh_dia_seg, :hh_dia_ter, :hh_dia_qua, :hh_dia_qu' +
        'i, :hh_dia_sex, :hh_dia_sab, :hh_dia_dom,'
      
        '   :hh_tipo_mesa, :hh_tipo_delivery, :hh_tipo_comanda, :hh_tipo_' +
        'balcao, :hh_tipo_pdv,'
      
        '   :hh_inicial, :hh_final, :hh_valor, :valor_tabela2, :valor_ata' +
        'cado, :utiliza_combo, :tar_001,:cnpj_fabricante,:nao_relevante, ' +
        ':peso_partida_anp)')
    SQLDelete.Strings = (
      'DELETE FROM materiais'
      'WHERE'
      '  mat_001 = :Old_mat_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE materiais'
      'SET'
      
        '  mat_001 = :mat_001, emp_001 = :emp_001, mat_002 = :mat_002, ma' +
        't_003 = trim(:mat_003), '
      
        '  mat_004 = :mat_004, uni_001 = :uni_001, mat_005 = :mat_005, ma' +
        't_007 = :mat_007, mat_008 = :mat_008, '
      
        '  mat_009 = :mat_009, mat_010 = :mat_010, mat_011 = :mat_011, us' +
        'u_001_1 = :usu_001_1, '
      
        '  usu_001_2 = :usu_001_2, dat_001_1 = :dat_001_1, dat_001_2 = :d' +
        'at_001_2, mat_006 = :mat_006, '
      
        '  mat_012 = :mat_012, mat_013 = :mat_013, mat_014 = :mat_014, ma' +
        't_015 = :mat_015, '
      '  mat_017 = :mat_017, cat_001 = :cat_001, '
      
        '  mat_018 = :mat_018, mat_019 = :mat_019, mat_020 = :mat_020, ma' +
        't_021 = :mat_021, '
      
        '  orm_codigo = :orm_codigo, cfop_consumidor = :cfop_consumidor, ' +
        'cfop_revendedor = :cfop_revendedor, '
      
        '  icms = :icms, iva = :iva, redbasecalcst = :redbasecalcst, redb' +
        'asecalcicms = :redbasecalcicms, '
      
        '  cst_consumidor = :cst_consumidor, cst_revendedor = :cst_revend' +
        'edor, ipi = :ipi, '
      
        '  pis_codigo = :pis_codigo, pis = :pis, cofins = :cofins, pis_co' +
        'digo_entrada = :pis_codigo_entrada, '
      
        '  pis_codigo_saida = :pis_codigo_saida, cof_codigo_entrada = :co' +
        'f_codigo_entrada, '
      
        '  cof_codigo_saida = :cof_codigo_saida, ncm = :ncm, cso_codigo =' +
        ' :cso_codigo, '
      
        '  mat_aliqmunicipal = :mat_aliqmunicipal, mat_aliqestadual = :ma' +
        't_aliqestadual, '
      
        '  mat_aliqfederal = :mat_aliqfederal, tempo_producao = :tempo_pr' +
        'oducao, tipo_producao = :tipo_producao, '
      
        '  valor_tam_p = :valor_tam_p, valor_tam_m = :valor_tam_m, valor_' +
        'tam_g = :valor_tam_g,'
      
        '  valor_tam_gg = :valor_tam_gg, b_venda_tamanho = :b_venda_taman' +
        'ho, tamanho_padrao = :tamanho_padrao,'
      '  valor_tam_extra = :valor_tam_extra, cest = :cest,'
      
        '  b_peso_balanca=:b_peso_balanca  , b_exporta_peso_balanca=:b_ex' +
        'porta_peso_balanca,'
      
        '  b_exige_alterar_preco_venda = :b_exige_alterar_preco_venda,  s' +
        'it_001 =:sit_001,'
      
        '  dias_validade = :dias_validade, tara_balanca = :tara_balanca,b' +
        '_exige_70pc_valor_unit = :b_exige_70pc_valor_unit, '
      '  cfop_venda_outra_uf = :cfop_venda_outra_uf,'
      
        '  cfop_devolucao = :cfop_devolucao, cfop_devolucao_outra_uf = :c' +
        'fop_devolucao_outra_uf,'
      
        '  cfop_garantia = :cfop_garantia, cfop_garantia_outra_uf = :cfop' +
        '_garantia_outra_uf,'
      
        '  codigo_anp = :codigo_anp, arquivo_img = :arquivo_img,id_fornec' +
        'edor=:id_fornecedor,'
      
        '  id_setor = :id_setor, hh_ativar = :hh_ativar, hh_dia_seg = :hh' +
        '_dia_seg, hh_dia_ter = :hh_dia_ter, '
      
        '  hh_dia_qua = :hh_dia_qua, hh_dia_qui = :hh_dia_qui, hh_dia_sex' +
        ' = :hh_dia_sex, hh_dia_sab = :hh_dia_sab, '
      
        '  hh_dia_dom = :hh_dia_dom, hh_tipo_mesa = :hh_tipo_mesa, hh_tip' +
        'o_delivery = :hh_tipo_delivery, '
      
        '  hh_tipo_comanda = :hh_tipo_comanda, hh_tipo_balcao = :hh_tipo_' +
        'balcao, hh_tipo_pdv = :hh_tipo_pdv,'
      
        '  hh_inicial = :hh_inicial, hh_final = :hh_final, hh_valor = :hh' +
        '_valor, valor_tabela2  = :valor_tabela2, '
      
        '  valor_atacado = :valor_atacado,utiliza_combo =:utiliza_combo, ' +
        'tar_001 = :tar_001,'
      
        '  cnpj_fabricante = :cnpj_fabricante, nao_relevante = :nao_relev' +
        'ante, peso_partida_anp = :peso_partida_anp'
      'WHERE'
      '  mat_001 = :Old_mat_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM materiais'
      'WHERE'
      '  mat_001 = :Old_mat_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT mat_001, emp_001, mat_002, mat_003, mat_004, uni_001, mat' +
        '_005, mat_007, mat_008, mtp_001, mat_009, '
      
        '       mat_010, sit_001, mat_011, usu_001_1, usu_001_2, dat_001_' +
        '1, dat_001_2, mat_006, mat_012, mat_013, '
      
        '       mat_014, mat_015, mat_017, cat_001, mat_018, mat_019, mat' +
        '_020, mat_021, orm_codigo, cfop_consumidor, '
      
        '       cfop_revendedor, icms, iva, redbasecalcst, redbasecalcicm' +
        's, cst_consumidor, cst_revendedor, ipi, pis_codigo,'
      
        '       pis, cofins, pis_codigo_entrada, pis_codigo_saida, cof_co' +
        'digo_entrada, cof_codigo_saida, ncm, cso_codigo, '
      
        '       mat_aliqmunicipal, mat_aliqestadual, mat_aliqfederal, tem' +
        'po_producao, tipo_producao, valor_tam_p, '
      
        '       valor_tam_m, valor_tam_g, valor_tam_gg, b_venda_tamanho, ' +
        'tamanho_padrao, valor_tam_extra, b_peso_balanca, '
      
        '       b_exporta_peso_balanca, cest, b_exige_alterar_preco_venda' +
        ', dias_validade, tara_balanca, '
      
        '       b_exige_70pc_valor_unit, cfop_venda_outra_uf, cfop_devolu' +
        'cao, cfop_devolucao_outra_uf, cfop_garantia,'
      
        '       cfop_garantia_outra_uf, codigo_anp, arquivo_img, id_forne' +
        'cedor, id_setor,'
      
        '       hh_ativar, hh_dia_seg, hh_dia_ter, hh_dia_qua, hh_dia_qui' +
        ', hh_dia_sex, hh_dia_sab, hh_dia_dom,'
      
        '       hh_tipo_mesa, hh_tipo_delivery, hh_tipo_comanda, hh_tipo_' +
        'balcao, hh_tipo_pdv,'
      
        '       hh_inicial, hh_final, hh_valor, valor_tabela2, valor_atac' +
        'ado, cnpj_fabricante, nao_relevante, peso_partida_anp '
      'FROM materiais'
      'WHERE'
      '  mat_001 = :mat_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT MAT.MAT_001,'
      'MAT.EMP_001,'
      'MAT.MAT_002,'
      'MAT.MAT_003,'
      'MAT.MAT_004,'
      'MAT.MAT_005,'
      'MAT.MAT_006,'
      'MAT.MAT_007,'
      'MAT.MAT_008,'
      'MAT.MAT_009,'
      'MAT.MAT_010,'
      'MAT.MAT_011,'
      'MAT.MTP_001,'
      'MAT.UNI_001,'
      'UNI.UNI_002,'
      'CAST(FN_SITUACOES(MAT.SIT_001)  AS VARCHAR(40)) AS SITUACAO,'
      'UNI.UNI_003,'
      'MAT.USU_001_1,'
      'MAT.USU_001_2,'
      'MAT.DAT_001_1,'
      'MAT.DAT_001_2,'
      'MAT.MAT_012,'
      'MAT.MAT_013,'
      'MAT.MAT_014,'
      'MAT.MAT_015,'
      'MAT.MAT_017,'
      'MAT.MAT_018,'
      'MAT.MAT_019,'
      'MAT.MAT_020,'
      'MAT.MAT_021,'
      'MAT.CAT_001,'
      'CAT.CAT_002,'
      'MAT.ORM_CODIGO,'
      'MAT.CFOP_CONSUMIDOR,'
      'MAT.CFOP_REVENDEDOR,'
      'MAT.ICMS,'
      'MAT.IVA,'
      'MAT.REDBASECALCST,'
      'MAT.REDBASECALCICMS,'
      'MAT.CST_CONSUMIDOR,'
      'MAT.CST_REVENDEDOR,'
      'MAT.IPI,'
      'MAT.PIS_CODIGO,'
      'MAT.PIS,'
      'MAT.COFINS,'
      'MAT.PIS_CODIGO_ENTRADA,'
      'MAT.PIS_CODIGO_SAIDA,'
      'MAT.COF_CODIGO_ENTRADA,'
      'MAT.COF_CODIGO_SAIDA,'
      'MAT.NCM,'
      'MAT.CSO_CODIGO,'
      'MAT.MAT_ALIQMUNICIPAL,'
      'MAT.MAT_ALIQESTADUAL,'
      'MAT.MAT_ALIQFEDERAL,'
      'MAT.TEMPO_PRODUCAO,'
      'MAT.TIPO_PRODUCAO,'
      'mat.valor_tam_p ,'
      'mat.valor_tam_m ,'
      'mat.valor_tam_g ,'
      'mat.valor_tam_gg ,'
      'mat.valor_tam_extra ,'
      'mat.b_venda_tamanho,'
      'mat.tamanho_padrao,'
      'mat.b_peso_balanca,'
      'mat.b_exporta_peso_balanca,'
      'mat.cest,'
      'mat.b_exige_alterar_preco_venda,'
      'mat.sit_001,'
      'mat.dias_validade,'
      'mat.tara_balanca,'
      'mat.b_exige_70pc_valor_unit,'
      'mat.cfop_venda_outra_uf,'
      'mat.cfop_devolucao,'
      'mat.cfop_devolucao_outra_uf,'
      'mat.cfop_garantia,'
      'mat.cfop_garantia_outra_uf,'
      'mat.codigo_anp,'
      'mat.arquivo_img,'
      'mat.id_fornecedor,'
      'mat.id_setor,'
      'f.nome_fantasia,'
      'mat.valor_tabela2,'
      'mat.valor_atacado, '
      'coalesce(stm.quantidade, 0.0) as estoque,'
      
        'hh_ativar, hh_dia_seg, hh_dia_ter, hh_dia_qua, hh_dia_qui, hh_di' +
        'a_sex, hh_dia_sab, hh_dia_dom,'
      
        'hh_tipo_mesa, hh_tipo_delivery, hh_tipo_comanda, hh_tipo_balcao,' +
        ' hh_tipo_pdv,'
      'hh_inicial, hh_final, hh_valor,'
      'utiliza_combo, mat.tar_001,'
      'mat.cnpj_fabricante,'
      'mat.nao_relevante,'
      'mat.peso_partida_anp'
      'from materiais mat'
      
        'left outer join unidades uni on (uni.emp_001 = mat.emp_001) and ' +
        '(uni.uni_001 = mat.uni_001)'
      
        'left outer join categoria cat on (cat.emp_001 = mat.emp_001) and' +
        ' (cat.cat_001 = mat.cat_001)'
      
        'left outer join fornecedor f on   (f.id_fornecedor=mat.id_fornec' +
        'edor) and (f.id_empresa=mat.emp_001)'
      
        'left join setor_estoque_material stm on stm.id_material=mat.mat_' +
        '001 and stm.id_empresa=mat.emp_001 and stm.id_setor=mat.id_setor' +
        ' '
      ''
      'where mat.emp_001 = :emp'
      '  and mat.mat_001 = :id')
    AfterOpen = qrDetalheAfterOpen
    AfterEdit = qrDetalheAfterEdit
    BeforePost = qrDetalheBeforePost
    AfterPost = qrDetalheAfterPost
    OnNewRecord = qrDetalheNewRecord
    Left = 698
    Top = 58
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMP'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'ID'
        Value = 20
      end>
    object qrDetalhemat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalhemat_002: TWideStringField
      FieldName = 'mat_002'
      Size = 15
    end
    object qrDetalhemat_003: TWideStringField
      FieldName = 'mat_003'
      Required = True
      Size = 100
    end
    object qrDetalhemat_004: TWideStringField
      FieldName = 'mat_004'
      OnChange = qrDetalhemat_004Change
      Size = 50
    end
    object qrDetalhemat_005: TWideStringField
      FieldName = 'mat_005'
      Size = 8
    end
    object qrDetalhemat_006: TFloatField
      FieldName = 'mat_006'
    end
    object qrDetalhemat_007: TWideMemoField
      FieldName = 'mat_007'
      BlobType = ftWideMemo
    end
    object qrDetalhemat_008: TFloatField
      FieldName = 'mat_008'
      Required = True
      OnChange = qrDetalhemat_008Change
    end
    object qrDetalhemat_009: TIntegerField
      FieldName = 'mat_009'
      Required = True
    end
    object qrDetalhemat_010: TBlobField
      FieldName = 'mat_010'
    end
    object qrDetalhemtp_001: TIntegerField
      FieldName = 'mtp_001'
      Required = True
    end
    object qrDetalheuni_001: TIntegerField
      FieldName = 'uni_001'
      Required = True
    end
    object qrDetalheuni_002: TWideStringField
      FieldName = 'uni_002'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qrDetalheuni_003: TWideStringField
      FieldName = 'uni_003'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalheusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalhedat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 40
    end
    object qrDetalhemat_011: TWideMemoField
      FieldName = 'mat_011'
      BlobType = ftWideMemo
    end
    object qrDetalhemat_012: TFloatField
      FieldName = 'mat_012'
      OnChange = qrDetalhemat_012Change
    end
    object qrDetalhemat_013: TDateTimeField
      FieldName = 'mat_013'
    end
    object qrDetalhemat_014: TFloatField
      FieldName = 'mat_014'
    end
    object qrDetalhemat_015: TFloatField
      FieldName = 'mat_015'
    end
    object qrDetalhecat_001: TIntegerField
      FieldName = 'cat_001'
    end
    object qrDetalhecat_002: TWideStringField
      FieldName = 'cat_002'
      Size = 40
    end
    object qrDetalhemat_017: TFloatField
      FieldName = 'mat_017'
    end
    object qrDetalhedisponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'disponivel'
      Calculated = True
    end
    object qrDetalhemat_018: TFloatField
      FieldName = 'mat_018'
      OnChange = qrDetalhemat_018Change
    end
    object qrDetalhemat_019: TWideStringField
      FieldName = 'mat_019'
      Size = 30
    end
    object qrDetalhemat_020: TFloatField
      FieldName = 'mat_020'
    end
    object qrDetalhemat_021: TIntegerField
      FieldName = 'mat_021'
    end
    object qrDetalheorm_codigo: TIntegerField
      FieldName = 'orm_codigo'
    end
    object qrDetalhecfop_consumidor: TWideStringField
      FieldName = 'cfop_consumidor'
      Size = 4
    end
    object qrDetalhecfop_revendedor: TWideStringField
      FieldName = 'cfop_revendedor'
      Size = 4
    end
    object qrDetalheicms: TFloatField
      FieldName = 'icms'
      DisplayFormat = '0.00'
    end
    object qrDetalheiva: TFloatField
      FieldName = 'iva'
    end
    object qrDetalheredbasecalcst: TFloatField
      FieldName = 'redbasecalcst'
    end
    object qrDetalheredbasecalcicms: TFloatField
      FieldName = 'redbasecalcicms'
    end
    object qrDetalhecst_consumidor: TIntegerField
      FieldName = 'cst_consumidor'
    end
    object qrDetalhecst_revendedor: TIntegerField
      FieldName = 'cst_revendedor'
    end
    object qrDetalheipi: TFloatField
      FieldName = 'ipi'
    end
    object qrDetalhepis_codigo: TIntegerField
      FieldName = 'pis_codigo'
    end
    object qrDetalhepis: TFloatField
      FieldName = 'pis'
    end
    object qrDetalhecofins: TFloatField
      FieldName = 'cofins'
    end
    object qrDetalhepis_codigo_entrada: TIntegerField
      FieldName = 'pis_codigo_entrada'
    end
    object qrDetalhepis_codigo_saida: TIntegerField
      FieldName = 'pis_codigo_saida'
    end
    object qrDetalhecof_codigo_entrada: TIntegerField
      FieldName = 'cof_codigo_entrada'
    end
    object qrDetalhecof_codigo_saida: TIntegerField
      FieldName = 'cof_codigo_saida'
    end
    object qrDetalhencm: TWideStringField
      FieldName = 'ncm'
      OnChange = qrDetalhencmChange
      Size = 10
    end
    object qrDetalhecso_codigo: TIntegerField
      FieldName = 'cso_codigo'
    end
    object qrDetalhemat_aliqmunicipal: TFloatField
      FieldName = 'mat_aliqmunicipal'
    end
    object qrDetalhemat_aliqestadual: TFloatField
      FieldName = 'mat_aliqestadual'
    end
    object qrDetalhemat_aliqfederal: TFloatField
      FieldName = 'mat_aliqfederal'
    end
    object qrDetalhetempo_producao: TIntegerField
      FieldName = 'tempo_producao'
    end
    object qrDetalhetipo_producao: TWideStringField
      FieldName = 'tipo_producao'
      Size = 1
    end
    object qrDetalhevalor_tam_p: TFloatField
      FieldName = 'valor_tam_p'
      OnChange = qrDetalhevalor_tam_pChange
    end
    object qrDetalhevalor_tam_m: TFloatField
      FieldName = 'valor_tam_m'
      OnChange = qrDetalhevalor_tam_mChange
    end
    object qrDetalhevalor_tam_g: TFloatField
      FieldName = 'valor_tam_g'
      OnChange = qrDetalhevalor_tam_gChange
    end
    object qrDetalhevalor_tam_gg: TFloatField
      FieldName = 'valor_tam_gg'
      OnChange = qrDetalhevalor_tam_ggChange
    end
    object qrDetalheb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
      OnChange = qrDetalheb_venda_tamanhoChange
      OnGetText = qrDetalheb_venda_tamanhoGetText
    end
    object qrDetalhetamanho_padrao: TWideStringField
      FieldName = 'tamanho_padrao'
      Size = 2
    end
    object qrDetalhevalor_tam_extra: TFloatField
      FieldName = 'valor_tam_extra'
      OnChange = qrDetalhevalor_tam_extraChange
    end
    object qrDetalheb_peso_balanca: TBooleanField
      FieldName = 'b_peso_balanca'
      Required = True
    end
    object qrDetalheb_exporta_peso_balanca: TBooleanField
      FieldName = 'b_exporta_peso_balanca'
      Required = True
    end
    object qrDetalhecest: TWideStringField
      FieldName = 'cest'
      OnChange = qrDetalhecestChange
      Size = 7
    end
    object qrDetalheb_exige_alterar_preco_venda: TBooleanField
      FieldName = 'b_exige_alterar_preco_venda'
      Required = True
    end
    object qrDetalhesit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrDetalhedias_validade: TIntegerField
      DisplayLabel = 'Dias de validade'
      FieldName = 'dias_validade'
    end
    object qrDetalhetara_balanca: TFloatField
      DisplayLabel = 'Tara Balan'#231'a'
      FieldName = 'tara_balanca'
      EditFormat = '0.000'
    end
    object qrDetalheb_exige_70pc_valor_unit: TBooleanField
      DisplayLabel = 'Exige o m'#237'nimo  de 70% do valor unit'#225'rio na venda'
      FieldName = 'b_exige_70pc_valor_unit'
      Required = True
    end
    object qrDetalhecfop_venda_outra_uf: TWideStringField
      FieldName = 'cfop_venda_outra_uf'
      Size = 4
    end
    object qrDetalhecfop_devolucao: TWideStringField
      FieldName = 'cfop_devolucao'
      Size = 4
    end
    object qrDetalhecfop_devolucao_outra_uf: TWideStringField
      FieldName = 'cfop_devolucao_outra_uf'
      Size = 4
    end
    object qrDetalhecfop_garantia: TWideStringField
      FieldName = 'cfop_garantia'
      Size = 4
    end
    object qrDetalhecfop_garantia_outra_uf: TWideStringField
      FieldName = 'cfop_garantia_outra_uf'
      Size = 4
    end
    object qrDetalhecodigo_anp: TWideStringField
      FieldName = 'codigo_anp'
    end
    object qrDetalhearquivo_img: TWideStringField
      FieldName = 'arquivo_img'
      Size = 200
    end
    object qrDetalheid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      OnChange = qrDetalheid_fornecedorChange
    end
    object qrDetalhenome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Size = 100
    end
    object qrDetalheid_setor: TIntegerField
      FieldName = 'id_setor'
      OnChange = qrDetalheid_setorChange
    end
    object qrDetalheestoque: TFloatField
      FieldName = 'estoque'
    end
    object qrDetalhehh_ativar: TBooleanField
      FieldName = 'hh_ativar'
      Required = True
    end
    object qrDetalhehh_dia_seg: TBooleanField
      FieldName = 'hh_dia_seg'
      Required = True
    end
    object qrDetalhehh_dia_ter: TBooleanField
      FieldName = 'hh_dia_ter'
      Required = True
    end
    object qrDetalhehh_dia_qua: TBooleanField
      FieldName = 'hh_dia_qua'
      Required = True
    end
    object qrDetalhehh_dia_qui: TBooleanField
      FieldName = 'hh_dia_qui'
      Required = True
    end
    object qrDetalhehh_dia_sex: TBooleanField
      FieldName = 'hh_dia_sex'
      Required = True
    end
    object qrDetalhehh_dia_sab: TBooleanField
      FieldName = 'hh_dia_sab'
      Required = True
    end
    object qrDetalhehh_dia_dom: TBooleanField
      FieldName = 'hh_dia_dom'
      Required = True
    end
    object qrDetalhehh_tipo_mesa: TBooleanField
      FieldName = 'hh_tipo_mesa'
      Required = True
    end
    object qrDetalhehh_tipo_delivery: TBooleanField
      FieldName = 'hh_tipo_delivery'
      Required = True
    end
    object qrDetalhehh_tipo_comanda: TBooleanField
      FieldName = 'hh_tipo_comanda'
      Required = True
    end
    object qrDetalhehh_tipo_balcao: TBooleanField
      FieldName = 'hh_tipo_balcao'
      Required = True
    end
    object qrDetalhehh_tipo_pdv: TBooleanField
      FieldName = 'hh_tipo_pdv'
      Required = True
    end
    object qrDetalhehh_inicial: TTimeField
      FieldName = 'hh_inicial'
      Required = True
    end
    object qrDetalhehh_final: TTimeField
      FieldName = 'hh_final'
      Required = True
    end
    object qrDetalhehh_valor: TFloatField
      FieldName = 'hh_valor'
      Required = True
    end
    object qrDetalhevalor_tabela2: TFloatField
      FieldName = 'valor_tabela2'
    end
    object qrDetalhevalor_atacado: TFloatField
      FieldName = 'valor_atacado'
    end
    object qrDetalheutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
    end
    object qrDetalhetar_001: TIntegerField
      FieldName = 'tar_001'
    end
    object qrDetalhecnpj_fabricante: TWideStringField
      FieldName = 'cnpj_fabricante'
      Size = 14
    end
    object qrDetalhenao_relevante: TBooleanField
      FieldName = 'nao_relevante'
      Required = True
    end
    object qrDetalhepeso_partida_anp: TFloatField
      FieldName = 'peso_partida_anp'
      DisplayFormat = '###,###,#0.000'
      EditFormat = '###,###,#0.000'
    end
  end
  object dsDetalhe: TDataSource
    AutoEdit = False
    DataSet = qrDetalhe
    OnStateChange = dsDetalheStateChange
    OnDataChange = dsDetalheDataChange
    Left = 704
    Top = 256
  end
  object qrListaOrigemMercadoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select orm_codigo, cast(concat(orm_codigo, '#39' - '#39', orm_descricao)' +
        ' as varchar(200)) as descr, 9 as ord from origem_mercadoria'
      'union'
      'select null, cast('#39'(Nenhum)'#39' as varchar(200)), 0'
      'order by 3,1')
    Left = 832
    Top = 120
    object qrListaOrigemMercadoriaorm_codigo: TIntegerField
      FieldName = 'orm_codigo'
      Required = True
    end
    object qrListaOrigemMercadoriadescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object qrListaCSTICMS: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select icm_codigo, cast(concat(icm_codigo, '#39' - '#39', icm_descricao)' +
        'as varchar(200)) as descr, 9 as ord from cst_icms'
      'union'
      'select null, cast('#39'(Nenhum)'#39' as varchar(200)), 0'
      'order by 3,1')
    Left = 872
    Top = 176
    object qrListaCSTICMSicm_codigo: TIntegerField
      FieldName = 'icm_codigo'
      Required = True
    end
    object qrListaCSTICMSdescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object qrListaCSOSNICMS: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cso_codigo, cast(concat(cso_codigo, '#39' - '#39', cso_descricao)' +
        'as varchar(200)) as descr, 9 as ord  from csosn_icms'
      'union'
      'select null, cast('#39'(Nenhum)'#39' as varchar(200)), 0'
      'order by 3,1')
    Left = 872
    Top = 224
    object qrListaCSOSNICMScso_codigo: TIntegerField
      FieldName = 'cso_codigo'
      Required = True
    end
    object qrListaCSOSNICMSdescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object qrListaCSTPIS: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select pis_codigo, cast(concat(pis_codigo, '#39' - '#39', pis_descricao)' +
        'as varchar(200)) as descr, 9 as ord from cst_pis'
      'union'
      'select null, cast('#39'(Nenhum)'#39' as varchar(200)), 0'
      'order by 3,1')
    Left = 872
    Top = 272
    object qrListaCSTPISpis_codigo: TIntegerField
      FieldName = 'pis_codigo'
      Required = True
    end
    object qrListaCSTPISdescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object qrListaCSTCofins: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cof_codigo, cast(concat(cof_codigo, '#39' - '#39', cof_descricao)' +
        ' as varchar(200)) as descr, 9 as ord  from cst_cofins'
      'union'
      'select null, cast('#39'(Nenhum)'#39' as varchar(200)), 0'
      'order by 3,1')
    Left = 872
    Top = 320
    object qrListaCSTCofinscof_codigo: TIntegerField
      FieldName = 'cof_codigo'
      Required = True
    end
    object qrListaCSTCofinsdescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 794
    Top = 260
  end
  object cdsCFG: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 972
    Top = 374
    object cdsCFGNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFGNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object cdsCFGTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 500
    end
    object cdsCFGLOGICO: TBooleanField
      FieldName = 'LOGICO'
    end
    object cdsCFGDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
  object dsListaCSTCofins: TDataSource
    AutoEdit = False
    DataSet = qrListaCSTCofins
    Left = 976
    Top = 320
  end
  object dsListaCSTPIS: TDataSource
    AutoEdit = False
    DataSet = qrListaCSTPIS
    Left = 976
    Top = 272
  end
  object dsListaCSOSNICMS: TDataSource
    AutoEdit = False
    DataSet = qrListaCSOSNICMS
    Left = 976
    Top = 224
  end
  object dsListaCSTICMS: TDataSource
    AutoEdit = False
    DataSet = qrListaCSTICMS
    Left = 976
    Top = 176
  end
  object dsListaOrigemMercadoria: TDataSource
    AutoEdit = False
    DataSet = qrListaOrigemMercadoria
    Left = 984
    Top = 112
  end
  object qrListaUnidadeMedida: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select uni_001, cast(concat(uni_003, '#39' - '#39', uni_002) as varchar(' +
        '200)) as descr, 9 as ord from unidades where sit_001=4 and emp_0' +
        '01=:emp')
    BeforeOpen = qrListaUnidadeMedidaBeforeOpen
    Left = 864
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrListaUnidadeMedidauni_001: TIntegerField
      FieldName = 'uni_001'
      ReadOnly = True
    end
    object qrListaUnidadeMedidadescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object dsqrListaUnidadeMedida: TDataSource
    AutoEdit = False
    DataSet = qrListaUnidadeMedida
    Left = 976
    Top = 56
  end
  object qrListaCategoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cat_001, cast(cat_002 as varchar(200)) as  descr , 9 as o' +
        'rd from categoria  where sit_001=4 and emp_001=:emp')
    BeforeOpen = qrListaCategoriaBeforeOpen
    Left = 672
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrListaCategoriacat_001: TIntegerField
      FieldName = 'cat_001'
      ReadOnly = True
    end
    object qrListaCategoriadescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
  end
  object dsListaCategoria: TDataSource
    AutoEdit = False
    DataSet = qrListaCategoria
    Left = 976
    Top = 424
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 504
    Top = 8
    object acPesquisaNCM: TAction
      Caption = 'acPesquisaNCM'
      OnExecute = acPesquisaNCMExecute
    end
    object acPesquisaItemComposicao: TAction
      Caption = 'acPesquisaItemComposicao'
      ImageIndex = 0
      OnExecute = acPesquisaItemComposicaoExecute
    end
    object acDeletaItemComposicao: TAction
      Caption = 'acDeletaItemComposicao'
      ImageIndex = 1
      OnExecute = acDeletaItemComposicaoExecute
    end
    object acPesquisaCEST: TAction
      Caption = 'acPesquisaCEST'
      OnExecute = acPesquisaCESTExecute
    end
    object acPesquisafornecedor: TAction
      Caption = 'acPesquisafornecedor'
      ImageIndex = 0
      OnExecute = acPesquisafornecedorExecute
    end
    object acDeletaItemOpc: TAction
      Caption = 'acDeletaItemOpc'
      ImageIndex = 1
      OnExecute = acDeletaItemOpcExecute
    end
    object acPesquisaOpc: TAction
      Caption = 'acPesquisaOpc'
      ImageIndex = 0
      OnExecute = acPesquisaOpcExecute
    end
    object acPesquisaproduto: TAction
      Caption = 'acPesquisaproduto'
      ImageIndex = 0
      OnExecute = acPesquisaprodutoExecute
    end
    object acDeletecombo: TAction
      Caption = 'acDeletecombo'
      ImageIndex = 1
      OnExecute = acDeletecomboExecute
    end
  end
  object qrGraficoProdutosVendidos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      
        'cast(to_char(c.data_abertura, '#39'mm/yyyy'#39') as varchar(10)) as mes_' +
        'ano,'
      'sum(vi.ite_002 )  as qtde_total_item ,'
      'mat.mat_001,'
      'civ.id_empresa'
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa and not vi.sit_001  in (0,1,2,3)'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      'where c.id_empresa=:emp and mat.mat_001=:id_produto'
      
        'and c.data_abertura >= to_date(concat(date_part('#39'year'#39', localtim' +
        'estamp)-1,'#39'-'#39', date_part('#39'month'#39', localtimestamp),'#39'-'#39', 1), '#39'yyyy' +
        '-mm-dd'#39')'
      'group by 1, mat.mat_001,'
      'mat.mat_004,  civ.id_empresa'
      'order by 1')
    AfterOpen = qrGraficoProdutosVendidosAfterOpen
    Left = 792
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_produto'
        Value = 3
      end>
    object qrGraficoProdutosVendidosmes_ano: TWideStringField
      FieldName = 'mes_ano'
      ReadOnly = True
      Size = 100
    end
    object qrGraficoProdutosVendidosqtde_total_item: TFloatField
      FieldName = 'qtde_total_item'
      ReadOnly = True
    end
    object qrGraficoProdutosVendidosmat_001: TIntegerField
      FieldName = 'mat_001'
      ReadOnly = True
      Required = True
    end
    object qrGraficoProdutosVendidosid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
  end
  object dsGraficoProdutosVendidos: TDataSource
    AutoEdit = False
    DataSet = qrGraficoProdutosVendidos
    Left = 816
    Top = 65528
  end
  object qrlistacfop: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cfop_codigo, cast(concat(cfop_codigo, '#39' - '#39', cfop_descric' +
        'ao) as varchar(200)) as descr, 9 as ord from cfop'
      'union'
      'select null, cast('#39'(Nenhum)'#39' as varchar(200)), 0'
      'order by 3,1')
    Left = 888
    Top = 8
    object qrlistacfopcfop_codigo: TWideMemoField
      FieldName = 'cfop_codigo'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrlistacfopdescr: TWideStringField
      FieldName = 'descr'
      ReadOnly = True
      Size = 200
    end
    object qrlistacfopord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
  end
  object dslistacfop: TDataSource
    AutoEdit = False
    DataSet = qrlistacfop
    Left = 944
    Top = 16
  end
  object qrProdutoComposicao: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM materiais_composicao'
      'WHERE'
      
        '  id_material = :Old_id_material AND id_empresa = :Old_id_empres' +
        'a AND id_composicao = :Old_id_composicao')
    SQLLock.Strings = (
      'SELECT * FROM materiais_composicao'
      'WHERE'
      '  id_composicao = :Old_id_composicao'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT quantidade FROM materiais_composicao'
      'WHERE'
      '  id_composicao = :id_composicao')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select c.id_composicao, '
      'c.descricao, '
      'mc.quantidade,   '
      'u.uni_003 as unidade, '
      'c.valor_custo as custo_unitario,'
      'coalesce(c.valor_custo * mc.quantidade, 0.00) as total_custo ,'
      'mc.id_material,'
      'mc.id_empresa'
      'from materiais_composicao mc'
      
        'join composicao c on mc.id_composicao=c.id_composicao and mc.id_' +
        'empresa=c.id_empresa'
      
        'join unidades u on u.uni_001=c.id_unidade and u.emp_001=c.id_emp' +
        'resa'
      
        'where mc.id_material = :id_material and mc.id_empresa = :id_empr' +
        'esa')
    AfterDelete = qrProdutoComposicaoAfterDelete
    AfterRefresh = qrProdutoComposicaoAfterRefresh
    Left = 480
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_material'
        Value = 75
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrProdutoComposicaoid_composicao: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_composicao'
      ReadOnly = True
      Required = True
    end
    object qrProdutoComposicaodescricao: TWideStringField
      DisplayLabel = 'Item'
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
    object qrProdutoComposicaoquantidade: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'quantidade'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrProdutoComposicaounidade: TWideStringField
      DisplayLabel = 'Un.'
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrProdutoComposicaocusto_unitario: TFloatField
      DisplayLabel = 'Custo unit.'
      FieldName = 'custo_unitario'
      ReadOnly = True
      currency = True
    end
    object qrProdutoComposicaototal_custo: TFloatField
      DisplayLabel = 'Custo Total'
      FieldName = 'total_custo'
      ReadOnly = True
      currency = True
    end
    object qrProdutoComposicaoid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrProdutoComposicaoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
  end
  object dsProdutoComposicao: TDataSource
    AutoEdit = False
    DataSet = qrProdutoComposicao
    Left = 520
    Top = 224
  end
  object qrBuscaItemComposicao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select c.id_composicao, '
      'c.descricao,   '
      'u.uni_003 as unidade, '
      'c.valor_custo as custo_unitario,'
      '1.00 as quantidade'
      'from composicao c'
      
        'join unidades u on u.uni_001=c.id_unidade and u.emp_001=c.id_emp' +
        'resa'
      
        'where c.id_composicao = :id_composicao and c.id_empresa = :id_em' +
        'presa')
    Left = 480
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_composicao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrBuscaItemComposicaoid_composicao: TIntegerField
      FieldName = 'id_composicao'
      Required = True
    end
    object qrBuscaItemComposicaodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qrBuscaItemComposicaounidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrBuscaItemComposicaocusto_unitario: TFloatField
      FieldName = 'custo_unitario'
      currency = True
    end
    object qrBuscaItemComposicaoquantidade: TFloatField
      FieldName = 'quantidade'
    end
  end
  object dsBuscaItemComposicao: TDataSource
    DataSet = qrBuscaItemComposicao
    Left = 600
    Top = 224
  end
  object JvdsBuscaItemComposicao: TJvDataSource
    DataSet = qrBuscaItemComposicao
    Left = 512
    Top = 288
  end
  object qrDescTamanhoMaterial: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO desc_tamanho_material'
      '  (tamanho_p, tamanho_m, tamanho_g, tamanho_gg, tamanho_extra)'
      'VALUES'
      
        '  (:tamanho_p, :tamanho_m, :tamanho_g, :tamanho_gg, :tamanho_ext' +
        'ra)')
    SQLDelete.Strings = (
      'DELETE FROM desc_tamanho_material'
      'WHERE'
      '  id_empresa = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE desc_tamanho_material'
      'SET'
      
        '  tamanho_p = :tamanho_p, tamanho_m = :tamanho_m, tamanho_g = :t' +
        'amanho_g, tamanho_gg = :tamanho_gg, tamanho_extra = :tamanho_ext' +
        'ra'
      'WHERE'
      '  id_empresa = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM desc_tamanho_material'
      'WHERE'
      '  id_empresa = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT tamanho_p, tamanho_m, tamanho_g, tamanho_gg, tamanho_extr' +
        'a FROM desc_tamanho_material'
      'WHERE'
      '  id_empresa = :id_empresa')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_empresa, tamanho_p, tamanho_m, tamanho_g, tamanho_gg, ' +
        'tamanho_extra'
      'from desc_tamanho_material'
      'where id_empresa = :id_empresa')
    AfterPost = qrDescTamanhoMaterialAfterPost
    Left = 736
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrDescTamanhoMaterialid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrDescTamanhoMaterialtamanho_p: TWideStringField
      FieldName = 'tamanho_p'
      Size = 100
    end
    object qrDescTamanhoMaterialtamanho_m: TWideStringField
      FieldName = 'tamanho_m'
      Size = 100
    end
    object qrDescTamanhoMaterialtamanho_g: TWideStringField
      FieldName = 'tamanho_g'
      Size = 100
    end
    object qrDescTamanhoMaterialtamanho_gg: TWideStringField
      FieldName = 'tamanho_gg'
      Size = 100
    end
    object qrDescTamanhoMaterialtamanho_extra: TWideStringField
      FieldName = 'tamanho_extra'
      Size = 100
    end
  end
  object dsDescTamanhoMaterial: TDataSource
    AutoEdit = False
    DataSet = qrDescTamanhoMaterial
    Left = 560
    Top = 224
  end
  object dsImagens: TDataSource
    DataSet = cdsImagens
    Left = 408
    Top = 8
  end
  object cdsImagens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 8
    object cdsImagensnomearquivo: TStringField
      FieldName = 'nomearquivo'
      Size = 200
    end
  end
  object qrListaSetor: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_setor, descricao from setor_estoque where id_empresa=:' +
        'id_empresa')
    BeforeOpen = qrListaSetorBeforeOpen
    Left = 384
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrListaSetorid_setor: TIntegerField
      FieldName = 'id_setor'
      Required = True
    end
    object qrListaSetordescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object dsListaSetor: TDataSource
    AutoEdit = False
    DataSet = qrListaSetor
    Left = 432
    Top = 224
  end
  object qrBuscaItemOpc: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select o.id_opcional, o.descricao, o.valor  '
      'from opcional o'
      
        'where o.id_opcional = :id_opcional and o.id_empresa = :id_empres' +
        'a')
    Left = 656
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_opcional'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrBuscaItemOpcid_opcional: TIntegerField
      FieldName = 'id_opcional'
    end
    object qrBuscaItemOpcdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qrBuscaItemOpcvalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
  end
  object dsBuscaItemOpc: TDataSource
    DataSet = qrBuscaItemOpc
    Left = 584
    Top = 160
  end
  object qrProdutoOpc: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM materiais_opcional'
      'WHERE'
      
        '  id_material = :Old_id_material AND id_empresa = :Old_id_empres' +
        'a AND id_opcional = :Old_id_opcional')
    SQLLock.Strings = (
      'SELECT * FROM materiais_opcional'
      'WHERE'
      '  id_opcional = :Old_id_opcional'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT quantidade FROM materiais_opcional'
      'WHERE'
      '  id_opcional = :id_opcional')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select o.id_opcional, o.descricao, o.valor, mo.id_material, mo.i' +
        'd_empresa'
      'from materiais_opcional mo'
      
        'join opcional o on mo.id_opcional=o.id_opcional and mo.id_empres' +
        'a=o.id_empresa'
      
        'where mo.id_material = :id_material and mo.id_empresa = :id_empr' +
        'esa')
    Left = 608
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_material'
        Value = 75
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrProdutoOpcid_opcional: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object qrProdutoOpcdescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
    object qrProdutoOpcvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
      currency = True
    end
    object qrProdutoOpcid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrProdutoOpcid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
  end
  object dsProdutoOpc: TDataSource
    AutoEdit = False
    DataSet = qrProdutoOpc
    Left = 656
    Top = 208
  end
  object qrPromocao: TUniQuery
    SQLLock.Strings = (
      '')
    SQLRefresh.Strings = (
      '')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select * from promocao where id_material = :id_material and id_e' +
        'mpresa = :id_empresa')
    Left = 80
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_material'
        Value = 75
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrPromocaoid_promocao: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_promocao'
    end
    object qrPromocaoid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object qrPromocaoid_material: TIntegerField
      FieldName = 'id_material'
    end
    object qrPromocaodia_seg: TBooleanField
      FieldName = 'dia_seg'
    end
    object qrPromocaodia_ter: TBooleanField
      FieldName = 'dia_ter'
    end
    object qrPromocaodia_qua: TBooleanField
      FieldName = 'dia_qua'
    end
    object qrPromocaodia_qui: TBooleanField
      FieldName = 'dia_qui'
    end
    object qrPromocaodia_sex: TBooleanField
      FieldName = 'dia_sex'
    end
    object qrPromocaodia_sab: TBooleanField
      FieldName = 'dia_sab'
    end
    object qrPromocaodia_dom: TBooleanField
      FieldName = 'dia_dom'
    end
    object qrPromocaotipo_mesa: TBooleanField
      FieldName = 'tipo_mesa'
    end
    object qrPromocaotipo_delivery: TBooleanField
      FieldName = 'tipo_delivery'
    end
    object qrPromocaotipo_comanda: TBooleanField
      FieldName = 'tipo_comanda'
    end
    object qrPromocaotipo_balcao: TBooleanField
      FieldName = 'tipo_balcao'
    end
    object qrPromocaotipo_pdv: TBooleanField
      FieldName = 'tipo_pdv'
    end
    object qrPromocaodesconto_seg_padrao: TFloatField
      FieldName = 'desconto_seg_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_seg_tam_p: TFloatField
      FieldName = 'desconto_seg_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_seg_tam_m: TFloatField
      FieldName = 'desconto_seg_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_seg_tam_g: TFloatField
      FieldName = 'desconto_seg_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_seg_tam_gg: TFloatField
      FieldName = 'desconto_seg_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_seg_tam_extra: TFloatField
      FieldName = 'desconto_seg_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_ter_padrao: TFloatField
      FieldName = 'desconto_ter_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_ter_tam_p: TFloatField
      FieldName = 'desconto_ter_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_ter_tam_m: TFloatField
      FieldName = 'desconto_ter_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_ter_tam_g: TFloatField
      FieldName = 'desconto_ter_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_ter_tam_gg: TFloatField
      FieldName = 'desconto_ter_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_ter_tam_extra: TFloatField
      FieldName = 'desconto_ter_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qua_padrao: TFloatField
      FieldName = 'desconto_qua_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qua_tam_p: TFloatField
      FieldName = 'desconto_qua_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qua_tam_m: TFloatField
      FieldName = 'desconto_qua_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qua_tam_g: TFloatField
      FieldName = 'desconto_qua_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qua_tam_gg: TFloatField
      FieldName = 'desconto_qua_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qua_tam_extra: TFloatField
      FieldName = 'desconto_qua_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qui_padrao: TFloatField
      FieldName = 'desconto_qui_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qui_tam_p: TFloatField
      FieldName = 'desconto_qui_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qui_tam_m: TFloatField
      FieldName = 'desconto_qui_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qui_tam_g: TFloatField
      FieldName = 'desconto_qui_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qui_tam_gg: TFloatField
      FieldName = 'desconto_qui_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_qui_tam_extra: TFloatField
      FieldName = 'desconto_qui_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sex_padrao: TFloatField
      FieldName = 'desconto_sex_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sex_tam_p: TFloatField
      FieldName = 'desconto_sex_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sex_tam_m: TFloatField
      FieldName = 'desconto_sex_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sex_tam_g: TFloatField
      FieldName = 'desconto_sex_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sex_tam_gg: TFloatField
      FieldName = 'desconto_sex_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sex_tam_extra: TFloatField
      FieldName = 'desconto_sex_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sab_padrao: TFloatField
      FieldName = 'desconto_sab_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sab_tam_p: TFloatField
      FieldName = 'desconto_sab_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sab_tam_m: TFloatField
      FieldName = 'desconto_sab_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sab_tam_g: TFloatField
      FieldName = 'desconto_sab_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sab_tam_gg: TFloatField
      FieldName = 'desconto_sab_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_sab_tam_extra: TFloatField
      FieldName = 'desconto_sab_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_dom_padrao: TFloatField
      FieldName = 'desconto_dom_padrao'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_dom_tam_p: TFloatField
      FieldName = 'desconto_dom_tam_p'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_dom_tam_m: TFloatField
      FieldName = 'desconto_dom_tam_m'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_dom_tam_g: TFloatField
      FieldName = 'desconto_dom_tam_g'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_dom_tam_gg: TFloatField
      FieldName = 'desconto_dom_tam_gg'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaodesconto_dom_tam_extra: TFloatField
      FieldName = 'desconto_dom_tam_extra'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPromocaotipo_desconto: TIntegerField
      FieldName = 'tipo_desconto'
    end
  end
  object dsPromocao: TDataSource
    DataSet = qrPromocao
    Left = 16
    Top = 394
  end
  object qrCombo: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM materiais_combo'
      'WHERE'
      
        '  id_material = :Old_id_material AND id_empresa = :Old_id_empres' +
        'a AND id_produto_combo = :Old_id_produto_combo')
    SQLLock.Strings = (
      'SELECT * FROM materiais_combo'
      'WHERE'
      '  id_produto_combo = :Old_id_produto_combo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT quantidade FROM materiais_combo'
      'WHERE'
      '  id_produto_combo = :id_produto_combo')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select c.id_material, c.id_empresa, c.id_produto_combo,c.quantid' +
        'ade,c.preco_venda,c.preco_custo,m.mat_003,m.mat_001,m.mat_004'
      'from materiais_combo c'
      'join materiais m on c.id_produto_combo=m.mat_001'
      'where id_material=:id_material and id_empresa=:emp'
      ''
      '')
    Left = 151
    Top = 222
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_material'
        Value = 75
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrComboid_produto_combo: TIntegerField
      FieldName = 'id_produto_combo'
      ReadOnly = True
      Required = True
    end
    object qrComboquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qrCombopreco_venda: TFloatField
      FieldName = 'preco_venda'
      Required = True
      currency = True
    end
    object qrCombopreco_custo: TFloatField
      FieldName = 'preco_custo'
      Required = True
      currency = True
    end
    object qrCombomat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrCombomat_001: TIntegerField
      FieldName = 'mat_001'
      ReadOnly = True
      Required = True
    end
    object qrCombomat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrComboid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrComboid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
  end
  object dsCombo: TDataSource
    AutoEdit = False
    DataSet = qrCombo
    Left = 207
    Top = 222
  end
  object qrListaTara: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select tar_001, descricao from tara where sit_001=4 and emp_001=' +
        ':emp')
    BeforeOpen = qrListaTaraBeforeOpen
    Left = 376
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrListaTaratar_001: TIntegerField
      FieldName = 'tar_001'
      Required = True
    end
    object qrListaTaradescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
    end
  end
  object dsListaTara: TDataSource
    AutoEdit = False
    DataSet = qrListaTara
    Left = 415
    Top = 398
  end
end
