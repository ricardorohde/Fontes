object frmMonitorpreparo: TfrmMonitorpreparo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 
    'MONITOR DE PREPARO LE CHEFF    -    SISTEMA DESENVOLVIDO POR RP ' +
    'SISTEMAS               WWW.SISTEMALECHEF.COM.BR'
  ClientHeight = 561
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Caption = 'MONITOR DE PRODU'#199#195'O'
    Color = clWindowFrame
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      884
      57)
    object Shape3: TShape
      Left = 134
      Top = 36
      Width = 20
      Height = 19
      Anchors = [akLeft, akBottom]
      Brush.Color = 6618980
      Pen.Color = clNavy
    end
    object Label4: TLabel
      Left = 157
      Top = 39
      Width = 103
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = '15 a 30 minutos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 6
      Top = 36
      Width = 20
      Height = 19
      Anchors = [akLeft, akBottom]
      Brush.Color = 16774120
      Pen.Color = clNavy
    end
    object Label5: TLabel
      Left = 29
      Top = 39
      Width = 99
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'At'#233' 15 minutos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 292
      Top = 40
      Width = 103
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = '30 a 45 minutos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape4: TShape
      Left = 266
      Top = 37
      Width = 20
      Height = 19
      Anchors = [akLeft, akBottom]
      Brush.Color = 3342335
      Pen.Color = clNavy
    end
    object Label2: TLabel
      Left = 426
      Top = 40
      Width = 109
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'Acima de 45 min.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 400
      Top = 37
      Width = 20
      Height = 19
      Anchors = [akLeft, akBottom]
      Brush.Color = 6579455
      Pen.Color = clNavy
    end
    object cbLocalProducao: TComboBox
      Left = 5
      Top = 8
      Width = 133
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Todos locais'
      OnChange = cbLocalProducaoChange
      Items.Strings = (
        'Todos locais'
        'Balc'#227'o'
        'Cozinha'
        'Bar'
        'Cozinha 2'
        'Bar 2')
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 884
    Height = 504
    Align = alClient
    TabOrder = 1
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 9
    object cxGrid1DBCardView1: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBCardView1CustomDrawCell
      DataController.DataSource = dsProducao
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsSelection.CardBorderSelection = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = 'Sem dados a exibir'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.CardIndent = 7
      OptionsView.CardWidth = 300
      OptionsView.CellAutoHeight = True
      OptionsView.EmptyRows = False
      OptionsView.LayerSeparatorWidth = 2
      OptionsView.SeparatorWidth = 0
      Styles.Background = frmMenu.cxDesconto
      Styles.CaptionRow = frmMenu.cxFundoAzulEscuroNegrito
      Styles.CardBorder = frmMenu.cxFundoAzulEscuroNegrito
      object cxGrid1DBCardView1mesa_delivery: TcxGridDBCardViewRow
        DataBinding.FieldName = 'mesa_delivery'
        CaptionAlignmentHorz = taRightJustify
        CaptionAlignmentVert = vaBottom
        Kind = rkCaption
        Options.Editing = False
        Options.Filtering = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
        Styles.Caption = frmMenu.cxFundoAzulEscuroNegrito
        Styles.CaptionRow = frmMenu.cxFundoAzulEscuroNegrito
      end
      object cxGrid1DBCardView1quantidade: TcxGridDBCardViewRow
        DataBinding.FieldName = 'quantidade'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
        Position.Width = 60
        Styles.Content = frmMenu.cxTextoNegrito12
      end
      object cxGrid1DBCardView1produto: TcxGridDBCardViewRow
        DataBinding.FieldName = 'produto'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.WordWrap = True
        Options.Editing = False
        Options.Filtering = False
        Options.ShowCaption = False
        Position.BeginsLayer = False
        Styles.Content = frmMenu.cxTextoNegrito12
      end
      object cxGrid1DBCardView1numero_pedido: TcxGridDBCardViewRow
        Caption = 'Pedido'
        DataBinding.FieldName = 'numero_pedido'
        Options.Editing = False
        Options.Filtering = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1opcionais: TcxGridDBCardViewRow
        DataBinding.FieldName = 'opcionais'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Options.Editing = False
        Options.Filtering = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
        Styles.Content = frmMenu.cxTexto12
      end
      object cxGrid1DBCardView1garcom: TcxGridDBCardViewRow
        DataBinding.FieldName = 'garcom'
        Options.Editing = False
        Options.Filtering = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1tempo_producao: TcxGridDBCardViewRow
        Caption = 'Tempo'
        DataBinding.FieldName = 'tempo_producao'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Botoes: TcxGridDBCardViewRow
        DataBinding.FieldName = 'dummy_botoes'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = acPronto
            Default = True
            Kind = bkText
            Width = 100
          end
          item
            Action = acEntregue
            Kind = bkText
            Width = 100
          end>
        Properties.ViewStyle = vsButtonsOnly
        Options.Filtering = False
        Options.ShowCaption = False
        Position.BeginsLayer = True
        Position.LineCount = 2
        Styles.Content = frmMenu.cxTexto12
        IsCaptionAssigned = True
      end
      object cxGrid1DBCardView1tempo: TcxGridDBCardViewRow
        Caption = 'Tempo Produ'#231#227'o'
        DataBinding.FieldName = 'tempo'
        CaptionAlignmentHorz = taRightJustify
        Position.BeginsLayer = True
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'nro_item'
      DataController.MasterKeyFieldNames = 'item'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsProducao
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2mesa_delivery: TcxGridDBColumn
        DataBinding.FieldName = 'mesa_delivery'
      end
      object cxGrid1DBTableView2nro_venda: TcxGridDBColumn
        DataBinding.FieldName = 'nro_venda'
      end
      object cxGrid1DBTableView2item: TcxGridDBColumn
        DataBinding.FieldName = 'item'
      end
      object cxGrid1DBTableView2cod_produto: TcxGridDBColumn
        DataBinding.FieldName = 'cod_produto'
      end
      object cxGrid1DBTableView2produto: TcxGridDBColumn
        DataBinding.FieldName = 'produto'
      end
      object cxGrid1DBTableView2observacao: TcxGridDBColumn
        DataBinding.FieldName = 'observacao'
      end
      object cxGrid1DBTableView2garcom: TcxGridDBColumn
        DataBinding.FieldName = 'garcom'
      end
      object cxGrid1DBTableView2item_fracionado: TcxGridDBColumn
        DataBinding.FieldName = 'item_fracionado'
      end
      object cxGrid1DBTableView2quantidade: TcxGridDBColumn
        DataBinding.FieldName = 'quantidade'
      end
      object cxGrid1DBTableView2numero_pedido: TcxGridDBColumn
        DataBinding.FieldName = 'numero_pedido'
      end
      object cxGrid1DBTableView2tempo_producao: TcxGridDBColumn
        DataBinding.FieldName = 'tempo_producao'
      end
      object cxGrid1DBTableView2qtde_fracao: TcxGridDBColumn
        DataBinding.FieldName = 'qtde_fracao'
      end
      object cxGrid1DBTableView2b_producao: TcxGridDBColumn
        DataBinding.FieldName = 'b_producao'
      end
      object cxGrid1DBTableView2b_entregue: TcxGridDBColumn
        DataBinding.FieldName = 'b_entregue'
      end
      object cxGrid1DBTableView2id_venda: TcxGridDBColumn
        DataBinding.FieldName = 'id_venda'
      end
      object cxGrid1DBTableView2dummy_botoes: TcxGridDBColumn
        DataBinding.FieldName = 'dummy_botoes'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'nro_item'
      DataController.MasterKeyFieldNames = 'item'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView3id_venda: TcxGridDBColumn
        DataBinding.FieldName = 'id_venda'
      end
      object cxGrid1DBTableView3id_empresa: TcxGridDBColumn
        DataBinding.FieldName = 'id_empresa'
      end
      object cxGrid1DBTableView3nro_item: TcxGridDBColumn
        DataBinding.FieldName = 'nro_item'
      end
      object cxGrid1DBTableView3id_opcional: TcxGridDBColumn
        DataBinding.FieldName = 'id_opcional'
      end
      object cxGrid1DBTableView3descricao: TcxGridDBColumn
        DataBinding.FieldName = 'descricao'
      end
      object cxGrid1DBTableView3valor: TcxGridDBColumn
        DataBinding.FieldName = 'valor'
      end
      object cxGrid1DBTableView3ord: TcxGridDBColumn
        DataBinding.FieldName = 'ord'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBCardView1
    end
  end
  object qrProducao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT'
      'cast( '
      'case when ven.ven_024='#39'M'#39' then mes.mes_002'
      '     when ven.ven_024='#39'D'#39' then '#39'DELIVERY'#39
      '     when ven.ven_024='#39'C'#39' then concat('#39'COMANDA '#39', ven.ven_026)'
      '     else '#39'VENDA'#39
      'end '
      'as varchar(100)) as mesa_delivery,'
      ''
      'ven.ven_029 as nro_venda,'
      'ite.ite_001 as item, '
      'ITE.mat_001 as cod_produto,'
      'ite.ven_001 as id_venda,'
      
        'cast (to_char ( (LOCALTIMESTAMP-data_hora_lancamento),'#39'HH24:MI'#39')' +
        ' as varchar (5)) as tempo_producao,'
      ' cast(( case when ite.b_venda_tamanho then '
      '  case ite.tamanho '
      '    when '#39'P'#39' then  concat(pro1.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39') '
      '    when '#39'M'#39' then  concat(pro1.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(pro1.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(pro1.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39') '
      
        '    when '#39'E'#39' then  concat(pro1.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39 +
        ') '
      '  else pro1.MAT_003 end '
      ' else pro1.MAT_003 '
      ' end) as varchar(100))  AS PRODUTO,'
      'ite.ite_006 as observacao,'
      'cast( '
      '  case when ITE.GAR_001 is null then '#39#39
      '  else concat('#39'GAR'#199'OM: '#39',  GAR.USU_002) end'
      'as varchar(100)) as garcom,'
      'ite.item_fracionado,'
      'cast('
      '  case when coalesce(ITE.quantidade_impressao, 0.0)>0 then'
      '    case when coalesce( ite.item_fracionado,0)>0 then'
      '      case  round(ITE.quantidade_impressao, 3) '
      '        when round(1.0/2,3) then '#39'1/2'#39
      '        when round(1.0/3,3) then '#39'1/3'#39
      '        when round(1.0/4,3) then '#39'1/4'#39
      '      end '
      '    else'
      '      to_char(ite.quantidade_impressao, '#39'FM999990D00'#39') end'
      '  else'
      '    case when coalesce( ite.item_fracionado,0)>0 then'
      '      case  round(ITE.ite_002, 3) '
      '        when round(1.0/2,3) then '#39'1/2'#39
      '        when round(1.0/3,3) then '#39'1/3'#39
      '        when round(1.0/4,3) then '#39'1/4'#39
      '      end '
      '    else'
      '    to_char(ite.ite_002, '#39'FM999990D00'#39') end '
      '  end as varchar(10)) as quantidade,'
      ''
      'cast('
      '  case when coalesce(ITE.quantidade_impressao, 0.0)>0 then'
      '    case  round(ITE.quantidade_impressao, 3) '
      '      when round(1.0/2,3) then '#39'1/2'#39
      '      when round(1.0/3,3) then '#39'1/3'#39
      '      when round(1.0/4,3) then '#39'1/4'#39
      '    end '
      '  else'
      '    case  round(ITE.ite_002, 3) '
      '      when round(1.0/2,3) then '#39'1/2'#39
      '      when round(1.0/3,3) then '#39'1/3'#39
      '      when round(1.0/4,3) then '#39'1/4'#39
      '    end'
      '  end as varchar(3)) as qtde_fracao,'
      ''
      'ite.numero_pedido,'
      'ite.b_producao,'
      'ite.b_entregue,'
      
        'fn_string_opcionais(ite.ven_001, ite.ite_001, ite.emp_001, false' +
        ') as opcionais,'
      #39#39' as dummy_botoes,'
      'pro1.tempo_producao as tempo'
      'from vendaitem ite'
      
        'join venda ven on ven.ven_001=ite.ven_001 and ven.emp_001=ite.em' +
        'p_001'
      'join desc_tamanho_material dm on dm.id_empresa=ite.emp_001'
      
        'left outer join materiais pro1 on(pro1.mat_001 = ite.mat_001 and' +
        ' pro1.emp_001=ite.emp_001)'
      'left outer join usuarios gar on (gar.usu_001 = ite.gar_001)'
      
        'left outer join mesa mes on (mes.emp_001 = ven.emp_001) and (mes' +
        '.mes_001 = ven.ven_025)'
      'where '
      'ite.emp_001 = :id_empresa'
      'and ite.sit_001 = 4'
      'and ite.ite_013>0 '
      'and ((ite.ite_013 = :cod_impressora) or (:cod_impressora=0))'
      
        'and ven.sit_001 not in (0,1,2) --n'#227'o pegaremos vendas que estao ' +
        '0 em digitacao, 1 concluida e 2 canceladas.'
      
        'and ((ite.b_producao and :tipo_exibicao=1) or (not ite.b_produca' +
        'o and not ite.b_entregue and :tipo_exibicao=2))'
      'order by ite.ven_001, ite.ite_001')
    Left = 64
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'cod_impressora'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'tipo_exibicao'
        Value = 1
      end>
    object qrProducaomesa_delivery: TWideStringField
      FieldName = 'mesa_delivery'
      ReadOnly = True
      Size = 100
    end
    object qrProducaonro_venda: TIntegerField
      FieldName = 'nro_venda'
      ReadOnly = True
    end
    object qrProducaoitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrProducaocod_produto: TIntegerField
      FieldName = 'cod_produto'
      Required = True
    end
    object qrProducaoproduto: TWideStringField
      FieldName = 'produto'
      ReadOnly = True
      Size = 100
    end
    object qrProducaoobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrProducaogarcom: TWideStringField
      FieldName = 'garcom'
      ReadOnly = True
      Size = 100
    end
    object qrProducaoitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrProducaoquantidade: TWideStringField
      FieldName = 'quantidade'
      ReadOnly = True
      Size = 10
    end
    object qrProducaonumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
    end
    object qrProducaotempo_producao: TWideStringField
      FieldName = 'tempo_producao'
      ReadOnly = True
      Size = 5
    end
    object qrProducaoqtde_fracao: TWideStringField
      FieldName = 'qtde_fracao'
      ReadOnly = True
      Size = 3
    end
    object qrProducaob_producao: TBooleanField
      FieldName = 'b_producao'
    end
    object qrProducaob_entregue: TBooleanField
      FieldName = 'b_entregue'
    end
    object qrProducaoid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrProducaodummy_botoes: TWideMemoField
      FieldName = 'dummy_botoes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrProducaoopcionais: TWideMemoField
      FieldName = 'opcionais'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrProducaotempo: TIntegerField
      FieldName = 'tempo'
      ReadOnly = True
    end
  end
  object dsProducao: TDataSource
    AutoEdit = False
    DataSet = qrProducao
    Left = 144
    Top = 408
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 296
    Top = 408
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList24
    Left = 224
    Top = 408
    object acPronto: TAction
      Caption = 'Pronto'
      OnExecute = acProntoExecute
    end
    object acEntregue: TAction
      Caption = 'Entregue'
      OnExecute = acEntregueExecute
    end
  end
end
