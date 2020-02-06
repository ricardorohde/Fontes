inherited frmDetalheContaCorrente: TfrmDetalheContaCorrente
  Caption = 'Cadastro de Conta Corrente'
  ClientHeight = 226
  ClientWidth = 540
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 546
  ExplicitHeight = 255
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 540
    Height = 177
    ExplicitWidth = 540
    ExplicitHeight = 177
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 79
      Top = 18
      Width = 45
      Height = 16
      Caption = 'Ag'#234'ncia'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 175
      Top = 18
      Width = 33
      Height = 16
      Caption = 'Conta'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 271
      Top = 18
      Width = 34
      Height = 16
      Caption = 'Banco'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 398
      Top = 18
      Width = 32
      Height = 16
      Caption = 'Saldo'
    end
    object Label6: TLabel
      Left = 16
      Top = 124
      Width = 67
      Height = 16
      Caption = 'Observa'#231#227'o'
      FocusControl = cxDBTextEdit4
    end
    object Label7: TLabel
      Left = 16
      Top = 78
      Width = 92
      Height = 16
      Caption = 'Titular da Conta'
      FocusControl = cxDBTextEdit5
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 40
      DataBinding.DataField = 'id_contacorrente'
      DataBinding.DataSource = dsCadastro
      Enabled = False
      Properties.SpinButtons.Visible = False
      TabOrder = 6
      Width = 57
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 79
      Top = 40
      DataBinding.DataField = 'agencia'
      DataBinding.DataSource = dsCadastro
      TabOrder = 0
      Width = 90
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 175
      Top = 40
      DataBinding.DataField = 'conta'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 90
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 271
      Top = 40
      DataBinding.DataField = 'banco'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 16
      Top = 146
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 5
      Width = 503
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 398
      Top = 40
      DataBinding.DataField = 'saldo'
      DataBinding.DataSource = dsCadastro
      Properties.MaxValue = 99999999.989999990000000000
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 16
      Top = 94
      DataBinding.DataField = 'titular'
      DataBinding.DataSource = dsCadastro
      TabOrder = 4
      Width = 503
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 177
    Width = 540
    ExplicitTop = 177
    ExplicitWidth = 540
    inherited btCancelar: TAdvGlowButton
      Left = 433
      Appearance.BorderColor = clNavy
      ExplicitLeft = 433
    end
    inherited btSalvar: TAdvGlowButton
      Left = 326
      Appearance.BorderColor = clNavy
      ExplicitLeft = 326
    end
    inherited btExcluir: TAdvGlowButton
      Left = 219
      Appearance.BorderColor = clNavy
      ExplicitLeft = 219
    end
    inherited btEditar: TAdvGlowButton
      Left = 112
      Appearance.BorderColor = clNavy
      ExplicitLeft = 112
    end
    inherited btNovo: TAdvGlowButton
      Left = 5
      Appearance.BorderColor = clNavy
      ExplicitLeft = 5
    end
  end
  inherited dsCadastro: TDataSource
    Left = 168
    Top = 64
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO contacorrente'
      
        '  (id_empresa, agencia, conta, banco, saldo, id_situacao, observ' +
        'acao,titular)'
      'VALUES'
      
        '  (:id_empresa, :agencia, :conta, :banco, :saldo, :id_situacao, ' +
        ':observacao,:titular)')
    SQLDelete.Strings = (
      'DELETE FROM contacorrente'
      'WHERE'
      
        '  id_contacorrente = :Old_id_contacorrente AND id_empresa = :Old' +
        '_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE contacorrente'
      'SET'
      
        '  id_contacorrente = :id_contacorrente, id_empresa = :id_empresa' +
        ', agencia = :agencia, conta = :conta, banco = :banco, saldo = :s' +
        'aldo, id_situacao = :id_situacao, observacao = :observacao,titul' +
        'ar =:titular'
      'WHERE'
      
        '  id_contacorrente = :Old_id_contacorrente AND id_empresa = :Old' +
        '_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM contacorrente'
      'WHERE'
      
        '  id_contacorrente = :Old_id_contacorrente AND id_empresa = :Old' +
        '_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_contacorrente, id_empresa, agencia, conta, banco, sald' +
        'o, id_situacao, observacao FROM contacorrente'
      'WHERE'
      
        '  id_contacorrente = :id_contacorrente AND id_empresa = :id_empr' +
        'esa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM contacorrente'
      ''
      ') t')
    SQL.Strings = (
      'select '
      'id_contacorrente, '
      'id_empresa, '
      'agencia, '
      'conta, '
      'banco , '
      'saldo, '
      'id_situacao ,'
      'observacao,'
      'titular'
      'from contacorrente'
      
        'where   id_contacorrente = :id_contacorrente and id_empresa = :i' +
        'd_empresa')
    OnNewRecord = qrCadastroNewRecord
    Left = 352
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_contacorrente'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_contacorrente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_contacorrente'
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroagencia: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
      Required = True
    end
    object qrCadastroconta: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
      Required = True
    end
    object qrCadastrobanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
      Required = True
    end
    object qrCadastrosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      Required = True
      currency = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastroobservacao: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Size = 100
    end
    object qrCadastrotitular: TWideStringField
      FieldName = 'titular'
      Size = 50
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 112
    Top = 72
  end
end
