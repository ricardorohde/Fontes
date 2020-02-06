inherited frmDetalheEncerraVenda: TfrmDetalheEncerraVenda
  Caption = 'Encerrar Pedido'
  ClientHeight = 533
  ClientWidth = 700
  ExplicitWidth = 706
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 700
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 830
      end>
    ExplicitWidth = 700
  end
  object pcAbas: TcxPageControl [1]
    Left = 0
    Top = 38
    Width = 700
    Height = 221
    Align = alTop
    TabOrder = 1
    TabStop = False
    Properties.ActivePage = tsDados
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 217
    ClientRectLeft = 4
    ClientRectRight = 696
    ClientRectTop = 24
    object tsDados: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 0
      object Label7: TLabel
        Left = 11
        Top = 10
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label1: TLabel
        Left = 109
        Top = 10
        Width = 32
        Height = 13
        Caption = 'Pedido'
      end
      object Label2: TLabel
        Left = 11
        Top = 52
        Width = 68
        Height = 13
        Caption = 'Mesa / Cliente'
      end
      object Label3: TLabel
        Left = 362
        Top = 10
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label30: TLabel
        Left = 11
        Top = 97
        Width = 102
        Height = 13
        Caption = 'Forma de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 397
        Top = 97
        Width = 116
        Height = 13
        Caption = 'Condi'#231#227'o de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbValor: TLabel
        Left = 339
        Top = 97
        Width = 38
        Height = 13
        Caption = 'Entrada'
      end
      object Label5: TLabel
        Left = 259
        Top = 10
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor do Pedido'
      end
      object Label6: TLabel
        Left = 11
        Top = 144
        Width = 53
        Height = 13
        Caption = 'Acr'#233's. (%)'
      end
      object Label8: TLabel
        Left = 74
        Top = 144
        Width = 49
        Height = 13
        Caption = 'Desc. (%)'
      end
      object Label9: TLabel
        Left = 405
        Top = 144
        Width = 74
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Total do Pedido'
        ParentBiDiMode = False
      end
      object Label10: TLabel
        Left = 181
        Top = 144
        Width = 24
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Valor'
        ParentBiDiMode = False
      end
      object Label11: TLabel
        Left = 520
        Top = 144
        Width = 68
        Height = 13
        Caption = 'Valor recebido'
      end
      object Label12: TLabel
        Left = 648
        Top = 144
        Width = 27
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Troco'
        ParentBiDiMode = False
      end
      object Label13: TLabel
        Left = 215
        Top = 144
        Width = 91
        Height = 13
        Caption = 'Maquina de Cart'#227'o'
      end
      object edCodigo: TcxDBTextEdit
        Left = 11
        Top = 27
        AutoSize = False
        DataBinding.DataField = 'enc_001'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 4
        Height = 22
        Width = 78
      end
      object edVenda: TcxDBTextEdit
        Left = 109
        Top = 27
        AutoSize = False
        DataBinding.DataField = 'ven_029'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 5
        Height = 22
        Width = 93
      end
      object edForma: TcxDBButtonEdit
        Tag = 28
        Left = 11
        Top = 114
        Margins.Left = 4
        Margins.Top = 1
        DataBinding.DataField = 'for_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 70
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 82
        Top = 116
        AutoSize = False
        DataBinding.DataField = 'for_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 6
        Height = 22
        Width = 200
      end
      object edCondicao: TcxDBButtonEdit
        Tag = 27
        Left = 398
        Top = 114
        Margins.Left = 4
        Margins.Top = 1
        DataBinding.DataField = 'con_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 70
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 470
        Top = 114
        AutoSize = False
        DataBinding.DataField = 'con_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 7
        Height = 22
        Width = 205
      end
      object gbusuarios: TGroupBox
        Left = 461
        Top = 10
        Width = 214
        Height = 66
        Enabled = False
        TabOrder = 8
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
          Left = 3
          Top = 43
          Width = 208
          Height = 13
          Alignment = taCenter
          DataField = 'situacao'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object edValorVenda: TcxDBTextEdit
        Left = 219
        Top = 27
        AutoSize = False
        DataBinding.DataField = 'enc_003'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 9
        Height = 22
        Width = 114
      end
      object edAcrescimo: TcxDBTextEdit
        Left = 11
        Top = 161
        AutoSize = False
        DataBinding.DataField = 'enc_006'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 10
        Height = 22
        Width = 53
      end
      object edDesconto: TcxDBTextEdit
        Left = 74
        Top = 161
        AutoSize = False
        DataBinding.DataField = 'enc_007'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 11
        Height = 22
        Width = 49
      end
      object edValor: TcxDBTextEdit
        Left = 129
        Top = 161
        AutoSize = False
        DataBinding.DataField = 'valor'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 13
        Height = 22
        Width = 76
      end
      object edCliente: TDBEdit
        Left = 11
        Top = 71
        Width = 322
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'mes_002'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object edTroco: TcxDBTextEdit
        Left = 594
        Top = 161
        AutoSize = False
        DataBinding.DataField = 'troco'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 12
        Height = 22
        Width = 81
      end
      object edTotal: TcxDBTextEdit
        Left = 374
        Top = 161
        AutoSize = False
        DataBinding.DataField = 'total'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 14
        Height = 22
        Width = 105
      end
      object edValidade: TcxDBDateEdit
        Left = 362
        Top = 27
        AutoSize = False
        DataBinding.DataField = 'enc_002'
        DataBinding.DataSource = dsDetalhe
        TabOrder = 0
        Height = 22
        Width = 93
      end
      object edtObsGeral: TEdit
        Left = 215
        Top = 161
        Width = 148
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
    object tsObs: TcxTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 1
      object edObs: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'enc_004'
        DataBinding.DataSource = dsDetalhe
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 193
        Width = 692
      end
    end
  end
  object pnParcela: TPanel [2]
    Left = 0
    Top = 259
    Width = 700
    Height = 274
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object gbParcela: TGroupBox
      Left = 0
      Top = 0
      Width = 700
      Height = 274
      Align = alClient
      Caption = ' Parcelas '
      TabOrder = 0
      object GridParcelas: TcxGrid
        Left = 2
        Top = 15
        Width = 696
        Height = 257
        Align = alClient
        TabOrder = 0
        TabStop = False
        object GridParcelasDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCdsParcela
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object GridParcelasDBTableView1ite_004: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'ite_004'
            Options.Editing = False
          end
          object GridParcelasDBTableView1ite_002: TcxGridDBColumn
            Caption = 'Data do Vencimento'
            DataBinding.FieldName = 'ite_002'
            Width = 125
          end
          object GridParcelasDBTableView1ite_005: TcxGridDBColumn
            Caption = 'Acr'#233'scimo (%)'
            DataBinding.FieldName = 'ite_005'
            Options.Editing = False
            Width = 100
          end
          object GridParcelasDBTableView1ite_003: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'ite_003'
            Options.Editing = False
            Width = 130
          end
        end
        object GridParcelasLevel1: TcxGridLevel
          GridView = GridParcelasDBTableView1
        end
      end
    end
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO encerravenda'
      
        '  (enc_001, emp_001, ven_001, cli_001, enc_002, enc_003, for_001' +
        ', con_001, enc_004, enc_005, sit_001, usu_001_1, dat_001_1, enc_' +
        '006, enc_007)'
      'VALUES'
      
        '  (:enc_001, :emp_001, :ven_001, :cli_001, :enc_002, :enc_003, :' +
        'for_001, :con_001, :enc_004, :enc_005, :sit_001, :usu_001_1, :da' +
        't_001_1, :enc_006, :enc_007)')
    SQLDelete.Strings = (
      'DELETE FROM encerravenda'
      'WHERE'
      '  enc_001 = :Old_enc_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE encerravenda'
      'SET'
      
        '  enc_001 = :enc_001, emp_001 = :emp_001, ven_001 = :ven_001, cl' +
        'i_001 = :cli_001, enc_002 = :enc_002, enc_003 = :enc_003, for_00' +
        '1 = :for_001, con_001 = :con_001, enc_004 = :enc_004, enc_005 = ' +
        ':enc_005, sit_001 = :sit_001, usu_001_1 = :usu_001_1, dat_001_1 ' +
        '= :dat_001_1, enc_006 = :enc_006, enc_007 = :enc_007'
      'WHERE'
      '  enc_001 = :Old_enc_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM encerravenda'
      'WHERE'
      '  enc_001 = :Old_enc_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT enc_001, emp_001, ven_001, cli_001, enc_002, enc_003, for' +
        '_001, con_001, enc_004, enc_005, sit_001, usu_001_1, dat_001_1, ' +
        'enc_006, enc_007 FROM encerravenda'
      'WHERE'
      '  enc_001 = :enc_001 AND emp_001 = :emp_001')
    SQL.Strings = (
      'SELECT ENC.ENC_001'
      '     , ENC.EMP_001'
      '     , ENC.VEN_001'
      '     , ENC.CLI_001'
      '     , CAST(CLI.CLI_003 AS VARCHAR(130)) AS CLIENTE'
      '     , ENC.ENC_002'
      '     , ENC.ENC_003'
      '     , ENC.ENC_004'
      '     , ENC.ENC_005'
      '     , ENC.ENC_006'
      '     , ENC.ENC_007'
      '     , ENC.FOR_001'
      '     , PGT.FOR_002'
      '     , ENC.CON_001'
      '     , CON.CON_002'
      '     , CON.CON_003'
      '     , CON.CON_004'
      '     , ENC.MES_001'
      '     , MES.MES_002'
      '     , 0.00 AS RECEBIDO'
      '     , 0.00 AS TOTAL    '
      '     , 0.00 AS CREDITO      '
      '     , ENC.SIT_001'
      '     , VEN.VEN_029'
      '     , ENC.USU_001_1'
      '     , ENC.DAT_001_1'
      '     , USU_1.USU_002 AS INCLUSAO'
      
        '     , CAST(FN_SITUACOES(ENC.SIT_001)  AS VARCHAR(40)) AS SITUAC' +
        'AO'
      'FROM ENCERRAVENDA ENC'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = ENC.USU_001_1' +
        ')     '
      
        'LEFT OUTER JOIN CLIENTES CLI ON (CLI.EMP_001 = ENC.EMP_001) AND ' +
        '(CLI.CLI_001 = ENC.CLI_001)'
      
        'LEFT OUTER JOIN FORMAPGTO PGT ON (PGT.EMP_001 = ENC.EMP_001) AND' +
        ' (PGT.FOR_001 = ENC.FOR_001)'
      
        'LEFT OUTER JOIN CONDICAOPGTO CON ON (CON.EMP_001 = ENC.EMP_001) ' +
        'AND (CON.CON_001 = ENC.CON_001)'
      
        'LEFT OUTER JOIN MESA MES ON (MES.EMP_001 = ENC.EMP_001) AND (MES' +
        '.MES_001 = ENC.MES_001)'
      
        'LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ENC.EMP_001) AND (VE' +
        'N.VEN_001 = ENC.VEN_001)'
      ''
      'WHERE ENC.EMP_001 = :EMP'
      '  AND ENC.ENC_001 = :ID')
    AfterOpen = qrDetalheAfterOpen
    AfterInsert = qrDetalheAfterInsert
    AfterCancel = qrDetalheAfterCancel
    OnCalcFields = qrDetalheCalcFields
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object qrDetalheenc_001: TIntegerField
      FieldName = 'enc_001'
      Required = True
      OnGetText = qrDetalheenc_001GetText
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalheven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrDetalhecli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrDetalhecliente: TWideStringField
      FieldName = 'cliente'
      ReadOnly = True
      Size = 130
    end
    object qrDetalheenc_002: TDateTimeField
      FieldName = 'enc_002'
    end
    object qrDetalheenc_003: TFloatField
      FieldName = 'enc_003'
    end
    object qrDetalheenc_004: TWideMemoField
      FieldName = 'enc_004'
      BlobType = ftWideMemo
    end
    object qrDetalheenc_005: TFloatField
      FieldName = 'enc_005'
      OnChange = qrDetalheenc_005Change
    end
    object qrDetalhefor_001: TIntegerField
      FieldName = 'for_001'
      Required = True
    end
    object qrDetalhefor_002: TWideStringField
      FieldName = 'for_002'
      Required = True
      Size = 40
    end
    object qrDetalhecon_001: TIntegerField
      FieldName = 'con_001'
      Required = True
      OnChange = qrDetalhecon_001Change
    end
    object qrDetalhecon_002: TWideStringField
      FieldName = 'con_002'
      Required = True
      Size = 100
    end
    object qrDetalhesit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalheinclusao: TWideStringField
      FieldName = 'inclusao'
      Required = True
      Size = 30
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      Size = 40
    end
    object qrDetalheenc_006: TFloatField
      FieldName = 'enc_006'
      OnChange = qrDetalheenc_006Change
    end
    object qrDetalheenc_007: TFloatField
      FieldName = 'enc_007'
      OnChange = qrDetalheenc_007Change
    end
    object qrDetalhecon_003: TIntegerField
      FieldName = 'con_003'
    end
    object qrDetalhecon_004: TIntegerField
      FieldName = 'con_004'
    end
    object qrDetalhevalor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor'
      Calculated = True
    end
    object qrDetalherecebido: TFloatField
      FieldName = 'recebido'
    end
    object qrDetalhetroco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'troco'
      Calculated = True
    end
    object qrDetalhetotal: TFloatField
      FieldName = 'total'
    end
    object qrDetalhecredito: TFloatField
      FieldName = 'credito'
      ReadOnly = True
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
    object qrDetalheven_029: TIntegerField
      FieldName = 'ven_029'
    end
  end
  inherited cdsCFG: TClientDataSet
    Left = 460
    Top = 6
  end
  object qrParcela: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO encerravendaitem'
      
        '  (emp_001, enc_001, ite_001, ite_002, ite_003, ite_004, ite_005' +
        ')'
      'VALUES'
      
        '  (:emp_001, :enc_001, :ite_001, :ite_002, :ite_003, :ite_004, :' +
        'ite_005)')
    SQLDelete.Strings = (
      'DELETE FROM encerravendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND enc_001 = :Old_enc_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE encerravendaitem'
      'SET'
      
        '  emp_001 = :emp_001, enc_001 = :enc_001, ite_001 = :ite_001, it' +
        'e_002 = :ite_002, ite_003 = :ite_003, ite_004 = :ite_004, ite_00' +
        '5 = :ite_005'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND enc_001 = :Old_enc_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLLock.Strings = (
      'SELECT * FROM encerravendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND enc_001 = :Old_enc_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, enc_001, ite_001, ite_002, ite_003, ite_004, ite' +
        '_005 FROM encerravendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND enc_001 = :enc_001 AND ite_001 = :ite_0' +
        '01')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT EMP_001'
      '     , ENC_001 '
      '     , ITE_001'
      '     , ITE_002'
      '     , ITE_003'
      '     , ITE_004'
      '     , ITE_005'
      'FROM ENCERRAVENDAITEM  '
      'WHERE EMP_001 = :EMP'
      'AND   ENC_001 = :ENC'
      'ORDER BY ITE_004')
    BeforeOpen = qrParcelaBeforeOpen
    OnNewRecord = qrParcelaNewRecord
    Left = 516
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENC'
        Value = nil
      end>
    object qrParcelaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrParcelaenc_001: TIntegerField
      FieldName = 'enc_001'
      Required = True
    end
    object qrParcelaite_001: TIntegerField
      FieldName = 'ite_001'
      Required = True
    end
    object qrParcelaite_002: TDateTimeField
      FieldName = 'ite_002'
    end
    object qrParcelaite_003: TFloatField
      FieldName = 'ite_003'
    end
    object qrParcelaite_004: TIntegerField
      FieldName = 'ite_004'
    end
    object qrParcelaite_005: TFloatField
      FieldName = 'ite_005'
    end
  end
  object dsParcela: TDataSource
    DataSet = qrParcela
    Left = 572
    Top = 18
  end
  object dsCdsParcela: TDataSource
    DataSet = cdsParcela
    Left = 224
    Top = 348
  end
  object cdsParcela: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsParcelaNewRecord
    Left = 224
    Top = 304
    object cdsParcelaite_002: TDateTimeField
      FieldName = 'ite_002'
    end
    object cdsParcelaite_003: TFloatField
      FieldName = 'ite_003'
    end
    object cdsParcelaite_004: TIntegerField
      FieldName = 'ite_004'
    end
    object cdsParcelaite_005: TFloatField
      FieldName = 'ite_005'
    end
  end
  object RepVenda: TfrxReport
    Version = '5.3.16'
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
    Left = 346
    Top = 296
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
        FillType = ftBrush
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
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 98.267780000000000000
        end
        object Picture1: TfrxPictureView
          Width = 170.078850000000000000
          Height = 98.267780000000000000
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
        FillType = ftBrush
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
        end
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 120.944960000000000000
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo43: TfrxMemoView
          Left = 4.000000000000000000
          Top = 121.622140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = dbParcela
        DataSetName = 'dbParcela'
        RowCount = 0
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo39: TfrxMemoView
          Left = 4.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape6: TfrxShapeView
          Width = 718.110700000000000000
          Height = 37.795300000000000000
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape7: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
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
  object dbVenda: TfrxDBDataset
    UserName = 'dbVenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ven_001=ven_001'
      'emp_001=emp_001'
      'ven_002=ven_002'
      'fnc_001=fnc_001'
      'fnc_002=fnc_002'
      'ven_003=ven_003'
      'ven_004=ven_004'
      'ven_005=ven_005'
      'ven_007=ven_007'
      'ven_008=ven_008'
      'ven_009=ven_009'
      'cli_001=cli_001'
      'cli_003=cli_003'
      'cep_003=cep_003'
      'cli_004=cli_004'
      'cep_004=cep_004'
      'cli_008=cli_008'
      'cid_002=cid_002'
      'ven_006=ven_006'
      'ven_010=ven_010'
      'ven_011=ven_011'
      'ven_012=ven_012'
      'ven_013=ven_013'
      'ven_014=ven_014'
      'ven_017=ven_017'
      'ven_018=ven_018'
      'fnc_002_1=fnc_002_1'
      'ven_019=ven_019'
      'ven_020=ven_020'
      'ven_021=ven_021'
      'ven_022=ven_022'
      'cor_001=cor_001'
      'cor_002=cor_002'
      'mon_001=mon_001'
      'mon_002=mon_002'
      'mod_001=mod_001'
      'mod_002=mod_002'
      'enc_001=enc_001'
      'formpagto=formpagto'
      'condpagto=condpagto'
      'entrada=entrada'
      'acrescimo=acrescimo'
      'desconto=desconto'
      'valorvenda=valorvenda'
      'ven_015=ven_015'
      'ven_016=ven_016')
    DataSet = qrVenda
    BCDToCurrency = False
    Left = 416
    Top = 296
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
    Left = 274
    Top = 298
  end
  object qrVenda: TUniQuery
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
    Left = 534
    Top = 286
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
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
    Left = 582
    Top = 288
  end
  object qrVendaParcela: TUniQuery
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
    Active = True
    BeforeOpen = qrVendaParcelaBeforeOpen
    Left = 534
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ENC'
        Value = nil
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
  object dsVendaParcela: TDataSource
    DataSet = qrVendaParcela
    Left = 582
    Top = 336
  end
  object dbParcela: TfrxDBDataset
    UserName = 'dbParcela'
    CloseDataSource = False
    DataSet = qrVendaParcela
    BCDToCurrency = False
    Left = 418
    Top = 358
  end
  object dsVendaItens: TDataSource
    DataSet = qrVendaItens
    Left = 584
    Top = 386
  end
  object qrVendaItens: TUniQuery
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
    Left = 536
    Top = 382
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VEN'
        Value = nil
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
  object dbVendaItens: TfrxDBDataset
    UserName = 'dbVendaItens'
    CloseDataSource = False
    DataSet = qrVendaItens
    BCDToCurrency = False
    Left = 274
    Top = 358
  end
  object RepVendaOrdem: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41499.012642488400000000
    ReportOptions.LastChange = 41517.477058981480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 348
    Top = 346
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
        FillType = ftBrush
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
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 98.267780000000000000
        end
        object Picture1: TfrxPictureView
          Width = 170.078850000000000000
          Height = 98.267780000000000000
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
        FillType = ftBrush
        Height = 246.346630000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = dbVenda
        DataSetName = 'dbVenda'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 0.220470000000000000
          Top = 188.653680000000000000
          Width = 718.110700000000000000
          Height = 56.692950000000000000
        end
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 188.976500000000000000
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
        object Memo43: TfrxMemoView
          Left = 4.000000000000000000
          Top = 227.448980000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo90: TfrxMemoView
          Left = 3.779530000000000000
          Top = 151.181200000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 771.024120000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        DataSet = dbParcela
        DataSetName = 'dbParcela'
        RowCount = 0
        object Shape5: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo39: TfrxMemoView
          Left = 4.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape6: TfrxShapeView
          Width = 718.110700000000000000
          Height = 37.795300000000000000
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        DataSet = dbVendaItens
        DataSetName = 'dbVendaItens'
        RowCount = 0
        object Shape7: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
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
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 608.504330000000000000
        Width = 718.110700000000000000
        DataSet = dbVenda
        DataSetName = 'dbVenda'
        RowCount = 0
        object Shape8: TfrxShapeView
          Width = 718.110700000000000000
          Height = 102.047310000000000000
        end
        object Memo92: TfrxMemoView
          Width = 120.944960000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 374.173470000000000000
          Height = 102.047310000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
end
