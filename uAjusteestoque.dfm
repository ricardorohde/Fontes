inherited frmAjusteestoque: TfrmAjusteestoque
  Caption = 'AJUSTE DE ESTOQUE'
  ClientHeight = 508
  ClientWidth = 850
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 856
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 850
    Height = 454
    TabOrder = 1
    ExplicitTop = -3
    ExplicitWidth = 850
    ExplicitHeight = 454
    FullHeight = 200
    object Label3: TLabel
      Left = 684
      Top = 14
      Width = 32
      Height = 16
      Caption = 'DATA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 93
      Width = 107
      Height = 16
      Caption = 'C'#211'DIGO PRODUTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 698
      Top = 93
      Width = 76
      Height = 16
      Caption = 'QUANTIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDescricao: TLabel
      Left = 188
      Top = 115
      Width = 5
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 142
      Width = 846
      Height = 291
      TabOrder = 0
      TabStop = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsProdutos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1codigo_material: TcxGridDBColumn
          Caption = 'C'#211'DIGO'
          DataBinding.FieldName = 'codigo'
          Width = 106
        end
        object cxGrid1DBTableView1descricao_material: TcxGridDBColumn
          Caption = 'DESCRI'#199#195'O'
          DataBinding.FieldName = 'descricao'
          Width = 403
        end
        object cxGrid1DBTableView1quantidade: TcxGridDBColumn
          Caption = 'QUANTIDADE'
          DataBinding.FieldName = 'quantidade'
          Width = 149
        end
        object cxGrid1DBTableView1descricao_setor: TcxGridDBColumn
          Caption = 'SETOR'
          DataBinding.FieldName = 'setor'
          Width = 158
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'acDeleteproduto'
              Default = True
              ImageIndex = 1
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
          Width = 26
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object rgTipoestoque: TcxRadioGroup
      Left = 9
      Top = 5
      TabStop = False
      Caption = 'TIPO ESTOQUE'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'PRODUTOS'
        end
        item
          Caption = 'INGREDIENTES'
        end>
      Style.BorderColor = clNavy
      Style.BorderStyle = ebsSingle
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnClick = rgTipoestoqueClick
      Height = 60
      Width = 241
    end
    object rgTipomovimento: TcxRadioGroup
      Left = 256
      Top = 5
      TabStop = False
      Caption = 'TIPO DE MOVIMENTO'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'ENTRADA'
        end
        item
          Caption = 'SA'#205'DA'
        end>
      Style.BorderColor = clNavy
      Style.BorderStyle = ebsSingle
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Height = 60
      Width = 209
    end
    object edCodProduto: TcxButtonEdit
      Left = 9
      Top = 112
      Properties.Buttons = <
        item
          Action = acPesquisaproduto
          Default = True
          ImageIndex = 0
          Kind = bkGlyph
        end>
      Properties.ClickKey = 0
      Properties.Images = frmMenu.ImgList16
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnExit = edCodProdutoExit
      Width = 168
    end
    object btInserir: TAdvGlowButton
      Left = 801
      Top = 95
      Width = 46
      Height = 41
      Hint = 'Inserir item'
      Anchors = [akTop, akRight]
      ImageIndex = 3
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      TabStop = True
      OnClick = btInserirClick
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
    object AdvGroupBox1: TAdvGroupBox
      Left = 481
      Top = 5
      Width = 182
      Height = 60
      BorderColor = clNavy
      Caption = 'FILTRO'
      TabOrder = 6
      object cbsetororigem: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 162
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'id_setor'
        ListField = 'descricao'
        ListSource = dsListasetororigem
        ParentFont = False
        TabOrder = 0
        TabStop = False
      end
    end
    object dtpData: TDateTimePicker
      Left = 684
      Top = 31
      Width = 109
      Height = 27
      Date = 43069.616051863430000000
      Time = 43069.616051863430000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 454
    Width = 850
    Height = 54
    TabOrder = 2
    ExplicitTop = 454
    ExplicitWidth = 850
    ExplicitHeight = 54
    object btSair: TAdvGlowButton
      AlignWithMargins = True
      Left = 717
      Top = 3
      Width = 130
      Height = 50
      Margins.Left = 0
      Action = acSair
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 5
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
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
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 584
      Top = 3
      Width = 130
      Height = 50
      Margins.Left = 0
      Action = acSalvar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
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
      Left = 451
      Top = 3
      Width = 130
      Height = 50
      Margins.Left = 0
      Action = acCancelar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 318
      Top = 3
      Width = 130
      Height = 50
      Margins.Left = 0
      Action = acIncluir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
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
  object edQuantidade: TJvValidateEdit
    Left = 699
    Top = 112
    Width = 78
    Height = 24
    Flat = False
    ParentFlat = False
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloatFixed
    DecimalPlaces = 2
    EditText = '1,00'
    HasMaxValue = True
    HasMinValue = True
    MaxValue = 9999999.000000000000000000
    MinValue = 1.000000000000000000
    TabOrder = 0
  end
  object aclist: TActionList
    Images = frmMenu.ImgList32
    Left = 592
    Top = 208
    object acIncluir: TAction
      Caption = 'NOVO (F2)'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = acIncluirExecute
    end
    object acCancelar: TAction
      Caption = 'CANCELAR (F3)'
      ImageIndex = 4
      ShortCut = 114
      OnExecute = acCancelarExecute
    end
    object acSalvar: TAction
      Caption = 'SALVAR (F5)'
      ImageIndex = 0
      ShortCut = 116
      OnExecute = acSalvarExecute
    end
    object acSair: TAction
      Caption = 'SAIR (F9)'
      ImageIndex = 5
      ShortCut = 4216
      OnExecute = acSairExecute
    end
    object acPesquisaproduto: TAction
      Caption = 'acPesquisaproduto'
      ImageIndex = 6
      OnExecute = acPesquisaprodutoExecute
    end
  end
  object qrListasetororigem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'SELECT id_setor, descricao from setor_estoque where id_empresa=:' +
        'id_empresa and id_situacao=4')
    Left = 444
    Top = 173
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrListasetororigemid_setor: TIntegerField
      FieldName = 'id_setor'
      Required = True
    end
    object qrListasetororigemdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object dsListasetororigem: TDataSource
    DataSet = qrListasetororigem
    Left = 724
    Top = 261
  end
  object dsProdutos: TDataSource
    DataSet = cdsListaprodutos
    Left = 407
    Top = 101
  end
  object qrProdutos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select m.mat_001 as id_material,m.mat_003 descricao_material ,m.' +
        'mat_004 codigo_material,s.quantidade,m.mat_008 preco,'
      's.id_setor,'
      'se.descricao as descricao_setor, '#39'M'#39' as TIPO_MATERIAL '
      'from materiais m '
      
        'join setor_estoque_material s on m.mat_001=s.id_material and s.i' +
        'd_empresa=m.emp_001 '
      
        'join setor_estoque se on se.id_setor=s.id_setor and se.id_empres' +
        'a=s.id_empresa'
      'where m.emp_001=:emp and s.id_setor=:setor')
    FilterOptions = [foCaseInsensitive]
    Left = 319
    Top = 109
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'setor'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'descricao_material'
      Required = True
      Size = 100
    end
    object WideStringField2: TWideStringField
      FieldName = 'codigo_material'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'preco'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_setor'
      ReadOnly = True
      Required = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'descricao_setor'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'tipo_material'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object cdsListaprodutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 352
    object cdsListaprodutoscodigo: TStringField
      FieldName = 'codigo'
    end
    object cdsListaprodutosdescricao: TStringField
      FieldName = 'descricao'
    end
    object cdsListaprodutosquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object cdsListaprodutossetor: TStringField
      FieldName = 'setor'
    end
    object cdsListaprodutosid_codigo: TIntegerField
      FieldName = 'id_codigo'
    end
    object cdsListaprodutosid_setor: TIntegerField
      FieldName = 'id_setor'
    end
    object cdsListaprodutostipo_material: TStringField
      FieldName = 'tipo_material'
      Size = 1
    end
    object cdsListaprodutostipo_movimento: TStringField
      FieldName = 'tipo_movimento'
    end
  end
  object dsListaprodutos: TDataSource
    AutoEdit = False
    DataSet = cdsListaprodutos
    Left = 328
    Top = 360
  end
end
