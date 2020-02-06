inherited frmControleMesaImpressaoCozinha: TfrmControleMesaImpressaoCozinha
  Caption = 'Controle Mesa - Impress'#227'o '#224' Cozinha'
  ClientHeight = 284
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 747
    Height = 235
    ExplicitWidth = 747
    ExplicitHeight = 235
    FullHeight = 200
    object cxGrid1: TcxGrid
      Left = 8
      Top = 8
      Width = 731
      Height = 224
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = cdVendaItem
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ordem_item: TcxGridDBColumn
          DataBinding.FieldName = 'ordem_item'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 53
        end
        object cxGrid1DBTableView1nro_item: TcxGridDBColumn
          DataBinding.FieldName = 'nro_item'
          Visible = False
        end
        object cxGrid1DBTableView1descricao_item: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_item'
          Options.Editing = False
          Width = 286
        end
        object cxGrid1DBTableView1observacao: TcxGridDBColumn
          DataBinding.FieldName = 'observacao'
          Width = 217
        end
        object cxGrid1DBTableView1qtdevenda: TcxGridDBColumn
          DataBinding.FieldName = 'qtdevenda'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 75
        end
        object cxGrid1DBTableView1quantidade_impressao: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade_impressao'
          Options.AutoWidthSizable = False
          Width = 104
        end
        object cxGrid1DBTableView1ite_013: TcxGridDBColumn
          DataBinding.FieldName = 'ite_013'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = '(NENHUMA)'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Balc'#227'o'
              Value = 1
            end
            item
              Description = 'Cozinha'
              Value = 2
            end
            item
              Description = 'Bar'
              Value = 3
            end
            item
              Description = 'Sal'#227'o'
              Value = 4
            end
            item
              Description = 'Ambiente'
              Value = 5
            end>
          Options.AutoWidthSizable = False
          Width = 72
        end
        object cxGrid1DBTableView1ite_008: TcxGridDBColumn
          DataBinding.FieldName = 'ite_008'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
          Width = 68
        end
        object cxGrid1DBTableView1ite_011: TcxGridDBColumn
          DataBinding.FieldName = 'ite_011'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Options.ShowEditButtons = isebAlways
          Options.AutoWidthSizable = False
          Width = 59
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 235
    Width = 747
    ExplicitTop = 235
    ExplicitWidth = 747
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 628
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
      Left = 509
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Salvar'
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
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      '  ITE_006= :observacao, '
      '  quantidade_impressao = :quantidade_impressao,'
      '  ite_013 = :ite_013, '
      '  ite_011 = :ite_011, '
      '  ite_008 = :ite_008,'
      '  b_producao = :b_producao,'
      '  b_entregue = :b_entregue'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item'
      ''
      ''
      ''
      ''
      ''
      '')
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
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA '
      ',cast(( '
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(mat.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      
        '    when '#39'E'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')' +
        ' '
      '  else MAT.MAT_003 end'
      'else '
      '  MAT.MAT_003'
      'end) as varchar(100)) as descricao_item'
      '     , ITE.ITE_006 as observacao'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     ,ite.ite_013  -- impressora'
      
        '     ,cast(case when ite.ite_008 = '#39'N'#39' then '#39'S'#39' else '#39'N'#39' end as ' +
        'varchar(1)) as ite_011  -- deve imprimir'
      '     ,ite.ite_008  -- item impresso'
      
        '     , case when ite.quantidade_impressao = 0 then ITE.ITE_002 e' +
        'lse ite.quantidade_impressao end as quantidade_impressao,'
      'true as b_producao,'
      'false as b_entregue'
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    Left = 32
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
        Value = 83
      end>
    object qrVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
    end
    object qrVendaItemnro_item: TIntegerField
      FieldName = 'nro_item'
    end
    object qrVendaItemqtdevenda: TFloatField
      FieldName = 'qtdevenda'
    end
    object qrVendaItemdescricao_item: TWideStringField
      FieldName = 'descricao_item'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemordem_item: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
    end
    object qrVendaItemite_013: TIntegerField
      FieldName = 'ite_013'
    end
    object qrVendaItemite_011: TWideStringField
      FieldName = 'ite_011'
      Size = 1
    end
    object qrVendaItemite_008: TWideStringField
      FieldName = 'ite_008'
      Size = 1
    end
    object qrVendaItemquantidade_impressao: TFloatField
      FieldName = 'quantidade_impressao'
    end
    object qrVendaItemb_producao: TBooleanField
      FieldName = 'b_producao'
    end
    object qrVendaItemb_entregue: TBooleanField
      FieldName = 'b_entregue'
    end
  end
  object dspVendaItem: TDataSetProvider
    DataSet = qrVendaItem
    Left = 112
    Top = 152
  end
  object cdsVendaItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaItem'
    Left = 192
    Top = 152
    object cdsVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object cdsVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
    end
    object cdsVendaItemnro_item: TIntegerField
      FieldName = 'nro_item'
    end
    object cdsVendaItemqtdevenda: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtdevenda'
      DisplayFormat = '0.000'
    end
    object cdsVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      Size = 100
    end
    object cdsVendaItemobservacao: TWideStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacao'
      Size = 200
    end
    object cdsVendaItemordem_item: TLargeintField
      DisplayLabel = 'Item'
      FieldName = 'ordem_item'
    end
    object cdsVendaItemid_material: TIntegerField
      FieldName = 'id_material'
    end
    object cdsVendaItemite_013: TIntegerField
      DisplayLabel = 'Impressora'
      FieldName = 'ite_013'
    end
    object cdsVendaItemite_011: TWideStringField
      DisplayLabel = 'Imprimir'
      FieldName = 'ite_011'
      OnChange = cdsVendaItemite_011Change
      Size = 1
    end
    object cdsVendaItemite_008: TWideStringField
      DisplayLabel = 'Impresso?'
      FieldName = 'ite_008'
      Size = 1
    end
    object cdsVendaItemquantidade_impressao: TFloatField
      DisplayLabel = 'Qtde. a Imprimir'
      FieldName = 'quantidade_impressao'
      DisplayFormat = '0.000'
    end
    object cdsVendaItemb_producao: TBooleanField
      FieldName = 'b_producao'
    end
    object cdsVendaItemb_entregue: TBooleanField
      FieldName = 'b_entregue'
    end
  end
  object cdVendaItem: TDataSource
    DataSet = cdsVendaItem
    Left = 264
    Top = 152
  end
end
