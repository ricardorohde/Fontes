inherited frmDetalheOpcional: TfrmDetalheOpcional
  Caption = 'Cadastro de Opcional'
  ClientHeight = 186
  ClientWidth = 543
  OnShow = FormShow
  ExplicitWidth = 549
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 543
    Height = 137
    ExplicitWidth = 543
    ExplicitHeight = 137
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 116
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = edDescricao
    end
    object Label3: TLabel
      Left = 431
      Top = 8
      Width = 30
      Height = 16
      Caption = 'Valor'
    end
    object edDescricao: TcxDBTextEdit
      Left = 114
      Top = 30
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 311
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 30
      Width = 100
      Height = 24
      TabStop = False
      Color = 14997705
      DataField = 'id_opcional'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 1
    end
    object edValor: TJvValidateEdit
      Tag = 1
      Left = 431
      Top = 30
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
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 999.000000000000000000
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      DataConnector.DataSource = jvdsCadastro
      DataConnector.DataField = 'valor'
    end
    object grTipo: TcxDBRadioGroup
      Left = 8
      Top = 60
      Caption = 'Tipo'
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = dsCadastro
      Properties.Columns = 2
      Properties.DefaultValue = '0'
      Properties.Items = <
        item
          Caption = 'Geral'
          Value = 0
        end
        item
          Caption = 'Massa'
          Value = 1
        end
        item
          Caption = 'Recheio'
          Value = 2
        end
        item
          Caption = 'Complemento'
          Value = 3
        end
        item
          Caption = 'Molho'
          Value = 4
        end
        item
          Caption = 'Cobertura'
          Value = 5
        end>
      TabOrder = 3
      Height = 75
      Width = 220
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 137
    Width = 543
    ExplicitTop = 137
    ExplicitWidth = 543
    inherited btCancelar: TAdvGlowButton
      Left = 436
      Appearance.BorderColor = clNavy
      ExplicitLeft = 436
    end
    inherited btSalvar: TAdvGlowButton
      Left = 329
      Appearance.BorderColor = clNavy
      ExplicitLeft = 329
    end
    inherited btExcluir: TAdvGlowButton
      Left = 222
      Appearance.BorderColor = clNavy
      ExplicitLeft = 222
    end
    inherited btEditar: TAdvGlowButton
      Left = 115
      Appearance.BorderColor = clNavy
      ExplicitLeft = 115
    end
    inherited btNovo: TAdvGlowButton
      Left = 8
      Appearance.BorderColor = clNavy
      ExplicitLeft = 8
    end
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO opcional'
      '  ( descricao, valor, id_empresa, tipo)'
      'VALUES'
      '  ( :descricao, :valor, :id_empresa, :tipo)')
    SQLDelete.Strings = (
      'DELETE FROM opcional'
      'WHERE'
      '  id_opcional = :Old_id_opcional')
    SQLUpdate.Strings = (
      'UPDATE opcional'
      'SET'
      
        '  id_opcional = :id_opcional, descricao = :descricao, valor = :v' +
        'alor, id_empresa = :id_empresa, tipo = :tipo'
      'WHERE'
      '  id_opcional = :Old_id_opcional')
    SQLLock.Strings = (
      'SELECT * FROM opcional'
      'WHERE'
      '  id_opcional = :Old_id_opcional'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id_opcional, descricao, valor, tipo FROM opcional'
      'WHERE'
      '  id_opcional = :id_opcional')
    SQL.Strings = (
      
        'select id_opcional, descricao, valor, id_empresa, tipo from opci' +
        'onal'
      'where id_opcional =:id_opcional and id_empresa=:id_empresa')
    AfterPost = qrCadastroAfterPost
    OnNewRecord = qrCadastroNewRecord
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_opcional'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_opcional: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_opcional'
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object qrCadastrovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrotipo: TIntegerField
      FieldName = 'tipo'
    end
  end
end
