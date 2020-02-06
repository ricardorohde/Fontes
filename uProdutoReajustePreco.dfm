inherited frmProdutoReajustePreco: TfrmProdutoReajustePreco
  BorderStyle = bsSizeable
  Caption = 'Reajuste de Pre'#231'o'
  ClientHeight = 627
  ClientWidth = 1000
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1016
  ExplicitHeight = 666
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1000
    Height = 578
    ExplicitWidth = 1000
    ExplicitHeight = 578
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 8
      Top = 10
      Width = 985
      Height = 123
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        985
        123)
      object Label4: TLabel
        Left = 11
        Top = 6
        Width = 64
        Height = 18
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbProduto: TLabel
        Left = 160
        Top = 33
        Width = 225
        Height = 19
        AutoSize = False
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 11
        Top = 61
        Width = 109
        Height = 18
        Caption = 'Tipo de ajuste:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 403
        Top = 61
        Width = 52
        Height = 18
        Caption = 'Ajuste:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 403
        Top = 6
        Width = 78
        Height = 18
        Caption = 'Categoria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 524
        Top = 89
        Width = 19
        Height = 19
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btPesquisar: TAdvGlowButton
        AlignWithMargins = True
        Left = 822
        Top = 71
        Width = 150
        Height = 41
        Margins.Left = 0
        Anchors = [akTop, akRight]
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 6
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btPesquisarClick
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
        Layout = blGlyphRight
        MinButtonSizeState = bsLabel
      end
      object cbTipoReajuste: TComboBox
        Left = 11
        Top = 86
        Width = 374
        Height = 27
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Items.Strings = (
          'Pre'#231'o de venda'
          'Pre'#231'o de venda a prazo'
          'Pre'#231'o de custo'
          'Pre'#231'o de venda com base no pre'#231'o de custo'
          'Pre'#231'o de venda a prazo com base no pre'#231'o de custo'
          'Pre'#231'o de custo mantendo margem para venda')
      end
      object edCodProduto: TcxButtonEdit
        Left = 11
        Top = 29
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaProduto
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clWindowText
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnExit = edCodProdutoExit
        Width = 142
      end
      object edAjuste: TJvValidateEdit
        Tag = 1
        Left = 403
        Top = 86
        Width = 115
        Height = 27
        Flat = False
        ParentFlat = False
        Color = 3342335
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfPercent
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HasMaxValue = True
        HasMinValue = True
        MaxValue = 1000.000000000000000000
        ParentFont = False
        TabOrder = 3
        DataConnector.DataField = 'desconto_percent'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 403
        Top = 28
        Width = 278
        Height = 25
        DataField = 'cat_001'
        DataSource = dsCategoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'cat_001'
        ListField = 'descr'
        ListSource = dsListaCategoria
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
      end
      object ckAtivos: TcxCheckBox
        Left = 696
        Top = 27
        TabStop = False
        Caption = 'Somente Ativos'
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 5
      end
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 136
      Width = 985
      Height = 354
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsMateriais
        DataController.KeyFieldNames = 'mat_001'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ColunaSelecao: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueGrayed = 'False'
          Options.AutoWidthSizable = False
          Width = 22
        end
        object cxGrid1DBTableView1mat_001: TcxGridDBColumn
          DataBinding.FieldName = 'mat_001'
          Visible = False
        end
        object cxGrid1DBTableView1emp_001: TcxGridDBColumn
          DataBinding.FieldName = 'emp_001'
          Visible = False
        end
        object cxGrid1DBTableView1cod_ref: TcxGridDBColumn
          DataBinding.FieldName = 'cod_ref'
          Options.Editing = False
          Options.Filtering = False
          Width = 74
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Options.Editing = False
          Options.Filtering = False
          Width = 195
        end
        object cxGrid1DBTableView1valor_custo: TcxGridDBColumn
          DataBinding.FieldName = 'valor_custo'
          Options.Editing = False
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1valor_venda: TcxGridDBColumn
          DataBinding.FieldName = 'valor_venda'
          Options.Editing = False
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1valor_venda2: TcxGridDBColumn
          DataBinding.FieldName = 'valor_venda2'
          Options.Editing = False
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1margem: TcxGridDBColumn
          DataBinding.FieldName = 'margem'
          Options.Editing = False
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1ColunaValorReajustado: TcxGridDBColumn
          Caption = 'Novo Valor Custo'
          DataBinding.FieldName = 'valor_custo_reajustado'
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Styles.Content = frmMenu.cxFundoAmarelo
          Width = 115
        end
        object cxGrid1ColunaValorReajustado2: TcxGridDBColumn
          Caption = 'Novo Valor Venda'
          DataBinding.FieldName = 'valor_venda_reajustado'
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Styles.Content = frmMenu.cxFundoAmarelo
          Width = 115
        end
        object cxGrid1ColunaValorReajustado3: TcxGridDBColumn
          Caption = 'Novo Valor Prazo'
          DataBinding.FieldName = 'valor_prazo_reajustado'
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Styles.Content = frmMenu.cxFundoAmarelo
          Width = 115
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 8
      Top = 496
      Width = 985
      Height = 79
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Alterar Valores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 9
        Top = 18
        Width = 52
        Height = 16
        Caption = 'Margem'
      end
      object Label7: TLabel
        Left = 103
        Top = 18
        Width = 95
        Height = 16
        Caption = 'Valor de Custo'
      end
      object Label8: TLabel
        Left = 209
        Top = 18
        Width = 99
        Height = 16
        Caption = 'Valor de Venda'
      end
      object Label9: TLabel
        Left = 315
        Top = 18
        Width = 87
        Height = 16
        Caption = 'Valor a Prazo'
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 103
        Top = 40
        DataBinding.DataField = 'valor_custo_reajustado'
        DataBinding.DataSource = dsMateriais
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 100
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 209
        Top = 40
        DataBinding.DataField = 'valor_venda_reajustado'
        DataBinding.DataSource = dsMateriais
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 100
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 315
        Top = 40
        DataBinding.DataField = 'valor_prazo_reajustado'
        DataBinding.DataSource = dsMateriais
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 100
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 9
        Top = 40
        DataBinding.DataField = 'margem'
        DataBinding.DataSource = dsMateriais
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 88
      end
      object btEditarItem: TAdvGlowButton
        Left = 421
        Top = 32
        Width = 90
        Height = 33
        Caption = 'Editar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 17
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btEditarItemClick
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
      object btSalvarItem: TAdvGlowButton
        Left = 517
        Top = 32
        Width = 90
        Height = 33
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 5
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btSalvarItemClick
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
      object btCancelarItem: TAdvGlowButton
        Left = 613
        Top = 32
        Width = 90
        Height = 33
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 80
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btCancelarItemClick
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
  end
  inherited pnBotoes: TFlowPanel
    Top = 578
    Width = 1000
    ExplicitTop = 578
    ExplicitWidth = 1000
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 881
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
      Left = 762
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
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 768
    object acBuscaProduto: TAction
      Caption = 'acBuscaProduto'
      ImageIndex = 0
      OnExecute = acBuscaProdutoExecute
    end
  end
  object dsListaCategoria: TDataSource
    AutoEdit = False
    DataSet = qrListaCategoria
    Left = 236
    Top = 65535
  end
  object qrListaCategoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select * from ('
      
        'select cat_001, cast(cat_002 as varchar(200)) as  descr, 1 as or' +
        'd from categoria  where emp_001=:emp'
      'union'
      'select null, cast('#39'(TODAS)'#39' as varchar(200)) , 0 as ord) cat'
      'order by ord ')
    Left = 149
    Top = 65519
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
    object qrListaCategoriaord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 383
    object cdsCategoriaid_categoria: TIntegerField
      FieldName = 'cat_001'
    end
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 312
  end
  object qrMateriais: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM materiais'
      'WHERE'
      '  mat_001 = :Old_mat_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE materiais'
      'SET'
      
        '  mat_008 = :valor_venda_reajustado, mat_012 = :valor_custo_reaj' +
        'ustado, mat_018 = :mat_018, valor_tabela2 = :valor_prazo_reajust' +
        'ado'
      'WHERE'
      '  mat_001 = :Old_mat_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM materiais'
      'WHERE'
      '  mat_001 = :Old_mat_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT mat_008, mat_012, mat_018, valor_tabela2 FROM materiais'
      'WHERE'
      '  mat_001 = :mat_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM materiais'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      
        '0.00 as valor_custo_reajustado, 0.00 as valor_venda_reajustado, ' +
        '0.00 as valor_prazo_reajustado,'
      'mat_001, '
      'emp_001, '
      'mat_003 as descricao, '
      'mat_004 as cod_ref,'
      'coalesce(mat_012, 0.00) as valor_custo,'
      'coalesce(mat_008, 0.00) as valor_venda,'
      'Coalesce(valor_tabela2, 0.00) as valor_venda2,'
      'coalesce(mat_018, 0.00) as margem'
      'from materiais'
      'where utiliza_combo=false and emp_001=:id_empresa'
      'and true -- nesta linha aplica-se o filtro'
      'order by mat_003 ')
    Left = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrMateriaismat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrMateriaisemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrMateriaisdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object qrMateriaiscod_ref: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object qrMateriaisvalor_custo: TFloatField
      FieldName = 'valor_custo'
    end
    object qrMateriaisvalor_venda: TFloatField
      FieldName = 'valor_venda'
      Required = True
    end
    object qrMateriaisvalor_venda2: TFloatField
      FieldName = 'valor_venda2'
    end
    object qrMateriaismargem: TFloatField
      FieldName = 'margem'
    end
    object qrMateriaisvalor_custo_reajustado: TFloatField
      FieldName = 'valor_custo_reajustado'
      currency = True
    end
    object qrMateriaisvalor_venda_reajustado: TFloatField
      FieldName = 'valor_venda_reajustado'
      currency = True
    end
    object qrMateriaisvalor_prazo_reajustado: TFloatField
      FieldName = 'valor_prazo_reajustado'
      currency = True
    end
  end
  object dspMateriais: TDataSetProvider
    DataSet = qrMateriais
    Left = 544
  end
  object cdsMateriais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMateriais'
    AfterOpen = cdsMateriaisAfterOpen
    BeforePost = cdsMateriaisBeforePost
    Left = 608
    object cdsMateriaismat_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mat_001'
      Required = True
    end
    object cdsMateriaisemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object cdsMateriaisdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object cdsMateriaiscod_ref: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_ref'
      Size = 50
    end
    object cdsMateriaisvalor_custo: TFloatField
      DisplayLabel = 'Valor Custo'
      FieldName = 'valor_custo'
      currency = True
    end
    object cdsMateriaisvalor_venda: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'valor_venda'
      Required = True
      currency = True
    end
    object cdsMateriaisvalor_venda2: TFloatField
      DisplayLabel = 'Valor Prazo'
      FieldName = 'valor_venda2'
      currency = True
    end
    object cdsMateriaismargem: TFloatField
      DisplayLabel = 'Margem'
      FieldName = 'margem'
      Required = True
      OnChange = cdsMateriaismargemChange
      DisplayFormat = '0.00%'
    end
    object cdsMateriaisvalor_custo_reajustado: TFloatField
      FieldName = 'valor_custo_reajustado'
      OnChange = cdsMateriaisvalor_custo_reajustadoChange
      currency = True
    end
    object cdsMateriaisvalor_venda_reajustado: TFloatField
      FieldName = 'valor_venda_reajustado'
      OnChange = cdsMateriaisvalor_venda_reajustadoChange
      currency = True
    end
    object cdsMateriaisvalor_prazo_reajustado: TFloatField
      FieldName = 'valor_prazo_reajustado'
      OnChange = cdsMateriaisvalor_prazo_reajustadoChange
      currency = True
    end
  end
  object dsMateriais: TDataSource
    DataSet = cdsMateriais
    OnStateChange = dsMateriaisStateChange
    Left = 680
  end
end
