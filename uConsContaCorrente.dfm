inherited frmConsContaCorrente: TfrmConsContaCorrente
  Caption = 'Conta Corrente'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_contacorrente: TcxGridDBColumn
          DataBinding.FieldName = 'id_contacorrente'
          Width = 64
        end
        object cxGrid1DBTableView1agencia: TcxGridDBColumn
          DataBinding.FieldName = 'agencia'
          Width = 86
        end
        object cxGrid1DBTableView1conta: TcxGridDBColumn
          DataBinding.FieldName = 'conta'
          Width = 113
        end
        object cxGrid1DBTableView1banco: TcxGridDBColumn
          DataBinding.FieldName = 'banco'
          Width = 141
        end
        object cxGrid1DBTableView1saldo: TcxGridDBColumn
          DataBinding.FieldName = 'saldo'
          Width = 125
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Width = 139
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    inherited btNovo: TAdvGlowButton
      OnClick = btNovoClick
      Appearance.BorderColor = clNavy
    end
    inherited btAbrirRegistro: TAdvGlowButton
      OnClick = btAbrirRegistroClick
      Appearance.BorderColor = clNavy
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'select '
      'id_contacorrente, '
      'agencia, '
      'conta, '
      'banco , '
      'saldo, '
      'cast(fn_situacoes(id_situacao) as varchar(100)) as status'
      'from contacorrente')
    object qrConsultaid_contacorrente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_contacorrente'
    end
    object qrConsultaagencia: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
      Required = True
    end
    object qrConsultaconta: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
      Required = True
    end
    object qrConsultabanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
      Required = True
    end
    object qrConsultasaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      Required = True
      currency = True
    end
    object qrConsultastatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      ReadOnly = True
      Size = 100
    end
  end
end
