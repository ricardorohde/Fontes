inherited frmConsIBPT: TfrmConsIBPT
  Caption = 'NCM'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1ncm: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'ncm'
          Options.AutoWidthSizable = False
          Width = 104
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'DESCRI'#199#195'O'
          DataBinding.FieldName = 'descricao'
          Width = 547
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
      'select ibpt_001, ncm, descricao from ibpt')
    IndexFieldNames = 'ncm'
    object qrConsultaibpt_001: TIntegerField
      FieldName = 'ibpt_001'
      Required = True
    end
    object qrConsultancm: TWideStringField
      FieldName = 'ncm'
    end
    object qrConsultadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 500
    end
  end
end
