inherited frmDetalheFormaPgto: TfrmDetalheFormaPgto
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 298
  ClientWidth = 546
  ExplicitWidth = 552
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 546
    Height = 249
    ExplicitWidth = 552
    ExplicitHeight = 241
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 87
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 416
      Top = 8
      Width = 81
      Height = 16
      Caption = 'Data Cadastro'
      FocusControl = cxDBDateEdit1
    end
    object Label5: TLabel
      Left = 195
      Top = 66
      Width = 205
      Height = 16
      Caption = 'Tipo de forma de pagamento (SAT)'
    end
    object Label6: TLabel
      Left = 416
      Top = 66
      Width = 65
      Height = 16
      Caption = 'C'#243'digo ECF'
      FocusControl = cxDBSpinEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 30
      DataBinding.DataField = 'for_001'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 65
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 87
      Top = 30
      DataBinding.DataField = 'for_002'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 323
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 416
      Top = 30
      DataBinding.DataField = 'dat_001_1'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 124
    end
    object JvDBComboBox1: TJvDBComboBox
      Left = 195
      Top = 88
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
      TabOrder = 3
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
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 16
      Top = 60
      Width = 166
      Height = 175
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Bandeira do cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 11
        Top = 0
        DataBinding.DataField = 'bandeira_cartao'
        DataBinding.DataSource = dsCadastro
        Properties.Items = <
          item
            Caption = 'Master Card'
            Value = 'M'
          end
          item
            Caption = 'Visa'
            Value = 'V'
          end
          item
            Caption = 'American Express'
            Value = 'A'
          end
          item
            Caption = 'Outro'
            Value = 'O'
          end>
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 172
        Width = 162
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 195
      Top = 148
      Width = 345
      Height = 87
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 5
      object lbConta: TLabel
        Left = 86
        Top = 58
        Width = 43
        Height = 16
        Caption = 'lbConta'
      end
      object Label4: TLabel
        Left = 16
        Top = 32
        Width = 33
        Height = 16
        Caption = 'Conta'
      end
      object edCodConta: TcxDBButtonEdit
        Left = 15
        Top = 54
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
        Left = 11
        Top = 5
        Caption = 'Tipo Fiado'
        DataBinding.DataField = 'b_fiado'
        DataBinding.DataSource = dsCadastro
        TabOrder = 1
        OnClick = cxFiadoClick
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 206
      Top = 118
      Caption = 'Tipo Devolu'#231#227'o'
      DataBinding.DataField = 'b_devolucao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 6
      OnClick = cxFiadoClick
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 416
      Top = 88
      DataBinding.DataField = 'codigo_ecf'
      DataBinding.DataSource = dsCadastro
      TabOrder = 7
      Width = 124
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 249
    Width = 546
    ExplicitTop = 241
    ExplicitWidth = 552
    inherited btCancelar: TAdvGlowButton
      Left = 439
      ExplicitLeft = 439
    end
    inherited btSalvar: TAdvGlowButton
      Left = 332
      ExplicitLeft = 332
    end
    inherited btExcluir: TAdvGlowButton
      Left = 225
      ExplicitLeft = 225
    end
    inherited btEditar: TAdvGlowButton
      Left = 118
      ExplicitLeft = 118
    end
    inherited btNovo: TAdvGlowButton
      Left = 11
      ExplicitLeft = 11
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
      '   sit_001,id_conta, b_devolucao, codigo_ecf)'
      'VALUES'
      '  (:for_001, :emp_001, :for_002, :usu_001_1, :usu_001_2, '
      
        '   :dat_001_1, :dat_001_2, :bandeira_cartao, :sfi_codigo, :b_fia' +
        'do,'
      '   :sit_001,:id_conta, :b_devolucao, :codigo_ecf)')
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
        'olucao, codigo_ecf = :codigo_ecf'
      'WHERE'
      '  for_001 = :Old_for_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM formapgto'
      'WHERE'
      '  for_001 = :Old_for_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT for_001, emp_001, for_002, usu_001_1, usu_001_2, dat_001_' +
        '1, dat_001_2, bandeira_cartao, sfi_codigo, b_fiado FROM formapgt' +
        'o'
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
      '       codigo_ecf'
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
  end
end
