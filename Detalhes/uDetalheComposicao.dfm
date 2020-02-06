inherited frmDetalheComposicao: TfrmDetalheComposicao
  Caption = 'Cadastro de Ingrediente/Item de Composi'#231#227'o'
  ClientHeight = 212
  ClientWidth = 675
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 681
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 675
    Height = 163
    ExplicitWidth = 675
    ExplicitHeight = 163
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 124
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 16
      Top = 60
      Width = 66
      Height = 16
      Caption = 'Valor Custo'
    end
    object Label4: TLabel
      Left = 124
      Top = 60
      Width = 96
      Height = 16
      Caption = 'Estoque no setor'
    end
    object Label5: TLabel
      Left = 230
      Top = 60
      Width = 90
      Height = 16
      Caption = 'Estoque M'#237'nimo'
    end
    object Label6: TLabel
      Left = 442
      Top = 60
      Width = 109
      Height = 16
      Caption = 'Unidade de Medida'
    end
    object Label7: TLabel
      Left = 336
      Top = 60
      Width = 84
      Height = 16
      Caption = 'Rendimento %'
    end
    object Label8: TLabel
      Left = 498
      Top = 8
      Width = 122
      Height = 16
      Caption = 'C'#243'digo de Refer'#234'ncia'
      FocusControl = cxDBTextEdit2
    end
    object Label9: TLabel
      Left = 16
      Top = 112
      Width = 98
      Height = 16
      Caption = 'Setor de estoque'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 122
      Top = 30
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 370
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 30
      Width = 100
      Height = 24
      TabStop = False
      Color = 14997705
      DataField = 'id_composicao'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object edValor: TJvValidateEdit
      Tag = 1
      Left = 16
      Top = 82
      Width = 100
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 2
      EditText = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HasMinValue = True
      MaxValue = 100.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = edValorKeyPress
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'valor_custo'
    end
    object edEstoque: TJvValidateEdit
      Tag = 1
      Left = 124
      Top = 82
      Width = 100
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 3
      EditText = '0,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 100.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'estoque'
    end
    object JvValidateEdit2: TJvValidateEdit
      Tag = 1
      Left = 230
      Top = 82
      Width = 100
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 3
      EditText = '0,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 100.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'estoque_minimo'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 442
      Top = 82
      Width = 207
      Height = 24
      DataField = 'id_unidade'
      DataSource = dsCadastro
      KeyField = 'uni_001'
      ListField = 'descricao'
      ListSource = dsListaUnidades
      NullValueKey = 46
      TabOrder = 7
    end
    object JvValidateEdit1: TJvValidateEdit
      Tag = 1
      Left = 336
      Top = 82
      Width = 100
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatFixed
      DecimalPlaces = 2
      EditText = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 100.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'rendimento'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 498
      Top = 30
      DataBinding.DataField = 'codigo_ref'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      Width = 151
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 134
      Width = 208
      Height = 24
      DataField = 'id_setor'
      DataSource = dsCadastro
      KeyField = 'id_setor'
      ListField = 'descricao'
      ListSource = dsListaSetor
      NullValueKey = 46
      TabOrder = 8
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 163
    Width = 675
    ExplicitTop = 163
    ExplicitWidth = 675
    inherited btCancelar: TAdvGlowButton
      Left = 568
      Appearance.BorderColor = clNavy
      ExplicitLeft = 568
    end
    inherited btSalvar: TAdvGlowButton
      Left = 461
      Appearance.BorderColor = clNavy
      ExplicitLeft = 461
    end
    inherited btExcluir: TAdvGlowButton
      Left = 354
      Appearance.BorderColor = clNavy
      ExplicitLeft = 354
    end
    inherited btEditar: TAdvGlowButton
      Left = 247
      Appearance.BorderColor = clNavy
      ExplicitLeft = 247
    end
    inherited btNovo: TAdvGlowButton
      Left = 140
      Appearance.BorderColor = clNavy
      ExplicitLeft = 140
    end
    object btMovimentoEstoque: TAdvGlowButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 134
      Height = 41
      Margins.Left = 0
      Caption = 'Mov. Estoque'
      ImageIndex = 18
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btMovimentoEstoqueClick
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
  inherited dsCadastro: TDataSource
    Left = 232
    Top = 0
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO composicao'
      
        '  (id_composicao, descricao, valor_custo,  estoque_minimo, id_si' +
        'tuacao, id_empresa, id_unidade, '
      '   rendimento, codigo_ref, id_setor)'
      'VALUES'
      
        '  (:id_composicao, :descricao, :valor_custo, :estoque_minimo, 4,' +
        ' :id_empresa, :id_unidade, '
      '   :rendimento, :codigo_ref, :id_setor)')
    SQLDelete.Strings = (
      'DELETE FROM composicao'
      'WHERE'
      
        '  id_composicao = :Old_id_composicao AND id_empresa = :Old_id_em' +
        'presa')
    SQLUpdate.Strings = (
      'UPDATE composicao'
      'SET'
      
        '  id_composicao = :id_composicao, descricao = :descricao, valor_' +
        'custo = :valor_custo, '
      '  estoque_minimo = :estoque_minimo, id_situacao = :id_situacao, '
      
        '  id_empresa = :id_empresa, id_unidade = :id_unidade, rendimento' +
        ' = :rendimento,'
      '  codigo_ref = :codigo_ref, id_setor = :id_setor'
      'WHERE'
      
        '  id_composicao = :Old_id_composicao AND id_empresa = :Old_id_em' +
        'presa')
    SQLLock.Strings = (
      'SELECT * FROM composicao'
      'WHERE'
      
        '  id_composicao = :Old_id_composicao AND id_empresa = :Old_id_em' +
        'presa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_composicao, descricao, valor_custo, estoque, estoque_m' +
        'inimo, id_situacao, id_empresa, id_unidade FROM composicao'
      'WHERE'
      '  id_composicao = :id_composicao AND id_empresa = :id_empresa')
    SQL.Strings = (
      
        'SELECT c.id_composicao, c.descricao, c.valor_custo, c.estoque_mi' +
        'nimo, '
      
        '       c.id_situacao, c.id_empresa, c.id_unidade, c.rendimento, ' +
        'c.codigo_ref,'
      '       c.id_setor, sec.quantidade as estoque'
      'FROM composicao c'
      
        'left join setor_estoque_composicao sec on sec.id_composicao=c.id' +
        '_composicao and sec.id_empresa=c.id_empresa and sec.id_setor=c.i' +
        'd_setor '
      
        'where c.id_composicao=:id_composicao and c.id_empresa=:id_empres' +
        'a')
    AfterPost = qrCadastroAfterPost
    OnNewRecord = qrCadastroNewRecord
    Left = 312
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_composicao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_composicao: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_composicao'
      Required = True
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object qrCadastrovalor_custo: TFloatField
      DisplayLabel = 'Valor Custo'
      FieldName = 'valor_custo'
      currency = True
    end
    object qrCadastroestoque: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'estoque'
    end
    object qrCadastroestoque_minimo: TFloatField
      DisplayLabel = 'Estoque M'#237'nimo'
      FieldName = 'estoque_minimo'
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroid_unidade: TIntegerField
      FieldName = 'id_unidade'
      Required = True
    end
    object qrCadastrorendimento: TFloatField
      FieldName = 'rendimento'
    end
    object qrCadastrocodigo_ref: TWideStringField
      DisplayLabel = 'C'#243'digo de Refer'#234'ncia'
      FieldName = 'codigo_ref'
      Size = 50
    end
    object qrCadastroid_setor: TIntegerField
      DisplayLabel = 'Setor'
      FieldName = 'id_setor'
      Required = True
      OnChange = qrCadastroid_setorChange
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 392
    Top = 0
  end
  object qrListaUnidades: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'SELECT uni_001, emp_001, cast(concat(uni_003, '#39' - '#39', uni_002)  a' +
        's varchar(100)) as descricao'
      'FROM unidades'
      'where sit_001=4 and emp_001=:id_empresa')
    Left = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrListaUnidadesuni_001: TIntegerField
      FieldName = 'uni_001'
      Required = True
    end
    object qrListaUnidadesemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrListaUnidadesdescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
  end
  object dsListaUnidades: TDataSource
    AutoEdit = False
    DataSet = qrListaUnidades
    Left = 536
  end
  object qrListaSetor: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_setor, descricao from setor_estoque where id_empresa=:' +
        'id_empresa')
    Left = 464
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrListaSetorid_setor: TIntegerField
      FieldName = 'id_setor'
      Required = True
    end
    object qrListaSetordescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
  end
  object dsListaSetor: TDataSource
    AutoEdit = False
    DataSet = qrListaSetor
    Left = 360
    Top = 123
  end
end
