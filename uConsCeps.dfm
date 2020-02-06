inherited frmConsCeps: TfrmConsCeps
  Caption = 'CEPs'
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grade: TcxGrid
    ExplicitLeft = 0
    ExplicitTop = 38
    inherited GradeConsulta: TcxGridDBTableView
      DataController.KeyFieldNames = 'cep_001'
      inherited GradeConsultaMarcar: TcxGridDBColumn
        IsCaptionAssigned = True
      end
      object GradeConsultacep_001: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'cep_001'
      end
      object GradeConsultacep_002: TcxGridDBColumn
        Caption = 'CEP'
        DataBinding.FieldName = 'cep_002'
      end
      object GradeConsultacep_003: TcxGridDBColumn
        Caption = 'Bairro'
        DataBinding.FieldName = 'cep_003'
      end
      object GradeConsultacep_004: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'cep_004'
      end
      object GradeConsultacid_002: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'cid_002'
      end
      object GradeConsultaest_003: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'est_003'
        Width = 39
      end
      object GradeConsultapai_002: TcxGridDBColumn
        Caption = 'Pa'#237's'
        DataBinding.FieldName = 'pai_002'
      end
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'SELECT CEP.CEP_001,'
      '       CEP.CEP_002,'
      '       CEP.CEP_003,'
      '       CEP.CEP_004,'
      '       CEP.CID_001,'
      '       CID.CID_002,'
      '       EST.EST_003,'
      '       PAI.PAI_002'
      ''
      'FROM CEPS CEP'
      'LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001)'
      'LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001)'
      'LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)')
    object qrConsultacep_001: TIntegerField
      FieldName = 'cep_001'
      Required = True
    end
    object qrConsultacep_002: TWideStringField
      FieldName = 'cep_002'
      Required = True
      Size = 9
    end
    object qrConsultacep_003: TWideStringField
      FieldName = 'cep_003'
      Required = True
      Size = 50
    end
    object qrConsultacep_004: TWideStringField
      FieldName = 'cep_004'
      Required = True
      Size = 80
    end
    object qrConsultacid_002: TWideStringField
      FieldName = 'cid_002'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrConsultacid_001: TIntegerField
      FieldName = 'cid_001'
      Required = True
    end
    object qrConsultaest_003: TWideStringField
      FieldName = 'est_003'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object qrConsultapai_002: TWideStringField
      FieldName = 'pai_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
  inherited GradePrint: TdxComponentPrinter
    inherited GradePrintLink: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
