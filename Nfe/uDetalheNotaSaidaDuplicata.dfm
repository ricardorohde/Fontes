inherited frmDetalheNotaSaidaDuplicata: TfrmDetalheNotaSaidaDuplicata
  Caption = 'Nota Fiscal de Sa'#237'da - Duplicata'
  ClientHeight = 113
  ClientWidth = 527
  ExplicitWidth = 533
  ExplicitHeight = 142
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 527
    Height = 64
    ExplicitWidth = 527
    ExplicitHeight = 64
    FullHeight = 200
    object Label1: TLabel
      Left = 136
      Top = 9
      Width = 101
      Height = 16
      Caption = 'N'#250'mero Duplicata'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 9
      Width = 26
      Height = 16
      Caption = 'Item'
      FocusControl = cxDBSpinEdit1
    end
    object Label3: TLabel
      Left = 263
      Top = 9
      Width = 97
      Height = 16
      Caption = 'Data Vencimento'
      FocusControl = cxDBDateEdit1
    end
    object Label4: TLabel
      Left = 390
      Top = 9
      Width = 30
      Height = 16
      Caption = 'Valor'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 136
      Top = 31
      DataBinding.DataField = 'numero_duplicata'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 31
      TabStop = False
      DataBinding.DataField = 'item'
      DataBinding.DataSource = dsCadastro
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 263
      Top = 31
      DataBinding.DataField = 'data_vencimento'
      DataBinding.DataSource = dsCadastro
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 2
      Width = 121
    end
    object edValor: TcxDBCurrencyEdit
      Left = 390
      Top = 31
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = dsCadastro
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 9999999.000000000000000000
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 3
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 64
    Width = 527
    ExplicitTop = 64
    ExplicitWidth = 527
    inherited btCancelar: TAdvGlowButton
      Left = 420
      Appearance.BorderColor = clNavy
      ExplicitLeft = 420
    end
    inherited btSalvar: TAdvGlowButton
      Left = 313
      Appearance.BorderColor = clNavy
      ExplicitLeft = 313
    end
    inherited btExcluir: TAdvGlowButton
      Left = 206
      Appearance.BorderColor = clNavy
      ExplicitLeft = 206
    end
    inherited btEditar: TAdvGlowButton
      Left = 99
      Appearance.BorderColor = clNavy
      ExplicitLeft = 99
    end
    inherited btNovo: TAdvGlowButton
      Left = 420
      Top = 50
      ExplicitLeft = 420
      ExplicitTop = 50
    end
  end
  inherited dsCadastro: TDataSource
    Left = 128
    Top = 64
  end
  inherited qrCadastro: TUniQuery
    SQL.Strings = (
      'select '
      'id_nota_saida, '
      'id_empresa, '
      'item, '
      'numero_duplicata, '
      'data_vencimento, '
      'id_situacao,'
      'valor'
      'from nota_saida_duplicata'
      
        'where id_nota_saida = :id_nota_saida  and id_empresa = :id_empre' +
        'sa  and item = :item')
    OnNewRecord = qrCadastroNewRecord
    Left = 32
    Top = 64
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
    object qrCadastronumero_duplicata: TWideStringField
      DisplayLabel = 'N'#250'mero Duplicata'
      FieldName = 'numero_duplicata'
      Required = True
      Size = 50
    end
    object qrCadastroitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrodata_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastrovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 80
    Top = 64
  end
end
