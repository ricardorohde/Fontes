inherited frmConsConta: TfrmConsConta
  Caption = 'Contas'
  ClientHeight = 348
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Height = 299
    ExplicitHeight = 299
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      Height = 232
      ExplicitHeight = 232
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_conta: TcxGridDBColumn
          DataBinding.FieldName = 'id_conta'
          Width = 29
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 373
        end
        object cxGrid1DBTableView1b_pagar: TcxGridDBColumn
          DataBinding.FieldName = 'b_pagar'
          Width = 85
        end
        object cxGrid1DBTableView1b_receber: TcxGridDBColumn
          DataBinding.FieldName = 'b_receber'
          Width = 78
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Width = 103
        end
      end
    end
    inherited btPesquisar: TAdvGlowButton
      Appearance.BorderColor = clNavy
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 299
    ExplicitTop = 299
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
      
        'select id_conta, descricao, cast(case when b_pagar then '#39'SIM'#39' el' +
        'se '#39'N'#195'O'#39' end as varchar(3))as b_pagar, '
      
        'cast(case when b_receber then '#39'SIM'#39' else '#39'N'#195'O'#39' end as varchar(3)' +
        ') as b_receber,'
      'cast(fn_situacoes(id_situacao) as varchar(100)) as status'
      'from conta')
    object qrConsultaid_conta: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_conta'
    end
    object qrConsultadescricao: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrConsultab_pagar: TWideStringField
      DisplayLabel = 'C. Pagar'
      FieldName = 'b_pagar'
      ReadOnly = True
      Size = 3
    end
    object qrConsultab_receber: TWideStringField
      DisplayLabel = 'C. Receber'
      FieldName = 'b_receber'
      ReadOnly = True
      Size = 3
    end
    object qrConsultastatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      ReadOnly = True
      Size = 100
    end
  end
end
