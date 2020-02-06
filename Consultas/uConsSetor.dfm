inherited frmConsSetor: TfrmConsSetor
  Caption = 'frmConsSetor'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_setor: TcxGridDBColumn
          DataBinding.FieldName = 'id_setor'
          Width = 60
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 472
        end
        object cxGrid1DBTableView1situacao: TcxGridDBColumn
          DataBinding.FieldName = 'situacao'
          Width = 136
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    inherited btNovo: TAdvGlowButton
      OnClick = btNovoClick
    end
    inherited btAbrirRegistro: TAdvGlowButton
      OnClick = btAbrirRegistroClick
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      
        'select id_setor, descricao, cast(fn_situacoes(id_situacao) as va' +
        'rchar(100)) as situacao  from setor_estoque')
    object qrConsultaid_setor: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_setor'
      Required = True
    end
    object qrConsultadescricao: TWideStringField
      DisplayLabel = 'Setor'
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrConsultasituacao: TWideStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      ReadOnly = True
      Size = 100
    end
  end
end
