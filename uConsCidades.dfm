inherited frmConsCidades: TfrmConsCidades
  Caption = 'Cidades'
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grade: TcxGrid
    ExplicitLeft = 0
    ExplicitTop = 38
    inherited GradeConsulta: TcxGridDBTableView
      DataController.KeyFieldNames = 'cid_001'
      inherited GradeConsultaMarcar: TcxGridDBColumn
        IsCaptionAssigned = True
      end
      object GradeConsultacid_001: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'cid_001'
      end
      object GradeConsultacid_002: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'cid_002'
      end
      object GradeConsultacid_003: TcxGridDBColumn
        Caption = 'C'#243'digo do Munic'#237'pio'
        DataBinding.FieldName = 'cid_003'
        Width = 102
      end
      object GradeConsultaest_003: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'est_003'
        Width = 41
      end
      object GradeConsultapai_002: TcxGridDBColumn
        Caption = 'Pa'#237's'
        DataBinding.FieldName = 'pai_002'
      end
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'SELECT CID.CID_001,'
      '       CID.CID_002,'
      '       CID.CID_003,'
      '       EST.EST_003,'
      '       PAI.PAI_002'
      ''
      'FROM CIDADES CID '
      'LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001)'
      'LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)')
    object qrConsultacid_001: TIntegerField
      FieldName = 'cid_001'
      Required = True
    end
    object qrConsultacid_002: TWideStringField
      FieldName = 'cid_002'
      Required = True
      Size = 60
    end
    object qrConsultacid_003: TWideStringField
      FieldName = 'cid_003'
      Size = 10
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
