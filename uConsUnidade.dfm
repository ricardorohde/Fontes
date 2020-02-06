inherited frmConsUnidade: TfrmConsUnidade
  Caption = 'Unidades de Medida'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1uni_001: TcxGridDBColumn
          DataBinding.FieldName = 'uni_001'
          Width = 118
        end
        object cxGrid1DBTableView1uni_002: TcxGridDBColumn
          DataBinding.FieldName = 'uni_002'
          Width = 461
        end
        object cxGrid1DBTableView1uni_003: TcxGridDBColumn
          DataBinding.FieldName = 'uni_003'
          Width = 89
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
      'select uni_001,uni_002,uni_003 from unidades')
    object qrConsultauni_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'uni_001'
      Required = True
    end
    object qrConsultauni_002: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'uni_002'
      Required = True
      Size = 15
    end
    object qrConsultauni_003: TWideStringField
      DisplayLabel = 'Sigla'
      FieldName = 'uni_003'
      Required = True
      Size = 3
    end
  end
end
