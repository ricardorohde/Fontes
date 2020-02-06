inherited frmDetalheContasReceber: TfrmDetalheContasReceber
  Caption = 'Cadastro do Contas a Receber'
  ClientHeight = 420
  ClientWidth = 798
  ExplicitWidth = 804
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 798
    ExplicitWidth = 798
  end
  object pcAbas: TcxPageControl [1]
    Left = 0
    Top = 38
    Width = 798
    Height = 382
    Align = alClient
    TabOrder = 1
    TabStop = False
    Properties.ActivePage = tsDados
    Properties.CustomButtons.Buttons = <>
    OnChange = pcAbasChange
    ClientRectBottom = 380
    ClientRectLeft = 2
    ClientRectRight = 796
    ClientRectTop = 22
    object tsDados: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 0
      object Label1: TLabel
        Left = 14
        Top = 14
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEdit2
      end
      object Label10: TLabel
        Left = 102
        Top = 13
        Width = 64
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = cxDBDateEdit1
      end
      object Label11: TLabel
        Left = 247
        Top = 13
        Width = 81
        Height = 13
        Caption = 'Data Vencimento'
        FocusControl = cxDBDateEdit2
      end
      object Label6: TLabel
        Left = 259
        Top = 60
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = edCliente
      end
      object Label27: TLabel
        Left = 14
        Top = 109
        Width = 20
        Height = 13
        Caption = 'PCG'
        FocusControl = edPCG
      end
      object Label3: TLabel
        Left = 393
        Top = 13
        Width = 85
        Height = 13
        Caption = 'Data Prorroga'#231#227'o'
        FocusControl = cxDBDateEdit3
      end
      object Label4: TLabel
        Left = 14
        Top = 159
        Width = 102
        Height = 13
        Caption = 'Forma de Pagamento'
        FocusControl = edFormaPagto
      end
      object Label7: TLabel
        Left = 14
        Top = 209
        Width = 37
        Height = 13
        Caption = 'Cheque'
        FocusControl = edCheque
      end
      object Label12: TLabel
        Left = 14
        Top = 60
        Width = 25
        Height = 13
        Caption = 'Mesa'
        FocusControl = edMesa
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 14
        Top = 29
        AutoSize = False
        DataBinding.DataField = 'rec_001'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 0
        Height = 22
        Width = 78
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 102
        Top = 29
        AutoSize = False
        DataBinding.DataField = 'rec_002'
        DataBinding.DataSource = dsDetalhe
        Properties.Kind = ckDateTime
        TabOrder = 1
        Height = 22
        Width = 133
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 247
        Top = 29
        AutoSize = False
        DataBinding.DataField = 'rec_003'
        DataBinding.DataSource = dsDetalhe
        Properties.Kind = ckDateTime
        TabOrder = 2
        Height = 22
        Width = 133
      end
      object edCliente: TcxDBButtonEdit
        Tag = 23
        Left = 259
        Top = 75
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'cli_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Height = 22
        Width = 84
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 349
        Top = 75
        AutoSize = False
        DataBinding.DataField = 'cli_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 6
        Height = 22
        Width = 177
      end
      object edPCG: TcxDBButtonEdit
        Tag = 17
        Left = 14
        Top = 124
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'pcg_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Height = 22
        Width = 87
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 107
        Top = 124
        AutoSize = False
        DataBinding.DataField = 'pcg_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 11
        Height = 22
        Width = 252
      end
      object gbTotais: TcxGroupBox
        Left = 14
        Top = 260
        TabOrder = 10
        Height = 81
        Width = 647
        object Label9: TLabel
          Left = 142
          Top = 20
          Width = 45
          Height = 13
          Caption = 'Desconto'
          FocusControl = edDesconto
        end
        object Label2: TLabel
          Left = 15
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Valor'
          FocusControl = edValor
        end
        object Label5: TLabel
          Left = 270
          Top = 20
          Width = 26
          Height = 13
          Caption = 'Multa'
          FocusControl = edMulta
        end
        object Label17: TLabel
          Left = 525
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Total'
          FocusControl = edTotal
        end
        object Label8: TLabel
          Left = 398
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Recebido'
        end
        object edDesconto: TRxDBCalcEdit
          Left = 142
          Top = 35
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'rec_006'
          DataSource = dsDetalhe
          ClickKey = 113
          FormatOnEditing = True
          NumGlyphs = 2
          TabOrder = 1
        end
        object edValor: TRxDBCalcEdit
          Left = 15
          Top = 35
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'rec_004'
          DataSource = dsDetalhe
          ClickKey = 113
          FormatOnEditing = True
          NumGlyphs = 2
          TabOrder = 0
        end
        object edMulta: TRxDBCalcEdit
          Left = 270
          Top = 35
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'rec_005'
          DataSource = dsDetalhe
          ClickKey = 113
          FormatOnEditing = True
          NumGlyphs = 2
          TabOrder = 2
        end
        object edTotal: TcxDBTextEdit
          Left = 525
          Top = 35
          AutoSize = False
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = dsDetalhe
          ParentColor = True
          Properties.Alignment.Horz = taRightJustify
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 3
          Height = 22
          Width = 112
        end
        object edPago: TcxDBTextEdit
          Left = 397
          Top = 35
          AutoSize = False
          DataBinding.DataField = 'rec_008'
          DataBinding.DataSource = dsDetalhe
          ParentColor = True
          Properties.Alignment.Horz = taRightJustify
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 4
          Height = 22
          Width = 112
        end
      end
      object gbusuarios: TGroupBox
        Left = 569
        Top = 14
        Width = 214
        Height = 159
        Enabled = False
        TabOrder = 12
        object Label15: TLabel
          Left = -421
          Top = -95
          Width = 36
          Height = 13
          Caption = 'Edi'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 4
          Top = 42
          Width = 71
          Height = 11
          Alignment = taRightJustify
          Caption = #218'ltima Altera'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edDataUltimaAtualiz: TDBText
          Left = 77
          Top = 43
          Width = 133
          Height = 13
          DataField = 'dat_001_2'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edUsuUltimaAtualiz: TDBText
          Left = 77
          Top = 58
          Width = 133
          Height = 13
          DataField = 'edicao'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 21
          Top = 59
          Width = 54
          Height = 11
          Alignment = taRightJustify
          Caption = 'Alterado por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 12
          Top = 8
          Width = 63
          Height = 11
          Alignment = taRightJustify
          Caption = 'Data Cadastro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edDataCadastro: TDBText
          Left = 77
          Top = 8
          Width = 133
          Height = 13
          DataField = 'dat_001_1'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 24
          Width = 67
          Height = 11
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = 'Cadastrado por:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object edUsuCadastrado: TDBText
          Left = 77
          Top = 24
          Width = 133
          Height = 13
          DataField = 'inclusao'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 16
          Top = 118
          Width = 182
          Height = 13
          Alignment = taCenter
          DataField = 'dat_sit'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 16
          Top = 133
          Width = 182
          Height = 13
          Alignment = taCenter
          DataField = 'usu_sit'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object edSituacao: TDBText
          Left = 16
          Top = 95
          Width = 182
          Height = 17
          Alignment = taCenter
          DataField = 'situacao'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 393
        Top = 29
        AutoSize = False
        DataBinding.DataField = 'rec_009'
        DataBinding.DataSource = dsDetalhe
        Properties.Kind = ckDateTime
        TabOrder = 3
        Height = 22
        Width = 133
      end
      object edFormaPagto: TcxDBButtonEdit
        Tag = 28
        Left = 14
        Top = 174
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'for_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Height = 22
        Width = 87
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 107
        Top = 174
        AutoSize = False
        DataBinding.DataField = 'for_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 13
        Height = 22
        Width = 252
      end
      object edCheque: TcxDBButtonEdit
        Tag = 26
        Left = 14
        Top = 224
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'che_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 9
        Height = 22
        Width = 87
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 107
        Top = 224
        AutoSize = False
        DataBinding.DataField = 'che_008'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 14
        Height = 22
        Width = 252
      end
      object edMesa: TcxDBButtonEdit
        Tag = 41
        Left = 14
        Top = 75
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'mes_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Height = 22
        Width = 72
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 92
        Top = 76
        DataBinding.DataField = 'mes_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 15
        Width = 143
      end
    end
    object tsObs: TcxTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 1
      object edObs: TDBMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 358
        Align = alClient
        DataField = 'rec_010'
        DataSource = dsDetalhe
        TabOrder = 0
      end
    end
    object tsPago: TcxTabSheet
      Caption = 'Parcelas'
      ImageIndex = 2
      object cxGridPago: TcxGrid
        Left = 0
        Top = 0
        Width = 794
        Height = 358
        Align = alClient
        TabOrder = 0
        object cxGridPagoDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridPagoDBTableView1CellDblClick
          DataController.DataSource = dsRecebido
          DataController.KeyFieldNames = 'rec_001'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridPagoDBTableView1rec_001: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'rec_001'
          end
          object cxGridPagoDBTableView1pcg_002: TcxGridDBColumn
            Caption = 'PCG'
            DataBinding.FieldName = 'pcg_002'
            Width = 200
          end
          object cxGridPagoDBTableView1rec_002: TcxGridDBColumn
            Caption = 'Data Emiss'#227'o '
            DataBinding.FieldName = 'rec_002'
            Width = 110
          end
          object cxGridPagoDBTableView1rec_003: TcxGridDBColumn
            Caption = 'Data Baixa'
            DataBinding.FieldName = 'data_baixa'
            Width = 110
          end
          object cxGridPagoDBTableView1rec_008: TcxGridDBColumn
            Caption = 'Recebido'
            DataBinding.FieldName = 'rec_008'
            Width = 70
          end
        end
        object cxGridPagoLevel1: TcxGridLevel
          GridView = cxGridPagoDBTableView1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 224
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO creceber'
      
        '  (rec_001, emp_001, rec_002, rec_003, rec_004, rec_005, rec_006' +
        ', pcg_001, cli_001, rec_008, usu_001_1, usu_001_2, dat_001_1, da' +
        't_001_2, che_001, rec_009, rec_010, for_001, mes_001)'
      'VALUES'
      
        '  (:rec_001, :emp_001, :rec_002, :rec_003, :rec_004, :rec_005, :' +
        'rec_006, :pcg_001, :cli_001, :rec_008, :usu_001_1, :usu_001_2, :' +
        'dat_001_1, :dat_001_2, :che_001, :rec_009, :rec_010, :for_001, :' +
        'mes_001)')
    SQLDelete.Strings = (
      'DELETE FROM creceber'
      'WHERE'
      '  rec_001 = :Old_rec_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE creceber'
      'SET'
      
        '  rec_001 = :rec_001, emp_001 = :emp_001, rec_002 = :rec_002, re' +
        'c_003 = :rec_003, rec_004 = :rec_004, rec_005 = :rec_005, rec_00' +
        '6 = :rec_006, pcg_001 = :pcg_001, cli_001 = :cli_001, rec_008 = ' +
        ':rec_008, usu_001_1 = :usu_001_1, usu_001_2 = :usu_001_2, dat_00' +
        '1_1 = :dat_001_1, dat_001_2 = :dat_001_2, che_001 = :che_001, re' +
        'c_009 = :rec_009, rec_010 = :rec_010, for_001 = :for_001, mes_00' +
        '1 = :mes_001'
      'WHERE'
      '  rec_001 = :Old_rec_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM creceber'
      'WHERE'
      '  rec_001 = :Old_rec_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT rec_001, emp_001, rec_002, rec_003, rec_004, rec_005, rec' +
        '_006, pcg_001, cli_001, rec_008, usu_001_1, usu_001_2, dat_001_1' +
        ', dat_001_2, che_001, rec_009, rec_010, for_001, mes_001 FROM cr' +
        'eceber'
      'WHERE'
      '  rec_001 = :rec_001 AND emp_001 = :emp_001')
    SQL.Strings = (
      'SELECT REC.REC_001,'
      '       REC.EMP_001,'
      '       REC.REC_002,'
      '       REC.REC_003,'
      '       REC.REC_004,'
      '       REC.REC_005,'
      '       REC.REC_006,'
      '       REC.CLI_001,'
      '       REC.PCG_001,'
      '       CLI.CLI_002,'
      '       PCG.PCG_002,'
      '       REC.REC_008,'
      '       REC.REC_009,'
      '       REC.REC_010,'
      '       REC.CHE_001,'
      '       REC.MES_001,'
      '       MES.MES_002,'
      '       CHE.CHE_008,'
      '       REC.FOR_001,'
      '       FORM.FOR_002,'
      
        '       CAST(FN_SITUACOES(rec.SIT_001) AS VARCHAR(40)) AS SITUACA' +
        'O,'
      '       (CAST ((CASE REC.SIT_001'
      '          WHEN 8'
      
        '             THEN (CASE WHEN USU_2.USU_002 IS NULL THEN USU_1.US' +
        'U_002 ELSE USU_2.USU_002 END)'
      '          WHEN 7'
      '             THEN USU_4.USU_002'
      '          WHEN 2'
      '             THEN USU_3.USU_002'
      '       END) AS VARCHAR(80))) AS USU_SIT,'
      '       (CASE REC.SIT_001'
      '          WHEN 8'
      
        '             THEN (CASE WHEN REC.DAT_001_2 IS NULL THEN REC.DAT_' +
        '001_1 ELSE REC.DAT_001_2 END)'
      '          WHEN 7'
      '             THEN REC.DAT_001_4'
      '          WHEN 2'
      '             THEN REC.DAT_001_3'
      '       END) AS DAT_SIT,'
      '       USU_1.USU_002 AS INCLUSAO,'
      '       USU_2.USU_002 AS EDICAO,'
      '       REC.USU_001_1,'
      '       REC.USU_001_2,'
      '       REC.DAT_001_1,'
      '       REC.DAT_001_2'
      ''
      'FROM CRECEBER REC'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = REC.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = REC.USU_001_2' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_3 ON (USU_3.USU_001 = REC.USU_001_3' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_4 ON (USU_4.USU_001 = REC.USU_001_4' +
        ')'
      
        'LEFT OUTER JOIN PCG PCG ON (PCG.EMP_001 = REC.EMP_001) AND (PCG.' +
        'PCG_001 = REC.PCG_001)'
      
        'LEFT OUTER JOIN CLIENTES CLI ON (CLI.EMP_001 = REC.EMP_001) AND ' +
        '(CLI.CLI_001 = REC.CLI_001)'
      
        'LEFT OUTER JOIN CHEQUE CHE ON (CHE.EMP_001 = REC.EMP_001) AND (C' +
        'HE.CHE_001 = REC.CHE_001)'
      
        'LEFT OUTER JOIN FORMAPGTO FORM ON (FORM.EMP_001 = REC.EMP_001) A' +
        'ND (FORM.FOR_001 = REC.FOR_001)'
      
        'LEFT OUTER JOIN MESA MES ON (MES.EMP_001 = REC.EMP_001) AND (MES' +
        '.MES_001 = REC.MES_001)'
      ''
      'WHERE REC.EMP_001 = :EMP'
      '  AND REC.REC_001 = :ID')
    AfterOpen = qrDetalheAfterOpen
    OnCalcFields = qrDetalheCalcFields
    Left = 286
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qrDetalherec_001: TIntegerField
      FieldName = 'rec_001'
      Required = True
      OnGetText = qrDetalherec_001GetText
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalherec_002: TDateTimeField
      FieldName = 'rec_002'
      Required = True
    end
    object qrDetalherec_003: TDateTimeField
      FieldName = 'rec_003'
      Required = True
    end
    object qrDetalherec_004: TFloatField
      FieldName = 'rec_004'
      Required = True
    end
    object qrDetalherec_005: TFloatField
      FieldName = 'rec_005'
    end
    object qrDetalherec_006: TFloatField
      FieldName = 'rec_006'
    end
    object qrDetalhecli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrDetalhepcg_001: TIntegerField
      FieldName = 'pcg_001'
      Required = True
    end
    object qrDetalhecli_002: TWideStringField
      FieldName = 'cli_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrDetalhepcg_002: TWideStringField
      FieldName = 'pcg_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrDetalheusu_sit: TWideStringField
      FieldName = 'usu_sit'
      ReadOnly = True
      Size = 80
    end
    object qrDetalhedat_sit: TDateTimeField
      FieldName = 'dat_sit'
      ReadOnly = True
    end
    object qrDetalheinclusao: TWideStringField
      FieldName = 'inclusao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrDetalheedicao: TWideStringField
      FieldName = 'edicao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalheusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalhedat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrDetalheTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      Size = 40
    end
    object qrDetalherec_008: TFloatField
      FieldName = 'rec_008'
    end
    object qrDetalherec_009: TDateTimeField
      FieldName = 'rec_009'
    end
    object qrDetalherec_010: TWideMemoField
      FieldName = 'rec_010'
      BlobType = ftWideMemo
    end
    object qrDetalheche_001: TIntegerField
      FieldName = 'che_001'
    end
    object qrDetalheche_008: TWideStringField
      FieldName = 'che_008'
    end
    object qrDetalhefor_001: TIntegerField
      FieldName = 'for_001'
    end
    object qrDetalhefor_002: TWideStringField
      FieldName = 'for_002'
      Size = 40
    end
    object qrDetalhemes_001: TIntegerField
      FieldName = 'mes_001'
    end
    object qrDetalhemes_002: TWideStringField
      FieldName = 'mes_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
  inherited dsDetalhe: TDataSource
    OnStateChange = dsDetalheStateChange
  end
  inherited cdsCFG: TClientDataSet
    Left = 660
  end
  object qrRecebido: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT REC.REC_001,'
      '       REC.EMP_001,'
      '       REC.REC_002,'
      '       REC.REC_003,'
      '       REC.REC_004,'
      '       REC.REC_005,'
      '       REC.REC_006,'
      '       REC.REC_008,'
      '       CLI.CLI_002,'
      '       PCG.PCG_002,'
      '       REC.DAT_001_3,'
      '       REC.SIT_001,'
      '       REC.REC_009,'
      '       REC.CHE_001,'
      '       CHE.CHE_008,'
      '       REC.FOR_001,'
      '       FORM.FOR_002,'
      '       REC.CLI_001,'
      '       REC.PCG_001,'
      
        '       CAST(FN_SITUACOES(rec.SIT_001) AS VARCHAR(40)) AS SITUACA' +
        'O,'
      '       (CASE REC.SIT_001'
      '          WHEN 7'
      '             THEN USU_BAX.USU_002'
      '       END) AS USU_BAIXA,'
      '       (CASE REC.SIT_001'
      '          WHEN 7'
      '             THEN REC.DAT_001_4'
      '       END) AS DATA_BAIXA'
      ''
      'FROM CRECEBER REC'
      
        'LEFT OUTER JOIN USUARIOS USU_BAX ON (USU_BAX.USU_001 = REC.USU_0' +
        '01_4)'
      
        'LEFT OUTER JOIN PCG PCG ON (PCG.EMP_001 = REC.EMP_001) AND (PCG.' +
        'PCG_001 = REC.PCG_001)'
      
        'LEFT OUTER JOIN CLIENTES CLI ON (CLI.EMP_001 = REC.EMP_001) AND ' +
        '(CLI.CLI_001 = REC.CLI_001)'
      
        'LEFT OUTER JOIN CHEQUE CHE ON (CHE.EMP_001 = REC.EMP_001) AND (C' +
        'HE.CHE_001 = REC.CHE_001)'
      
        'LEFT OUTER JOIN FORMAPGTO FORM ON (FORM.EMP_001 = REC.EMP_001) A' +
        'ND (FORM.FOR_001 = REC.FOR_001)'
      ''
      'WHERE REC.EMP_001 = :EMP'
      'AND   REC.REC_011 = :REC')
    BeforeOpen = qrRecebidoBeforeOpen
    Left = 482
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'REC'
      end>
    object qrRecebidorec_001: TIntegerField
      FieldName = 'rec_001'
      Required = True
    end
    object qrRecebidoemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrRecebidorec_002: TDateTimeField
      FieldName = 'rec_002'
      Required = True
    end
    object qrRecebidorec_003: TDateTimeField
      FieldName = 'rec_003'
      Required = True
    end
    object qrRecebidorec_004: TFloatField
      FieldName = 'rec_004'
      Required = True
    end
    object qrRecebidorec_005: TFloatField
      FieldName = 'rec_005'
    end
    object qrRecebidorec_006: TFloatField
      FieldName = 'rec_006'
    end
    object qrRecebidorec_008: TFloatField
      FieldName = 'rec_008'
    end
    object qrRecebidocli_002: TWideStringField
      FieldName = 'cli_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrRecebidopcg_002: TWideStringField
      FieldName = 'pcg_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRecebidodat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
    object qrRecebidosit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrRecebidorec_009: TDateTimeField
      FieldName = 'rec_009'
    end
    object qrRecebidoche_001: TIntegerField
      FieldName = 'che_001'
    end
    object qrRecebidoche_008: TWideStringField
      FieldName = 'che_008'
      ReadOnly = True
    end
    object qrRecebidofor_001: TIntegerField
      FieldName = 'for_001'
    end
    object qrRecebidofor_002: TWideStringField
      FieldName = 'for_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRecebidocli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrRecebidopcg_001: TIntegerField
      FieldName = 'pcg_001'
      Required = True
    end
    object qrRecebidosituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 40
    end
    object qrRecebidousu_baixa: TWideMemoField
      FieldName = 'usu_baixa'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRecebidodata_baixa: TDateTimeField
      FieldName = 'data_baixa'
      ReadOnly = True
    end
  end
  object dsRecebido: TDataSource
    DataSet = qrRecebido
    Left = 566
    Top = 2
  end
end
