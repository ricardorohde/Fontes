object frmControleMesaPagamentoAntecipadoNovo: TfrmControleMesaPagamentoAntecipadoNovo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de mesa - Pagamento antecipado'
  ClientHeight = 283
  ClientWidth = 537
  Color = clBtnFace
  Constraints.MinWidth = 378
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 234
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
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
    object lbMesa: TLabel
      Left = 9
      Top = 43
      Width = 50
      Height = 19
      Caption = 'sMesa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnTopo: TPanel
      Left = 0
      Top = 0
      Width = 537
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 1
      object lbTipoMovimentoCaixa: TLabel
        Left = 9
        Top = 6
        Width = 257
        Height = 23
        Caption = 'PAGAMENTO ANTECIPADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 69
      Width = 355
      Height = 148
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 0
      object Label7: TLabel
        Left = 12
        Top = 79
        Width = 102
        Height = 19
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 12
        Top = 15
        Width = 43
        Height = 19
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 135
        Top = 15
        Width = 174
        Height = 19
        Caption = 'Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbFormaPgto: TDBLookupComboBox
        Left = 135
        Top = 40
        Width = 200
        Height = 27
        DataField = 'id_formapgto'
        DataSource = dsVendaPagAntecipado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'for_001'
        ListField = 'for_002'
        ListSource = dsListaFormapgto
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 104
        Width = 323
        Height = 25
        DataField = 'observacao'
        DataSource = dsVendaPagAntecipado
        TabOrder = 2
      end
      object edValor: TcxDBCurrencyEdit
        Left = 12
        Top = 40
        DataBinding.DataField = 'valor'
        DataBinding.DataSource = dsVendaPagAntecipado
        TabOrder = 0
        OnKeyPress = edValorKeyPress
        Width = 102
      end
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 234
    Width = 537
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 418
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
      TabOrder = 1
      TabStop = True
      OnClick = btCancelaClick
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
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 299
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Salvar'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      TabStop = True
      OnClick = btConfirmaClick
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
  object grTecladoNumerico: TAdvGroupBox
    Left = 373
    Top = 43
    Width = 159
    Height = 190
    BorderColor = clNavy
    Transparent = False
    RoundEdges = True
    Color = 14074285
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    Visible = False
    object kbTecladoNumerico: TAdvSmoothTouchKeyBoard
      Left = 2
      Top = 3
      Width = 155
      Height = 185
      Text = ''
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWhite
      AutoCompletion.Font.Height = -19
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.Color = clBlack
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.Opacity = 0
      Fill.OpacityTo = 0
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      KeyboardType = ktCELLPHONE
      KeyDistance = 2
      Keys = <
        item
          Caption = '7'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 1
          Y = 1
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '8'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 52
          Y = 1
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '9'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 103
          Y = 1
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '4'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 1
          Y = 47
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '5'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 52
          Y = 47
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '6'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 103
          Y = 47
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '1'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 1
          Y = 92
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '2'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 52
          Y = 92
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '3'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 103
          Y = 92
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = ','
          KeyValue = 44
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 1
          Y = 138
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = '0'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 52
          Y = 138
          Height = 45
          Width = 51
          SubKeys = <>
        end
        item
          Caption = 'Del'
          KeyValue = 8
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skBackSpace
          Color = 10526880
          X = 103
          Y = 138
          Height = 45
          Width = 51
          SubKeys = <>
        end>
      SmallFont.Charset = DEFAULT_CHARSET
      SmallFont.Color = clWindowText
      SmallFont.Height = -9
      SmallFont.Name = 'Tahoma'
      SmallFont.Style = []
      Version = '1.8.4.1'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object qrListaFormapgto: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'for_001, '
      'for_002,'
      'emp_001 '
      'from formapgto'
      'where emp_001=:emp'
      'and not b_fiado'
      'and not b_devolucao'
      'and sit_001=4')
    BeforeOpen = qrListaFormapgtoBeforeOpen
    Left = 152
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrListaFormapgtofor_001: TIntegerField
      FieldName = 'for_001'
      Required = True
    end
    object qrListaFormapgtofor_002: TWideStringField
      FieldName = 'for_002'
      Required = True
      Size = 40
    end
    object qrListaFormapgtoemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
  end
  object qrVendaPagAntecipado: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO venda_pag_antecipado'
      
        '  (id_venda, id_empresa, id_formapgto, valor, observacao, id_cai' +
        'xa, id_caixaitem, id_usuario)'
      'VALUES'
      
        '  (:id_venda, :id_empresa, :id_formapgto, :valor, :observacao, :' +
        'id_caixa, :id_caixaitem, :id_usuario)')
    SQLDelete.Strings = (
      'DELETE FROM venda_pag_antecipado'
      'WHERE'
      
        '  id_venda_pag_antecipado = :Old_id_venda_pag_antecipado AND id_' +
        'venda = :Old_id_venda AND id_empresa = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE venda_pag_antecipado'
      'SET'
      
        '  id_venda_pag_antecipado = :id_venda_pag_antecipado, id_venda =' +
        ' :id_venda, id_empresa = :id_empresa, '
      
        '  id_formapgto = :id_formapgto, valor = :valor, observacao = :ob' +
        'servacao, id_caixa = :id_caixa,'
      '  id_caixaitem = :id_caixaitem, id_usuario = :id_usuario'
      'WHERE'
      
        '  id_venda_pag_antecipado = :Old_id_venda_pag_antecipado AND id_' +
        'venda = :Old_id_venda AND id_empresa = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM venda_pag_antecipado'
      'WHERE'
      
        '  id_venda_pag_antecipado = :Old_id_venda_pag_antecipado AND id_' +
        'venda = :Old_id_venda AND id_empresa = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_venda_pag_antecipado, id_venda, id_empresa, id_formapg' +
        'to, valor, observacao FROM venda_pag_antecipado'
      'WHERE'
      
        '  id_venda_pag_antecipado = :id_venda_pag_antecipado AND id_vend' +
        'a = :id_venda AND id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM venda_pag_antecipado'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      '  id_venda_pag_antecipado, '
      '  id_venda ,'
      '  id_empresa, '
      '  id_formapgto, '
      '  valor, '
      '  cast(observacao as varchar(1000)) as  observacao,'
      '  id_caixa,'
      '  id_caixaitem,'
      '  id_usuario'
      ' from venda_pag_antecipado')
    Left = 48
    Top = 192
    object qrVendaPagAntecipadoid_venda_pag_antecipado: TIntegerField
      FieldName = 'id_venda_pag_antecipado'
    end
    object qrVendaPagAntecipadoid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaPagAntecipadoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendaPagAntecipadoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
      Required = True
    end
    object qrVendaPagAntecipadovalor: TFloatField
      FieldName = 'valor'
      Required = True
      OnValidate = qrVendaPagAntecipadovalorValidate
      currency = True
    end
    object qrVendaPagAntecipadoobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 1000
    end
    object qrVendaPagAntecipadoid_caixa: TIntegerField
      FieldName = 'id_caixa'
    end
    object qrVendaPagAntecipadoid_caixaitem: TIntegerField
      FieldName = 'id_caixaitem'
    end
    object qrVendaPagAntecipadoid_usuario: TIntegerField
      FieldName = 'id_usuario'
    end
  end
  object dsVendaPagAntecipado: TDataSource
    AutoEdit = False
    DataSet = qrVendaPagAntecipado
    Left = 40
    Top = 248
  end
  object dsListaFormapgto: TDataSource
    AutoEdit = False
    DataSet = qrListaFormapgto
    Left = 144
    Top = 248
  end
  object UniQuery1: TUniQuery
    Connection = frmMenu.conexao
    Left = 176
    Top = 56
  end
  object RepPagAntecipado: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42737.630242233800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 314
    Top = 44
    Datasets = <
      item
        DataSet = frmMenu.dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = frmControleMesaRelatorios.dbPedido
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
        Name = 'sFormaPag'
        Value = ''
      end
      item
        Name = 'sValor'
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
      RightMargin = 2.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 251.669450000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 275.905690000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 241.889920000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '*** CUPOM PARA SIMPLES CONFERENCIA *** '
            '*** NAO '#201' DOCUMENTO FISCAL ***')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.118120000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."emp_003"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Top = 48.236239999999990000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."emp_007"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 48.236239999999990000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."cep_004"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 63.354360000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."cep_003"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 78.472480000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone.:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 41.574830000000000000
          Top = 78.472480000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbEmpresa."emp_013"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 96.590600000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbPedido."Mesa"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 111.708720000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 129.826840000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Abertura:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 11.338590000000000000
          Top = 144.944960000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fechamento:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 160.063080000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 49.133890000000000000
          Top = 111.708720000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."NomeCliente"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 56.692950000000000000
          Top = 129.826840000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."Abertura"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 75.590600000000000000
          Top = 144.944960000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."Fechamento"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 94.488250000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 162.519790000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '*** RECIBO DE PAGAMENTO ***')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 11.338590000000000000
          Top = 181.417440000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sFormaPag]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 154.960730000000000000
          Top = 181.417440000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sValor]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 201.385900000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 11.338590000000000000
          Top = 206.385900000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sistema desenvolvido por RP Sistemas')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 11.338590000000000000
          Top = 227.622140000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
