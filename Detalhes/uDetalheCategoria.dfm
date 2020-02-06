inherited frmDetalheCategoria: TfrmDetalheCategoria
  Caption = 'Cadastro de Categoria'
  ClientHeight = 423
  ClientWidth = 685
  OnCreate = FormCreate
  ExplicitWidth = 691
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 685
    Height = 374
    ExplicitWidth = 685
    ExplicitHeight = 374
    FullHeight = 200
    object Label3: TLabel
      Left = 399
      Top = 11
      Width = 134
      Height = 16
      Caption = 'Selecione uma imagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBCtrlGridCat: TDBCtrlGrid
      Left = 263
      Top = 33
      Width = 413
      Height = 330
      ColCount = 6
      DataSource = dsCdsCat
      PanelBorder = gbNone
      PanelHeight = 66
      PanelWidth = 66
      TabOrder = 0
      RowCount = 5
      SelectedColor = clWhite
      OnClick = DBCtrlGridCatClick
      OnPaintPanel = DBCtrlGridCatPaintPanel
      object imgCategoriaLista: TImage
        Left = 0
        Top = 0
        Width = 66
        Height = 66
        Align = alClient
        Center = True
        OnClick = DBCtrlGridCatClick
        ExplicitLeft = 16
        ExplicitTop = 16
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 8
      Top = 17
      Width = 249
      Height = 351
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 1
      object Label1: TLabel
        Left = 11
        Top = 11
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 11
        Top = 63
        Width = 55
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object Label4: TLabel
        Left = 11
        Top = 115
        Width = 139
        Height = 16
        Caption = 'Departamento (balan'#231'a)'
        FocusControl = cxDBSpinEdit2
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 11
        Top = 33
        DataBinding.DataField = 'cat_001'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = 14997705
        TabOrder = 0
        Width = 65
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 11
        Top = 85
        DataBinding.DataField = 'cat_002'
        DataBinding.DataSource = dsCadastro
        TabOrder = 1
        Width = 222
      end
      object cxExibiCat: TcxDBCheckBox
        Left = 92
        Top = 218
        Caption = 'Exibir Imagem'
        DataBinding.DataField = 'b_exibir_icone'
        DataBinding.DataSource = dsCadastro
        TabOrder = 3
        Transparent = True
      end
      object cxImageCat: TcxImage
        Left = 11
        Top = 167
        Properties.PopupMenuLayout.MenuItems = []
        Style.BorderColor = clHighlightText
        Style.BorderStyle = ebsFlat
        Style.Color = 14997705
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.TransparentBorder = False
        StyleFocused.BorderStyle = ebsNone
        StyleHot.BorderColor = 14997705
        StyleHot.BorderStyle = ebsFlat
        TabOrder = 4
        Transparent = True
        Height = 75
        Width = 75
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 11
        Top = 137
        DataBinding.DataField = 'codigo_departamento_balanca'
        DataBinding.DataSource = dsCadastro
        Properties.AssignedValues.MinValue = True
        Properties.MaxValue = 99.000000000000000000
        Properties.SpinButtons.Visible = False
        TabOrder = 2
        Width = 75
      end
      object memInfoImagens: TMemo
        Left = 11
        Top = 248
        Width = 222
        Height = 93
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'Formato obrigat'#243'rio: PNG'
          'Dimens'#245'es ideais: 64 x 64'
          'Pasta de imagens:'
          '%s')
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 374
    Width = 685
    ExplicitTop = 374
    ExplicitWidth = 685
    inherited btCancelar: TAdvGlowButton
      Left = 578
      ExplicitLeft = 578
    end
    inherited btSalvar: TAdvGlowButton
      Left = 471
      ExplicitLeft = 471
    end
    inherited btExcluir: TAdvGlowButton
      Left = 364
      ExplicitLeft = 364
    end
    inherited btEditar: TAdvGlowButton
      Left = 257
      ExplicitLeft = 257
    end
    inherited btNovo: TAdvGlowButton
      Left = 150
      ExplicitLeft = 150
    end
    object btAbrirPastaImagens: TAdvGlowButton
      AlignWithMargins = True
      Left = 9
      Top = 3
      Width = 138
      Height = 41
      Hint = 'Abrir registro'
      Margins.Left = 0
      Caption = 'Abrir pasta de imagens'
      ImageIndex = 25
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btAbrirPastaImagensClick
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
  inherited dsCadastro: TDataSource
    Left = 328
    Top = 248
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO categoria'
      
        '  (cat_001, emp_001, cat_002, sit_001, usu_001_1, usu_001_2, dat' +
        '_001_1, dat_001_2, dat_001_3, cat_003, '
      '   b_exibir_icone, arquivo_img, codigo_departamento_balanca)'
      'VALUES'
      
        '  (:cat_001, :id_empresa, :cat_002, :sit_001, :usu_001_1, :usu_0' +
        '01_2, :dat_001_1, :dat_001_2, :dat_001_3, :cat_003, '
      '   :b_exibir_icone, :arquivo_img, :codigo_departamento_balanca)')
    SQLDelete.Strings = (
      'DELETE FROM categoria'
      'WHERE'
      '  cat_001 = :Old_cat_001 AND emp_001 = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE categoria'
      'SET'
      
        '  cat_001 = :cat_001, emp_001 = :id_empresa, cat_002 = :cat_002,' +
        ' sit_001 = :sit_001, usu_001_1 = :usu_001_1, '
      
        '  usu_001_2 = :usu_001_2, dat_001_1 = :dat_001_1, dat_001_2 = :d' +
        'at_001_2, dat_001_3 = :dat_001_3, cat_003 = :cat_003, '
      
        '  b_exibir_icone = :b_exibir_icone, arquivo_img = :arquivo_img, ' +
        'codigo_departamento_balanca =:codigo_departamento_balanca'
      'WHERE'
      '  cat_001 = :Old_cat_001 AND emp_001 = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM categoria'
      'WHERE'
      '  cat_001 = :Old_cat_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT cat_001, emp_001, cat_002, sit_001, usu_001_1, usu_001_2,' +
        ' dat_001_1, dat_001_2, dat_001_3, cat_003 FROM categoria'
      'WHERE'
      '  cat_001 = :cat_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM categoria'
      ''
      ') t')
    SQL.Strings = (
      'select '
      'cat_001,'
      'emp_001 as id_empresa,'
      'cat_002,sit_001,'
      'usu_001_1,'
      'usu_001_2,'
      'dat_001_3,'
      'dat_001_1,'
      'dat_001_2,'
      'dat_001_3,'
      'cat_003,'
      'b_exibir_icone,'
      'arquivo_img,'
      'codigo_departamento_balanca'
      'from categoria'
      'where cat_001 = :cat_001 and emp_001 = :id_empresa')
    AfterOpen = qrCadastroAfterOpen
    OnNewRecord = qrCadastroNewRecord
    Left = 416
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cat_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastrocat_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cat_001'
      Required = True
    end
    object qrCadastrocat_002: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'cat_002'
      Required = True
      Size = 40
    end
    object qrCadastrosit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrCadastrousu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrCadastrousu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrCadastrodat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
    object qrCadastrodat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrCadastrodat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrCadastrodat_001_3_1: TDateTimeField
      FieldName = 'dat_001_3_1'
    end
    object qrCadastrocat_003: TIntegerField
      FieldName = 'cat_003'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrob_exibir_icone: TBooleanField
      FieldName = 'b_exibir_icone'
      Required = True
    end
    object qrCadastroarquivo_img: TWideStringField
      FieldName = 'arquivo_img'
      Size = 200
    end
    object qrCadastrocodigo_departamento_balanca: TIntegerField
      DisplayLabel = 'C'#243'digo departamento (balan'#231'a)'
      FieldName = 'codigo_departamento_balanca'
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 496
    Top = 240
  end
  object cdsCat: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 96
    object cdsCatnomearquivo: TStringField
      FieldName = 'nomearquivo'
      Size = 200
    end
  end
  object dsCdsCat: TDataSource
    DataSet = cdsCat
    Left = 320
    Top = 72
  end
end
