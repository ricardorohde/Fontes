inherited frmConsCondicaoPagamento: TfrmConsCondicaoPagamento
  Caption = 'Condi'#231#227'o de Pagamento'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_condicaopagamento: TcxGridDBColumn
          DataBinding.FieldName = 'id_condicaopagamento'
          Width = 53
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 380
        end
        object cxGrid1DBTableView1numero_parcelas: TcxGridDBColumn
          DataBinding.FieldName = 'numero_parcelas'
          Width = 118
        end
        object cxGrid1DBTableView1desc_situacao: TcxGridDBColumn
          DataBinding.FieldName = 'desc_situacao'
          Width = 117
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
      'id_condicaopagamento, '
      'descricao, '
      'numero_parcelas, '
      'fn_situacoes(id_situacao) as desc_situacao  '
      'from condicaopagamento')
    object qrConsultaid_condicaopagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_condicaopagamento'
      Required = True
    end
    object qrConsultadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrConsultanumero_parcelas: TIntegerField
      DisplayLabel = 'Nro. Parcelas'
      FieldName = 'numero_parcelas'
      Required = True
    end
    object qrConsultadesc_situacao: TWideMemoField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'desc_situacao'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
end
