inherited frmRelatorioABCPagamentos: TfrmRelatorioABCPagamentos
  Caption = 'frmRelatorioABCPagamentos'
  ClientHeight = 413
  ClientWidth = 556
  ExplicitWidth = 562
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 556
    Height = 364
    ExplicitTop = -6
    ExplicitWidth = 911
    ExplicitHeight = 475
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 0
      Width = 256
      Height = 76
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 34
        Height = 16
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 136
        Top = 20
        Width = 20
        Height = 16
        Caption = 'Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtpDataInicial: TDateTimePicker
        Left = 8
        Top = 42
        Width = 110
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dtpDataFinal: TDateTimePicker
        Left = 136
        Top = 42
        Width = 110
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 424
      Top = 35
      Width = 124
      Height = 41
      Margins.Left = 0
      Anchors = [akTop, akRight]
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 6
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btPesquisarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Layout = blGlyphRight
      MinButtonSizeState = bsLabel
      ExplicitLeft = 628
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 82
      Width = 539
      Height = 279
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      ExplicitWidth = 743
      ExplicitHeight = 306
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsRelatorio
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1id_forma: TcxGridDBColumn
          DataBinding.FieldName = 'id_forma'
          Width = 84
        end
        object cxGrid1DBTableView1descricao_forma: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_forma'
          Width = 270
        end
        object cxGrid1DBTableView1total_valor: TcxGridDBColumn
          DataBinding.FieldName = 'total_valor'
          Width = 104
        end
        object cxGrid1DBTableView1percent: TcxGridDBColumn
          DataBinding.FieldName = 'percent'
          Width = 105
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 364
    Width = 556
    ExplicitTop = 393
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 449
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Imprimir'
      ImageIndex = 10
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btImprimirClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      MinButtonSizeState = bsLabel
    end
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 342
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Sair'
      ImageIndex = 18
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btCancelarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      MinButtonSizeState = bsLabel
    end
  end
  object qrRelatorio: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'fp.for_001 as id_forma,'
      'fp.for_002 as descricao_forma,'
      'sum(evi.ite_003) as total_valor,'
      '(sum(evi.ite_003)/sub.somatoria)*100 as percent'
      'from venda v'
      
        'join encerravenda ev on v.ven_001=ev.ven_001 and ev.emp_001=v.em' +
        'p_001'
      
        'join encerravendaitem evi on ev.enc_001=evi.enc_001 and  ev.emp_' +
        '001=evi.emp_001'
      
        'join formapgto fp on ev.emp_001=fp.emp_001 and evi.id_formapgto=' +
        'fp.for_001'
      'join'
      '( select '
      'sum(evi.ite_003) as somatoria'
      'from venda v'
      
        'join encerravenda ev on v.ven_001=ev.ven_001 and ev.emp_001=v.em' +
        'p_001'
      
        'join encerravendaitem evi on ev.enc_001=evi.enc_001 and  ev.emp_' +
        '001=evi.emp_001 '
      'where v.sit_001=1'
      'and v.ven_004 >=:dtini and  v.ven_004 <= :dtfim'
      'and v.emp_001 = :emp'
      ') sub on true'
      'where v.sit_001=1'
      'and v.ven_004 >=:dtini and  v.ven_004 <= :dtfim'
      'and v.emp_001 = :emp'
      'group by fp.for_001, fp.for_002, sub.somatoria')
    Left = 303
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtini'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dtfim'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelatorioid_forma: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_forma'
      ReadOnly = True
      Required = True
    end
    object qrRelatoriodescricao_forma: TWideStringField
      DisplayLabel = 'Forma de pagamento'
      FieldName = 'descricao_forma'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelatoriototal_valor: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total_valor'
      ReadOnly = True
      currency = True
    end
    object qrRelatoriopercent: TFloatField
      DisplayLabel = '% Total'
      FieldName = 'percent'
      ReadOnly = True
      DisplayFormat = '##0.00'
    end
  end
  object dsRelatorio: TDataSource
    AutoEdit = False
    DataSet = qrRelatorio
    Left = 399
    Top = 16
  end
  object repRelatorio: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42835.469159120400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 120
    Top = 130
    Datasets = <
      item
        DataSet = dbRelatorio
        DataSetName = 'dbRelatorio'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end
      item
        Name = 'sPeriodo'
        Value = Null
      end
      item
        Name = 'sTipoAnalise'
        Value = Null
      end>
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
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 45.354360000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 88.818954999999970000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO CURVA ABC DE PAGAMENTOS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 20.897650000000000000
          Width = 714.330730630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Left = 4.354360000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo: ')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 43.354360000000000000
          Width = 714.330730630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 23.677180000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = dbRelatorio
        DataSetName = 'dbRelatorio'
        RowCount = 0
        object dbRelatorioProdutoscod_ref: TfrxMemoView
          Left = 4.354360000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'id_forma'
          DataSet = dbRelatorio
          DataSetName = 'dbRelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelatorio."id_forma"]')
          ParentFont = False
        end
        object dbRelatorioProdutosdescricao: TfrxMemoView
          Left = 81.370130000000000000
          Top = 1.000000000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          DataField = 'descricao_forma'
          DataSet = dbRelatorio
          DataSetName = 'dbRelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelatorio."descricao_forma"]')
          ParentFont = False
        end
        object dbRelatorioProdutostotal_valorvenda: TfrxMemoView
          Left = 531.693260000000000000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'total_valor'
          DataSet = dbRelatorio
          DataSetName = 'dbRelatorio'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorio."total_valor"]')
          ParentFont = False
        end
        object dbRelatorioProdutospercent: TfrxMemoView
          Left = 623.740569999999700000
          Top = 1.000000000000000000
          Width = 88.062992130000000000
          Height = 18.897650000000000000
          DataField = 'percent'
          DataSet = dbRelatorio
          DataSetName = 'dbRelatorio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelatorio."percent"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000022000
          Width = 714.330708661417000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 498.897960000000000000
          Top = 7.338590000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Top = 1.000000000000284000
          Width = 714.330730630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 404.409710000000300000
          Top = 2.000002440000003000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 531.693260000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorio."total_valor">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 623.740570000000000000
          Top = 2.000002440000003000
          Width = 86.929133859999990000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelatorio."percent">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 81.370130000000000000
          Top = 3.779529999999908000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 531.693259999999800000
          Top = 3.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venda')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 623.740569999999700000
          Top = 3.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Total')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 4.354360000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 24.677179999999910000
          Width = 714.330730630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dbRelatorio: TfrxDBDataset
    UserName = 'dbRelatorio'
    CloseDataSource = False
    DataSet = qrRelatorio
    BCDToCurrency = False
    Left = 256
    Top = 176
  end
end
