inherited frmConsTara: TfrmConsTara
  Caption = 'Tara'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1tar_001: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'tar_001'
          Options.AutoWidthSizable = False
          Width = 113
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          Width = 435
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
      'select tar_001, emp_001, descricao, peso, sit_001 from tara')
    object qrConsultatar_001: TIntegerField
      FieldName = 'tar_001'
      Required = True
    end
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultadescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
    end
    object qrConsultapeso: TFloatField
      FieldName = 'peso'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object qrConsultasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
  end
end
