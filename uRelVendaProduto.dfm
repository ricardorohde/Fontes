inherited frmRelVendaProduto: TfrmRelVendaProduto
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de vendas de Produtos'
  ClientHeight = 261
  ClientWidth = 364
  ExplicitWidth = 370
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 364
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 729
      end>
    ExplicitWidth = 516
    inherited pnPadrao: TPanel
      Left = 3
      Width = 728
      ExplicitLeft = 3
      ExplicitWidth = 728
      inherited tBarPadrao: TToolBar
        Width = 728
        ExplicitWidth = 728
        object btConf: TToolButton
          Left = 0
          Top = 0
          Caption = 'btConf'
          ImageIndex = 5
          OnClick = btConfClick
        end
        object btCancel: TToolButton
          Left = 31
          Top = 0
          Caption = 'btCancel'
          ImageIndex = 6
          OnClick = btCancelClick
        end
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 38
    Width = 364
    Height = 223
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 516
    ExplicitHeight = 306
    object GroupBox1: TGroupBox
      Left = 12
      Top = 6
      Width = 339
      Height = 75
      Align = alCustom
      Caption = ' Per'#237'odo '
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 20
        Width = 41
        Height = 13
        Caption = 'Dt. in'#237'cio'
      end
      object Label2: TLabel
        Left = 200
        Top = 20
        Width = 32
        Height = 13
        Caption = 'Dt. fim'
      end
      object edDtIni: TDateEdit
        Left = 14
        Top = 39
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object edDtFim: TDateEdit
        Left = 200
        Top = 39
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object rgFiltro: TRadioGroup
      Left = 12
      Top = 87
      Width = 339
      Height = 60
      Caption = ' Filtrar por '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Mesa'
        'Delivery')
      TabOrder = 1
    end
    object rgImpressora: TRadioGroup
      Left = 12
      Top = 153
      Width = 339
      Height = 60
      Caption = ' Impressora '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Laser A4'
        'N'#227'o Fiscal')
      TabOrder = 2
    end
  end
  object qrItensVenda: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT MAT.MAT_003'
      '     , MAT.MAT_004'
      '     , SUM(ITE.ITE_002) AS QTDEVENDA'
      '     , SUM(ITE.ITE_005) AS VLRVENDA'
      '     , TO_CHAR(VEN.VEN_004, '#39'dd/mm/YYYY'#39') AS VEN_004'
      '     , (SELECT SUM(VENDAITEM.ITE_005)'
      '          FROM VENDAITEM'
      
        '          LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = VENDAITEM.EM' +
        'P_001) AND (VENDA.VEN_001 = VENDAITEM.VEN_001)'
      '         WHERE VENDAITEM.EMP_001 = :EMP'
      
        '           AND TO_CHAR(VENDA.VEN_004, '#39'dd/mm/YYYY'#39') BETWEEN :DTI' +
        'NI AND :DTFIM'
      '           AND VENDA.SIT_001 = 1'
      '       ) AS TOTGERAL'
      '     , (SELECT COALESCE(SUM(VENDA.VEN_031), 0.00)'
      '          FROM VENDA'
      '         WHERE VENDA.EMP_001 = :EMP'
      
        '           AND TO_CHAR(VENDA.VEN_004, '#39'dd/mm/YYYY'#39') BETWEEN :DTI' +
        'NI AND :DTFIM'
      '           AND VENDA.SIT_001 = 1'
      '           AND VENDA.VEN_004 = VEN.VEN_004'
      '       ) AS TAXA'
      '     , (SELECT ((COALESCE(SUM(T.ITE_005), 0.00) / 100) * 10)'
      '          FROM VENDAITEM T'
      
        '          LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = T.EMP_001) A' +
        'ND (VENDA.VEN_001 = T.VEN_001)'
      '         WHERE T.EMP_001 = :EMP'
      
        '           AND TO_CHAR(VENDA.VEN_004, '#39'dd/mm/YYYY'#39') BETWEEN :DTI' +
        'NI AND :DTFIM'
      '           AND VENDA.SIT_001 = 1'
      '       ) TAXAGARCON'
      'FROM VENDAITEM ITE'
      
        'LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND' +
        ' (MAT.MAT_001 = ITE.MAT_001)'
      
        'LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND ' +
        '(UNI.UNI_001 = MAT.UNI_001)'
      
        'LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VE' +
        'N.VEN_001 = ITE.VEN_001)'
      
        'WHERE TO_CHAR(VEN.VEN_004, '#39'dd/mm/YYYY'#39') BETWEEN :DTINI AND :DTF' +
        'IM'
      '  AND VEN.SIT_001 = 1'
      '  AND ITE.ITE_003 > 0'
      'GROUP BY MAT.MAT_003'
      '     , MAT.MAT_004'
      '     , VEN.VEN_004'
      '     , TOTGERAL')
    BeforeOpen = qrItensVendaBeforeOpen
    Left = 174
    Top = 65534
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
      end>
    object qrItensVendamat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrItensVendamat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrItensVendaqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      ReadOnly = True
    end
    object qrItensVendavlrvenda: TFloatField
      FieldName = 'vlrvenda'
      ReadOnly = True
    end
    object qrItensVendaven_004: TWideMemoField
      FieldName = 'ven_004'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrItensVendatotgeral: TFloatField
      FieldName = 'totgeral'
      ReadOnly = True
    end
    object qrItensVendataxa: TFloatField
      FieldName = 'taxa'
      ReadOnly = True
    end
    object qrItensVendataxagarcon: TFloatField
      FieldName = 'taxagarcon'
      ReadOnly = True
    end
  end
  object dsItensVenda: TDataSource
    DataSet = qrItensVenda
    Left = 106
    Top = 4
  end
  object RelVendasProdutos: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 41919.898989606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 58
    Datasets = <
      item
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
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
      object PageHeader1: TfrxPageHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 204.094620000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDA DE PRODUTOS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        Condition = 'dbItensVendaProdutos."ven_004"'
        object Memo4: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbItensVendaProdutos."ven_004"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 71.811070000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 540.472790000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 71.811070000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_003"]')
        end
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_004"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 540.472790000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItensVendaProdutos."qtdevenda"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."vlrvenda"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
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
            '[SUM(<dbItensVendaProdutos."vlrvenda">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 510.236550000000000000
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
            'Sub total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 275.905690000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Taxa entrega:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 389.291590000000000000
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
            '[dbItensVendaProdutos."taxa"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
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
            
              '[<dbItensVendaProdutos."totgeral">+<dbItensVendaProdutos."taxa">' +
              '+<dbItensVendaProdutos."taxagarcon">]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 510.236550000000000000
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
            'Total:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 275.905690000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Taxa adcional:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 389.291590000000000000
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
            '[dbItensVendaProdutos."taxagarcon"]')
          ParentFont = False
        end
      end
    end
  end
  object dbItensVendaProdutos: TfrxDBDataset
    UserName = 'dbItensVendaProdutos'
    CloseDataSource = False
    DataSet = qrItensVenda
    BCDToCurrency = False
    Left = 166
    Top = 64
  end
  object RelVendasProdutosNaoFiscal: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42203.101485671290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 268
    Top = 158
    Datasets = <
      item
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 302.362400000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = -3.779530000000000000
          Width = 309.921460000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDA DE PRODUTOS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.236240000000000000
        ParentFont = False
        Top = 94.488250000000000000
        Width = 302.362400000000000000
        Condition = 'dbItensVendaProdutos."ven_004"'
        object Memo4: TfrxMemoView
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbItensVendaProdutos."ven_004"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 28.236240000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 177.637910000000000000
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 226.771800000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 302.362400000000000000
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_003"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_004"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 177.637910000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItensVendaProdutos."qtdevenda"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."vlrvenda"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 302.362400000000000000
        object Memo15: TfrxMemoView
          Left = 215.433210000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbItensVendaProdutos."vlrvenda">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 154.960730000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Taxa entrega:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."taxa"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 302.362400000000000000
        object Memo17: TfrxMemoView
          Left = 215.433210000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<dbItensVendaProdutos."totgeral">+<dbItensVendaProdutos."taxa">' +
              '+<dbItensVendaProdutos."taxagarcon">]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 147.401670000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total + Taxa:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Taxa adcional:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."taxagarcon"]')
          ParentFont = False
        end
      end
    end
  end
end
