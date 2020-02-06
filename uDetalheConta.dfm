inherited frmDetalheConta: TfrmDetalheConta
  Caption = 'Cadastro de Contas'
  ClientHeight = 188
  ClientWidth = 561
  ExplicitWidth = 567
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 561
    Height = 139
    ExplicitWidth = 561
    ExplicitHeight = 139
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 77
      Top = 10
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 32
      DataBinding.DataField = 'id_conta'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 55
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 77
      Top = 32
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 460
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 16
      Top = 72
      Caption = 'Utiliza em contas a Pagar'
      DataBinding.DataField = 'b_pagar'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 16
      Top = 104
      Caption = 'Utiliza em contas a Receber'
      DataBinding.DataField = 'b_receber'
      DataBinding.DataSource = dsCadastro
      TabOrder = 3
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 139
    Width = 561
    ExplicitTop = 139
    ExplicitWidth = 561
    inherited btCancelar: TAdvGlowButton
      Left = 454
      ExplicitLeft = 454
    end
    inherited btSalvar: TAdvGlowButton
      Left = 347
      ExplicitLeft = 347
    end
    inherited btExcluir: TAdvGlowButton
      Left = 240
      ExplicitLeft = 240
    end
    inherited btEditar: TAdvGlowButton
      Left = 133
      ExplicitLeft = 133
    end
    inherited btNovo: TAdvGlowButton
      Left = 26
      ExplicitLeft = 26
    end
  end
  inherited dsCadastro: TDataSource
    Left = 248
    Top = 24
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO conta'
      '  (descricao, b_pagar, b_receber, id_empresa, id_situacao)'
      'VALUES'
      '  (:descricao, :b_pagar, :b_receber, :id_empresa, :id_situacao)')
    SQLDelete.Strings = (
      'DELETE FROM conta'
      'WHERE'
      '  id_conta = :Old_id_conta AND id_empresa = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE conta'
      'SET'
      
        '  id_conta = :id_conta, descricao = :descricao, b_pagar = :b_pag' +
        'ar, b_receber = :b_receber, '
      '  id_empresa = :id_empresa, id_situacao = :id_situacao'
      'WHERE'
      '  id_conta = :Old_id_conta AND id_empresa = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM conta'
      'WHERE'
      '  id_conta = :Old_id_conta AND id_empresa = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_conta, descricao, b_pagar, b_receber, id_empresa FROM ' +
        'conta'
      'WHERE'
      '  id_conta = :id_conta AND id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM conta'
      ''
      ') t')
    SQL.Strings = (
      'select '
      'id_conta, '
      'id_empresa, '
      'descricao, '
      'b_pagar, '
      'b_receber,'
      'id_situacao'
      'from conta'
      'where id_conta =:id_conta and id_empresa = :id_empresa')
    OnNewRecord = qrCadastroNewRecord
    Left = 360
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_conta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_conta: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_conta'
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrCadastrob_pagar: TBooleanField
      DisplayLabel = 'Utiliza em contas a Pagar'
      FieldName = 'b_pagar'
      Required = True
    end
    object qrCadastrob_receber: TBooleanField
      DisplayLabel = 'Utiliza em contas a Receber'
      FieldName = 'b_receber'
      Required = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 448
    Top = 40
  end
end
