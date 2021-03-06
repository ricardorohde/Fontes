inherited frmDetalheComposicao: TfrmDetalheComposicao
  Caption = 'Cadastro de Ingrediente/Item de Composi'#231#227'o'
  ClientHeight = 173
  ClientWidth = 676
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 682
  ExplicitHeight = 202
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 676
    Height = 124
    ExplicitWidth = 676
    ExplicitHeight = 124
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
      Top = 58
      Width = 66
      Height = 16
      Caption = 'Valor Custo'
    end
    object Label4: TLabel
      Left = 124
      Top = 58
      Width = 45
      Height = 16
      Caption = 'Estoque'
    end
    object Label5: TLabel
      Left = 230
      Top = 58
      Width = 90
      Height = 16
      Caption = 'Estoque M'#237'nimo'
    end
    object Label6: TLabel
      Left = 336
      Top = 58
      Width = 109
      Height = 16
      Caption = 'Unidade de Medida'
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
      TabOrder = 0
      Width = 421
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
      TabOrder = 5
    end
    object edValor: TJvValidateEdit
      Tag = 1
      Left = 16
      Top = 80
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
      TabOrder = 1
      OnKeyPress = edValorKeyPress
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'valor_custo'
    end
    object edEstoque: TJvValidateEdit
      Tag = 1
      Left = 124
      Top = 80
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
      TabOrder = 2
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'estoque'
    end
    object JvValidateEdit2: TJvValidateEdit
      Tag = 1
      Left = 230
      Top = 80
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
      TabOrder = 3
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'estoque_minimo'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 336
      Top = 80
      Width = 209
      Height = 24
      DataField = 'id_unidade'
      DataSource = dsCadastro
      KeyField = 'uni_001'
      ListField = 'descricao'
      ListSource = dsListaUnidades
      NullValueKey = 46
      TabOrder = 4
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 124
    Width = 676
    ExplicitTop = 124
    ExplicitWidth = 676
    inherited btCancelar: TAdvGlowButton
      Left = 569
      ExplicitLeft = 569
    end
    inherited btSalvar: TAdvGlowButton
      Left = 462
      ExplicitLeft = 462
    end
    inherited btExcluir: TAdvGlowButton
      Left = 355
      ExplicitLeft = 355
    end
    inherited btEditar: TAdvGlowButton
      Left = 248
      ExplicitLeft = 248
    end
    inherited btNovo: TAdvGlowButton
      Left = 141
      ExplicitLeft = 141
    end
    object btMovimentoEstoque: TAdvGlowButton
      AlignWithMargins = True
      Left = 4
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
      
        '  (id_composicao, descricao, valor_custo, estoque, estoque_minim' +
        'o, id_situacao, id_empresa, id_unidade)'
      'VALUES'
      
        '  (:id_composicao, :descricao, :valor_custo, :estoque, :estoque_' +
        'minimo, 4, :id_empresa, :id_unidade)')
    SQLDelete.Strings = (
      'DELETE FROM composicao'
      'WHERE'
      
        '  id_composicao = :Old_id_composicao AND id_empresa = :Old_id_em' +
        'presa')
    SQLUpdate.Strings = (
      'UPDATE composicao'
      'SET'
      
        '  id_composicao = :id_composicao, descricao = :descricao, valor_' +
        'custo = :valor_custo, estoque = :estoque, estoque_minimo = :esto' +
        'que_minimo, id_situacao = :id_situacao, id_empresa = :id_empresa' +
        ', id_unidade = :id_unidade'
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
      
        'SELECT id_composicao, descricao, valor_custo, estoque, estoque_m' +
        'inimo, '
      '       id_situacao, id_empresa, id_unidade'
      'FROM composicao'
      'where id_composicao=:id_composicao and id_empresa=:id_empresa')
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
end
