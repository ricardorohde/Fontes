inherited frmConsOpcionais: TfrmConsOpcionais
  Caption = 'Consulta de Opcionais'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_opcional: TcxGridDBColumn
          DataBinding.FieldName = 'id_opcional'
          Width = 86
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 360
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Width = 91
        end
        object cxGrid1DBTableView1staus_desc: TcxGridDBColumn
          DataBinding.FieldName = 'staus_desc'
          Width = 131
        end
      end
    end
    inherited btPesquisar: TAdvGlowButton
      Appearance.BorderColor = clNavy
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
      'select id_opcional, descricao, valor, '
      'cast(fn_situacoes(id_situacao) as varchar(200)) as staus_desc '
      'from opcional')
    object qrConsultaid_opcional: TIntegerField
      FieldName = 'id_opcional'
    end
    object qrConsultadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qrConsultavalor: TFloatField
      FieldName = 'valor'
    end
    object qrConsultastaus_desc: TWideStringField
      FieldName = 'staus_desc'
      ReadOnly = True
      Size = 200
    end
  end
end
