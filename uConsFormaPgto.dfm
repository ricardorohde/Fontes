inherited frmConsFormaPgto: TfrmConsFormaPgto
  Caption = 'Formas de Pagamento'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1for_001: TcxGridDBColumn
          DataBinding.FieldName = 'for_001'
          Width = 72
        end
        object cxGrid1DBTableView1for_002: TcxGridDBColumn
          DataBinding.FieldName = 'for_002'
          Width = 457
        end
        object cxGrid1DBTableView1desc_status: TcxGridDBColumn
          DataBinding.FieldName = 'desc_status'
          Width = 139
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
      
        'select for_001, for_002, cast(fn_situacoes(sit_001)  as varchar(' +
        '100)) as desc_status from formapgto')
    object qrConsultafor_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'for_001'
      Required = True
    end
    object qrConsultafor_002: TWideStringField
      DisplayLabel = 'Forma de pagamento'
      FieldName = 'for_002'
      Required = True
      Size = 40
    end
    object qrConsultadesc_status: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
  end
end
