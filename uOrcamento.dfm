inherited frmOrcamento: TfrmOrcamento
  Caption = 'LE STORE - OR'#199'AMENTO'
  ClientHeight = 699
  ClientWidth = 1360
  KeyPreview = True
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1366
  ExplicitHeight = 728
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1360
    Height = 609
    ExplicitWidth = 1360
    ExplicitHeight = 609
    DesignSize = (
      1360
      609)
    FullHeight = 200
    object Label10: TLabel
      Left = 4
      Top = 434
      Width = 97
      Height = 23
      Caption = 'Observa'#231#227'o'
      FocusControl = meObservacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 526
      Top = 1
      Width = 56
      Height = 23
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblLimitecliente: TLabel
      Left = 611
      Top = 1
      Width = 186
      Height = 23
      Caption = 'Limite dispon'#237'vel: 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 81
      Height = 23
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 66
      Width = 57
      Height = 23
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 176
      Top = 66
      Width = 151
      Height = 23
      Caption = 'Descri'#231#227'o Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 611
      Top = 66
      Width = 40
      Height = 23
      Caption = 'Qtde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 717
      Top = 66
      Width = 87
      Height = 23
      Caption = 'Pre'#231'o - R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDesconto: TLabel
      Left = 873
      Top = 66
      Width = 119
      Height = 23
      Caption = 'Desconto '#237'tem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1029
      Top = 66
      Width = 82
      Height = 23
      Caption = 'Total - R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 133
      Top = 549
      Width = 120
      Height = 23
      Caption = 'N'#186' Or'#231'amento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 697
      Top = 549
      Width = 84
      Height = 23
      Caption = 'Valor total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 259
      Top = 549
      Width = 86
      Height = 23
      Caption = 'Total itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 541
      Top = 549
      Width = 84
      Height = 23
      Caption = 'Acr'#233'scimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 385
      Top = 549
      Width = 77
      Height = 23
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 6
      Top = 549
      Width = 71
      Height = 23
      Caption = 'Validade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblComanda: TLabel
      Left = 853
      Top = 549
      Width = 79
      Height = 23
      Caption = 'Comanda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object meObservacao: TcxDBMemo
      Left = 4
      Top = 458
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 89
      Width = 1352
    end
    object edCodproduto: TcxButtonEdit
      Left = 4
      Top = 90
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaProduto
          Default = True
          ImageIndex = 0
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnExit = edCodprodutoExit
      OnKeyPress = edCodprodutoKeyPress
      Width = 167
    end
    object edVendedor: TcxDBButtonEdit
      Left = 4
      Top = 24
      DataBinding.DataField = 'id_usuario'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscavendedor
          Default = True
          ImageIndex = 0
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 130
    end
    object edNomevendedor: TEdit
      Left = 140
      Top = 24
      Width = 382
      Height = 31
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object edCodigocliente: TcxDBButtonEdit
      Left = 526
      Top = 24
      DataBinding.DataField = 'id_cliente'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscacliente
          Default = True
          ImageIndex = 0
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 79
    end
    object edNomecliente: TEdit
      Left = 611
      Top = 24
      Width = 354
      Height = 31
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object cxGrid1: TcxGrid
      Left = 4
      Top = 129
      Width = 1352
      Height = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsOrcamentoitem
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1codigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo'
          Width = 163
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o produto'
          DataBinding.FieldName = 'descricao'
          Width = 737
        end
        object cxGrid1DBTableView1quantidade: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'quantidade'
          Width = 100
        end
        object cxGrid1DBTableView1valor_unitario: TcxGridDBColumn
          Caption = 'Valor unit'#225'rio'
          DataBinding.FieldName = 'valor_unitario'
          Width = 110
        end
        object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'valor_desconto'
          Width = 110
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          Caption = 'Valor total R$'
          DataBinding.FieldName = 'valor_total'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taRightJustify
          Width = 110
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxTabelapreco: TcxRadioGroup
      Left = 1057
      Top = 4
      Caption = 'Tabela de pre'#231'o'
      ParentBackground = False
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = #192' Vista'
        end
        item
          Caption = #192' Prazo'
        end
        item
          Caption = 'Atacado'
        end>
      ItemIndex = 0
      Style.BorderColor = clNavy
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlue
      StyleDisabled.Color = clNavy
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = clNavy
      TabOrder = 19
      OnClick = cxTabelaprecoClick
      Height = 57
      Width = 299
    end
    object edDescricaoproduto: TEdit
      Left = 176
      Top = 90
      Width = 429
      Height = 31
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object btInserir: TAdvGlowButton
      Left = 1184
      Top = 80
      Width = 46
      Height = 41
      Hint = 'Inserir item'
      Anchors = [akTop]
      ImageIndex = 3
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 7
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
    object edQuantidade: TJvValidateEdit
      Tag = 1
      Left = 611
      Top = 90
      Width = 100
      Height = 31
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      TabOrder = 3
      OnExit = edQuantidadeExit
      DataConnector.DataField = 'valor_unit'
    end
    object edPreco: TJvValidateEdit
      Tag = 1
      Left = 717
      Top = 90
      Width = 150
      Height = 31
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      TabOrder = 4
      OnExit = edQuantidadeExit
      DataConnector.DataField = 'valor_unit'
    end
    object edDesconto: TJvValidateEdit
      Tag = 1
      Left = 873
      Top = 90
      Width = 150
      Height = 31
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      TabOrder = 5
      OnExit = edQuantidadeExit
      DataConnector.DataField = 'valor_unit'
    end
    object edTotal: TJvValidateEdit
      Tag = 1
      Left = 1029
      Top = 90
      Width = 150
      Height = 31
      TabStop = False
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      TabOrder = 6
      OnEnter = edTotalEnter
      DataConnector.DataField = 'valor_unit'
    end
    object edIdorcamento: TJvValidateEdit
      Tag = 1
      Left = 133
      Top = 572
      Width = 120
      Height = 31
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      OnExit = edQuantidadeExit
    end
    object dbTotal_item: TcxDBCurrencyEdit
      Left = 697
      Top = 572
      DataBinding.DataField = 'valor_total'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Properties.EditFormat = '0.00'
      Properties.ReadOnly = True
      Style.Color = 12691076
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clBlue
      StyleFocused.TextStyle = [fsBold]
      TabOrder = 14
      Width = 150
    end
    object edQuantidadeitens: TJvValidateEdit
      Tag = 1
      Left = 259
      Top = 572
      Width = 120
      Height = 31
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 9999999.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      OnExit = edQuantidadeExit
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 7
      Top = 572
      DataBinding.DataField = 'data_validade'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 120
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 541
      Top = 572
      DataBinding.DataField = 'valor_acrescimo'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Properties.EditFormat = '0.00'
      Properties.ReadOnly = True
      Style.Color = 12691076
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clBlue
      StyleFocused.TextStyle = [fsBold]
      TabOrder = 13
      Width = 150
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 385
      Top = 572
      DataBinding.DataField = 'valor_desconto'
      DataBinding.DataSource = dsOrcamento
      ParentFont = False
      Properties.EditFormat = '0.00'
      Properties.ReadOnly = True
      Style.Color = 12691076
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clBlue
      StyleFocused.TextStyle = [fsBold]
      TabOrder = 12
      Width = 150
    end
    object edComanda: TDBEdit
      Left = 853
      Top = 572
      Width = 120
      Height = 31
      DataField = 'comanda'
      DataSource = dsOrcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 609
    Width = 1360
    Height = 90
    Alignment = taLeftJustify
    ExplicitTop = 609
    ExplicitWidth = 1360
    ExplicitHeight = 90
    object btPesquisarorcamento: TAdvGlowButton
      AlignWithMargins = True
      Left = 1156
      Top = 0
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acLocalizar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 6
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      Appearance.BorderColor = clBlue
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
    object btFecharorcamento: TAdvGlowButton
      AlignWithMargins = True
      Left = 952
      Top = 0
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acFinalizarorcamento
      Caption = 'F6 (FECHAR COMO OR'#199'AMENTO)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 46
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      Appearance.BorderColor = clBlue
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
    object btFecharVenda: TAdvGlowButton
      AlignWithMargins = True
      Left = 748
      Top = 0
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Action = acFecharcomovenda
      Caption = 'F5 (FECHAR COMO VENDA)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 28
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      Appearance.BorderColor = clBlue
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 544
      Top = 0
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Action = acEditar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 15
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      Appearance.BorderColor = clBlue
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
    object btExcluiritem: TAdvGlowButton
      AlignWithMargins = True
      Left = 340
      Top = 0
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acExcluir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 7
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      Appearance.BorderColor = clBlue
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 136
      Top = 0
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acIncluir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      Appearance.BorderColor = clBlue
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
    object btSair: TAdvGlowButton
      AlignWithMargins = True
      Left = 1156
      Top = 46
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acSair
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 5
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      Appearance.BorderColor = clBlue
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
    object btFecharConsignado: TAdvGlowButton
      AlignWithMargins = True
      Left = 952
      Top = 46
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acFecharConsignado
      Caption = 'F11 (FECHAR CONSIGNADO)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 45
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 7
      Appearance.BorderColor = clBlue
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
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 748
      Top = 46
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acImprimir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 54
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 8
      Appearance.BorderColor = clBlue
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
      DropDownButton = True
      DropDownMenu = pmImpressao
    end
    object btExcluirorcamento: TAdvGlowButton
      AlignWithMargins = True
      Left = 544
      Top = 46
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = AcCancelar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 48
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 9
      Appearance.BorderColor = clBlue
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
    object brExcluirorcamento: TAdvGlowButton
      AlignWithMargins = True
      Left = 340
      Top = 46
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acExcluirorcamento
      Caption = 'F8 (EXCLUIR OR'#199'AMENTO)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 27
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 10
      Appearance.BorderColor = clBlue
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
    object btConsultaProd: TAdvGlowButton
      AlignWithMargins = True
      Left = 136
      Top = 46
      Width = 200
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acConsultaProd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 25
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 11
      Appearance.BorderColor = clBlue
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
  object ActionList1: TActionList
    Images = frmMenu.ImgList32
    Left = 800
    Top = 208
    object acIncluir: TAction
      Caption = 'F2 (NOVO)'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = acIncluirExecute
    end
    object acExcluir: TAction
      Caption = 'F3 (EXCLUIR ITEM)'
      ImageIndex = 7
      ShortCut = 114
      OnExecute = acExcluirExecute
    end
    object acSalvar: TAction
      Caption = 'F6(FECHAR COMO VENDA)'
      ImageIndex = 57
      OnExecute = acSalvarExecute
    end
    object acLocalizar: TAction
      Caption = 'F7 (PESQUISAR OR'#199'AMENTO)'
      ImageIndex = 6
      ShortCut = 118
      OnExecute = acLocalizarExecute
    end
    object AcCancelar: TAction
      Caption = 'F9 (CANCELAR)'
      ImageIndex = 48
      ShortCut = 120
      OnExecute = AcCancelarExecute
    end
    object acBuscaProduto: TAction
      Caption = 'acBuscaProduto'
      OnExecute = acBuscaProdutoExecute
    end
    object acBuscavendedor: TAction
      Caption = 'acBuscavendedor'
      ImageIndex = 65
      OnExecute = acBuscavendedorExecute
    end
    object acBuscacliente: TAction
      Caption = 'acBuscacliente'
      ImageIndex = 65
      OnExecute = acBuscaclienteExecute
    end
    object acEditar: TAction
      Caption = 'F4 (EDITAR)'
      ImageIndex = 15
      ShortCut = 115
      OnExecute = acEditarExecute
    end
    object acFinalizarorcamento: TAction
      Caption = 'F6(FECHAR COMO ORCAMENTO)'
      ImageIndex = 46
      ShortCut = 117
      OnExecute = acFinalizarorcamentoExecute
    end
    object acFecharcomovenda: TAction
      Caption = 'F5(FECHAR COMO VENDA)'
      ImageIndex = 28
      ShortCut = 116
      OnExecute = acFecharcomovendaExecute
    end
    object acExcluirorcamento: TAction
      Caption = 'q'
      ImageIndex = 27
      ShortCut = 119
      OnExecute = acExcluirorcamentoExecute
    end
    object acSair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      OnExecute = acSairExecute
    end
    object acImprimir: TAction
      Caption = 'F10(IMPRIMIR)'
      ImageIndex = 54
      ShortCut = 121
      OnExecute = acImprimirExecute
    end
    object acFecharConsignado: TAction
      Caption = 'acFecharConsignado'
      ImageIndex = 45
      ShortCut = 122
      OnExecute = acFecharConsignadoExecute
    end
    object acConsultaProd: TAction
      Caption = 'CONSULTA PRODUTOS'
      ImageIndex = 25
      OnExecute = acConsultaProdExecute
    end
  end
  object qrOrcamento: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO orcamento'
      
        '  (id_orcamento, id_empresa, id_cliente, data, id_usuario, valor' +
        '_total, valor_desconto, valor_acrescimo, '
      
        '   observacao, nome_retirada,id_situacao,parcelas,id_formapgto, ' +
        'data_validade, consignado, comanda, terminal)'
      'VALUES'
      
        '  (:id_orcamento, :id_empresa, :id_cliente, :data, :id_usuario, ' +
        ':valor_total, :valor_desconto, :valor_acrescimo, '
      
        '   :observacao, :nome_retirada,:id_situacao,:parcelas,:id_formap' +
        'gto, :data_validade, :consignado, :comanda, :terminal)')
    SQLDelete.Strings = (
      'DELETE FROM orcamento'
      'WHERE'
      '  id_orcamento = :Old_id_orcamento')
    SQLUpdate.Strings = (
      'UPDATE orcamento'
      'SET'
      
        '  id_orcamento = :id_orcamento,id_empresa = :id_empresa, id_clie' +
        'nte = :id_cliente, data = :data, id_usuario = :id_usuario, '
      
        '  valor_total = :valor_total, valor_desconto = :valor_desconto, ' +
        'valor_acrescimo = :valor_acrescimo, observacao = :observacao, '
      
        '  nome_retirada = :nome_retirada,id_situacao= :id_situacao,parce' +
        'las= :id_situacao,id_formapgto =:id_formapgto,'
      
        '  data_validade = :data_validade, consignado = :consignado, coma' +
        'nda = :comanda, terminal = :terminal'
      'WHERE'
      '  id_orcamento = :Old_id_orcamento')
    SQLLock.Strings = (
      'SELECT * FROM orcamento'
      'WHERE'
      '  id_orcamento = :Old_id_orcamento'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_orcamento, numero, id_empresa, id_cliente, data, id_us' +
        'uario, valor_total, valor_desconto, valor_acrescimo, observacao,' +
        ' nome_retirada, consignado, comanda, terminal FROM orcamento'
      'WHERE'
      '  id_orcamento = :id_orcamento')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM orcamento'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT '
      'o.id_orcamento, '
      'o.id_empresa, '
      'o.id_cliente, '
      'o.data, '
      'o.id_usuario, '
      'o.valor_total, '
      'o.valor_desconto, '
      'o.valor_acrescimo, '
      'o.observacao, '
      'o.nome_retirada, '
      'o.id_situacao,'
      'o.parcelas,'
      'o.id_formapgto,'
      'u.usu_002 as nome_vendedor,'
      'c.cli_002 as nome_cliente,'
      'o.data_validade,'
      'o.consignado,'
      'o.comanda,'
      'o.terminal'
      'from orcamento o'
      'left join usuarios u on o.id_usuario=u.usu_001'
      
        'left join clientes c on o.id_cliente=c.cli_001 and o.id_empresa=' +
        'c.emp_001'
      'where  o.id_empresa=:id_empresa and o.id_orcamento=:id_orcamento')
    Options.DefaultValues = True
    AfterOpen = qrOrcamentoAfterOpen
    BeforePost = qrOrcamentoBeforePost
    AfterPost = qrOrcamentoAfterOpen
    OnNewRecord = qrOrcamentoNewRecord
    Left = 192
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_orcamento'
        Value = nil
      end>
    object qrOrcamentoid_orcamento: TIntegerField
      AutoGenerateValue = arAutoInc
      DefaultExpression = 'nextval('#39'orcamento_id_orcamento_seq'#39'::regclass)'
      FieldName = 'id_orcamento'
    end
    object qrOrcamentoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrOrcamentoid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
      OnChange = qrOrcamentoid_clienteChange
    end
    object qrOrcamentodata: TDateTimeField
      DefaultExpression = '('#39'now'#39'::text)::timestamp without time zone'
      FieldName = 'data'
      Required = True
    end
    object qrOrcamentoid_usuario: TIntegerField
      FieldName = 'id_usuario'
      Required = True
      OnChange = qrOrcamentoid_usuarioChange
    end
    object qrOrcamentovalor_total: TFloatField
      DefaultExpression = '0.0'
      FieldName = 'valor_total'
      Required = True
    end
    object qrOrcamentovalor_desconto: TFloatField
      DefaultExpression = '0.0'
      DisplayLabel = 'Desconto'
      FieldName = 'valor_desconto'
      Required = True
      currency = True
    end
    object qrOrcamentovalor_acrescimo: TFloatField
      DefaultExpression = '0.0'
      DisplayLabel = 'Acrescimo'
      FieldName = 'valor_acrescimo'
      Required = True
      currency = True
    end
    object qrOrcamentoobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object qrOrcamentonome_retirada: TWideStringField
      FieldName = 'nome_retirada'
      Size = 100
    end
    object qrOrcamentoid_situacao: TIntegerField
      DefaultExpression = '0'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrOrcamentoparcelas: TIntegerField
      DefaultExpression = '1'
      FieldName = 'parcelas'
    end
    object qrOrcamentoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
    object qrOrcamentonome_vendedor: TWideStringField
      FieldName = 'nome_vendedor'
      Size = 30
    end
    object qrOrcamentonome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      Size = 90
    end
    object qrOrcamentodata_validade: TDateField
      DisplayLabel = 'Data de Validade'
      FieldName = 'data_validade'
    end
    object qrOrcamentoconsignado: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'consignado'
    end
    object qrOrcamentocomanda: TIntegerField
      FieldName = 'comanda'
    end
    object qrOrcamentoterminal: TWideStringField
      FieldName = 'terminal'
      Size = 100
    end
  end
  object dsOrcamento: TDataSource
    AutoEdit = False
    DataSet = qrOrcamento
    OnStateChange = dsOrcamentoStateChange
    Left = 120
    Top = 360
  end
  object qrOrcamentoitem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select oi.id_orcamento, oi.item, oi.id_empresa, oi.id_material, ' +
        'oi.quantidade, oi.valor_unitario, oi.valor_total, '
      'oi.valor_desconto,oi.valor_acrescimo,'
      
        'case when v.descricao is null then m.mat_003 else concat(m.mat_0' +
        '03, '#39' ('#39', v.descricao, '#39')'#39') end as descricao, '
      'm.mat_004 as codigo, m.id_setor, oi.id_variacao'
      'from orcamento_item as oi'
      
        'JOIN materiais as m on oi.id_material=m.mat_001 and oi.id_empres' +
        'a=m.emp_001'
      'left join variacoes v on v.var_001 = oi.id_variacao'
      
        'where oi.id_orcamento=:id_orcamento and oi.id_empresa=:id_empres' +
        'a'
      ''
      '')
    MasterSource = dsOrcamento
    IndexFieldNames = 'codigo;descricao'
    AfterOpen = qrOrcamentoitemAfterRefresh
    AfterClose = qrOrcamentoitemAfterClose
    AfterRefresh = qrOrcamentoitemAfterRefresh
    Left = 360
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_orcamento'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = nil
      end>
    object qrOrcamentoitemid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
      Required = True
    end
    object qrOrcamentoitemitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrOrcamentoitemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrOrcamentoitemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrOrcamentoitemquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
      DisplayFormat = '0.00'
    end
    object qrOrcamentoitemvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrOrcamentoitemvalor_total: TFloatField
      FieldName = 'valor_total'
      Required = True
      currency = True
    end
    object qrOrcamentoitemvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      Required = True
      currency = True
    end
    object qrOrcamentoitemvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      Required = True
      currency = True
    end
    object qrOrcamentoitemcodigo: TWideStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 50
    end
    object qrOrcamentoitemid_setor: TIntegerField
      FieldName = 'id_setor'
      DisplayFormat = '0.00'
    end
    object qrOrcamentoitemid_variacao: TIntegerField
      FieldName = 'id_variacao'
    end
    object qrOrcamentoitemdescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
  end
  object dsOrcamentoitem: TDataSource
    AutoEdit = False
    DataSet = qrOrcamentoitem
    Left = 456
    Top = 336
  end
  object repOrcamento: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43027.381477141200000000
    ReportOptions.LastChange = 43165.727963310200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 416
    Datasets = <
      item
        DataSet = dbOrcamento
        DataSetName = 'dbOrcamento'
      end
      item
        DataSet = dbOrcamentoItem
        DataSetName = 'dbOrcamentoItem'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sNomeEmpresa'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 176.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 5.669295000000000000
          Top = 2.559060000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTitulo]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669478070000000000
          Top = 24.236240000000000000
          Width = 706.771743860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 173.622140000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object imgLogoOrcamento: TfrxPictureView
          Left = 7.559060000000000000
          Top = 43.015770000000000000
          Width = 166.299320000000000000
          Height = 90.708720000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line5: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 149.165430000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 152.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 120.944881890000000000
          Top = 152.724490000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 377.512060000000000000
          Top = 152.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 461.102660000000000000
          Top = 152.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 536.693260000000000000
          Top = 152.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 635.842920000000000000
          Top = 152.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object dbOrcamentoid_orcamento: TfrxMemoView
          Left = 253.228510000000000000
          Top = 70.472480000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'id_orcamento'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          Memo.UTF8W = (
            '[dbOrcamento."id_orcamento"]')
        end
        object Memo9: TfrxMemoView
          Left = 177.637910000000000000
          Top = 70.472480000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nro.:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Top = 88.259895000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 177.637910000000000000
          Top = 129.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 340.157700000000000000
          Top = 70.472480000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object dbOrcamentodata: TfrxMemoView
          Left = 381.732530000000000000
          Top = 70.472480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'data'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          Memo.UTF8W = (
            '[dbOrcamento."data"]')
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 177.637910000000000000
          Top = 27.015770000000000000
          Width = 418.354670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sNomeEmpresa]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 253.228510000000000000
          Top = 88.259842520000000000
          Width = 342.464750000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sCliente]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 253.228510000000000000
          Top = 129.047310000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sVendedor]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 178.000000000000000000
          Top = 44.102350000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sEndEmpresa]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 601.000000000000000000
          Top = 27.102350000000000000
          Width = 110.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sTelEmpresa]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 252.000000000000000000
          Top = 106.102350000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sEndCliente]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 601.000000000000000000
          Top = 88.440944880000000000
          Width = 109.913730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sTelCliente]')
          ParentFont = False
        end
        object lblEndereco: TfrxMemoView
          Left = 178.000000000000000000
          Top = 106.102350000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTitEnd]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = dbOrcamentoItem
        DataSetName = 'dbOrcamentoItem'
        RowCount = 0
        object dbOrcamentoItemcodigo: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 17.007874020000000000
          DataField = 'codigo'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrcamentoItem."codigo"]')
          ParentFont = False
        end
        object dbOrcamentoItemdescricao: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 257.008040000000000000
          Height = 17.007874020000000000
          DataField = 'descricao'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrcamentoItem."descricao"]')
          ParentFont = False
        end
        object dbOrcamentoItemvalor_unitario: TfrxMemoView
          Left = 457.323130000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 17.007874015748000000
          DataField = 'valor_unitario'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamentoItem."valor_unitario"]')
          ParentFont = False
        end
        object dbOrcamentoItemquantidade: TfrxMemoView
          Left = 385.071120000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          DataField = 'quantidade'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamentoItem."quantidade"]')
          ParentFont = False
        end
        object dbOrcamentoItemvalor_desconto: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 17.007874015748000000
          DataField = 'valor_desconto'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamentoItem."valor_desconto"]')
          ParentFont = False
        end
        object dbOrcamentoItemvalor_total: TfrxMemoView
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          DataField = 'valor_total'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamentoItem."valor_total"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 139.842610000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 9.252320000000000000
          Top = 4.897495000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 271.252320000000000000
          Top = 4.684910000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 545.252320000000000000
          Top = 4.582560000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Acr'#233'scimo:')
          ParentFont = False
        end
        object dbOrcamentovalor_total: TfrxMemoView
          Left = 94.181510000000000000
          Top = 4.787260000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamento."valor_total"]')
          ParentFont = False
        end
        object dbOrcamentovalor_desconto: TfrxMemoView
          Left = 356.181510000000000000
          Top = 4.684910000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'valor_desconto'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamento."valor_desconto"]')
          ParentFont = False
        end
        object dbOrcamentovalor_acrescimo: TfrxMemoView
          Left = 631.181510000000000000
          Top = 4.582560000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'valor_acrescimo'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamento."valor_acrescimo"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 455.338590000000000000
          Top = 23.606299210000000000
          Width = 255.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sValidade]')
          ParentFont = False
        end
        object dbOrcamentoobservacao: TfrxMemoView
          Left = 11.338590000000000000
          Top = 78.354360000000000000
          Width = 687.874460000000000000
          Height = 52.913420000000000000
          DataField = 'observacao'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrcamento."observacao"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Top = 57.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 2.559060000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Top = 77.913420000000000000
          Width = 699.213050000000000000
          Height = 56.692950000000000000
        end
        object Memo21: TfrxMemoView
          Left = 9.338590000000000000
          Top = 24.559060000000000000
          Width = 403.433520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sItens]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 22.637600000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 3.779530000000020000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 393.071120000000000000
          Top = 7.559060000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object dbOrcamento: TfrxDBDataset
    UserName = 'dbOrcamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_orcamento=id_orcamento'
      'id_empresa=id_empresa'
      'id_cliente=id_cliente'
      'data=data'
      'id_usuario=id_usuario'
      'valor_total=valor_total'
      'valor_desconto=valor_desconto'
      'valor_acrescimo=valor_acrescimo'
      'observacao=observacao'
      'nome_retirada=nome_retirada'
      'id_situacao=id_situacao'
      'parcelas=parcelas'
      'id_formapgto=id_formapgto'
      'nome_vendedor=nome_vendedor'
      'nome_cliente=nome_cliente'
      'data_validade=data_validade')
    OpenDataSource = False
    DataSet = qrOrcamento
    BCDToCurrency = False
    Left = 632
    Top = 408
  end
  object dbOrcamentoItem: TfrxDBDataset
    UserName = 'dbOrcamentoItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_orcamento=id_orcamento'
      'item=item'
      'id_empresa=id_empresa'
      'id_material=id_material'
      'quantidade=quantidade'
      'valor_unitario=valor_unitario'
      'valor_total=valor_total'
      'valor_desconto=valor_desconto'
      'valor_acrescimo=valor_acrescimo'
      'descricao=descricao'
      'codigo=codigo')
    OpenDataSource = False
    DataSet = qrOrcamentoitem
    BCDToCurrency = False
    Left = 632
    Top = 464
  end
  object pmImpressao: TPopupMenu
    Left = 544
    Top = 312
    object ImpressoraA41: TMenuItem
      Caption = 'Impressora Gr'#225'fica A4'
      OnClick = ImpressoraA41Click
    end
    object ImpressoraTrmica1: TMenuItem
      Caption = 'Impressora T'#233'rmica'
      OnClick = ImpressoraTrmica1Click
    end
    object ImpressoProduo1: TMenuItem
      Caption = 'Impressora Produ'#231#227'o'
      OnClick = ImpressoProduo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EnviarporEmail1: TMenuItem
      Caption = 'Enviar por E-mail'
      OnClick = EnviarporEmail1Click
    end
  end
  object repProducao: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43027.381477141200000000
    ReportOptions.LastChange = 43262.361545289350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 416
    Datasets = <
      item
        DataSet = dbOrcamento
        DataSetName = 'dbOrcamento'
      end
      item
        DataSet = dbOrcamentoItem
        DataSetName = 'dbOrcamentoItem'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sNomeEmpresa'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 173.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669478070000000000
          Top = 23.236240000000000000
          Width = 706.771743860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 170.622140000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object imgLogoOrcamento: TfrxPictureView
          Left = 7.559060000000000000
          Top = 40.015770000000000000
          Width = 166.299320000000000000
          Height = 90.708720000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line5: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 146.165430000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 149.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 149.724490000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 634.512060000000000000
          Top = 149.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object dbOrcamentoid_orcamento: TfrxMemoView
          Left = 253.228510000000000000
          Top = 65.472480000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'id_orcamento'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          Memo.UTF8W = (
            '[dbOrcamento."id_orcamento"]')
        end
        object Memo9: TfrxMemoView
          Left = 177.637910000000000000
          Top = 65.472480000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nro.:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 177.637910000000000000
          Top = 84.259895000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 177.637910000000000000
          Top = 126.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 340.157700000000000000
          Top = 65.472480000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object dbOrcamentodata: TfrxMemoView
          Left = 381.732530000000000000
          Top = 65.472480000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'data'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          Memo.UTF8W = (
            '[dbOrcamento."data"]')
        end
        object Memo16: TfrxMemoView
          Left = 177.637910000000000000
          Top = 25.015770000000000000
          Width = 417.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sNomeEmpresa]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 253.228510000000000000
          Top = 84.259842520000000000
          Width = 343.464750000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sCliente]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 254.228510000000000000
          Top = 126.047310000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sVendedor]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 178.000000000000000000
          Top = 42.102350000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sEndEmpresa]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 601.000000000000000000
          Top = 25.102350000000000000
          Width = 110.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sTelEmpresa]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 5.669295000000000000
          Top = 2.645669290000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTitulo]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 252.000000000000000000
          Top = 103.763755120000000000
          Width = 458.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sEndCliente]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 1017.000000000000000000
          Top = 55.102350000000000000
          Width = 110.913730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sTelCliente]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 604.000000000000000000
          Top = 84.102350000000000000
          Width = 106.913730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sTelCliente]')
          ParentFont = False
        end
        object lblEndereco: TfrxMemoView
          Left = 178.000000000000000000
          Top = 103.102350000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTitEnd]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = dbOrcamentoItem
        DataSetName = 'dbOrcamentoItem'
        RowCount = 0
        object dbOrcamentoItemcodigo: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 17.007874020000000000
          DataField = 'codigo'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrcamentoItem."codigo"]')
          ParentFont = False
        end
        object dbOrcamentoItemdescricao: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 498.897960000000000000
          Height = 17.007874020000000000
          DataField = 'descricao'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrcamentoItem."descricao"]')
          ParentFont = False
        end
        object dbOrcamentoItemquantidade: TfrxMemoView
          Left = 642.071120000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          DataField = 'quantidade'
          DataSet = dbOrcamentoItem
          DataSetName = 'dbOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbOrcamentoItem."quantidade"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 139.842610000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object dbOrcamentoobservacao: TfrxMemoView
          Left = 11.338590000000000000
          Top = 78.354360000000000000
          Width = 687.874460000000000000
          Height = 52.913420000000000000
          DataField = 'observacao'
          DataSet = dbOrcamento
          DataSetName = 'dbOrcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbOrcamento."observacao"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Top = 57.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 5.559060000000000000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Top = 77.913420000000000000
          Width = 699.213050000000000000
          Height = 56.692950000000000000
        end
        object Memo21: TfrxMemoView
          Left = 11.338590000000000000
          Top = 12.559060000000000000
          Width = 405.433520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sItens]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 455.000000000000000000
          Top = 12.472440940000000000
          Width = 255.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sValidade]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 498.897960000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 7.559243070000000000
          Top = 3.779530000000020000
          Width = 702.992213860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 449.764070000000000000
          Top = 7.559060000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 624
    Top = 312
  end
  object qrAuxiliar: TUniQuery
    Connection = frmMenu.conexao
    Left = 208
    Top = 240
  end
  object qrEmpresa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select e.emp_003 as fantasia, concat(e.cep_004, '#39', '#39', e.emp_007,' +
        ' '#39' - '#39', e.cep_003, '#39' - '#39', cid_002, '#39'/'#39', t.est_003) as endereco, ' +
        'emp_013 as telefone, e.titulo_orc'
      'from empresas e '
      'left join cidades c on c.cid_001 = e.cid_001'
      'left join estados t on t.est_001 = c.est_001'
      'where emp_001 = :emp')
    Left = 208
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
  end
  object qrCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select e.cli_002 as nome, concat(e.cep_004, '#39', '#39', e.cli_008, '#39' -' +
        ' '#39', e.cep_003, '#39' - '#39', cid_002, '#39'/'#39', t.est_003) as endereco, coal' +
        'esce(cli_012, celular1) as telefone'
      'from clientes e '
      'left join cidades c on c.cid_001 = e.cid_001'
      'left join estados t on t.est_001 = c.est_001'
      'where cli_001 = :cli')
    Left = 256
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli'
        Value = nil
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 920
    Top = 176
  end
end
