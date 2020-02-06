inherited frmControleContasPagarEditar: TfrmControleContasPagarEditar
  Caption = 'Editar Conta a Pagar'
  ClientHeight = 321
  ClientWidth = 399
  Constraints.MinHeight = 350
  Constraints.MinWidth = 405
  ExplicitWidth = 405
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 399
    Height = 272
    ExplicitWidth = 399
    ExplicitHeight = 272
    FullHeight = 200
    object Label1: TLabel
      Left = 12
      Top = 10
      Width = 117
      Height = 16
      Caption = 'Data de Lan'#231'amento'
      FocusControl = cxDBDateEdit1
    end
    object Label2: TLabel
      Left = 138
      Top = 218
      Width = 26
      Height = 16
      Caption = 'Nota'
      FocusControl = cxDBSpinEdit1
    end
    object Label3: TLabel
      Left = 12
      Top = 166
      Width = 49
      Height = 16
      Caption = 'Hist'#243'rico'
      FocusControl = cxDBTextEdit1
    end
    object Label4: TLabel
      Left = 139
      Top = 10
      Width = 115
      Height = 16
      Caption = 'Data de Vencimento'
      FocusControl = edDataVencimento
    end
    object Label5: TLabel
      Left = 11
      Top = 218
      Width = 64
      Height = 16
      Caption = 'Documento'
      FocusControl = cxDBTextEdit2
    end
    object Label6: TLabel
      Left = 266
      Top = 10
      Width = 30
      Height = 16
      Caption = 'Valor'
      FocusControl = edValor
    end
    object Label7: TLabel
      Left = 12
      Top = 62
      Width = 65
      Height = 16
      Caption = 'Fornecedor'
      FocusControl = edCodFornecedor
    end
    object Label8: TLabel
      Left = 12
      Top = 114
      Width = 33
      Height = 16
      Caption = 'Conta'
      FocusControl = edCodConta
    end
    object Label9: TLabel
      Left = 266
      Top = 218
      Width = 43
      Height = 16
      Caption = 'Esp'#233'cie'
    end
    object DBText1: TDBText
      Left = 83
      Top = 87
      Width = 47
      Height = 16
      AutoSize = True
      DataField = 'nomeforn'
      DataSource = dsCadastro
    end
    object DBText2: TDBText
      Left = 83
      Top = 139
      Width = 47
      Height = 16
      AutoSize = True
      DataField = 'nomeconta'
      DataSource = dsCadastro
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 12
      Top = 32
      DataBinding.DataField = 'data'
      DataBinding.DataSource = dsCadastro
      TabOrder = 0
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 139
      Top = 240
      DataBinding.DataField = 'nota'
      DataBinding.DataSource = dsCadastro
      Properties.SpinButtons.Visible = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 12
      Top = 188
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 5
      Width = 375
    end
    object edDataVencimento: TcxDBDateEdit
      Left = 139
      Top = 32
      DataBinding.DataField = 'data_vencimento'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 11
      Top = 240
      DataBinding.DataField = 'documento'
      DataBinding.DataSource = dsCadastro
      TabOrder = 6
      Width = 122
    end
    object edCodFornecedor: TcxDBButtonEdit
      Left = 12
      Top = 84
      DataBinding.DataField = 'id_fornecedor'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaFornecedor
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 65
    end
    object edCodConta: TcxDBButtonEdit
      Left = 12
      Top = 136
      DataBinding.DataField = 'id_conta'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaConta
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 65
    end
    object cbFormaPagamento: TJvDBComboBox
      Left = 266
      Top = 240
      Width = 121
      Height = 24
      DataField = 'especie'
      DataSource = dsCadastro
      Items.Strings = (
        'Boleto'
        'Cart'#227'o'
        'Cheque'
        'Credi'#225'rio'
        'D'#233'bito Conta'
        'Duplicata'
        'Nota avulsa'
        'Promiss'#243'ria')
      TabOrder = 8
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object edValor: TcxDBCurrencyEdit
      Left = 266
      Top = 32
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 272
    Width = 399
    ExplicitTop = 272
    ExplicitWidth = 399
    inherited btCancelar: TAdvGlowButton
      Left = 292
      ExplicitLeft = 292
    end
    inherited btSalvar: TAdvGlowButton
      Left = 185
      ExplicitLeft = 185
    end
    inherited btExcluir: TAdvGlowButton
      Left = 78
      ExplicitLeft = 78
    end
    inherited btEditar: TAdvGlowButton
      Left = 292
      Top = 50
      ExplicitLeft = 292
      ExplicitTop = 50
    end
    inherited btNovo: TAdvGlowButton
      Left = 185
      Top = 50
      ExplicitLeft = 185
      ExplicitTop = 50
    end
  end
  inherited dsCadastro: TDataSource
    Left = 160
    Top = 144
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cpagar'
      
        '  (id_cpagar, id_empresa, data, id_fornecedor, id_conta, nota, d' +
        'escricao, valor, data_vencimento, documento, id_situacao, especi' +
        'e)'
      'VALUES'
      
        '  (:id_cpagar, :id_empresa, :data, :id_fornecedor, :id_conta, :n' +
        'ota, :descricao, :valor, :data_vencimento, :documento, :id_situa' +
        'cao, :especie)')
    SQLDelete.Strings = (
      'DELETE FROM cpagar'
      'WHERE'
      '  id_cpagar = :Old_id_cpagar AND id_empresa = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE cpagar'
      'SET'
      
        '  id_cpagar = :id_cpagar, id_empresa = :id_empresa, data = :data' +
        ', id_fornecedor = :id_fornecedor, id_conta = :id_conta, nota = :' +
        'nota, descricao = :descricao, valor = :valor, data_vencimento = ' +
        ':data_vencimento, documento = :documento, id_situacao = :id_situ' +
        'acao, especie = :especie'
      'WHERE'
      '  id_cpagar = :Old_id_cpagar AND id_empresa = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM cpagar'
      'WHERE'
      '  id_cpagar = :Old_id_cpagar AND id_empresa = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_cpagar, id_empresa, data, id_fornecedor, id_conta, not' +
        'a, descricao, valor, data_vencimento, documento, id_situacao, es' +
        'pecie FROM cpagar'
      'WHERE'
      '  id_cpagar = :id_cpagar AND id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cpagar'
      ''
      ') t')
    SQL.Strings = (
      
        'select cp.id_cpagar, cp.id_empresa, cp.data, cp.id_fornecedor, c' +
        'p.id_conta, '
      
        'cp.nota, cp.descricao, cp.data_vencimento, cp.documento, cp.espe' +
        'cie, cp.valor, cp.id_situacao,'
      'f.nome_fantasia as nomeforn, ct.descricao as nomeconta '
      'from cpagar cp'
      
        'left join conta ct on ct.id_conta=cp.id_conta and ct.id_empresa=' +
        'cp.id_empresa'
      
        'left join fornecedor f on f.id_fornecedor=cp.id_fornecedor and f' +
        '.id_empresa=cp.id_empresa'
      'where '
      'cp.id_cpagar=:id_cpagar and cp.id_empresa=:id_empresa')
    Left = 232
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cpagar'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_cpagar: TIntegerField
      FieldName = 'id_cpagar'
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrodata: TDateTimeField
      DisplayLabel = 'Data de Lan'#231'amento'
      FieldName = 'data'
      Required = True
    end
    object qrCadastroid_fornecedor: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'id_fornecedor'
      Required = True
      OnChange = qrCadastroid_fornecedorChange
    end
    object qrCadastroid_conta: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'id_conta'
      Required = True
      OnChange = qrCadastroid_contaChange
    end
    object qrCadastronota: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'nota'
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'descricao'
      Size = 150
    end
    object qrCadastrodata_vencimento: TDateField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCadastrodocumento: TWideStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
    end
    object qrCadastroespecie: TIntegerField
      FieldName = 'especie'
    end
    object qrCadastrovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrCadastronomeforn: TWideStringField
      FieldName = 'nomeforn'
      Required = True
      Size = 100
    end
    object qrCadastronomeconta: TWideStringField
      FieldName = 'nomeconta'
      Required = True
      Size = 100
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 304
    Top = 144
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 280
    Top = 96
    object DataSetFirst1: TDataSetFirst
      Category = 'Dados'
      Caption = 'DataSetFirst1'
      Enabled = False
      Hint = 'Primeiro|Move para o primeiro registro'
      ImageIndex = 3
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dados'
      Caption = 'DataSetPrior1'
      Enabled = False
      Hint = 'Anterior|Move para o registro anterior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dados'
      Caption = 'DataSetNext1'
      Enabled = False
      Hint = 'Pr'#243'ximo|Move para o pr'#243'ximo registro'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dados'
      Caption = 'DataSetLast1'
      Enabled = False
      Hint = #218'ltimo|Move para o pr'#243'ximo registro'
      ImageIndex = 4
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dados'
      Caption = 'DataSetInsert1'
      Enabled = False
      Hint = 'Incluir|Permite a inclus'#227'o de um novo registro'
      ImageIndex = 15
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dados'
      Caption = 'DataSetDelete1'
      Enabled = False
      Hint = 'Excluir|Permite a exclus'#227'o do registro atual'
      ImageIndex = 0
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dados'
      Caption = 'DataSetEdit1'
      Enabled = False
      Hint = 'Editar|Permite a altera'#231#227'o do registro atual'
      ImageIndex = 17
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dados'
      Caption = 'DataSetRefresh1'
      Enabled = False
      Hint = 
        'Atualizar|Atualiza o registro com os dados gravados no banco de ' +
        'dados'
      ImageIndex = 16
      ShortCut = 116
    end
    object act_confirmar: TAction
      Category = 'padrao'
      Caption = 'act_confirmar'
      Hint = 'Confirmar'
      ImageIndex = 5
    end
    object act_cancelar: TAction
      Category = 'padrao'
      Caption = 'act_cancelar'
      Hint = 'Cancelar'
      ImageIndex = 6
    end
    object acBuscaFornecedor: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaFornecedorExecute
    end
    object acBuscaConta: TAction
      Caption = 'acBuscaConta'
      ImageIndex = 0
      OnExecute = acBuscaContaExecute
    end
  end
end
