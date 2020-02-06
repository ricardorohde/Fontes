inherited frmDetalheFormaPgto: TfrmDetalheFormaPgto
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 411
  ClientWidth = 543
  KeyPreview = True
  OnShow = FormShow
  ExplicitWidth = 549
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 543
    Height = 362
    ExplicitWidth = 543
    ExplicitHeight = 362
    FullHeight = 200
    object Label1: TLabel
      Left = 7
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 78
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = edDescricao
    end
    object Label3: TLabel
      Left = 411
      Top = 8
      Width = 81
      Height = 16
      Caption = 'Data Cadastro'
      FocusControl = cxDBDateEdit1
    end
    object Label5: TLabel
      Left = 190
      Top = 66
      Width = 205
      Height = 16
      Caption = 'Tipo de forma de pagamento (SAT)'
    end
    object Label6: TLabel
      Left = 411
      Top = 66
      Width = 65
      Height = 16
      Caption = 'C'#243'digo ECF'
      FocusControl = cxDBSpinEdit2
    end
    object lblCNPJ: TLabel
      Left = 411
      Top = 112
      Width = 115
      Height = 16
      Caption = 'CNPJ Credenciadora'
      FocusControl = edCNPJ
    end
    object Label9: TLabel
      Left = 190
      Top = 112
      Width = 108
      Height = 16
      Caption = 'Tipo de Integra'#231#227'o'
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 7
      Top = 27
      DataBinding.DataField = 'for_001'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 11
      Width = 65
    end
    object edDescricao: TcxDBTextEdit
      Left = 78
      Top = 27
      DataBinding.DataField = 'for_002'
      DataBinding.DataSource = dsCadastro
      TabOrder = 0
      Width = 327
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 411
      Top = 27
      TabStop = False
      DataBinding.DataField = 'dat_001_1'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      TabOrder = 12
      Width = 124
    end
    object cbForma: TJvDBComboBox
      Left = 190
      Top = 84
      Width = 215
      Height = 24
      DataField = 'sfi_codigo'
      DataSource = dsCadastro
      Items.Strings = (
        'Dinheiro'
        'Cheque'
        'Cartao de Cr'#233'dito'
        'Cartao de D'#233'bito'
        'Cr'#233'dito Loja'
        'Vale Alimenta'#231#227'o'
        'Vale Refei'#231#227'o'
        'Vale Presente'
        'Vale Combustivel'
        'Outros')
      TabOrder = 1
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = cbFormaChange
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 190
      Top = 207
      Width = 345
      Height = 75
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 9
      object lbConta: TLabel
        Left = 79
        Top = 51
        Width = 43
        Height = 16
        Caption = 'lbConta'
      end
      object Label4: TLabel
        Left = 9
        Top = 29
        Width = 33
        Height = 16
        Caption = 'Conta'
      end
      object edCodConta: TcxDBButtonEdit
        Left = 8
        Top = 46
        DataBinding.DataField = 'id_conta'
        DataBinding.DataSource = dsCadastro
        Enabled = False
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaConta
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Properties.ReadOnly = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 65
      end
      object cxFiado: TcxDBCheckBox
        Left = 5
        Top = 2
        Caption = 'Tipo Fiado'
        DataBinding.DataField = 'b_fiado'
        DataBinding.DataSource = dsCadastro
        TabOrder = 1
        OnClick = cxFiadoClick
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 187
      Top = 156
      Caption = 'Tipo Devolu'#231#227'o'
      DataBinding.DataField = 'b_devolucao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 5
      OnClick = cxFiadoClick
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 411
      Top = 84
      DataBinding.DataField = 'codigo_ecf'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      Width = 124
    end
    object cxDBUtilizaTEF: TcxDBCheckBox
      Left = 187
      Top = 178
      Caption = 'Utiliza TEF'
      DataBinding.DataField = 'b_tef'
      DataBinding.DataSource = dsCadastro
      TabOrder = 6
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 7
      Top = 286
      Width = 527
      Height = 76
      BorderColor = clNavy
      TabOrder = 10
      object Label7: TLabel
        Left = 9
        Top = 27
        Width = 33
        Height = 16
        Caption = 'Conta'
      end
      object Label10: TLabel
        Left = 320
        Top = 27
        Width = 86
        Height = 16
        Caption = 'Taxa do cart'#227'o'
        FocusControl = cxTaxa_cartao
      end
      object Label8: TLabel
        Left = 429
        Top = 27
        Width = 32
        Height = 16
        Caption = 'Prazo'
        FocusControl = cxPrazo_cartao
      end
      object lblContacorrente: TLabel
        Left = 84
        Top = 49
        Width = 4
        Height = 16
      end
      object cxControlecartao: TcxDBCheckBox
        Left = 7
        Top = 3
        Caption = 
          'Marque essa op'#231#227'o para habilitar o recebimento do cart'#227'o em sua ' +
          'conta corrente'
        DataBinding.DataField = 'utiliza_controle_cartao'
        DataBinding.DataSource = dsCadastro
        TabOrder = 3
        OnClick = cxControlecartaoClick
      end
      object edContabancaria: TcxDBButtonEdit
        Left = 9
        Top = 44
        DataBinding.DataField = 'id_contacorrente'
        DataBinding.DataSource = dsCadastro
        Enabled = False
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaConta
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Properties.ReadOnly = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnClick = acBuscaContabancariaExecute
        OnExit = edContabancariaExit
        Width = 67
      end
      object cxTaxa_cartao: TcxDBCalcEdit
        Left = 320
        Top = 44
        DataBinding.DataField = 'taxa_cartao'
        DataBinding.DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
        Width = 86
      end
      object cxPrazo_cartao: TcxDBSpinEdit
        Left = 429
        Top = 44
        DataBinding.DataField = 'prazo_cartao'
        DataBinding.DataSource = dsCadastro
        Enabled = False
        TabOrder = 2
        Width = 67
      end
    end
    object cxFiscal: TcxDBCheckBox
      Left = 313
      Top = 156
      Caption = 'Emite cupom fiscal'
      DataBinding.DataField = 'emite_fiscal'
      DataBinding.DataSource = dsCadastro
      Properties.OnChange = cxFiscalPropertiesChange
      TabOrder = 7
    end
    object cbtipo_fiscal: TJvDBComboBox
      Left = 316
      Top = 179
      Width = 124
      Height = 24
      DataField = 'tipo_fiscal'
      DataSource = dsCadastro
      Items.Strings = (
        'SAT'
        'ECF'
        'NFCE')
      TabOrder = 8
      Values.Strings = (
        '1'
        '2'
        '3')
      Visible = False
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object edCNPJ: TcxDBTextEdit
      Left = 411
      Top = 130
      DataBinding.DataField = 'cnpjcred'
      DataBinding.DataSource = dsCadastro
      TabOrder = 4
      OnKeyPress = edCNPJKeyPress
      Width = 124
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 7
      Top = 60
      Width = 171
      Height = 222
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Bandeira do cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 2
        Top = -1
        DataBinding.DataField = 'bandeira_cartao'
        DataBinding.DataSource = dsCadastro
        Properties.Items = <
          item
            Caption = 'Visa'
            Value = 'V'
          end
          item
            Caption = 'MasterCard'
            Value = 'M'
          end
          item
            Caption = 'American Express'
            Value = 'A'
          end
          item
            Caption = 'Sorocred'
            Value = 'S'
          end
          item
            Caption = 'DinersClub'
            Value = 'D'
          end
          item
            Caption = 'Elo'
            Value = 'E'
          end
          item
            Caption = 'Hipercard'
            Value = 'H'
          end
          item
            Caption = 'Aura'
            Value = 'R'
          end
          item
            Caption = 'Cabal'
            Value = 'C'
          end
          item
            Caption = 'Outro'
            Value = 'O'
          end>
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 220
        Width = 162
      end
    end
    object cbIntegracao: TJvDBComboBox
      Left = 190
      Top = 130
      Width = 215
      Height = 24
      DataField = 'tipo_integracao'
      DataSource = dsCadastro
      Items.Strings = (
        '1-Pagamento integrado'
        '2-Pagamento n'#227'o integrado')
      TabOrder = 3
      Values.Strings = (
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 362
    Width = 543
    ExplicitTop = 362
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
  inherited dsCadastro: TDataSource
    Left = 352
    Top = 0
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO formapgto'
      '  (for_001, emp_001, for_002, usu_001_1, usu_001_2, '
      '   dat_001_1, dat_001_2, bandeira_cartao, sfi_codigo, b_fiado,'
      
        '   sit_001,id_conta, b_devolucao, codigo_ecf, b_tef, taxa_cartao' +
        ', prazo_cartao, utiliza_controle_cartao, id_contacorrente, emite' +
        '_fiscal, tipo_fiscal, cnpjCred, tipo_integracao)'
      'VALUES'
      '  (:for_001, :emp_001, :for_002, :usu_001_1, :usu_001_2, '
      
        '   :dat_001_1, :dat_001_2, :bandeira_cartao, :sfi_codigo, :b_fia' +
        'do,'
      
        '   :sit_001,:id_conta, :b_devolucao, :codigo_ecf, :b_tef, :taxa_' +
        'cartao, :prazo_cartao, :utiliza_controle_cartao,:id_contacorrent' +
        'e, :emite_fiscal, :tipo_fiscal, :cnpjCred, :tipo_integracao)')
    SQLDelete.Strings = (
      'DELETE FROM formapgto'
      'WHERE'
      '  for_001 = :Old_for_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE formapgto'
      'SET'
      
        '  for_001 = :for_001, emp_001 = :emp_001, for_002 = :for_002, us' +
        'u_001_1 = :usu_001_1, '
      
        '  usu_001_2 = :usu_001_2, dat_001_1 = :dat_001_1, dat_001_2 = :d' +
        'at_001_2, '
      
        '  bandeira_cartao = :bandeira_cartao, sfi_codigo = :sfi_codigo, ' +
        'b_fiado = :b_fiado,'
      
        '  sit_001 = :sit_001, id_conta = :id_conta, b_devolucao = :b_dev' +
        'olucao, codigo_ecf = :codigo_ecf, b_tef = :b_tef, taxa_cartao =:' +
        'taxa_cartao, prazo_cartao =:prazo_cartao,'
      
        '  utiliza_controle_cartao =:utiliza_controle_cartao,id_contacorr' +
        'ente=:id_contacorrente, emite_fiscal=:emite_fiscal, tipo_fiscal=' +
        ':tipo_fiscal, cnpjCred=:cnpjCred,'
      '  tipo_integracao = :tipo_integracao'
      ' '
      'WHERE'
      '  for_001 = :Old_for_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM formapgto'
      'WHERE'
      '  for_001 = :Old_for_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT for_001, emp_001, for_002, usu_001_1, usu_001_2, dat_001_' +
        '1, dat_001_2, bandeira_cartao, sfi_codigo, b_fiado, b_tef'
      'FROM formapgto'
      'WHERE'
      '  for_001 = :for_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM formapgto'
      ''
      ') t')
    SQL.Strings = (
      'SELECT for_001,'
      '       emp_001,'
      '       for_002,'
      '       DAT_001_1,'
      '       DAT_001_2,'
      '       USU_001_1,'
      '       USU_001_2,'
      '       bandeira_cartao,'
      '       CAST(FN_SITUACOES(SIT_001) AS VARCHAR(40)) AS SITUACAO,'
      '       sfi_codigo,'
      '       b_fiado,'
      '       SIT_001,'
      '       id_conta,'
      '       b_devolucao,'
      '       codigo_ecf,'
      '       b_tef,'
      '       taxa_cartao,'
      '       prazo_cartao,'
      '       utiliza_controle_cartao,'
      '       id_contacorrente,'
      '       emite_fiscal,'
      '       tipo_fiscal, '
      '       cnpjCred,'
      '       tipo_integracao'
      ''
      'FROM FormaPgto '
      'WHERE emp_001 = :id_empresa'
      'and   for_001 = :for_001 ')
    AfterOpen = qrCadastroAfterOpen
    AfterScroll = qrCadastroAfterScroll
    OnNewRecord = qrCadastroNewRecord
    Left = 144
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'for_001'
        Value = nil
      end>
    object qrCadastrofor_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'for_001'
      Required = True
    end
    object qrCadastroemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrCadastrofor_002: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'for_002'
      Required = True
      Size = 40
    end
    object qrCadastrodat_001_1: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dat_001_1'
    end
    object qrCadastrodat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrCadastrousu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrCadastrousu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrCadastrobandeira_cartao: TWideStringField
      FieldName = 'bandeira_cartao'
      FixedChar = True
      Size = 1
    end
    object qrCadastrosituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 40
    end
    object qrCadastrosfi_codigo: TIntegerField
      DisplayLabel = 'Tipo de forma de pagamento (SAT)'
      FieldName = 'sfi_codigo'
      Required = True
    end
    object qrCadastrob_fiado: TBooleanField
      DisplayLabel = 'Fiado'
      FieldName = 'b_fiado'
      Required = True
      OnChange = qrCadastrob_fiadoChange
    end
    object qrCadastrosit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrCadastroid_conta: TIntegerField
      FieldName = 'id_conta'
      OnChange = qrCadastroid_contaChange
    end
    object qrCadastrob_devolucao: TBooleanField
      FieldName = 'b_devolucao'
      Required = True
    end
    object qrCadastrocodigo_ecf: TIntegerField
      DisplayLabel = 'C'#243'digo ECF'
      FieldName = 'codigo_ecf'
      Required = True
    end
    object qrCadastrob_tef: TBooleanField
      FieldName = 'b_tef'
      Required = True
    end
    object qrCadastrotaxa_cartao: TFloatField
      FieldName = 'taxa_cartao'
      DisplayFormat = '0.00'
      MaxValue = 99.000000000000000000
      MinValue = 1.000000000000000000
    end
    object qrCadastroprazo_cartao: TIntegerField
      FieldName = 'prazo_cartao'
      MaxValue = 100
      MinValue = 1
    end
    object qrCadastroutiliza_controle_cartao: TBooleanField
      FieldName = 'utiliza_controle_cartao'
      Required = True
    end
    object qrCadastroid_contacorrente: TIntegerField
      FieldName = 'id_contacorrente'
    end
    object qrCadastroemite_fiscal: TBooleanField
      FieldName = 'emite_fiscal'
      Required = True
    end
    object qrCadastrotipo_fiscal: TIntegerField
      FieldName = 'tipo_fiscal'
      Required = True
    end
    object qrCadastrocnpjcred: TWideStringField
      FieldName = 'cnpjcred'
      Size = 14
    end
    object qrCadastrotipo_integracao: TIntegerField
      FieldName = 'tipo_integracao'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 280
    Top = 0
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 208
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
    object acBuscaConta: TAction
      Caption = 'acBuscaConta'
      ImageIndex = 0
      OnExecute = acBuscaContaExecute
    end
    object acBuscaContabancaria: TAction
      Caption = 'acBuscaContabancaria'
      ImageIndex = 0
      OnExecute = acBuscaContabancariaExecute
    end
  end
  object qraux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 523
    Top = 4
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 440
  end
end
