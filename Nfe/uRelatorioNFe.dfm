inherited frmRelatorioNFe: TfrmRelatorioNFe
  Caption = 'Relat'#243'rio de NFe'
  ClientHeight = 384
  ClientWidth = 418
  OnCreate = FormCreate
  ExplicitWidth = 424
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 418
    Height = 335
    ExplicitWidth = 418
    ExplicitHeight = 335
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 8
      Top = 5
      Width = 401
      Height = 325
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
        Top = 264
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
        Top = 264
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
        Left = 8
        Top = 56
        Width = 56
        Height = 16
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 108
        Width = 70
        Height = 16
        Caption = 'Ordena'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 212
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
      object Label5: TLabel
        Left = 8
        Top = 160
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
        Left = 108
        Top = 185
        Width = 285
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
        Left = 108
        Top = 237
        Width = 285
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
      object dtpDataInicial: TDateTimePicker
        Left = 8
        Top = 286
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
        TabOrder = 5
      end
      object dtpDataFinal: TDateTimePicker
        Left = 136
        Top = 286
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
        TabOrder = 6
      end
      object cbRelatorio: TComboBox
        Left = 8
        Top = 26
        Width = 385
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Nota Fiscal de Sa'#237'da'
        Items.Strings = (
          'Nota Fiscal de Sa'#237'da')
      end
      object cbSituacao: TComboBox
        Left = 8
        Top = 78
        Width = 385
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Todas'
        Items.Strings = (
          'Todas'
          'Autorizadas'
          'Canceladas')
      end
      object cbOrdenacao: TComboBox
        Left = 8
        Top = 130
        Width = 385
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Data de Emiss'#227'o'
        Items.Strings = (
          'Data de Emiss'#227'o'
          'N'#250'mero'
          'CFOP')
      end
      object edCFOP: TcxButtonEdit
        Left = 8
        Top = 234
        Properties.Buttons = <
          item
            Action = acBuscaCFOP
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 4
        OnExit = edCFOPExit
        Width = 94
      end
      object edCodCliente: TcxButtonEdit
        Left = 8
        Top = 182
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
        TabOrder = 3
        OnExit = edCodClienteExit
        Width = 94
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 335
    Width = 418
    ExplicitTop = 335
    ExplicitWidth = 418
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 311
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
      Left = 204
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
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 291
    Top = 176
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
      
        'order by ns.data_emissao -- Linha reservada para aplicar a orden' +
        'a'#231#227'o, n'#227'o remover')
    Active = True
    Left = 216
    Top = 176
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
    Left = 288
    Top = 237
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
          Top = 7.559059999999931000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
    Left = 352
    Top = 237
  end
end
