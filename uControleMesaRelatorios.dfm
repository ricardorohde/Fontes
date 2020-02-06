object frmControleMesaRelatorios: TfrmControleMesaRelatorios
  Left = 0
  Top = 0
  Caption = 'frmControleMesaRelatorios'
  ClientHeight = 357
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 374
    Height = 13
    Caption = 
      'Form utilizado apenas para impress'#227'o de relatorios de  vendas me' +
      'sa/comanda'
  end
  object dbItensFracionadoOpcional: TfrxDBDataset
    UserName = 'dbItensFracionadoOpcional'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_venda=id_venda'
      'id_empresa=id_empresa'
      'id_vendaitem=id_vendaitem'
      'id_opcional=id_opcional'
      'valor=valor'
      'descricao=descricao'
      'ord=ord')
    DataSet = qrVendaItemFracionadoOpcional
    BCDToCurrency = False
    Left = 352
    Top = 288
  end
  object dbItensOpcional: TfrxDBDataset
    UserName = 'dbItensOpcional'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_venda=id_venda'
      'id_empresa=id_empresa'
      'id_vendaitem=id_vendaitem'
      'id_opcional=id_opcional'
      'valor=valor'
      'descricao=descricao'
      'ord=ord')
    DataSet = qrVendaItemOpcional
    BCDToCurrency = False
    Left = 352
    Top = 144
  end
  object dbVendaPagAntecipado: TfrxDBDataset
    UserName = 'dbVendaPagAntecipado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_formapgto=id_formapgto'
      'valor=valor'
      'desc_formapag=desc_formapag')
    DataSet = qrVendaPagAntecipado
    BCDToCurrency = False
    Left = 352
    Top = 192
  end
  object dbPedido: TfrxDBDataset
    UserName = 'dbPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data_atual=fechamento'
      'id_mesa=id_mesa'
      'id_venda=id_venda'
      'nro_mesa=nro_mesa'
      'descricao_mesa=mesa'
      'obs_mesa=nomecliente'
      'data_abertura=abertura'
      'nro_pessoas=nro_pessoas'
      'nro_couvert_m=nro_couvert_m'
      'nro_couvert_f=nro_couvert_f'
      'cpf_cliente=cpf_cliente'
      'valor_antecipado=valor_antecipado'
      'valor_desconto=valor_desconto'
      'nro_itens=nro_itens'
      'total_couvert=total_couvert'
      'valor_pessoa=valor_pessoa'
      'tipo_venda=tipo_venda'
      'valor_desconto_itens=valor_desconto_itens'
      'valor_venda=valor_venda'
      'valor_tx=valor_tx'
      'valor_total_venda=valor_total_venda'
      'total_itens=total_itens')
    DataSet = qrVendaMesaRep
    BCDToCurrency = False
    Left = 352
    Top = 48
  end
  object dbItens: TfrxDBDataset
    UserName = 'dbItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'id_venda=id_venda'
      'nro_item=nro_item'
      'qtdevenda=qtdevenda'
      'vlrvenda=vlrvenda'
      'descricao_item=descricao_item'
      'observacao=observacao'
      'cod_status=cod_status'
      'status=status'
      'desconto=desconto'
      'valor_total=valor_total'
      'valor_taxa10=taxa'
      'valor_total_taxa10=total'
      'ordem_item=ordem_item'
      'valor_desconto=valor_desconto'
      'id_material=id_material'
      'descricao_item_sem_tamanho=descricao_item_sem_tamanho'
      'desc_tamanho=desc_tamanho'
      'item_fracionado=item_fracionado'
      'data_hora_lancamento=data_hora_lancamento')
    DataSet = qrVendaItemRep
    BCDToCurrency = False
    Left = 352
    Top = 96
  end
  object dbItensFracionado: TfrxDBDataset
    UserName = 'dbItensFracionado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'id_venda=id_venda'
      'nro_item=nro_item'
      'qtdevenda=qtdevenda'
      'vlrvenda=vlrvenda'
      'descricao_item=descricao_item'
      'observacao=observacao'
      'cod_status=cod_status'
      'status=status'
      'desconto=desconto'
      'valor_total=valor_total'
      'valor_taxa10=taxa'
      'valor_total_taxa10=total'
      'ordem_item=ordem_item'
      'valor_desconto=valor_desconto'
      'id_material=id_material'
      'descricao_item_sem_tamanho=descricao_item_sem_tamanho'
      'desc_tamanho=desc_tamanho'
      'item_fracionado=item_fracionado'
      'qtd_fracao=qtd_fracao'
      'data_hora_lancamento=data_hora_lancamento')
    DataSet = qrVendaItemFracionadoRep
    BCDToCurrency = False
    Left = 352
    Top = 240
  end
  object dsVendaItemRep: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemRep
    Left = 224
    Top = 96
  end
  object dsVendaItemFracionadoRep: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemFracionadoRep
    Left = 224
    Top = 240
  end
  object qrVendaItemRep: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      '-- primeira sele'#231#227'o: select geral, n'#227'o agrupa'
      ' '
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item_sem_tamanho'
      '     , cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as desc_tamanho'
      '     ,cast(trim(concat('
      'mat.mat_003,'
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat('#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat('#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat('#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat('#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      '    when '#39'E'#39' then  concat('#39' ('#39',dm.tamanho_extra,'#39')'#39')'
      '    else '#39#39' end '
      'end'
      
        '--,case when trim(ite.ite_006) <>'#39#39' then concat('#39' (OBS.: '#39', trim' +
        '(ite.ite_006),'#39')'#39') end '
      ')) as varchar(100)) as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      '     , ite.desconto as valor_desconto'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not :agrupar_itens'
      'and not ite.sit_001 in (0,1,2,3)'
      'and (ite.item_fracionado is null or ite.item_fracionado=0)'
      'and ITE.ITE_005 > 0.01'
      ''
      
        '-- segunda sele'#231#227'o: se marcado para agrupar, por'#233'm, os itens com' +
        ' opcionais devem aparecer separado'
      'union all'
      ''
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item_sem_tamanho'
      '     , cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as desc_tamanho'
      '     ,cast(trim(concat('
      'mat.mat_003,'
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat('#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat('#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat('#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat('#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      '    when '#39'E'#39' then  concat('#39' ('#39',dm.tamanho_extra,'#39')'#39')'
      '    else '#39#39' end '
      'end'
      
        '--,case when trim(ite.ite_006) <>'#39#39' then concat('#39' (OBS.: '#39', trim' +
        '(ite.ite_006),'#39')'#39') end '
      ')) as varchar(100)) as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      '     , ite.desconto as valor_desconto'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and :agrupar_itens'
      'and   ITE.ITE_005 > 0.01'
      'and not ite.sit_001 in (0,1,2,3)'
      'and (ite.item_fracionado is null or ite.item_fracionado=0)'
      
        'and ((coalesce(ite.acrescimo,0.0)>0.0) ) --possui  acrescimo (op' +
        'cionais)'
      ''
      '-- terceira sele'#231#227'o: os itens agrupados sem opcionais'
      'union all'
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , -mat.mat_001 as nro_item     '
      '     , sum(ITE.ITE_002) AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item_sem_tamanho'
      '     , cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as desc_tamanho'
      '     ,cast(trim(concat('
      'mat.mat_003,'
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat('#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat('#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat('#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat('#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      '    when '#39'E'#39' then  concat('#39' ('#39',dm.tamanho_extra,'#39')'#39')'
      '    else '#39#39' end '
      'end'
      
        '--,case when trim(ite.ite_006) <>'#39#39' then concat('#39' (OBS.: '#39', trim' +
        '(ite.ite_006),'#39')'#39') end '
      ')) as varchar(100)) as descricao_item'
      '     , ITE.ITE_006 as observacao'
      
        '     , ven.ven_004 as data_hora_lancamento --se for agrupar, n'#227'o' +
        ' da pra pegar a data de lancamento do item'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      '     , ite.desconto as valor_desconto'
      '     , sum(ITE.ITE_005) as valor_total'
      '     , sum(ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , sum(ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valo' +
        'r_total_taxa10'
      '     , 999 as ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      
        'join venda ven on ven.ven_001=ite.ven_001 and ven.emp_001=ite.em' +
        'p_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and :agrupar_itens'
      'and not ite.sit_001 in (0,1,2,3)'
      'and (ite.item_fracionado is null or ite.item_fracionado=0)'
      
        'and ((coalesce(ite.acrescimo,0.0)<=0.0)) -- n'#227'o possui acrescimo' +
        ' (opcionais)'
      'and ITE.ITE_005 > 0.01'
      'group by '
      'ite.emp_001, ite.ven_001, mat.mat_003, ite.tamanho, mat.mat_001,'
      
        'dm.tamanho_p, dm.tamanho_m, dm.tamanho_g, dm.tamanho_gg , dm.tam' +
        'anho_extra,'
      
        'ite.b_venda_tamanho, ite.ite_003, ite.ite_006, ven.ven_004, ite.' +
        'sit_001, '
      'ite.desconto, ite.mat_001, ite.item_fracionado'
      ''
      ''
      'ORDER BY 3')
    ReadOnly = True
    Left = 80
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'flag_taxa_10'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 31
      end
      item
        DataType = ftBoolean
        Name = 'agrupar_itens'
        Value = False
      end>
    object IntegerField1: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'nro_item'
      Required = True
    end
    object FloatField1: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object WideStringField1: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object WideStringField2: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object IntegerField4: TIntegerField
      FieldName = 'cod_status'
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FloatField3: TFloatField
      FieldName = 'desconto'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object FloatField5: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object FloatField6: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object FloatField7: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object WideStringField4: TWideStringField
      FieldName = 'descricao_item_sem_tamanho'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object IntegerField6: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemRepdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object qrVendaItemFracionadoRep: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item_sem_tamanho'
      '     , '
      'case  round(ITE.ITE_002, 3) '
      'when round(1.0/2,3) then '#39'1/2'#39
      'when round(1.0/3,3) then '#39'1/3'#39
      'when round(1.0/4,3) then '#39'1/4'#39
      'end as qtd_fracao ,'
      ''
      'cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as desc_tamanho'
      '     ,cast(trim(concat('
      'mat.mat_003,'
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat('#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat('#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat('#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat('#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      '    when '#39'E'#39' then  concat('#39' ('#39',dm.tamanho_extra,'#39')'#39')'
      '    else '#39#39' end '
      'end'
      
        '--,case when trim(ite.ite_006) <>'#39#39' then concat('#39' (OBS.: '#39', trim' +
        '(ite.ite_006),'#39')'#39') end'
      ')) as varchar(100))  as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      
        '     , (ITE.ITE_002 * ITE.ITE_003 * ite.desconto * 0.01) as valo' +
        'r_desconto'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'and ite.item_fracionado>0'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    Left = 80
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'flag_taxa_10'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 31
      end>
    object IntegerField7: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'nro_item'
      Required = True
    end
    object FloatField8: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object FloatField9: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object WideStringField6: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object WideStringField7: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object IntegerField10: TIntegerField
      FieldName = 'cod_status'
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FloatField10: TFloatField
      FieldName = 'desconto'
    end
    object FloatField11: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object FloatField12: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object FloatField13: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object LargeintField2: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object FloatField14: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object WideStringField9: TWideStringField
      FieldName = 'descricao_item_sem_tamanho'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object IntegerField12: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemFracionadoRepqtd_fracao: TWideMemoField
      FieldName = 'qtd_fracao'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemFracionadoRepdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object qrVendaMesaRep: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'case when v.ven_024 ='#39'M'#39' then m.mes_001 else 0 end as id_mesa,'
      'v.ven_001 as id_venda, '
      
        'case when v.ven_024 ='#39'M'#39' then m.mes_003 else v.ven_026 end as nr' +
        'o_mesa, '
      'cast( '
      'case when v.ven_024 ='#39'M'#39
      'then m.mes_002'
      'else concat('#39'COMANDA '#39', v.ven_026) end'
      'as varchar(40) ) as descricao_mesa,'
      'v.ven_027 as obs_mesa,'
      'v.dat_001_1 as data_abertura,'
      'v.nro_pessoas,'
      'v.nro_couvert_m,'
      'v.nro_couvert_f,'
      'v.cpf_cliente,'
      'v.ven_024 as tipo_venda,'
      'coalesce(vpa.valor_antecipado, 0) as valor_antecipado,'
      'sum((I.ITE_005+(I.ITE_005 * 0.1) * :flag_taxa_10)) +'
      
        '(case when :flag_couvert_mesa then :valor_couvert_masc * coalesc' +
        'e(v.nro_couvert_m, 0.00) else 0.00 end )+ '
      
        '(case when :flag_couvert_mesa then :valor_couvert_fem * coalesce' +
        '(v.nro_couvert_f, 0.00) else 0.00 end) '
      'as valor_total_venda,'
      
        '(case when :flag_couvert_mesa then :valor_couvert_masc * coalesc' +
        'e(v.nro_couvert_m, 0.00) else 0.00 end )+ '
      
        '(case when :flag_couvert_mesa then :valor_couvert_fem * coalesce' +
        '(v.nro_couvert_f, 0.00) else 0.00 end) as total_couvert,'
      'coalesce(sum(i.desconto), 0.00) as valor_desconto,'
      'coalesce(sum(i.desconto), 0.00) as valor_desconto_itens,'
      
        'sum(i.ITE_005) as valor_venda, -- mantido por quest'#227'o de compati' +
        'bilidade '
      'sum(i.ite_005) as total_itens,'
      
        'coalesce(sum(I.ITE_005 * 0.1 * :flag_taxa_10), 0.00) as valor_tx' +
        ','
      'count (1) as nro_itens,'
      '(sum((I.ITE_005+(I.ITE_005 * 0.1) * :flag_taxa_10)) +'
      
        '(case when :flag_couvert_mesa then :valor_couvert_masc * coalesc' +
        'e(v.nro_couvert_m, 0.00) else 0.00 end )+ '
      
        '(case when :flag_couvert_mesa then :valor_couvert_fem * coalesce' +
        '(v.nro_couvert_f, 0.00) else 0.00 end) '
      '- coalesce(vpa.valor_antecipado, 0))/'
      
        'case when coalesce(v.nro_pessoas, 1)<1 then 1 else v.nro_pessoas' +
        ' end'
      'as valor_pessoa'
      'from venda v'
      '-- uniao com as vendas em aberto e pre fechadas situacoes 8 e 21'
      
        'join vendaitem i on i.ven_001=v.ven_001 and i.emp_001=v.emp_001 ' +
        'and i.sit_001 in (4)'
      '-- uni'#227'o com pagamento antecipado'
      
        'left join ( select sum(valor) as valor_antecipado , vpa.id_venda' +
        ' '
      'from venda_pag_antecipado vpa '
      
        'join venda v on vpa.id_venda=v.ven_001 and  vpa.id_empresa=v.emp' +
        '_001'
      'where  v.sit_001 in (4,8,21,19)'
      'group by vpa.id_venda ) vpa on vpa.id_venda=v.ven_001'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where  v.emp_001 = :emp'
      'and v.ven_001= :id_venda'
      'and i.ite_005 >0.01'
      'group by '
      
        'm.mes_001, v.ven_001, m.mes_003, m.mes_002, v.ven_027,v.dat_001_' +
        '1, v.ven_024, v.ven_026,'
      
        'v.nro_pessoas, v.nro_couvert_m, v.nro_couvert_f, v.cpf_cliente, ' +
        'vpa.valor_antecipado, v.ven_009'
      '')
    ReadOnly = True
    OnCalcFields = qrVendaMesaRepCalcFields
    Left = 80
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flag_couvert_mesa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_couvert_masc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_couvert_fem'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 31
      end>
    object DateTimeField1: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'data_atual'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
      Calculated = True
    end
    object qrVendaMesaRepid_mesa: TIntegerField
      FieldName = 'id_mesa'
      Required = True
    end
    object qrVendaMesaRepid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
      Required = True
    end
    object qrVendaMesaRepnro_mesa: TIntegerField
      FieldName = 'nro_mesa'
      Required = True
    end
    object qrVendaMesaRepdescricao_mesa: TWideStringField
      FieldName = 'descricao_mesa'
      Required = True
      Size = 40
    end
    object qrVendaMesaRepobs_mesa: TWideStringField
      FieldName = 'obs_mesa'
      ReadOnly = True
      Size = 200
    end
    object qrVendaMesaRepdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrVendaMesaRepnro_pessoas: TIntegerField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object qrVendaMesaRepnro_couvert_m: TIntegerField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrVendaMesaRepnro_couvert_f: TIntegerField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object qrVendaMesaRepcpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
      ReadOnly = True
    end
    object qrVendaMesaRepvalor_antecipado: TFloatField
      FieldName = 'valor_antecipado'
      ReadOnly = True
    end
    object qrVendaMesaRepvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object qrVendaMesaRepnro_itens: TLargeintField
      FieldName = 'nro_itens'
      ReadOnly = True
    end
    object qrVendaMesaReptotal_couvert: TFloatField
      FieldName = 'total_couvert'
      ReadOnly = True
    end
    object qrVendaMesaRepvalor_pessoa: TFloatField
      FieldName = 'valor_pessoa'
      ReadOnly = True
    end
    object qrVendaMesaReptipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object qrVendaMesaRepvalor_desconto_itens: TFloatField
      FieldName = 'valor_desconto_itens'
      ReadOnly = True
    end
    object qrVendaMesaRepvalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
    end
    object qrVendaMesaRepvalor_tx: TFloatField
      FieldName = 'valor_tx'
      ReadOnly = True
    end
    object qrVendaMesaRepvalor_total_venda: TFloatField
      FieldName = 'valor_total_venda'
      ReadOnly = True
    end
    object qrVendaMesaReptotal_itens: TFloatField
      FieldName = 'total_itens'
      ReadOnly = True
    end
  end
  object qrVendaPagAntecipado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'vpa.id_formapgto, vpa.valor, f.for_002 as desc_formapag'
      'from venda_pag_antecipado vpa  '
      
        'join formapgto f on f.emp_001=vpa.id_empresa and f.for_001=vpa.i' +
        'd_formapgto  '
      'where vpa.id_venda=:id_venda and vpa.id_empresa=:emp'
      ''
      'union all '
      ''
      
        'select 0, sum((I.ITE_005+(I.ITE_005 * 0.1) * :flag_taxa_10)) - c' +
        'oalesce(sub_vpa.valor_antecipado,0), '
      #39'PAGAMENTO PENDENTE'#39' as desc_formapag'
      'from venda v '
      
        'join vendaitem i on i.ven_001=v.ven_001 and i.emp_001=v.emp_001 ' +
        'and i.sit_001 in (4)'
      'left join '
      
        '( select sum(valor) as valor_antecipado , vpa.id_venda, vpa.id_e' +
        'mpresa '
      'from venda_pag_antecipado vpa '
      
        'join venda v on vpa.id_venda=v.ven_001 and  vpa.id_empresa=v.emp' +
        '_001'
      
        'where  v.sit_001 in (4,8,21,19) and vpa.id_venda=:id_venda and v' +
        'pa.id_empresa=:emp '
      
        'group by vpa.id_venda, vpa.id_empresa ) sub_vpa on sub_vpa.id_ve' +
        'nda = v.ven_001 and sub_vpa.id_empresa=v.emp_001'
      'where v.ven_001=:id_venda and v.emp_001=:emp'
      'and i.ite_005 > 0.01'
      'group by sub_vpa.valor_antecipado')
    ReadOnly = True
    Left = 80
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end>
    object qrVendaPagAntecipadoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
      Required = True
    end
    object qrVendaPagAntecipadovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qrVendaPagAntecipadodesc_formapag: TWideMemoField
      FieldName = 'desc_formapag'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dsVendaPagAntecipado: TDataSource
    AutoEdit = False
    DataSet = qrVendaPagAntecipado
    Left = 224
    Top = 192
  end
  object qrVendaItemOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_venda, id_empresa, id_vendaitem, id_opcional, descrica' +
        'o, valor, ord, tipo from '
      '(select '
      'vio.id_venda, '
      'vio.id_empresa, '
      'vio.id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao, '#39' (Valor: '#39',trim(to_char(' +
        '(o.valor * vi.ite_002) , '#39'99999990D99'#39')),'#39')'#39' ) as varchar(200)) ' +
        'as descricao, '
      '(o.valor * vi.ite_002) as valor ,'
      '1 as ord,'
      'o.tipo'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      
        'join vendaitem vi on vio.id_venda=vi.ven_001 and vio.id_empresa=' +
        'vi.emp_001 and vio.id_vendaitem=vi.ite_001'
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      ''
      ') sub'
      'order by 3,7,8')
    MasterSource = dsVendaItemRep
    MasterFields = 'nro_item'
    DetailFields = 'id_vendaitem'
    ReadOnly = True
    Left = 80
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = 31
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'nro_item'
        ParamType = ptInput
        Value = 1
      end>
    object qrVendaItemOpcionalid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_opcional: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object qrVendaItemOpcionaldescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object qrVendaItemOpcionalvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object qrVendaItemOpcionalord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
    object qrVendaItemOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
  end
  object qrVendaItemFracionadoOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_venda, id_empresa, id_vendaitem, id_opcional, descrica' +
        'o, valor, ord, tipo from '
      '('
      'select '
      'vio.id_venda, '
      'vio.id_empresa,'
      'suf.ultimo_item_fracionado as id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao, '#39' (Valor: '#39',trim(to_char(' +
        '(sum(o.valor * vi.ite_002)) , '#39'99999990D99'#39')),'#39')'#39' ) as varchar(2' +
        '00)) as descricao, '
      'sum((o.valor * vi.ite_002)) as valor ,'
      '1 as ord,'
      'o.tipo'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      
        'join vendaitem vi on vio.id_venda=vi.ven_001 and vio.id_empresa=' +
        'vi.emp_001 and vio.id_vendaitem=vi.ite_001'
      ''
      ' left join '
      
        '(select max(ite_001) as ultimo_item_fracionado, item_fracionado,' +
        ' ven_001, emp_001  from ('
      'select ite_001, item_fracionado, ven_001, emp_001'
      
        'from vendaitem vi where  ven_001=:id_venda and emp_001=:id_empre' +
        'sa '
      'and item_fracionado is not null'
      'group by item_fracionado, ite_001, ven_001, emp_001'
      'order by ite_001) vis'
      
        'group by vis.item_fracionado, ven_001, emp_001 ) suf on vio.id_v' +
        'enda=suf.ven_001 and vio.id_empresa=suf.emp_001 and vi.item_frac' +
        'ionado=suf.item_fracionado '
      ''
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      
        'group by vio.id_venda, vio.id_empresa, vio.id_opcional, o.descri' +
        'cao, vi.item_fracionado, suf.ultimo_item_fracionado, o.tipo'
      ''
      ''
      ') sub'
      'order by 3,7,8')
    MasterSource = dsVendaItemFracionadoRep
    MasterFields = 'nro_item'
    DetailFields = 'id_vendaitem'
    ReadOnly = True
    Left = 80
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'nro_item'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField13: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object IntegerField14: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object IntegerField15: TIntegerField
      FieldName = 'id_vendaitem'
      ReadOnly = True
    end
    object IntegerField16: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object FloatField15: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object WideStringField11: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object IntegerField17: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
    object qrVendaItemFracionadoOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
  end
  object dbEmpresa: TfrxDBDataset
    UserName = 'dbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_001=emp_001'
      'emp_002=emp_002'
      'emp_003=emp_003'
      'emp_004=emp_004'
      'emp_005=emp_005'
      'emp_006=emp_006'
      'emp_007=emp_007'
      'emp_008=emp_008'
      'emp_011=emp_011'
      'emp_012=emp_012'
      'cep_002=cep_002'
      'cep_003=cep_003'
      'cep_004=cep_004'
      'emp_013=emp_013'
      'emp_014=emp_014')
    DataSet = frmMenu.qrEmpresa
    BCDToCurrency = False
    Left = 440
    Top = 48
  end
  object RepFechaConta: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43576.665136388890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 48
    Datasets = <
      item
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = frmMenu.dbImpressaoCozinha
        DataSetName = 'dbImpressaoCozinha'
      end
      item
        DataSet = frmMenu.dbImpressaoCozinhaCli
        DataSetName = 'dbImpressaoCozinhaCli'
      end
      item
        DataSet = frmMenu.dbImpressaoCozinhaIngr
        DataSetName = 'dbImpressaoCozinhaIngr'
      end
      item
        DataSet = frmMenu.dbImpressaoCozinhaObs
        DataSetName = 'dbImpressaoCozinhaObs'
      end
      item
        DataSet = dbItens
        DataSetName = 'dbItens'
      end
      item
        DataSet = dbItensFracionado
        DataSetName = 'dbItensFracionado'
      end
      item
        DataSet = dbItensFracionadoOpcional
        DataSetName = 'dbItensFracionadoOpcional'
      end
      item
        DataSet = dbItensOpcional
        DataSetName = 'dbItensOpcional'
      end
      item
        DataSet = dbPedido
        DataSetName = 'dbPedido'
      end
      item
        DataSet = dbVendaPagAntecipado
        DataSetName = 'dbVendaPagAntecipado'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sMensagemTxServico'
        Value = Null
      end
      item
        Name = 'sMensagemCouvert'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 58.000000000000000000
      PaperHeight = 448.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
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
        Height = 179.858380000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 188.976500000000000000
        object Memo1: TfrxMemoView
          Left = 3.779527560000000000
          Top = 3.779530000000001000
          Width = 185.196970000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '*** CUPOM PARA SIMPLES CONFERENCIA *** '
            '*** Elite Chef ***')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779527560000000000
          Top = 33.118120000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."emp_003"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 122.944960000000000000
          Top = 48.236240000000010000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."emp_007"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779527560000000000
          Top = 48.236240000000010000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."cep_004"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779527560000000000
          Top = 63.354360000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."cep_003"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 3.779527559055120000
          Top = 78.472480000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone.:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 32.236240000000000000
          Top = 78.472480000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."emp_013"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 95.590600000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbPedido."Mesa"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779527559055120000
          Top = 111.708720000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779527559055120000
          Top = 127.826840000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Abertura:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779527559055120000
          Top = 143.944960000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fechamento:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 160.063080000000000000
          Width = 257.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779527560000000000
          Top = 160.063080000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o dos produtos')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 85.929190000000000000
          Top = 160.063080000000000000
          Width = 34.015770000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 121.504020000000000000
          Top = 160.063080000000000000
          Width = 34.015770000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 157.756030000000000000
          Top = 160.063080000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 175.748031500000000000
          Width = 257.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 39.795300000000000000
          Top = 111.708720000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DataField = 'nomecliente'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."nomecliente"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 66.354360000000000000
          Top = 127.826840000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'abertura'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."abertura"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 66.252010000000000000
          Top = 143.944960000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'fechamento'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."fechamento"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Top = 94.488250000000000000
          Width = 257.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 260.787570000000000000
        Width = 188.976500000000000000
        DataSet = dbItens
        DataSetName = 'dbItens'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 86.488149920000000000
          Width = 32.125984250000000000
          Height = 15.118120000000000000
          DataField = 'vlrvenda'
          DataSet = dbItens
          DataSetName = 'dbItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItens."vlrvenda"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 156.283550000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbItens
          DataSetName = 'dbItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItens."valor_total"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779527560000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao_item'
          DataSet = dbItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItens."descricao_item"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo21: TfrxMemoView
          Left = 122.393664170000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'qtdevenda'
          DataSet = dbItens
          DataSetName = 'dbItens'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItens."qtdevenda"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 661.417750000000000000
        Width = 188.976500000000000000
        DataSet = dbVendaPagAntecipado
        DataSetName = 'dbVendaPagAntecipado'
        PrintIfDetailEmpty = True
        RowCount = 0
        object dbVendaPagAntecipadodesc_forma: TfrxMemoView
          Top = 2.559060000000045000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          DataField = 'desc_formapag'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."desc_formapag"]')
          ParentFont = False
          WordBreak = True
        end
        object dbVendaPagAntecipadovalor: TfrxMemoView
          Left = 123.283550000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."valor"]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 64.425170000000000000
        Top = 740.787880000000000000
        Width = 188.976500000000000000
        object Line10: TfrxLineView
          Top = 24.456710000000040000
          Width = 181.417274020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          Left = 16.559060000000000000
          Top = 4.173160000000052000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sMensagemTxServico]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 377.953000000000000000
        Width = 188.976500000000000000
        DataSet = dbItensFracionado
        DataSetName = 'dbItensFracionado'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo39: TfrxMemoView
          Left = 147.047310000000000000
          Width = 32.125984250000000000
          Height = 15.118120000000000000
          DataField = 'vlrvenda'
          DataSet = dbItensFracionado
          DataSetName = 'dbItensFracionado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFracionado."vlrvenda"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 212.992125980000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbItensFracionado
          DataSetName = 'dbItensFracionado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFracionado."valor_total"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 3.779527560000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao_item'
          DataSet = dbItensFracionado
          DataSetName = 'dbItensFracionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFracionado."descricao_item"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo43: TfrxMemoView
          Left = 179.063080000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'qtd_fracao'
          DataSet = dbItensFracionado
          DataSetName = 'dbItensFracionado'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFracionado."qtd_fracao"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 336.378170000000000000
        Width = 188.976500000000000000
        Condition = 'dbItensFracionado."item_fracionado"'
        object Memo36: TfrxMemoView
          Left = 3.779527560000000000
          Top = 2.000000000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '- -- - - - - - Item Fracionado - - - - - - - - - - - - - -')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 1.118119999999976000
          Width = 257.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 298.582870000000000000
        Width = 188.976500000000000000
        DataSet = dbItensOpcional
        DataSetName = 'dbItensOpcional'
        RowCount = 0
        Stretched = True
        object dbItensOpcionaldescricao: TfrxMemoView
          Left = 3.779527560000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao'
          DataSet = dbItensOpcional
          DataSetName = 'dbItensOpcional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensOpcional."descricao"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 415.748300000000000000
        Width = 188.976500000000000000
        DataSet = dbItensFracionadoOpcional
        DataSetName = 'dbItensFracionadoOpcional'
        RowCount = 0
        Stretched = True
        object dbItensFracionadoOpcionaldescricao: TfrxMemoView
          Left = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao'
          DataSet = dbItensFracionadoOpcional
          DataSetName = 'dbItensFracionadoOpcional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFracionadoOpcional."descricao"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 453.543600000000000000
        Width = 188.976500000000000000
        object Memo42: TfrxMemoView
          Left = 3.779527560000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - -')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 145.504020000000000000
        Top = 491.338900000000000000
        Width = 188.976500000000000000
        PrintChildIfInvisible = True
        object Line3: TfrxLineView
          Top = 4.968459999999993000
          Width = 257.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 3.779527559055120000
          Top = 4.968459999999993000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub Total:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 3.779527559055120000
          Top = 39.866109999999880000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Taxa de Servi'#231'o (+):')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779527560000000000
          Top = 72.440939999999900000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 94.559059999999990000
          Width = 257.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          Left = 102.740260000000000000
          Top = 4.968459999999993000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_venda"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 99.842610000000010000
          Top = 74.118120000000040000
          Width = 86.929190000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo29: TfrxMemoView
          Left = 103.740260000000000000
          Top = 39.645640000000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_tx"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 94.181199999999990000
          Top = 73.440940000000010000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_total_venda"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779527559055120000
          Top = 22.866109999999990000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desconto nos itens (-):')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 148.094646850000000000
          Top = 23.086579999999970000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          DataField = 'valor_desconto'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_desconto"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 3.779527559055120000
          Top = 112.370130000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde. de Pessoas:')
          ParentFont = False
        end
        object dbPedidonro_pessoas: TfrxMemoView
          Left = 100.606370000000000000
          Top = 112.370130000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'nro_pessoas'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."nro_pessoas"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 3.779527559055120000
          Top = 127.708720000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total por pessoa:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 100.826840000000000000
          Top = 128.488250000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."valor_pessoa"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 3.779527559055120000
          Top = 96.472479999999850000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde. de itens:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 100.606370000000000000
          Top = 96.472479999999850000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'nro_itens'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."nro_itens"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 145.504020000000000000
          Width = 257.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 3.779527559055120000
          Top = 56.913420000000030000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sMensagemCouvert]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 104.740260000000000000
          Top = 56.692950000000050000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."total_couvert"]')
          ParentFont = False
        end
      end
    end
  end
end
