inherited frmContasPagarPagamento: TfrmContasPagarPagamento
  Caption = 'Contas a Pagar - Pagamento'
  ClientHeight = 527
  ClientWidth = 895
  ExplicitWidth = 901
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 895
    Height = 478
    ExplicitWidth = 895
    ExplicitHeight = 478
    FullHeight = 200
    object Label8: TLabel
      Left = 453
      Top = 253
      Width = 91
      Height = 16
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      Caption = 'Valores totais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 449
    end
    object DBText2: TDBText
      Left = 559
      Top = 253
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_valor'
      DataSource = dsCPagar
      ExplicitLeft = 555
    end
    object DBText3: TDBText
      Left = 644
      Top = 253
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_desconto'
      DataSource = dsCPagar
      ExplicitLeft = 640
    end
    object DBText4: TDBText
      Left = 729
      Top = 253
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_acrescimo'
      DataSource = dsCPagar
      ExplicitLeft = 725
    end
    object DBText5: TDBText
      Left = 814
      Top = 253
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_pago'
      DataSource = dsCPagar
      ExplicitLeft = 810
    end
    object Label6: TLabel
      Left = 559
      Top = 231
      Width = 34
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 555
    end
    object Label7: TLabel
      Left = 644
      Top = 231
      Width = 61
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 640
    end
    object Label9: TLabel
      Left = 729
      Top = 231
      Width = 67
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Acr'#233'scimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 725
    end
    object Label10: TLabel
      Left = 814
      Top = 231
      Width = 70
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Valor Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 810
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 7
      Width = 882
      Height = 218
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCPagar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1id_cpagar: TcxGridDBColumn
          DataBinding.FieldName = 'id_cpagar'
          Visible = False
        end
        object cxGrid1DBTableView1data_vencimento: TcxGridDBColumn
          DataBinding.FieldName = 'data_vencimento'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 75
        end
        object cxGrid1DBTableView1data_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'data_pagamento'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 107
        end
        object cxGrid1DBTableView1nota: TcxGridDBColumn
          DataBinding.FieldName = 'nota'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 49
        end
        object cxGrid1DBTableView1nome_fornecedor: TcxGridDBColumn
          DataBinding.FieldName = 'nome_fornecedor'
          Options.Editing = False
          Width = 200
        end
        object cxGrid1DBTableView1documento: TcxGridDBColumn
          DataBinding.FieldName = 'documento'
          Options.Editing = False
          Width = 108
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'valor_acrescimo'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1valor_pago: TcxGridDBColumn
          DataBinding.FieldName = 'valor_pago'
          Options.AutoWidthSizable = False
          Width = 80
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 10
      Top = 264
      Width = 882
      Height = 89
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Dados da conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        882
        89)
      object Label1: TLabel
        Left = 16
        Top = 22
        Width = 108
        Height = 16
        Caption = 'Data Pagamento'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 143
        Top = 22
        Width = 57
        Height = 16
        Caption = 'Hist'#243'rico'
        FocusControl = cxDBTextEdit1
      end
      object DBText1: TDBText
        Left = 512
        Top = 47
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'conta_desc'
        DataSource = dsCPagar
      end
      object Label3: TLabel
        Left = 441
        Top = 22
        Width = 38
        Height = 16
        Caption = 'Conta'
        FocusControl = edCodConta
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 44
        DataBinding.DataField = 'data_pagamento'
        DataBinding.DataSource = dsCPagar
        ParentFont = False
        Properties.ShowTime = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 143
        Top = 44
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = dsCPagar
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 296
      end
      object edCodConta: TcxDBButtonEdit
        Left = 441
        Top = 44
        DataBinding.DataField = 'id_conta'
        DataBinding.DataSource = dsCPagar
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaConta
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 65
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 10
      Top = 359
      Width = 882
      Height = 113
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Dados do pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lbContaCorrente: TLabel
        Left = 364
        Top = 38
        Width = 122
        Height = 19
        Caption = 'Conta corrente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 643
        Top = 17
        Width = 108
        Height = 19
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edValorPagamentoConta: TJvValidateEdit
        Left = 162
        Top = 35
        Width = 116
        Height = 27
        AutoSize = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 1
        OnEnter = edValorPagamentoContaEnter
      end
      object edCodContaCorrente: TcxButtonEdit
        Left = 284
        Top = 35
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaContaCorrente
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        OnExit = edCodContaCorrenteExit
        Width = 74
      end
      object edValorPagamentoCaixa: TJvValidateEdit
        Left = 162
        Top = 68
        Width = 116
        Height = 27
        AutoSize = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 4
        OnEnter = edValorPagamentoCaixaEnter
      end
      object rbContaCorrente: TcxRadioButton
        Left = 13
        Top = 40
        Width = 143
        Height = 17
        Caption = 'Conta banc'#225'ria'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rbContaCorrenteClick
      end
      object rbCaixa: TcxRadioButton
        Left = 13
        Top = 73
        Width = 73
        Height = 17
        Caption = 'Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = rbContaCorrenteClick
      end
      object cbFormaPagamento: TJvDBComboBox
        Left = 284
        Top = 68
        Width = 222
        Height = 27
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object meObservacao: TMemo
        Left = 643
        Top = 42
        Width = 222
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 478
    Width = 895
    ExplicitTop = 478
    ExplicitWidth = 895
    object FlowPanel1: TFlowPanel
      Left = 4
      Top = 0
      Width = 891
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      Color = 12691076
      FlowStyle = fsRightLeftTopBottom
      ParentBackground = False
      TabOrder = 0
      object btConfirma: TAdvGlowButton
        AlignWithMargins = True
        Left = 772
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
      object btCancela: TAdvGlowButton
        AlignWithMargins = True
        Left = 653
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
    end
  end
  object qrCPagar: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cpagar'
      
        '  (id_cpagar, id_conta, nota, descricao, valor, data_vencimento,' +
        ' documento, data_pagamento)'
      'VALUES'
      
        '  (:id_cpagar, :id_conta, :nota, :descricao, :valor, :data_venci' +
        'mento, :documento, data_pagamento))')
    SQLDelete.Strings = (
      'DELETE FROM cpagar'
      'WHERE'
      '  id_cpagar = :Old_id_cpagar')
    SQLUpdate.Strings = (
      'UPDATE cpagar'
      'SET'
      
        '  id_conta = :id_conta, descricao = :descricao, valor_desconto =' +
        ' :valor_desconto, '
      
        '  valor_acrescimo = :valor_acrescimo, valor_pago = :valor_pago, ' +
        'data_pagamento =:data_pagamento,'
      
        '  id_situacao = :id_situacao , id_usuario_pagamento =:id_usuario' +
        '_pagamento,  id_caixa = :id_caixa,'
      
        '  itemcaixaitem = :itemcaixaitem, id_movimentocc = :id_movimento' +
        'cc'
      'WHERE'
      '  id_cpagar = :Old_id_cpagar')
    SQLLock.Strings = (
      'SELECT * FROM cpagar'
      'WHERE'
      '  id_cpagar = :Old_id_cpagar'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_cpagar, id_conta, nota, descricao, valor, data_vencime' +
        'nto, documento FROM cpagar'
      'WHERE'
      '  id_cpagar = :id_cpagar')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cpagar'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      '  cp.id_cpagar,'
      '  cp.descricao,'
      '  cp.nota, '
      '  cp.data_vencimento,'
      '  cp.documento, '
      '  cp.valor,'
      '  coalesce(cp.valor_desconto, 0.00) as valor_desconto,'
      '  coalesce(cp.valor_acrescimo, 0.00) as valor_acrescimo,'
      '  case when coalesce(cp.valor_pago, 0.00)=0.0 then '
      
        '  (cp.valor - coalesce(cp.valor_desconto, 0.00) + coalesce(cp.va' +
        'lor_acrescimo, 0.00))    else 0.00 end as valor_pago,'
      '  cp.id_conta,'
      '  coalesce(cp.data_pagamento,localtimestamp) as data_pagamento, '
      '  f.nome_fantasia as nome_fornecedor,'
      '  c.descricao as conta_desc,'
      '  cp.id_situacao,'
      '  cp.id_usuario_pagamento,'
      '  cp.id_caixa,'
      '  cp.itemcaixaitem,'
      '  cp.id_movimentocc '
      'from cpagar cp'
      
        'join fornecedor f on f.id_fornecedor= cp.id_fornecedor and f.id_' +
        'empresa=cp.id_empresa'
      
        'join conta c on c.id_conta= cp.id_conta and c.id_empresa=cp.id_e' +
        'mpresa'
      'where cp.id_empresa = :id_empresa'
      'and true')
    Left = 40
    Top = 40
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_empresa'
        Value = 1
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
    object qrCPagardocumento: TWideStringField
      FieldName = 'documento'
    end
    object qrCPagarvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qrCPagarvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qrCPagarvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qrCPagarvalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object qrCPagarid_conta: TIntegerField
      FieldName = 'id_conta'
      Required = True
    end
    object qrCPagardata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
    end
    object qrCPagarnome_fornecedor: TWideStringField
      FieldName = 'nome_fornecedor'
      Required = True
      Size = 100
    end
    object qrCPagarconta_desc: TWideStringField
      FieldName = 'conta_desc'
      Required = True
      Size = 100
    end
    object qrCPagarid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrCPagardata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCPagarid_usuario_pagamento: TIntegerField
      FieldName = 'id_usuario_pagamento'
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
  end
  object dspCPagar: TDataSetProvider
    DataSet = qrCPagar
    Left = 96
    Top = 40
  end
  object cdsCPagar: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftLargeint
        Name = 'id_empresa'
        ParamType = ptUnknown
        Value = 1
      end>
    ProviderName = 'dspCPagar'
    AfterOpen = cdsCPagarAfterOpen
    Left = 160
    Top = 40
    object cdsCPagarid_cpagar: TIntegerField
      FieldName = 'id_cpagar'
    end
    object cdsCPagardescricao: TWideStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'descricao'
      Size = 150
    end
    object cdsCPagarnota: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'nota'
    end
    object cdsCPagardocumento: TWideStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
    end
    object cdsCPagarvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object cdsCPagarvalor_desconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'valor_desconto'
      OnChange = cdsCPagarvalor_descontoChange
      currency = True
    end
    object cdsCPagarvalor_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'valor_acrescimo'
      OnChange = cdsCPagarvalor_acrescimoChange
      currency = True
    end
    object cdsCPagarvalor_pago: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'valor_pago'
      OnChange = cdsCPagarvalor_pagoChange
      currency = True
    end
    object cdsCPagarid_conta: TIntegerField
      FieldName = 'id_conta'
      Required = True
      OnChange = cdsCPagarid_contaChange
    end
    object cdsCPagardata_pagamento: TDateTimeField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'data_pagamento'
    end
    object cdsCPagarnome_fornecedor: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nome_fornecedor'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object cdsCPagarconta_desc: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta_desc'
      Required = True
      Size = 100
    end
    object cdsCPagarid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object cdsCPagardata_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
    object cdsCPagarid_usuario_pagamento: TIntegerField
      FieldName = 'id_usuario_pagamento'
    end
    object cdsCPagarid_caixa: TIntegerField
      FieldName = 'id_caixa'
    end
    object cdsCPagaritemcaixaitem: TIntegerField
      FieldName = 'itemcaixaitem'
    end
    object cdsCPagarid_movimentocc: TIntegerField
      FieldName = 'id_movimentocc'
    end
    object cdsCPagartotal_valor: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_valor'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
    object cdsCPagartotal_desconto: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_desconto'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_desconto)'
    end
    object cdsCPagartotal_pago: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_pago'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_pago)'
    end
    object cdsCPagartotal_acrescimo: TAggregateField
      Alignment = taRightJustify
      FieldName = 'total_acrescimo'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_acrescimo)'
    end
  end
  object dsCPagar: TDataSource
    DataSet = cdsCPagar
    Left = 224
    Top = 40
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 288
    Top = 40
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
    object acBuscaContaCorrente: TAction
      Caption = 'acBuscaContaCorrente'
      ImageIndex = 0
      OnExecute = acBuscaContaCorrenteExecute
    end
    object acBuscaConta: TAction
      Caption = 'acBuscaConta'
      ImageIndex = 0
      OnExecute = acBuscaContaExecute
    end
  end
end
