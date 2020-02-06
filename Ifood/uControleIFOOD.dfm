inherited frmControleIFOOD: TfrmControleIFOOD
  Caption = 
    'IFOOD       - SISTEMA DESENVOLVIDO POR RP SISTEMAS  FONE: (16) 3' +
    '010-4052 / 3336-8416 / 98825-3013'
  ClientHeight = 671
  ClientWidth = 1094
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1100
  ExplicitHeight = 699
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1094
    Height = 613
    ExplicitWidth = 1094
    ExplicitHeight = 613
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 44
      Height = 16
      Caption = 'TOKEN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblToken: TLabel
      Left = 60
      Top = 13
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel1: TJvLabel
      Left = 8
      Top = 31
      Width = 1080
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -15
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 8
      Top = 318
      Width = 1080
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -15
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Memo1: TMemo
      Left = 18
      Top = 59
      Width = 46
      Height = 38
      TabOrder = 0
      Visible = False
    end
    object cxgrPedidos: TcxGrid
      Left = 3
      Top = 49
      Width = 1085
      Height = 262
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxgrPedidosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPedidos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxgrPedidosDBTableView1shortReference: TcxGridDBColumn
          Caption = 'Pedido'
          DataBinding.FieldName = 'shortReference'
          Styles.Header = frmMenu.cxNegrito
          Width = 66
        end
        object cxgrPedidosDBTableView1cliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'cliente'
          Styles.Header = frmMenu.cxNegrito
          Width = 340
        end
        object cxgrPedidosDBTableView1data: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'data'
          Styles.Header = frmMenu.cxNegrito
          Width = 97
        end
        object cxgrPedidosDBTableView1hora: TcxGridDBColumn
          Caption = 'Hora'
          DataBinding.FieldName = 'hora'
          Styles.Header = frmMenu.cxNegrito
          Width = 85
        end
        object cxgrPedidosDBTableView1telefone: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'telefone'
          Styles.Header = frmMenu.cxNegrito
          Width = 151
        end
        object cxgrPedidosDBTableView1delivery: TcxGridDBColumn
          Caption = 'Taxa Entrega'
          DataBinding.FieldName = 'delivery'
          HeaderAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 96
        end
        object cxgrPedidosDBTableView1total: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'total'
          HeaderAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 106
        end
        object cxgrPedidosDBTableView1forma: TcxGridDBColumn
          Caption = 'Forma Pagamento'
          DataBinding.FieldName = 'forma'
          Styles.Header = frmMenu.cxNegrito
          Width = 142
        end
      end
      object cxgrPedidosLevel1: TcxGridLevel
        GridView = cxgrPedidosDBTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 336
      Width = 1085
      Height = 277
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsProdutosMestre
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1flag_encontrado: TcxGridDBColumn
          DataBinding.FieldName = 'flag_encontrado'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              ImageIndex = 9
              Value = False
            end
            item
              ImageIndex = 5
              Value = True
            end>
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 24
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1externalCode: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'externalCode'
          Styles.Header = frmMenu.cxNegrito
          Width = 92
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'descricao'
          Styles.Header = frmMenu.cxNegrito
          Width = 546
        end
        object cxGrid1DBTableView1quantidade: TcxGridDBColumn
          Caption = 'Qtde.'
          DataBinding.FieldName = 'quantidade'
          HeaderAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 103
        end
        object cxGrid1DBTableView1valor_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'valor_unitario'
          HeaderAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 102
        end
        object cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'valor_acrescimo'
          HeaderAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 99
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total'
          HeaderAlignmentHorz = taCenter
          Styles.Header = frmMenu.cxNegrito
          Width = 102
        end
      end
      object cxGrid1DBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsProdutosOpc
        DataController.DetailKeyFieldNames = 'correlationId;externalCodeMestre'
        DataController.MasterKeyFieldNames = 'correlationId;externalCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsCustomize.CardExpanding = True
        OptionsView.CaptionSeparator = #0
        OptionsView.CardAutoWidth = True
        OptionsView.CardBorderWidth = 1
        OptionsView.CardIndent = 0
        OptionsView.CardWidth = 2000
        OptionsView.EmptyRows = False
        OptionsView.SeparatorWidth = 0
        object cxGrid1DBCardView1descricao: TcxGridDBCardViewRow
          DataBinding.FieldName = 'descricao'
          Position.BeginsLayer = True
          Styles.Content = frmMenu.cxDesconto
          IsCaptionAssigned = True
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBCardView1
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 613
    Width = 1094
    Height = 58
    FlowStyle = fsTopBottomLeftRight
    ExplicitTop = 613
    ExplicitWidth = 1094
    ExplicitHeight = 58
    object btToken: TAdvGlowButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 117
      Height = 55
      Margins.Right = 0
      Caption = 'Verificar Token'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btTokenClick
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
    object btVerificarPed: TAdvGlowButton
      AlignWithMargins = True
      Left = 123
      Top = 3
      Width = 117
      Height = 55
      Margins.Right = 0
      Caption = 'Consultar Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btVerificarPedClick
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
    object btConfirmaPed: TAdvGlowButton
      AlignWithMargins = True
      Left = 243
      Top = 3
      Width = 117
      Height = 55
      Margins.Right = 0
      Caption = 'Confirmar Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btConfirmaPedClick
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
    object btRejeitarPed: TAdvGlowButton
      AlignWithMargins = True
      Left = 363
      Top = 3
      Width = 117
      Height = 55
      Margins.Right = 0
      Caption = 'Rejeitar Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btRejeitarPedClick
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
    object btDespacharPed: TAdvGlowButton
      AlignWithMargins = True
      Left = 483
      Top = 3
      Width = 117
      Height = 55
      Margins.Right = 0
      Caption = 'Despachar Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
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
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'data;shortReference'
    Params = <>
    AfterScroll = cdsPedidosAfterScroll
    Left = 288
    Top = 384
    object cdsPedidosid: TStringField
      FieldName = 'id'
      Size = 50
    end
    object cdsPedidoscode: TStringField
      FieldName = 'code'
      Size = 50
    end
    object cdsPedidoscorrelationId: TStringField
      FieldName = 'correlationId'
    end
    object cdsPedidosdata: TDateField
      FieldName = 'data'
    end
    object cdsPedidoshora: TTimeField
      FieldName = 'hora'
    end
    object cdsPedidosshortReference: TIntegerField
      FieldName = 'shortReference'
    end
    object cdsPedidosidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object cdsPedidoscliente: TStringField
      FieldName = 'cliente'
      Size = 50
    end
    object cdsPedidostelefone: TStringField
      FieldName = 'telefone'
    end
    object cdsPedidosendereco: TStringField
      FieldName = 'endereco'
      Size = 100
    end
    object cdsPedidosnrendereco: TStringField
      FieldName = 'nrendereco'
      Size = 10
    end
    object cdsPedidosbairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object cdsPedidoscep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object cdsPedidostotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'total'
      currency = True
    end
    object cdsPedidosdelivery: TFloatField
      FieldName = 'delivery'
      currency = True
    end
    object cdsPedidosforma: TStringField
      DisplayWidth = 40
      FieldName = 'forma'
      Size = 40
    end
  end
  object dsPedidos: TUniDataSource
    DataSet = cdsPedidos
    Left = 360
    Top = 384
  end
  object cdsEventos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'data;hora'
    Params = <>
    Left = 208
    Top = 384
    object cdsEventosid: TStringField
      FieldName = 'id'
      Size = 50
    end
    object cdsEventoscode: TStringField
      FieldName = 'code'
      Size = 50
    end
    object cdsEventoscorrelationId: TStringField
      FieldName = 'correlationId'
    end
    object cdsEventosdata: TDateField
      FieldName = 'data'
    end
    object cdsEventoshora: TTimeField
      FieldName = 'hora'
    end
  end
  object qrBuscaCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'cli_001, '
      'emp_001, '
      'cli_002 as nome,'
      'cli_012 as telefone1,'
      'cli_013 as telefone2,'
      'celular1,'
      'celular2,'
      'cli_014 as celular3,'
      'cep_004 as endereco,'
      'cli_008 as endereco_numero,'
      'cli_009 as complemento,'
      'cep_003 as bairro,'
      'cidade_desc as cidade,'
      'cep_002 as cep,'
      '0.00 as credito_cliente,'
      'sit_001 as status,'
      'obs_bloqueio'
      'from clientes '
      'where sit_001 in (4,5) -- ativo / bloqueado'
      'and true -- Aqui vem o filtro aplicado via codigo'
      'order by  cli_002')
    ReadOnly = True
    Left = 200
    Top = 440
    object qrBuscaClientecli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrBuscaClienteemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrBuscaClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object qrBuscaClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object qrBuscaClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object qrBuscaClientecelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrBuscaClientecelular2: TWideStringField
      FieldName = 'celular2'
    end
    object qrBuscaClientecelular3: TWideStringField
      FieldName = 'celular3'
    end
    object qrBuscaClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 125
    end
    object qrBuscaClienteendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      Size = 10
    end
    object qrBuscaClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qrBuscaClientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object qrBuscaClientecep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object qrBuscaClientecredito_cliente: TFloatField
      FieldName = 'credito_cliente'
      ReadOnly = True
    end
    object qrBuscaClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 100
    end
    object qrBuscaClientestatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object qrBuscaClienteobs_bloqueio: TWideStringField
      FieldName = 'obs_bloqueio'
      Size = 200
    end
  end
  object cdsProdutosMestre: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'externalCode'
    Params = <>
    Left = 440
    Top = 384
    object cdsProdutosMestreflag_encontrado: TBooleanField
      FieldName = 'flag_encontrado'
    end
    object cdsProdutosMestrecorrelationId: TStringField
      FieldName = 'correlationId'
    end
    object cdsProdutosMestreexternalCode: TIntegerField
      FieldName = 'externalCode'
    end
    object cdsProdutosMestredescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsProdutosMestrequantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object cdsProdutosMestrevalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unitario'
      currency = True
    end
    object cdsProdutosMestrevalor_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'valor_acrescimo'
      currency = True
    end
    object cdsProdutosMestrevalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object cdsProdutosMestreidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsProdutosMestreimpressora: TIntegerField
      FieldName = 'impressora'
    end
    object cdsProdutosMestresituacao: TIntegerField
      FieldName = 'situacao'
    end
  end
  object dsProdutosMestre: TUniDataSource
    DataSet = cdsProdutosMestre
    Left = 528
    Top = 384
  end
  object qrBuscaProdutos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select mat_001, mat_003, mat_021, sit_001 from materiais where m' +
        'at_004 = :mat_004')
    ReadOnly = True
    Left = 280
    Top = 441
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mat_004'
        Value = nil
      end>
    object qrBuscaProdutosmat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrBuscaProdutosmat_003: TWideStringField
      FieldName = 'mat_003'
      Required = True
      Size = 100
    end
    object qrBuscaProdutosmat_021: TIntegerField
      FieldName = 'mat_021'
    end
    object qrBuscaProdutossit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
  end
  object cdsOpcionais: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'externalCode'
    Params = <>
    Left = 440
    Top = 496
  end
  object cdsProdutosOpc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'externalCodeMestre'
    Params = <>
    Left = 440
    Top = 440
    object cdsProdutosOpcflag_encontrado: TBooleanField
      FieldName = 'flag_encontrado'
    end
    object cdsProdutosOpccorrelationId: TStringField
      FieldName = 'correlationId'
    end
    object cdsProdutosOpcexternalCodeMestre: TIntegerField
      FieldName = 'externalCodeMestre'
    end
    object cdsProdutosOpcexternalCodeOpc: TIntegerField
      FieldName = 'externalCodeOpc'
    end
    object cdsProdutosOpcdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsProdutosOpcdescricaoabrev: TStringField
      FieldName = 'descricaoabrev'
      Size = 100
    end
    object cdsProdutosOpcidlista: TIntegerField
      FieldName = 'idlista'
    end
    object cdsProdutosOpcvalor: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor'
      currency = True
    end
  end
  object dsProdutosOpc: TUniDataSource
    AutoEdit = False
    DataSet = cdsProdutosOpc
    Left = 528
    Top = 440
  end
  object qrBuscaOpc: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select descricao from opcional where id_opcional = :id_opcional')
    ReadOnly = True
    Left = 360
    Top = 441
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_opcional'
        Value = nil
      end>
    object qrBuscaOpcdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object qrBuscaForma: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select for_002 as descricaoforma from formapgto where for_001 = ' +
        ':for_001')
    ReadOnly = True
    Left = 200
    Top = 497
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'for_001'
        Value = nil
      end>
    object qrBuscaFormadescricaoforma: TWideStringField
      FieldName = 'descricaoforma'
      Required = True
      Size = 40
    end
  end
end
