inherited frmDetalheNotaSaidaPagamentos: TfrmDetalheNotaSaidaPagamentos
  Caption = 'Nota Fiscal de Sa'#237'da - Pagamentos'
  ClientHeight = 158
  ClientWidth = 554
  OnShow = FormShow
  ExplicitWidth = 560
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 554
    Height = 109
    ExplicitWidth = 554
    ExplicitHeight = 109
    FullHeight = 200
    object Label2: TLabel
      Left = 8
      Top = 9
      Width = 26
      Height = 16
      Caption = 'Item'
      FocusControl = cxDBSpinEdit1
    end
    object Label4: TLabel
      Left = 425
      Top = 9
      Width = 30
      Height = 16
      Caption = 'Valor'
    end
    object Label1: TLabel
      Left = 143
      Top = 9
      Width = 123
      Height = 16
      Caption = 'Forma de Pagamento'
      FocusControl = cxDBSpinEdit1
    end
    object lblAut: TLabel
      Left = 8
      Top = 58
      Width = 126
      Height = 16
      Caption = 'Autoriza'#231#227'o Opera'#231#227'o'
      FocusControl = edAut
      Visible = False
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 27
      TabStop = False
      DataBinding.DataField = 'item'
      DataBinding.DataSource = dsCadastro
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 126
    end
    object edValor: TcxDBCurrencyEdit
      Left = 425
      Top = 27
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = dsCadastro
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 9999999.000000000000000000
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 2
      OnKeyPress = edValorKeyPress
      Width = 121
    end
    object cbForma: TDBLookupComboBox
      Left = 143
      Top = 27
      Width = 276
      Height = 24
      DataField = 'id_forma'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'for_001'
      ListField = 'for_002'
      ListSource = dsListaFormapgto1
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
      OnClick = cbFormaClick
    end
    object edAut: TcxDBTextEdit
      Left = 8
      Top = 76
      DataBinding.DataField = 'autorizacao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 3
      Visible = False
      Width = 126
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 109
    Width = 554
    ExplicitTop = 109
    ExplicitWidth = 554
    inherited btCancelar: TAdvGlowButton
      Left = 447
      Appearance.BorderColor = clNavy
      ExplicitLeft = 447
    end
    inherited btSalvar: TAdvGlowButton
      Left = 340
      Appearance.BorderColor = clNavy
      ExplicitLeft = 340
    end
    inherited btExcluir: TAdvGlowButton
      Left = 233
      Appearance.BorderColor = clNavy
      ExplicitLeft = 233
    end
    inherited btEditar: TAdvGlowButton
      Left = 126
      Appearance.BorderColor = clNavy
      ExplicitLeft = 126
    end
    inherited btNovo: TAdvGlowButton
      Left = 19
      Appearance.BorderColor = clNavy
      ExplicitLeft = 19
    end
  end
  inherited dsCadastro: TDataSource
    Left = 48
  end
  inherited qrCadastro: TUniQuery
    SQL.Strings = (
      'select '
      'id_nota_saida, '
      'id_empresa, '
      'item, '
      'id_forma,'
      'valor,'
      'autorizacao'
      'from nota_saida_pagamentos'
      
        'where id_nota_saida = :id_nota_saida  and id_empresa = :id_empre' +
        'sa  and item = :item')
    OnNewRecord = qrCadastroNewRecord
    Left = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_saida'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item'
        Value = nil
      end>
    object qrCadastroid_nota_saida: TIntegerField
      FieldName = 'id_nota_saida'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrCadastroid_forma: TIntegerField
      FieldName = 'id_forma'
      Required = True
    end
    object qrCadastrovalor: TFloatField
      FieldName = 'valor'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object qrCadastroautorizacao: TWideStringField
      FieldName = 'autorizacao'
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 184
    Top = 8
  end
  object qrListaFormapgto1: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'for_001, '
      'for_002,'
      'cnpjCred,'
      'bandeira_cartao,'
      'sfi_codigo,'
      'tipo_integracao'
      'from formapgto'
      'where emp_001=:emp'
      'and sit_001=4'
      'and b_devolucao = false'
      'order by for_001')
    Left = 272
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrListaFormapgto1for_001: TIntegerField
      FieldName = 'for_001'
      Required = True
    end
    object qrListaFormapgto1for_002: TWideStringField
      FieldName = 'for_002'
      Required = True
      Size = 40
    end
    object qrListaFormapgto1cnpjcred: TWideStringField
      FieldName = 'cnpjcred'
      Size = 14
    end
    object qrListaFormapgto1bandeira_cartao: TWideStringField
      FieldName = 'bandeira_cartao'
      FixedChar = True
      Size = 1
    end
    object qrListaFormapgto1sfi_codigo: TIntegerField
      FieldName = 'sfi_codigo'
    end
    object qrListaFormapgto1tipo_integracao: TIntegerField
      FieldName = 'tipo_integracao'
    end
  end
  object dsListaFormapgto1: TDataSource
    AutoEdit = False
    DataSet = qrListaFormapgto1
    Left = 354
  end
end
