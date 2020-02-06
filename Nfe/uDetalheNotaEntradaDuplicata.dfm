inherited frmDetalheNotaEntradaDuplicata: TfrmDetalheNotaEntradaDuplicata
  Caption = 'Nota Fiscal de Entrada - Duplicata'
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
      TabOrder = 0
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
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 263
      Top = 31
      DataBinding.DataField = 'data_vencimento'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      Width = 121
    end
    object edValor: TcxDBCurrencyEdit
      Left = 390
      Top = 31
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = dsCadastro
      Properties.AssignedValues.MinValue = True
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
    Left = 72
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO nota_entrada_duplicata'
      
        '  (id_nota_entrada, id_empresa, item, numero_duplicata, data_ven' +
        'cimento, valor, id_situacao)'
      'VALUES'
      
        '  (:id_nota_entrada, :id_empresa, :item, :numero_duplicata, :dat' +
        'a_vencimento, :valor, :id_situacao)')
    SQLDelete.Strings = (
      'DELETE FROM nota_entrada_duplicata'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item')
    SQLUpdate.Strings = (
      'UPDATE nota_entrada_duplicata'
      'SET'
      
        '  id_nota_entrada = :id_nota_entrada, id_empresa = :id_empresa, ' +
        'item = :item, numero_duplicata = :numero_duplicata, data_vencime' +
        'nto = :data_vencimento, valor = :valor, id_situacao = :id_situac' +
        'ao'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item')
    SQLLock.Strings = (
      'SELECT * FROM nota_entrada_duplicata'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_entrada, id_empresa, item, numero_duplicata, data' +
        '_vencimento, valor, id_situacao FROM nota_entrada_duplicata'
      'WHERE'
      '  id_nota_entrada = :id_nota_entrada AND item = :item')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM nota_entrada_duplicata'
      ''
      ') t')
    SQL.Strings = (
      'select '
      'id_nota_entrada, '
      'id_empresa, '
      'item, '
      'numero_duplicata, '
      'data_vencimento, '
      'id_situacao,'
      'valor'
      'from nota_entrada_duplicata'
      
        'where id_nota_entrada = :id_nota_entrada  and id_empresa = :id_e' +
        'mpresa  and item = :item')
    OnNewRecord = qrCadastroNewRecord
    Left = 32
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_entrada'
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
    object qrCadastroid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
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
    object qrCadastronumero_duplicata: TWideStringField
      FieldName = 'numero_duplicata'
      Required = True
      Size = 50
    end
    object qrCadastrodata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastrovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 80
    Top = 64
  end
end
