inherited frmRelVendaProdutoGarcom: TfrmRelVendaProdutoGarcom
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de venda de produto por Gar'#231'om'
  ClientHeight = 191
  ClientWidth = 366
  ExplicitWidth = 372
  ExplicitHeight = 219
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 366
    ExplicitWidth = 366
    inherited pnPadrao: TPanel
      inherited tBarPadrao: TToolBar
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
    Width = 366
    Height = 153
    Align = alClient
    TabOrder = 1
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
    object rgImpressora: TRadioGroup
      Left = 12
      Top = 87
      Width = 339
      Height = 60
      Caption = ' Impressora '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Laser A4'
        'N'#227'o Fiscal')
      TabOrder = 1
    end
  end
  inherited cdsCFG: TClientDataSet
    Left = 218
    Top = 8
  end
  object dsItensVenda: TDataSource
    DataSet = qrItensVenda
    Left = 106
    Top = 4
  end
  object qrItensVenda: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT MAT.MAT_003'
      '     , MAT.MAT_004'
      '     , SUM(ITE.ITE_002) AS QTDEVENDA'
      '     , TO_CHAR(VEN.VEN_004, '#39'dd/mm/YYYY'#39') AS VEN_004'
      '     , GAR.GAR_002    '
      '     '
      'FROM VENDAITEM ITE'
      
        'LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND' +
        ' (MAT.MAT_001 = ITE.MAT_001)'
      
        'LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001) AND ' +
        '(UNI.UNI_001 = MAT.UNI_001)'
      
        'LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VE' +
        'N.VEN_001 = ITE.VEN_001)'
      'LEFT OUTER JOIN GARCOM GAR ON (GAR.GAR_001 = ITE.GAR_001)'
      
        'WHERE TO_CHAR(VEN.VEN_004, '#39'dd/mm/YYYY'#39') BETWEEN :DTINI AND :DTF' +
        'IM'
      '  AND VEN.SIT_001 = 1'
      '  AND MAT.MAT_008 > 0'
      'GROUP BY MAT.MAT_003'
      '     , MAT.MAT_004'
      '     , VEN.VEN_004'
      '     , GAR.GAR_002')
    Active = True
    BeforeOpen = qrItensVendaBeforeOpen
    Left = 174
    Top = 2
    ParamData = <
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
    object qrItensVendaven_004: TWideMemoField
      FieldName = 'ven_004'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrItensVendagar_002: TWideStringField
      FieldName = 'gar_002'
      ReadOnly = True
      Required = True
      Size = 40
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
  object RelVendasProdutos: TfrxReport
    Version = '4.11.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 41919.923506736110000000
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
          Left = 141.732375000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDA DE PRODUTOS POR GAR'#199'OM')
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
        Height = 56.692950000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        Condition = 'dbItensVendaProdutos."gar_002"'
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
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
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
          Left = 94.488250000000000000
          Top = 37.795300000000000000
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
          Left = 653.858690000000000000
          Top = 37.795300000000000000
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
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[dbItensVendaProdutos."gar_002"]')
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
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_003"]')
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
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
          Left = 653.858690000000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 219.212740000000000000
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
            '[SUM(<dbItensVendaProdutos."qtdevenda">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 502.677490000000000000
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
      end
      object Footer1: TfrxFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 260.787570000000000000
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
            '[SUM(<dbItensVendaProdutos."qtdevenda">,MasterData1)]')
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
      end
    end
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
    ReportOptions.LastChange = 42203.124163645840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 214
    Top = 126
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 100.000000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
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
        Height = 13.118120000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 302.362400000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 26.456710000000000000
          Width = 249.448980000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDA DE PRODUTOS POR GAR'#199'OM')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 13.118120000000000000
          Width = 302.362400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 38.795300000000000000
        Top = 94.488250000000000000
        Width = 302.362400000000000000
        Condition = 'dbItensVendaProdutos."gar_002"'
        object Memo4: TfrxMemoView
          Width = 158.740260000000000000
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
          Top = 38.795300000000000000
          Width = 302.362400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 26.456710000000000000
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
          Left = 52.913420000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
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
          Left = 226.771800000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
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
        object Memo6: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbItensVendaProdutos."gar_002"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 11.338590000000000000
        ParentFont = False
        Top = 154.960730000000000000
        Width = 302.362400000000000000
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Width = 154.960730000000000000
          Height = 11.338590000000000000
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
          Left = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
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
          Left = 226.771800000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 302.362400000000000000
        object Memo15: TfrxMemoView
          Left = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
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
            '[SUM(<dbItensVendaProdutos."qtdevenda">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 302.362400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Sub total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 15.118120000000000000
          Width = 302.362400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 302.362400000000000000
        object Memo17: TfrxMemoView
          Left = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
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
            '[SUM(<dbItensVendaProdutos."qtdevenda">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 83.149660000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
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
        object Line4: TfrxLineView
          Width = 302.362400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 15.118120000000000000
          Width = 302.362400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
