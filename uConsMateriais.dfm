inherited frmConsMateriais: TfrmConsMateriais
  Caption = 'Produtos'
  ClientHeight = 397
  Visible = False
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grade: TcxGrid
    Height = 359
    ExplicitHeight = 359
    inherited GradeConsulta: TcxGridDBTableView
      DataController.KeyFieldNames = 'mat_001'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'vlrestoque'
          Column = GradeConsultavlrestoque
        end>
      inherited GradeConsultaMarcar: TcxGridDBColumn
        IsCaptionAssigned = True
      end
      object GradeConsultamat_001: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'mat_001'
      end
      object GradeConsultamat_003: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'mat_003'
        Width = 300
      end
      object GradeConsultamat_004: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'mat_004'
        Width = 100
      end
      object GradeConsultamat_005: TcxGridDBColumn
        Caption = 'NCM'
        DataBinding.FieldName = 'mat_005'
        Width = 65
      end
      object GradeConsultamat_012: TcxGridDBColumn
        Caption = 'Valor de Custo'
        DataBinding.FieldName = 'mat_012'
        Width = 100
      end
      object GradeConsultamat_018: TcxGridDBColumn
        Caption = 'Lucro (%)'
        DataBinding.FieldName = 'mat_018'
        Width = 100
      end
      object GradeConsultamat_008: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'mat_008'
        Width = 100
      end
      object GradeConsultamtp_002: TcxGridDBColumn
        Caption = 'Grupo'
        DataBinding.FieldName = 'mtp_002'
        Width = 100
      end
      object GradeConsultauni_002: TcxGridDBColumn
        Caption = 'Unidade'
        DataBinding.FieldName = 'uni_002'
        Width = 80
      end
      object GradeConsultamar_002: TcxGridDBColumn
        Caption = 'Marca'
        DataBinding.FieldName = 'mar_002'
        Width = 150
      end
      object GradeConsultagar_002: TcxGridDBColumn
        Caption = 'Garantia'
        DataBinding.FieldName = 'gar_002'
        Width = 150
      end
      object GradeConsultaval_002: TcxGridDBColumn
        Caption = 'Validade'
        DataBinding.FieldName = 'val_002'
        Width = 150
      end
      object GradeConsultamat_009: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'mat_009'
        Width = 100
      end
      object GradeConsultadat_001_3: TcxGridDBColumn
        DataBinding.FieldName = 'dat_001_3'
        Visible = False
        VisibleForCustomization = False
      end
      object GradeConsultasit_001: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'sit_001'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Images = frmMenu.imgSituacao
        Properties.Items = <
          item
            Description = 'ATIVO(A)'
            ImageIndex = 3
            Value = 4
          end
          item
            Description = 'INATIVO(A)'
            ImageIndex = 4
            Value = 3
          end>
        Width = 100
      end
      object GradeConsultacat_002: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'cat_002'
        Width = 150
      end
      object GradeConsultamat_014: TcxGridDBColumn
        Caption = 'Est. M'#237'nimo'
        DataBinding.FieldName = 'mat_014'
        Width = 100
      end
      object GradeConsultamat_015: TcxGridDBColumn
        Caption = 'Est. M'#225'ximo'
        DataBinding.FieldName = 'mat_015'
        Width = 100
      end
      object GradeConsultaestoque: TcxGridDBColumn
        Caption = 'Estoque'
        DataBinding.FieldName = 'estoque'
        Width = 100
      end
      object GradeConsultareserva: TcxGridDBColumn
        Caption = 'Reserva'
        DataBinding.FieldName = 'reserva'
        Width = 100
      end
      object GradeConsultadisponivel: TcxGridDBColumn
        Caption = 'Dispon'#237'vel'
        DataBinding.FieldName = 'disponivel'
        Width = 100
      end
      object GradeConsultamat_020: TcxGridDBColumn
        Caption = 'ICMS(%)'
        DataBinding.FieldName = 'mat_020'
      end
      object GradeConsultavlrestoque: TcxGridDBColumn
        Caption = 'Valor Estoque'
        DataBinding.FieldName = 'vlrestoque'
        Width = 98
      end
      object GradeConsultamat_021: TcxGridDBColumn
        Caption = 'Impressora'
        DataBinding.FieldName = 'mat_021'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Images = frmMenu.imgSituacao
        Properties.Items = <
          item
            Description = 'Nenhum'
            Value = 0
          end
          item
            Description = 'Balc'#227'o'
            Value = 1
          end
          item
            Description = 'Cozinha 1'
            Value = 2
          end
          item
            Description = 'Cozinha 2'
            Value = 3
          end>
        Width = 75
      end
    end
  end
  inherited CoolBar1: TCoolBar
    inherited pnPadrao: TPanel
      inherited tBarPadrao: TToolBar
        object Button1: TButton
          Left = 435
          Top = 0
          Width = 78
          Height = 34
          Caption = 'Button1'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 513
          Top = 0
          Width = 75
          Height = 34
          Caption = 'Button2'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
  end
  inherited ActionList1: TActionList
    object act_Etiqueta: TAction
      Category = 'Impirmir'
      Caption = 'Etiqueta'
      ImageIndex = 48
      OnExecute = act_EtiquetaExecute
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'SELECT MAT.MAT_001,'
      '       MAT.EMP_001,'
      '       MAT.MAT_002,'
      '       MAT.MAT_003,'
      '       UNI.UNI_002,'
      '       MAT.MAT_004,'
      '       MAT.MAT_005,'
      '       MAT.MAT_006,'
      '       MAT.DAT_001_3,'
      '       (CASE MAT.MAT_009'
      '          WHEN 0 '
      '             THEN '#39'MATERIAL'#39
      '          WHEN 1'
      '             THEN '#39'SERVI'#199'O'#39
      '       END) AS MAT_009,'
      '       MTP.MTP_002,'
      '       MAT.MAT_008,'
      '       MAT.MAT_012,'
      '       MAT.MAT_014,'
      '       MAT.MAT_015,'
      '       MAT.SIT_001,'
      '       MAT.MAR_001,'
      '       MAR.MAR_002,'
      '       MAT.GAR_001,'
      '       GAR.GAR_002,'
      '       MAT.VAL_001,'
      '       VAL.VAL_002,'
      '       MAT.CAT_001,'
      '       CAT.CAT_002,'
      '       MAT.MAT_018,'
      '       MAT.MAT_020,'
      '       MAT.MAT_021,'
      '       (CASE MAT.MAT_016'
      '          WHEN 0'
      '            THEN (SELECT COALESCE(SUM(COM.COM_003), 0.00)'
      '                  FROM COMPOSICAO COM'
      '                  WHERE COM.EMP_001 = MAT.EMP_001'
      '                  AND   COM.MAT_001 = MAT.MAT_001)'
      '          ELSE'
      '            MAT.MAT_016'
      '       END) AS ESTOQUE,'
      '       (CASE MAT.MAT_017'
      '          WHEN 0'
      '            THEN (SELECT COALESCE(SUM(COM.COM_004), 0.00)'
      '                  FROM COMPOSICAO COM'
      '                  WHERE COM.EMP_001 = MAT.EMP_001'
      '                  AND   COM.MAT_001 = MAT.MAT_001)'
      '          ELSE'
      '            MAT.MAT_017'
      '       END) AS RESERVA'
      ''
      'FROM MATERIAIS MAT'
      
        'LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND ' +
        '(UNI.UNI_001 = MAT.UNI_001)'
      
        'LEFT OUTER JOIN MATERIAIS_TIPOS MTP ON (MTP.EMP_001 = MAT.EMP_00' +
        '1) AND (MTP.MTP_001 = MAT.MTP_001)'
      'LEFT OUTER JOIN MARCA MAR ON (MAR.MAR_001 = MAT.MAR_001)'
      
        'LEFT OUTER JOIN GARANTIA GAR ON (GAR.EMP_001 = MAT.EMP_001) AND ' +
        '(GAR.GAR_001 = MAT.GAR_001)'
      
        'LEFT OUTER JOIN VALIDADE VAL ON (VAL.EMP_001 = MAT.EMP_001) AND ' +
        '(VAL.VAL_001 = MAT.VAL_001)'
      
        'LEFT OUTER JOIN CATEGORIA CAT ON (CAT.EMP_001 = MAT.EMP_001) AND' +
        ' (CAT.CAT_001 = MAT.CAT_001)'
      ''
      ''
      'WHERE MAT.EMP_001 = :EMP')
    OnCalcFields = qrConsultaCalcFields
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end>
    object qrConsultamat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultamat_002: TWideStringField
      FieldName = 'mat_002'
      Size = 15
    end
    object qrConsultamat_003: TWideStringField
      FieldName = 'mat_003'
      Required = True
      Size = 50
    end
    object qrConsultauni_002: TWideStringField
      FieldName = 'uni_002'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qrConsultamat_004: TWideStringField
      FieldName = 'mat_004'
      Size = 50
    end
    object qrConsultamat_005: TWideStringField
      FieldName = 'mat_005'
      Size = 8
    end
    object qrConsultamat_006: TFloatField
      FieldName = 'mat_006'
    end
    object qrConsultadat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
    object qrConsultamat_009: TWideMemoField
      FieldName = 'mat_009'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrConsultamtp_002: TWideStringField
      FieldName = 'mtp_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultamat_008: TFloatField
      FieldName = 'mat_008'
      Required = True
    end
    object qrConsultamat_012: TFloatField
      FieldName = 'mat_012'
    end
    object qrConsultasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrConsultamar_001: TIntegerField
      FieldName = 'mar_001'
    end
    object qrConsultamar_002: TWideStringField
      FieldName = 'mar_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultagar_001: TIntegerField
      FieldName = 'gar_001'
    end
    object qrConsultagar_002: TWideStringField
      FieldName = 'gar_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrConsultaval_001: TIntegerField
      FieldName = 'val_001'
    end
    object qrConsultaval_002: TWideStringField
      FieldName = 'val_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrConsultacat_001: TIntegerField
      FieldName = 'cat_001'
    end
    object qrConsultacat_002: TWideStringField
      FieldName = 'cat_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultamat_014: TFloatField
      FieldName = 'mat_014'
    end
    object qrConsultamat_015: TFloatField
      FieldName = 'mat_015'
    end
    object qrConsultaestoque: TFloatField
      FieldName = 'estoque'
    end
    object qrConsultareserva: TFloatField
      FieldName = 'reserva'
    end
    object qrConsultadisponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'disponivel'
      Calculated = True
    end
    object qrConsultamat_018: TFloatField
      FieldName = 'mat_018'
    end
    object qrConsultamat_020: TFloatField
      FieldName = 'mat_020'
    end
    object qrConsultavlrestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vlrestoque'
      Calculated = True
    end
    object qrConsultamat_021: TIntegerField
      FieldName = 'mat_021'
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
  end
  inherited GradePrint: TdxComponentPrinter
    inherited GradePrintLink: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited popImpressao: TPopupMenu
    object Etiqueta1: TMenuItem
      Action = act_Etiqueta
    end
  end
end
