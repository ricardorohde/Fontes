inherited frmControleDeliveryVendaAnterior: TfrmControleDeliveryVendaAnterior
  Caption = 'Vendas anteriores'
  ClientHeight = 507
  ClientWidth = 1007
  ExplicitWidth = 1013
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1007
    Height = 458
    ExplicitWidth = 1007
    ExplicitHeight = 458
    FullHeight = 200
    object DBText1: TDBText
      Left = 14
      Top = 10
      Width = 71
      Height = 19
      AutoSize = True
      DataField = 'nome_cliente'
      DataSource = dsVendasCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 14
      Top = 36
      Width = 979
      Height = 416
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsVendasCliente
        DataController.KeyFieldNames = 'ordem_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Selecao: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueGrayed = 'False'
          Options.AutoWidthSizable = False
          Width = 30
        end
        object cxGrid1DBTableView1nro_venda: TcxGridDBColumn
          Caption = 'Nro. Venda'
          DataBinding.FieldName = 'nro_venda'
          Visible = False
          Options.AutoWidthSizable = False
          Width = 82
        end
        object cxGrid1DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
        end
        object cxGrid1DBTableView1nro_item: TcxGridDBColumn
          DataBinding.FieldName = 'nro_item'
          Visible = False
        end
        object cxGrid1DBTableView1descricao_item: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'descricao_item'
          Width = 229
        end
        object cxGrid1DBTableView1desc_tamanho: TcxGridDBColumn
          Caption = 'Tamanho'
          DataBinding.FieldName = 'desc_tamanho'
          Options.AutoWidthSizable = False
          Width = 62
        end
        object cxGrid1DBTableView1qtdevenda: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'qtdevenda'
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1vlrvenda: TcxGridDBColumn
          DataBinding.FieldName = 'vlrvenda'
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1acrescimo: TcxGridDBColumn
          Caption = 'Acr'#233'scimo'
          DataBinding.FieldName = 'acrescimo'
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Visible = False
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total'
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1observacao: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'observacao'
          Width = 167
        end
        object cxGrid1DBTableView1item_fracionado: TcxGridDBColumn
          DataBinding.FieldName = 'item_fracionado'
          Options.AutoWidthSizable = False
          Width = 87
        end
        object cxGrid1DBTableView1desc_venda: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'desc_venda'
          Visible = False
          GroupIndex = 0
          Options.Sorting = False
          SortIndex = 1
          SortOrder = soDescending
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'data_venda'
          Visible = False
          SortIndex = 0
          SortOrder = soDescending
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 458
    Width = 1007
    ExplicitTop = 458
    ExplicitWidth = 1007
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 888
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
      Left = 769
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
  object qrVendasCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      
        '     (row_number() over( order by v.ven_004 desc nulls last )) a' +
        's ordem_item,'
      
        '      Cast(concat( v.ven_029, '#39' Data: '#39', to_char(v.ven_004, '#39'dd/' +
        'MM/yyyy'#39'), '#39' Total venda: '#39', cast(v.ven_009 as money) ) as varch' +
        'ar(200)) as desc_venda,'
      '      vi.emp_001 as id_empresa,'
      '      vi.ven_001 as id_venda,'
      '      v.ven_029 as nro_venda,'
      '      v.ven_004 as data_venda,'
      '      vi.ite_001 as nro_item,  '
      '      c.cli_002 as nome_cliente , '
      '      c.cli_001 as id_cliente,  '
      '      vi.ite_002 as qtdevenda,'
      '      vi.ite_003 as vlrvenda ,'
      '      vi.acrescimo    ,'
      '      vi.b_venda_tamanho,'
      '      mat.mat_003 as descricao_item,'
      '      vi.ite_006 as observacao,'
      '      vi.data_hora_lancamento,'
      '      vi.sit_001 as cod_status,'
      '      fn_situacoes(vi.sit_001) as status,'
      '      vi.desconto,'
      
        '      (vi.ite_002 * vi.ite_003 * vi.desconto * 0.01) as valor_de' +
        'sconto,'
      '      vi.ite_005 as valor_total,'
      '      vi.mat_001 as id_material,'
      '      cast(('
      'case when vi.b_venda_tamanho then '
      '  case vi.tamanho'
      '    when '#39'P'#39' then  dm.tamanho_p'
      '    when '#39'M'#39' then  dm.tamanho_m'
      '    when '#39'G'#39' then  dm.tamanho_g'
      '    when '#39'GG'#39' then dm.tamanho_gg '
      '    when '#39'E'#39' then  dm.tamanho_extra'
      '  else '#39#39' end '
      'else '#39#39' end) as varchar(100)) as desc_tamanho,'
      'vi.item_fracionado,'
      '(not sop.id_venda is null) as possui_opcional'
      'from vendaitem vi'
      'join venda v on vi.ven_001=v.ven_001 and vi.emp_001=v.emp_001'
      'join clientes c on v.cli_001=c.cli_001 and c.emp_001=v.emp_001'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      'join desc_tamanho_material dm on dm.id_empresa=vi.emp_001'
      
        'left join (select id_venda, id_vendaitem, id_empresa from vendai' +
        'temopcional group by id_venda, id_vendaitem, id_empresa ) sop  o' +
        'n'
      
        'sop.id_venda=vi.ven_001 and sop.id_empresa=vi.emp_001 and id_ven' +
        'daitem=vi.ite_001'
      'where vi.emp_001 = :id_empresa'
      'and vi.ven_001 <> :id_venda_atual'
      'and c.cli_001=:id_cliente'
      'and v.ven_024='#39'D'#39
      'and not vi.sit_001 in (0,1,2,3)'
      'order by  v.ven_004 desc, v.ven_001,  vi.ite_001')
    AfterOpen = qrVendasClienteAfterOpen
    Left = 440
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda_atual'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_cliente'
        Value = 2
      end>
    object qrVendasClienteordem_item: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object qrVendasClienteid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendasClienteid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendasClientenro_item: TIntegerField
      FieldName = 'nro_item'
      Required = True
    end
    object qrVendasClientenome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendasClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ReadOnly = True
      Required = True
    end
    object qrVendasClienteqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrVendasClientevlrvenda: TFloatField
      DisplayLabel = 'Vl. Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object qrVendasClienteacrescimo: TFloatField
      FieldName = 'acrescimo'
      currency = True
    end
    object qrVendasClientedescricao_item: TWideStringField
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrVendasClienteobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendasClientecod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qrVendasClientestatus: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendasClientedesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendasClientevalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object qrVendasClientevalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrVendasClienteid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendasClientedesc_tamanho: TWideStringField
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object qrVendasClienteitem_fracionado: TIntegerField
      DisplayLabel = 'It. Fracionado'
      FieldName = 'item_fracionado'
    end
    object qrVendasClientenro_venda: TIntegerField
      FieldName = 'nro_venda'
      ReadOnly = True
    end
    object qrVendasClienteb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrVendasClientedesc_venda: TWideStringField
      FieldName = 'desc_venda'
      ReadOnly = True
      Size = 200
    end
    object qrVendasClientepossui_opcional: TBooleanField
      FieldName = 'possui_opcional'
      ReadOnly = True
    end
    object qrVendasClientedata_venda: TDateTimeField
      FieldName = 'data_venda'
      ReadOnly = True
    end
    object qrVendasClientedata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object dsVendasCliente: TDataSource
    DataSet = qrVendasCliente
    Left = 360
    Top = 224
  end
end
