inherited frmConsCategoria: TfrmConsCategoria
  Caption = 'Categoria'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1cat_001: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cat_001'
          Options.AutoWidthSizable = False
          Width = 89
        end
        object cxGrid1DBTableView1cat_002: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'cat_002'
          Width = 579
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
      'select cat_001,cat_002 from categoria')
    object qrConsultacat_001: TIntegerField
      FieldName = 'cat_001'
      Required = True
    end
    object qrConsultacat_002: TWideStringField
      FieldName = 'cat_002'
      Required = True
      Size = 40
    end
  end
end
