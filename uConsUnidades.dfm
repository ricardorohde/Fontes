inherited frmConsUnidades: TfrmConsUnidades
  Caption = 'Unidades'
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grade: TcxGrid
    ExplicitLeft = 0
    ExplicitTop = 38
    inherited GradeConsulta: TcxGridDBTableView
      DataController.KeyFieldNames = 'uni_001'
      inherited GradeConsultaMarcar: TcxGridDBColumn
        IsCaptionAssigned = True
      end
      object GradeConsultauni_001: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'uni_001'
      end
      object GradeConsultauni_002: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'uni_002'
        Width = 184
      end
      object GradeConsultauni_003: TcxGridDBColumn
        Caption = 'Sigla'
        DataBinding.FieldName = 'uni_003'
        Width = 54
      end
      object GradeConsultadat_001_3: TcxGridDBColumn
        DataBinding.FieldName = 'dat_001_3'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'SELECT UNI.UNI_001,'
      '       UNI.EMP_001,'
      '       UNI.UNI_002,'
      '       UNI.DAT_001_3,'
      '       UNI.UNI_003'
      ''
      ' FROM UNIDADES UNI'
      ' WHERE UNI.EMP_001 = :EMP')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end>
    object qrConsultauni_001: TIntegerField
      FieldName = 'uni_001'
      Required = True
    end
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultauni_002: TWideStringField
      FieldName = 'uni_002'
      Required = True
      Size = 15
    end
    object qrConsultauni_003: TWideStringField
      FieldName = 'uni_003'
      Required = True
      Size = 3
    end
    object qrConsultadat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
  end
  inherited GradePrint: TdxComponentPrinter
    inherited GradePrintLink: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
