inherited frmVendaFiadoCrediario: TfrmVendaFiadoCrediario
  Caption = 'Controle de Fiado / Credi'#225'rio'
  ClientHeight = 452
  ClientWidth = 552
  Constraints.MinWidth = 558
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 558
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 552
    Height = 403
    ExplicitWidth = 552
    ExplicitHeight = 403
    FullHeight = 200
    object AdvGroupBox4: TAdvGroupBox
      Left = 7
      Top = 7
      Width = 537
      Height = 162
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      DesignSize = (
        537
        162)
      object lbCliente: TLabel
        Left = 95
        Top = 29
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object Label1: TLabel
        Left = 11
        Top = 6
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 421
        Top = 6
        Width = 79
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Lan'#231'amento'
        ExplicitLeft = 422
      end
      object lbVenda: TLabel
        Left = 11
        Top = 56
        Width = 41
        Height = 16
        Caption = 'Venda'
      end
      object Label3: TLabel
        Left = 138
        Top = 56
        Width = 73
        Height = 16
        Caption = 'Documento'
      end
      object Label4: TLabel
        Left = 265
        Top = 56
        Width = 96
        Height = 16
        Caption = 'Valor Credi'#225'rio'
      end
      object Label5: TLabel
        Left = 392
        Top = 56
        Width = 120
        Height = 16
        Caption = 'Valor das parcelas'
      end
      object Label6: TLabel
        Left = 11
        Top = 106
        Width = 155
        Height = 16
        Caption = 'Condi'#231#227'o de Pagamento'
      end
      object Label7: TLabel
        Left = 265
        Top = 106
        Width = 120
        Height = 16
        Caption = 'Dia de Vencimento'
      end
      object edCodCliente: TcxButtonEdit
        Left = 11
        Top = 26
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
        Properties.ValidationOptions = []
        Properties.OnChange = edCodClientePropertiesChange
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 3
        OnExit = edCodClienteExit
        Width = 78
      end
      object dtpDataLançamento: TDateTimePicker
        Left = 421
        Top = 26
        Width = 105
        Height = 24
        Anchors = [akTop, akRight]
        Date = 42758.000000000000000000
        Time = 42758.000000000000000000
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = False
      end
      object edVenda: TEdit
        Left = 11
        Top = 78
        Width = 121
        Height = 22
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'edVenda'
      end
      object edDocumento: TEdit
        Left = 138
        Top = 78
        Width = 121
        Height = 22
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = 'edVenda'
      end
      object edValor: TEdit
        Left = 265
        Top = 78
        Width = 121
        Height = 22
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = 'edVenda'
      end
      object cbCondicaoPag: TJvDBComboBox
        Left = 3
        Top = 128
        Width = 238
        Height = 24
        TabOrder = 0
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
        OnChange = cbCondicaoPagChange
        OnClick = cbCondicaoPagChange
      end
      object btGeraParcelas: TAdvGlowButton
        AlignWithMargins = True
        Left = 392
        Top = 106
        Width = 134
        Height = 44
        Margins.Left = 0
        Caption = 'Gerar Parcelas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 74
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = btGeraParcelasClick
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
      object DBEdit1: TDBEdit
        Left = 392
        Top = 78
        Width = 134
        Height = 22
        TabStop = False
        DataField = 'total'
        DataSource = dsParcelasFiado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit2: TDBEdit
        Left = 268
        Top = 128
        Width = 121
        Height = 22
        TabStop = False
        DataField = 'periodicidade_inicio'
        DataSource = dsCondicaoPagamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object ckSaldoCliente: TcxCheckBox
        Left = 11
        Top = 158
        Caption = 'Considerar saldo atual do cliente'
        Properties.MultiLine = True
        State = cbsChecked
        TabOrder = 9
        Visible = False
        Width = 236
      end
    end
    object cxGrid1: TcxGrid
      Left = 7
      Top = 175
      Width = 537
      Height = 225
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsParcelasFiado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1documento: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'documento'
          Options.Filtering = False
          Width = 184
        end
        object cxGrid1DBTableView1vencimento: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'vencimento'
          Options.Filtering = False
          Width = 115
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          Options.Filtering = False
          Width = 118
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 528
      Top = 175
      Width = 104
      Height = 35
      Margins.Left = 0
      Anchors = [akTop, akRight]
      Caption = 'Incluir'
      ImageIndex = 69
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      TabStop = True
      Visible = False
      OnClick = btNovoClick
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
    object btExcluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 528
      Top = 216
      Width = 104
      Height = 35
      Margins.Left = 0
      Anchors = [akTop, akRight]
      Caption = 'Excluir'
      ImageIndex = 80
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      TabStop = True
      Visible = False
      OnClick = btExcluirClick
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
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 528
      Top = 257
      Width = 104
      Height = 35
      Margins.Left = 0
      Caption = 'Salvar'
      ImageIndex = 25
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      TabStop = True
      Visible = False
      OnClick = btSalvarClick
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
  inherited pnBotoes: TFlowPanel
    Top = 403
    Width = 552
    ExplicitTop = 403
    ExplicitWidth = 552
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 433
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
      Left = 314
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirmar'
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
    Left = 328
    Top = 16
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
  object cdsParcelasFiado: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = cdsParcelasFiadoBeforePost
    Left = 40
    Top = 240
    object cdsParcelasFiadodocumento: TStringField
      FieldName = 'documento'
    end
    object cdsParcelasFiadovencimento: TDateField
      FieldName = 'vencimento'
      Required = True
    end
    object cdsParcelasFiadovalor: TFloatField
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object cdsParcelasFiadoparcela_saldo: TBooleanField
      FieldName = 'parcela_saldo_cliente'
    end
    object cdsParcelasFiadototal: TAggregateField
      FieldName = 'total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
  end
  object cdsCondicaoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCondicaoPagamento'
    Left = 232
    Top = 232
    object cdsCondicaoPagamentoid_condicaopagamento: TIntegerField
      FieldName = 'id_condicaopagamento'
      Required = True
    end
    object cdsCondicaoPagamentodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object cdsCondicaoPagamentoperiodicidade_inicio: TIntegerField
      FieldName = 'periodicidade_inicio'
      Required = True
      OnChange = cdsCondicaoPagamentoperiodicidade_inicioChange
    end
  end
  object dspCondicaoPagamento: TDataSetProvider
    DataSet = qrCondicaoPagamento
    Left = 48
    Top = 304
  end
  object qrCondicaoPagamento: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO condicaopagamento'
      '  (id_condicaopagamento, descricao, periodicidade_inicio)'
      'VALUES'
      '  (:id_condicaopagamento, :descricao, :periodicidade_inicio)')
    SQLDelete.Strings = (
      'DELETE FROM condicaopagamento'
      'WHERE'
      '  id_condicaopagamento = :Old_id_condicaopagamento')
    SQLUpdate.Strings = (
      'UPDATE condicaopagamento'
      'SET'
      '  id_condicaopagamento = :id_condicaopagamento'
      'WHERE'
      '  id_condicaopagamento = :Old_id_condicaopagamento')
    SQLLock.Strings = (
      'SELECT * FROM condicaopagamento'
      'WHERE'
      '  id_condicaopagamento = :Old_id_condicaopagamento'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_condicaopagamento, descricao, periodicidade_inicio FRO' +
        'M condicaopagamento'
      'WHERE'
      '  id_condicaopagamento = :id_condicaopagamento')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM condicaopagamento'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select id_condicaopagamento, descricao, periodicidade_inicio'
      'from condicaopagamento '
      'where id_situacao=4 and id_empresa=:id_empresa')
    Left = 48
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCondicaoPagamentoid_condicaopagamento: TIntegerField
      FieldName = 'id_condicaopagamento'
      Required = True
    end
    object qrCondicaoPagamentodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrCondicaoPagamentoperiodicidade_inicio: TIntegerField
      FieldName = 'periodicidade_inicio'
      Required = True
    end
  end
  object dsCondicaoPagamento: TDataSource
    DataSet = cdsCondicaoPagamento
    Left = 336
    Top = 240
  end
  object dsParcelasFiado: TDataSource
    DataSet = cdsParcelasFiado
    OnStateChange = dsParcelasFiadoStateChange
    Left = 120
    Top = 240
  end
end
