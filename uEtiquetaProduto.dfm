inherited frmEtiquetaProduto: TfrmEtiquetaProduto
  Caption = 'Etiqueta'
  ClientHeight = 573
  ClientWidth = 878
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 884
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 878
    Height = 524
    ExplicitWidth = 878
    ExplicitHeight = 524
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 7
      Top = 8
      Width = 862
      Height = 113
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
        862
        113)
      object Label4: TLabel
        Left = 147
        Top = 5
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
        Left = 327
        Top = 29
        Width = 386
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
      object Label3: TLabel
        Left = 147
        Top = 58
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
      object Label2: TLabel
        Left = 728
        Top = 5
        Width = 55
        Height = 18
        Caption = 'C'#243'pias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btPesquisar: TAdvGlowButton
        AlignWithMargins = True
        Left = 728
        Top = 64
        Width = 124
        Height = 41
        Margins.Left = 0
        Anchors = [akTop, akRight]
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        TabOrder = 2
        OnClick = btPesquisarClick
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
      object rbPorProduto: TcxRadioButton
        Left = 11
        Top = 27
        Width = 113
        Height = 17
        Caption = 'Por Produto'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbPorCategoria: TcxRadioButton
        Left = 11
        Top = 80
        Width = 113
        Height = 17
        Caption = 'Por Categoria'
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 147
        Top = 80
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
        TabOrder = 3
      end
      object edCodProduto: TcxButtonEdit
        Left = 147
        Top = 26
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
        TabOrder = 4
        OnExit = edCodProdutoExit
        Width = 166
      end
      object ckAtivos: TcxCheckBox
        Left = 438
        Top = 79
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
      object edCopias: TJvValidateEdit
        Tag = 1
        Left = 728
        Top = 30
        Width = 55
        Height = 24
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DecimalPlaces = 2
        EditText = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HasMaxValue = True
        HasMinValue = True
        MaxValue = 1000.000000000000000000
        MinValue = 1.000000000000000000
        ParentFont = False
        TabOrder = 6
        DataConnector.DataField = 'desconto_percent'
      end
      object ckTela: TcxCheckBox
        Left = 592
        Top = 79
        TabStop = False
        AutoSize = False
        Caption = 'Visualizar'
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 7
        Height = 26
        Width = 133
      end
    end
    object cxGrid1: TcxGrid
      Left = 7
      Top = 127
      Width = 862
      Height = 299
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
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object gbEtiqueta: TAdvGroupBox
      Left = 7
      Top = 425
      Width = 478
      Height = 94
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' Formato de Etiqueta '
      TabOrder = 2
      object FileListBox1: TFileListBox
        Left = 11
        Top = 20
        Width = 454
        Height = 61
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 0
        OnClick = FileListBox1Click
      end
    end
    object gbProdutos: TAdvGroupBox
      Left = 491
      Top = 425
      Width = 378
      Height = 94
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' Produtos Selecionados '
      TabOrder = 3
      object btMarcarTodos: TAdvGlowButton
        AlignWithMargins = True
        Left = 20
        Top = 28
        Width = 160
        Height = 41
        Margins.Left = 0
        Caption = 'Marcar Todos'
        ImageIndex = 5
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btMarcarTodosClick
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
      object btDesmarcarTodos: TAdvGlowButton
        AlignWithMargins = True
        Left = 199
        Top = 28
        Width = 160
        Height = 41
        Margins.Left = 0
        Caption = 'Desmarcar Todos'
        ImageIndex = 6
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btDesmarcarTodosClick
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
  end
  inherited pnBotoes: TFlowPanel
    Top = 524
    Width = 878
    ExplicitTop = 524
    ExplicitWidth = 878
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 771
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Sair'
      ImageIndex = 18
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btCancelarClick
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
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 664
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Imprimir'
      ImageIndex = 10
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btImprimirClick
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
  object qrListaCategoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select * from ('
      
        'select cat_001, cast(cat_002 as varchar(200)) as  descr, 1 as or' +
        'd from categoria  where emp_001=:emp'
      'union'
      'select null, cast('#39'(TODAS)'#39' as varchar(200)) , 0 as ord) cat'
      'order by ord ')
    Left = 48
    Top = 224
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
  object dsListaCategoria: TDataSource
    AutoEdit = False
    DataSet = qrListaCategoria
    Left = 136
    Top = 224
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 288
    Top = 224
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 224
    object cdsCategoriaid_categoria: TIntegerField
      FieldName = 'cat_001'
    end
  end
  object qrMateriais: TUniQuery
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
      'mat_001, '
      'm.emp_001, '
      'mat_003 as descricao, '
      'mat_004 as cod_ref,'
      'emp.emp_002 as RazaoSocial,'
      'emp.emp_003 as Fantasia,'
      'coalesce(mat_008, 0.00) as valor_venda,'
      'Coalesce(valor_tabela2, 0.00) as valor_venda2'
      'from materiais m'
      'join Empresas emp on m.emp_001 = emp.emp_001'
      'where m.emp_001=:id_empresa'
      'and true -- nesta linha aplica-se o filtro'
      'order by mat_003 ')
    Left = 48
    Top = 168
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
    object qrMateriaisvalor_venda: TFloatField
      FieldName = 'valor_venda'
      Required = True
    end
    object qrMateriaisvalor_venda2: TFloatField
      FieldName = 'valor_venda2'
    end
    object qrMateriaisrazaosocial: TWideStringField
      FieldName = 'razaosocial'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrMateriaisfantasia: TWideStringField
      FieldName = 'fantasia'
      ReadOnly = True
      Size = 80
    end
  end
  object dspMateriais: TDataSetProvider
    DataSet = qrMateriais
    Left = 136
    Top = 168
  end
  object dsMateriais: TDataSource
    DataSet = cdsMateriais
    Left = 288
    Top = 168
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 368
    Top = 168
    object acBuscaProduto: TAction
      Caption = 'acBuscaProduto'
      ImageIndex = 0
      OnExecute = acBuscaProdutoExecute
    end
  end
  object frxEtiquetaProd: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42920.573152546300000000
    ReportOptions.LastChange = 42922.672337453700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 288
    Datasets = <
      item
        DataSet = dbEtiqueta
        DataSetName = 'dbEtiqueta'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 110.000000000000000000
      PaperHeight = 23.000000000000000000
      PaperSize = 256
      LeftMargin = 4.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 68.031496060000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 400.630180000000000000
        Columns = 3
        ColumnWidth = 124.724409448818900000
        ColumnGap = 7.559055118110236000
        DataSet = dbEtiqueta
        DataSetName = 'dbEtiqueta'
        RowCount = 0
        object Memo2: TfrxMemoView
          Top = 18.897637800000000000
          Width = 124.724409450000000000
          Height = 11.338568030000000000
          DataField = 'Descricao'
          DataSet = dbEtiqueta
          DataSetName = 'dbEtiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEtiqueta."Descricao"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 34.015748030000000000
          Width = 124.724490000000000000
          Height = 15.118078500000000000
          DataField = 'Valor'
          DataSet = dbEtiqueta
          DataSetName = 'dbEtiqueta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEtiqueta."Valor"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 11.338582677165350000
          Top = 52.913385830000000000
          Width = 103.000000000000000000
          Height = 34.015748030000000000
          BarType = bcCodeEAN13
          Expression = '<dbEtiqueta."Codigo">'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
    end
  end
  object cdsEtiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 288
    object cdsEtiquetaCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object cdsEtiquetaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object cdsEtiquetaValor: TStringField
      FieldName = 'Valor'
    end
    object cdsEtiquetaCod_Interno: TStringField
      FieldName = 'Cod_Interno'
    end
    object cdsEtiquetaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 40
    end
  end
  object dbEtiqueta: TfrxDBDataset
    UserName = 'dbEtiqueta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Codigo=Codigo'
      'Descricao=Descricao'
      'Valor=Valor'
      'Cod_Interno=Cod_Interno'
      'Empresa=Empresa')
    DataSet = cdsEtiqueta
    BCDToCurrency = False
    Left = 216
    Top = 288
  end
  object cdsMateriais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMateriais'
    AfterOpen = cdsMateriaisAfterOpen
    Left = 216
    Top = 168
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
    object cdsMateriaisrazaosocial: TWideStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'razaosocial'
      Required = True
      Size = 80
    end
    object cdsMateriaisfantasia: TWideStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'fantasia'
      Required = True
      Size = 80
    end
  end
end
