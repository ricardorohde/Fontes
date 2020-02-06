inherited frmControlePDVCancItem: TfrmControlePDVCancItem
  Caption = 'Cancelar Produto'
  ClientHeight = 391
  OnClose = FormClose
  ExplicitWidth = 661
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Height = 342
    ExplicitHeight = 342
    FullHeight = 200
    object Label6: TLabel
      Left = 6
      Top = 99
      Width = 281
      Height = 16
      Caption = 'Informe o motivo do cancelamento do item '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 23
      Width = 30
      Height = 16
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblItem: TLabel
      Left = 117
      Top = 45
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeObs: TDBEdit
      Left = 6
      Top = 117
      Width = 646
      Height = 225
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      DataField = 'justificativa_cancelamento'
      DataSource = dsVendaItem
      TabOrder = 1
      OnChange = dbeObsChange
    end
    object edItem: TEdit
      Left = 6
      Top = 40
      Width = 100
      Height = 24
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 0
      OnExit = edItemExit
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 342
    ExplicitTop = 342
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 536
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btCancelaClick
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
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 417
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirma'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      TabStop = True
      OnClick = btConfirmaClick
      OnExit = btConfirmaExit
      OnEnter = btConfirmaEnter
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
  object qrVendaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      
        '     , case when (ITE.ITE_002=0 or ITE.ITE_003=0  ) then 0.0 els' +
        'e ((ite.desconto / ((ITE.ITE_002 * ITE.ITE_003)+coalesce(ite.acr' +
        'escimo,0.0))) * 100) end as desconto_perc'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , ite.item_fracionado'
      '     , ite.acrescimo'
      '     , ven.ven_024 as tipo_venda'
      '     ,cast(case when ven.ven_024 ='#39'M'#39' then mes.mes_002'
      
        '           else concat('#39'COMANDA '#39', ven.ven_026) end as varchar(4' +
        '0) ) as descricao_mesa'
      '     , ven.ven_029 as nro_venda'
      
        '     , cast ((case when ite.item_fracionado is not null then '#39'SI' +
        'M'#39' else '#39#39' end ) as varchar(3))as  fracionado '
      '     , ITE.ITE_002 AS qtdevenda_old'
      '     , ITE.justificativa_cancelamento'
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      
        'join venda ven on ite.ven_001=ven.ven_001 and ite.emp_001=ven.em' +
        'p_001'
      
        'left join mesa mes on mes.emp_001 = ven.emp_001 and mes.mes_001 ' +
        '= ven.ven_025'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    Left = 600
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end>
    object qrVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = []
      Required = True
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      ProviderFlags = []
      Required = True
    end
    object qrVendaItemnro_item: TIntegerField
      FieldName = 'nro_item'
      ProviderFlags = []
      Required = True
    end
    object qrVendaItemqtdevenda: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      ProviderFlags = []
      Required = True
    end
    object qrVendaItemvlrvenda: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      ProviderFlags = []
      Required = True
      currency = True
    end
    object qrVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ProviderFlags = []
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      ProviderFlags = []
      Size = 200
    end
    object qrVendaItemcod_status: TIntegerField
      FieldName = 'cod_status'
      ProviderFlags = []
    end
    object qrVendaItemstatus: TWideMemoField
      FieldName = 'status'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemdesconto: TFloatField
      FieldName = 'desconto'
      ProviderFlags = []
    end
    object qrVendaItemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      ProviderFlags = []
      currency = True
    end
    object qrVendaItemvalor_taxa10: TFloatField
      FieldName = 'valor_taxa10'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrVendaItemvalor_total_taxa10: TFloatField
      FieldName = 'valor_total_taxa10'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrVendaItemordem_item: TLargeintField
      FieldName = 'ordem_item'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      ProviderFlags = []
      Required = True
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
      ProviderFlags = []
    end
    object qrVendaItemacrescimo: TFloatField
      FieldName = 'acrescimo'
      ProviderFlags = []
    end
    object qrVendaItemdesconto_perc: TFloatField
      FieldName = 'desconto_perc'
    end
    object qrVendaItemtipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 1
    end
    object qrVendaItemdescricao_mesa: TWideStringField
      FieldName = 'descricao_mesa'
      ReadOnly = True
      Size = 40
    end
    object qrVendaItemnro_venda: TIntegerField
      FieldName = 'nro_venda'
      ReadOnly = True
    end
    object qrVendaItemfracionado: TWideStringField
      FieldName = 'fracionado'
      ReadOnly = True
      Size = 3
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
    object qrVendaItemqtdevenda_old: TFloatField
      FieldName = 'qtdevenda_old'
      Required = True
    end
    object qrVendaItemjustificativa_cancelamento: TWideStringField
      FieldName = 'justificativa_cancelamento'
      Size = 200
    end
  end
  object dspVendaItem: TDataSetProvider
    DataSet = qrVendaItem
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 24
  end
  object cdsVendaItem: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'id_empresa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_venda'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nro_item'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'qtdevenda'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'vlrvenda'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'descricao_item'
        Attributes = [faReadonly, faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'observacao'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'status'
        Attributes = [faReadonly]
        DataType = ftWideMemo
      end
      item
        Name = 'desconto'
        DataType = ftFloat
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'valor_taxa10'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'valor_total_taxa10'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'ordem_item'
        Attributes = [faReadonly]
        DataType = ftLargeint
      end
      item
        Name = 'id_material'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'item_fracionado'
        DataType = ftInteger
      end
      item
        Name = 'acrescimo'
        DataType = ftFloat
      end
      item
        Name = 'desconto_perc'
        DataType = ftFloat
      end
      item
        Name = 'tipo_venda'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'descricao_mesa'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'nro_venda'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'fracionado'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'data_hora_lancamento'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'qtdevenda_old'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'justificativa_cancelamento'
        DataType = ftWideString
        Size = 200
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVendaItem'
    StoreDefs = True
    BeforeOpen = cdsVendaItemBeforeOpen
    AfterOpen = cdsVendaItemAfterOpen
    OnCalcFields = cdsVendaItemCalcFields
    Left = 456
    Top = 24
    object cdsVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object cdsVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object cdsVendaItemnro_item: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Item'
      FieldName = 'nro_item'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object cdsVendaItemqtdevenda: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object cdsVendaItemvlrvenda: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vlrvenda'
      ProviderFlags = [pfInWhere]
      Required = True
      currency = True
    end
    object cdsVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 50
    end
    object cdsVendaItemobservacao: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      ProviderFlags = [pfInWhere]
      Size = 200
    end
    object cdsVendaItemcod_status: TIntegerField
      FieldName = 'cod_status'
      ProviderFlags = [pfInWhere]
    end
    object cdsVendaItemstatus: TWideMemoField
      DisplayLabel = 'Status'
      FieldName = 'status'
      ProviderFlags = [pfInWhere]
      BlobType = ftWideMemo
    end
    object cdsVendaItemdesconto: TFloatField
      DisplayLabel = 'Desconto (%)'
      FieldName = 'desconto'
      ProviderFlags = [pfInWhere]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsVendaItemvalor_total: TFloatField
      FieldName = 'valor_total'
      ProviderFlags = [pfInWhere]
      currency = True
    end
    object cdsVendaItemvalor_total_calc: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'valor_total_calc'
      ProviderFlags = [pfInWhere]
      EditFormat = '#,##0.00'
      currency = True
      Calculated = True
    end
    object cdsVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
      ProviderFlags = [pfInWhere]
    end
    object cdsVendaItemacrescimo: TFloatField
      FieldName = 'acrescimo'
      ProviderFlags = [pfInWhere]
    end
    object cdsVendaItemdesconto_perc: TFloatField
      FieldName = 'desconto_perc'
      DisplayFormat = '0.00'
    end
    object cdsVendaItemtipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 1
    end
    object cdsVendaItemdescricao_mesa: TWideStringField
      FieldName = 'descricao_mesa'
      Size = 40
    end
    object cdsVendaItemnro_venda: TIntegerField
      FieldName = 'nro_venda'
    end
    object cdsVendaItemfracionado: TWideStringField
      FieldName = 'fracionado'
      Size = 3
    end
    object cdsVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
    object cdsVendaItemqtdevenda_old: TFloatField
      FieldName = 'qtdevenda_old'
      Required = True
    end
    object cdsVendaItemjustificativa_cancelamento: TWideStringField
      FieldName = 'justificativa_cancelamento'
      Size = 200
    end
    object cdsVendaItemordem_item: TLargeintField
      FieldName = 'ordem_item'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsVendaItem: TDataSource
    DataSet = cdsVendaItem
    Left = 376
    Top = 24
  end
  object dbPedido: TfrxDBDataset
    UserName = 'dbPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_empresa=id_empresa'
      'id_venda=id_venda'
      'nro_item=nro_item'
      'qtdevenda=qtdevenda'
      'vlrvenda=vlrvenda'
      'descricao_item=descricao_item'
      'observacao=observacao'
      'hora=hora'
      'cod_status=cod_status'
      'status=status'
      'flag_imprimir=flag_imprimir'
      'desconto=desconto'
      'valor_total=valor_total'
      'valor_total_calc=valor_total_calc'
      'item_fracionado=item_fracionado'
      'acrescimo=acrescimo'
      'desconto_perc=desconto_perc'
      'tipo_venda=tipo_venda'
      'descricao_mesa=descricao_mesa'
      'nro_venda=nro_venda'
      'fracionado=fracionado')
    DataSet = cdsVendaItem
    BCDToCurrency = False
    Left = 452
    Top = 76
  end
  object RepItemCancelado: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42702.703455555560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 378
    Top = 76
    Datasets = <
      item
        DataSet = dbPedido
        DataSetName = 'dbPedido'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sMensagemTxServico'
        Value = Null
      end
      item
        Name = 'sMensagemCouvert'
        Value = ''
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
      LeftMargin = 5.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 119.385900000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 3.779527560000000000
          Top = 3.779530000000001000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANCELAMENTO DE ITEM')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779527560000000000
          Top = 23.000000000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbPedido."descricao_mesa"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 99.063080000000000000
          Width = 253.228339130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779527560000000000
          Top = 100.063080000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 213.653680000000000000
          Top = 100.063080000000000000
          Width = 37.795273150000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 179.086614170000000000
          Top = 100.063080000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Frac.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 116.748031500000000000
          Width = 253.228346456692900000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          Top = 21.102350000000000000
          Width = 253.228346456692900000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Top = 43.464566930000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."nro_venda"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 43.464566930000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 80.149660000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'USU'#193'RIO:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 60.472480000000000000
          Top = 64.252010000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sData]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 60.472480000000000000
          Top = 80.149660000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[sUsuario]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 200.315090000000000000
        Width = 272.126160000000000000
        DataSet = dbPedido
        DataSetName = 'dbPedido'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo22: TfrxMemoView
          Left = 213.653680000000000000
          Width = 37.795273150000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."qtdevenda"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779527560000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."descricao_item"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo21: TfrxMemoView
          Left = 179.086614170000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."fracionado"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 238.110390000000000000
        Width = 272.126160000000000000
        Stretched = True
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."observacao"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 94.488249999999990000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#213'ES:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 1.000000000000000000
          Width = 253.228346456692900000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 288
    Top = 24
  end
end
