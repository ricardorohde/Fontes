inherited frmConsVendas: TfrmConsVendas
  Caption = 'Vendas Mesas'
  ClientHeight = 379
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grade: TcxGrid
    Height = 341
    ExplicitHeight = 341
    inherited GradeConsulta: TcxGridDBTableView
      DataController.KeyFieldNames = 'ven_001'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          Column = GradeConsultaven_009
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = GradeConsultavlrproven
        end>
      inherited GradeConsultaMarcar: TcxGridDBColumn
        IsCaptionAssigned = True
      end
      object GradeConsultaseq_001: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'ven_029'
      end
      object GradeConsultames_002: TcxGridDBColumn
        DataBinding.FieldName = 'mes_002'
        Width = 137
      end
      object GradeConsultaven_004: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'ven_004'
        Width = 81
      end
      object GradeConsultasit_001: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'sit_001'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Images = frmMenu.imgSituacao
        Properties.Items = <
          item
            Description = 'PENDENTE'
            ImageIndex = 0
            Value = 8
          end
          item
            Description = 'ENCERRADO(A)'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'CANCELADO(A)'
            ImageIndex = 4
            Value = 2
          end
          item
            Description = 'AGUARDANDO FATURAMENTO'
            ImageIndex = 6
            Value = 20
          end
          item
            Description = 'AUTORIZADO(A)'
            ImageIndex = 5
            Value = 9
          end
          item
            Description = 'IMPRESSO'
            ImageIndex = 2
            Value = 21
          end>
        Width = 115
      end
      object GradeConsultaven_009: TcxGridDBColumn
        Caption = 'Total da Venda'
        DataBinding.FieldName = 'ven_009'
        Width = 100
      end
      object GradeConsultavlrproven: TcxGridDBColumn
        Caption = 'Total dos Prod.'
        DataBinding.FieldName = 'vlrproven'
        Width = 100
      end
      object GradeConsultaven_006: TcxGridDBColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'ven_027'
        Width = 200
      end
      object GradeConsultaven_001: TcxGridDBColumn
        DataBinding.FieldName = 'ven_001'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  inherited CoolBar1: TCoolBar
    inherited pnPadrao: TPanel
      inherited tBarPadrao: TToolBar
        object ToolButton2: TToolButton
          Left = 435
          Top = 0
          Width = 8
          Caption = 'ToolButton2'
          ImageIndex = 62
          Style = tbsSeparator
        end
        object btEncerrar: TToolButton
          Left = 443
          Top = 0
          Caption = 'btEncerrar'
          ImageIndex = 25
          OnClick = btEncerrarClick
        end
        object ToolButton1: TToolButton
          Left = 474
          Top = 0
          Width = 8
          Caption = 'ToolButton1'
          ImageIndex = 9
          Style = tbsSeparator
        end
        object btEstorno: TToolButton
          Left = 482
          Top = 0
          Hint = 'Estornar'
          Caption = 'btEstorno'
          ImageIndex = 63
          OnClick = btEstornoClick
        end
        object ToolButton3: TToolButton
          Left = 513
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 64
          Style = tbsSeparator
        end
        object btContaReceber: TToolButton
          Left = 521
          Top = 0
          Hint = 'Contas a receber'
          Caption = 'btContaReceber'
          ImageIndex = 66
          Visible = False
          OnClick = btContaReceberClick
        end
        object btReserva: TToolButton
          Left = 552
          Top = 0
          Hint = 'Desfazer a reserva'
          Caption = 'btReserva'
          ImageIndex = 61
          Visible = False
          OnClick = btReservaClick
        end
        object btFechaCaixa: TToolButton
          Left = 583
          Top = 0
          Hint = 'Fechar caixa'
          Caption = 'btFechaCaixa'
          ImageIndex = 67
          OnClick = btFechaCaixaClick
        end
      end
    end
  end
  inherited ActionList1: TActionList
    inherited act_ImprGrade: TAction
      ShortCut = 16455
    end
    object act_Venda: TAction
      Category = 'Impirmir'
      Caption = 'Imprimir '
      ImageIndex = 32
      ShortCut = 16464
      OnExecute = act_VendaExecute
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'SELECT VEN.VEN_001'
      '     , VEN.EMP_001'
      '     , (CASE VEN.VEN_002'
      '          WHEN 0 '
      '             THEN '#39'VENDA'#39
      '          WHEN 1'
      '             THEN '#39'PR'#201'-VENDA'#39
      '          WHEN 2'
      '             THEN '#39'OR'#199'AMENTO'#39
      '          WHEN 3'
      '             THEN '#39'CONSIGNADO'#39
      '          WHEN 4'
      '             THEN '#39'ORDEM DE SERVI'#199'O'#39
      '          WHEN 5'
      '             THEN '#39'DEVOLU'#199#195'O'#39
      ''
      '       END) AS VEN_002'
      '     , VEN.FNC_001'
      '     , MES.MES_002'
      '     , FUN.FNC_002'
      '     , VEN.VEN_003'
      '     , VEN.VEN_004'
      '     , VEN.VEN_005'
      '     , VEN.VEN_007'
      '     , VEN.VEN_008'
      '     , VEN.VEN_025'
      '     , VEN.VEN_027'
      '     , VEN.VEN_029'
      '     , (VEN.VEN_009 + COALESCE(ENC.ENC_005, 0.00)) AS VEN_009'
      '     , (SELECT COALESCE(SUM((ITE.ITE_005)), 0.00)'
      '        FROM VENDAITEM ITE'
      '        WHERE ITE.EMP_001 = VEN.EMP_001'
      '        AND   ITE.VEN_001 = VEN.VEN_001) AS VLRPROVEN'
      '     , CAST(VEN.VEN_006 AS VARCHAR(200)) AS VEN_006'
      '     , VEN.CLI_001'
      '     , CLI.CLI_003'
      '     , CLI.CEP_003'
      '     , CLI.CLI_004'
      '     , CLI.CEP_004'
      '     , CLI.CLI_008'
      '     , CLI.CLI_017'
      '     , CID.CID_002'
      '     , VEN.SIT_001'
      '     , VEN.VEN_002 Tipo'
      '     , VEN.ENC_001'
      'FROM VENDA VEN'
      
        'LEFT OUTER JOIN CLIENTES CLI ON (CLI.EMP_001 = VEN.EMP_001) AND ' +
        '(CLI.CLI_001 = VEN.CLI_001)'
      'LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CLI.CID_001)'
      
        'LEFT OUTER JOIN FUNCIONARIOS FUN ON (FUN.EMP_001 = VEN.EMP_001) ' +
        'AND (FUN.FNC_001 = VEN.FNC_001)'
      
        'LEFT OUTER JOIN ENCERRAVENDA ENC ON (ENC.EMP_001 = VEN.EMP_001) ' +
        'AND (ENC.VEN_001 = VEN.VEN_001)'
      
        'LEFT OUTER JOIN MESA MES ON (MES.EMP_001 = VEN.EMP_001) and (MES' +
        '.MES_001 = VEN.VEN_025)'
      'WHERE VEN.EMP_001 = :EMP'
      'AND VEN.VEN_024 = '#39'M'#39)
    Left = 74
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end>
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultaven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrConsultaven_002: TWideMemoField
      FieldName = 'ven_002'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrConsultafnc_001: TIntegerField
      FieldName = 'fnc_001'
    end
    object qrConsultafnc_002: TWideStringField
      FieldName = 'fnc_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrConsultaven_003: TFloatField
      FieldName = 'ven_003'
    end
    object qrConsultaven_004: TDateTimeField
      FieldName = 'ven_004'
      Required = True
    end
    object qrConsultaven_005: TDateTimeField
      FieldName = 'ven_005'
    end
    object qrConsultacli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrConsultacli_003: TWideStringField
      FieldName = 'cli_003'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrConsultacep_003: TWideStringField
      FieldName = 'cep_003'
      ReadOnly = True
      Size = 50
    end
    object qrConsultacli_004: TWideStringField
      FieldName = 'cli_004'
      ReadOnly = True
      Required = True
    end
    object qrConsultacep_004: TWideStringField
      FieldName = 'cep_004'
      ReadOnly = True
      Size = 125
    end
    object qrConsultacli_008: TWideStringField
      FieldName = 'cli_008'
      ReadOnly = True
      Size = 10
    end
    object qrConsultacid_002: TWideStringField
      FieldName = 'cid_002'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qrConsultasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrConsultaven_006: TWideStringField
      FieldName = 'ven_006'
      Size = 200
    end
    object qrConsultatipo: TIntegerField
      FieldName = 'tipo'
    end
    object qrConsultaenc_001: TIntegerField
      FieldName = 'enc_001'
    end
    object qrConsultaven_007: TFloatField
      FieldName = 'ven_007'
    end
    object qrConsultaven_008: TFloatField
      FieldName = 'ven_008'
    end
    object qrConsultaven_009: TFloatField
      FieldName = 'ven_009'
    end
    object qrConsultavlrproven: TFloatField
      FieldName = 'vlrproven'
      ReadOnly = True
    end
    object qrConsultacli_017: TFloatField
      FieldName = 'cli_017'
      ReadOnly = True
    end
    object qrConsultames_002: TWideStringField
      DisplayLabel = 'Mesa'
      FieldName = 'mes_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultaven_025: TIntegerField
      FieldName = 'ven_025'
    end
    object qrConsultaven_027: TWideStringField
      FieldName = 'ven_027'
      Size = 200
    end
    object qrConsultaven_029: TIntegerField
      FieldName = 'ven_029'
    end
  end
  inherited dsConsulta: TDataSource
    OnDataChange = dsConsultaDataChange
    Top = 38
  end
  inherited GradePrint: TdxComponentPrinter
    inherited GradePrintLink: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited popImpressao: TPopupMenu
    object ImprimirVenda1: TMenuItem
      Action = act_Venda
      Visible = False
    end
  end
  object dbEmpresa: TfrxDBDataset
    UserName = 'dbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_001=emp_001'
      'emp_002=emp_002'
      'emp_003=emp_003'
      'emp_004=emp_004'
      'emp_005=emp_005'
      'emp_006=emp_006'
      'emp_007=emp_007'
      'emp_008=emp_008'
      'emp_011=emp_011'
      'emp_012=emp_012'
      'cep_002=cep_002'
      'cep_003=cep_003'
      'cep_004=cep_004'
      'emp_013=emp_013'
      'emp_014=emp_014')
    DataSet = frmMenu.qrEmpresa
    BCDToCurrency = False
    Left = 248
    Top = 168
  end
  object dbVendaItens: TfrxDBDataset
    UserName = 'dbVendaItens'
    CloseDataSource = False
    DataSet = qrVendaItens
    BCDToCurrency = False
    Left = 248
    Top = 228
  end
  object dbParcela: TfrxDBDataset
    UserName = 'dbParcela'
    CloseDataSource = False
    DataSet = qrVendaParcela
    BCDToCurrency = False
    Left = 392
    Top = 230
  end
  object qrVendaItens: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001'
      '     , ITE.VEN_001'
      '     , ITE.ITE_001'
      '     , ITE.MAT_001'
      '     , MAT.MAT_003'
      '     , UNI.UNI_003'
      
        '     , CAST(COR.COR_002 || '#39'-'#39' || TAM.TAM_002 AS VARCHAR(100)) A' +
        'S COM_002'
      '     , ITE.COM_001'
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA'
      '     , ITE.ITE_004'
      '     , ITE.ITE_005'
      '     , CAST('#39#39' AS VARCHAR(20)) AS COMP'
      'FROM VENDAITEM ITE    '
      
        'LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND' +
        ' (MAT.MAT_001 = ITE.MAT_001)'
      
        'LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND ' +
        '(UNI.UNI_001 = MAT.UNI_001)'
      
        'LEFT OUTER JOIN COMPOSICAO COM ON (COM.EMP_001 = ITE.EMP_001) AN' +
        'D (COM.COM_001 = ITE.COM_001)'
      'LEFT OUTER JOIN COR COR ON (COR.COR_001 = COM.COR_001)'
      'LEFT OUTER JOIN TAMANHO TAM ON (TAM.TAM_001 = COM.TAM_001)'
      'WHERE ITE.EMP_001 = :EMP'
      'AND   ITE.VEN_001 = :VEN'
      'ORDER BY MAT.MAT_003')
    BeforeOpen = qrVendaItensBeforeOpen
    Left = 510
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'VEN'
      end>
    object qrVendaItensemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaItensven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaItensite_001: TIntegerField
      FieldName = 'ite_001'
      Required = True
    end
    object qrVendaItensmat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrVendaItensmat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrVendaItensuni_003: TWideStringField
      FieldName = 'uni_003'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrVendaItenscom_002: TWideStringField
      FieldName = 'com_002'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItenscom_001: TIntegerField
      FieldName = 'com_001'
    end
    object qrVendaItensqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      Required = True
    end
    object qrVendaItensvlrvenda: TFloatField
      FieldName = 'vlrvenda'
      Required = True
    end
    object qrVendaItensite_004: TFloatField
      FieldName = 'ite_004'
      Required = True
    end
    object qrVendaItensite_005: TFloatField
      FieldName = 'ite_005'
    end
    object qrVendaItenscomp: TWideStringField
      FieldName = 'comp'
      ReadOnly = True
    end
  end
  object dsVendaItens: TDataSource
    DataSet = qrVendaItens
    Left = 558
    Top = 256
  end
  object dsVendaParcela: TDataSource
    DataSet = qrVendaParcela
    Left = 556
    Top = 206
  end
  object qrVendaParcela: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT EMP_001'
      '     , ENC_001'
      '     , ITE_001'
      '     , ITE_002'
      '     , ITE_003'
      '     , ITE_004'
      '     , ITE_005'
      'FROM ENCERRAVENDAITEM '
      'WHERE EMP_001 = :EMP'
      'AND   ENC_001 = :ENC')
    BeforeOpen = qrVendaParcelaBeforeOpen
    Left = 508
    Top = 206
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ENC'
      end>
    object qrVendaParcelaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaParcelaenc_001: TIntegerField
      FieldName = 'enc_001'
      Required = True
    end
    object qrVendaParcelaite_001: TIntegerField
      FieldName = 'ite_001'
      Required = True
    end
    object qrVendaParcelaite_002: TDateTimeField
      FieldName = 'ite_002'
    end
    object qrVendaParcelaite_003: TFloatField
      FieldName = 'ite_003'
    end
    object qrVendaParcelaite_004: TIntegerField
      FieldName = 'ite_004'
    end
    object qrVendaParcelaite_005: TFloatField
      FieldName = 'ite_005'
    end
  end
  object qrVenda: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT VEN.VEN_001'
      '     , VEN.EMP_001'
      '     , VEN.VEN_002'
      '     , VEN.FNC_001'
      '     , FUN.FNC_002'#9#9
      '     , VEN.VEN_003'
      '     , VEN.VEN_004'
      '     , VEN.VEN_005'
      '     , VEN.VEN_007'
      '     , VEN.VEN_008'
      '     , VEN.VEN_009'
      '     , VEN.CLI_001'
      '     , CLI.CLI_003'
      '     , CLI.CEP_003'
      '     , CLI.CLI_004'
      '     , CLI.CEP_004'
      '     , CLI.CLI_008'
      '     , CID.CID_002'
      '     , VEN.VEN_006'
      '     , VEN.VEN_010'
      '     , VEN.VEN_011'
      '     , VEN.VEN_012'
      '     , VEN.VEN_013'
      '     , VEN.VEN_014'
      '     , (CASE VEN.VEN_015'
      '          WHEN 0'
      '             THEN '#39'GASOLINA'#39
      '          WHEN 1'
      '             THEN '#39'ALCOOL'#39
      '          WHEN 2'
      '             THEN '#39'DIESEL'#39
      '          WHEN 3'
      '             THEN '#39'FLEX'#39
      '       END) AS VEN_015'
      '     , (CASE VEN.VEN_016'
      '          WHEN 0'
      '             THEN '#39'1/4'#39
      '          WHEN 1'
      '             THEN '#39'1/2'#39
      '          WHEN 2'
      '             THEN '#39'CHEIO'#39
      '          WHEN 3'
      '             THEN '#39'VAZIO'#39
      '       END) AS VEN_016'
      '     , VEN.VEN_017'
      '     , VEN.VEN_018'
      '     , FUNC.FNC_002'
      '     , VEN.VEN_019'
      '     , VEN.VEN_020'
      '     , VEN.VEN_021'
      '     , VEN.VEN_022'
      '     , VEN.COR_001'
      '     , COR.COR_002'
      '     , VEN.MON_001'
      '     , MON.MON_002'
      '     , VEN.MOD_001'
      '     , MOD.MOD_002'
      '     , VEN.ENC_001'
      '     , PGT.FOR_002 FORMPAGTO'
      '     , CON.CON_002 CONDPAGTO'
      '     , ENC.ENC_005 ENTRADA'
      '     , ENC.ENC_006 ACRESCIMO'
      '     , ENC.ENC_007 DESCONTO'
      '     , ENC.ENC_003 VALORVENDA'
      ''
      'FROM VENDA VEN'
      
        'LEFT OUTER JOIN CLIENTES CLI ON (CLI.EMP_001 = VEN.EMP_001) AND ' +
        '(CLI.CLI_001 = VEN.CLI_001)'
      'LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CLI.CID_001)'
      
        'LEFT OUTER JOIN FUNCIONARIOS FUN ON (FUN.EMP_001 = VEN.EMP_001) ' +
        'AND (FUN.FNC_001 = VEN.FNC_001)'
      'LEFT OUTER JOIN COR COR ON (COR.COR_001 = VEN.COR_001)'
      
        'LEFT OUTER JOIN MONTADORA MON ON (MON.EMP_001 = VEN.EMP_001) AND' +
        ' (MON.MON_001 = VEN.MON_001)'
      
        'LEFT OUTER JOIN MODELO MOD ON (MOD.EMP_001 = VEN.EMP_001) AND (M' +
        'OD.MOD_001 = VEN.MOD_001)'
      
        'LEFT OUTER JOIN FUNCIONARIOS FUNC ON (FUNC.EMP_001 = VEN.EMP_001' +
        ') AND (FUNC.FNC_001 = VEN.VEN_018)'
      
        'LEFT OUTER JOIN ENCERRAVENDA ENC ON (ENC.EMP_001 = VEN.EMP_001) ' +
        'AND (ENC.ENC_001 = VEN.ENC_001)'
      
        'LEFT OUTER JOIN FORMAPGTO PGT ON (PGT.EMP_001 = ENC.EMP_001) AND' +
        ' (PGT.FOR_001 = ENC.FOR_001)'
      
        'LEFT OUTER JOIN CONDICAOPGTO CON ON (CON.EMP_001 = ENC.EMP_001) ' +
        'AND (CON.CON_001 = ENC.CON_001)'
      'WHERE VEN.EMP_001 = :EMP'
      'AND   VEN.VEN_001 = :ID')
    BeforeOpen = qrVendaBeforeOpen
    Left = 508
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaven_002: TIntegerField
      FieldName = 'ven_002'
    end
    object qrVendafnc_001: TIntegerField
      FieldName = 'fnc_001'
    end
    object qrVendafnc_002: TWideStringField
      FieldName = 'fnc_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendaven_003: TFloatField
      FieldName = 'ven_003'
    end
    object qrVendaven_004: TDateTimeField
      FieldName = 'ven_004'
      Required = True
    end
    object qrVendaven_005: TDateTimeField
      FieldName = 'ven_005'
    end
    object qrVendaven_007: TFloatField
      FieldName = 'ven_007'
    end
    object qrVendaven_008: TFloatField
      FieldName = 'ven_008'
    end
    object qrVendaven_009: TFloatField
      FieldName = 'ven_009'
    end
    object qrVendacli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrVendacli_003: TWideStringField
      FieldName = 'cli_003'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendacep_003: TWideStringField
      FieldName = 'cep_003'
      ReadOnly = True
      Size = 50
    end
    object qrVendacli_004: TWideStringField
      FieldName = 'cli_004'
      ReadOnly = True
      Required = True
    end
    object qrVendacep_004: TWideStringField
      FieldName = 'cep_004'
      ReadOnly = True
      Size = 125
    end
    object qrVendacli_008: TWideStringField
      FieldName = 'cli_008'
      ReadOnly = True
      Size = 10
    end
    object qrVendacid_002: TWideStringField
      FieldName = 'cid_002'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qrVendaven_006: TWideMemoField
      FieldName = 'ven_006'
      BlobType = ftWideMemo
    end
    object qrVendaven_010: TWideStringField
      FieldName = 'ven_010'
      Size = 10
    end
    object qrVendaven_011: TWideStringField
      FieldName = 'ven_011'
      Size = 40
    end
    object qrVendaven_012: TWideStringField
      FieldName = 'ven_012'
      Size = 10
    end
    object qrVendaven_013: TFloatField
      FieldName = 'ven_013'
    end
    object qrVendaven_014: TFloatField
      FieldName = 'ven_014'
    end
    object qrVendaven_017: TDateTimeField
      FieldName = 'ven_017'
    end
    object qrVendaven_018: TIntegerField
      FieldName = 'ven_018'
    end
    object qrVendafnc_002_1: TWideStringField
      FieldName = 'fnc_002_1'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendaven_019: TDateTimeField
      FieldName = 'ven_019'
    end
    object qrVendaven_020: TWideMemoField
      FieldName = 'ven_020'
      BlobType = ftWideMemo
    end
    object qrVendaven_021: TWideMemoField
      FieldName = 'ven_021'
      BlobType = ftWideMemo
    end
    object qrVendaven_022: TIntegerField
      FieldName = 'ven_022'
    end
    object qrVendacor_001: TIntegerField
      FieldName = 'cor_001'
    end
    object qrVendacor_002: TWideStringField
      FieldName = 'cor_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrVendamon_001: TIntegerField
      FieldName = 'mon_001'
    end
    object qrVendamon_002: TWideStringField
      FieldName = 'mon_002'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrVendamod_001: TIntegerField
      FieldName = 'mod_001'
    end
    object qrVendamod_002: TWideStringField
      FieldName = 'mod_002'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrVendaenc_001: TIntegerField
      FieldName = 'enc_001'
    end
    object qrVendaformpagto: TWideStringField
      FieldName = 'formpagto'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrVendacondpagto: TWideStringField
      FieldName = 'condpagto'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrVendaentrada: TFloatField
      FieldName = 'entrada'
      ReadOnly = True
    end
    object qrVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
      ReadOnly = True
    end
    object qrVendadesconto: TFloatField
      FieldName = 'desconto'
      ReadOnly = True
    end
    object qrVendavalorvenda: TFloatField
      FieldName = 'valorvenda'
      ReadOnly = True
    end
    object qrVendaven_015: TWideMemoField
      FieldName = 'ven_015'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaven_016: TWideMemoField
      FieldName = 'ven_016'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dsVenda: TDataSource
    DataSet = qrVenda
    Left = 556
    Top = 158
  end
  object RepVendaOrdem: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41499.012642488400000000
    ReportOptions.LastChange = 41517.478100543980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 324
    Top = 224
    Datasets = <
      item
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = dbParcela
        DataSetName = 'dbParcela'
      end
      item
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 117.165430000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 98.267780000000000000
          ShowHint = False
        end
        object Picture1: TfrxPictureView
          Width = 170.078850000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'emp_011'
          DataSet = dbEmpresa
          DataSetName = 'dbEmpresa'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 548.031850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEmpresa."emp_002"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 170.078850000000000000
          Top = 41.574830000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbEmpresa."cep_004"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEmpresa."emp_007"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 170.078850000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 170.078850000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 170.078850000000000000
          Top = 79.370130000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbEmpresa."cep_003"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 476.220780000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 476.220780000000000000
          Top = 79.370130000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbEmpresa."emp_013"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 619.842920000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 2.661410000000000000
          Top = 98.267780000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Ordem de servi'#231'o:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 116.047310000000000000
          Top = 98.267780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_001"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 283.464750000000000000
          Top = 98.267780000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."fnc_002"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 215.433210000000000000
          Top = 98.267780000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 616.063390000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_004"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 578.268090000000000000
          Top = 98.267780000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 246.346630000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frmDetalheEncerraVenda.dbVenda
        DataSetName = 'dbVenda'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 0.220470000000000000
          Top = 188.653680000000000000
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 188.976500000000000000
          ShowHint = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cli_003"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 306.141930000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cli_004"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 370.393940000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 502.677490000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cep_004"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 370.393940000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cep_003"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 502.677490000000000000
          Top = 56.692950000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cli_008"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 188.976500000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#227'o de pagto.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 162.519790000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Forma pagto.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 287.244280000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 396.850650000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo(%)')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 506.457020000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto(%)')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 616.063390000000000000
          Top = 188.976500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total da venda')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 207.874150000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."condpagto"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 162.519790000000000000
          Top = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."formpagto"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 287.244280000000000000
          Top = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."entrada"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 396.850650000000000000
          Top = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."acrescimo"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 506.457020000000000000
          Top = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 616.063390000000000000
          Top = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmDetalheEncerraVenda.dbVenda
          DataSetName = 'dbVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."ven_009"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 4.000000000000000000
          Top = 227.448980000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 61.692950000000000000
          Top = 227.448980000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 178.858380000000000000
          Top = 227.448980000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 280.905690000000000000
          Top = 227.448980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Placa')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 86.929190000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Chassi')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 192.756030000000000000
          Top = 75.590600000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Montadora')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 321.260050000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 434.645950000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 502.677490000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Motor')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 604.724800000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 86.929190000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_011"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_010"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 192.756030000000000000
          Top = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."mon_002"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 321.260050000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."mod_002"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 434.645950000000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_022"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 502.677490000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_012"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cor_002"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'KM')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 90.708720000000000000
          Top = 113.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'KM-M'#233'dia')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 192.756030000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Combust'#237'vel')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 294.803340000000000000
          Top = 113.385900000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde. Combust.')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 408.189240000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 514.016080000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Sa'#237'da')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_013"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 90.708720000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_014"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 192.756030000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_015"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 294.803340000000000000
          Top = 132.283550000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_016"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 408.189240000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_017"]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 514.016080000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_019"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 226.771800000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo90: TfrxMemoView
          Left = 3.779530000000000000
          Top = 151.181200000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Consultor t'#233'cnico')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 3.779530000000000000
          Top = 170.078850000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."fnc_002_1"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 771.024120000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        DataSet = dbParcela
        DataSetName = 'dbParcela'
        RowCount = 0
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo39: TfrxMemoView
          Left = 4.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbParcela."ite_004"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbParcela."ite_002"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbParcela."ite_003"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 177.637910000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbParcela."ite_005"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 37.795300000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape6: TfrxShapeView
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Itens')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Material')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 283.464750000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unid.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 325.039580000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Composi'#231#227'o')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 423.307360000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Des(%)')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 631.181510000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897650000000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape7: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."mat_001"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 68.031540000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaItens."mat_003"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaItens."uni_003"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 325.039580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaItens."com_002"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 423.307360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."qtdevenda"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 476.220780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."vlrvenda"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 570.709030000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."ite_004"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 631.181510000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."ite_005"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 102.047310000000000000
        Top = 608.504330000000000000
        Width = 718.110700000000000000
        DataSet = frmDetalheEncerraVenda.dbVenda
        DataSetName = 'dbVenda'
        RowCount = 0
        object Shape8: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
          ShowHint = False
        end
        object Memo92: TfrxMemoView
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#245'es gerais')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 381.732530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Problemas / Solu'#231#227'o')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Top = 18.897650000000000000
          Width = 370.393940000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_020"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 381.732530000000000000
          Top = 18.897650000000000000
          Width = 328.819110000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_020"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 374.173470000000000000
          Height = 102.047310000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object dbVenda: TfrxDBDataset
    UserName = 'dbVenda'
    CloseDataSource = False
    DataSet = qrVenda
    BCDToCurrency = False
    Left = 388
    Top = 158
  end
  object RepVenda: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41499.012642488400000000
    ReportOptions.LastChange = 41515.528404664350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 326
    Top = 140
    Datasets = <
      item
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = dbParcela
        DataSetName = 'dbParcela'
      end
      item
        DataSet = dbVenda
        DataSetName = 'dbVenda'
      end
      item
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 117.165430000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Top = 98.267780000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 98.267780000000000000
          ShowHint = False
        end
        object Picture1: TfrxPictureView
          Width = 170.078850000000000000
          Height = 98.267780000000000000
          ShowHint = False
          DataField = 'emp_011'
          DataSet = dbEmpresa
          DataSetName = 'dbEmpresa'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 548.031850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEmpresa."emp_002"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 170.078850000000000000
          Top = 41.574830000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbEmpresa."cep_004"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbEmpresa."emp_007"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 170.078850000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 170.078850000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 170.078850000000000000
          Top = 79.370130000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbEmpresa."cep_003"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 476.220780000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 476.220780000000000000
          Top = 79.370130000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbEmpresa."emp_013"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 619.842920000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 2.661410000000000000
          Top = 98.267780000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'VENDA / OR'#199'AMENTO:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 142.504020000000000000
          Top = 98.267780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_001"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 306.141930000000000000
          Top = 98.267780000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."fnc_002"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 238.110390000000000000
          Top = 98.267780000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 616.063390000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."ven_004"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 578.268090000000000000
          Top = 98.267780000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 144.299320000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = dbVenda
        DataSetName = 'dbVenda'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 0.220470000000000000
          Top = 120.622140000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 120.944960000000000000
          ShowHint = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cli_003"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 306.141930000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cli_004"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 370.393940000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 502.677490000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cep_004"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 370.393940000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cep_003"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 502.677490000000000000
          Top = 56.692950000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."cli_008"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#227'o de pagto.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 162.519790000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Forma pagto.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 287.244280000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 396.850650000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo(%)')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 506.457020000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto(%)')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 616.063390000000000000
          Top = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total da venda')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."condpagto"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 162.519790000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenda."formpagto"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 287.244280000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."entrada"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 396.850650000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."acrescimo"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 506.457020000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."desconto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 616.063390000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ven_009'
          DataSet = dbVenda
          DataSetName = 'dbVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVenda."ven_009"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 82.370130000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo43: TfrxMemoView
          Left = 4.000000000000000000
          Top = 121.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 61.692950000000000000
          Top = 121.622140000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 178.858380000000000000
          Top = 121.622140000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 280.905690000000000000
          Top = 121.622140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = dbParcela
        DataSetName = 'dbParcela'
        RowCount = 0
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo39: TfrxMemoView
          Left = 4.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbParcela."ite_004"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbParcela."ite_002"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 279.685220000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbParcela."ite_003"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 177.637910000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbParcela."ite_005"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 37.795300000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape6: TfrxShapeView
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Itens')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Material')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 283.464750000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unid.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 325.039580000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Composi'#231#227'o')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 423.307360000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Des(%)')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 631.181510000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape7: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."mat_001"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 68.031540000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaItens."mat_003"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaItens."uni_003"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 325.039580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaItens."com_002"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 423.307360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."qtdevenda"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 476.220780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."vlrvenda"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 570.709030000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."ite_004"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 631.181510000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendaItens."ite_005"]')
          ParentFont = False
        end
      end
    end
  end
  object TmAtualiza: TTimer
    Interval = 5000
    OnTimer = TmAtualizaTimer
    Left = 430
    Top = 104
  end
end
