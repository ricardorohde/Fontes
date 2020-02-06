inherited frmAnalisefinanceira: TfrmAnalisefinanceira
  Caption = 'An'#225'lise Financeiro'
  ClientHeight = 568
  ClientWidth = 783
  OnShow = FormShow
  ExplicitWidth = 789
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 783
    Height = 519
    ExplicitWidth = 783
    ExplicitHeight = 519
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 94
      Height = 16
      Caption = 'Selecione o m'#234's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 53
      Width = 91
      Height = 16
      Caption = 'Selecione o ano'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 314
      Top = 11
      Width = 131
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'RECEITAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 480
      Top = 11
      Width = 131
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'DESPESAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 646
      Top = 11
      Width = 131
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'SALDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbMes: TComboBox
      Left = 8
      Top = 22
      Width = 145
      Height = 24
      TabOrder = 0
      Text = 'cbMes'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object cbAno: TComboBox
      Left = 8
      Top = 72
      Width = 145
      Height = 24
      TabOrder = 1
      Text = 'ComboBox1'
      OnKeyPress = cbAnoKeyPress
      Items.Strings = (
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030'
        '2031'
        '2032'
        '2033'
        '2034'
        '2035'
        '2036'
        '2037'
        '2038'
        '2039'
        '2040'
        '2041'
        '2042'
        '2043'
        '2044'
        '2045'
        '2046'
        '2047'
        '2048'
        '2049'
        '2050')
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 311
      Top = 33
      Width = 137
      Height = 57
      BorderColor = clNavy
      TabOrder = 2
      object lblReceitas: TLabel
        Left = 3
        Top = 22
        Width = 131
        Height = 16
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 477
      Top = 33
      Width = 137
      Height = 57
      BorderColor = clNavy
      TabOrder = 3
      object lblDespesas: TLabel
        Left = 3
        Top = 22
        Width = 131
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 643
      Top = 33
      Width = 137
      Height = 57
      BorderColor = clNavy
      TabOrder = 4
      object lblSaldo: TLabel
        Left = 3
        Top = 22
        Width = 131
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 102
      Width = 780
      Height = 414
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsLista
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1data_emissao: TcxGridDBColumn
          Caption = 'DATA'
          DataBinding.FieldName = 'data_emissao'
          Options.Editing = False
          Width = 86
        end
        object cxGrid1DBTableView1flag_receita: TcxGridDBColumn
          DataBinding.FieldName = 'flag_receita'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              ImageIndex = 3
              Value = 'E'
            end>
          Options.Editing = False
          Width = 23
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1receita: TcxGridDBColumn
          Caption = 'RECEITAS'
          DataBinding.FieldName = 'receita'
          Options.Editing = False
          Width = 158
        end
        object cxGrid1DBTableView1despesa: TcxGridDBColumn
          Caption = 'DESPESAS'
          DataBinding.FieldName = 'despesa'
          HeaderAlignmentHorz = taRightJustify
          HeaderGlyphAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 150
        end
        object cxGrid1DBTableView1flag_despesa: TcxGridDBColumn
          DataBinding.FieldName = 'flag_despesa'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              ImageIndex = 4
              Value = 'S'
            end>
          Options.Editing = False
          Width = 23
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1saldo_total: TcxGridDBColumn
          Caption = 'SALDO DO DIA'
          DataBinding.FieldName = 'saldo_total'
          FooterAlignmentHorz = taLeftJustify
          HeaderAlignmentHorz = taRightJustify
          HeaderGlyphAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 169
        end
        object cxGrid1DBTableView1saldo_acumulado: TcxGridDBColumn
          Caption = 'SALDO ACUMULADO'
          DataBinding.FieldName = 'saldo_acumulado'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 149
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 174
      Top = 33
      Width = 119
      Height = 41
      Margins.Left = 0
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      ImageIndex = 6
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = btPesquisarClick
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
      Layout = blGlyphRight
      MinButtonSizeState = bsLabel
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 519
    Width = 783
    ExplicitTop = 519
    ExplicitWidth = 783
    object btSair: TAdvGlowButton
      AlignWithMargins = True
      Left = 665
      Top = 3
      Width = 115
      Height = 41
      Margins.Left = 0
      Caption = 'Sair'
      ImageIndex = 5
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btSairClick
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
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 534
      Top = 3
      Width = 128
      Height = 41
      Margins.Left = 0
      Caption = 'IMPRIMIR'
      ImageIndex = 14
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
  end
  object qrLista: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select data_emissao, '#39'E'#39' as flag_receita, sum (receita) as recei' +
        'ta, '#39'S'#39' as flag_despesa, sum(despesa) as despesa,sum(receita-des' +
        'pesa) as saldo_total, 0.00 as saldo_acumulado from ('
      
        'select enc_002::date +0 as data_emissao, sum(enc_003)as receita,' +
        '0.00 as despesa from encerravenda where sit_001=1 and  emp_001=:' +
        'emp and date_part('#39'month'#39',enc_002)=:mes and date_part('#39'year'#39',enc' +
        '_002)=:ano group by data_emissao'
      'union'
      
        'select data:: date +0 as data_emissao, sum(valor)as receita,0.00' +
        ' as despesa from creceber where id_situacao=7 and id_empresa=:em' +
        'p and date_part('#39'month'#39',data)=:mes and date_part('#39'year'#39',data)=:a' +
        'no group by data_emissao'
      'union'
      
        'select data::date+0 as data_emissao,0.00 as receita,sum(valor) a' +
        's despesa from cpagar where id_situacao=7 and id_empresa=:emp an' +
        'd date_part('#39'month'#39',data)=:mes and date_part('#39'year'#39',data)=:ano g' +
        'roup by data_emissao'
      ')as valor_total'
      'group by data_emissao')
    IndexFieldNames = 'data_emissao'
    Left = 224
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        Value = nil
      end>
    object qrListadata_emissao: TDateField
      FieldName = 'data_emissao'
    end
    object qrListareceita: TFloatField
      Alignment = taLeftJustify
      FieldName = 'receita'
      currency = True
    end
    object qrListadespesa: TFloatField
      FieldName = 'despesa'
      currency = True
    end
    object qrListasaldo_total: TFloatField
      FieldName = 'saldo_total'
      currency = True
    end
    object qrListasaldo_acumulado: TFloatField
      Alignment = taCenter
      FieldName = 'saldo_acumulado'
      currency = True
    end
    object qrListaflag_receita: TWideMemoField
      FieldName = 'flag_receita'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrListaflag_despesa: TWideMemoField
      FieldName = 'flag_despesa'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dsLista: TDataSource
    DataSet = qrLista
    Left = 280
    Top = 200
  end
  object dbAnalise: TfrxDBDataset
    UserName = 'dbAnalise'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data_emissao=data_emissao'
      'receita=receita'
      'despesa=despesa'
      'saldo_total=saldo_total'
      'saldo_acumulado=saldo_acumulado'
      'flag_receita=flag_receita'
      'flag_despesa=flag_despesa')
    DataSet = qrLista
    BCDToCurrency = False
    Left = 221
    Top = 152
  end
  object repAnalise: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43060.428821388900000000
    ReportOptions.LastChange = 43168.745431493100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 283
    Top = 150
    Datasets = <
      item
        DataSet = dbAnalise
        DataSetName = 'dbAnalise'
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
        Height = 32.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sTitulo]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Align = baCenter
          Left = 0.000231890000000012
          Top = 29.236240000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.015770000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = dbAnalise
        DataSetName = 'dbAnalise'
        KeepChild = True
        RowCount = 0
        object dbEstoqueResumidovalor: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'saldo_total'
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAnalise."saldo_total"]')
          ParentFont = False
        end
        object dbEstoqueResumidoquantidade: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'saldo_acumulado'
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbAnalise."saldo_acumulado"]')
          ParentFont = False
        end
        object dbEstoqueResumidocodigo: TfrxMemoView
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'data_emissao'
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Memo.UTF8W = (
            '[dbAnalise."data_emissao"]')
        end
        object dbEstoqueResumidodescricao: TfrxMemoView
          Left = 157.063080000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'receita'
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAnalise."receita"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 327.512060000000000000
          Top = 4.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'despesa'
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAnalise."despesa"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 133.606370000000000000
          Top = 4.779530000000000000
          Width = 16.000000000000000000
          Height = 16.000000000000000000
          AutoSize = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001000
            00001008060000001FF3FF61000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000002DF4944415478DA6D537B4853511CFE9DBBED6EAD
            700FB7692F0C67E41F91319D2959294AA6254A2FA5F281D88222F65F20F477D0
            8B9810E9103130C9080A7A2C7C4726166618913A4454F295A66EB3E5EE75F776
            CED9DD14E977B897CBB9E7FB7EDFF79D7310840B016C31A950E215B325AE7097
            4DA963B3F05C1CFD27C204E7E1BB265E4D39876B4707FCB37F451022305C0CC0
            F64C933AF54E9283D52A2B10030C2225FD16C9202580C079B9C6FEEA41FB54DB
            9C9F90D035B1994675FAC364978C6532C80C811A6446743C2A1F8218F5D6FB12
            7C828F50503681177AFAEC5FF3A6DBE7FC486554A2ECD7879D4A3D5B2935A5AF
            22CD3928D65FA20A6AE76BA07BA51DC27248614B0D1D051F6D687FF5BEE4BD15
            7BFAB00D19489AB10338AD2B86125D29954F08BA7C6D58B100EB9E2038D63C99
            86727B8FD5A98C6C95E41985824170468B09F46574FDA3790774FA5A251C6508
            A958E6EB51813BC78DA10906B90159D456DA9D1058B65AC1AA4EA390F7BE4E18
            59FD116A2B06E1D39F5EF00A5EC2318A4E8D640770E48AAB463BCAD69CA07008
            7BD9B00B61ED027E9E2D3E8196C5265110451EE50F65051886515C33D8518E2E
            2F42001B683613B42C34C1D3254C20083CCAFD76D4CDB04C820962508AF2D0BA
            054D0AA46AD329B8FB77078CAC0C852CE0D11BF8001E5816054E184547DE58EB
            D4F1AA4D2132705E7F014A0D95B46FCDDC3D68F3B8D62394425C9DE4EA91F972
            5C72FCF5DD7D200759F8E8118292E85228C30404E498BD0BAD944090F6007FAE
            4170BCEE671A52681528F571925365662B212203E1437411CA4D5514F060FA36
            B47ADF49BD430202E37CC3E7F2411BEDA93D18A53E703FD12537CA3248048425
            06C5A2C26D67A9E7E7BE66ECD9133ACA38C5B58560CFF71BEEBCC5FE657F64B7
            B44951EAC49B66872A9EAD00C5FF2F13F02004C6B9C6E15B63F6A52F1E3F8904
            6DBCCE0A8D1CED2C8AB5984E46DB943BD82CA440F43A8BBC38C1CD705DBF5C8B
            CEA9173303DCD25A6467FF0133865843B70A35CB0000000049454E44AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 406.189240000000000000
          Top = 4.779530000000000000
          Width = 16.000000000000000000
          Height = 16.000000000000000000
          AutoSize = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001000
            00001008060000001FF3FF610000000467414D410000B18E7CFB519300000A39
            6943435050686F746F73686F70204943432070726F66696C65000048C79D9677
            5454D71687CFBD777AA1CD30025286DEBBC000D27B935E456198196028030E33
            34B121A2021145449A224850C480D150245644B1101454B00724082831184554
            2C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9FBECBDCF5A170092A72F979706
            4B0190CA13F0833C9CE911915174EC0080011E608029004C5646BA5FB07B0810
            C9CBCD859E2172025F0401F07A58BC0270D3D033804E07FF9FA459E97C81E898
            00119BB339192C11178838254B902EB6CF8A981A972C66182566BE284111CB89
            3961910D3EFB2CB2A398D9A93CB688C539A7B353D962EE15F1B64C2147C488AF
            880B33B99C2C11DF12B1468A30952BE237E2D8540E33030014496C1770588922
            361131891F12E422E2E500E048095F71DC572CE0640BC49772494BCFE1731312
            05741D962EDDD4DA9A41F7E464A5700402C300262B99C967D35DD252D399BC1C
            0016EFFC5932E2DAD24545B634B5B6B434343332FDAA50FF75F36F4ADCDB457A
            19F8B96710ADFF8BEDAFFCD21A0060CC896AB3F38B2DAE0A80CE2D00C8DDFB62
            D3380080A4A86F1DD7BFBA0F4D3C2F890241BA8DB1715656961197C3321217F4
            0FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C618A802EAE1B2B2D254DC8A767
            A433591CBAE19F87F81F07FE751E06419C780E9FC313458489A68CCB4B10B59B
            C7E60AB8693C3A97F79F9AF80FC3FEA4C5B91689D2F81150638C80D4752A407E
            ED07280A1120D1FBC55DFFA36FBEF830207E79E12A938B73FFEF37FD67C1A5E2
            25839BF039CE252884CE12F23317F7C4CF12A0010148022A9007CA401DE80043
            6006AC802D70046EC01BF8831010095603164804A9800FB2401ED8040A4131D8
            09F6806A50071A41336805C741273805CE834BE01AB8016E83FB60144C806760
            16BC060B10046121324481E421154813D287CC2006640FB941BE50101409C542
            09100F124279D066A8182A83AAA17AA819FA1E3A099D87AE4083D05D680C9A86
            7E87DEC1084C82A9B012AC051BC30CD809F68143E0557002BC06CE850BE01D70
            25DC001F853BE0F3F035F8363C0A3F83E7108010111AA28A18220CC405F147A2
            9078848FAC478A900AA4016945BA913EE426328ACC206F51181405454719A26C
            519EA850140BB506B51E5582AA461D4675A07A51375163A859D4473419AD88D6
            47DBA0BDD011E8047416BA105D816E42B7A32FA26FA327D0AF31180C0DA38DB1
            C2786222314998B59812CC3E4C1BE61C6610338E99C362B1F2587DAC1DD61FCB
            C40AB085D82AEC51EC59EC107602FB0647C4A9E0CC70EEB8281C0F978FABC01D
            C19DC10DE126710B7829BC26DE06EF8F67E373F0A5F8467C37FE3A7E02BF4090
            266813EC08218424C2264225A1957091F080F0924824AA11AD8981442E7123B1
            92788C789938467C4B9221E9915C48D124216907E910E91CE92EE925994CD622
            3B92A3C802F20E7233F902F911F98D0445C248C24B822DB141A246A2436248E2
            B9245E5253D24972B564AE6485E409C9EB92335278292D291729A6D47AA91AA9
            9352235273D2146953697FE954E912E923D257A4A764B0325A326E326C990299
            83321764C62908459DE242615136531A29172913540C559BEA454DA21653BFA3
            0E506765656497C986C966CBD6C89E961DA521342D9A172D85564A3B4E1BA6BD
            5BA2B4C4690967C9F625AD4B8696CCCB2D957394E3C815C9B5C9DD967B274F97
            77934F96DF25DF29FF5001A5A0A710A890A5B05FE1A2C2CC52EA52DBA5ACA545
            4B8F2FBDA7082BEA290629AE553CA8D8AF38A7A4ACE4A194AE54A57441694699
            A6ECA89CA45CAE7C46795A85A262AFC255295739ABF2942E4B77A2A7D02BE9BD
            F4595545554F55A16ABDEA80EA829AB65AA85ABE5A9BDA4375823A433D5EBD5C
            BD477D564345C34F234FA345E39E265E93A199A8B957B34F735E4B5B2B5C6BAB
            56A7D694B69CB69776AE768BF6031DB28E83CE1A9D069D5BBA185D866EB2EE3E
            DD1B7AB09E855EA25E8DDE757D58DF529FABBF4F7FD0006D606DC03368301831
            24193A19661AB6188E19D18C7C8DF28D3A8D9E1B6B184719EF32EE33FE686261
            9262D26872DF54C6D4DB34DFB4DBF477333D3396598DD92D73B2B9BBF906F32E
            F317CBF4977196ED5F76C78262E167B1D5A2C7E283A59525DFB2D572DA4AC32A
            D6AAD66A84416504304A1897ADD1D6CED61BAC4F59BFB5B1B411D81CB7F9CDD6
            D036D9F688EDD472EDE59CE58DCBC7EDD4EC9876F576A3F674FB58FB03F6A30E
            AA0E4C870687C78EEA8E6CC726C749275DA724A7A34ECF9D4D9CF9CEEDCEF32E
            362EEB5CCEB922AE1EAE45AE036E326EA16ED56E8FDCD5DC13DC5BDC673D2C3C
            D67A9CF3447BFA78EEF21CF152F26279357BCD7A5B79AFF3EEF521F904FB54FB
            3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC15BD1E90FFCBDFC77FB3F0CD00E
            5813F06320263020B026F0499069505E505F30253826F848F0EB10E790D290FB
            A13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0D108E3887511D7221522B9915D
            51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C1E5EA5BD2A7BD595D50AAB5356
            9F8E918C61C69C8845C786C71E897DCFF4673630E7E2BCE26AE366592EACBDAC
            676C4776397B9A63C729E34CC6DBC597C54F25D825EC4E984E7448AC489CE1BA
            70ABB92F923C93EA92E693FD930F257F4A094F694BC5A5C6A69EE4C9F09279BD
            69CA69D96983E9FAE985E9A36B6CD6EC5933CBF7E137654019AB32BA0454D1CF
            54BF5047B8453896699F5993F9262B2CEB44B674362FBB3F472F677BCE64AE7B
            EEB76B516B596B7BF254F336E58DAD735A57BF1E5A1FB7BE6783FA86820D131B
            3D361EDE44D894BCE9A77C93FCB2FC579BC337771728156C2C18DFE2B1A5A550
            A2905F38B2D5766BDD36D436EEB681EDE6DBABB67F2C62175D2D3629AE287E5F
            C22AB9FA8DE93795DF7CDA11BF63A0D4B274FF4ECC4EDECEE15D0EBB0E974997
            E5968DEFF6DBDD514E2F2F2A7FB52766CF958A6515757B097B857B472B7D2BBB
            AA34AA7656BDAF4EACBE5DE35CD356AB58BBBD767E1F7BDFD07EC7FDAD754A75
            C575EF0E700FDCA9F7A8EF68D06AA83888399879F049635863DFB78C6F9B9B14
            9A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E291D216B845D8327D34FAE88DEF
            5CBFEB6A356CAD6FA3B5151F03C784C79E7E1FFBFDF0719FE33D2718275A7FD0
            FCA1B69DD25ED40175E474CC7626768E7645760D9EF43ED9D36DDBDDFEA3D18F
            874EA99EAA392D7BBAF40CE14CC1994F6773CFCE9D4B3F37733EE1FC784F4CCF
            FD0B11176EF506F60E5CF4B978F992FBA50B7D4E7D672FDB5D3E75C5E6CAC9AB
            8CAB9DD72CAF75F45BF4B7FF64F153FB80E540C775ABEB5D37AC6F740F2E1F3C
            33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070E8F09D91E891D13BEC3B537753
            EEBEB897796FE1FEC607E807450FA51E563C527CD4F0B3EECF6DA396A3A7C75C
            C7FA1F073FBE3FCE1A7FF64BC62FEF270A9E909F544CAA4C364F994D9D9A769F
            BEF174E5D38967E9CF16660A7F95FEB5F6B9CEF31F7E73FCAD7F366276E205FF
            C5A7DF4B5ECABF3CF46AD9AB9EB980B947AF535F2FCC17BD917F73F82DE36DDF
            BBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1A7D44F9FFE050398F3FCBAC4E8
            D3000000097048597300000B1300000B1301009A9C18000001F64944415478DA
            9553C14A1B5114BDF70EAF13A6104A1143131DA2B60DD6D22A0A12174A21DD28
            8A4B118210F01B0AFA03E6678AB8AD76D145A2AB846AB5169334A9D31A4A4B0D
            74486792773B2F4E422B348D07EEEABE7BDE39E7BD8BD585055040C456BD8F46
            97FB985F04A51C0D201AAA5767B66B4427DF88D2B152699B9941556BAE4D703C
            3262F44BB9FBC075E3C26F5E87EB5D702644B64A94785428D81D82A3A1216398
            F934EABA03A086BD83DDF05188F312516CAC58B4F1627E1EBE9A66E6B1E3C47D
            2FD021F987128577BA9EED2B9767F0D5FAFAE2B34663476B777A50A0D0F4EA8D
            AE2F612E95DA1F679E761CE72A981E0854D842083814E200CBA9D4A5C91C8489
            098040A0370BF53A403E0F9F106BF8796DCDB9170A0948A7FF2BFB2F6C6CC017
            CB72D14A269D70382C606BEB66049B9B60552A2E9E259397C344414C24000CE3
            4A76370B4400B6F705F6F6A028650D33ABABFB5344D3BF3C5FFCE740970C5488
            B7741D720007F8726565F139C08E50CC377846574A78AD694B58989B838B4824
            33C91CE72E1FE73A7244D99065CD60617616728383C67D294F1F4A39D0CB337E
            203A2F6A5AEC69A562B70814F2A669F4371ABB63CD663CE0DBE96C9C6FC9DB4A
            38D6B46C55D312E3DE70ABD726907EFA6F2391E5BBDE3ADF411CBDEDAFF34F6F
            9D7F309F7C474C3FB1AC6DA58E7CD2DFAEECE8FDB13434280000000049454E44
            AE426082}
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 253.228510000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 11.118120000000000000
          Top = 3.307050000000010000
          Width = 124.724490000000000000
          Height = 45.354360000000000000
        end
        object Memo4: TfrxMemoView
          Left = 627.401980000000000000
          Top = 68.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Acumulado')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 453.543600000000000000
          Top = 67.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 306.346630000000000000
          Top = 68.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 88.677180000000000000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 0.779530000000000000
          Top = 67.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 157.063080000000000000
          Top = 67.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Receitas')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 16.236240000000000000
          Top = 7.086580000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEITAS')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 290.685220000000000000
          Top = 3.307050000000010000
          Width = 124.724490000000000000
          Height = 45.354360000000000000
        end
        object Shape3: TfrxShapeView
          Left = 582.047620000000000000
          Top = 3.527520000000000000
          Width = 124.724490000000000000
          Height = 45.354360000000000000
        end
        object Memo11: TfrxMemoView
          Left = 296.464750000000000000
          Top = 7.086580000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DESPESAS')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 587.827150000000000000
          Top = 7.307050000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
        object lblRelREceitas: TfrxMemoView
          Left = 16.118120000000000000
          Top = 27.984230000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sReceitas]')
          ParentFont = False
        end
        object lblRelDespesas: TfrxMemoView
          Left = 296.244280000000000000
          Top = 25.984230000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sDespesas]')
          ParentFont = False
        end
        object lblRelSaldo: TfrxMemoView
          Left = 587.827150000000000000
          Top = 29.984230000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = dbAnalise
          DataSetName = 'dbAnalise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[sSaldo]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -3.779530000000000000
          Top = 64.472480000000000000
          Width = 718.110248430000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
end
