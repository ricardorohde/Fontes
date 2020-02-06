inherited frmConsCidade: TfrmConsCidade
  Caption = 'Cidades'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1cid_001: TcxGridDBColumn
          DataBinding.FieldName = 'cid_001'
          Width = 71
        end
        object cxGrid1DBTableView1cid_002: TcxGridDBColumn
          DataBinding.FieldName = 'cid_002'
          Width = 448
        end
        object cxGrid1DBTableView1cid_003: TcxGridDBColumn
          DataBinding.FieldName = 'cid_003'
          Width = 99
        end
        object cxGrid1DBTableView1est_003: TcxGridDBColumn
          DataBinding.FieldName = 'est_003'
          Width = 50
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
      'select '
      'c.cid_001, '
      'c.cid_002, '
      'c.cid_003, '
      'e.est_003  '
      'from cidades c '
      'join estados e on c.est_001=e.est_001')
    object qrConsultacid_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cid_001'
      Required = True
    end
    object qrConsultacid_002: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_002'
      Required = True
      Size = 75
    end
    object qrConsultacid_003: TWideStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'cid_003'
      Size = 10
    end
    object qrConsultaest_003: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'est_003'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
  end
end
