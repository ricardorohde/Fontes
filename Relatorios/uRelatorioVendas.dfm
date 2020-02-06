object frmRelatorioVendas: TfrmRelatorioVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios'
  ClientHeight = 671
  ClientWidth = 1070
  Color = clBtnFace
  Constraints.MinHeight = 630
  Constraints.MinWidth = 530
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 626
    Width = 1070
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 963
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
      Appearance.BorderColor = clNavy
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
      Left = 856
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
      Appearance.BorderColor = clNavy
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 626
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.5.4.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object gbFiltroTipoVenda: TAdvGroupBox
      Left = 9
      Top = 140
      Width = 504
      Height = 67
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Filtrar por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object rgFiltro: TcxRadioGroup
        Left = 0
        Top = -2
        ParentFont = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Todos'
          end
          item
            Caption = 'Mesa'
          end
          item
            Caption = 'Delivery'
          end
          item
            Caption = 'Balc'#227'o'
          end
          item
            Caption = 'Comanda'
          end
          item
            Caption = 'PDV'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 66
        Width = 414
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 9
      Top = 479
      Width = 504
      Height = 69
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rgImpressora: TcxRadioGroup
        Left = 81
        Top = 10
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Gr'#225'fica A4'
          end
          item
            Caption = 'T'#233'rmica (bobina)'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 46
        Width = 262
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 0
      Width = 504
      Height = 137
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        504
        137)
      object Label1: TLabel
        Left = 13
        Top = 90
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
        Left = 143
        Top = 90
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
      object lbFiltroCategoria: TLabel
        Left = 13
        Top = 46
        Width = 63
        Height = 16
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSituacao: TLabel
        Left = 274
        Top = 90
        Width = 56
        Height = 16
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object dtpDataInicial: TDateTimePicker
        Left = 13
        Top = 108
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
        TabOrder = 2
      end
      object dtpDataFinal: TDateTimePicker
        Left = 142
        Top = 108
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
        TabOrder = 3
      end
      object cbRelatorio: TComboBox
        Left = 13
        Top = 20
        Width = 385
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = cbRelatorioChange
        Items.Strings = (
          'Produtos vendidos'
          'Produtos vendidos (agrupado por data)'
          'Produtos cancelados'
          'Produtos vendidos por fornecedor'
          'Taxas e servi'#231'os'
          'Taxas de Couvert'
          'CFe emitidos (SAT)'
          'CFe cancelados (SAT)'
          'CFe emitidos (NFCe)'
          'CFe cancelados (NFCe)'
          'Cupons fiscais emitidos (ECF)'
          'Cupons fiscais cancelados (ECF)'
          'Caixinha dos gar'#231'ons'
          'Comiss'#227'o de vendas (resumido)'
          'Comiss'#227'o de vendas (detalhado)'
          'Notas fiscais de saida (NFe)'
          'Notas fiscais de saida canceladas (NFe)'
          'Pagamentos parciais (Mesa/Comanda)'
          'Pagamentos parciais cancelados (Mesa/Comanda)'
          'Resumo financeiro'
          'Produtos com margem de lucro'
          'Listagem de sangria e suprimentos'
          'Listagem de entrada por forma de pagamento'
          'CFe emitidos (MFE)'
          'CFe cancelados (MFE)'
          'Listagem de contas '#224' pagar'
          'Listagem notas de compras'
          'Relat'#243'rio de vendas por gar'#231'om'
          'Listagem de contas '#224' receber'
          'Produtos vendidos com margem de lucro'
          'Produtos (Valoriza'#231#227'o)')
      end
      object cbFiltroCategoria: TJvDBComboBox
        Left = 13
        Top = 63
        Width = 385
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbFiltroSituacao: TComboBox
        Left = 274
        Top = 107
        Width = 124
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 4
        ParentFont = False
        TabOrder = 4
        Text = 'Todas'
        Visible = False
        Items.Strings = (
          'N'#227'o Pagas'
          'Vencidas'
          'Pagas'
          'Canceladas'
          'Todas')
      end
    end
    object gbFiltroNFe: TAdvGroupBox
      Left = 9
      Top = 210
      Width = 504
      Height = 113
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Filtro NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label5: TLabel
        Left = 13
        Top = 18
        Width = 44
        Height = 16
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCliente: TLabel
        Left = 113
        Top = 39
        Width = 369
        Height = 16
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbCFOP: TLabel
        Left = 113
        Top = 84
        Width = 369
        Height = 16
        AutoSize = False
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 13
        Top = 64
        Width = 31
        Height = 16
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCodCliente: TcxButtonEdit
        Left = 13
        Top = 36
        Properties.Buttons = <
          item
            Action = acBuscaCliente
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 0
        OnExit = edCodClienteExit
        Width = 94
      end
      object edCFOP: TcxButtonEdit
        Left = 13
        Top = 81
        Properties.Buttons = <
          item
            Action = acBuscaCFOP
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 1
        OnExit = edCFOPExit
        Width = 94
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 9
      Top = 324
      Width = 504
      Height = 70
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label3: TLabel
        Left = 13
        Top = 19
        Width = 35
        Height = 16
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFornecedor: TLabel
        Left = 114
        Top = 40
        Width = 369
        Height = 16
        AutoSize = False
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edCodigofornecedor: TcxButtonEdit
        Left = 13
        Top = 35
        Properties.Buttons = <
          item
            Action = acBuscafornecedor
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 0
        OnExit = edCodigofornecedorExit
        Width = 95
      end
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 9
      Top = 399
      Width = 504
      Height = 75
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label6: TLabel
        Left = 13
        Top = 20
        Width = 35
        Height = 16
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCliente: TLabel
        Left = 114
        Top = 43
        Width = 369
        Height = 16
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edCodigoCliente: TcxButtonEdit
        Left = 13
        Top = 38
        Properties.Buttons = <
          item
            Action = acCliente
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 0
        OnExit = edCodigoClienteExit
        Width = 95
      end
    end
  end
  object RepVendasProdutos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42639.409907870400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 744
    Top = 34
    Datasets = <
      item
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = ''
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
        Height = 18.897650000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 173.858380000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        Condition = 'dbItensVendaProdutos."ven_004"'
        object Memo4: TfrxMemoView
          Width = 257.008040000000000000
          Height = 18.897650000000000000
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
          Top = 37.795300000000010000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
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
          Left = 525.354670000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
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
        object Memo6: TfrxMemoView
          Left = 364.834880000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
        object Memo13: TfrxMemoView
          Left = 432.645950000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
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
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_003"]')
        end
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
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
          Left = 525.354670000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'desconto'
          DataSet = dbItensVendaProdutos
          DataSetName = 'dbItensVendaProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."desconto"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
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
        object Memo8: TfrxMemoView
          Left = 364.834880000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
        object Memo19: TfrxMemoView
          Left = 432.645950000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'acrescimo'
          DataSet = dbItensVendaProdutos
          DataSetName = 'dbItensVendaProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensVendaProdutos."acrescimo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        HideIfSingleDataRecord = True
        object Memo15: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
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
            '[SUM(<dbItensVendaProdutos."vlrvenda">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 525.354670000000000000
          Width = 90.708720000000000000
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
            '[SUM(<dbItensVendaProdutos."desconto">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 432.645950000000000000
          Width = 90.708720000000000000
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
            '[SUM(<dbItensVendaProdutos."acrescimo">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 334.378170000000000000
          Top = 0.220470000000005900
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
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
          DataSet = dbItensVendaProdutos
          DataSetName = 'dbItensVendaProdutos'
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
        object Memo18: TfrxMemoView
          Left = 510.236550000000000000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000030000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object RepVendasProdutosNaoFiscal: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42639.427713969890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 564
    Top = 6
    Datasets = <
      item
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 348.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 287.244280000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 1.889765000000000000
          Width = 283.464750000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.236240000000000000
        ParentFont = False
        Top = 94.488250000000000000
        Width = 287.244280000000000000
        Condition = 'dbItensVendaProdutos."ven_004"'
        object Memo4: TfrxMemoView
          Width = 162.519790000000000000
          Height = 15.118120000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
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
          Left = 175.637910000000000000
          Top = 15.118120000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
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
          Left = 205.771800000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
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
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 287.244280000000000000
        DataSet = dbItensVendaProdutos
        DataSetName = 'dbItensVendaProdutos'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensVendaProdutos."mat_004"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 175.637910000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
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
          Left = 203.992270000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
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
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 287.244280000000000000
        object Memo15: TfrxMemoView
          Left = 196.433210000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 136.960730000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 287.244280000000000000
        object Memo17: TfrxMemoView
          Left = 196.433210000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
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
        object Memo18: TfrxMemoView
          Left = 129.401670000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
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
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dbItensVendaProdutos: TfrxDBDataset
    UserName = 'dbItensVendaProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mat_003=mat_003'
      'mat_004=mat_004'
      'qtdevenda=qtdevenda'
      'vlrvenda=vlrvenda'
      'ven_004=ven_004'
      'totgeral=totgeral'
      'taxa=taxa'
      'taxagarcon=taxagarcon'
      'desconto=desconto'
      'acrescimo=acrescimo')
    DataSet = qrItensVenda
    BCDToCurrency = False
    Left = 598
    Top = 200
  end
  object qrItensVenda: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT MAT.MAT_003'
      '     , MAT.MAT_004'
      '     , SUM(ITE.ITE_002) AS QTDEVENDA'
      '     , SUM(ITE.ITE_005) AS VLRVENDA'
      '     , sum(ite.desconto) as desconto'
      '     , sum(ite.acrescimo) as acrescimo'
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
    Left = 894
    Top = 166
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
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
    object qrItensVendadesconto: TFloatField
      FieldName = 'desconto'
      ReadOnly = True
    end
    object qrItensVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
      ReadOnly = True
    end
  end
  object qrRelAcrescimosVendas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select sum(total_acrescimo_venda) as total_acrescimo_venda, sum(' +
        'total_venda) as total_venda, count(1) as qtd_venda, tipo_venda, ' +
        'entregador, data  from '
      '(select sum(v.ven_008) as total_acrescimo_venda, '
      'sum(v.ven_009) as total_venda, '
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' else '#39'Outro'#39 +
        ' end) as varchar(20)) as tipo_venda, '
      'coalesce(ent.usu_002, gar.usu_002) as entregador,'
      'to_char(c.data_abertura, '#39'dd/mm/yyyy'#39' ) as data '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      
        'left join vendaitem vi on vi.emp_001=cv.id_empresa and vi.ven_00' +
        '1=cv.id_venda  and vi.ite_001=1  '
      'left join usuarios ent on ent.usu_001=v.id_entregador'
      'left join usuarios gar on vi.gar_001=gar.usu_001'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.ven_008>0'
      
        'and c.id_empresa=:EMP and c.data_abertura>=:DTINI and c.data_abe' +
        'rtura<=:DTFIM'
      
        'group by v.ven_024, ent.usu_002, gar.usu_002, c.data_abertura, c' +
        '.data_abertura, v.ven_001 '
      'order by 3 , c.data_abertura'
      ') rep'
      'group by  entregador, tipo_venda, data'
      'order by  entregador, data')
    Left = 472
    Top = 141
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'DTINI'
        Value = 42370d
      end
      item
        DataType = ftDateTime
        Name = 'DTFIM'
        Value = 42736d
      end>
    object qrRelAcrescimosVendastotal_acrescimo_venda: TFloatField
      FieldName = 'total_acrescimo_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasqtd_venda: TLargeintField
      FieldName = 'qtd_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendastipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasentregador: TWideStringField
      FieldName = 'entregador'
      ReadOnly = True
      Size = 30
    end
    object qrRelAcrescimosVendasdata: TWideMemoField
      FieldName = 'data'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRelAcrescimosVendastotal_venda: TFloatField
      FieldName = 'total_venda'
      ReadOnly = True
    end
  end
  object dbAcrescimosVendas: TfrxDBDataset
    UserName = 'dbAcrescimosVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'total_acrescimo_venda=total_acrescimo_venda'
      'qtd_venda=qtd_venda'
      'tipo_venda=tipo_venda'
      'entregador=entregador'
      'data=data'
      'total_venda=total_venda')
    DataSet = qrRelAcrescimosVendas
    BCDToCurrency = False
    Left = 592
    Top = 144
  end
  object repAcrescimosVendasNaoFiscal: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42667.664988935200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 618
    Top = 68
    Datasets = <
      item
        DataSet = dbAcrescimosVendas
        DataSetName = 'dbAcrescimosVendas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 448.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftTop]
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 36.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 287.244280000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ACR'#201'SCIMOS E TAXAS EM VENDAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 287.244280000000000000
        DataSet = dbAcrescimosVendas
        DataSetName = 'dbAcrescimosVendas'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 195.756030000000000000
          Top = 1.133858269999990000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."total_acrescimo_venda"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.133858269999990000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendas."tipo_venda"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 96.063080000000000000
          Top = 1.133858269999990000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbAcrescimosVendas."qtd_venda"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 138.063080000000000000
          Top = 1.133858269999990000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'total_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."total_venda"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 287.244280000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 97.181200000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."qtd_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 195.756030000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_acrescimo_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 138.063080000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_venda">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 40.692950000000000000
        Top = 117.165430000000000000
        Width = 287.244280000000000000
        Condition = 'dbAcrescimosVendas."entregador"'
        object dbAcrescimosVendasentregador: TfrxMemoView
          Left = 10.338590000000000000
          Top = 0.897618269999995300
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'entregador'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendas."entregador"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 40.692950000000010000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.456710000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 195.756030000000000000
          Top = 22.236240000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. ACR.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 98.960730000000000000
          Top = 22.220469999999990000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTD.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 136.063080000000000000
          Top = 22.299212599999990000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V. VENDA')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 287.244280000000000000
        object Memo1: TfrxMemoView
          Left = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUB TOTAL')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 97.181200000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."qtd_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 195.756030000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_acrescimo_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 138.063080000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_venda">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object repAcrescimosVendas: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42647.428683356500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 482
    Top = 76
    Datasets = <
      item
        DataSet = dbAcrescimosVendas
        DataSetName = 'dbAcrescimosVendas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 748.346940000000000000
        DataSet = dbAcrescimosVendas
        DataSetName = 'dbAcrescimosVendas'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 668.976810000000000000
          Top = 1.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'total_acrescimo_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."total_acrescimo_venda"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 132.283550000000000000
          Height = 18.897640240000000000
          DataField = 'tipo_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendas."tipo_venda"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 438.984540000000000000
          Top = 2.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbAcrescimosVendas."qtd_venda"]')
          ParentFont = False
        end
        object dbAcrescimosVendasdata_abertura: TfrxMemoView
          Left = 348.275820000000000000
          Top = 1.779529999999994000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendas."data"]')
          ParentFont = False
        end
        object dbAcrescimosVendasentregador: TfrxMemoView
          Left = 144.622140000000000000
          Top = 1.779529999999994000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'entregador'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Memo.UTF8W = (
            '[dbAcrescimosVendas."entregador"]')
        end
        object Memo10: TfrxMemoView
          Left = 540.472790000000000000
          Top = 1.889763780000010000
          Width = 105.826840000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'total_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."total_venda"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 245.669450000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 21.999999999999970000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 21.999999999999970000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 653.858690000000000000
          Top = 21.220470000000010000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_acrescimo_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 442.205010000000000000
          Top = 21.999999999999970000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."qtd_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 540.472790000000000000
          Top = 21.165354330708710000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_venda">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 748.346940000000000000
        Condition = 'dbAcrescimosVendas."entregador"'
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 19.692950000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.267697010000006000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO VENDA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 653.858690000000000000
          Top = 2.236239999999995000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sDescCampo]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 436.984540000000000000
          Top = 2.220470000000006000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTD. VENDA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 348.275820000000000000
          Top = 2.000000000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 2.000000000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GAR'#199'OM / ENTREGADOR')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 537.252320000000000000
          Top = 2.267716539999995000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL VENDA')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 748.346940000000000000
        object Memo1: TfrxMemoView
          Left = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUB TOTAL')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 668.976810000000000000
          Top = 0.220470000000005900
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_acrescimo_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 442.205010000000000000
          Top = 0.377952759999999400
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."qtd_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 540.472790000000000000
          Top = 0.377952759999999400
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."total_venda">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelCFeEmitidos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select'
      'v.numero_cupom as nro_cupom,'
      'v.ven_001 as id_venda, '
      'v.Ven_037 as data_emissao,'
      'c.cli_002 as nome_cliente,'
      'v.ven_009 as valor,'
      'v.ven_024'
      'from venda v'
      
        'left join  clientes c on c.cli_001 = v.cli_001 and c.emp_001=v.e' +
        'mp_001'
      'where '
      '-- Chave de autorizacao do sat'
      'v.Ven_038 is not null '
      
        '-- vendas concluidas sem chave de cancelamento do sat ou vendas ' +
        'canceladas com chave de cancelamento'
      
        'and (((v.Ven_034 is null or v.Ven_034='#39#39') and v.sit_001 = 1) or ' +
        '(v.Ven_034 is not null and v.sit_001 = 2))  '
      'and v.sit_001 = :situacao_venda '
      'and v.Ven_037>=:dtini and v.Ven_037<=:dtfim'
      'and v.emp_001=:emp'
      'and upper(v.tipofiscal)=upper(:tipofiscal)'
      'order by v.Ven_037')
    Left = 464
    Top = 261
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'situacao_venda'
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DTINI'
        Value = 42370d
      end
      item
        DataType = ftDateTime
        Name = 'DTFIM'
        Value = 42736d
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'tipofiscal'
        Value = nil
      end>
    object qrRelCFeEmitidosnro_cupom: TIntegerField
      FieldName = 'nro_cupom'
    end
    object qrRelCFeEmitidosid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrRelCFeEmitidosdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrRelCFeEmitidosnome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrRelCFeEmitidosvalor: TFloatField
      FieldName = 'valor'
    end
    object qrRelCFeEmitidosven_024: TWideStringField
      FieldName = 'ven_024'
      Size = 1
    end
  end
  object dbCFeEmitidos: TfrxDBDataset
    UserName = 'dbCFeEmitidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nro_cupom=nro_cupom'
      'id_venda=id_venda'
      'data_emissao=data_emissao'
      'nome_cliente=nome_cliente'
      'id_empresa=id_empresa'
      'hora_emissao=hora_emissao'
      'valor=valor'
      'ven_024=ven_024')
    DataSet = qrRelCFeEmitidos
    BCDToCurrency = False
    Left = 568
    Top = 264
  end
  object repCFeEmitidos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42648.692236250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 810
    Top = 132
    Datasets = <
      item
        DataSet = dbCFeEmitidos
        DataSetName = 'dbCFeEmitidos'
      end
      item
        DataSet = dbCFeEmitidosItens
        DataSetName = 'dbCFeEmitidosItens'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 748.346940000000000000
        DataSet = dbCFeEmitidos
        DataSetName = 'dbCFeEmitidos'
        KeepHeader = True
        RowCount = 0
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.889763779527556000
          Width = 79.370130000000000000
          Height = 18.897640240000000000
          DataField = 'nro_cupom'
          DataSet = dbCFeEmitidos
          DataSetName = 'dbCFeEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCFeEmitidos."nro_cupom"]')
          ParentFont = False
        end
        object dbAcrescimosVendasdata_abertura: TfrxMemoView
          Left = 646.299630000000000000
          Top = 1.889763780000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbCFeEmitidos
          DataSetName = 'dbCFeEmitidos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCFeEmitidos."valor"]')
          ParentFont = False
        end
        object dbAcrescimosVendasentregador: TfrxMemoView
          Left = 95.488250000000000000
          Top = 1.889763780000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = dbCFeEmitidos
          DataSetName = 'dbCFeEmitidos'
          Memo.UTF8W = (
            '[dbCFeEmitidos."data_emissao"]')
        end
        object dbCFeEmitidosnome_cliente: TfrxMemoView
          Left = 200.315090000000000000
          Top = 1.889763779527556000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DataField = 'nome_cliente'
          DataSet = dbCFeEmitidos
          DataSetName = 'dbCFeEmitidos'
          Memo.UTF8W = (
            '[dbCFeEmitidos."nome_cliente"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 27.236240000000000000
        Top = 204.094620000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.779529999999994100
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.779529999999994100
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 653.858690000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCFeEmitidos."valor">,MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 325.039580000000000000
        Visible = False
        Width = 748.346940000000000000
        DataSet = dbCFeEmitidosItens
        DataSetName = 'dbCFeEmitidosItens'
        RowCount = 0
        object dbCFeEmitidosItensvalor_item: TfrxMemoView
          Left = 600.945270000000000000
          Top = 3.779530000000022000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'valor_item'
          DataSet = dbCFeEmitidosItens
          DataSetName = 'dbCFeEmitidosItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCFeEmitidosItens."valor_item"]')
          ParentFont = False
        end
        object dbCFeEmitidosItenscso_codigo: TfrxMemoView
          Left = 464.323130000000000000
          Top = 3.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'cso_codigo'
          DataSet = dbCFeEmitidosItens
          DataSetName = 'dbCFeEmitidosItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCFeEmitidosItens."cso_codigo"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 253.228510000000000000
        Visible = False
        Width = 748.346940000000000000
        object Memo1: TfrxMemoView
          Left = 464.882190000000000000
          Top = 1.779529999999994000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALORES DE PRODUTOS POR CSOSN ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 464.323130000000000000
          Top = 26.456710000000020000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CSOSN ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 600.945270000000000000
          Top = 26.456710000000020000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL PRODUTOS')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 461.102362204724000000
          Top = 22.677179999999990000
          Width = 287.244280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 461.102362204724000000
          Top = 45.354360000000010000
          Width = 287.244280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 109.606370000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 2.779529999999994000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 21.472479999999990000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 4.047227010000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' CUPOM')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 646.299630000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779529999999994000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DT. EMISS'#195'O')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779529999999994000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
      end
    end
  end
  object dbCFeEmitidosItens: TfrxDBDataset
    UserName = 'dbCFeEmitidosItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cso_codigo=cso_codigo'
      'valor_item=valor_item')
    DataSet = qrRelCFeEmitidosItens
    BCDToCurrency = False
    Left = 392
    Top = 184
  end
  object qrRelCFeEmitidosItens: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select'
      'm.cso_codigo,'
      'sum(vi.ite_005) as valor_item'
      'from venda v'
      
        'join vendaitem vi on vi.emp_001=v.emp_001 and vi.ven_001=v.ven_0' +
        '01'
      
        'join materiais m on (m.emp_001 = vi.emp_001) and (m.mat_001 = vi' +
        '.mat_001)'
      'where '
      '-- Chave de autorizacao do sat'
      'v.Ven_038 is not null'
      '-- vendas sem chave de cancelamento do sat'
      'and (v.Ven_034 is null or v.Ven_034='#39#39')'
      '-- vendas encerradas'
      'and v.sit_001 = :situacao_venda'
      '-- itens nao cancelados'
      'and vi.sit_001 in (1,4)'
      'and v.Ven_037>=:dtini and v.Ven_037<=:dtfim'
      'and v.emp_001=:emp'
      'and upper(v.tipofiscal)=upper(:tipofiscal)'
      'group by m.cso_codigo')
    Left = 512
    Top = 253
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'situacao_venda'
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'DTINI'
        Value = 42370d
      end
      item
        DataType = ftDateTime
        Name = 'DTFIM'
        Value = 42736d
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'tipofiscal'
        Value = nil
      end>
    object qrRelCFeEmitidosItenscso_codigo: TIntegerField
      FieldName = 'cso_codigo'
      ReadOnly = True
    end
    object qrRelCFeEmitidosItensvalor_item: TFloatField
      FieldName = 'valor_item'
      ReadOnly = True
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 672
    Top = 160
  end
  object qrRelCaixinhaGarcons: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select u.usu_002 as nome, sum(valor) as total from trocogarcom t' +
        'g'
      'join usuarios u on tg.id_usuario = u.usu_001'
      
        'join caixa c on tg.id_caixa=c.id_caixa and tg.id_empresa=c.id_em' +
        'presa'
      
        'join venda v on tg.id_venda=v.ven_001 and tg.id_empresa=v.emp_00' +
        '1 and v.sit_001=1'
      
        'where c.data_abertura>=:dtini and c.data_abertura<=:dtfim and tg' +
        '.id_empresa=:emp'
      'group by usu_002')
    Left = 152
    Top = 328
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
    object qrRelCaixinhaGarconsnome: TWideStringField
      FieldName = 'nome'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelCaixinhaGarconstotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object dbCaixinhaGarcons: TfrxDBDataset
    UserName = 'dbCaixinhaGarcons'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome=nome'
      'total=total')
    DataSet = qrRelCaixinhaGarcons
    BCDToCurrency = False
    Left = 200
    Top = 320
  end
  object repCaixinhaGarcons: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42828.439592824080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 306
    Datasets = <
      item
        DataSet = dbCaixinhaGarcons
        DataSetName = 'dbCaixinhaGarcons'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = ''
      end
      item
        Name = 'sPeriodo'
        Value = ''
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
        Height = 26.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 173.858380000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CAIXINHA DOS GAR'#199'ONS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 22.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = dbCaixinhaGarcons
        DataSetName = 'dbCaixinhaGarcons'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCaixinhaGarcons."nome"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'total'
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCaixinhaGarcons."total"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbCaixinhaGarcons."total">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 510.236550000000000000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GAR'#199'OM')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 608.504330000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelComissao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select u.usu_002 as nome_vendedor, e.comissao_vendedor ,sum(v.ve' +
        'n_009) as total_vendas, sum(v.ven_009 * e.comissao_vendedor * 0.' +
        '01) as total_comissao from venda v '
      'join usuarios u on v.id_vendedor = u.usu_001'
      'join empresas e on v.emp_001=e.emp_001'
      'where e.emp_001=:emp and v.ven_004>=:dtini and v.ven_004<=:dtfim'
      'and v.sit_001=1'
      'group by u.usu_002,  u.usu_001, e.comissao_vendedor')
    Left = 392
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'dtini'
        Value = 42736.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'dtfim'
        Value = 43070.000000000000000000
      end>
    object qrRelComissaonome_vendedor: TWideStringField
      FieldName = 'nome_vendedor'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelComissaocomissao_vendedor: TFloatField
      FieldName = 'comissao_vendedor'
      ReadOnly = True
      Required = True
    end
    object qrRelComissaototal_vendas: TFloatField
      FieldName = 'total_vendas'
      ReadOnly = True
    end
    object qrRelComissaototal_comissao: TFloatField
      FieldName = 'total_comissao'
      ReadOnly = True
    end
  end
  object dbComissao: TfrxDBDataset
    UserName = 'dbComissao'
    CloseDataSource = False
    DataSet = qrRelComissao
    BCDToCurrency = False
    Left = 240
    Top = 568
  end
  object repComissao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42831.425495648150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 362
    Datasets = <
      item
        DataSet = dbComissao
        DataSetName = 'dbComissao'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = ''
      end
      item
        Name = 'sPeriodo'
        Value = ''
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
        Height = 26.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 173.858380000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COMISS'#195'O DE VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 22.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = dbComissao
        DataSetName = 'dbComissao'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 15.897650000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataField = 'nome_vendedor'
          DataSet = dbComissao
          DataSetName = 'dbComissao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComissao."nome_vendedor"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'total_comissao'
          DataSet = dbComissao
          DataSetName = 'dbComissao'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComissao."total_comissao"]')
          ParentFont = False
        end
        object dbComissaototal_vendas: TfrxMemoView
          Left = 464.882190000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'total_vendas'
          DataSet = dbComissao
          DataSetName = 'dbComissao'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComissao."total_vendas"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbComissao."total_comissao">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 355.275820000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 464.882190000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbComissao."total_vendas">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 15.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDEDOR')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 585.827150000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL COMISS'#195'O')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 464.882190000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL VENDAS')
          ParentFont = False
        end
      end
    end
  end
  object qrRelComissaoDetalhado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select u.usu_002 as nome_vendedor, '
      'v.ven_009 as total_venda, '
      '(v.ven_009 * e.comissao_vendedor * 0.01) as total_comissao,'
      'coalesce(c.cli_002, v.nome_cliente ) as nome_cliente,'
      'v.ven_029 as numero_venda,'
      'v.ven_004 as data_venda'
      'from venda v '
      'join usuarios u on v.id_vendedor = u.usu_001'
      'join empresas e on v.emp_001=e.emp_001'
      
        'left join clientes c on c.cli_001= v.cli_001 and c.emp_001=v.emp' +
        '_001'
      'where e.emp_001=:emp and v.ven_004>=:dtini and v.ven_004<=:dtfim'
      'order by u.usu_001, v.ven_004')
    Left = 208
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'dtini'
        Value = 42736.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'dtfim'
        Value = 43070.000000000000000000
      end>
    object qrRelComissaoDetalhadonome_vendedor: TWideStringField
      FieldName = 'nome_vendedor'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelComissaoDetalhadototal_venda: TFloatField
      FieldName = 'total_venda'
    end
    object qrRelComissaoDetalhadototal_comissao: TFloatField
      FieldName = 'total_comissao'
      ReadOnly = True
    end
    object qrRelComissaoDetalhadonome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Size = 90
    end
    object qrRelComissaoDetalhadonumero_venda: TIntegerField
      FieldName = 'numero_venda'
    end
    object qrRelComissaoDetalhadodata_venda: TDateTimeField
      FieldName = 'data_venda'
    end
  end
  object dbComissaoDetalhado: TfrxDBDataset
    UserName = 'dbComissaoDetalhado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_vendedor=nome_vendedor'
      'total_venda=total_venda'
      'total_comissao=total_comissao'
      'nome_cliente=nome_cliente'
      'numero_venda=numero_venda'
      'data_venda=data_venda')
    DataSet = qrRelComissaoDetalhado
    BCDToCurrency = False
    Left = 304
    Top = 432
  end
  object repComissaoDetalhado: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42831.467031006940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 434
    Datasets = <
      item
        DataSet = dbComissaoDetalhado
        DataSetName = 'dbComissaoDetalhado'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = ''
      end
      item
        Name = 'sPeriodo'
        Value = ''
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
        Height = 26.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 173.858380000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COMISS'#195'O DE VENDAS DETALHADO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 22.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = dbComissaoDetalhado
        DataSetName = 'dbComissaoDetalhado'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 608.504330000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'total_comissao'
          DataSet = dbComissaoDetalhado
          DataSetName = 'dbComissaoDetalhado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComissaoDetalhado."total_comissao"]')
          ParentFont = False
        end
        object dbComissaototal_vendas: TfrxMemoView
          Left = 492.661720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'total_venda'
          DataSet = dbComissaoDetalhado
          DataSetName = 'dbComissaoDetalhado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComissaoDetalhado."total_venda"]')
          ParentFont = False
        end
        object dbComissaoDetalhadonumero_venda: TfrxMemoView
          Left = 15.118120000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'numero_venda'
          DataSet = dbComissaoDetalhado
          DataSetName = 'dbComissaoDetalhado'
          Memo.UTF8W = (
            '[dbComissaoDetalhado."numero_venda"]')
        end
        object dbComissaoDetalhadonome_cliente: TfrxMemoView
          Left = 162.519790000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'nome_cliente'
          DataSet = dbComissaoDetalhado
          DataSetName = 'dbComissaoDetalhado'
          Memo.UTF8W = (
            '[dbComissaoDetalhado."nome_cliente"]')
        end
        object dbComissaoDetalhadodata_venda: TfrxMemoView
          Left = 80.590600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_venda'
          DataSet = dbComissaoDetalhado
          DataSetName = 'dbComissaoDetalhado'
          Memo.UTF8W = (
            '[dbComissaoDetalhado."data_venda"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 608.504330000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbComissaoDetalhado."total_comissao">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 336.378170000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL FINAL:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 491.338900000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbComissaoDetalhado."total_venda">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'dbComissaoDetalhado."nome_vendedor"'
        object Memo3: TfrxMemoView
          Left = 608.504330000000000000
          Top = 29.677179999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMISS'#195'O')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 492.661720000000000000
          Top = 29.677179999999990000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 15.118120000000000000
          Top = 29.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 162.519790000000000000
          Top = 29.677179999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 80.590600000000000000
          Top = 29.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 102.826840000000000000
          Top = 9.779529999999994000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'nome_vendedor'
          DataSet = dbComissaoDetalhado
          DataSetName = 'dbComissaoDetalhado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbComissaoDetalhado."nome_vendedor"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 15.897650000000000000
          Top = 9.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDEDOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 457.323130000000000000
          Top = 9.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 532.913730000000000000
          Top = 9.779529999999994000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 50.574829999999990000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 608.504330000000000000
          Top = 2.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbComissaoDetalhado."total_comissao">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 336.378170000000000000
          Top = 2.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 491.338900000000000000
          Top = 2.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dbCaixinhaGarcons
          DataSetName = 'dbCaixinhaGarcons'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbComissaoDetalhado."total_venda">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 1.779529999999994000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Top = 24.677179999999990000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object dbNFe: TfrxDBDataset
    UserName = 'dbNFe'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_nota_saida=id_nota_saida'
      'id_cliente=id_cliente'
      'serie=serie'
      'cfop=cfop'
      'valor_total=valor_total'
      'id_situacao=id_situacao'
      'data_saida=data_saida'
      'data_emissao=data_emissao'
      'numero=numero'
      'chave_autorizacao=chave_autorizacao'
      'chave_cancelamento=chave_cancelamento'
      'finalidade=finalidade'
      'chave_nf_devolvida=chave_nf_devolvida'
      'situacao=situacao'
      'nome_cliente=nome_cliente'
      'tipo_pessoa=tipo_pessoa'
      'situacao_ie=situacao_ie'
      'cfop_descricao=cfop_descricao')
    DataSet = qrNotaSaida
    BCDToCurrency = False
    Left = 152
    Top = 573
  end
  object qrNotaSaida: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'ns.id_nota_saida,'
      'ns.id_cliente, '
      'ns.serie, '
      'ns.cfop, '
      'ns.valor_total, '
      'ns.id_situacao,'
      'ns.data_saida,'
      'ns.data_emissao,'
      'ns.numero,'
      'ns.chave_autorizacao,'
      'ns.chave_cancelamento,'
      'ns.finalidade,'
      'ns.chave_nf_devolvida,'
      
        'cast(case ns.id_situacao when 2 then '#39'C'#39' when 11 then '#39'A'#39' else '#39 +
        '-'#39' end as varchar(1) ) as situacao,'
      'c.cli_002 as nome_cliente, '
      'c.tipo_pessoa,'
      'c.situacao_ie,'
      'cfop.cfop_descricao'
      'from nota_saida ns'
      
        'join clientes c on c.cli_001=ns.id_cliente and c.emp_001=ns.id_e' +
        'mpresa'
      'left join cidades cli_cid ON cli_cid.CID_001 = c.CID_001'
      'left join cfop on cfop.cfop_codigo = ns.cfop '
      
        'where true -- Linha reservada para aplicar o filtro where, n'#227'o r' +
        'emover'
      
        'order by ns.data_emissao, ns.numero -- Linha reservada para apli' +
        'car a ordena'#231#227'o, n'#227'o remover')
    Left = 48
    Top = 576
    object qrNotaSaidaid_nota_saida: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_nota_saida'
    end
    object qrNotaSaidaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qrNotaSaidaserie: TIntegerField
      FieldName = 'serie'
    end
    object qrNotaSaidacfop: TWideStringField
      FieldName = 'cfop'
      Size = 4
    end
    object qrNotaSaidavalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object qrNotaSaidaid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaSaidadata_saida: TDateField
      FieldName = 'data_saida'
    end
    object qrNotaSaidadata_emissao: TDateField
      FieldName = 'data_emissao'
    end
    object qrNotaSaidanumero: TIntegerField
      FieldName = 'numero'
      Required = True
    end
    object qrNotaSaidachave_autorizacao: TWideStringField
      FieldName = 'chave_autorizacao'
      Size = 100
    end
    object qrNotaSaidachave_cancelamento: TWideStringField
      FieldName = 'chave_cancelamento'
      Size = 100
    end
    object qrNotaSaidafinalidade: TIntegerField
      FieldName = 'finalidade'
      Required = True
    end
    object qrNotaSaidachave_nf_devolvida: TWideStringField
      FieldName = 'chave_nf_devolvida'
      Size = 100
    end
    object qrNotaSaidasituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 1
    end
    object qrNotaSaidanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object qrNotaSaidatipo_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qrNotaSaidasituacao_ie: TWideStringField
      FieldName = 'situacao_ie'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qrNotaSaidacfop_descricao: TWideStringField
      FieldName = 'cfop_descricao'
      ReadOnly = True
      Size = 250
    end
  end
  object repNFe: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42907.463029062500000000
    ReportOptions.LastChange = 42907.463029062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 573
    Datasets = <
      item
        DataSet = dbNFe
        DataSetName = 'dbNFe'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sSituacao'
        Value = ''
      end
      item
        Name = 'sCFOP'
        Value = ''
      end
      item
        Name = 'sPeriodo'
        Value = ''
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 173.858380000000000000
          Top = 7.559059999999999000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE NOTA FISCAL DE SA'#205'DA')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 1.889764999999976000
          Top = 29.456710000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 1.889764999999976000
          Top = 52.913420000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 181.417440000000000000
          Top = 34.015770000000010000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 290.244279999999900000
          Top = 34.015770000000010000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 75.590600000000000000
          Top = 34.015770000000010000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sSituacao]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 230.551330000000000000
          Top = 34.015770000000010000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sCFOP]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 355.275819999999900000
          Top = 34.015770000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = dbNFe
        DataSetName = 'dbNFe'
        RowCount = 0
        object dbNFenumero: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'numero'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."numero"]')
          ParentFont = False
        end
        object dbNFedata_emissao: TfrxMemoView
          Left = 68.031540000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'data_emissao'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."data_emissao"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 133.283550000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'data_saida'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."data_saida"]')
          ParentFont = False
        end
        object dbNFenome_cliente: TfrxMemoView
          Left = 195.535560000000000000
          Top = 1.000000000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          DataField = 'nome_cliente'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."nome_cliente"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 500.559370000000000000
          Top = 1.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'serie'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."serie"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 549.693260000000000000
          Top = 1.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'cfop'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."cfop"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 627.401980000000000000
          Top = 1.000000000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbNFe."valor_total"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 599.165740000000000000
          Top = 1.000000000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'situacao'
          DataSet = dbNFe
          DataSetName = 'dbNFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNFe."situacao"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000010000
          Top = 3.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 131.504020000000000000
          Top = 3.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SA'#205'DA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 194.756030000000000000
          Top = 3.779529999999994000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESTINAT'#193'RIO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 500.559370000000000000
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 549.693260000000000000
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 598.827150000000000000
          Top = 3.779529999999994000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SIT')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baCenter
          Left = 1.889764999999976000
          Top = 22.677179999999990000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baCenter
          Left = 1.889764999999976000
          Top = 3.779530000000051000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559059999999931000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559059999999988000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbNFe."valor_total">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999931000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 102.047310000000000000
          Top = 7.559059999999988000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 299
    Top = 112
    object acBuscaCliente: TAction
      Caption = 'acBuscaCliente'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
    end
    object acBuscaCFOP: TAction
      Caption = 'acBuscaCFOP'
      ImageIndex = 0
      OnExecute = acBuscaCFOPExecute
    end
    object acBuscafornecedor: TAction
      Caption = 'acBuscafornecedor'
      ImageIndex = 0
      OnExecute = acBuscafornecedorExecute
    end
    object acCliente: TAction
      Caption = 'acCliente'
      ImageIndex = 0
      OnExecute = acClienteExecute
    end
  end
  object qrRelVendaPagAntecipado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_029 as numero_venda,'
      'cast(case when v.ven_024='#39'M'#39' then'
      '  m.mes_002 '
      'when v.ven_024='#39'C'#39' then '
      '  cast(concat('#39'COMANDA'#39', '#39' '#39',  v.ven_026 ) as varchar(40))'
      ' else '#39#39' end as varchar(30)) as mesa_comanda,'
      'v.ven_009 as valor_venda, '
      'vpa.valor as valor_movimento,'
      'u.usu_002 as responsavel, '
      'v.ven_004 as data_hora_venda,'
      'vpa.data_hora as data_hora_movimento,'
      'cast(case vpa.id_situacao when 4 then '#39'PAGO'#39
      'when 2 then '#39'CANCELADO'#39
      'else '#39#39' end as varchar(10))  as situacao,'
      'vpa.observacao'
      'from venda_pag_antecipado vpa'
      
        'join venda v on vpa.id_venda=v.ven_001  and v.emp_001 = vpa.id_e' +
        'mpresa'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025)'
      'left join usuarios u on u.usu_001=vpa.id_usuario'
      'where (v.ven_024 ='#39'M'#39' or v.ven_024='#39'C'#39') and v.sit_001=1 '
      'and v.ven_004 >= :DTINI and v.ven_004 <:DTFIM'
      'and vpa.id_situacao = :situacao'
      'and vpa.id_empresa = :emp'
      'order by v.ven_029 ')
    Left = 984
    Top = 24
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DTINI'
        Value = 42736d
      end
      item
        DataType = ftDate
        Name = 'DTFIM'
        Value = 43101.000000000000000000
      end
      item
        DataType = ftInteger
        Name = 'situacao'
        Value = 4
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelVendaPagAntecipadonumero_venda: TIntegerField
      FieldName = 'numero_venda'
      ReadOnly = True
    end
    object qrRelVendaPagAntecipadomesa_comanda: TWideStringField
      FieldName = 'mesa_comanda'
      ReadOnly = True
      Size = 30
    end
    object qrRelVendaPagAntecipadovalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelVendaPagAntecipadovalor_movimento: TFloatField
      FieldName = 'valor_movimento'
      Required = True
      currency = True
    end
    object qrRelVendaPagAntecipadoresponsavel: TWideStringField
      FieldName = 'responsavel'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelVendaPagAntecipadodata_hora_venda: TDateTimeField
      FieldName = 'data_hora_venda'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrRelVendaPagAntecipadodata_hora_movimento: TDateTimeField
      FieldName = 'data_hora_movimento'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrRelVendaPagAntecipadoobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object qrRelVendaPagAntecipadosituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 10
    end
  end
  object dbVendaPagAntecipado: TfrxDBDataset
    UserName = 'dbVendaPagAntecipado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'numero_venda=numero_venda'
      'mesa_comanda=mesa_comanda'
      'valor_venda=valor_venda'
      'valor_movimento=valor_movimento'
      'responsavel=responsavel'
      'data_hora_venda=data_hora_venda'
      'data_hora_movimento=data_hora_movimento'
      'situacao=situacao'
      'observacao=observacao')
    DataSet = qrRelVendaPagAntecipado
    BCDToCurrency = False
    Left = 888
    Top = 24
  end
  object repVendaPagAntecipado: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Microsoft XPS Document Writer'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42920.460772141200000000
    ReportOptions.LastChange = 42920.480206597200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1056
    Top = 16
    Datasets = <
      item
        DataSet = dbVendaPagAntecipado
        DataSetName = 'dbVendaPagAntecipado'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Memo44: TfrxMemoView
          Align = baCenter
          Left = 132.283550000000000000
          Top = 3.779530000000001000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PAGAMENTOS PARCIAIS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 1.889764999999975000
          Top = 25.118120000000000000
          Width = 752.126470000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 755.905999999999900000
        DataSet = dbVendaPagAntecipado
        DataSetName = 'dbVendaPagAntecipado'
        RowCount = 0
        object dbVendaPagAntecipadonumero_venda: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'numero_venda'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."numero_venda"]')
          ParentFont = False
        end
        object dbVendaPagAntecipadomesa_comanda: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'mesa_comanda'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."mesa_comanda"]')
          ParentFont = False
        end
        object dbVendaPagAntecipadovalor_venda: TfrxMemoView
          Left = 599.724800000000000000
          Top = 3.779529999999994000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'valor_venda'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."valor_venda"]')
          ParentFont = False
        end
        object dbVendaPagAntecipadovalor_movimento: TfrxMemoView
          Left = 679.094930000000000000
          Top = 3.779529999999994000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'valor_movimento'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."valor_movimento"]')
          ParentFont = False
        end
        object dbVendaPagAntecipadoresponsavel: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779529999999994000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'responsavel'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."responsavel"]')
          ParentFont = False
        end
        object dbVendaPagAntecipadodata_hora_venda: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779529999999994000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_venda'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."data_hora_venda"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 275.905690000000000000
          Top = 3.779529999999994000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          DataField = 'data_hora_movimento'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."data_hora_movimento"]')
          ParentFont = False
        end
        object dbVendaPagAntecipadosituacao: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'situacao'
          DataSet = dbVendaPagAntecipado
          DataSetName = 'dbVendaPagAntecipado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendaPagAntecipado."situacao"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 755.905999999999900000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Mesa/Comanda')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Venda')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 275.905690000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Movimento')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baCenter
          Left = 1.890007874999974000
          Top = 26.456709999999990000
          Width = 752.125984250000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Respons'#225'vel')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 602.724800000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vlr. Venda')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 679.094930000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Pgto.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000010000
        Top = 302.362400000000000000
        Width = 755.905999999999900000
        object Line4: TfrxLineView
          Align = baCenter
          Left = 1.889764999999975000
          Top = 3.779530000000022000
          Width = 752.126470000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 638.740570000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
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
        Height = 30.236240000000000000
        Top = 211.653680000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Align = baCenter
          Left = 1.890007874999974000
          Top = 2.000000000000000000
          Width = 752.125984250000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 634.961040000000000000
          Top = 4.559059999999988000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 680.315400000000000000
          Top = 4.559059999999988000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<dbVendaPagAntecipado."valor_movimento">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelResumoFinanceiro: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select coalesce(c_pagar.data_pagamento, c_receber.data_pagamento' +
        ') as data_pagamento,'
      
        'fn_nome_dia_semana(coalesce(c_pagar.data_pagamento, c_receber.da' +
        'ta_pagamento)) as dia_semana,'
      'coalesce(c_pagar.total_pago,0.0) as total_cpagar,'
      'case when coalesce(total_cpagar.total_cpagar,0.0)=0.0 then 0'
      
        'else (coalesce(c_pagar.total_pago,0.0) / total_cpagar.total_cpag' +
        'ar ) *100 end as percent_cpagar,'
      'coalesce(c_receber.total_pago,0.0) as total_creceber,'
      'case when coalesce(total_creceber.total_creceber,0.0)=0.0 then 0'
      
        'else (coalesce(c_receber.total_pago,0.0) / total_creceber.total_' +
        'creceber ) *100 end as percent_creceber,'
      
        'coalesce(c_receber.total_pago,0.0) - coalesce(c_pagar.total_pago' +
        ',0.0) as saldo,'
      '0.0 as acumulado'
      'from   ('
      
        'select date_trunc('#39'day'#39', cp.data_pagamento) as data_pagamento  ,' +
        ' sum(cp.valor_pago) as total_pago '
      'from cpagar cp '
      'where cp.id_situacao=7 --status pago'
      'and cp.data_pagamento>=:dtini and cp.data_pagamento<:dtfim'
      'and id_empresa=:emp'
      'group by date_trunc('#39'day'#39', cp.data_pagamento)'
      'order by 1) as c_pagar'
      'full join '
      '('
      
        'select date_trunc('#39'day'#39',v.ven_004) as data_pagamento, sum(ven_00' +
        '9) as  total_pago '
      'from venda v '
      'where v.sit_001=1 --venda finalizada'
      'and v.ven_004 >=:dtini '
      'and v.ven_004 <:dtfim'
      'and v.emp_001 = :emp'
      'group by date_trunc('#39'day'#39',v.ven_004)'
      
        'order by 1) as c_receber on c_pagar.data_pagamento = c_receber.d' +
        'ata_pagamento'
      'join '
      '('
      'select  sum(cp.valor_pago) as total_cpagar'
      'from cpagar cp '
      'where cp.id_situacao=7 --status pago'
      'and cp.data_pagamento>=:dtini and cp.data_pagamento<:dtfim'
      'and id_empresa=:emp'
      ') as total_cpagar on true'
      'join '
      '('
      'select sum(ven_009) as  total_creceber '
      'from venda v '
      'where v.sit_001=1 --venda finalizada'
      'and v.ven_004 >=:dtini '
      'and v.ven_004 <:dtfim'
      'and v.emp_001 = :emp'
      ' ) as total_creceber on true'
      'order by data_pagamento')
    Left = 496
    Top = 197
    ParamData = <
      item
        DataType = ftDate
        Name = 'dtini'
        Value = 42736.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'dtfim'
        Value = 43101.000000000000000000
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelResumoFinanceirodata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
      ReadOnly = True
    end
    object qrRelResumoFinanceirodia_semana: TWideMemoField
      FieldName = 'dia_semana'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRelResumoFinanceiropercent_cpagar: TFloatField
      FieldName = 'percent_cpagar'
      ReadOnly = True
    end
    object qrRelResumoFinanceirototal_creceber: TFloatField
      FieldName = 'total_creceber'
      ReadOnly = True
    end
    object qrRelResumoFinanceiropercent_creceber: TFloatField
      FieldName = 'percent_creceber'
      ReadOnly = True
    end
    object qrRelResumoFinanceirosaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
    end
    object qrRelResumoFinanceiroacumulado: TFloatField
      FieldName = 'acumulado'
    end
    object qrRelResumoFinanceirototal_cpagar: TFloatField
      FieldName = 'total_cpagar'
      ReadOnly = True
    end
  end
  object dbResumoFinanceiro: TfrxDBDataset
    UserName = 'dbResumoFinanceiro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data_pagamento=data_pagamento'
      'dia_semana=dia_semana'
      'percent_cpagar=percent_cpagar'
      'total_creceber=total_creceber'
      'percent_creceber=percent_creceber'
      'saldo=saldo'
      'acumulado=acumulado'
      'total_cpagar=total_cpagar')
    DataSet = cdsRelResumoFinanceiro
    BCDToCurrency = False
    Left = 456
    Top = 384
  end
  object repResumoFinanceiro: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42942.676334456020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 690
    Top = 204
    Datasets = <
      item
        DataSet = dbResumoFinanceiro
        DataSetName = 'dbResumoFinanceiro'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESUMO FINANCEIRO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 748.346940000000000000
        DataSet = dbResumoFinanceiro
        DataSetName = 'dbResumoFinanceiro'
        KeepHeader = True
        RowCount = 0
        object dbResumoFinanceirodata_pagamento: TfrxMemoView
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'data_pagamento'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Memo.UTF8W = (
            '[dbResumoFinanceiro."data_pagamento"]')
        end
        object dbResumoFinanceirodia_semana: TfrxMemoView
          Left = 98.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'dia_semana'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Memo.UTF8W = (
            '[dbResumoFinanceiro."dia_semana"]')
        end
        object dbResumoFinanceiroacumulado: TfrxMemoView
          Left = 642.520100000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'acumulado'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumoFinanceiro."acumulado"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 515.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'saldo'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumoFinanceiro."saldo"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 354.716760000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'total_cpagar'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumoFinanceiro."total_cpagar"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 197.315090000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'total_creceber'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumoFinanceiro."total_creceber"]')
          ParentFont = False
        end
        object dbResumoFinanceiropercent_creceber: TfrxMemoView
          Left = 302.362400000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'percent_creceber'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbResumoFinanceiro."percent_creceber"]')
          ParentFont = False
        end
        object dbResumoFinanceiropercent_cpagar: TfrxMemoView
          Left = 456.764070000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'percent_cpagar'
          DataSet = dbResumoFinanceiro
          DataSetName = 'dbResumoFinanceiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbResumoFinanceiro."percent_cpagar"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 27.236240000000000000
        Top = 204.094620000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.779529999999994100
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.779529999999994100
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 159.519790000000000000
          Top = 3.779529999999994000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbResumoFinanceiro."total_creceber">,MasterData1)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 324.480520000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbResumoFinanceiro."total_cpagar">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 109.606370000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 2.779529999999994000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 23.472479999999990000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 4.047227010000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 631.181510000000000000
          Top = 4.047227010000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ACUMULADO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 197.315090000000000000
          Top = 4.047227010000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RECEITAS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 4.047227010000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 354.716760000000000000
          Top = 4.047227010000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESPESAS')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 456.764070000000000000
          Top = 4.047227010000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 515.457020000000000000
          Top = 4.047227010000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 291.023810000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 7.559296771653509000
          Top = 3.779530000000022000
          Width = 733.228346456693000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object cdsRelResumoFinanceiro: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelResumoFinanceiro'
    Left = 544
    Top = 384
    object cdsRelResumoFinanceirodata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
      ReadOnly = True
    end
    object cdsRelResumoFinanceirodia_semana: TWideMemoField
      FieldName = 'dia_semana'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object cdsRelResumoFinanceiropercent_cpagar: TFloatField
      FieldName = 'percent_cpagar'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object cdsRelResumoFinanceirototal_creceber: TFloatField
      FieldName = 'total_creceber'
      ReadOnly = True
      currency = True
    end
    object cdsRelResumoFinanceiropercent_creceber: TFloatField
      FieldName = 'percent_creceber'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object cdsRelResumoFinanceirosaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
      currency = True
    end
    object cdsRelResumoFinanceiroacumulado: TFloatField
      FieldName = 'acumulado'
      currency = True
    end
    object cdsRelResumoFinanceirototal_cpagar: TFloatField
      FieldName = 'total_cpagar'
      ReadOnly = True
      currency = True
    end
  end
  object dspRelResumoFinanceiro: TDataSetProvider
    DataSet = qrRelResumoFinanceiro
    Left = 728
    Top = 144
  end
  object qrRelRetiradaesuprimento: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select ci.valor, ci.id_empresa, ci.id_caixa, ci.observacao, '
      'c.observacao as observacao_caixa,ci.data,'
      'case ci.classificacao '
      '  when '#39'S'#39' then '#39'Suprimento'#39
      '  when '#39'C'#39' then '#39'Outro Cr'#233'dito'#39' '
      '  when '#39'R'#39' then '#39'Retirada/Sangria'#39#9
      '  when '#39'D'#39' then  '#39'Outro D'#233'bito'#39' '
      '  end as classif,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'ci.tipo_movimento ,'
      'case ci.tipo_movimento'
      'when '#39'E'#39' then '#39'Entrada'#39
      'when '#39'S'#39' then '#39'Sa'#237'da'#39
      'end as Desc_tipo_movimento '
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      'where  ci.classificacao in ('#39'C'#39','#39'S'#39','#39'R'#39','#39'D'#39') '
      'and ci.data>=:DTINI and ci.data <:DTFIM and c.id_empresa=:emp'
      'order by ci.tipo_movimento')
    Left = 872
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelRetiradaesuprimentovalor: TFloatField
      FieldName = 'valor'
    end
    object qrRelRetiradaesuprimentoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrRelRetiradaesuprimentoid_caixa: TIntegerField
      FieldName = 'id_caixa'
      Required = True
    end
    object qrRelRetiradaesuprimentoobservacao: TBlobField
      FieldName = 'observacao'
    end
    object qrRelRetiradaesuprimentoobservacao_caixa: TBlobField
      FieldName = 'observacao_caixa'
      ReadOnly = True
    end
    object qrRelRetiradaesuprimentodata: TDateTimeField
      FieldName = 'data'
    end
    object qrRelRetiradaesuprimentoclassif: TWideMemoField
      FieldName = 'classif'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRelRetiradaesuprimentonome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelRetiradaesuprimentodesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelRetiradaesuprimentodata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelRetiradaesuprimentodata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelRetiradaesuprimentotipo_movimento: TWideStringField
      FieldName = 'tipo_movimento'
      FixedChar = True
      Size = 1
    end
    object qrRelRetiradaesuprimentodesc_tipo_movimento: TWideMemoField
      FieldName = 'desc_tipo_movimento'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object repRetiradaesuprimentos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43006.671556747700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 610
    Top = 332
    Datasets = <
      item
        DataSet = dbRetiradaesuprimento
        DataSetName = 'dbRetiradaesuprimento'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Line5: TfrxLineView
          Align = baCenter
          Left = 5.669532992126009000
          Top = 26.354360000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.338590000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE SANGRIA E SUPRIMENTOS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 748.346940000000000000
        DataSet = dbRetiradaesuprimento
        DataSetName = 'dbRetiradaesuprimento'
        KeepHeader = True
        RowCount = 0
        object dbResumoFinanceirodata_pagamento: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 245.669450000000000000
          Height = 15.118110240000000000
          DataField = 'observacao'
          DataSet = dbRetiradaesuprimento
          DataSetName = 'dbRetiradaesuprimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRetiradaesuprimento."observacao"]')
          ParentFont = False
        end
        object dbResumoFinanceiropercent_creceber: TfrxMemoView
          Left = 438.984540000000000000
          Top = 1.000000000000000000
          Width = 117.165430000000000000
          Height = 15.118110240000000000
          DataField = 'data'
          DataSet = dbRetiradaesuprimento
          DataSetName = 'dbRetiradaesuprimento'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRetiradaesuprimento."data"]')
          ParentFont = False
        end
        object dbResumoFinanceiropercent_cpagar: TfrxMemoView
          Left = 591.149970000000000000
          Top = 1.000000000000000000
          Width = 154.960683620000000000
          Height = 15.118110240000000000
          DataField = 'desc_tipo_movimento'
          DataSet = dbRetiradaesuprimento
          DataSetName = 'dbRetiradaesuprimento'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRetiradaesuprimento."desc_tipo_movimento"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 290.023810000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          DataField = 'valor'
          DataSet = dbRetiradaesuprimento
          DataSetName = 'dbRetiradaesuprimento'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRetiradaesuprimento."valor"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 343.937230000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 5.669532992126009000
          Top = 3.779530000000022000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        Condition = 'dbRetiradaesuprimento."desc_tipo_movimento"'
        object Line3: TfrxLineView
          Align = baCenter
          Left = 5.669532992126009000
          Top = 30.645640000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 5.669532992126009000
          Top = 49.338590000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 8.338590000000000000
          Top = 31.913337010000010000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 443.543600000000000000
          Top = 31.913337010000010000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 573.929500000000000000
          Top = 31.645640000000000000
          Width = 207.874103620000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO DE MOVIMENTA'#199#195'O')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 310.023810000000000000
          Top = 31.645640000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object dbRetiradaesuprimentodesc_tipo_movimento: TfrxMemoView
          Align = baCenter
          Left = 258.897805000000000000
          Top = 7.559060000000002000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          DataField = 'desc_tipo_movimento'
          DataSet = dbRetiradaesuprimento
          DataSetName = 'dbRetiradaesuprimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbRetiradaesuprimento."desc_tipo_movimento"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 234.330860000000000000
        Width = 748.346940000000000000
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669532992126009000
          Top = 4.779529999999994000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 306.141930000000000000
          Top = 7.559059999999988000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRetiradaesuprimento."valor">,MasterData1)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
          Top = 6.559059999999988000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
      end
    end
  end
  object dbRetiradaesuprimento: TfrxDBDataset
    UserName = 'dbRetiradaesuprimento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor=valor'
      'id_empresa=id_empresa'
      'id_caixa=id_caixa'
      'observacao=observacao'
      'observacao_caixa=observacao_caixa'
      'data=data'
      'classif=classif'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'tipo_movimento=tipo_movimento'
      'desc_tipo_movimento=desc_tipo_movimento')
    DataSet = qrRelRetiradaesuprimento
    BCDToCurrency = False
    Left = 696
    Top = 336
  end
  object qrRelRecebimentosFormaPag: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'sum(ci.valor) as total_forma,  '
      'fp.for_002 as desc_forma, '
      'ci.tipo_movimento,'
      'cast(:dtini as date) as data_inicial, '
      'cast(:dtfim as date) as data_final'
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formapgt' +
        'o=fp.for_001'
      
        'join venda v on v.ven_001=ci.id_venda and v.emp_001=ci.id_empres' +
        'a'
      
        'where ci.data>=:dtini and ci.data<:dtfim and ci.id_empresa=:emp ' +
        'and ci.tipo_movimento='#39'E'#39
      '-- n'#227'o traz as vendas cancelas'
      'and ci.id_venda not in'
      '(select sci.id_venda '
      'from caixaitem sci'
      
        'join venda sv on sv.ven_001=sci.id_venda and sv.emp_001=sci.id_e' +
        'mpresa'
      
        'where sci.data>=:dtini and sci.data<:dtfim and sci.id_empresa=:e' +
        'mp and sv.sit_001=2)'
      'group by fp.for_002, ci.tipo_movimento'
      'order by 1 desc, ci.tipo_movimento, fp.for_002')
    Left = 912
    Top = 424
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
    object qrRelRecebimentosFormaPagdesc_forma: TWideStringField
      FieldName = 'desc_forma'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelRecebimentosFormaPagtipo_movimento: TWideStringField
      FieldName = 'tipo_movimento'
      FixedChar = True
      Size = 1
    end
    object qrRelRecebimentosFormaPagdata_inicial: TDateField
      FieldName = 'data_inicial'
      ReadOnly = True
    end
    object qrRelRecebimentosFormaPagdata_final: TDateField
      FieldName = 'data_final'
      ReadOnly = True
    end
    object qrRelRecebimentosFormaPagtotal_forma: TFloatField
      FieldName = 'total_forma'
      ReadOnly = True
    end
  end
  object dbRecebimentosFormaPag: TfrxDBDataset
    UserName = 'dbRecebimentosFormaPag'
    CloseDataSource = False
    FieldAliases.Strings = (
      'total_forma=total_forma'
      'desc_forma=desc_forma'
      'tipo_movimento=tipo_movimento'
      'data_inicial=data_inicial'
      'data_final=data_final')
    DataSet = qrRelRecebimentosFormaPag
    BCDToCurrency = False
    Left = 598
    Top = 461
  end
  object repRecebimentosFormaPag: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43010.469904016200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 598
    Top = 513
    Datasets = <
      item
        DataSet = dbRecebimentosFormaPag
        DataSetName = 'dbRecebimentosFormaPag'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 763.465060000000000000
        DataSet = dbRecebimentosFormaPag
        DataSetName = 'dbRecebimentosFormaPag'
        RowCount = 0
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 325.039580000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'desc_forma'
          DataSet = dbRecebimentosFormaPag
          DataSetName = 'dbRecebimentosFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRecebimentosFormaPag."desc_forma"]')
          ParentFont = False
          WordBreak = True
        end
        object dbMovimentoFormaPagtotal_forma: TfrxMemoView
          Left = 666.079160000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897640240000000000
          DataField = 'total_forma'
          DataSet = dbRecebimentosFormaPag
          DataSetName = 'dbRecebimentosFormaPag'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRecebimentosFormaPag."total_forma"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 113.385900000000000000
        Width = 763.465060000000000000
        Condition = 'dbRecebimentosFormaPag."tipo_movimento"'
        object Line8: TfrxLineView
          Align = baCenter
          Left = 5.669537874999997000
          Top = 21.472480000000000000
          Width = 752.125984250000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.236239999999995000
          Width = 177.637910000000000000
          Height = 17.007874015748000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 666.079160000000000000
          Top = 2.236239999999995000
          Width = 75.590600000000000000
          Height = 17.007874015748000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object dbMovimentoFormaPagdata_inicial: TfrxMemoView
          Left = 310.126160000000000000
          Top = 2.236239999999995000
          Width = 79.370130000000000000
          Height = 17.007874015748000000
          DataField = 'data_inicial'
          DataSet = dbRecebimentosFormaPag
          DataSetName = 'dbRecebimentosFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRecebimentosFormaPag."data_inicial"]')
          ParentFont = False
        end
        object dbMovimentoFormaPagdata_final: TfrxMemoView
          Left = 496.102660000000000000
          Top = 2.236239999999995000
          Width = 79.370130000000000000
          Height = 17.007874015748000000
          DataField = 'data_final'
          DataSet = dbRecebimentosFormaPag
          DataSetName = 'dbRecebimentosFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRecebimentosFormaPag."data_final"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 212.653680000000000000
          Top = 2.236239999999995000
          Width = 98.267780000000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA INICIAL:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 396.850650000000000000
          Top = 2.236239999999995000
          Width = 90.708720000000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA FINAL:')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 207.874150000000000000
        Width = 763.465060000000000000
        object Memo4: TfrxMemoView
          Left = 589.606680000000000000
          Top = 4.779529999999994000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          Left = 5.669537874015497000
          Top = 3.779529999999994000
          Width = 752.125984251969000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 666.079160000000000000
          Top = 4.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRecebimentosFormaPag."total_forma">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 763.465060000000000000
        object Line5: TfrxLineView
          Align = baCenter
          Left = 5.669537874015497000
          Top = 26.354360000000000000
          Width = 752.125984251969000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.338590000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTAGEM DE PAGAMENTOS')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 298.582870000000000000
        Width = 763.465060000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 5.669537874015497000
          Top = 3.779530000000022000
          Width = 752.125984251969000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object rpRelprodutosvendidosfornecedor: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43031.458638206000000000
    ReportOptions.LastChange = 43031.458638206000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 40
    Datasets = <
      item
        DataSet = dbRelprodutosvendidosfornecedor
        DataSetName = 'dbRelprodutosvendidosfornecedor'
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
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 4.338590000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO PRODUTOS VENDIDOS POR FORNECEDOR')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 74.472480000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbRelprodutosvendidosfornecedornome_fantasia: TfrxMemoView
          Left = 92.370130000000000000
          Top = 38.236240000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR:  [dbRelprodutosvendidosfornecedor."nome_fantasia"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 4.220470000000000000
          Top = 95.472480000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 564.606680000000000000
          Top = 76.795300000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 77.574830000000010000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 118.401670000000000000
          Top = 76.795300000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o do produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 410.205010000000000000
          Top = 76.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 476.016080000000000000
          Top = 76.795300000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 652.299630000000000000
          Top = 77.252010000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = dbRelprodutosvendidosfornecedor
        DataSetName = 'dbRelprodutosvendidosfornecedor'
        RowCount = 0
        object dbRelprodutosvendidosfornecedormat_004: TfrxMemoView
          Left = 4.338590000000000000
          Top = 2.133890000000008000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelprodutosvendidosfornecedor."mat_004"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedormat_003: TfrxMemoView
          Left = 117.724490000000000000
          Top = 2.133890000000008000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'mat_003'
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelprodutosvendidosfornecedor."mat_003"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedorqtdevenda: TfrxMemoView
          Left = 412.645950000000000000
          Top = 0.354360000000014000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'qtdevenda'
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelprodutosvendidosfornecedor."qtdevenda"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedorcusto_produto: TfrxMemoView
          Left = 481.354670000000000000
          Top = 2.133890000000008000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelprodutosvendidosfornecedor."custo_produto"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedorvlrvenda1: TfrxMemoView
          Left = 652.213050000000000000
          Top = 2.133890000000008000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelprodutosvendidosfornecedor."vlrvenda"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedorvalor_unitario: TfrxMemoView
          Left = 566.929500000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[dbRelprodutosvendidosfornecedor."valor_unitario"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object dbRelprodutosvendidosfornecedortotgeral: TfrxMemoView
          Left = 477.173470000000000000
          Top = 5.881879999999995000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total: R$ ')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 1.220469999999978000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 581.134200000000000000
          Top = 5.779529999999994000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            '[SUM(<dbRelprodutosvendidosfornecedor."vlrvenda">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 525.000310000000000000
          Top = 5.000000000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelprodutosvendidosfornecedor: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      ''
      '     SELECT MAT.MAT_003 '
      '           , MAT.MAT_004 '
      '           , SUM(ITE.ITE_002) AS QTDEVENDA '
      '           , SUM(ITE.ITE_005) AS VLRVENDA '
      '           , MAT.MAT_012 AS CUSTO_PRODUTO'
      '           ,F.id_fornecedor'
      '           ,F.nome_fantasia as nome_fantasia'
      '           ,ITE.ITE_003 AS VALOR_UNITARIO'
      '         '
      '           '
      '           , (SELECT SUM(VENDAITEM.ITE_005) '
      '                FROM VENDAITEM '
      
        '                LEFT OUTER JOIN VENDA ON (VENDA.EMP_001 = VENDAI' +
        'TEM.EMP_001) AND (VENDA.VEN_001 = VENDAITEM.VEN_001) '
      '               WHERE VENDAITEM.EMP_001 = :EMP'
      '                 AND VENDA.VEN_004  BETWEEN :DTINI AND  :DTFIM'
      '      '
      '        '
      '                 AND VENDA.SIT_001 = 1 '
      '             ) AS TOTGERAL '
      '          '
      '    '
      '      FROM VENDAITEM ITE '
      
        '      LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_00' +
        '1) AND (MAT.MAT_001 = ITE.MAT_001) '
      
        '      LEFT OUTER JOIN UNIDADES UNI ON (UNI.EMP_001 = MAT.EMP_001' +
        ') AND (UNI.UNI_001 = MAT.UNI_001) '
      
        '      LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) A' +
        'ND (VEN.VEN_001 = ITE.VEN_001)    '
      
        '      LEFT OUTER JOIN FORNECEDOR F ON (F.ID_FORNECEDOR=MAT.ID_FO' +
        'RNECEDOR) AND (MAT.EMP_001=F.ID_EMPRESA)'
      
        '      WHERE VEN.VEN_004 BETWEEN :DTINI AND :DTFIM   AND F.ID_FOR' +
        'NECEDOR= :ID_FORNECEDOR   '
      '       '
      '        AND VEN.SIT_001 = 1 '
      '        AND MAT.MAT_008 > 0 '
      '        and ite.sit_001 not in (0,2,3) '
      '    '
      '      GROUP BY  MAT.MAT_004 '
      '           , MAT.MAT_003 '
      '           , TOTGERAL '
      '           ,MAT.MAT_012'
      '            ,f.id_fornecedor'
      '           ,f.nome_fantasia'
      '           ,ITE.ITE_003'
      '        '
      '      ORDER BY   MAT.MAT_004'
      ''
      ''
      ''
      ''
      '')
    Left = 944
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID_FORNECEDOR'
        Value = nil
      end>
    object qrRelprodutosvendidosfornecedormat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrRelprodutosvendidosfornecedormat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrRelprodutosvendidosfornecedorqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      ReadOnly = True
    end
    object qrRelprodutosvendidosfornecedorvlrvenda: TFloatField
      FieldName = 'vlrvenda'
      ReadOnly = True
    end
    object qrRelprodutosvendidosfornecedorcusto_produto: TFloatField
      FieldName = 'custo_produto'
      ReadOnly = True
    end
    object qrRelprodutosvendidosfornecedorid_fornecedor: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_fornecedor'
      ReadOnly = True
    end
    object qrRelprodutosvendidosfornecedornome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrRelprodutosvendidosfornecedorvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      Required = True
    end
    object qrRelprodutosvendidosfornecedortotgeral: TFloatField
      FieldName = 'totgeral'
      ReadOnly = True
    end
  end
  object dbRelprodutosvendidosfornecedor: TfrxDBDataset
    UserName = 'dbRelprodutosvendidosfornecedor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mat_003=mat_003'
      'mat_004=mat_004'
      'qtdevenda=qtdevenda'
      'vlrvenda=vlrvenda'
      'custo_produto=custo_produto'
      'id_fornecedor=id_fornecedor'
      'nome_fantasia=nome_fantasia'
      'valor_unitario=valor_unitario'
      'totgeral=totgeral')
    DataSet = qrRelprodutosvendidosfornecedor
    BCDToCurrency = False
    Left = 824
    Top = 216
  end
  object qrRelcontasapagar: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      '  cp.id_cpagar,'
      '  cp.descricao,'
      '  cp.nota, '
      '  cp.data,'
      '  cp.data_vencimento,'
      '  cp.documento, '
      '  cp.valor,'
      '  cp.valor_pago,'
      '  case when cp.id_situacao = 7 then 0  -- Pago'
      '  when cp.id_situacao = 2 then 4 -- Cancelado'
      
        '  when (cp.id_situacao = 4 and cp.data_vencimento<current_date )' +
        'then 1'
      
        '  when (cp.id_situacao = 4 and cp.data_vencimento=current_date )' +
        'then 2'
      '  else 3 end as cod_status_pag, '
      '  cast (case cp.especie '
      '  when 0 then  '#39'Boleto'#39
      '  when 1 then  '#39'Cart'#227'o'#39
      '  when 2 then  '#39'Cheque'#39
      '  when 3 then  '#39'Credi'#225'rio'#39
      '  when 4 then  '#39'D'#233'bito Conta'#39
      '  when 5 then  '#39'Duplicata'#39
      '  when 6 then  '#39'Nota avulsa'#39
      '  when 7 then  '#39'Promiss'#243'ria'#39
      #9'else '#39'N'#227'o informado'#39' end  as varchar(20) ) as especie_desc,'
      '  f.nome_fantasia as nome_fornecedor,'
      '  c.descricao as conta_desc,'
      '  cp.id_situacao,'
      '  ui.usu_002 as usuario_insercao,'
      '  uc.usu_002 as usuario_cancelamento,'
      '  up.usu_002 as usuario_pagamento, '
      '  cp.data_cancelamento,'
      '  cp.data_pagamento,'
      '  cp.id_caixa,'
      '  cp.itemcaixaitem,'
      '  cp.id_movimentocc'
      'from cpagar cp'
      
        'join fornecedor f on f.id_fornecedor= cp.id_fornecedor and f.id_' +
        'empresa=cp.id_empresa'
      
        'join conta c on c.id_conta= cp.id_conta and c.id_empresa=cp.id_e' +
        'mpresa'
      'left join usuarios ui on ui.usu_001=cp.id_usuario'
      'left join usuarios up on up.usu_001=cp.id_usuario_pagamento'
      'left join usuarios uc on uc.usu_001=cp.id_usuario_cancelamento'
      'where cp.id_empresa = :id_empresa')
    Left = 640
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrRelcontasapagarid_cpagar: TIntegerField
      FieldName = 'id_cpagar'
    end
    object qrRelcontasapagardescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qrRelcontasapagarnota: TIntegerField
      FieldName = 'nota'
    end
    object qrRelcontasapagardata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object qrRelcontasapagardata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrRelcontasapagardocumento: TWideStringField
      FieldName = 'documento'
    end
    object qrRelcontasapagarvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qrRelcontasapagarvalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object qrRelcontasapagarcod_status_pag: TIntegerField
      FieldName = 'cod_status_pag'
      ReadOnly = True
    end
    object qrRelcontasapagarespecie_desc: TWideStringField
      FieldName = 'especie_desc'
      ReadOnly = True
    end
    object qrRelcontasapagarnome_fornecedor: TWideStringField
      FieldName = 'nome_fornecedor'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrRelcontasapagarconta_desc: TWideStringField
      FieldName = 'conta_desc'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrRelcontasapagarid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrRelcontasapagarusuario_insercao: TWideStringField
      FieldName = 'usuario_insercao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelcontasapagarusuario_cancelamento: TWideStringField
      FieldName = 'usuario_cancelamento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelcontasapagarusuario_pagamento: TWideStringField
      FieldName = 'usuario_pagamento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelcontasapagardata_cancelamento: TDateTimeField
      FieldName = 'data_cancelamento'
    end
    object qrRelcontasapagardata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
    end
    object qrRelcontasapagarid_caixa: TIntegerField
      FieldName = 'id_caixa'
    end
    object qrRelcontasapagaritemcaixaitem: TIntegerField
      FieldName = 'itemcaixaitem'
    end
    object qrRelcontasapagarid_movimentocc: TIntegerField
      FieldName = 'id_movimentocc'
    end
  end
  object dbRelcontasapagar: TfrxDBDataset
    UserName = 'dbRelcontasapagar'
    CloseDataSource = False
    DataSet = qrRelcontasapagar
    BCDToCurrency = False
    Left = 928
    Top = 216
  end
  object qrNotaentrada: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select n.id_nota_entrada, n.id_fornecedor, n.numero,n.data_emiss' +
        'ao, n.data_entrada,n.serie,n.valor_total,n.cfop,f.nome_fantasia '
      'from nota_entrada as n'
      'join fornecedor f'
      'on n.id_fornecedor=f.id_fornecedor'
      
        'where n.id_situacao=1 and n.id_empresa=:id_empresa and  n.data_e' +
        'ntrada BETWEEN :DTINI AND :DTFIM ')
    Left = 808
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
    object qrNotaentradaid_nota_entrada: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_nota_entrada'
    end
    object qrNotaentradaid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Required = True
    end
    object qrNotaentradanumero: TIntegerField
      FieldName = 'numero'
      Required = True
    end
    object qrNotaentradadata_emissao: TDateField
      FieldName = 'data_emissao'
    end
    object qrNotaentradadata_entrada: TDateField
      FieldName = 'data_entrada'
    end
    object qrNotaentradaserie: TIntegerField
      FieldName = 'serie'
    end
    object qrNotaentradavalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object qrNotaentradanome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrNotaentradacfop: TWideStringField
      FieldName = 'cfop'
      Size = 4
    end
  end
  object rpNotaentrada: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43039.487189444400000000
    ReportOptions.LastChange = 43039.487189444400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 872
    Top = 456
    Datasets = <
      item
        DataSet = dbNotaentrada
        DataSetName = 'dbNotaentrada'
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
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELA'#199#195'O DE NOTA FISCAL DE COMPRA')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 30.236239999999990000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 63.504020000000000000
          Top = 28.370130000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.559060000000000000
          Top = 27.149660000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#218'MERO ')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779525120000000000
          Top = 46.929190000000010000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 236.346630000000000000
          Top = 28.149660000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.015770000000000000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 517.693260000000000000
          Top = 28.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'S'#201'RIE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 571.149970000000000000
          Top = 28.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 608.504330000000000000
          Top = 29.015770000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR DA NOTA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 143.622140000000000000
          Top = 28.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LANCTO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = dbNotaentrada
        DataSetName = 'dbNotaentrada'
        RowCount = 0
        object dbNotaentradanumero: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'numero'
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNotaentrada."numero"]')
          ParentFont = False
        end
        object dbNotaentradadata_emissao: TfrxMemoView
          Left = 53.811070000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNotaentrada."data_emissao"]')
          ParentFont = False
        end
        object dbNotaentradaserie: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779529999999994000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'serie'
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNotaentrada."serie"]')
          ParentFont = False
        end
        object dbNotaentradacfop: TfrxMemoView
          Left = 576.488560000000000000
          Top = 3.779529999999994000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'cfop'
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNotaentrada."cfop"]')
          ParentFont = False
        end
        object dbNotaentradavalor_total: TfrxMemoView
          Left = 633.401980000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbNotaentrada."valor_total"]')
          ParentFont = False
        end
        object dbNotaentradadata_entrada: TfrxMemoView
          Left = 143.960730000000000000
          Top = 3.779529999999994000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNotaentrada."data_entrada"]')
          ParentFont = False
        end
        object dbNotaentradanome_fantasia: TfrxMemoView
          Left = 237.889920000000000000
          Top = 4.559059999999988000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          DataField = 'nome_fantasia'
          DataSet = dbNotaentrada
          DataSetName = 'dbNotaentrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbNotaentrada."nome_fantasia"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        object Line1: TfrxLineView
          Left = 5.779527560000000000
          Top = 3.779529999999994000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 510.236550000000000000
          Top = 6.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL: R$')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dbNotaentrada."valor_total">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 8.338590000000011000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade de notas:[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 546.031850000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] / [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DATE] [TIME]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object dbNotaentrada: TfrxDBDataset
    UserName = 'dbNotaentrada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_nota_entrada=id_nota_entrada'
      'id_fornecedor=id_fornecedor'
      'numero=numero'
      'data_emissao=data_emissao'
      'data_entrada=data_entrada'
      'serie=serie'
      'valor_total=valor_total'
      'nome_fantasia=nome_fantasia'
      'cfop=cfop')
    DataSet = qrNotaentrada
    BCDToCurrency = False
    Left = 928
    Top = 456
  end
  object qrVendasporgarcom: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select i.gar_001, u.usu_002, sum(ite_005) as total_vendas '
      'from vendaitem i'
      'left join venda v on v.ven_001 = i.ven_001'
      'left join usuarios u on u.usu_001 = i.gar_001'
      'where v.ven_024 in ('#39'M'#39', '#39'C'#39')'
      'and i.sit_001 = 4'
      'and v.ven_004 between :dtini and :dtfim'
      'group by i.gar_001, u.usu_002'
      'order by i.gar_001')
    Left = 600
    Top = 576
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
      end>
    object qrVendasporgarcomgar_001: TIntegerField
      FieldName = 'gar_001'
    end
    object qrVendasporgarcomusu_002: TWideStringField
      FieldName = 'usu_002'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendasporgarcomtotal_vendas: TFloatField
      FieldName = 'total_vendas'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
  object rpVendasporgarcom: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43031.458638206000000000
    ReportOptions.LastChange = 43143.594649803240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 712
    Top = 576
    Datasets = <
      item
        DataSet = dbVendasporgarcom
        DataSetName = 'dbVendasporgarcom'
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
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 4.338590000000000000
          Width = 710.551640000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS POR GAR'#199'OM')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 43.472480000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 4.220470000000000000
          Top = 64.472480000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.574830000000010000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
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
        object Memo3: TfrxMemoView
          Left = 84.385900000000000000
          Top = 44.795300000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Gar'#231'om')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 652.299630000000000000
          Top = 45.252010000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = dbVendasporgarcom
        DataSetName = 'dbVendasporgarcom'
        RowCount = 0
        object dbRelprodutosvendidosfornecedormat_004: TfrxMemoView
          Left = 4.338590000000000000
          Top = 2.133890000000008000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'gar_001'
          DataSet = dbVendasporgarcom
          DataSetName = 'dbVendasporgarcom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasporgarcom."gar_001"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedormat_003: TfrxMemoView
          Left = 84.488250000000000000
          Top = 2.133890000000008000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          DataField = 'usu_002'
          DataSet = dbVendasporgarcom
          DataSetName = 'dbVendasporgarcom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasporgarcom."usu_002"]')
          ParentFont = False
        end
        object dbRelprodutosvendidosfornecedorvlrvenda1: TfrxMemoView
          Left = 611.197280000000000000
          Top = 2.133890000000008000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'total_vendas'
          DataSet = dbVendasporgarcom
          DataSetName = 'dbVendasporgarcom'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasporgarcom."total_vendas"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object dbRelprodutosvendidosfornecedortotgeral: TfrxMemoView
          Left = 500.173470000000000000
          Top = 5.881879999999995000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = dbRelprodutosvendidosfornecedor
          DataSetName = 'dbRelprodutosvendidosfornecedor'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total: R$ ')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 1.220470000000006000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 607.590910000000000000
          Top = 5.779529999999994000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasporgarcom."total_vendas">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 449.409710000000000000
          Top = 1.220469999999978000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object dbVendasporgarcom: TfrxDBDataset
    UserName = 'dbVendasporgarcom'
    CloseDataSource = False
    FieldAliases.Strings = (
      'gar_001=gar_001'
      'usu_002=usu_002'
      'total_vendas=total_vendas')
    DataSet = qrVendasporgarcom
    BCDToCurrency = False
    Left = 656
    Top = 578
  end
  object qrRelListaProdutos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_004 as cod_ref, m.mat_003 as descricao, '
      'coalesce(m.mat_012, 0.00) as preco_custo,'
      'm.mat_008 as preco_venda,'
      'coalesce(m.mat_018, 0.00) as margem,'
      'case when coalesce(m.mat_012,0.0) <>0 then'
      '  ((m.mat_008/m.mat_012) -1)*100'
      ' else  100 end as margem_calc,'
      '(coalesce(m.mat_008, 0) - coalesce(m.mat_012,0)) as lucro_valor'
      'from materiais m'
      'where true -- n'#227'o remover, utilizado para filtro'
      'order by m.mat_003')
    Left = 344
    Top = 568
    object qrRelListaProdutoscod_ref: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object qrRelListaProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object qrRelListaProdutospreco_custo: TFloatField
      FieldName = 'preco_custo'
    end
    object qrRelListaProdutospreco_venda: TFloatField
      FieldName = 'preco_venda'
      Required = True
    end
    object qrRelListaProdutosmargem: TFloatField
      FieldName = 'margem'
    end
    object qrRelListaProdutosmargem_calc: TFloatField
      FieldName = 'margem_calc'
      ReadOnly = True
    end
    object qrRelListaProdutoslucro_valor: TFloatField
      FieldName = 'lucro_valor'
      ReadOnly = True
    end
  end
  object dbListaProdutos: TfrxDBDataset
    UserName = 'dbListaProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_ref=cod_ref'
      'descricao=descricao'
      'preco_custo=preco_custo'
      'preco_venda=preco_venda'
      'margem=margem'
      'margem_calc=margem_calc'
      'lucro_valor=lucro_valor')
    DataSet = qrRelListaProdutos
    BCDToCurrency = False
    Left = 416
    Top = 568
  end
  object repListaProdutos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42975.482142997700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 490
    Top = 564
    Datasets = <
      item
        DataSet = dbListaProdutos
        DataSetName = 'dbListaProdutos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTOS COM MARGEM DE LUCRO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 748.346940000000000000
        DataSet = dbListaProdutos
        DataSetName = 'dbListaProdutos'
        KeepHeader = True
        RowCount = 0
        object dbResumoFinanceirodata_pagamento: TfrxMemoView
          Left = 3.338590000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          DataField = 'cod_ref'
          DataSet = dbListaProdutos
          DataSetName = 'dbListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbListaProdutos."cod_ref"]')
          ParentFont = False
        end
        object dbResumoFinanceirodia_semana: TfrxMemoView
          Left = 102.606370000000000000
          Top = 1.000000000000000000
          Width = 302.362400000000000000
          Height = 15.118110240000000000
          DataField = 'descricao'
          DataSet = dbListaProdutos
          DataSetName = 'dbListaProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbListaProdutos."descricao"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 411.575140000000000000
          Top = 1.000000000000000000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          DataField = 'preco_custo'
          DataSet = dbListaProdutos
          DataSetName = 'dbListaProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbListaProdutos."preco_custo"]')
          ParentFont = False
        end
        object dbResumoFinanceiropercent_cpagar: TfrxMemoView
          Left = 580.299630000000000000
          Top = 1.000000000000000000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          DataField = 'margem_calc'
          DataSet = dbListaProdutos
          DataSetName = 'dbListaProdutos'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbListaProdutos."margem_calc"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 495.606680000000000000
          Top = 1.000000000000000000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          DataSet = dbListaProdutos
          DataSetName = 'dbListaProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbListaProdutos."preco_venda"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 666.000000000000000000
          Top = 1.259739999999994000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          DataField = 'lucro_valor'
          DataSet = dbListaProdutos
          DataSetName = 'dbListaProdutos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbListaProdutos."lucro_valor"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 27.236240000000000000
        Top = 200.315090000000000000
        Width = 748.346940000000000000
        object Line1: TfrxLineView
          Top = 0.779529999999994100
          Width = 747.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 109.606370000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Top = 2.779529999999994000
          Width = 746.834645669291300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Top = 23.472479999999990000
          Width = 746.834645669291300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 3.338590000000000000
          Top = 4.047227010000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 103.385900000000000000
          Top = 4.047227010000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 419.575140000000000000
          Top = 4.047227010000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 588.299630000000000000
          Top = 4.047227010000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LUCRO %')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 503.606680000000000000
          Top = 4.779529999999994000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 673.000000000000000000
          Top = 4.393630000000002000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'LUCRO R$')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 287.244280000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 0.756147165354350000
          Top = 3.779530000000022000
          Width = 746.834645669291300000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 478.401980000000000000
          Top = 7.559059999999988000
          Width = 262.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object qrCPagar: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cp.id_cpagar, cp.descricao, cp.nota, cp.data, cp.data_ven' +
        'cimento, cp.documento, cp.valor, cp.valor_pago, (cp.valor-cp.val' +
        'or_pago) as aberto,'
      'cast (case cp.especie '
      'when 0 then  '#39'Boleto'#39
      'when 1 then  '#39'Cart'#227'o'#39
      'when 2 then  '#39'Cheque'#39
      'when 3 then  '#39'Credi'#225'rio'#39
      'when 4 then  '#39'D'#233'bito Conta'#39
      'when 5 then  '#39'Duplicata'#39
      'when 6 then  '#39'Nota avulsa'#39
      'when 7 then  '#39'Promiss'#243'ria'#39
      'else '#39'N'#227'o informado'#39' end  as varchar(20) ) as especie_desc,'
      'f.nome_fantasia as nome_fornecedor,'
      'c.descricao as conta_desc,'
      'cp.id_situacao,'
      'ui.usu_002 as usuario_insercao,'
      'uc.usu_002 as usuario_cancelamento,'
      'cp.data_cancelamento,'
      'cp.id_caixa,'
      'cp.itemcaixaitem,'
      'cp.id_movimentocc'
      'from cpagar cp'
      
        'join fornecedor f on f.id_fornecedor= cp.id_fornecedor and f.id_' +
        'empresa=cp.id_empresa'
      
        'join conta c on c.id_conta= cp.id_conta and c.id_empresa=cp.id_e' +
        'mpresa'
      'left join usuarios ui on ui.usu_001=cp.id_usuario'
      'left join usuarios up on up.usu_001=cp.id_usuario_pagamento'
      'left join usuarios uc on uc.usu_001=cp.id_usuario_cancelamento'
      'where cp.id_empresa = :id_empresa '
      'and cp.data_vencimento BETWEEN :DTINI AND :DTFIM'
      ''
      ''
      ''
      ''
      '       ')
    IndexFieldNames = 'data_vencimento;nota'
    Left = 24
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
    object qrCPagarid_cpagar: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_cpagar'
    end
    object qrCPagardescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qrCPagarnota: TIntegerField
      FieldName = 'nota'
    end
    object qrCPagardata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object qrCPagardata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCPagardocumento: TWideStringField
      FieldName = 'documento'
    end
    object qrCPagarvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qrCPagarespecie_desc: TWideStringField
      FieldName = 'especie_desc'
      ReadOnly = True
    end
    object qrCPagarnome_fornecedor: TWideStringField
      FieldName = 'nome_fornecedor'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrCPagarconta_desc: TWideStringField
      FieldName = 'conta_desc'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrCPagarid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrCPagarusuario_insercao: TWideStringField
      FieldName = 'usuario_insercao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrCPagarusuario_cancelamento: TWideStringField
      FieldName = 'usuario_cancelamento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrCPagardata_cancelamento: TDateTimeField
      FieldName = 'data_cancelamento'
    end
    object qrCPagarid_caixa: TIntegerField
      FieldName = 'id_caixa'
    end
    object qrCPagaritemcaixaitem: TIntegerField
      FieldName = 'itemcaixaitem'
    end
    object qrCPagarid_movimentocc: TIntegerField
      FieldName = 'id_movimentocc'
    end
    object qrCPagarvalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object qrCPagaraberto: TFloatField
      FieldName = 'aberto'
      ReadOnly = True
    end
  end
  object repCPagar: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42706.465223310200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 74
    Top = 479
    Datasets = <
      item
        DataSet = dbCPagar
        DataSetName = 'dbCPagar'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sInfoFiltro'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CONTAS A PAGAR')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 238.110390000000000000
        Width = 748.346940000000000000
        AllowSplit = True
        object Line1: TfrxLineView
          Left = 5.779527560000000000
          Top = 3.779529999999994000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 4.535433070866142000
          Top = 7.559055120000011000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL: ')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 486.961040000000000000
          Top = 7.559059999999988000
          Width = 92.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCPagar."valor">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 584.000000000000000000
          Top = 7.559055120000011000
          Width = 78.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCPagar."valor_pago">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 667.000000000000000000
          Top = 7.559055118110223000
          Width = 78.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCPagar."aberto">,MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 748.346940000000000000
        AllowSplit = True
        DataSet = dbCPagar
        DataSetName = 'dbCPagar'
        RowCount = 0
        object dbCPagardata: TfrxMemoView
          Left = 4.535433070000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          DataField = 'data'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."data"]')
          ParentFont = False
        end
        object dbCPagardata_vencimento: TfrxMemoView
          Left = 66.047310000000000000
          Top = 2.000000000000000000
          Width = 64.590600000000000000
          Height = 15.118110240000000000
          DataField = 'data_vencimento'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."data_vencimento"]')
          ParentFont = False
        end
        object dbCPagarvalor: TfrxMemoView
          Left = 505.299630000000000000
          Top = 2.000000000000000000
          Width = 74.267780000000000000
          Height = 15.118110240000000000
          DataField = 'valor'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."valor"]')
          ParentFont = False
        end
        object dbCPagarnome_fornecedor: TfrxMemoView
          Left = 198.023810000000000000
          Top = 2.000000000000000000
          Width = 226.110390000000000000
          Height = 15.118110240000000000
          DataField = 'nome_fornecedor'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."nome_fornecedor"]')
          ParentFont = False
        end
        object dbCPagarnota: TfrxMemoView
          Left = 138.315090000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'nota'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."nota"]')
          ParentFont = False
        end
        object dbCPagardocumento: TfrxMemoView
          Left = 427.811045590000000000
          Top = 1.779529999999994000
          Width = 71.811023620000000000
          Height = 15.118110240000000000
          DataField = 'documento'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."documento"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 588.000000000000000000
          Top = 1.684910000000002000
          Width = 74.267780000000000000
          Height = 15.118110240000000000
          DataField = 'valor_pago'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."valor_pago"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 671.000000000000000000
          Top = 1.684910000000002000
          Width = 74.267780000000000000
          Height = 15.118110240000000000
          DataField = 'aberto'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."aberto"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 55.472480000000000000
        Top = 79.370130000000000000
        Width = 748.346940000000000000
        object Memo13: TfrxMemoView
          Left = 138.228510000000000000
          Top = 36.173228350000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 64.944625590000000000
          Top = 36.149660000000000000
          Width = 48.370083620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENC.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 4.559060000000000000
          Top = 35.149660000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISSAO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779525120000000000
          Top = 53.929189999999990000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 196.921460000000000000
          Top = 36.173228350000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 428.929500000000000000
          Top = 36.173228350000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 6.779530000000000000
          Top = 11.559060000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sInfoFiltro]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 506.000000000000000000
          Top = 36.629870000000000000
          Width = 74.456690470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. PARC')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 593.700370000000000000
          Top = 36.551181099999990000
          Width = 69.236220470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. PAGO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 670.700370000000000000
          Top = 36.551181099999990000
          Width = 74.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. ABERTO')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 340.157700000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 4.779530000000022000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 6.779530000000022000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] / [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 4.535433070866142000
          Top = 6.779530000000022000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DATE] [TIME]')
          ParentFont = False
        end
      end
    end
  end
  object dbCPagar: TfrxDBDataset
    UserName = 'dbCPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_cpagar=id_cpagar'
      'descricao=descricao'
      'nota=nota'
      'data=data'
      'data_vencimento=data_vencimento'
      'documento=documento'
      'valor=valor'
      'especie_desc=especie_desc'
      'nome_fornecedor=nome_fornecedor'
      'conta_desc=conta_desc'
      'id_situacao=id_situacao'
      'usuario_insercao=usuario_insercao'
      'usuario_cancelamento=usuario_cancelamento'
      'data_cancelamento=data_cancelamento'
      'id_caixa=id_caixa'
      'itemcaixaitem=itemcaixaitem'
      'id_movimentocc=id_movimentocc'
      'valor_pago=valor_pago'
      'aberto=aberto')
    OpenDataSource = False
    DataSet = qrCPagar
    BCDToCurrency = False
    Left = 126
    Top = 479
  end
  object qrCReceber: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      '  cr.id_creceber,'
      '  cr.descricao,'
      '  cr.nota, '
      '  cr.data,'
      '  cr.data_vencimento,'
      '  cr.documento, '
      '  cr.valor,'
      '  cast (case cr.especie '
      '  when 0 then  '#39'Boleto'#39
      '  when 1 then  '#39'Cart'#227'o'#39
      '  when 2 then  '#39'Cheque'#39
      '  when 3 then  '#39'Credi'#225'rio'#39
      '  when 4 then  '#39'D'#233'bito Conta'#39
      '  when 5 then  '#39'Duplicata'#39
      '  when 6 then  '#39'Nota avulsa'#39
      '  when 7 then  '#39'Promiss'#243'ria'#39
      #9'else '#39'N'#227'o informado'#39' end  as varchar(20) ) as especie_desc,'
      '  f.cli_002 as nome_cliente,'
      '  c.descricao as conta_desc,'
      '  cr.id_situacao,'
      '  ui.usu_002 as usuario_insercao,'
      '  uc.usu_002 as usuario_cancelamento,'
      '  cr.data_cancelamento,'
      '  coalesce(cr.valor_desconto, 0.00) as valor_desconto,'
      '  coalesce(cr.valor_acrescimo, 0.00) as valor_acrescimo,'
      '  coalesce(cr.valor_pago, 0.00) as valor_pago,'
      '  coalesce(cr.valor_juros, 0.00) as valor_juros,'
      
        '  (coalesce(cr.valor, 0.00) + coalesce(cr.valor_acrescimo, 0.00)' +
        ' + coalesce(cr.valor_juros, 0.00) - coalesce(cr.valor_desconto, ' +
        '0.00) - coalesce(cr.valor_pago, 0.00)) as valor_aberto'
      ' from creceber cr'
      
        'join clientes f on f.cli_001= cr.id_cliente and f.emp_001=cr.id_' +
        'empresa'
      
        'join conta c on c.id_conta= cr.id_conta and c.id_empresa=cr.id_e' +
        'mpresa'
      'left join usuarios ui on ui.usu_001=cr.id_usuario'
      'left join usuarios up on up.usu_001=cr.id_usuario_pagamento'
      'left join usuarios uc on uc.usu_001=cr.id_usuario_cancelamento'
      'where cr.id_empresa = :id_empresa '
      'and cr.data_vencimento BETWEEN :DTINI AND :DTFIM'
      ''
      ''
      ''
      ''
      '       ')
    IndexFieldNames = 'data_vencimento;nota'
    Left = 24
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        Value = nil
      end>
    object qrCReceberid_creceber: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_creceber'
    end
    object qrCRecebernome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object WideStringField1: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object IntegerField2: TIntegerField
      FieldName = 'nota'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object WideStringField2: TWideStringField
      FieldName = 'documento'
    end
    object FloatField1: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'especie_desc'
      ReadOnly = True
    end
    object WideStringField5: TWideStringField
      FieldName = 'conta_desc'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object IntegerField3: TIntegerField
      FieldName = 'id_situacao'
    end
    object WideStringField6: TWideStringField
      FieldName = 'usuario_insercao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object WideStringField7: TWideStringField
      FieldName = 'usuario_cancelamento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'data_cancelamento'
    end
    object qrCRecebervalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object qrCRecebervalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      ReadOnly = True
    end
    object qrCRecebervalor_pago: TFloatField
      FieldName = 'valor_pago'
      ReadOnly = True
    end
    object qrCRecebervalor_juros: TFloatField
      FieldName = 'valor_juros'
      ReadOnly = True
    end
    object qrCRecebervalor_aberto: TFloatField
      FieldName = 'valor_aberto'
      ReadOnly = True
    end
  end
  object repCReceber: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42706.465223310200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 74
    Top = 527
    Datasets = <
      item
        DataSet = dbCReceber
        DataSetName = 'dbCReceber'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sInfoFiltro'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CONTAS A RECEBER')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 241.889920000000000000
        Width = 748.346940000000000000
        AllowSplit = True
        object Line1: TfrxLineView
          Left = 3.779527560000000000
          Top = 3.779529999999994000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 6.134200000000000000
          Top = 5.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL: ')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 492.961040000000000000
          Top = 5.559059999999988000
          Width = 84.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCReceber."valor">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 582.000000000000000000
          Top = 5.669291340000001000
          Width = 79.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCReceber."valor_pago">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 664.000000000000000000
          Top = 5.669291340000001000
          Width = 80.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCReceber."valor_aberto">,MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 748.346940000000000000
        AllowSplit = True
        DataSet = dbCReceber
        DataSetName = 'dbCReceber'
        RowCount = 0
        object dbCPagardata: TfrxMemoView
          Left = 4.559060000000000000
          Top = 2.000000000000000000
          Width = 57.590600000000000000
          Height = 15.118110240000000000
          DataField = 'data'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceber."data"]')
          ParentFont = False
        end
        object dbCPagardata_vencimento: TfrxMemoView
          Left = 67.047310000000000000
          Top = 2.000000000000000000
          Width = 57.448818900000000000
          Height = 15.118110240000000000
          DataField = 'data_vencimento'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceber."data_vencimento"]')
          ParentFont = False
        end
        object dbCPagarvalor: TfrxMemoView
          Left = 498.299630000000000000
          Top = 2.000000000000000000
          Width = 78.236220470000000000
          Height = 15.118110240000000000
          DataField = 'valor'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceber."valor"]')
          ParentFont = False
        end
        object dbCPagarnome_fornecedor: TfrxMemoView
          Left = 187.023810000000000000
          Top = 2.000000000000000000
          Width = 227.008040000000000000
          Height = 15.118110240000000000
          DataField = 'nome_cliente'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceber."nome_cliente"]')
          ParentFont = False
        end
        object dbCPagarnota: TfrxMemoView
          Left = 129.315090000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'nota'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceber."nota"]')
          ParentFont = False
        end
        object dbCPagardocumento: TfrxMemoView
          Left = 420.251985590000000000
          Top = 2.000000000000000000
          Width = 55.811023620000000000
          Height = 15.118110240000000000
          DataField = 'documento'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceber."documento"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 583.000000000000000000
          Top = 2.464439999999996000
          Width = 78.236220470000000000
          Height = 15.118110240000000000
          DataField = 'valor_pago'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceber."valor_pago"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 666.000000000000000000
          Top = 2.464439999999996000
          Width = 78.236220470000000000
          Height = 15.118110240000000000
          DataField = 'valor_aberto'
          DataSet = dbCReceber
          DataSetName = 'dbCReceber'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceber."valor_aberto"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 56.929190000000000000
        Top = 79.370130000000000000
        Width = 748.346940000000000000
        object Memo13: TfrxMemoView
          Left = 129.228510000000000000
          Top = 36.173228350000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 498.299630000000000000
          Top = 36.173228350000000000
          Width = 78.236220470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. PARC')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 65.944625590000000000
          Top = 36.149660000000000000
          Width = 55.708673620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENC.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 4.559060000000000000
          Top = 36.149660000000000000
          Width = 56.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISSAO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779525120000000000
          Top = 54.929189999999990000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 187.921460000000000000
          Top = 36.173228350000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 419.149970000000000000
          Top = 36.173228350000000000
          Width = 56.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PARCELA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 4.779530000000000000
          Top = 7.559060000000002000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sInfoFiltro]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 583.000000000000000000
          Top = 36.629870000000000000
          Width = 78.236220470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. PAGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 666.000000000000000000
          Top = 36.629870000000000000
          Width = 78.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. ABERTO')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 343.937230000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 4.779530000000022000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 6.779530000000022000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] / [TOTALPAGES#]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 5.779530000000000000
          Top = 6.779530000000022000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DATE] [TIME]')
          ParentFont = False
        end
      end
    end
  end
  object dbCReceber: TfrxDBDataset
    UserName = 'dbCReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_creceber=id_creceber'
      'nome_cliente=nome_cliente'
      'descricao=descricao'
      'nota=nota'
      'data=data'
      'data_vencimento=data_vencimento'
      'documento=documento'
      'valor=valor'
      'especie_desc=especie_desc'
      'conta_desc=conta_desc'
      'id_situacao=id_situacao'
      'usuario_insercao=usuario_insercao'
      'usuario_cancelamento=usuario_cancelamento'
      'data_cancelamento=data_cancelamento'
      'valor_desconto=valor_desconto'
      'valor_acrescimo=valor_acrescimo'
      'valor_pago=valor_pago'
      'valor_juros=valor_juros'
      'valor_aberto=valor_aberto')
    OpenDataSource = False
    DataSet = qrCReceber
    BCDToCurrency = False
    Left = 126
    Top = 527
  end
  object qrVendasLucro: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'SELECT MAT.MAT_003, MAT.MAT_004, SUM(ITE.ITE_002) AS QTDEVENDA, ' +
        'SUM(ITE.ITE_005) AS VLRVENDA, '
      
        'SUM(ITE.ITE_002 * MAT.MAT_012) AS TOT_CUSTO, (SUM(ITE.ITE_005) -' +
        ' SUM(ITE.ITE_002 * MAT.MAT_012)) AS LUCRO,'
      
        'CASE WHEN SUM(COALESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012' +
        ', 0.00)) > 0 THEN ((SUM(COALESCE(ITE.ITE_005, 0.00)) - SUM(COALE' +
        'SCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.00))) / SUM(COA' +
        'LESCE(ITE.ITE_002, 0.00) * COALESCE(MAT.MAT_012, 0.01))) * 100'
      'ELSE 100.00 END AS MARGEM'
      'FROM VENDAITEM ITE '
      
        'LEFT OUTER JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND' +
        ' (MAT.MAT_001 = ITE.MAT_001) '
      
        'LEFT OUTER JOIN VENDA VEN ON (VEN.EMP_001 = ITE.EMP_001) AND (VE' +
        'N.VEN_001 = ITE.VEN_001)'
      'WHERE VEN.VEN_004 BETWEEN '#39'01.07.2018'#39' AND '#39'04.07.2018'#39
      'AND VEN.SIT_001 = 1 '
      'AND MAT.MAT_008 > 0 '
      'and ite.sit_001 not in (0,1,2,3) '
      'GROUP BY MAT.MAT_004,MAT.MAT_003'
      'ORDER BY MAT.MAT_004'
      ''
      '')
    IndexFieldNames = 'mat_004'
    Left = 702
    Top = 410
    object qrVendasLucromat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrVendasLucromat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrVendasLucroqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      ReadOnly = True
    end
    object qrVendasLucrovlrvenda: TFloatField
      FieldName = 'vlrvenda'
      ReadOnly = True
    end
    object qrVendasLucrotot_custo: TFloatField
      FieldName = 'tot_custo'
      ReadOnly = True
    end
    object qrVendasLucrolucro: TFloatField
      FieldName = 'lucro'
      ReadOnly = True
    end
    object qrVendasLucromargem: TFloatField
      FieldName = 'margem'
      ReadOnly = True
    end
  end
  object dbVendasLucro: TfrxDBDataset
    UserName = 'dbVendasLucro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mat_003=mat_003'
      'mat_004=mat_004'
      'qtdevenda=qtdevenda'
      'vlrvenda=vlrvenda'
      'tot_custo=tot_custo'
      'lucro=lucro'
      'margem=margem')
    DataSet = qrVendasLucro
    BCDToCurrency = False
    Left = 758
    Top = 410
  end
  object repVendasLucro: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 43236.683504571760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 640
    Top = 410
    Datasets = <
      item
        DataSet = dbVendasLucro
        DataSetName = 'dbVendasLucro'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = ''
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
        Height = 68.000000000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 1.858379999999976000
          Width = 714.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 20.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 1.858379999999976000
          Top = 26.102350000000000000
          Width = 714.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sPeriodo]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = dbVendasLucro
        DataSetName = 'dbVendasLucro'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 110.165430000000000000
          Width = 239.448980000000000000
          Height = 18.897650000000000000
          DataField = 'mat_003'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          Memo.UTF8W = (
            '[dbVendasLucro."mat_003"]')
        end
        object Memo5: TfrxMemoView
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'mat_004'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasLucro."mat_004"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 499.354670000000000000
          Width = 80.708720000000000000
          Height = 18.897650000000000000
          DataField = 'vlrvenda'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasLucro."vlrvenda"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 584.842920000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          DataField = 'lucro'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasLucro."lucro"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 354.393940000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qtdevenda'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasLucro."qtdevenda"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 414.645950000000000000
          Width = 79.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tot_custo'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasLucro."tot_custo"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 653.000000000000000000
          Top = 0.464439999999996200
          Width = 50.047310000000000000
          Height = 18.897650000000000000
          DataField = 'margem'
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasLucro."margem"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 702.000000000000000000
          Top = 0.464439999999996200
          Width = 15.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 583.724800000000000000
          Top = 1.000000000000000000
          Width = 66.929190000000000000
          Height = 18.897650000000000000
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasLucro."lucro">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 273.236550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 499.000000000000000000
          Top = 1.243969999999990000
          Width = 81.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasLucro."vlrvenda">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 418.000000000000000000
          Top = 1.000000000000000000
          Width = 76.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbVendasLucro
          DataSetName = 'dbVendasLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasLucro."tot_custo">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 24.456710000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Line7: TfrxLineView
          Align = baCenter
          Left = 0.000231889999975810
          Top = 19.677179999999990000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Top = 1.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 110.165430000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
          Left = 499.354670000000000000
          Top = 1.000000000000000000
          Width = 80.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Venda')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 584.842920000000000000
          Top = 1.000000000000000000
          Width = 65.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Lucro')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 354.393940000000000000
          Top = 1.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 414.645950000000000000
          Top = 1.000000000000000000
          Width = 79.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Custo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baCenter
          Left = 0.000231889999975810
          Top = 0.598330000000004200
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 662.000000000000000000
          Top = 1.598330000000004000
          Width = 56.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem')
          ParentFont = False
        end
      end
    end
  end
  object qrProdValorizacao: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_004 as cod_ref, m.mat_003 as descricao, '
      'coalesce(m.mat_012, 0.00) as preco_custo,'
      'm.mat_008 as preco_venda,'
      'coalesce(m.mat_018, 0.00) as margem,'
      
        '(coalesce(sm.quantidade, 0.000) * coalesce(m.mat_012, 0.00)) as ' +
        'valorizacao, '
      'coalesce(sm.quantidade, 0.000) as qtde'
      'from materiais m'
      'left join setor_estoque_material sm on sm.id_material=m.mat_001'
      'where true -- n'#227'o remover, utilizado para filtro'
      'order by m.mat_003')
    Left = 776
    Top = 536
    object WideStringField4: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 60
    end
    object FloatField2: TFloatField
      FieldName = 'preco_custo'
    end
    object FloatField3: TFloatField
      FieldName = 'preco_venda'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'margem'
    end
    object qrProdValorizacaovalorizacao: TFloatField
      FieldName = 'valorizacao'
      ReadOnly = True
    end
    object qrProdValorizacaoqtde: TFloatField
      FieldName = 'qtde'
      ReadOnly = True
    end
  end
  object dbProdValorizacao: TfrxDBDataset
    UserName = 'dbProdValorizacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_ref=cod_ref'
      'descricao=descricao'
      'preco_custo=preco_custo'
      'preco_venda=preco_venda'
      'margem=margem'
      'valorizacao=valorizacao'
      'qtde=qtde')
    DataSet = qrProdValorizacao
    BCDToCurrency = False
    Left = 848
    Top = 536
  end
  object repProdValorizacao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42975.482142997700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 922
    Top = 532
    Datasets = <
      item
        DataSet = dbProdValorizacao
        DataSetName = 'dbProdValorizacao'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
      LeftMargin = 2.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 28.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTOS (VALORIZA'#199#195'O)')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 748.346940000000000000
        DataSet = dbProdValorizacao
        DataSetName = 'dbProdValorizacao'
        KeepHeader = True
        RowCount = 0
        object dbResumoFinanceirodata_pagamento: TfrxMemoView
          Left = 3.338590000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataField = 'cod_ref'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdValorizacao."cod_ref"]')
          ParentFont = False
        end
        object dbResumoFinanceirodia_semana: TfrxMemoView
          Left = 97.606370000000000000
          Width = 260.362400000000000000
          Height = 15.118110240000000000
          DataField = 'descricao'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdValorizacao."descricao"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 440.575140000000000000
          Width = 71.370078740000000000
          Height = 15.118110240000000000
          DataField = 'preco_custo'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdValorizacao."preco_custo"]')
          ParentFont = False
        end
        object dbResumoFinanceiropercent_cpagar: TfrxMemoView
          Left = 516.299630000000000000
          Width = 70.590548740000000000
          Height = 15.118110240000000000
          DataField = 'margem'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdValorizacao."margem"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 590.606680000000000000
          Width = 78.370078740000000000
          Height = 15.118110240000000000
          DataField = 'preco_venda'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdValorizacao."preco_venda"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 673.000000000000000000
          Top = 0.259739999999993600
          Width = 72.370078740000000000
          Height = 15.118110240000000000
          DataField = 'valorizacao'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdValorizacao."valorizacao"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 365.000000000000000000
          Top = 0.259739999999993600
          Width = 71.370078740000000000
          Height = 15.118110240000000000
          DataField = 'qtde'
          DataSet = dbProdValorizacao
          DataSetName = 'dbProdValorizacao'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdValorizacao."qtde"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 27.236240000000000000
        Top = 200.315090000000000000
        Width = 748.346940000000000000
        object Memo10: TfrxMemoView
          Left = 675.000000000000000000
          Top = 2.684910000000002000
          Width = 70.504020000000000000
          Height = 16.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdValorizacao."valorizacao">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 365.000000000000000000
          Top = 2.684910000000002000
          Width = 70.504020000000000000
          Height = 16.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdValorizacao."QTDE">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 1.118120000000005000
          Width = 747.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 109.606370000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Top = 1.779529999999994000
          Width = 746.834645670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Top = 22.472479999999990000
          Width = 746.834645670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 3.338590000000000000
          Top = 3.779527560000005000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 98.385900000000000000
          Top = 3.779527559055111000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 440.575140000000000000
          Top = 3.779527559055111000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 516.299630000000000000
          Top = 3.779527559055111000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'MARGEM')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 596.606680000000000000
          Top = 3.779527559055111000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 676.000000000000000000
          Top = 3.779527559055111000
          Width = 68.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALORIZ.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 364.000000000000000000
          Top = 3.779527559055111000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 287.244280000000000000
        Width = 748.346940000000000000
        object Line2: TfrxLineView
          Align = baCenter
          Left = 0.756147165000008900
          Top = 2.779530000000022000
          Width = 746.834645670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 478.401980000000000000
          Top = 6.559059999999988000
          Width = 262.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
end
