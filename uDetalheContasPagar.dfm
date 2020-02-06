inherited frmDetalheContasPagar: TfrmDetalheContasPagar
  Caption = 'Cadastro do Contas a Pagar'
  ClientHeight = 430
  ClientWidth = 904
  ExplicitWidth = 910
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 904
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 920
      end>
    ExplicitWidth = 904
    inherited pnPadrao: TPanel
      Width = 920
      ExplicitWidth = 920
      inherited tBarPadrao: TToolBar
        Width = 920
        ExplicitWidth = 920
      end
    end
  end
  object pcAbas: TcxPageControl [1]
    Left = 0
    Top = 38
    Width = 904
    Height = 392
    Align = alClient
    TabOrder = 1
    TabStop = False
    Properties.ActivePage = tsDados
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 388
    ClientRectLeft = 4
    ClientRectRight = 900
    ClientRectTop = 24
    object tsDados: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 0
      object Label1: TLabel
        Left = 10
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 97
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Pedido'
        FocusControl = edPedido
      end
      object Label10: TLabel
        Left = 233
        Top = 15
        Width = 64
        Height = 13
        Caption = 'Data Emiss'#227'o'
        FocusControl = cxDBDateEdit1
      end
      object Label11: TLabel
        Left = 378
        Top = 15
        Width = 81
        Height = 13
        Caption = 'Data Vencimento'
        FocusControl = cxDBDateEdit2
      end
      object Label12: TLabel
        Left = 378
        Top = 160
        Width = 87
        Height = 13
        Caption = 'Ordem de Compra'
        FocusControl = cxDBButtonEdit1
        Visible = False
      end
      object Label27: TLabel
        Left = 10
        Top = 170
        Width = 20
        Height = 13
        Caption = 'PCG'
        FocusControl = edPCG
      end
      object Label8: TLabel
        Left = 10
        Top = 66
        Width = 82
        Height = 13
        Caption = 'C'#243'digo de Barras'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 523
        Top = 15
        Width = 85
        Height = 13
        Caption = 'Data Prorroga'#231#227'o'
        FocusControl = cxDBDateEdit3
      end
      object Label13: TLabel
        Left = 378
        Top = 64
        Width = 102
        Height = 13
        Caption = 'Forma de Pagamento'
        FocusControl = cxDBButtonEdit2
      end
      object Label16: TLabel
        Left = 10
        Top = 222
        Width = 37
        Height = 13
        Caption = 'Cheque'
        FocusControl = cxDBButtonEdit3
      end
      object Label19: TLabel
        Left = 12
        Top = 116
        Width = 53
        Height = 13
        Caption = 'Favorecido'
      end
      object lbParcela: TLabel
        Left = 378
        Top = 220
        Width = 35
        Height = 13
        Caption = 'Parcela'
        Visible = False
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 10
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'pag_001'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 0
        Height = 22
        Width = 78
      end
      object edPedido: TcxDBTextEdit
        Left = 97
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'pag_011'
        DataBinding.DataSource = dsDetalhe
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Height = 22
        Width = 122
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 233
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'pag_012'
        DataBinding.DataSource = dsDetalhe
        Properties.Kind = ckDateTime
        TabOrder = 2
        Height = 22
        Width = 133
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 378
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'pag_002'
        DataBinding.DataSource = dsDetalhe
        Properties.Kind = ckDateTime
        TabOrder = 3
        Height = 22
        Width = 133
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Tag = 24
        Left = 378
        Top = 177
        Margins.Left = 4
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ord_002'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 15
        Visible = False
        Height = 22
        Width = 119
      end
      object edPCG: TcxDBButtonEdit
        Tag = 17
        Left = 10
        Top = 185
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
        TabOrder = 9
        Height = 22
        Width = 84
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 100
        Top = 185
        AutoSize = False
        DataBinding.DataField = 'pcg_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 16
        Height = 22
        Width = 252
      end
      object gbTotais: TcxGroupBox
        Left = 10
        Top = 269
        TabOrder = 12
        Height = 81
        Width = 793
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
        object Label7: TLabel
          Left = 398
          Top = 20
          Width = 26
          Height = 13
          Caption = 'Juros'
          FocusControl = edJuros
        end
        object Label17: TLabel
          Left = 643
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Total'
          FocusControl = edTotal
        end
        object Label18: TLabel
          Left = 525
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Recebido'
          FocusControl = edRecebido
        end
        object edDesconto: TRxDBCalcEdit
          Left = 142
          Top = 35
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'pag_004'
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
          DataField = 'pag_003'
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
          DataField = 'pag_005'
          DataSource = dsDetalhe
          ClickKey = 113
          FormatOnEditing = True
          NumGlyphs = 2
          TabOrder = 2
        end
        object edJuros: TRxDBCalcEdit
          Left = 398
          Top = 35
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'pag_006'
          DataSource = dsDetalhe
          ClickKey = 113
          FormatOnEditing = True
          NumGlyphs = 2
          TabOrder = 3
        end
        object edTotal: TcxDBTextEdit
          Left = 643
          Top = 35
          AutoSize = False
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = dsDetalhe
          ParentColor = True
          Properties.Alignment.Horz = taRightJustify
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 4
          Height = 22
          Width = 112
        end
        object edRecebido: TcxDBTextEdit
          Left = 525
          Top = 35
          AutoSize = False
          DataBinding.DataField = 'pag_010'
          DataBinding.DataSource = dsDetalhe
          ParentColor = True
          Properties.Alignment.Horz = taRightJustify
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 5
          Height = 22
          Width = 112
        end
      end
      object DBEdit1: TDBEdit
        Left = 10
        Top = 81
        Width = 356
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'pag_008'
        DataSource = dsDetalhe
        TabOrder = 5
      end
      object gbusuarios: TGroupBox
        Left = 668
        Top = 13
        Width = 214
        Height = 159
        Enabled = False
        TabOrder = 17
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
          Left = 18
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
        Left = 523
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'pag_014'
        DataBinding.DataSource = dsDetalhe
        Properties.Kind = ckDateTime
        TabOrder = 4
        Height = 22
        Width = 133
      end
      object cxDBButtonEdit2: TcxDBButtonEdit
        Tag = 28
        Left = 378
        Top = 81
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'pag_015'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Height = 22
        Width = 84
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 468
        Top = 81
        AutoSize = False
        DataBinding.DataField = 'for_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 18
        Height = 22
        Width = 188
      end
      object cxDBButtonEdit3: TcxDBButtonEdit
        Tag = 26
        Left = 10
        Top = 237
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
        TabOrder = 10
        Height = 22
        Width = 84
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 100
        Top = 237
        AutoSize = False
        DataBinding.DataField = 'che_008'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 19
        Height = 22
        Width = 252
      end
      object edFavorecido: TRxDBComboBox
        Left = 10
        Top = 130
        Width = 93
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'pag_016'
        DataSource = dsDetalhe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Cliente'
          'Fornecedor'
          'Funcion'#225'rio')
        ParentFont = False
        TabOrder = 7
        Values.Strings = (
          '0'
          '1'
          '2')
        OnChange = edFavorecidoChange
      end
      object edCliente: TcxDBButtonEdit
        Tag = 23
        Left = 110
        Top = 130
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
        TabOrder = 13
        Visible = False
        Height = 22
        Width = 84
      end
      object edClienteDesc: TcxDBTextEdit
        Left = 204
        Top = 130
        AutoSize = False
        DataBinding.DataField = 'cli_003'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 20
        Visible = False
        Height = 22
        Width = 456
      end
      object edFuncionario: TcxDBButtonEdit
        Tag = 8
        Left = 110
        Top = 130
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'fnc_001'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 14
        Visible = False
        Height = 22
        Width = 84
      end
      object edFuncionarioDesc: TcxDBTextEdit
        Left = 200
        Top = 130
        AutoSize = False
        DataBinding.DataField = 'fnc_002'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 21
        Visible = False
        Height = 22
        Width = 460
      end
      object edFornecedorDesc: TcxDBTextEdit
        Left = 200
        Top = 130
        AutoSize = False
        DataBinding.DataField = 'for_003'
        DataBinding.DataSource = dsDetalhe
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 22
        Visible = False
        Height = 22
        Width = 460
      end
      object edFornecedor: TcxDBButtonEdit
        Tag = 12
        Left = 110
        Top = 130
        Margins.Left = 4
        Margins.Top = 1
        AutoSize = False
        DataBinding.DataField = 'pag_017'
        DataBinding.DataSource = dsDetalhe
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Visible = False
        Height = 22
        Width = 84
      end
      object edParcela: TRxCalcEdit
        Left = 376
        Top = 237
        Width = 121
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DecimalPlaces = 0
        DisplayFormat = ',0'
        NumGlyphs = 2
        TabOrder = 11
        Value = 1.000000000000000000
        Visible = False
      end
    end
    object tsObs: TcxTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 1
      object edObs: TDBMemo
        Left = 0
        Top = 0
        Width = 896
        Height = 364
        Align = alClient
        DataField = 'pag_007'
        DataSource = dsDetalhe
        TabOrder = 0
      end
    end
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cpagar'
      
        '  (pag_001, emp_001, pag_002, pag_003, for_001, pag_004, pag_005' +
        ', pag_006, pag_007, pag_008, pag_009, pag_010, pcg_001, pag_011,' +
        ' pag_012, ord_001, ent_001, usu_001_1, usu_001_2, dat_001_1, dat' +
        '_001_2, pag_013, che_001, pag_014, pag_015, pag_016, cli_001, fn' +
        'c_001, pag_017)'
      'VALUES'
      
        '  (:pag_001, :emp_001, :pag_002, :pag_003, :for_001, :pag_004, :' +
        'pag_005, :pag_006, :pag_007, :pag_008, :pag_009, :pag_010, :pcg_' +
        '001, :pag_011, :pag_012, :ord_001, :ent_001, :usu_001_1, :usu_00' +
        '1_2, :dat_001_1, :dat_001_2, :pag_013, :che_001, :pag_014, :pag_' +
        '015, :pag_016, :cli_001, :fnc_001, :pag_017)')
    SQLDelete.Strings = (
      'DELETE FROM cpagar'
      'WHERE'
      '  pag_001 = :Old_pag_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE cpagar'
      'SET'
      
        '  pag_001 = :pag_001, emp_001 = :emp_001, pag_002 = :pag_002, pa' +
        'g_003 = :pag_003, for_001 = :for_001, pag_004 = :pag_004, pag_00' +
        '5 = :pag_005, pag_006 = :pag_006, pag_007 = :pag_007, pag_008 = ' +
        ':pag_008, pag_009 = :pag_009, pag_010 = :pag_010, pcg_001 = :pcg' +
        '_001, pag_011 = :pag_011, pag_012 = :pag_012, ord_001 = :ord_001' +
        ', ent_001 = :ent_001, usu_001_1 = :usu_001_1, usu_001_2 = :usu_0' +
        '01_2, dat_001_1 = :dat_001_1, dat_001_2 = :dat_001_2, pag_013 = ' +
        ':pag_013, che_001 = :che_001, pag_014 = :pag_014, pag_015 = :pag' +
        '_015, pag_016 = :pag_016, cli_001 = :cli_001, fnc_001 = :fnc_001' +
        ', pag_017 = :pag_017'
      'WHERE'
      '  pag_001 = :Old_pag_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM cpagar'
      'WHERE'
      '  pag_001 = :Old_pag_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT pag_001, emp_001, pag_002, pag_003, for_001, pag_004, pag' +
        '_005, pag_006, pag_007, pag_008, pag_009, pag_010, pcg_001, pag_' +
        '011, pag_012, ord_001, ent_001, usu_001_1, usu_001_2, dat_001_1,' +
        ' dat_001_2, pag_013, che_001, pag_014, pag_015, pag_016, cli_001' +
        ', fnc_001, pag_017 FROM cpagar'
      'WHERE'
      '  pag_001 = :pag_001 AND emp_001 = :emp_001')
    SQL.Strings = (
      'SELECT PAG.PAG_001,'
      '       PAG.EMP_001,'
      '       PAG.PAG_002,'
      '       PAG.PAG_003,'
      '       PAG.FOR_001,'
      '       FRN.FOR_003,'
      '       PAG.PAG_004,'
      '       PAG.PAG_005,'
      '       PAG.PAG_006,'
      '       PAG.PAG_007,'
      '       PAG.PAG_008,'
      '       PAG.PAG_009,'
      '       PAG.PCG_001,'
      '       PCG.PCG_002,'
      '       PAG.PAG_010,'
      '       PAG.PAG_011,'
      '       PAG.PAG_012,'
      '       PAG.PAG_013,'
      '       PAG.PAG_014,'
      '       PAG.CHE_001,'
      '       CHE.CHE_008,'
      '       PAG.PAG_015,'
      '       PAG.PAG_016,'
      '       PAG.CLI_001,'
      '       CLI.CLI_003,'
      '       PAG.FNC_001,'
      '       FNC.FNC_002,'
      '       FORM.FOR_002,'
      '       PAG.PAG_017,'
      '       (CAST ((CASE PAG.PAG_009'
      '          WHEN 0'
      
        '             THEN (CASE WHEN USU_2.USU_002 IS NULL THEN USU_1.US' +
        'U_002 ELSE USU_2.USU_002 END)'
      '          WHEN 1'
      '             THEN USU_4.USU_002'
      '          WHEN 2'
      '             THEN USU_3.USU_002'
      '       END) AS VARCHAR(80))) AS USU_SIT,'
      '       (CASE PAG.PAG_009'
      '          WHEN 0'
      
        '             THEN (CASE WHEN PAG.DAT_001_2 IS NULL THEN PAG.DAT_' +
        '001_1 ELSE PAG.DAT_001_2 END)'
      '          WHEN 1'
      '             THEN PAG.DAT_001_4'
      '          WHEN 2'
      '             THEN PAG.DAT_001_3'
      '       END) AS DAT_SIT,'
      '       USU_1.USU_002 AS INCLUSAO,'
      '       USU_2.USU_002 AS EDICAO,'
      '       PAG.USU_001_1,'
      '       PAG.USU_001_2,'
      '       PAG.DAT_001_1,'
      '       PAG.DAT_001_2,'
      '       PAG.ORD_001,'
      '       PAG.ENT_001,'
      '       ORD.ORD_002'
      ''
      'FROM CPAGAR PAG'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = PAG.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = PAG.USU_001_2' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_3 ON (USU_3.USU_001 = PAG.USU_001_3' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_4 ON (USU_4.USU_001 = PAG.USU_001_4' +
        ')'
      
        'LEFT OUTER JOIN PCG PCG ON (PCG.EMP_001 = PAG.EMP_001) AND (PCG.' +
        'PCG_001 = PAG.PCG_001)'
      
        'LEFT OUTER JOIN FORNECEDORES FRN ON (FRN.EMP_001 = PAG.EMP_001) ' +
        'AND (FRN.FOR_001 = PAG.PAG_017)'
      
        'LEFT OUTER JOIN ORDENS_COMPRA ORD ON (ORD.EMP_001 = PAG.EMP_001)' +
        ' AND (ORD.ORD_001 = PAG.ORD_001)'
      
        'LEFT OUTER JOIN CHEQUE CHE ON (CHE.EMP_001 = PAG.EMP_001) AND (C' +
        'HE.CHE_001 = PAG.CHE_001)'
      
        'LEFT OUTER JOIN FORMAPGTO FORM ON (FORM.EMP_001 = PAG.EMP_001) A' +
        'ND (FORM.FOR_001 = PAG.PAG_015)'
      
        'LEFT OUTER JOIN CLIENTES CLI ON (CLI.EMP_001 = PAG.EMP_001) AND ' +
        '(CLI.CLI_001 = PAG.CLI_001)'
      
        'LEFT OUTER JOIN FUNCIONARIOS FNC ON (FNC.EMP_001 = PAG.EMP_001) ' +
        'AND (FNC.FNC_001 = PAG.FNC_001)'
      ''
      'WHERE PAG.EMP_001 = :EMP'
      '  AND PAG.PAG_001 = :ID')
    AfterOpen = qrDetalheAfterOpen
    OnCalcFields = qrDetalheCalcFields
    Left = 334
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qrDetalhepag_001: TIntegerField
      FieldName = 'pag_001'
      Required = True
      OnGetText = qrDetalhepag_001GetText
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalhepag_002: TDateTimeField
      FieldName = 'pag_002'
      Required = True
    end
    object qrDetalhepag_003: TFloatField
      FieldName = 'pag_003'
      Required = True
    end
    object qrDetalhefor_001: TIntegerField
      FieldName = 'for_001'
    end
    object qrDetalhefor_003: TWideStringField
      FieldName = 'for_003'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrDetalhepag_004: TFloatField
      FieldName = 'pag_004'
    end
    object qrDetalhepag_005: TFloatField
      FieldName = 'pag_005'
    end
    object qrDetalhepag_006: TFloatField
      FieldName = 'pag_006'
    end
    object qrDetalhepag_008: TWideStringField
      FieldName = 'pag_008'
      Size = 30
    end
    object qrDetalhepag_009: TIntegerField
      FieldName = 'pag_009'
      Required = True
    end
    object qrDetalhepcg_001: TIntegerField
      FieldName = 'pcg_001'
      Required = True
    end
    object qrDetalhepcg_002: TWideStringField
      FieldName = 'pcg_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrDetalhepag_011: TWideStringField
      FieldName = 'pag_011'
      Required = True
      Size = 10
    end
    object qrDetalhepag_012: TDateTimeField
      FieldName = 'pag_012'
      Required = True
    end
    object qrDetalhepag_013: TIntegerField
      FieldName = 'pag_013'
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
    object qrDetalheord_001: TIntegerField
      FieldName = 'ord_001'
    end
    object qrDetalheent_001: TIntegerField
      FieldName = 'ent_001'
    end
    object qrDetalheord_002: TWideStringField
      FieldName = 'ord_002'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qrDetalhetotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qrDetalhesituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'situacao'
      Size = 30
      Calculated = True
    end
    object qrDetalhepag_014: TDateTimeField
      FieldName = 'pag_014'
    end
    object qrDetalhepag_007: TWideMemoField
      FieldName = 'pag_007'
      BlobType = ftWideMemo
    end
    object qrDetalheche_001: TIntegerField
      FieldName = 'che_001'
    end
    object qrDetalheche_008: TWideStringField
      FieldName = 'che_008'
      ReadOnly = True
    end
    object qrDetalhepag_015: TIntegerField
      FieldName = 'pag_015'
    end
    object qrDetalhefor_002: TWideStringField
      FieldName = 'for_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrDetalhepag_010: TFloatField
      FieldName = 'pag_010'
    end
    object qrDetalhepag_016: TIntegerField
      FieldName = 'pag_016'
      Required = True
    end
    object qrDetalhecli_001: TIntegerField
      FieldName = 'cli_001'
    end
    object qrDetalhecli_003: TWideStringField
      FieldName = 'cli_003'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrDetalhefnc_001: TIntegerField
      FieldName = 'fnc_001'
    end
    object qrDetalhefnc_002: TWideStringField
      FieldName = 'fnc_002'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrDetalhepag_017: TIntegerField
      FieldName = 'pag_017'
    end
  end
  inherited dsDetalhe: TDataSource
    OnStateChange = dsDetalheStateChange
  end
end
