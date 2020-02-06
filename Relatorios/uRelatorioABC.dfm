inherited frmRelatorioABC: TfrmRelatorioABC
  Caption = 'Relat'#243'rio Curva ABC'
  ClientHeight = 524
  ClientWidth = 925
  ExplicitWidth = 931
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 925
    Height = 475
    ExplicitWidth = 925
    ExplicitHeight = 475
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 0
      Width = 256
      Height = 90
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 34
        Height = 16
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 136
        Top = 20
        Width = 20
        Height = 16
        Caption = 'Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtpDataInicial: TDateTimePicker
        Left = 8
        Top = 42
        Width = 110
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dtpDataFinal: TDateTimePicker
        Left = 136
        Top = 42
        Width = 110
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 271
      Top = 0
      Width = 138
      Height = 90
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'An'#225'lise por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rgTipoAnalise: TcxRadioGroup
        Left = 3
        Top = 0
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'Quantidade'
          end
          item
            Caption = 'Lucro'
          end
          item
            Caption = 'Valor de venda'
          end>
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 89
        Width = 185
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 415
      Top = 0
      Width = 128
      Height = 90
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Agrupar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object rgTipoGrupo: TcxRadioGroup
        Left = 3
        Top = 0
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'Produto'
          end
          item
            Caption = 'Categoria'
          end>
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 87
        Width = 94
      end
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 95
      Width = 909
      Height = 376
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsRelatorio
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1cod_ref: TcxGridDBColumn
          DataBinding.FieldName = 'cod_ref'
          Options.AutoWidthSizable = False
          Width = 77
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 223
        end
        object cxGrid1DBTableView1total_quantidade: TcxGridDBColumn
          DataBinding.FieldName = 'total_quantidade'
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGrid1DBTableView1total_valorvenda: TcxGridDBColumn
          DataBinding.FieldName = 'total_valorvenda'
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGrid1DBTableView1total_custo: TcxGridDBColumn
          DataBinding.FieldName = 'total_custo'
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGrid1DBTableView1total_lucro: TcxGridDBColumn
          DataBinding.FieldName = 'total_lucro'
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGrid1DBTableView1percent: TcxGridDBColumn
          DataBinding.FieldName = 'percent'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1percent_cat: TcxGridDBColumn
          DataBinding.FieldName = 'percent_cat'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 794
      Top = 49
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
      TabOrder = 4
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
  end
  inherited pnBotoes: TFlowPanel
    Top = 475
    Width = 925
    ExplicitTop = 475
    ExplicitWidth = 925
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 818
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
      Left = 711
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
  object qrRelatorioProdutos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'mat.mat_001 as id_material,'
      'mat.mat_003 as descricao,'
      'mat.mat_004 as cod_ref,'
      'mat.cat_001 as id_categoria,'
      'cat.cat_002 as descricao_categoria,'
      'sum(ite.ite_002) as total_quantidade,'
      'sum(ite.ite_005) as total_valorvenda,'
      '--custo do material * quantidade vendida'
      'sum(mat.mat_012 * ite.ite_002) as total_custo,'
      '-- valor total do item na venda - (custo *  quantidade vendida)'
      
        'sum ( (ite.ite_005 ) - ((coalesce(mat.mat_012,0.0)+ coalesce(mat' +
        '.mat_006,0.0))* ite.ite_002)) as total_lucro,'
      '( sum(ite.ite_002) / sub.somatoria)*100 as percent,'
      '( sum(ite.ite_002) / sub.somatoria)*100 as percent_cat'
      'from vendaitem ite'
      
        'join venda ven on (ven.emp_001 = ite.emp_001) and (ven.ven_001 =' +
        ' ite.ven_001)'
      
        'join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_0' +
        '01 = ite.mat_001)'
      
        'join unidades uni on (uni.emp_001 = mat.emp_001) and (uni.uni_00' +
        '1 = mat.uni_001)'
      
        'join categoria cat on (cat.cat_001=mat.cat_001 and cat.emp_001 =' +
        ' mat.emp_001)'
      
        '--faz a jun'#231#227'o com a consulta de mesmo criterio para extrair o p' +
        'roporcional'
      'join ('
      '  select'
      '  sum(ite.ite_002) as somatoria'
      '  from vendaitem ite'
      
        '  join venda ven on (ven.emp_001 = ite.emp_001) and (ven.ven_001' +
        ' = ite.ven_001)'
      
        '  left  join materiais mat on (mat.emp_001 = ite.emp_001) and (m' +
        'at.mat_001 = ite.mat_001)'
      '  where ven.ven_004 >=:dtini and  ven.ven_004 <= :dtfim'
      '  and ven.emp_001 = :emp'
      '  and ven.sit_001 = 1'
      '  and ite.ite_003 > 0 '
      ') sub on true'
      ''
      
        '--faz a jun'#231#227'o com a consulta de mesmo criterio para extrair o p' +
        'roporcional da categoria'
      
        'join (select sum(ite.ite_002)  as somatoria, mat.cat_001 as id_c' +
        'ategoria   from vendaitem ite    '
      
        '  join venda ven on (ven.emp_001 = ite.emp_001) and (ven.ven_001' +
        ' = ite.ven_001)    '
      
        '  left  join materiais mat on (mat.emp_001 = ite.emp_001) and (m' +
        'at.mat_001 = ite.mat_001)    '
      
        '  where ven.ven_004 >='#39'01-01-2016'#39' and  ven.ven_004 <= '#39'01-01-20' +
        '18'#39'    '
      
        '  and ven.emp_001 = 1    and ven.sit_001 = 1    and ite.ite_003 ' +
        '> 0 '
      
        '  group by mat.cat_001  ) sub_categoria on  mat.cat_001=sub_cate' +
        'goria.id_categoria  '
      ''
      'where ven.ven_004 >=:dtini and  ven.ven_004 <= :dtfim'
      'and ven.emp_001 = :emp'
      'and ven.sit_001 = 1'
      'and ite.ite_003 > 0'
      ''
      
        'group by mat.mat_003, mat.mat_004, mat.mat_001, sub.somatoria, m' +
        'at.cat_001, cat.cat_002'
      'order by mat.mat_001')
    Left = 664
    Top = 144
    ParamData = <
      item
        DataType = ftDate
        Name = 'dtini'
        Value = 42736.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'dtfim'
        Value = 43070.000000000000000000
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelatorioProdutosid_material: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_material'
      ReadOnly = True
      Required = True
    end
    object qrRelatorioProdutosdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrRelatorioProdutoscod_ref: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_ref'
      ReadOnly = True
      Size = 50
    end
    object qrRelatorioProdutostotal_quantidade: TFloatField
      DisplayLabel = 'Total Quantidade'
      FieldName = 'total_quantidade'
      ReadOnly = True
      DisplayFormat = '###0.000'
    end
    object qrRelatorioProdutostotal_valorvenda: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'total_valorvenda'
      ReadOnly = True
      currency = True
    end
    object qrRelatorioProdutostotal_custo: TFloatField
      DisplayLabel = 'Total Custo'
      FieldName = 'total_custo'
      ReadOnly = True
      currency = True
    end
    object qrRelatorioProdutostotal_lucro: TFloatField
      DisplayLabel = 'Total Lucro'
      FieldName = 'total_lucro'
      ReadOnly = True
      currency = True
    end
    object qrRelatorioProdutospercent: TFloatField
      DisplayLabel = '% do Total'
      FieldName = 'percent'
      ReadOnly = True
      DisplayFormat = '##0.00'
    end
    object qrRelatorioProdutospercent_cat: TFloatField
      FieldName = 'percent_cat'
      ReadOnly = True
    end
    object qrRelatorioProdutosid_categoria: TIntegerField
      FieldName = 'id_categoria'
      ReadOnly = True
    end
    object qrRelatorioProdutosdescricao_categoria: TWideStringField
      FieldName = 'descricao_categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
  object dsRelatorio: TDataSource
    AutoEdit = False
    DataSet = qrRelatorioProdutos
    Left = 696
    Top = 200
  end
  object repRelatorioProdutosABC: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42835.469159120360000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 162
    Datasets = <
      item
        DataSet = dbRelatorioProdutos
        DataSetName = 'dbRelatorioProdutos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end
      item
        Name = 'sPeriodo'
        Value = ''
      end
      item
        Name = 'sTipoAnalise'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 45.354360000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 253.228510000000000000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO CURVA ABC DE VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 20.897650000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Left = 4.354360000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo: ')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 42.354360000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 23.677180000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 241.889920000000000000
          Top = 23.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'An'#225'lise por: ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 327.039580000000000000
          Top = 23.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTipoAnalise]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = dbRelatorioProdutos
        DataSetName = 'dbRelatorioProdutos'
        RowCount = 0
        object dbRelatorioProdutoscod_ref: TfrxMemoView
          Left = 4.354360000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'cod_ref'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelatorioProdutos."cod_ref"]')
          ParentFont = False
        end
        object dbRelatorioProdutosdescricao: TfrxMemoView
          Left = 81.370130000000000000
          Top = 1.000000000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelatorioProdutos."descricao"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_quantidade: TfrxMemoView
          Left = 484.338900000000000000
          Top = 1.000000000000000000
          Width = 88.062992125984260000
          Height = 18.897650000000000000
          DataField = 'total_quantidade'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_quantidade"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_valorvenda: TfrxMemoView
          Left = 577.047620000000000000
          Top = 1.000000000000000000
          Width = 88.062992125984260000
          Height = 18.897650000000000000
          DataField = 'total_valorvenda'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_valorvenda"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_custo: TfrxMemoView
          Left = 672.315400000000000000
          Top = 1.000000000000000000
          Width = 88.062992125984260000
          Height = 18.897650000000000000
          DataField = 'total_custo'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_custo"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_lucro: TfrxMemoView
          Left = 767.244590000000000000
          Top = 1.000000000000000000
          Width = 88.062992125984260000
          Height = 18.897650000000000000
          DataField = 'total_lucro'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_lucro"]')
          ParentFont = False
        end
        object dbRelatorioProdutospercent_cat: TfrxMemoView
          Left = 860.291900000000000000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'percent_cat'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."percent_cat"]')
          ParentFont = False
        end
        object dbRelatorioProdutospercent: TfrxMemoView
          Left = 952.559680000000000000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'percent'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."percent"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 389.291590000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999965000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 827.717070000000000000
          Top = 11.338590000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 124.724490000000000000
        Width = 1046.929810000000000000
        Condition = 'dbRelatorioProdutos."id_categoria"'
        object Memo2: TfrxMemoView
          Left = 81.370130000000000000
          Top = 28.456709999999990000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 484.338900000000000000
          Top = 28.456710000000040000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 577.047620000000000000
          Top = 28.456710000000040000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 672.315400000000000000
          Top = 28.456710000000040000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Custo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 860.291900000000000000
          Top = 28.456710000000040000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Categoria')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 952.559680000000000000
          Top = 28.456710000000040000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Total')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 4.354360000000000000
          Top = 28.456709999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 49.354360000000040000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 767.244590000000000000
          Top = 28.456710000000040000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Lucro')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Top = 26.456709999999990000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbRelatorioProdutosdescricao_categoria: TfrxMemoView
          Left = 81.370130000000000000
          Top = 3.779529999999994000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'descricao_categoria'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Memo.UTF8W = (
            '[dbRelatorioProdutos."descricao_categoria"]')
        end
        object Memo21: TfrxMemoView
          Left = 4.354360000000000000
          Top = 3.779529999999994000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
        object Line4: TfrxLineView
          Top = 3.779529999999596000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 30.236239999999580000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559059999999988000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL [dbRelatorioProdutos."descricao_categoria"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 484.338900000000000000
          Top = 7.559059999999988000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_quantidade">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 577.047620000000000000
          Top = 7.559059999999476000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_valorvenda">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 672.315400000000000000
          Top = 7.559057559999474000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_custo">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 767.244590000000000000
          Top = 7.559059999999476000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_lucro">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 860.291900000000000000
          Top = 7.559059999999988000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."percent_cat">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 952.559680000000000000
          Top = 7.559059999999988000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."percent">,MasterData1)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          Left = 355.275820000000000000
          Top = 2.000002440000003000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL FINAL')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 484.338900000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_quantidade">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 577.047620000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_valorvenda">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 672.315400000000000000
          Top = 2.000000000000000000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_custo">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 767.244590000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_lucro">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 860.291900000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."percent_cat">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 952.559680000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."percent">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbRelatorioProdutos: TfrxDBDataset
    UserName = 'dbRelatorioProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_material=id_material'
      'descricao=descricao'
      'cod_ref=cod_ref'
      'total_quantidade=total_quantidade'
      'total_valorvenda=total_valorvenda'
      'total_custo=total_custo'
      'total_lucro=total_lucro'
      'percent=percent'
      'percent_cat=percent_cat'
      'id_categoria=id_categoria'
      'descricao_categoria=descricao_categoria')
    DataSet = qrRelatorioProdutos
    BCDToCurrency = False
    Left = 536
    Top = 208
  end
  object repRelatorioProdutosABCCategoria: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42835.469159120360000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 218
    Datasets = <
      item
        DataSet = dbRelatorioProdutos
        DataSetName = 'dbRelatorioProdutos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end
      item
        Name = 'sPeriodo'
        Value = ''
      end
      item
        Name = 'sTipoAnalise'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 45.354360000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 253.228510000000000000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO CURVA ABC DE VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 20.897650000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Left = 4.354360000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo: ')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 42.354360000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 23.677180000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 241.889920000000000000
          Top = 23.677180000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'An'#225'lise por: ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 327.039580000000000000
          Top = 23.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTipoAnalise]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        DataSet = dbRelatorioProdutos
        DataSetName = 'dbRelatorioProdutos'
        RowCount = 0
        object dbRelatorioProdutoscod_ref: TfrxMemoView
          Left = 4.354360000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'cod_ref'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelatorioProdutos."cod_ref"]')
          ParentFont = False
        end
        object dbRelatorioProdutosdescricao: TfrxMemoView
          Left = 81.370130000000000000
          Top = 1.000000000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelatorioProdutos."descricao"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_quantidade: TfrxMemoView
          Left = 575.047620000000100000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'total_quantidade'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_quantidade"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_valorvenda: TfrxMemoView
          Left = 667.756340000000600000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'total_valorvenda'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_valorvenda"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_custo: TfrxMemoView
          Left = 763.024120000000500000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'total_custo'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_custo"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_lucro: TfrxMemoView
          Left = 857.953310000000500000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'total_lucro'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."total_lucro"]')
          ParentFont = False
        end
        object dbRelatorioProdutospercent: TfrxMemoView
          Left = 952.559680000000000000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'percent'
          DataSet = dbRelatorioProdutos
          DataSetName = 'dbRelatorioProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorioProdutos."percent"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999965000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 827.717070000000000000
          Top = 11.338590000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          Left = 445.984540000000600000
          Top = 2.000002440000003000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL FINAL')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 575.047620000000100000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_quantidade">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 667.756340000000600000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_valorvenda">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 763.024120000000500000
          Top = 2.000000000000000000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_custo">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 857.953310000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."total_lucro">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 952.559680000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorioProdutos."percent">,MasterData1)]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Top = 0.779529999999851900
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 124.724490000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 81.370130000000000000
          Top = 5.779530000000023000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 575.047620000000500000
          Top = 5.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 667.756340000000600000
          Top = 5.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 763.024120000000500000
          Top = 5.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Custo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 952.559680000000000000
          Top = 5.779530000000250000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Total')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 4.354360000000000000
          Top = 5.779529999999994000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 26.677179999999990000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 857.953310000000000000
          Top = 5.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Lucro')
          ParentFont = False
        end
      end
    end
  end
end
