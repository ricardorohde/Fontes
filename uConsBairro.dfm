inherited frmConsBairro: TfrmConsBairro
  Caption = 'Bairro'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1bai_001: TcxGridDBColumn
          DataBinding.FieldName = 'bai_001'
          Width = 80
        end
        object cxGrid1DBTableView1bai_002: TcxGridDBColumn
          DataBinding.FieldName = 'bai_002'
          Width = 355
        end
        object cxGrid1DBTableView1bai_003: TcxGridDBColumn
          DataBinding.FieldName = 'bai_003'
          Width = 79
        end
        object cxGrid1DBTableView1situacao_desc: TcxGridDBColumn
          DataBinding.FieldName = 'situacao_desc'
          Width = 154
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
      
        'select bai_001, emp_001, bai_002, bai_003,sit_001, fn_situacoes(' +
        'sit_001) as situacao_desc from bairro')
    object qrConsultabai_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bai_001'
      Required = True
    end
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultabai_002: TWideStringField
      FieldName = 'bai_002'
      Required = True
      Size = 60
    end
    object qrConsultabai_003: TFloatField
      FieldName = 'bai_003'
    end
    object qrConsultasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrConsultasituacao_desc: TWideMemoField
      FieldName = 'situacao_desc'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
end
