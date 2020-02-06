inherited frmRelatorioEstoque: TfrmRelatorioEstoque
  Caption = 'Relat'#243'rios de estoque'
  ClientHeight = 575
  ClientWidth = 895
  Constraints.MinHeight = 603
  Constraints.MinWidth = 360
  KeyPreview = True
  ExplicitWidth = 901
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 895
    Height = 526
    ExplicitWidth = 895
    ExplicitHeight = 526
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 0
      Width = 336
      Height = 119
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
        Left = 16
        Top = 63
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
        Left = 144
        Top = 63
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
        Left = 16
        Top = 85
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
        Left = 144
        Top = 85
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
      object cbRelatorio: TComboBox
        Left = 16
        Top = 33
        Width = 297
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = cbRelatorioChange
        Items.Strings = (
          'Estoque atual'
          'Movimento de estoque'
          'Movimento de estoque detalhado'
          'Estoque ingredientes (composi'#231#227'o)'
          'Relat'#243'rio de produtos com informa'#231#245'es fiscais'
          'Estoque resumido'
          'Estoque minimo'
          'Relat'#243'rio notas de entrada'
          'Relat'#243'rio de estoque com pre'#231'o de venda'
          'Relat'#243'rio de Invent'#225'rio'
          'Estoque por setor produto'
          'Estoque por setor composi'#231#227'o'
          'Situa'#231#245'es de Estoque')
      end
    end
    object grFiltroCategoria: TAdvGroupBox
      Left = 9
      Top = 121
      Width = 336
      Height = 82
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cbCategoria: TJvDBComboBox
        Left = 33
        Top = 46
        Width = 280
        Height = 24
        TabOrder = 2
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object ckTodasCategoria: TcxRadioButton
        Left = 11
        Top = 23
        Width = 57
        Height = 17
        Caption = 'Todas'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object ckCategoria: TcxRadioButton
        Left = 10
        Top = 50
        Width = 17
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        Transparent = True
      end
    end
    object grFiltroTipoMovimento: TAdvGroupBox
      Left = 9
      Top = 288
      Width = 336
      Height = 97
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Dados do Movimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object lbFornecedor: TLabel
        Left = 95
        Top = 67
        Width = 229
        Height = 16
        AutoSize = False
        Caption = 'Fornecedor'
      end
      object Label4: TLabel
        Left = 11
        Top = 46
        Width = 73
        Height = 16
        Caption = 'Fornecedor'
      end
      object rgTipoMovimento: TcxRadioGroup
        Left = 0
        Top = 3
        ParentFont = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Todos'
          end
          item
            Caption = 'Entrada'
          end
          item
            Caption = 'Sa'#237'da'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 36
        Width = 262
      end
      object edCodFornecedor: TcxButtonEdit
        Left = 11
        Top = 64
        Properties.Buttons = <
          item
            Action = acBuscaFornecedor
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 1
        OnExit = edCodFornecedorExit
        Width = 78
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 9
      Top = 457
      Width = 336
      Height = 66
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Tipo de Gera'#231#227'o do Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object rgTipoGeracaoRelatorio: TcxRadioGroup
        Left = 0
        Top = 13
        ParentFont = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Impress'#227'o'
          end
          item
            Caption = 'Arquivo Excel'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 39
        Width = 324
      end
    end
    object grFiltroSetor: TAdvGroupBox
      Left = 9
      Top = 204
      Width = 336
      Height = 82
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Setor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object cbSetor: TJvDBComboBox
        Left = 33
        Top = 46
        Width = 280
        Height = 24
        TabOrder = 2
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object ckTodosSetor: TcxRadioButton
        Left = 11
        Top = 23
        Width = 57
        Height = 17
        Caption = 'Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        Transparent = True
      end
      object ckSetor: TcxRadioButton
        Left = 10
        Top = 50
        Width = 17
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        Transparent = True
      end
    end
    object grSituacoes: TAdvGroupBox
      Left = 9
      Top = 388
      Width = 336
      Height = 66
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Situa'#231#227'o de Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object rgSituacoes: TcxRadioGroup
        Left = 0
        Top = 13
        ParentFont = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Positivo'
          end
          item
            Caption = 'Negativo'
          end
          item
            Caption = 'Zerado'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 39
        Width = 324
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 526
    Width = 895
    ExplicitTop = 526
    ExplicitWidth = 895
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 788
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
      TabOrder = 0
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
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 681
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
      TabOrder = 1
      OnClick = btCancelarClick
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
  object qrEstoque: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select MAT.mat_001 as id_produto, '
      'MAT.mat_004 as codigo, '
      'MAT.mat_003 as descricao, '
      'CAT.CAT_002 as categoria, '
      'UNI.UNI_003 as unidade, '
      'coalesce(stm.quantidade, 0.00) as estoque,'
      'coalesce(mat_015, 0.00) as estoque_maximo,'
      'coalesce(mat_014, 0.00) as Estoque_minimo,'
      'se.descricao as descricao_setor'
      'from materiais MAT'
      
        'LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.U' +
        'NI_001 = MAT.UNI_001) '
      
        'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.' +
        'CAT_001 = MAT.CAT_001)'
      
        'left join setor_estoque_material stm on stm.id_material=mat.mat_' +
        '001 and stm.id_empresa=mat.emp_001 '
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=mat.emp_001 '
      'order by 5,2')
    Left = 384
    Top = 200
    object qrEstoqueid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object qrEstoquecodigo: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object qrEstoquedescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrEstoquecategoria: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrEstoqueunidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrEstoqueestoque: TFloatField
      FieldName = 'estoque'
      ReadOnly = True
    end
    object qrEstoqueestoque_maximo: TFloatField
      FieldName = 'estoque_maximo'
      ReadOnly = True
    end
    object qrEstoqueestoque_minimo: TFloatField
      FieldName = 'estoque_minimo'
      ReadOnly = True
    end
    object qrEstoquedescricao_setor: TWideStringField
      FieldName = 'descricao_setor'
      ReadOnly = True
      Required = True
      Size = 50
    end
  end
  object dbEstoque: TfrxDBDataset
    UserName = 'dbEstoque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_produto=id_produto'
      'codigo=codigo'
      'descricao=descricao'
      'categoria=categoria'
      'unidade=unidade'
      'estoque=estoque'
      'estoque_maximo=estoque_maximo'
      'estoque_minimo=estoque_minimo'
      'descricao_setor=descricao_setor')
    DataSet = qrEstoque
    BCDToCurrency = False
    Left = 472
    Top = 202
  end
  object dbMovimentoEstoque: TfrxDBDataset
    UserName = 'dbMovimentoEstoque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_material=id_material'
      'cod_material=cod_material'
      'desc_material=desc_material'
      'categoria=categoria'
      'tipo_mov=tipo_mov'
      'unidade=unidade'
      'quantidade=quantidade'
      'observacao=observacao'
      'tipo_venda=tipo_venda'
      'cod_venda=cod_venda'
      'usuario=usuario'
      'data=data')
    DataSet = qrMovimentoEstoque
    BCDToCurrency = False
    Left = 466
    Top = 254
  end
  object qrMovimentoEstoque: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select me.data, m.mat_001 as id_material, '
      'm.mat_004 as cod_material, '
      'm.mat_003 as desc_material, '
      'CAT.CAT_002 as categoria, '
      
        'case when me.tipo_movimento='#39'S'#39' then '#39'Sa'#237'da'#39' else '#39'Entrada'#39' end ' +
        'as tipo_mov,'
      'UNI.UNI_003 as unidade, '
      'me.quantidade,'
      'cast(observacao as varchar(200)) as  observacao,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' else null en' +
        'd) as varchar(20)) as tipo_venda,'
      'v.ven_001 as cod_venda,'
      'u.usu_002 as usuario'
      'from movimentoestoque me'
      
        'join materiais m on me.id_empresa = m.emp_001 and m.Mat_001=me.i' +
        'd_material'
      'join usuarios u on me.id_usuario=u.usu_001'
      
        'LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = M.EMP_001) AND (UNI.UNI' +
        '_001 = M.UNI_001) '
      
        'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = M.EMP_001) AND (CAT.CA' +
        'T_001 = M.CAT_001)'
      
        'left join venda v on v.emp_001=me.id_empresa and v.ven_001=me.id' +
        '_venda'
      'order by data')
    Left = 381
    Top = 254
    object qrMovimentoEstoqueid_material: TIntegerField
      FieldName = 'id_material'
      ReadOnly = True
      Required = True
    end
    object qrMovimentoEstoquecod_material: TWideStringField
      FieldName = 'cod_material'
      ReadOnly = True
      Size = 50
    end
    object qrMovimentoEstoquedesc_material: TWideStringField
      FieldName = 'desc_material'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrMovimentoEstoquecategoria: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrMovimentoEstoquetipo_mov: TWideMemoField
      FieldName = 'tipo_mov'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrMovimentoEstoqueunidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrMovimentoEstoquequantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qrMovimentoEstoquetipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrMovimentoEstoquecod_venda: TIntegerField
      FieldName = 'cod_venda'
      ReadOnly = True
      Required = True
    end
    object qrMovimentoEstoqueusuario: TWideStringField
      FieldName = 'usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrMovimentoEstoquedata: TDateTimeField
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrMovimentoEstoqueobservacao: TWideStringField
      FieldName = 'observacao'
      ReadOnly = True
      Size = 200
    end
  end
  object qrMovimentoEstoqueDetalhado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select me.data, m.mat_001 as id_material,  '
      'm.mat_004 as cod_material,  '
      'm.mat_003 as desc_material,  '
      'CAT.CAT_002 as categoria,  '
      
        'case when me.tipo_movimento='#39'S'#39' then '#39'Sa'#237'da'#39' else '#39'Entrada'#39' end ' +
        'as tipo_mov, '
      'UNI.UNI_003 as unidade,  '
      'me.quantidade, '
      'cast(observacao as varchar(200)) as  observacao, '
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' else null en' +
        'd) as varchar(20)) as tipo_venda, '
      'v.ven_001 as cod_venda, u.usu_002 as usuario,'
      'frn.nome_fantasia as fornecedor,'
      
        'case when me.valor_custo=0.0 then m.mat_012 else me.valor_custo ' +
        'end as valor_custo,'
      
        'case when me.valor_venda=0.0 then m.mat_008 else me.valor_venda ' +
        'end as valor_venda'
      'from movimentoestoque me '
      
        'join materiais m on me.id_empresa = m.emp_001 and m.Mat_001=me.i' +
        'd_material '
      'join usuarios u on me.id_usuario=u.usu_001 '
      
        'LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = M.EMP_001) AND (UNI.UNI' +
        '_001 = M.UNI_001)  '
      
        'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = M.EMP_001) AND (CAT.CA' +
        'T_001 = M.CAT_001)'
      
        'left join fornecedor frn on frn.id_fornecedor=me.id_fornecedor  ' +
        ' '
      
        'left join venda v on v.emp_001=me.id_empresa and v.ven_001=me.id' +
        '_venda '
      
        'where me.id_empresa=1 and me.data>='#39'2017-01-01'#39' and me.data<='#39'20' +
        '17-12-31'#39
      'order by me.data ')
    Left = 384
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'id_material'
      ReadOnly = True
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'cod_material'
      ReadOnly = True
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'desc_material'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'tipo_mov'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object WideStringField4: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object FloatField1: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object WideStringField6: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'cod_venda'
      ReadOnly = True
      Required = True
    end
    object WideStringField7: TWideStringField
      FieldName = 'usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrMovimentoEstoqueDetalhadofornecedor: TWideStringField
      FieldName = 'fornecedor'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrMovimentoEstoqueDetalhadovalor_custo: TFloatField
      FieldName = 'valor_custo'
      ReadOnly = True
    end
    object qrMovimentoEstoqueDetalhadovalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
    end
    object qrMovimentoEstoqueDetalhadodata: TDateTimeField
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrMovimentoEstoqueDetalhadoobservacao: TWideStringField
      FieldName = 'observacao'
      ReadOnly = True
      Size = 200
    end
  end
  object dbMovimentoEstoqueDetalhado: TfrxDBDataset
    UserName = 'dbMovimentoEstoqueDetalhado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_material=id_material'
      'cod_material=cod_material'
      'desc_material=desc_material'
      'categoria=categoria'
      'tipo_mov=tipo_mov'
      'unidade=unidade'
      'quantidade=quantidade'
      'observacao=observacao'
      'tipo_venda=tipo_venda'
      'cod_venda=cod_venda'
      'usuario=usuario'
      'data=data'
      'fornecedor=fornecedor'
      'valor_custo=valor_custo'
      'valor_venda=valor_venda')
    DataSet = qrMovimentoEstoqueDetalhado
    BCDToCurrency = False
    Left = 472
    Top = 360
  end
  object qrComposicao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select cmp.id_composicao,'
      'cmp.descricao,'
      'uni.uni_003 as unidade, '
      'cmp.valor_custo,'
      'coalesce(sec.quantidade, 0.00) as estoque,'
      'coalesce(estoque_minimo, 0.00) as estoque_minimo ,'
      's.descricao as setor_estoque'
      'from composicao cmp'
      
        'left join setor_estoque_composicao sec on sec.id_composicao=cmp.' +
        'id_composicao and sec.id_empresa=cmp.id_empresa'
      
        'left join setor_estoque s on sec.id_setor=s.id_setor and  s.id_e' +
        'mpresa=sec.id_empresa'
      
        'LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = cmp.id_empresa) AND (UN' +
        'I.UNI_001 = cmp.id_unidade) '
      'order by 3,2')
    Left = 384
    Top = 304
    object qrComposicaoid_composicao: TIntegerField
      FieldName = 'id_composicao'
      Required = True
    end
    object qrComposicaodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qrComposicaounidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrComposicaovalor_custo: TFloatField
      FieldName = 'valor_custo'
    end
    object qrComposicaoestoque: TFloatField
      FieldName = 'estoque'
      ReadOnly = True
    end
    object qrComposicaoestoque_minimo: TFloatField
      FieldName = 'estoque_minimo'
      ReadOnly = True
    end
    object qrComposicaosetor_estoque: TWideStringField
      FieldName = 'setor_estoque'
      ReadOnly = True
      Required = True
      Size = 50
    end
  end
  object repComposicao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43067.392021157410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 308
    Datasets = <
      item
        DataSet = dbComposicao
        DataSetName = 'dbComposicao'
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
        Name = 'sCampoDesc'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE INGREDIENTES (COMPOSI'#199#195'O)')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 29.236240000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 748.346940000000000000
        DataSet = dbComposicao
        DataSetName = 'dbComposicao'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 8.338590000000000000
          Top = 1.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'id_composicao'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          Memo.UTF8W = (
            '[dbComposicao."id_composicao"]')
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 115.370078740000000000
          Top = 1.000000000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComposicao."descricao"]')
          ParentFont = False
        end
        object dbEstoqueunidade: TfrxMemoView
          Left = 451.748300000000000000
          Top = 1.000000000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbComposicao."unidade"]')
          ParentFont = False
        end
        object dbEstoqueestoque: TfrxMemoView
          Left = 563.811380000000000000
          Top = 1.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'estoque'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbComposicao."estoque"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'valor_custo'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbComposicao."valor_custo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 493.441250000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'estoque_minimo'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbComposicao."estoque_minimo"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 308.346578740000000000
          Top = 1.000000000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'setor_estoque'
          DataSet = dbComposicao
          DataSetName = 'dbComposicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComposicao."setor_estoque"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        Condition = 'dbComposicao."unidade"'
        object Line8: TfrxLineView
          Left = 7.559060000000000000
          Top = 21.692950000000010000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.889744250000007000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIDO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 563.811380000000000000
          Top = 1.889744250000007000
          Width = 71.811070000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTOQUE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 451.527830000000000000
          Top = 1.889744250000007000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'UN')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.590600000000000000
          Top = 1.889744250000007000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 493.441250000000000000
          Top = 1.889744250000007000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EST. MIN.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Top = 1.889744250000007000
          Width = 102.047310000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR CUSTO')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 306.567100000000000000
          Top = 1.889744250000007000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SETOR')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 635.181510000000000000
          Top = 1.889763780000010000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbComposicao."valor_custo">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 302.362400000000000000
          Top = 1.889763780000010000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. TOTAL')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 457.323130000000000000
          Top = 1.889763780000010000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbComposicao."estoque_minimo">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 544.252320000000000000
          Top = 1.889763780000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbComposicao."estoque">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 287.244280000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 7.559296770000000000
          Top = 3.779530000000022000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 495.118430000000000000
          Top = 7.559059999999988000
          Width = 245.669450000000000000
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
  object dbComposicao: TfrxDBDataset
    UserName = 'dbComposicao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_composicao=id_composicao'
      'descricao=descricao'
      'unidade=unidade'
      'valor_custo=valor_custo'
      'estoque=estoque'
      'estoque_minimo=estoque_minimo'
      'setor_estoque=setor_estoque')
    DataSet = qrComposicao
    BCDToCurrency = False
    Left = 472
    Top = 304
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 264
    Top = 272
    object acBuscaFornecedor: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaFornecedorExecute
    end
  end
  object qrEstoquefiscal: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select mat_001, emp_001,mat_003 as descricao,cfop_consumidor,cso' +
        '_codigo, ncm from materiais where sit_001=4 and emp_001=EMP_001')
    Left = 384
    Top = 48
    object qrEstoquefiscalmat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrEstoquefiscalemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrEstoquefiscaldescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object qrEstoquefiscalcfop_consumidor: TWideStringField
      FieldName = 'cfop_consumidor'
      Size = 4
    end
    object qrEstoquefiscalcso_codigo: TIntegerField
      FieldName = 'cso_codigo'
    end
    object qrEstoquefiscalncm: TWideStringField
      FieldName = 'ncm'
      Size = 10
    end
  end
  object dbEstoquefiscal: TfrxDBDataset
    UserName = 'dbEstoquefiscal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mat_001=mat_001'
      'emp_001=emp_001'
      'descricao=descricao'
      'cfop_consumidor=cfop_consumidor'
      'cso_codigo=cso_codigo'
      'ncm=ncm')
    DataSet = qrEstoquefiscal
    BCDToCurrency = False
    Left = 461
    Top = 48
  end
  object qrEstoqueResumido: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_004 as codigo, '
      'm.mat_003 as descricao, '
      '--m.mat_008 as valor,'
      'case '
      
        'when stm.quantidade > 0 then (stm.quantidade * m.mat_008) else 0' +
        '.00 end as valor,'
      'coalesce(stm.quantidade,0.0) as quantidade,'
      'u.uni_003 as unidade,'
      'c.cat_002 as categoria,'
      'se.descricao as setor_estoque'
      'from materiais m'
      'join categoria c on c.cat_001 = m.cat_001 '
      'join unidades u on u.uni_001=m.uni_001 and m.emp_001=u.emp_001'
      
        'left join setor_estoque_material stm on stm.id_material=m.mat_00' +
        '1 and stm.id_empresa=m.emp_001 '
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=m.emp_001 '
      'where  m.sit_001=4 and m.emp_001 = :id_empresa'
      'order by m.mat_004')
    Left = 385
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrEstoqueResumidocodigo: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object qrEstoqueResumidodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrEstoqueResumidovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qrEstoqueResumidoquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object qrEstoqueResumidounidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrEstoqueResumidocategoria: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrEstoqueResumidosetor_estoque: TWideStringField
      FieldName = 'setor_estoque'
      ReadOnly = True
      Required = True
      Size = 50
    end
  end
  object dbEstoqueResumido: TfrxDBDataset
    UserName = 'dbEstoqueResumido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'descricao=descricao'
      'valor=valor'
      'quantidade=quantidade'
      'unidade=unidade'
      'categoria=categoria'
      'setor_estoque=setor_estoque')
    DataSet = qrEstoqueResumido
    BCDToCurrency = False
    Left = 461
  end
  object dbEstoqueMinimo: TfrxDBDataset
    UserName = 'dbEstoqueMinimo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'descricao=descricao'
      'valor=valor'
      'unidade=unidade'
      'categoria=categoria'
      'estoque_minimo=estoque_minimo')
    DataSet = qrEstoqueMinimo
    BCDToCurrency = False
    Left = 472
    Top = 152
  end
  object qrEstoqueMinimo: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_004 as codigo, '
      'm.mat_003 as descricao, '
      'm.mat_008 as valor,'
      'u.uni_003 as unidade,'
      'c.cat_002 as categoria,'
      'coalesce(m.mat_014,0.0) as estoque_minimo '
      'from materiais m'
      'join categoria c on c.cat_001 = m.uni_001 '
      'join unidades u on u.uni_001=m.uni_001 and m.emp_001=u.emp_001'
      'where  m.sit_001=4 and m.emp_001 = :id_empresa'
      'order by m.mat_004')
    Left = 384
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
  end
  object dbNfDeEntrada: TfrxDBDataset
    UserName = 'dbNfDeEntrada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_nota_entrada=id_nota_entrada'
      'id_empresa=id_empresa'
      'id_fornecedor=id_fornecedor'
      'nome_fantasia=nome_fantasia'
      'numero_da_nota=numero_da_nota'
      'data_emissao=data_emissao'
      'cfop=cfop'
      'codigo_produto=codigo_produto'
      'nome_produto=nome_produto'
      'preco_de_compra=preco_de_compra'
      'quantidade=quantidade'
      'valor_total=valor_total'
      'valor_total_da_nota=valor_total_da_nota')
    DataSet = qrNfDeEntrada
    BCDToCurrency = False
    Left = 468
    Top = 96
  end
  object qrNfDeEntrada: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select  n.id_nota_entrada,n.id_empresa,n.id_fornecedor,f.nome_fa' +
        'ntasia,'
      
        'n.numero as numero_da_nota,n.data_emissao, n.cfop,ni.id_material' +
        ' as codigo_produto,'
      
        'ni.descricao_fornecedor as nome_produto,ni.valor_unitario as pre' +
        'co_de_compra,'
      
        'ni.quantidade,valor_base_pis_cofins as valor_total, n.valor_tota' +
        'l as valor_total_da_nota'
      'from nota_entrada n '
      
        'join nota_entrada_item ni on ni.id_nota_entrada = n.id_nota_entr' +
        'ada'
      'and n.id_empresa = ni.id_empresa'
      'join fornecedor f on n.id_fornecedor = f.id_fornecedor ')
    Left = 384
    Top = 96
  end
  object qrEstoquepreco: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      #9'  select MAT.mat_001 as id_produto, '
      'MAT.mat_004 as codigo, '
      'MAT.mat_003 as descricao, '
      'CAT.CAT_002 as categoria, '
      'UNI.UNI_003 as unidade, '
      'se.descricao as descricao_setor,'
      'mat.mat_008 as valor'
      'from materiais MAT'
      
        'LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.U' +
        'NI_001 = MAT.UNI_001) '
      
        'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.' +
        'CAT_001 = MAT.CAT_001)'
      
        'left join setor_estoque_material stm on stm.id_material=mat.mat_' +
        '001 and stm.id_empresa=mat.emp_001 '
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=mat.emp_001 '
      'where  mat.sit_001=4 and mat.emp_001 = :id_empresa'
      'order by 5,2')
    Left = 648
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrEstoqueprecoid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object qrEstoqueprecocodigo: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object qrEstoqueprecodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrEstoqueprecocategoria: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrEstoqueprecounidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrEstoqueprecodescricao_setor: TWideStringField
      FieldName = 'descricao_setor'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrEstoqueprecovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  object dbEstoquepreco: TfrxDBDataset
    UserName = 'dbEstoquepreco'
    CloseDataSource = False
    DataSet = qrEstoquepreco
    BCDToCurrency = False
    Left = 728
    Top = 7
  end
  object qrInventario: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select MAT.mat_001 as id_produto, '
      'MAT.mat_004 as codigo, '
      'CAT.CAT_002 as categoria, '
      'UNI.UNI_003 as unidade, '
      'mat.mat_012 as valor,'
      'mat.mat_003 as descricao,'
      'stm.quantidade,'
      'stm.quantidade*mat.mat_012 as valor_total'
      'from materiais MAT'
      
        'LEFT JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND (UNI.U' +
        'NI_001 = MAT.UNI_001) '
      
        'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.' +
        'CAT_001 = MAT.CAT_001)'
      
        'left join setor_estoque_material stm on stm.id_material=mat.mat_' +
        '001 and stm.id_empresa=mat.emp_001 '
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=mat.emp_001 '
      'where  mat.sit_001=4 and mat.emp_001 = :id_empresa'
      'order by 5,2')
    Left = 640
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrInventarioid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object qrInventariocodigo: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object qrInventariocategoria: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrInventariounidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrInventariovalor: TFloatField
      FieldName = 'valor'
    end
    object qrInventarioquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
      Required = True
    end
    object qrInventariodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrInventariovalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
    end
  end
  object dbInventario: TfrxDBDataset
    UserName = 'dbInventario'
    CloseDataSource = False
    DataSet = qrInventario
    BCDToCurrency = False
    Left = 728
    Top = 72
  end
  object dbSetorMaterial: TfrxDBDataset
    UserName = 'dbSetorMaterial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'descricao=descricao'
      'valor=valor'
      'quantidade=quantidade'
      'unidade=unidade'
      'categoria=categoria'
      'setor_estoque=setor_estoque')
    DataSet = qrSetorMaterial
    BCDToCurrency = False
    Left = 717
    Top = 128
  end
  object qrSetorMaterial: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_004 as codigo, '
      'm.mat_003 as descricao, '
      'm.mat_008 as valor,'
      'coalesce(stm.quantidade,0.0) as quantidade,'
      'u.uni_003 as unidade,'
      'c.cat_002 as categoria,'
      
        'case when se.descricao <> '#39#39' then se.descricao else '#39'N/C'#39' end as' +
        ' setor_estoque'
      'from materiais m'
      'join categoria c on c.cat_001 = m.uni_001 '
      'join unidades u on u.uni_001=m.uni_001 and m.emp_001=u.emp_001'
      
        'left join setor_estoque_material stm on stm.id_material=m.mat_00' +
        '1 and stm.id_empresa=m.emp_001 '
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=m.emp_001 '
      'where  m.sit_001=4 and m.emp_001 = :empresa'
      'order by setor_estoque, codigo')
    Left = 641
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa'
        Value = nil
      end>
    object WideStringField5: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object FloatField2: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object WideStringField9: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object WideStringField10: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrSetorMaterialsetor_estoque: TWideMemoField
      FieldName = 'setor_estoque'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qrSetorComposicao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.codigo_ref as codigo, '
      'm.descricao, '
      'm.valor_custo as valor,'
      'coalesce(stm.quantidade,0.0) as quantidade,'
      'u.uni_003 as unidade,'
      #39#39' as categoria,'
      
        'case when se.descricao <> '#39#39' then se.descricao else '#39'N/C'#39' end as' +
        ' setor_estoque'
      'from composicao m'
      
        'join unidades u on u.uni_001=m.id_unidade and m.id_empresa=u.emp' +
        '_001'
      
        'left join setor_estoque_composicao stm on stm.id_composicao=m.id' +
        '_composicao and stm.id_empresa=m.id_empresa'
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=m.id_empresa'
      'where  m.id_situacao=4 and m.id_empresa = 1'
      'order by setor_estoque, codigo')
    Left = 641
    Top = 192
    object WideStringField11: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object WideStringField12: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object FloatField4: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object FloatField5: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object WideStringField13: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'setor_estoque'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrSetorComposicaocategoria: TWideMemoField
      FieldName = 'categoria'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dbSetorComposicao: TfrxDBDataset
    UserName = 'dbSetorComposicao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'descricao=descricao'
      'valor=valor'
      'quantidade=quantidade'
      'unidade=unidade'
      'categoria=categoria'
      'setor_estoque=setor_estoque')
    DataSet = qrSetorComposicao
    BCDToCurrency = False
    Left = 717
    Top = 192
  end
  object repSetorComposicao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43060.428821388900000000
    ReportOptions.LastChange = 43164.417108402780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 813
    Top = 190
    Datasets = <
      item
        DataSet = dbSetorComposicao
        DataSetName = 'dbSetorComposicao'
      end>
    Variables = <>
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTOQUE POR SETOR - COMPOSI'#199#195'O')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 29.236240000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.015770000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = dbSetorComposicao
        DataSetName = 'dbSetorComposicao'
        KeepChild = True
        RowCount = 0
        object dbEstoqueResumidovalor: TfrxMemoView
          Left = 547.677490000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSetorComposicao."valor"]')
          ParentFont = False
        end
        object dbEstoqueResumidoquantidade: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSetorComposicao."quantidade"]')
          ParentFont = False
        end
        object dbEstoqueResumidocodigo: TfrxMemoView
          Top = 3.779529999999994000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          Memo.UTF8W = (
            '[dbSetorComposicao."codigo"]')
        end
        object dbEstoqueResumidodescricao: TfrxMemoView
          Left = 116.590600000000000000
          Top = 3.779529999999994000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          Memo.UTF8W = (
            '[dbSetorComposicao."descricao"]')
        end
        object dbEstoqueResumidocategoria: TfrxMemoView
          Left = 346.094620000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'categoria'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          Memo.UTF8W = (
            '[dbSetorComposicao."categoria"]')
        end
        object dbEstoqueResumidounidade: TfrxMemoView
          Left = 470.409710000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          Memo.UTF8W = (
            '[dbSetorComposicao."unidade"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000022000
          Width = 253.228510000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.118120000000004000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 547.677490000000000000
          Top = 2.456710000000001000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 470.409710000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 345.094620000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 22.677180000000010000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 0.755905511811023600
          Top = 1.779529999999994000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 116.590600000000000000
          Top = 1.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbSetorComposicao."quantidade">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 460.543600000000000000
          Top = 3.779530000000022000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 27.488250000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'dbSetorComposicao."setor_estoque"'
        object Memo12: TfrxMemoView
          Left = 0.755905511811023600
          Top = 6.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Setor:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 49.692950000000000000
          Top = 6.000000000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'setor_estoque'
          DataSet = dbSetorComposicao
          DataSetName = 'dbSetorComposicao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbSetorComposicao."setor_estoque"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 25.929190000000010000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object repEstoqueResumido: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43060.428821388900000000
    ReportOptions.LastChange = 43214.388709120370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Datasets = <
      item
        DataSet = dbEstoqueResumido
        DataSetName = 'dbEstoqueResumido'
      end>
    Variables = <>
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ESTOQUE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 29.236240000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.015770000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = dbEstoqueResumido
        DataSetName = 'dbEstoqueResumido'
        KeepChild = True
        RowCount = 0
        object dbEstoqueResumidovalor: TfrxMemoView
          Left = 544.677490000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEstoqueResumido."valor"]')
          ParentFont = False
        end
        object dbEstoqueResumidoquantidade: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEstoqueResumido."quantidade"]')
          ParentFont = False
        end
        object dbEstoqueResumidocodigo: TfrxMemoView
          Top = 3.779529999999994000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoqueResumido."codigo"]')
          ParentFont = False
        end
        object dbEstoqueResumidodescricao: TfrxMemoView
          Left = 108.590600000000000000
          Top = 3.779529999999994000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoqueResumido."descricao"]')
          ParentFont = False
          WordWrap = False
        end
        object dbEstoqueResumidocategoria: TfrxMemoView
          Left = 269.094620000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'categoria'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoqueResumido."categoria"]')
          ParentFont = False
        end
        object dbEstoqueResumidounidade: TfrxMemoView
          Left = 475.409710000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoqueResumido."unidade"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 369.362400000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'setor_estoque'
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoqueResumido."setor_estoque"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779530000000022000
          Width = 139.842610000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 627.401980000000000000
          Top = 6.118120000000005000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 537.118430000000000000
          Top = 5.456710000000001000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. Estoque')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 475.409710000000000000
          Top = 6.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 269.094620000000000000
          Top = 6.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -4.220470000000000000
          Top = 22.677180000000010000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 5.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 108.590600000000000000
          Top = 5.779529999999994000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 369.362400000000000000
          Top = 6.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Setor')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 628.401980000000000000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbEstoqueResumido."quantidade">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 374.173470000000000000
          Top = 2.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 499.323130000000000000
          Top = 3.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbEstoqueResumido."valor">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object repEstoquefiscal: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43182.650551585640000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 48
    Datasets = <
      item
        DataSet = dbEstoquefiscal
        DataSetName = 'dbEstoquefiscal'
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
        Name = 'sCampoDesc'
        Value = ''
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE PRODUTOS COM INFORMA'#199#213'ES FISCAIS')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 29.236240000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 748.346940000000000000
        DataSet = dbEstoquefiscal
        DataSetName = 'dbEstoquefiscal'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 8.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'mat_001'
          DataSet = dbEstoquefiscal
          DataSetName = 'dbEstoquefiscal'
          Memo.UTF8W = (
            '[dbEstoquefiscal."mat_001"]')
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 100.370078740000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbEstoquefiscal
          DataSetName = 'dbEstoquefiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoquefiscal."descricao"]')
          ParentFont = False
        end
        object dbEstoquecategoria: TfrxMemoView
          Left = 396.157700000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'cfop_consumidor'
          DataSet = dbEstoquefiscal
          DataSetName = 'dbEstoquefiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoquefiscal."cfop_consumidor"]')
          ParentFont = False
        end
        object dbEstoqueestoque: TfrxMemoView
          Left = 649.197280000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ncm'
          DataSet = dbEstoquefiscal
          DataSetName = 'dbEstoquefiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoquefiscal."ncm"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 534.897960000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'cso_codigo'
          DataSet = dbEstoquefiscal
          DataSetName = 'dbEstoquefiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoquefiscal."cso_codigo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 294.803340000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 7.559296770000000000
          Top = 3.779530000000022000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        object Line8: TfrxLineView
          Left = 5.779530000000000000
          Top = 25.472480000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.889744250000007000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIDO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 397.803340000000000000
          Top = 1.889744250000007000
          Width = 143.622140000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 96.811070000000000000
          Top = 1.889744250000007000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 537.118430000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CSOSN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 649.268090000000000000
          Top = 2.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NCM')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 748.346940000000000000
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object repNfDeEntrada: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43062.440351134300000000
    ReportOptions.LastChange = 43062.440351134300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 96
    Datasets = <
      item
        DataSet = dbNfDeEntrada
        DataSetName = 'dbNfDeEntrada'
      end>
    Variables = <>
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
        Height = 65.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 23.118120000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 578.268090000000000000
          Top = 3.779530000000022000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          Formats = <
            item
            end
            item
            end>
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 3.779530000000022000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = dbNfDeEntrada
        DataSetName = 'dbNfDeEntrada'
        RowCount = 0
        object dbNfDeEntradacodigo_produto: TfrxMemoView
          Left = 2.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'codigo_produto'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."codigo_produto"]')
          ParentFont = False
        end
        object dbNfDeEntradanome_produto: TfrxMemoView
          Left = 91.370130000000000000
          Top = 0.220470000000006000
          Width = 325.039580000000000000
          Height = 15.118120000000000000
          DataField = 'nome_produto'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."nome_produto"]')
          ParentFont = False
        end
        object dbNfDeEntradaquantidade: TfrxMemoView
          Left = 521.795610000000000000
          Top = 1.220470000000006000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'quantidade'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."quantidade"]')
          ParentFont = False
        end
        object dbNfDeEntradavalor_total: TfrxMemoView
          Left = 613.961040000000000000
          Top = 1.220470000000006000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."valor_total"]')
          ParentFont = False
        end
        object dbNfDeEntradapreco_de_compra: TfrxMemoView
          Left = 418.086890000000000000
          Top = 1.440940000000012000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."preco_de_compra"]')
          ParentFont = False
        end
      end
      object Memo44: TfrxMemoView
        Left = 7.558828110000000000
        Top = -0.440940000000000000
        Width = 729.449290000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'RELAT'#211'RIO NOTAS DE ENTRADA')
        ParentFont = False
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Condition = 'dbNfDeEntrada."id_nota_entrada"'
        object Memo6: TfrxMemoView
          Left = 0.779530000000000000
          Top = 46.811070000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Produto')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 67.149660000000010000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 90.708720000000000000
          Top = 47.252010000000010000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 418.307360000000000000
          Top = 47.031540000000010000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 520.795610000000000000
          Top = 47.031540000000010000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 613.961040000000000000
          Top = 47.031540000000010000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object dbNfDeEntradadata_emissao: TfrxMemoView
          Left = 417.953000000000000000
          Top = 22.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'data_emissao'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."data_emissao"]')
          ParentFont = False
        end
        object dbNfDeEntradanome_fantasia: TfrxMemoView
          Left = 124.504020000000000000
          Top = 21.118120000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'nome_fantasia'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."nome_fantasia"]')
          ParentFont = False
        end
        object dbNfDeEntradanumero_da_nota: TfrxMemoView
          Left = 2.228510000000000000
          Top = 22.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'numero_da_nota'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."numero_da_nota"]')
          ParentFont = False
        end
        object dbNfDeEntradacfop: TfrxMemoView
          Left = 522.779840000000000000
          Top = 21.559059999999990000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'cfop'
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."cfop"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 416.953000000000000000
          Top = 1.881879999999995000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 121.724490000000000000
          Top = 2.102350000000001000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome Fantasia do Fornecedor')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 0.228510000000000000
          Top = 1.881879999999995000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#250'mero Da Nota')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 521.000310000000000000
          Top = 1.881879999999995000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 20.929190000000010000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object dbNfDeEntradavalor_total_da_nota: TfrxMemoView
          Left = 614.118430000000000000
          Top = 1.559059999999988000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbNfDeEntrada
          DataSetName = 'dbNfDeEntrada'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNfDeEntrada."valor_total_da_nota"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 488.393940000000000000
          Top = 2.118119999999976000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor total da Nota')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Top = 0.779530000000022500
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de itens')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 92.708720000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object repEstoqueMinimo: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43061.591583692100000000
    ReportOptions.LastChange = 43061.591583692100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 152
    Datasets = <
      item
        DataSet = dbEstoqueMinimo
        DataSetName = 'dbEstoqueMinimo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 19.677180000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = dbEstoqueMinimo
        DataSetName = 'dbEstoqueMinimo'
        RowCount = 0
        object dbEstoqueMinimocodigo: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.559059999999988100
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = dbEstoqueMinimo
          DataSetName = 'dbEstoqueMinimo'
          Memo.UTF8W = (
            '[dbEstoqueMinimo."codigo"]')
        end
        object dbEstoqueMinimoestoque_minimo: TfrxMemoView
          Left = 600.945270000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'estoque_minimo'
          DataSet = dbEstoqueMinimo
          DataSetName = 'dbEstoqueMinimo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEstoqueMinimo."estoque_minimo"]')
          ParentFont = False
        end
        object dbEstoqueMinimounidade: TfrxMemoView
          Left = 490.882190000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbEstoqueMinimo
          DataSetName = 'dbEstoqueMinimo'
          Memo.UTF8W = (
            '[dbEstoqueMinimo."unidade"]')
        end
        object dbEstoqueMinimodescricao: TfrxMemoView
          Left = 145.724490000000000000
          Top = 0.779529999999994100
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbEstoqueMinimo
          DataSetName = 'dbEstoqueMinimo'
          Memo.UTF8W = (
            '[dbEstoqueMinimo."descricao"]')
        end
        object dbEstoqueMinimocategoria: TfrxMemoView
          Left = 360.464750000000000000
          Top = 0.779529999999994100
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'categoria'
          DataSet = dbEstoqueMinimo
          DataSetName = 'dbEstoqueMinimo'
          Memo.UTF8W = (
            '[dbEstoqueMinimo."categoria"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 0.543289999999999000
          Top = 26.456710000000000000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 2.220470000000000000
          Top = 7.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 146.165430000000000000
          Top = 7.338589999999996000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 360.905690000000000000
          Top = 7.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.323130000000000000
          Top = 7.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 606.724800000000000000
          Top = 8.000000000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dbEstoqueMinimo
          DataSetName = 'dbEstoqueMinimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoq. Min.')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = -0.338590000000000000
          Top = 18.897650000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Memo44: TfrxMemoView
        Left = -18.456710000000000000
        Width = 729.449290000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'RELAT'#211'RIO DE ESTOQUE')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 552.252320000000000000
          Top = 3.779530000000022000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          Formats = <
            item
            end
            item
            end>
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object repEstoque: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42647.444526481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 204
    Datasets = <
      item
        DataSet = dbEstoque
        DataSetName = 'dbEstoque'
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
        Name = 'sCampoDesc'
        Value = ''
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ESTOQUE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 5.669532992126000000
          Top = 29.236240000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 748.346940000000000000
        DataSet = dbEstoque
        DataSetName = 'dbEstoque'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 8.338590000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataField = 'codigo'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoque."codigo"]')
          ParentFont = False
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 119.370078740000000000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          DataField = 'descricao'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoque."descricao"]')
          ParentFont = False
        end
        object dbEstoquecategoria: TfrxMemoView
          Left = 303.787570000000000000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'categoria'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoque."categoria"]')
          ParentFont = False
        end
        object dbEstoqueunidade: TfrxMemoView
          Left = 488.661720000000000000
          Width = 37.795300000000000000
          Height = 15.118110240000000000
          DataField = 'unidade'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEstoque."unidade"]')
          ParentFont = False
        end
        object dbEstoqueestoque: TfrxMemoView
          Left = 677.197280000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'estoque'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEstoque."estoque"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 606.047620000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataField = 'estoque_maximo'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEstoque."estoque_maximo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 535.677490000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataField = 'estoque_minimo'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEstoque."estoque_minimo"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 397.953000000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          DataField = 'descricao_setor'
          DataSet = dbEstoque
          DataSetName = 'dbEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEstoque."descricao_setor"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        Condition = 'dbEstoque."unidade"'
        object Line8: TfrxLineView
          Align = baCenter
          Left = 5.669295000000000000
          Top = 21.692950000000010000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 7.559060000000000000
          Top = 4.889744250000007000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIDO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 665.197280000000000000
          Top = 4.889744250000007000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTOQUE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 488.441250000000000000
          Top = 4.889744250000007000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'UN')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 304.008040000000000000
          Top = 5.779529999999994000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CATEGORIA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 117.590600000000000000
          Top = 4.889744250000007000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 531.897960000000000000
          Top = 5.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EST. MIN.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 599.047620000000000000
          Top = 4.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EST. MAX.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 397.953000000000000000
          Top = 5.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SETOR')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 661.417750000000000000
          Top = 1.889763780000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbEstoque."estoque">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669532992126000000
          Top = 1.000000000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 472.441250000000000000
          Top = 1.889763780000010000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. TOTAL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 291.023810000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 5.669531770000000000
          Top = 3.779530000000022000
          Width = 737.007876460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 631.181510000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
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
  object repMovimentoEstoque: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42640.351184421300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 254
    Datasets = <
      item
        DataSet = dbMovimentoEstoque
        DataSetName = 'dbMovimentoEstoque'
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
        Name = 'sCampoDesc'
        Value = ''
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTO DE ESTOQUE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 29.236240000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 748.346940000000000000
        DataSet = dbMovimentoEstoque
        DataSetName = 'dbMovimentoEstoque'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataField = 'cod_material'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."cod_material"]')
          ParentFont = False
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 125.370078740000000000
          Width = 245.669450000000000000
          Height = 15.118110240000000000
          DataField = 'desc_material'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."desc_material"]')
          ParentFont = False
        end
        object dbMovimentoEstoquetipo_mov: TfrxMemoView
          Left = 412.968770000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_mov'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."tipo_mov"]')
          ParentFont = False
        end
        object dbMovimentoEstoquequantidade: TfrxMemoView
          Left = 502.338900000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'quantidade'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoEstoque."quantidade"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 703.638220000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."tipo_venda"]')
          ParentFont = False
        end
        object dbMovimentoEstoqueusuario: TfrxMemoView
          Left = 559.031850000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'usuario'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."usuario"]')
          ParentFont = False
        end
        object dbEstoqueunidade: TfrxMemoView
          Left = 472.441250000000000000
          Width = 26.456710000000000000
          Height = 15.118110240000000000
          DataField = 'unidade'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."unidade"]')
          ParentFont = False
        end
        object dbMovimentoEstoquecod_venda: TfrxMemoView
          Left = 670.079160000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DataField = 'cod_venda'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoque."cod_venda"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 48.133890000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        Condition = 'dbMovimentoEstoque."data"'
        KeepTogether = True
        object Line8: TfrxLineView
          Left = 7.559060000000000000
          Top = 44.692950000000010000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 7.559060000000000000
          Top = 24.566929129999990000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIDO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 470.441250000000000000
          Top = 24.566929129999990000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UN.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 124.590600000000000000
          Top = 24.566929129999990000
          Width = 158.740260000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 412.968770000000000000
          Top = 24.566929129999990000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 506.118430000000000000
          Top = 24.566929129999990000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 670.079160000000000000
          Top = 24.566929129999990000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 559.031850000000000000
          Top = 24.566929129999990000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object dbMovimentoEstoquedata: TfrxMemoView
          Left = 181.417440000000000000
          Top = 1.338589999999996000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Memo.UTF8W = (
            '[dbMovimentoEstoque."data"]')
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.338589999999996000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DO MOVIMENTO:')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 226.771800000000000000
        Width = 748.346940000000000000
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 294.803340000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 7.559296771653500000
          Top = 3.779530000000022000
          Width = 733.228346456693000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 521.575140000000000000
          Top = 7.559059999999988000
          Width = 219.212740000000000000
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
  object repMovimentoEstoqueDetalhado: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42640.351184421300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 563
    Top = 356
    Datasets = <
      item
        DataSet = dbMovimentoEstoqueDetalhado
        DataSetName = 'dbMovimentoEstoqueDetalhado'
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
        Name = 'sCampoDesc'
        Value = Null
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
      BottomMargin = 2.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo44: TfrxMemoView
          Align = baCenter
          Left = 158.740260000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTO DE ESTOQUE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 5.669295000000000000
          Top = 29.236240000000000000
          Width = 1035.591220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = dbMovimentoEstoqueDetalhado
        DataSetName = 'dbMovimentoEstoqueDetalhado'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 11.338590000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          DataField = 'cod_material'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."cod_material"]')
          ParentFont = False
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 139.370078740000000000
          Width = 245.669450000000000000
          Height = 15.118110240000000000
          DataField = 'desc_material'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."desc_material"]')
          ParentFont = False
        end
        object dbMovimentoEstoquetipo_mov: TfrxMemoView
          Left = 391.173470000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_mov'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."tipo_mov"]')
          ParentFont = False
        end
        object dbMovimentoEstoquequantidade: TfrxMemoView
          Left = 479.543600000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'quantidade'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."quantidade"]')
          ParentFont = False
        end
        object dbMovimentoEstoqueusuario: TfrxMemoView
          Left = 697.756340000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'usuario'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."usuario"]')
          ParentFont = False
        end
        object dbEstoqueunidade: TfrxMemoView
          Left = 449.645950000000000000
          Width = 26.456710000000000000
          Height = 15.118110240000000000
          DataField = 'unidade'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."unidade"]')
          ParentFont = False
        end
        object dbMovimentoEstoqueDetalhadofornecedor: TfrxMemoView
          Left = 797.480830000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'fornecedor'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."fornecedor"]')
        end
        object Memo4: TfrxMemoView
          Left = 537.441250000000000000
          Top = 0.110250869999987300
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataField = 'valor_custo'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."valor_custo"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 614.590910000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'valor_venda'
          DataSet = dbMovimentoEstoqueDetalhado
          DataSetName = 'dbMovimentoEstoqueDetalhado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoEstoqueDetalhado."valor_venda"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 48.133890000000000000
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        Condition = 'dbMovimentoEstoqueDetalhado."data"'
        KeepTogether = True
        object Line8: TfrxLineView
          Align = baCenter
          Left = 5.669629409450000000
          Top = 44.692950000000010000
          Width = 1035.590551181100000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 7.559060000000000000
          Top = 24.566929133858290000
          Width = 64.252010000000000000
          Height = 18.897637795275600000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIDO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 448.645950000000000000
          Top = 24.566929129999990000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UN.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 137.590600000000000000
          Top = 24.566929129999990000
          Width = 158.740260000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 391.173470000000000000
          Top = 24.566929129999990000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 485.323130000000000000
          Top = 24.566929129999990000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 699.756340000000000000
          Top = 24.566929129999990000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object dbMovimentoEstoquedata: TfrxMemoView
          Left = 181.417440000000000000
          Top = 1.338589999999996000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = dbMovimentoEstoque
          DataSetName = 'dbMovimentoEstoque'
          Memo.UTF8W = (
            '[dbMovimentoEstoque."data"]')
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.338589999999996000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA DO MOVIMENTO:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 798.260360000000000000
          Top = 24.677180000000010000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 541.441250000000000000
          Top = 24.677180000000010000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 610.031850000000000000
          Top = 24.677180000000010000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V. VENDA')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 226.771800000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669629409450000000
          Top = 1.000000000000000000
          Width = 1035.590551181100000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 294.803340000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 5.669629410000000000
          Top = 3.779530000000022000
          Width = 1035.590551180000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 801.260360000000000000
          Top = 7.559059999999988000
          Width = 238.110390000000000000
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
  object repEstoquepreco: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43125.418603669000000000
    ReportOptions.LastChange = 43125.418603669000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 813
    Top = 6
    Datasets = <
      item
        DataSet = dbEstoquepreco
        DataSetName = 'dbEstoquepreco'
      end>
    Variables = <>
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
        Height = 27.102350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 4.559060000000000000
          Top = 3.102350000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ESTOQUE COM PRE'#199'O')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Top = 27.102350000000000000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 23.511750000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Top = 21.590599999999990000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.000000000000000000
          Top = 2.614099999999993000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 474.315090000000000000
          Top = 1.834569999999999000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 569.630180000000000000
          Top = 2.834569999999999000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 117.811070000000000000
          Top = 2.614099999999993000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 631.897960000000000000
          Top = 2.291280000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Top = 1.173159999999996000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 33.818800000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = dbEstoquepreco
        DataSetName = 'dbEstoquepreco'
        RowCount = 0
        object dbEstoqueResumidovalor: TfrxMemoView
          Left = 631.897960000000000000
          Top = 3.543290000000013000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = dbEstoquepreco
          DataSetName = 'dbEstoquepreco'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$[dbEstoquepreco."valor"]')
          ParentFont = False
        end
        object dbEstoqueResumidocodigo: TfrxMemoView
          Left = 3.220470000000000000
          Top = 3.543290000000013000
          Width = 108.811070000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = dbEstoquepreco
          DataSetName = 'dbEstoquepreco'
          Memo.UTF8W = (
            '[dbEstoquepreco."codigo"]')
        end
        object dbEstoqueResumidodescricao: TfrxMemoView
          Left = 118.811070000000000000
          Top = 3.543290000000013000
          Width = 348.165430000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbEstoquepreco
          DataSetName = 'dbEstoquepreco'
          Memo.UTF8W = (
            '[dbEstoquepreco."descricao"]')
        end
        object dbEstoqueResumidocategoria: TfrxMemoView
          Left = 473.315090000000000000
          Top = 3.543290000000013000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'categoria'
          DataSet = dbEstoquepreco
          DataSetName = 'dbEstoquepreco'
          Memo.UTF8W = (
            '[dbEstoquepreco."categoria"]')
        end
        object dbEstoqueResumidounidade: TfrxMemoView
          Left = 571.630180000000000000
          Top = 3.543290000000013000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbEstoquepreco
          DataSetName = 'dbEstoquepreco'
          Memo.UTF8W = (
            '[dbEstoquepreco."unidade"]')
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 31.921149999999900000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 590.661410000000000000
          Top = 1.125850000000014000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$[SUM(<dbEstoquepreco."valor">,MasterData1,2)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 482.299320000000000000
          Top = 6.976189999999974000
          Width = 230.543290000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ' P'#225'gina [PAGE#] de [TOTALPAGES#]')
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object repInventario: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43125.418603669000000000
    ReportOptions.LastChange = 43125.418603669000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 805
    Top = 70
    Datasets = <
      item
        DataSet = dbInventario
        DataSetName = 'dbInventario'
      end>
    Variables = <>
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
        Height = 27.102350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 4.559060000000000000
          Top = 3.102350000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE INVENT'#193'RIO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Top = 27.102350000000000000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 23.511750000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Top = 21.590599999999990000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.000000000000000000
          Top = 1.614099999999993000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 432.315090000000000000
          Top = 1.834569999999999000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UNID')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 502.630180000000000000
          Top = 1.834569999999999000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 123.811070000000000000
          Top = 1.614099999999993000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 579.897960000000000000
          Top = 1.291280000000000000
          Width = 57.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Top = 1.173159999999996000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 650.000000000000000000
          Top = 1.173159999999996000
          Width = 64.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V.TOTAL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 33.818800000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = dbInventario
        DataSetName = 'dbInventario'
        RowCount = 0
        object dbEstoqueResumidovalor: TfrxMemoView
          Left = 566.897960000000000000
          Top = 3.543290000000013000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbInventario
          DataSetName = 'dbInventario'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbInventario."valor"]')
          ParentFont = False
        end
        object dbEstoqueResumidocodigo: TfrxMemoView
          Left = 3.220470000000000000
          Top = 3.543290000000013000
          Width = 112.590600000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = dbInventario
          DataSetName = 'dbInventario'
          Memo.UTF8W = (
            '[dbInventario."codigo"]')
        end
        object dbEstoqueResumidodescricao: TfrxMemoView
          Left = 122.811070000000000000
          Top = 3.543290000000013000
          Width = 302.385900000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbInventario
          DataSetName = 'dbInventario'
          Memo.UTF8W = (
            '[dbInventario."descricao"]')
        end
        object dbEstoqueResumidocategoria: TfrxMemoView
          Left = 433.315090000000000000
          Top = 3.543290000000013000
          Width = 53.590600000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbInventario
          DataSetName = 'dbInventario'
          Memo.UTF8W = (
            '[dbInventario."unidade"]')
        end
        object dbEstoqueResumidounidade: TfrxMemoView
          Left = 501.630180000000000000
          Top = 3.543290000000013000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = dbInventario
          DataSetName = 'dbInventario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbInventario."quantidade"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 31.921149999999900000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbInventariovalor_total: TfrxMemoView
          Left = 635.000000000000000000
          Top = 3.818800000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbInventario
          DataSetName = 'dbInventario'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbInventario."valor_total"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 382.000000000000000000
          Top = 4.125850000000014000
          Width = 332.472480000000000000
          Height = 18.897650000000000000
          DataSet = dbEstoqueResumido
          DataSetName = 'dbEstoqueResumido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              'VALOR TOTAL EM ESTOQUE R$ [SUM(<dbInventario."valor_total">,Mast' +
              'erData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 478.519790000000000000
          Top = 6.976189999999974000
          Width = 234.322820000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ' P'#225'gina [PAGE#] de [TOTALPAGES#]')
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object repSetorMaterial: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43060.428821388900000000
    ReportOptions.LastChange = 43164.417108402780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 813
    Top = 126
    Datasets = <
      item
        DataSet = dbSetorMaterial
        DataSetName = 'dbSetorMaterial'
      end>
    Variables = <>
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTOQUE POR SETOR - PRODUTO')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 29.236240000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.015770000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = dbSetorMaterial
        DataSetName = 'dbSetorMaterial'
        KeepChild = True
        RowCount = 0
        object dbEstoqueResumidovalor: TfrxMemoView
          Left = 548.677490000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSetorMaterial."valor"]')
          ParentFont = False
        end
        object dbEstoqueResumidoquantidade: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'quantidade'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSetorMaterial."quantidade"]')
          ParentFont = False
        end
        object dbEstoqueResumidocodigo: TfrxMemoView
          Top = 3.779529999999994000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          Memo.UTF8W = (
            '[dbSetorMaterial."codigo"]')
        end
        object dbEstoqueResumidodescricao: TfrxMemoView
          Left = 129.590600000000000000
          Top = 3.779529999999994000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          Memo.UTF8W = (
            '[dbSetorMaterial."descricao"]')
        end
        object dbEstoqueResumidocategoria: TfrxMemoView
          Left = 381.094620000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'categoria'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          Memo.UTF8W = (
            '[dbSetorMaterial."categoria"]')
        end
        object dbEstoqueResumidounidade: TfrxMemoView
          Left = 483.409710000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'unidade'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          Memo.UTF8W = (
            '[dbSetorMaterial."unidade"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000022000
          Width = 253.228510000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 628.401980000000000000
          Top = 3.118120000000004000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 548.677490000000000000
          Top = 2.456710000000001000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 483.409710000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 380.094620000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 22.677180000000010000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 1.779529999999994000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 129.590600000000000000
          Top = 1.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbSetorMaterial."quantidade">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 460.543600000000000000
          Top = 3.779530000000022000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 0.000225785000000006
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 27.488250000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'dbSetorMaterial."setor_estoque"'
        object Memo12: TfrxMemoView
          Left = 0.755905511811023600
          Top = 6.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Setor:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 49.692950000000000000
          Top = 6.000000000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          GroupIndex = 1
          DataField = 'setor_estoque'
          DataSet = dbSetorMaterial
          DataSetName = 'dbSetorMaterial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbSetorMaterial."setor_estoque"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 25.929190000000010000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qrRelSituacoesEstoque: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select MAT.mat_001 as id_produto, '
      'MAT.mat_004 as codigo, '
      'MAT.mat_003 as descricao, '
      'CAT.CAT_002 as categoria, '
      'coalesce(stm.quantidade, 0.00) as estoque,'
      'se.descricao as descricao_setor,'
      'mat.mat_008, mat.mat_012'
      'from materiais MAT'
      
        'LEFT JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND (CAT.' +
        'CAT_001 = MAT.CAT_001)'
      
        'left join setor_estoque_material stm on stm.id_material=mat.mat_' +
        '001 and stm.id_empresa=mat.emp_001 '
      
        'left join setor_estoque se on se.id_setor=stm.id_setor and se.id' +
        '_empresa=mat.emp_001 '
      'order by codigo')
    Left = 640
    Top = 248
    object IntegerField3: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object WideStringField14: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object WideStringField15: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object WideStringField16: TWideStringField
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object FloatField6: TFloatField
      FieldName = 'estoque'
      ReadOnly = True
    end
    object WideStringField18: TWideStringField
      FieldName = 'descricao_setor'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrRelSituacoesEstoquemat_008: TFloatField
      FieldName = 'mat_008'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrRelSituacoesEstoquemat_012: TFloatField
      FieldName = 'mat_012'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object dbSituacoesEstoque: TfrxDBDataset
    UserName = 'dbSituacoesEstoque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_produto=id_produto'
      'codigo=codigo'
      'descricao=descricao'
      'categoria=categoria'
      'estoque=estoque'
      'descricao_setor=descricao_setor'
      'mat_008=mat_008'
      'mat_012=mat_012')
    DataSet = qrRelSituacoesEstoque
    BCDToCurrency = False
    Left = 728
    Top = 250
  end
  object repSituacoesEstoque: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42647.444526481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 819
    Top = 252
    Datasets = <
      item
        DataSet = dbSituacoesEstoque
        DataSetName = 'dbSituacoesEstoque'
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
        Name = 'sCampoDesc'
        Value = ''
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ESTOQUE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 5.669532992126000000
          Top = 29.236240000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 748.346940000000000000
        DataSet = dbSituacoesEstoque
        DataSetName = 'dbSituacoesEstoque'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 8.338590000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          DataField = 'codigo'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbSituacoesEstoque."codigo"]')
          ParentFont = False
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 116.370078740000000000
          Width = 205.078850000000000000
          Height = 15.118110240000000000
          DataField = 'descricao'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbSituacoesEstoque."descricao"]')
          ParentFont = False
        end
        object dbEstoquecategoria: TfrxMemoView
          Left = 325.787570000000000000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'categoria'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbSituacoesEstoque."categoria"]')
          ParentFont = False
        end
        object dbEstoqueestoque: TfrxMemoView
          Left = 677.197280000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'estoque'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSituacoesEstoque."estoque"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 417.953000000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          DataField = 'descricao_setor'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbSituacoesEstoque."descricao_setor"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 588.000000000000000000
          Top = 0.480209999999999600
          Width = 78.031540000000000000
          Height = 15.118110240000000000
          DataField = 'mat_008'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSituacoesEstoque."mat_008"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 505.000000000000000000
          Top = 0.480209999999999600
          Width = 78.031540000000000000
          Height = 15.118110240000000000
          DataField = 'mat_012'
          DataSet = dbSituacoesEstoque
          DataSetName = 'dbSituacoesEstoque'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbSituacoesEstoque."mat_012"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        Condition = 'dbSituacoesEstoque."codigo"'
        object Line8: TfrxLineView
          Align = baCenter
          Left = 5.669295000000000000
          Top = 21.692950000000010000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 7.559060000000000000
          Top = 4.889744250000007000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIDO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 669.197280000000000000
          Top = 4.889744250000007000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ESTOQUE')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 326.008040000000000000
          Top = 4.779529999999994000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CATEGORIA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 114.590600000000000000
          Top = 4.889744250000007000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 417.953000000000000000
          Top = 4.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SETOR')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 589.000000000000000000
          Top = 4.614099999999994000
          Width = 77.795300000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PR. VENDA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 513.000000000000000000
          Top = 4.614099999999994000
          Width = 70.236240000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 661.417750000000000000
          Top = 1.889763780000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbSituacoesEstoque."estoque">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669532992126000000
          Top = 1.000000000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 472.441250000000000000
          Top = 1.889763780000010000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. TOTAL')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 291.023810000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 5.669531770000000000
          Top = 3.779530000000022000
          Width = 737.007876460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 490.181510000000000000
          Top = 7.559059999999988000
          Width = 254.385900000000000000
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
end
