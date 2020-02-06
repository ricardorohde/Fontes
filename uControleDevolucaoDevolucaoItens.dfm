inherited frmControleDevolucaoDevolucaoItens: TfrmControleDevolucaoDevolucaoItens
  Caption = 'Sele'#231#227'o de itens - Devolu'#231#227'o'
  ClientHeight = 450
  ClientWidth = 966
  ExplicitWidth = 972
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 966
    Height = 401
    ExplicitWidth = 966
    ExplicitHeight = 401
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 103
      Height = 16
      Caption = 'Itens da venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 553
      Top = 9
      Width = 129
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Itens da devolu'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 31
      Width = 420
      Height = 364
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsVendaItem
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1item: TcxGridDBColumn
          DataBinding.FieldName = 'item'
          Options.AutoWidthSizable = False
          Width = 45
        end
        object cxGrid1DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
        end
        object cxGrid1DBTableView1descricao_item: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_item'
          Width = 100
        end
        object cxGrid1DBTableView1qtdevenda: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade_disponivel'
          Options.AutoWidthSizable = False
          Width = 75
        end
        object cxGrid1DBTableView1vlrvenda: TcxGridDBColumn
          DataBinding.FieldName = 'vlrvenda'
          Visible = False
        end
        object cxGrid1DBTableView1observacao: TcxGridDBColumn
          DataBinding.FieldName = 'observacao'
          Visible = False
        end
        object cxGrid1DBTableView1desconto: TcxGridDBColumn
          DataBinding.FieldName = 'desconto'
          Visible = False
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1id_material: TcxGridDBColumn
          DataBinding.FieldName = 'id_material'
          Visible = False
        end
        object cxGrid1DBTableView1item_fracionado: TcxGridDBColumn
          DataBinding.FieldName = 'item_fracionado'
          Visible = False
        end
        object cxGrid1DBTableView1b_venda_tamanho: TcxGridDBColumn
          DataBinding.FieldName = 'b_venda_tamanho'
          Visible = False
        end
        object cxGrid1DBTableView1tamanho: TcxGridDBColumn
          DataBinding.FieldName = 'tamanho'
          Visible = False
        end
        object cxGrid1DBTableView1sit_001: TcxGridDBColumn
          DataBinding.FieldName = 'sit_001'
          Visible = False
        end
        object cxGrid1DBTableView1quantidade_devolvida: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade_devolvida'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btSelecionarItem: TAdvGlowButton
      Left = 434
      Top = 31
      Width = 113
      Height = 41
      Caption = 'Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 26
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btSelecionarItemClick
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
    object btRemoverOp: TAdvGlowButton
      Left = 434
      Top = 78
      Width = 113
      Height = 41
      Caption = 'Remover'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 27
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btRemoverOpClick
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
    object cxGrid2: TcxGrid
      Left = 553
      Top = 31
      Width = 406
      Height = 252
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsItensDevolucao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1id_vendaitem: TcxGridDBColumn
          DataBinding.FieldName = 'id_vendaitem'
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 54
        end
        object cxGridDBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Options.Editing = False
          Options.Filtering = False
          Width = 165
        end
        object cxGridDBTableView1quantidade_devolucao: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade_devolucao'
          Options.AutoWidthSizable = False
          Width = 105
        end
        object cxGridDBTableView1quantidade_dev_anterior: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade_dev_anterior'
          Visible = False
        end
        object cxGridDBTableView1valor_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'valor_unitario'
          Visible = False
        end
        object cxGridDBTableView1quantidade: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade'
          Visible = False
        end
        object cxGridDBTableView1valor_total: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'valor_total'
          Options.Editing = False
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Width = 80
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 553
      Top = 289
      Width = 406
      Height = 106
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object DBText1: TDBText
        Left = 46
        Top = 8
        Width = 38
        Height = 17
        DataField = 'id_vendaitem'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 8
        Width = 30
        Height = 16
        Caption = 'Item'
      end
      object DBText2: TDBText
        Left = 90
        Top = 8
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'descricao'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 96
        Top = 30
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'quantidade'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 10
        Top = 30
        Width = 80
        Height = 16
        Caption = 'Qtde. Venda'
      end
      object DBText4: TDBText
        Left = 87
        Top = 52
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'valor_unitario'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 52
        Width = 71
        Height = 16
        Caption = 'Valor Unit. '
      end
      object DBText5: TDBText
        Left = 226
        Top = 52
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'valor_total'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 149
        Top = 52
        Width = 71
        Height = 16
        Caption = 'Valor Dev. '
      end
      object DBText6: TDBText
        Left = 223
        Top = 30
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'quantidade_devolucao'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 149
        Top = 30
        Width = 68
        Height = 16
        Caption = 'Qtde. Dev.'
      end
      object DBText7: TDBText
        Left = 148
        Top = 78
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'total'
        DataSource = dsItensDevolucao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 10
        Top = 78
        Width = 132
        Height = 19
        Caption = 'Total Devolu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 401
    Width = 966
    ExplicitTop = 401
    ExplicitWidth = 966
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 847
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
      Left = 728
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
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      '  (emp_001, ven_001, ite_001, mat_001, '
      '   ite_002, ite_003, ite_005, ite_006, '
      '   ite_008, ite_009, sit_001, ite_011, '
      '   ite_012, ite_013, gar_001, desconto, '
      '   tamanho, b_venda_tamanho, item_fracionado, '
      '   quantidade_impressao)'
      'VALUES'
      '  (:id_empresa, :id_venda, :nro_item, :id_material, '
      '   :QTDEVENDA, :VLRVENDA, :valor_total, :observacao, '
      '   :ite_008, :hora, :cod_status, :ite_011, '
      '   :ite_012, :ite_013, :gar_001, :desconto, '
      '   :tamanho, :b_venda_tamanho, :item_fracionado, '
      '   :quantidade_impressao)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :id_empresa, ven_001 = :id_venda, ite_001 = :nro_ite' +
        'm, mat_001 = :id_material, '
      
        #9'ite_002 = :QTDEVENDA, ite_003 = :VLRVENDA, ite_005 = :valor_tot' +
        'al, ite_006 = :observacao, '
      
        #9'ite_008 = :ite_008, ite_009 = :hora, sit_001 = :cod_status, ite' +
        '_011 = :ite_011, '
      
        #9'ite_012 = :ite_012, ite_013 = :ite_013, gar_001 = :gar_001, des' +
        'conto = :desconto, '
      
        #9'tamanho = :tamanho, b_venda_tamanho = :b_venda_tamanho, item_fr' +
        'acionado = :item_fracionado,'
      '        quantidade_impressao =:quantidade_impressao'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite' +
        '_005, ite_006, ite_008, ite_009, sit_001, ite_011, ite_012, ite_' +
        '013, gar_001, desconto, tamanho, b_venda_tamanho, item_fracionad' +
        'o FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND ven_001 = :ven_001 AND ite_001 = :ite_0' +
        '01')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM vendaitem'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      '  ite.ven_001 as id_venda,'
      '  ite.ite_001 as item ,    '
      '  ite.ite_002 as qtdevenda,'
      '  ite.ite_003 as vlrvenda ,    '
      '  mat.mat_003 as descricao_item,'
      '  ite.ite_006 as observacao,'
      '  ite.desconto,'
      '  ite.ite_005 as valor_total,'
      '  ite.mat_001 as id_material,'
      '  ite.item_fracionado,'
      '  ite.b_venda_tamanho,'
      '  ite.tamanho,'
      '  ite.sit_001,'
      '  coalesce(di.quantidade, 0.00) as quantidade_devolvida,'
      '  v.cli_001 as id_cliente,'
      
        '  ite.ite_002 - coalesce(di.quantidade, 0.00) as quantidade_disp' +
        'onivel,'
      '  mat.id_setor, mat.utiliza_combo'
      'from vendaitem ite'
      'join venda v on ite.ven_001=v.ven_001 and ite.emp_001=v.emp_001'
      
        'join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_0' +
        '01 = ite.mat_001)'
      
        'left join ( select sum(quantidade) as quantidade, id_venda, id_v' +
        'endaitem, id_empresa from  devolucaoitem group by id_venda, id_v' +
        'endaitem, id_empresa )as di on di.id_venda=ite.ven_001 and di.id' +
        '_vendaitem=ite.ite_001'
      'where ite.emp_001 = :id_empresa'
      'and   ite.ven_001 = :id_venda'
      'and ite.sit_001 not in (0,2,3)'
      'order by ite.ite_001')
    ReadOnly = True
    OnCalcFields = qrVendaItemCalcFields
    Left = 72
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 569
      end>
    object qrVendaItemitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaItemqtdevenda: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtdevenda'
      Required = True
    end
    object qrVendaItemvlrvenda: TFloatField
      FieldName = 'vlrvenda'
      Required = True
    end
    object qrVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaItemvalor_total: TFloatField
      DisplayLabel = 'Total Item'
      FieldName = 'valor_total'
      currency = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrVendaItemtamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object qrVendaItemsit_001: TIntegerField
      FieldName = 'sit_001'
    end
    object qrVendaItemquantidade_devolvida: TFloatField
      FieldName = 'quantidade_devolvida'
      ReadOnly = True
    end
    object qrVendaItemid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ReadOnly = True
    end
    object qrVendaItemquantidade_disponivel: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade_disponivel'
      ReadOnly = True
    end
    object qrVendaItemid_setor: TIntegerField
      FieldName = 'id_setor'
      ReadOnly = True
      Required = True
    end
    object qrVendaItemutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
      ReadOnly = True
    end
  end
  object dsVendaItem: TDataSource
    AutoEdit = False
    DataSet = qrVendaItem
    Left = 152
    Top = 152
  end
  object cdsItensDevolucao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 240
    Top = 152
    object cdsItensDevolucaoid_vendaitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'id_vendaitem'
    end
    object cdsItensDevolucaodescricao: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao'
      Size = 60
    end
    object cdsItensDevolucaoquantidade_dev: TFloatField
      DisplayLabel = 'Qtde. Devolu'#231#227'o'
      FieldName = 'quantidade_devolucao'
      OnChange = cdsItensDevolucaoquantidade_devChange
      EditFormat = '0.000'
    end
    object cdsItensDevolucaoquantidade_dev_anterior: TFloatField
      FieldName = 'quantidade_dev_anterior'
    end
    object cdsItensDevolucaovalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      currency = True
    end
    object cdsItensDevolucaoquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object cdsItensDevolucaovalor_total: TFloatField
      DisplayLabel = 'Total Item'
      FieldKind = fkInternalCalc
      FieldName = 'valor_total'
      currency = True
    end
    object cdsItensDevolucaoid_material: TIntegerField
      FieldName = 'id_material'
    end
    object cdsItensDevolucaoid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object cdsItensDevolucaoutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
    end
    object cdsItensDevolucaototal: TAggregateField
      FieldName = 'total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_total)'
    end
  end
  object dsItensDevolucao: TDataSource
    DataSet = cdsItensDevolucao
    Left = 344
    Top = 152
  end
end
