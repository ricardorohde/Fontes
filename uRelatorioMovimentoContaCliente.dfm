inherited frmRelatorioMovimentoContaCliente: TfrmRelatorioMovimentoContaCliente
  Caption = 'Relat'#243'rio de movimento de conta cliente'
  ClientHeight = 222
  ClientWidth = 404
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 410
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 404
    Height = 173
    ExplicitWidth = 404
    ExplicitHeight = 173
    FullHeight = 200
    object AdvGroupBox4: TAdvGroupBox
      Left = 11
      Top = 106
      Width = 383
      Height = 59
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbCliente: TLabel
        Left = 95
        Top = 28
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object edCodCliente: TcxButtonEdit
        Left = 11
        Top = 25
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
        Width = 78
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 11
      Top = 19
      Width = 383
      Height = 81
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
        Left = 14
        Top = 21
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
        Left = 142
        Top = 21
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
        Left = 14
        Top = 43
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
        Left = 142
        Top = 43
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
  end
  inherited pnBotoes: TFlowPanel
    Top = 173
    Width = 404
    ExplicitTop = 173
    ExplicitWidth = 404
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 297
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
      OnClick = btConfirmaClick
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
      Left = 190
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
    Left = 312
    Top = 8
    object DataSetFirst1: TDataSetFirst
      Category = 'Dados'
      Caption = 'DataSetFirst1'
      Enabled = False
      Hint = 'Primeiro|Move para o primeiro registro'
      ImageIndex = 3
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dados'
      Caption = 'DataSetPrior1'
      Enabled = False
      Hint = 'Anterior|Move para o registro anterior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dados'
      Caption = 'DataSetNext1'
      Enabled = False
      Hint = 'Pr'#243'ximo|Move para o pr'#243'ximo registro'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dados'
      Caption = 'DataSetLast1'
      Enabled = False
      Hint = #218'ltimo|Move para o pr'#243'ximo registro'
      ImageIndex = 4
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dados'
      Caption = 'DataSetInsert1'
      Enabled = False
      Hint = 'Incluir|Permite a inclus'#227'o de um novo registro'
      ImageIndex = 15
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dados'
      Caption = 'DataSetDelete1'
      Enabled = False
      Hint = 'Excluir|Permite a exclus'#227'o do registro atual'
      ImageIndex = 0
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dados'
      Caption = 'DataSetEdit1'
      Enabled = False
      Hint = 'Editar|Permite a altera'#231#227'o do registro atual'
      ImageIndex = 17
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dados'
      Caption = 'DataSetRefresh1'
      Enabled = False
      Hint = 
        'Atualizar|Atualiza o registro com os dados gravados no banco de ' +
        'dados'
      ImageIndex = 16
      ShortCut = 116
    end
    object act_confirmar: TAction
      Category = 'padrao'
      Caption = 'act_confirmar'
      Hint = 'Confirmar'
      ImageIndex = 5
    end
    object act_cancelar: TAction
      Category = 'padrao'
      Caption = 'act_cancelar'
      Hint = 'Cancelar'
      ImageIndex = 6
    end
    object acBuscaCliente: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
    end
  end
  object qrRelMovContaCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select mc.id_cliente, c.cli_002 as cliente, mc.data as data_movi' +
        'mento, c.saldo_atual, c.limite_credito,'
      
        'cast(case when mc.tipo_movimento='#39'E'#39' then '#39'Cr'#233'dito'#39' else '#39'D'#233'bito' +
        #39' end as varchar(10)) as credito_debito , '
      
        'mc.valor, mc.id_venda, mc.observacao, u.usu_002 as responsavel, ' +
        'mc.lancamento_manual'
      'from movimentocontacliente mc'
      
        'join clientes c on c.cli_001=mc.id_cliente and c.emp_001=mc.id_e' +
        'mpresa'
      'join usuarios u on u.usu_001 = mc.id_usuario'
      'where lancamento_manual'
      
        'and (mc.id_cliente = :id_cliente or :id_cliente=0 ) and mc.id_em' +
        'presa = :id_empresa'
      'and mc.data>= :data_1 and mc.data<= :data_2'
      'order by mc.id_cliente, mc.tipo_movimento,  mc.data')
    Active = True
    Left = 256
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_cliente'
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'data_1'
        Value = 42370.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'data_2'
        Value = 43018.000000000000000000
      end>
    object qrRelMovContaClientecliente: TWideStringField
      FieldName = 'cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrRelMovContaClientedata_movimento: TDateTimeField
      FieldName = 'data_movimento'
      Required = True
    end
    object qrRelMovContaClientecredito_debito: TWideStringField
      FieldName = 'credito_debito'
      ReadOnly = True
      Size = 10
    end
    object qrRelMovContaClientevalor: TFloatField
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrRelMovContaClienteid_venda: TIntegerField
      FieldName = 'id_venda'
    end
    object qrRelMovContaClienteobservacao: TBlobField
      FieldName = 'observacao'
    end
    object qrRelMovContaClienteresponsavel: TWideStringField
      FieldName = 'responsavel'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelMovContaClientelancamento_manual: TBooleanField
      FieldName = 'lancamento_manual'
      Required = True
    end
    object qrRelMovContaClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qrRelMovContaClientesaldo_atual: TFloatField
      FieldName = 'saldo_atual'
      ReadOnly = True
    end
    object qrRelMovContaClientelimite_credito: TFloatField
      FieldName = 'limite_credito'
      ReadOnly = True
    end
  end
  object dbRelMovContaCliente: TfrxDBDataset
    UserName = 'dbRelMovContaCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cliente=cliente'
      'data_movimento=data_movimento'
      'credito_debito=credito_debito'
      'valor=valor'
      'id_venda=id_venda'
      'observacao=observacao'
      'responsavel=responsavel'
      'lancamento_manual=lancamento_manual'
      'id_cliente=id_cliente'
      'saldo_atual=saldo_atual'
      'limite_credito=limite_credito')
    DataSet = qrRelMovContaCliente
    BCDToCurrency = False
    Left = 112
    Top = 176
  end
  object repMovContaCliente: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42761.598437002300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 146
    Top = 4
    Datasets = <
      item
        DataSet = dbRelMovContaCliente
        DataSetName = 'dbRelMovContaCliente'
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
        Name = 'sCampoDesc'
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
            'RELAT'#211'RIO DE MOVIMENTO CONTA DO CLIENTE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 29.236240000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 748.346940000000000000
        DataSet = dbRelMovContaCliente
        DataSetName = 'dbRelMovContaCliente'
        RowCount = 0
        object dbEstoquecodigo: TfrxMemoView
          Left = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DataField = 'data_movimento'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."data_movimento"]')
          ParentFont = False
        end
        object dbEstoquedescricao: TfrxMemoView
          Left = 79.370078740000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          DataField = 'credito_debito'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."credito_debito"]')
          ParentFont = False
        end
        object dbMovimentoEstoquetipo_mov: TfrxMemoView
          Left = 359.409710000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'valor'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."valor"]')
          ParentFont = False
        end
        object dbMovimentoEstoqueusuario: TfrxMemoView
          Left = 222.008040000000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          DataField = 'responsavel'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."responsavel"]')
          ParentFont = False
        end
        object dbMovimentoEstoquecod_venda: TfrxMemoView
          Left = 438.882190000000000000
          Width = 279.685220000000000000
          Height = 15.118110240000000000
          DataField = 'observacao'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."observacao"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 393.071120000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 11.338712050000000000
          Top = 3.779652049999981000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 532.913852050000000000
          Top = 7.559182050000004000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
        Height = 60.472480000000000000
        Top = 113.385900000000000000
        Width = 748.346940000000000000
        Condition = 'dbRelMovContaCliente."id_cliente"'
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 39.566929129999990000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
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
        object Memo2: TfrxMemoView
          Left = 79.370078740000000000
          Top = 39.566929129999990000
          Width = 136.063080000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 359.409710000000000000
          Top = 39.566929129999990000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 438.882190000000000000
          Top = 39.566929129999990000
          Width = 279.685220000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 222.008040000000000000
          Top = 39.566929129999990000
          Width = 128.504020000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 16.779530000000010000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object dbRelMovContaClientecliente: TfrxMemoView
          Left = 87.149660000000000000
          Top = 16.779530000000010000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'cliente'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          Memo.UTF8W = (
            '[dbRelMovContaCliente."cliente"]')
        end
        object Memo4: TfrxMemoView
          Left = 359.055350000000000000
          Top = 17.779530000000010000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SALDO ATUAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 536.693260000000000000
          Top = 17.779530000000010000
          Width = 102.047310000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LIMITE CR'#201'DITO')
          ParentFont = False
        end
        object dbRelMovContaClientesaldo_atual: TfrxMemoView
          Left = 449.543600000000000000
          Top = 17.779530000000010000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'saldo_atual'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          DisplayFormat.FormatStr = '%m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."saldo_atual"]')
          ParentFont = False
        end
        object dbRelMovContaClientelimite_credito: TfrxMemoView
          Left = 638.740570000000000000
          Top = 17.779530000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'limite_credito'
          DataSet = dbRelMovContaCliente
          DataSetName = 'dbRelMovContaCliente'
          DisplayFormat.FormatStr = '%m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelMovContaCliente."limite_credito"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 196.535560000000000000
        Width = 748.346940000000000000
        Condition = 'dbRelMovContaCliente."credito_debito"'
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 268.346630000000000000
        Width = 748.346940000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 362.834880000000000000
          Top = 4.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<dbRelMovContaCliente."valor">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 214.874150000000000000
          Top = 4.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897637800000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL [dbRelMovContaCliente."credito_debito"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 317.480520000000000000
        Width = 748.346940000000000000
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 7.559059999999988000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
end
