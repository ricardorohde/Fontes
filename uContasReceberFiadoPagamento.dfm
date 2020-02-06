inherited frmContasReceberFiadoPagamento: TfrmContasReceberFiadoPagamento
  Caption = 'Contas a Receber - Fiado - Pagamento'
  ClientHeight = 481
  ClientWidth = 1004
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitLeft = -10
  ExplicitWidth = 1010
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1004
    Height = 432
    ExplicitTop = -3
    ExplicitWidth = 1004
    ExplicitHeight = 432
    FullHeight = 200
    object Label8: TLabel
      Left = 138
      Top = 311
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
    end
    object DBText2: TDBText
      Left = 438
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_desconto'
      DataSource = dsCReceberFiado
    end
    object DBText5: TDBText
      Left = 817
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_pago'
      DataSource = dsCReceberFiado
    end
    object Label6: TLabel
      Left = 438
      Top = 289
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
    end
    object Label7: TLabel
      Left = 627
      Top = 289
      Width = 35
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Juros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 722
      Top = 289
      Width = 32
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 817
      Top = 289
      Width = 73
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 533
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_acrescimo'
      DataSource = dsCReceberFiado
    end
    object Label1: TLabel
      Left = 533
      Top = 289
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
    end
    object DBText6: TDBText
      Left = 343
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_pago_db'
      DataSource = dsCReceberFiado
    end
    object Label2: TLabel
      Left = 343
      Top = 289
      Width = 50
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'J'#225' pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 249
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_valor'
      DataSource = dsCReceberFiado
    end
    object Label3: TLabel
      Left = 249
      Top = 289
      Width = 76
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Valor Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 627
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_juros'
      DataSource = dsCReceberFiado
    end
    object DBText4: TDBText
      Left = 722
      Top = 311
      Width = 65
      Height = 17
      Anchors = [akRight, akBottom]
      DataField = 'total_restante'
      DataSource = dsCReceberFiado
    end
    object Label4: TLabel
      Left = 925
      Top = 289
      Width = 36
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Troco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTroco: TLabel
      Left = 925
      Top = 311
      Width = 44
      Height = 16
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 10
      Width = 986
      Height = 273
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCReceberFiado
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1nota: TcxGridDBColumn
          DataBinding.FieldName = 'nota'
          Options.Editing = False
          Width = 49
        end
        object cxGrid1DBTableView1tipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Width = 80
        end
        object cxGrid1DBTableView1data_vencimento: TcxGridDBColumn
          DataBinding.FieldName = 'data_vencimento'
          Options.Editing = False
          Width = 80
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = 'dias_vencimento'
          Options.Editing = False
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Visible = False
          Width = 142
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGrid1DBTableView1valor_pago_db: TcxGridDBColumn
          DataBinding.FieldName = 'valor_pago_db'
          Options.Editing = False
          Width = 93
        end
        object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'valor_acrescimo'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGrid1DBTableView1data_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'data_pagamento'
          Visible = False
          Width = 184
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'taxa_juros'
          Width = 76
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'valor_juros'
          Options.Editing = False
          Width = 87
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'valor_restante_calc'
          Options.Editing = False
        end
        object cxGrid1DBTableView1valor_pago: TcxGridDBColumn
          DataBinding.FieldName = 'valor_pago'
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGrid1DBTableView1id_creceber: TcxGridDBColumn
          DataBinding.FieldName = 'id_creceber'
          Visible = False
        end
        object cxGrid1DBTableView1id_conta: TcxGridDBColumn
          DataBinding.FieldName = 'id_conta'
          Visible = False
        end
        object cxGrid1DBTableView1id_usuario_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'id_usuario_pagamento'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 9
      Top = 333
      Width = 986
      Height = 92
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
      TabOrder = 1
      DesignSize = (
        986
        92)
      object edValorPagamentoCaixa: TJvValidateEdit
        Left = 84
        Top = 23
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
        OnEnter = edValorPagamentoCaixaEnter
        OnExit = edValorPagamentoCaixaExit
      end
      object rbCaixa: TcxRadioButton
        Left = 13
        Top = 28
        Width = 68
        Height = 17
        Caption = 'Caixa'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object cbFormaPagamento: TJvDBComboBox
        Left = 206
        Top = 23
        Width = 222
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object meObservacao: TMemo
        Left = 434
        Top = 23
        Width = 542
        Height = 56
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        WantReturns = False
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 432
    Width = 1004
    TabStop = True
    ExplicitTop = 432
    ExplicitWidth = 1004
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 885
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
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 766
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
  object qrCReceberFiado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cr.id_creceber, cr.documento, cr.id_cliente, cr.id_conta,' +
        ' cr.id_usuario_pagamento, cr.nota, cr.descricao, cr.valor, coale' +
        'sce(cr.valor_desconto, 0.00) as valor_desconto , '
      
        'coalesce(cr.valor_acrescimo, 0.00) as  valor_acrescimo , cr.data' +
        '_vencimento, cr.data_pagamento, coalesce(sum(crp.valor),0.00) as' +
        ' valor_pago_db,'
      '0.0 as valor_pago,'
      
        'case when em.b_utiliza_controle_cliente and (current_date - data' +
        '_vencimento)>0  then'
      
        '  (cr.valor - coalesce(cr.valor_desconto, 0.0) + coalesce(cr.val' +
        'or_acrescimo,0.0) - coalesce(sum(crp.valor),0.00) ) '
      'else'
      
        '(cr.valor - coalesce(cr.valor_desconto, 0.00) + coalesce(cr.valo' +
        'r_acrescimo, 0.00) + coalesce(cr.valor_juros, 0.00) - coalesce(s' +
        'um(crp.valor),0.00)) end as valor_restante, --valor restante sem' +
        ' juros'
      
        'cast(case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o'#39 +
        ' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39'  when '#39'P'#39' then' +
        ' '#39'PDV'#39' else '#39'Outro'#39' end as varchar(30)) as tipo_venda   ,'
      'case when em.b_utiliza_controle_cliente then'
      
        '  (case when coalesce(cl.taxa_juros, 0.0)=0 then  em.taxa_juros ' +
        'else cl.taxa_juros end)'
      'else'
      '0.0 end as taxa_juros,'
      'cast(case when (current_date - data_vencimento) <0 then 0'
      
        'else current_date - data_vencimento end as integer) as dias_venc' +
        'imento,'
      'case when current_date <= data_vencimento  then 0'
      
        'else extract(year from age(current_date - interval '#39'1 day'#39', data' +
        '_vencimento ))*12 + extract(month from age(current_date - interv' +
        'al '#39'1 day'#39', data_vencimento )) end as meses_vencimento,'
      'cr.valor_juros as valor_juros_db'
      'from creceber cr'
      
        'join venda v on v.ven_001=cr.id_venda and v.emp_001=cr.id_empres' +
        'a'
      'join empresas em on em.emp_001=cr.id_empresa'
      
        'left join creceber_parcela crp on crp.id_creceber=cr.id_creceber' +
        ' and crp.id_empresa= cr.id_empresa'
      
        'left join clientes cl on cl.cli_001=cr.id_cliente and cl.emp_001' +
        '=cr.id_empresa'
      'where cr.id_empresa=:id_empresa'
      
        '-- deixar esta linha para inserir a string de filtro da consulta' +
        ', indice 23'
      'group by '
      
        'cr.id_creceber,cr.documento, cr.id_conta, cr.id_usuario_pagament' +
        'o, cr.nota, cr.descricao, cr.valor, cr.valor_desconto, '
      
        'cr.valor_acrescimo, cr.valor_pago, cr.data_vencimento, cr.data_p' +
        'agamento, v.ven_024, cr.id_cliente, '
      
        'em.b_utiliza_controle_cliente, cl.taxa_juros, em.taxa_juros, val' +
        'or_juros_db'
      'order by cr.data_vencimento, cr.id_creceber')
    Left = 80
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrCReceberFiadoid_creceber: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_creceber'
    end
    object qrCReceberFiadoid_conta: TIntegerField
      FieldName = 'id_conta'
      Required = True
    end
    object qrCReceberFiadoid_usuario_pagamento: TIntegerField
      FieldName = 'id_usuario_pagamento'
    end
    object qrCReceberFiadonota: TIntegerField
      FieldName = 'nota'
    end
    object qrCReceberFiadodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qrCReceberFiadovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object qrCReceberFiadovalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
    object qrCReceberFiadovalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qrCReceberFiadodata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCReceberFiadodata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
    end
    object qrCReceberFiadovalor_pago_db: TFloatField
      FieldName = 'valor_pago_db'
      ReadOnly = True
    end
    object qrCReceberFiadovalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
    object qrCReceberFiadotipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 30
    end
    object qrCReceberFiadovalor_restante: TFloatField
      FieldName = 'valor_restante'
      ReadOnly = True
    end
    object qrCReceberFiadoid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrCReceberFiadodocumento: TWideStringField
      FieldName = 'documento'
    end
    object qrCReceberFiadotaxa_juros: TFloatField
      FieldName = 'taxa_juros'
    end
    object qrCReceberFiadodias_vencimento: TIntegerField
      FieldName = 'dias_vencimento'
      ReadOnly = True
    end
    object qrCReceberFiadovalor_juros_db: TFloatField
      FieldName = 'valor_juros_db'
      Required = True
    end
    object qrCReceberFiadomeses_vencimento: TFloatField
      FieldName = 'meses_vencimento'
    end
  end
  object dspCReceberFiado: TDataSetProvider
    DataSet = qrCReceberFiado
    Left = 176
    Top = 48
  end
  object cdsCReceberFiado: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspCReceberFiado'
    AfterOpen = cdsCReceberFiadoAfterOpen
    AfterPost = cdsCReceberFiadoAfterPost
    OnCalcFields = cdsCReceberFiadoCalcFields
    Left = 272
    Top = 48
    object cdsCReceberFiadoid_creceber: TIntegerField
      FieldName = 'id_creceber'
    end
    object cdsCReceberFiadoid_conta: TIntegerField
      FieldName = 'id_conta'
      Required = True
    end
    object cdsCReceberFiadoid_usuario_pagamento: TIntegerField
      FieldName = 'id_usuario_pagamento'
    end
    object cdsCReceberFiadonota: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'nota'
    end
    object cdsCReceberFiadodescricao: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'descricao'
      Size = 150
    end
    object cdsCReceberFiadovalor: TFloatField
      DisplayLabel = 'Valor Conta'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object cdsCReceberFiadovalor_desconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'valor_desconto'
      OnChange = cdsCReceberFiadovalor_descontoChange
      currency = True
    end
    object cdsCReceberFiadovalor_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'valor_acrescimo'
      OnChange = cdsCReceberFiadovalor_acrescimoChange
      currency = True
    end
    object cdsCReceberFiadodata_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_vencimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCReceberFiadodata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
    end
    object cdsCReceberFiadovalor_pago_db: TFloatField
      DisplayLabel = 'J'#225' Pago'
      FieldName = 'valor_pago_db'
      ReadOnly = True
      currency = True
    end
    object cdsCReceberFiadovalor_pago: TFloatField
      DisplayLabel = 'Pagamento'
      FieldName = 'valor_pago'
      OnChange = cdsCReceberFiadovalor_pagoChange
      currency = True
    end
    object cdsCReceberFiadotipo_venda: TWideStringField
      DisplayLabel = 'Tipo Venda'
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 30
    end
    object cdsCReceberFiadovalor_restante: TFloatField
      FieldName = 'valor_restante'
      ReadOnly = True
    end
    object cdsCReceberFiadoid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object cdsCReceberFiadodocumento: TWideStringField
      FieldName = 'documento'
    end
    object cdsCReceberFiadotaxa_juros: TFloatField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'taxa_juros'
      OnChange = cdsCReceberFiadotaxa_jurosChange
      DisplayFormat = '0.00'
    end
    object cdsCReceberFiadovalor_juros: TFloatField
      DisplayLabel = 'Valor juros'
      FieldKind = fkInternalCalc
      FieldName = 'valor_juros'
      currency = True
      Precision = 2
    end
    object cdsCReceberFiadovalor_pago_ref: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'valor_restante_calc'
      currency = True
    end
    object cdsCReceberFiadodias_vencimento: TIntegerField
      DisplayLabel = 'Dias Atraso'
      FieldName = 'dias_vencimento'
      ReadOnly = True
    end
    object cdsCReceberFiadovalor_juros_db: TFloatField
      FieldName = 'valor_juros_db'
      Required = True
    end
    object cdsCReceberFiadomeses_vencimento: TFloatField
      FieldName = 'meses_vencimento'
    end
    object cdsCReceberFiadoRestante_new: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Restante_new'
      Calculated = True
    end
    object cdsCReceberFiadototal_desconto: TAggregateField
      FieldName = 'total_desconto'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_desconto)'
    end
    object cdsCReceberFiadototal_valor: TAggregateField
      FieldName = 'total_valor'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
    object cdsCReceberFiadototal_pago: TAggregateField
      FieldName = 'total_pago'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_pago)'
    end
    object cdsCReceberFiadototal_acrescimo: TAggregateField
      FieldName = 'total_acrescimo'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_acrescimo)'
    end
    object cdsCReceberFiadotaol_pago_db: TAggregateField
      FieldName = 'total_pago_db'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_pago_db)'
    end
    object cdsCReceberFiadototal_juros: TAggregateField
      FieldName = 'total_juros'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_juros)'
    end
    object cdsCReceberFiadototal_restante: TAggregateField
      FieldName = 'total_restante'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_restante_calc)'
    end
  end
  object dsCReceberFiado: TDataSource
    DataSet = cdsCReceberFiado
    Left = 392
    Top = 64
  end
  object dbCReceberFiado: TfrxDBDataset
    UserName = 'dbCReceberFiado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_creceber=id_creceber'
      'id_conta=id_conta'
      'id_usuario_pagamento=id_usuario_pagamento'
      'nota=nota'
      'descricao=descricao'
      'valor=valor'
      'valor_desconto=valor_desconto'
      'valor_acrescimo=valor_acrescimo'
      'data_vencimento=data_vencimento'
      'data_pagamento=data_pagamento'
      'valor_pago_db=valor_pago_db'
      'valor_pago=valor_pago'
      'tipo_venda=tipo_venda'
      'valor_restante=valor_restante'
      'id_cliente=id_cliente'
      'documento=documento'
      'taxa_juros=taxa_juros'
      'valor_juros=valor_juros'
      'valor_restante_calc=valor_restante_calc'
      'dias_vencimento=dias_vencimento'
      'valor_juros_db=valor_juros_db'
      'meses_vencimento=meses_vencimento'
      'Restante_new=Restante_new'
      'total_desconto=total_desconto'
      'total_valor=total_valor'
      'total_pago=total_pago'
      'total_acrescimo=total_acrescimo'
      'total_pago_db=total_pago_db'
      'total_juros=total_juros'
      'total_restante=total_restante')
    DataSet = cdsCReceberFiado
    BCDToCurrency = False
    Left = 392
    Top = 128
  end
  object dbDadosCliente: TfrxDBDataset
    UserName = 'dbDadosCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome=nome'
      'endereco=endereco'
      'bairro=bairro'
      'cidade_desc=cidade_desc'
      'telefone1=telefone1'
      'cpf=cpf')
    DataSet = qrDadosCliente
    BCDToCurrency = False
    Left = 384
    Top = 196
  end
  object qrDadosCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'cli_002 as nome, '
      
        'cast(concat(cep_004, '#39' '#39', cli_008) as varchar(100)) as endereco,' +
        ' '
      'cep_003 as bairro, '
      'cidade_desc, '
      'cli_012 as telefone1,'
      'cli_004 as cpf '
      'from clientes where cli_001=:id_cliente and emp_001=:id_empresa')
    Left = 287
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrDadosClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object qrDadosClienteendereco: TWideStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 100
    end
    object qrDadosClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qrDadosClientecidade_desc: TWideStringField
      FieldName = 'cidade_desc'
      Size = 100
    end
    object qrDadosClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object qrDadosClientecpf: TWideStringField
      FieldName = 'cpf'
    end
  end
  object repReciboPagamento: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43264.355178391200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.  ')
    Left = 530
    Top = 68
    Datasets = <
      item
        DataSet = dbCReceberFiado
        DataSetName = 'dbCReceberFiado'
      end
      item
        DataSet = dbDadosCliente
        DataSetName = 'dbDadosCliente'
      end
      item
        DataSet = frmMenu.dbEmpresa
        DataSetName = 'dbEmpresa'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sSisDev'
        Value = Null
      end
      item
        Name = 'sFormaPag'
        Value = Null
      end
      item
        Name = 'sDataPagamento'
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
        Height = 126.944960000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 275.905690000000000000
        object Memo1: TfrxMemoView
          Left = 3.338590000000000000
          Top = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '*** RECIBO DE PAGAMENTO ***')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.338590000000000000
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
          Left = 169.637910000000000000
          Top = 48.236240000000000000
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
          Left = 3.338590000000000000
          Top = 48.236240000000000000
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
          Left = 3.338590000000000000
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
          Left = 3.338590000000000000
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
          Left = 33.574830000000000000
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
        object Line8: TfrxLineView
          Left = 3.338590000000000000
          Top = 93.488250000000000000
          Width = 249.448818897638000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 3.401574803149610000
          Top = 120.944960000000000000
          Width = 249.448818897638000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Left = 3.338590000000000000
          Top = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data do pagamento:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 114.724490000000000000
          Top = 98.267780000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sDataPagamento]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 3.338590000000000000
          Top = 30.236240000000000000
          Width = 249.448818897638000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 275.905690000000000000
        DataSet = dbCReceberFiado
        DataSetName = 'dbCReceberFiado'
        RowCount = 0
        object dbCReceberFiadodocumento1: TfrxMemoView
          Left = 3.338590000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'documento'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."documento"]')
        end
        object Memo11: TfrxMemoView
          Left = 71.708720000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'data_vencimento'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."data_vencimento"]')
        end
        object dbCReceberFiadovalor_pago: TfrxMemoView
          Left = 138.519790000000000000
          Top = 3.779530000000000000
          Width = 54.031540000000000000
          Height = 15.118120000000000000
          DataField = 'valor_pago'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          DisplayFormat.FormatStr = 'R$ %.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceberFiado."valor_pago"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 200.000000000000000000
          Top = 4.267470000000000000
          Width = 54.031540000000000000
          Height = 15.118120000000000000
          DataField = 'Restante_new'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          DisplayFormat.FormatStr = 'R$ %.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCReceberFiado."Restante_new"]')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 207.874150000000000000
        Width = 275.905690000000000000
        DataSet = dbDadosCliente
        DataSetName = 'dbDadosCliente'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 3.338590000000000000
          Top = 0.669139999999999000
          Width = 41.574830000000000000
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
        object Memo16: TfrxMemoView
          Left = 61.133890000000000000
          Top = 0.669139999999999000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'nome'
          DataSet = dbDadosCliente
          DataSetName = 'dbDadosCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDadosCliente."nome"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo56: TfrxMemoView
          Left = 3.338590000000000000
          Top = 17.151437500000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 61.133892440000000000
          Top = 17.151437500000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'endereco'
          DataSet = dbDadosCliente
          DataSetName = 'dbDadosCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDadosCliente."endereco"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo58: TfrxMemoView
          Left = 3.338590000000000000
          Top = 33.633735000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 61.133892440000000000
          Top = 33.633735000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'bairro'
          DataSet = dbDadosCliente
          DataSetName = 'dbDadosCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDadosCliente."bairro"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo60: TfrxMemoView
          Left = 3.338590000000000000
          Top = 50.116032500000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 61.133892440000000000
          Top = 50.116032500000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cidade_desc'
          DataSet = dbDadosCliente
          DataSetName = 'dbDadosCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDadosCliente."cidade_desc"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo62: TfrxMemoView
          Left = 3.338590000000000000
          Top = 66.598330000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 61.133892440000000000
          Top = 66.598330000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'telefone1'
          DataSet = dbDadosCliente
          DataSetName = 'dbDadosCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDadosCliente."telefone1"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo64: TfrxMemoView
          Left = 3.338590000000000000
          Top = 82.716450000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 61.133892440000000000
          Top = 82.716450000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cpf'
          DataSet = dbDadosCliente
          DataSetName = 'dbDadosCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDadosCliente."cpf"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 275.905690000000000000
        object Memo8: TfrxMemoView
          Left = 3.338590000000000000
          Top = 4.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 69.708720000000000000
          Top = 4.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 139.519790000000000000
          Top = 4.779530000000000000
          Width = 54.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vl Pago')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.338590000000000000
          Top = 3.779530000000000000
          Width = 249.448818897638000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 3.401574800000000000
          Top = 22.677180000000000000
          Width = 249.448818897638000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 202.582677170000000000
          Top = 4.779527560000000000
          Width = 52.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Restante')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 89.149660000000000000
        Top = 427.086890000000000000
        Width = 275.905690000000000000
        object Line1: TfrxLineView
          Left = 3.338590000000000000
          Top = 5.102350000000000000
          Width = 249.448818897638000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 3.338590000000000000
          Top = 11.338590000000000000
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
        object Line5: TfrxLineView
          Left = 3.338590000000000000
          Top = 50.307050000000000000
          Width = 249.448818900000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 3.338590000000000000
          Top = 53.307050000000000000
          Width = 249.212740000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[sSisDev]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 3.338590000000000000
          Top = 85.661410000000000000
          Width = 249.448818900000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 3.000000000000000000
          Top = 28.913110000000000000
          Width = 62.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTroco]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 151.000000000000000000
          Top = 28.724409450000000000
          Width = 102.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'R$ %.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sTrocoValor]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 151.000000000000000000
          Top = 10.913110000000000000
          Width = 102.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'R$ %.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sFormaValor]')
          ParentFont = False
        end
      end
    end
  end
end
