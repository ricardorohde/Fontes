inherited frmControleContasReceberFiado: TfrmControleContasReceberFiado
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Contas a Receber - Fiado'
  ClientHeight = 474
  ClientWidth = 1024
  Constraints.MinWidth = 1024
  OnShow = FormShow
  ExplicitWidth = 1040
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1024
    Height = 425
    ExplicitWidth = 1024
    ExplicitHeight = 425
    FullHeight = 200
    object lbTotalSelecionado: TLabel
      Left = 719
      Top = 403
      Width = 296
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total selecionado: R$0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGridClientes: TcxGrid
      Left = 8
      Top = 96
      Width = 417
      Height = 326
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxgrdViewClientes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsClientesFiado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxgrdViewClientescli_001: TcxGridDBColumn
          DataBinding.FieldName = 'cli_001'
          Options.AutoWidthSizable = False
          Width = 48
        end
        object cxgrdViewClientescli_002: TcxGridDBColumn
          DataBinding.FieldName = 'cli_002'
          Width = 87
        end
        object cxgrdViewClienteslimite_credito: TcxGridDBColumn
          DataBinding.FieldName = 'limite_credito'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxgrdViewClientessaldo_atual: TcxGridDBColumn
          DataBinding.FieldName = 'saldo_atual'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxgrdViewClientessituacao: TcxGridDBColumn
          DataBinding.FieldName = 'situacao'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              Description = 'Em d'#233'bito'
              ImageIndex = 4
              Value = '1'
            end
            item
              Description = 'Com cr'#233'dito'
              ImageIndex = 3
              Value = '2'
            end
            item
              Description = 'Normal'
              ImageIndex = 5
              Value = '3'
            end>
          Options.AutoWidthSizable = False
          Width = 100
        end
        object cxgrdViewClienteslimite_percent: TcxGridDBColumn
          DataBinding.FieldName = 'limite_percent'
          Visible = False
        end
      end
      object cxGridClientesLevel1: TcxGridLevel
        GridView = cxgrdViewClientes
      end
    end
    object cxGridCreceberFiado: TcxGrid
      Left = 431
      Top = 96
      Width = 584
      Height = 289
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
      object cxgrdViewCreceberFiado: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsCReceberFiado
        DataController.KeyFieldNames = 'id_creceber'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxgrdViewCreceberFiadoSelecao: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = cxgrdViewCreceberFiadoSelecaoPropertiesChange
          Options.Filtering = False
          VisibleForEditForm = bTrue
          Width = 22
        end
        object cxgrdViewCreceberFiadoid_creceber: TcxGridDBColumn
          DataBinding.FieldName = 'id_creceber'
          Visible = False
          Width = 75
        end
        object cxgrdViewCreceberFiadoid_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'id_cliente'
          Visible = False
        end
        object cxgrdViewCreceberFiadodata: TcxGridDBColumn
          DataBinding.FieldName = 'data_vencimento'
          Options.Editing = False
          Width = 73
        end
        object cxgrdViewCreceberFiadoid_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Options.Editing = False
          Width = 72
        end
        object cxgrdViewCreceberFiadovalor_nota: TcxGridDBColumn
          DataBinding.FieldName = 'valor_nota'
          Options.Editing = False
          Width = 78
        end
        object cxgrdViewCreceberFiadovalor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Options.Editing = False
          Width = 83
        end
        object cxgrdViewCreceberFiadovalor_pago: TcxGridDBColumn
          DataBinding.FieldName = 'valor_pago'
          Options.Editing = False
          Width = 76
        end
        object cxgrdViewCreceberFiadoid_situacao: TcxGridDBColumn
          DataBinding.FieldName = 'id_situacao'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              Description = 'PAGO'
              ImageIndex = 5
              Value = 7
            end
            item
              Description = 'CANCELADO'
              ImageIndex = 9
              Value = 2
            end
            item
              Description = 'PENDENTE'
              ImageIndex = 6
              Value = 4
            end>
          Options.Editing = False
          Width = 97
        end
        object cxgrdViewCreceberFiadotipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Options.Editing = False
          Width = 81
        end
      end
      object cxGridCreceberFiadoLevel1: TcxGridLevel
        GridView = cxgrdViewCreceberFiado
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 7
      Top = 8
      Width = 1008
      Height = 81
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        1008
        81)
      object Label3: TLabel
        Left = 597
        Top = 8
        Width = 119
        Height = 16
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Situa'#231#227'o do saldo:'
        Visible = False
      end
      object Label4: TLabel
        Left = 11
        Top = 18
        Width = 49
        Height = 16
        Caption = 'Cliente:'
      end
      object Label2: TLabel
        Left = 197
        Top = 48
        Width = 34
        Height = 16
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 368
        Top = 48
        Width = 20
        Height = 16
        Caption = 'Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 534
        Top = 48
        Width = 122
        Height = 16
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Situa'#231#227'o da conta:'
      end
      object Label7: TLabel
        Left = 11
        Top = 48
        Width = 36
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btPesquisar: TAdvGlowButton
        AlignWithMargins = True
        Left = 871
        Top = 17
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
      object cbFiltroSituacao: TComboBox
        Left = 712
        Top = 0
        Width = 145
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        Items.Strings = (
          'Em d'#233'bito'
          'Com cr'#233'dito'
          'Todos')
      end
      object edFiltroNomeCliente: TEdit
        Left = 66
        Top = 17
        Width = 791
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyDown = edFiltroNomeClienteKeyDown
      end
      object cbFiltroSituacaoConta: TComboBox
        Left = 662
        Top = 45
        Width = 195
        Height = 27
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Items.Strings = (
          'Todos'
          'Pendente'
          'Pago'
          'Cancelado')
      end
      object cbFiltroTipoData: TComboBox
        Left = 66
        Top = 45
        Width = 125
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Items.Strings = (
          'Lan'#231'amento'
          'Vencimento'
          'Pagamento')
      end
    end
    object dtpDataInicial: TcxDateEdit
      Left = 241
      Top = 53
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 121
    end
    object dtpDataFinal: TcxDateEdit
      Left = 399
      Top = 53
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 121
    end
    object btTodas: TAdvGlowButton
      AlignWithMargins = True
      Left = 431
      Top = 390
      Width = 140
      Height = 28
      Margins.Left = 0
      Caption = 'Selecionar Pendentes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btTodasClick
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
    object btNenhuma: TAdvGlowButton
      AlignWithMargins = True
      Left = 578
      Top = 390
      Width = 140
      Height = 28
      Margins.Left = 0
      Caption = 'Desmarcar Todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btNenhumaClick
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
  inherited pnBotoes: TFlowPanel
    Top = 425
    Width = 1024
    ExplicitTop = 425
    ExplicitWidth = 1024
    object btPagamento: TAdvGlowButton
      AlignWithMargins = True
      Left = 906
      Top = 3
      Width = 115
      Height = 41
      Margins.Left = 0
      Caption = 'Pagamento'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btPagamentoClick
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
    object btRelatorio: TAdvGlowButton
      AlignWithMargins = True
      Left = 704
      Top = 3
      Width = 199
      Height = 41
      Margins.Left = 0
      Caption = 'Relat'#243'rio de Pagamentos'
      ImageIndex = 14
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btRelatorioClick
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
    object btPendentes: TAdvGlowButton
      AlignWithMargins = True
      Left = 502
      Top = 3
      Width = 199
      Height = 41
      Margins.Left = 0
      Caption = 'Pagamentos Pendentes'
      ImageIndex = 14
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btPendentesClick
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
    object btIncluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 384
      Top = 3
      Width = 115
      Height = 41
      Margins.Left = 0
      Caption = 'Incluir'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btIncluirClick
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
    object btReimprimircupom: TAdvGlowButton
      AlignWithMargins = True
      Left = 262
      Top = 3
      Width = 119
      Height = 41
      Margins.Left = 0
      Caption = 'Reimprimir'
      ImageIndex = 54
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btReimprimircupomClick
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
  object qrClientesFiado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cli_001,coalesce(limite_credito, 0.00) as limite_credito,' +
        '  cli_002, coalesce(saldo_atual, 0.00) as saldo_atual, '
      'case when coalesce(saldo_atual, 0.00) <0 then 1'
      '     when coalesce(saldo_atual, 0.00) >0 then 2'
      '     else 3 end as situacao,'
      'case when saldo_atual<0 then'
      
        '     round((coalesce(saldo_atual,0.00) / limite_credito/0.01)*-1' +
        ',2 ) '
      'else 0.00 end as limite_percent'
      'from clientes'
      'where emp_001 = :id_empresa')
    AfterScroll = qrClientesFiadoAfterScroll
    Left = 224
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrClientesFiadocli_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cli_001'
      Required = True
    end
    object qrClientesFiadocli_002: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cli_002'
      Required = True
      Size = 80
    end
    object qrClientesFiadolimite_credito: TFloatField
      DisplayLabel = 'Limite'
      FieldName = 'limite_credito'
      ReadOnly = True
      currency = True
    end
    object qrClientesFiadosaldo_atual: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo_atual'
      ReadOnly = True
      currency = True
    end
    object qrClientesFiadosituacao: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      ReadOnly = True
    end
    object qrClientesFiadolimite_percent: TFloatField
      FieldName = 'limite_percent'
      ReadOnly = True
    end
  end
  object dsClientesFiado: TDataSource
    DataSet = qrClientesFiado
    Left = 312
    Top = 192
  end
  object qrCReceberFiado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cr.descricao, cr.data_pagamento, cr.id_creceber, cr.id_cl' +
        'iente,  '
      
        'cr.data, cr.id_venda, cr.valor_nota, cr.valor, cr.valor_pago, cr' +
        '.valor_desconto, cr.valor_acrescimo, cr.valor_juros, '
      'cr.id_situacao , cr.id_empresa, cr.data_vencimento,'
      
        'c.cli_002,c.cep_004,c.cep_003,c.cep_002,c.cli_012,c.cidade_desc,' +
        'cr.documento,c.cli_004,'
      
        'case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o'#39' when' +
        ' '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39'  when '#39'P'#39' then '#39'PDV' +
        #39' else '#39'Outro'#39' end as tipo_venda'
      'from creceber cr'
      
        'join venda v on v.ven_001 = cr.id_venda and v.emp_001=cr.id_empr' +
        'esa'
      'join clientes c on  cr.id_cliente=c.cli_001'
      'where cr.id_empresa =:id_empresa '
      ''
      ''
      '')
    MasterSource = dsClientesFiado
    MasterFields = 'cli_001'
    DetailFields = 'id_cliente'
    AfterOpen = qrCReceberFiadoAfterOpen
    Left = 224
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'cli_001'
        ParamType = ptInput
        Value = 2
      end>
    object qrCReceberFiadoid_creceber: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_creceber'
    end
    object qrCReceberFiadoid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrCReceberFiadodata: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrCReceberFiadoid_venda: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'id_venda'
    end
    object qrCReceberFiadovalor_nota: TFloatField
      DisplayLabel = 'Valor venda'
      FieldName = 'valor_nota'
      Required = True
      currency = True
    end
    object qrCReceberFiadovalor: TFloatField
      DisplayLabel = 'Valor Parcela'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrCReceberFiadovalor_pago: TFloatField
      DisplayLabel = 'Pago'
      FieldName = 'valor_pago'
      currency = True
    end
    object qrCReceberFiadoid_situacao: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'id_situacao'
    end
    object qrCReceberFiadotipo_venda: TWideMemoField
      DisplayLabel = 'Tipo venda'
      FieldName = 'tipo_venda'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrCReceberFiadoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCReceberFiadodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object qrCReceberFiadodata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrCReceberFiadodata_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrCReceberFiadovalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      currency = True
    end
    object qrCReceberFiadovalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
      currency = True
    end
    object qrCReceberFiadovalor_juros: TFloatField
      FieldName = 'valor_juros'
      Required = True
      currency = True
    end
    object qrCReceberFiadocli_002: TWideStringField
      FieldName = 'cli_002'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object qrCReceberFiadocep_004: TWideStringField
      FieldName = 'cep_004'
      ReadOnly = True
      Size = 125
    end
    object qrCReceberFiadocep_003: TWideStringField
      FieldName = 'cep_003'
      ReadOnly = True
      Size = 50
    end
    object qrCReceberFiadocep_002: TWideStringField
      FieldName = 'cep_002'
      ReadOnly = True
      Size = 9
    end
    object qrCReceberFiadocli_012: TWideStringField
      FieldName = 'cli_012'
      ReadOnly = True
    end
    object qrCReceberFiadocidade_desc: TWideStringField
      FieldName = 'cidade_desc'
      ReadOnly = True
      Size = 100
    end
    object qrCReceberFiadodocumento: TWideStringField
      FieldName = 'documento'
    end
    object qrCReceberFiadocli_004: TWideStringField
      FieldName = 'cli_004'
      ReadOnly = True
    end
  end
  object dsCReceberFiado: TDataSource
    DataSet = qrCReceberFiado
    Left = 312
    Top = 264
  end
  object repCReceberFiado: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42867.631553159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 738
    Top = 167
    Datasets = <
      item
        DataSet = dbClientesFiado
        DataSetName = 'dbClientesFiado'
      end
      item
        DataSet = dbCreceber_parcela
        DataSetName = 'dbCreceber_parcela'
      end
      item
        DataSet = dbCReceberFiado
        DataSetName = 'dbCReceberFiado'
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
            'RELAT'#211'RIO DE CONTAS A RECEBER - PAGAMENTOS')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 740.787401574802900000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 359.055350000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 4.779530000000022000
          Width = 740.787401574802900000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 6.779530000000023000
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
          Top = 6.779530000000023000
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
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 56.692950000000010000
        Top = 117.165430000000000000
        Width = 748.346940000000000000
        DataSet = dbClientesFiado
        DataSetName = 'dbClientesFiado'
        FooterAfterEach = True
        RowCount = 0
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 28.692950000000010000
          Width = 740.787401574802900000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 100.165430000000000000
          Top = 32.826839999999990000
          Width = 83.149660000000000000
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
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 32.826839999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object dbClientesFiadocli_002: TfrxMemoView
          Left = 52.913420000000000000
          Top = 4.559060000000003000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'cli_002'
          DataSet = dbClientesFiado
          DataSetName = 'dbClientesFiado'
          Memo.UTF8W = (
            '[dbClientesFiado."cli_002"]')
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 4.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object dbClientesFiadolimite_credito: TfrxMemoView
          Left = 529.134200000000000000
          Top = 4.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'limite_credito'
          DataSet = dbClientesFiado
          DataSetName = 'dbClientesFiado'
          Memo.UTF8W = (
            '[dbClientesFiado."limite_credito"]')
        end
        object dbClientesFiadosaldo_atual: TfrxMemoView
          Left = 661.417750000000000000
          Top = 4.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'saldo_atual'
          DataSet = dbClientesFiado
          DataSetName = 'dbClientesFiado'
          Memo.UTF8W = (
            '[dbClientesFiado."saldo_atual"]')
        end
        object Memo8: TfrxMemoView
          Left = 415.748300000000000000
          Top = 4.559060000000003000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Limite de cr'#233'dito:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 612.283860000000000000
          Top = 4.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Saldo:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 516.811380000000000000
          Top = 33.015769999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor conta')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 666.417750000000000000
          Top = 33.015769999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor pago')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 32.472480000000010000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Top = 33.015769999999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data pagamento')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 590.386210000000000000
          Top = 33.015769999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 748.346940000000000000
        DataSet = dbCReceberFiado
        DataSetName = 'dbCReceberFiado'
        RowCount = 0
        object dbCReceberFiadodata: TfrxMemoView
          Left = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."data"]')
        end
        object dbCReceberFiadoid_venda: TfrxMemoView
          Left = 102.047310000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."id_venda"] - [dbCReceberFiado."tipo_venda"]')
          Formats = <
            item
            end
            item
            end>
        end
        object dbCReceberFiadovalor: TfrxMemoView
          Left = 516.811380000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."valor"]')
        end
        object dbCReceberFiadovalor_pago: TfrxMemoView
          Left = 666.417750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'valor_pago'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."valor_pago"]')
        end
        object dbCReceberFiadodescricao: TfrxMemoView
          Left = 188.976500000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'descricao'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."descricao"]')
        end
        object dbCReceberFiadodata_pagamento: TfrxMemoView
          Left = 415.748300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'data_pagamento'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."data_pagamento"]')
        end
        object Line6: TfrxLineView
          Left = 3.779530000000000000
          Width = 740.787401570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 589.606680000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor_juros'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."valor_juros"]')
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 748.346940000000000000
        DataSet = dbCreceber_parcela
        DataSetName = 'dbCreceber_parcela'
        RowCount = 0
        object dbCreceber_parcelaparcela: TfrxMemoView
          Left = 374.173469999999800000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'parcela'
          DataSet = dbCreceber_parcela
          DataSetName = 'dbCreceber_parcela'
          Memo.UTF8W = (
            '[dbCreceber_parcela."parcela"]')
        end
        object dbCreceber_parcelavalor: TfrxMemoView
          Left = 666.417750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = dbCreceber_parcela
          DataSetName = 'dbCreceber_parcela'
          Memo.UTF8W = (
            '[dbCreceber_parcela."valor"]')
        end
        object dbCreceber_parceladata: TfrxMemoView
          Left = 415.748299999999900000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'data'
          DataSet = dbCreceber_parcela
          DataSetName = 'dbCreceber_parcela'
          Memo.UTF8W = (
            '[dbCreceber_parcela."data"]')
        end
        object Memo10: TfrxMemoView
          Left = 279.685219999999800000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Parcela:')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 196.535560000000000000
        Width = 748.346940000000000000
        object Line7: TfrxLineView
          Left = 3.779530000000000000
          Top = 4.779529999999994000
          Width = 740.787401574802900000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
    end
  end
  object dbCReceberFiado: TfrxDBDataset
    UserName = 'dbCReceberFiado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_creceber=id_creceber'
      'id_cliente=id_cliente'
      'data=data'
      'id_venda=id_venda'
      'valor_nota=valor_nota'
      'valor=valor'
      'valor_pago=valor_pago'
      'id_situacao=id_situacao'
      'tipo_venda=tipo_venda'
      'id_empresa=id_empresa'
      'descricao=descricao'
      'data_pagamento=data_pagamento'
      'data_vencimento=data_vencimento'
      'valor_desconto=valor_desconto'
      'valor_acrescimo=valor_acrescimo'
      'valor_juros=valor_juros'
      'cli_002=cli_002'
      'cep_004=cep_004'
      'cep_003=cep_003'
      'cep_002=cep_002'
      'cli_012=cli_012'
      'cidade_desc=cidade_desc'
      'documento=documento'
      'cli_004=cli_004')
    OpenDataSource = False
    DataSet = qrCReceberFiado
    BCDToCurrency = False
    Left = 855
    Top = 168
  end
  object qrCreceber_parcela: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select id_creceber, id_empresa, parcela, valor, data '
      'from creceber_parcela crp'
      'where id_situacao=4')
    MasterSource = dsCReceberFiado
    MasterFields = 'id_creceber;id_empresa'
    DetailFields = 'id_creceber;id_empresa'
    Left = 480
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_creceber'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = nil
      end>
    object qrCreceber_parcelaid_creceber: TIntegerField
      FieldName = 'id_creceber'
      Required = True
    end
    object qrCreceber_parcelaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCreceber_parcelaparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object qrCreceber_parcelavalor: TFloatField
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrCreceber_parceladata: TDateTimeField
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dbCreceber_parcela: TfrxDBDataset
    UserName = 'dbCreceber_parcela'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_creceber=id_creceber'
      'id_empresa=id_empresa'
      'parcela=parcela'
      'valor=valor'
      'data=data')
    OpenDataSource = False
    DataSet = qrCreceber_parcela
    BCDToCurrency = False
    Left = 855
    Top = 224
  end
  object dbClientesFiado: TfrxDBDataset
    UserName = 'dbClientesFiado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cli_001=cli_001'
      'cli_002=cli_002'
      'limite_credito=limite_credito'
      'saldo_atual=saldo_atual'
      'situacao=situacao'
      'limite_percent=limite_percent')
    OpenDataSource = False
    DataSet = qrClientesFiado
    BCDToCurrency = False
    Left = 855
    Top = 280
  end
  object qrReimprimir: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select distinct v.ven_001 as id_venda, v.emp_001 as id_empresa ,' +
        ' '
      'e.enc_002 as data_emissao, e.enc_002  as hora_emissao,'
      
        'v.numero_cupom, v.ven_009 as valor, (v.sit_001=2) as venda_cance' +
        'lada,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' the' +
        'n '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda,'
      'c.cli_002 as nome_cliente,'
      'v.Ven_038 as chave_acesso,'
      'v.Ven_034 as chave_cancelamento,'
      'v.ven_024,'
      'cx.id_situacao as situacao_caixa,'
      'v.tipofiscal,'
      
        'cast(case v.ven_024 when '#39'M'#39' then m.mes_002 when '#39'C'#39' then concat' +
        '('#39'COMANDA'#39', '#39' '#39',  v.ven_026 ) else '#39#39' end as varchar(40)) as des' +
        'cricao_mesa_comanda'
      'from venda v'
      
        'join caixaitem ci on v.ven_001 = ci.id_venda and v.emp_001=ci.id' +
        '_empresa'
      
        'join caixa cx on cx.id_caixa=ci.id_caixa and cx.id_empresa=ci.id' +
        '_empresa '
      
        'join encerravenda e on e.ven_001=v.ven_001 and e.emp_001=v.emp_0' +
        '01'
      
        'left join  clientes c on c.cli_001 = v.cli_001 and c.emp_001=v.e' +
        'mp_001'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.Ven_004 is not null and v.tipofiscal is null '
      'and v.ven_001=:ven_001 and v.emp_001=:emp_001'
      'order by v.ven_001')
    Left = 96
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ven_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp_001'
        Value = nil
      end>
    object qrReimprimirid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrReimprimirid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrReimprimirdata_emissao: TDateTimeField
      FieldName = 'data_emissao'
      ReadOnly = True
    end
    object qrReimprimirhora_emissao: TDateTimeField
      FieldName = 'hora_emissao'
      ReadOnly = True
    end
    object qrReimprimirnumero_cupom: TIntegerField
      FieldName = 'numero_cupom'
    end
    object qrReimprimirvalor: TFloatField
      FieldName = 'valor'
    end
    object qrReimprimirvenda_cancelada: TBooleanField
      FieldName = 'venda_cancelada'
      ReadOnly = True
    end
    object qrReimprimirtipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrReimprimirnome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object qrReimprimirchave_acesso: TWideStringField
      FieldName = 'chave_acesso'
      Size = 50
    end
    object qrReimprimirchave_cancelamento: TWideStringField
      FieldName = 'chave_cancelamento'
      Size = 50
    end
    object qrReimprimirven_024: TWideStringField
      FieldName = 'ven_024'
      Size = 1
    end
    object qrReimprimirsituacao_caixa: TIntegerField
      FieldName = 'situacao_caixa'
      ReadOnly = True
    end
    object qrReimprimirtipofiscal: TWideStringField
      FieldName = 'tipofiscal'
      Size = 10
    end
    object qrReimprimirdescricao_mesa_comanda: TWideStringField
      FieldName = 'descricao_mesa_comanda'
      ReadOnly = True
      Size = 40
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
    ReportOptions.LastChange = 42737.630242233800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 82
    Top = 228
    Datasets = <
      item
        DataSet = dbCReceberFiado
        DataSetName = 'dbCReceberFiado'
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
        Value = ''
      end
      item
        Name = 'sDataPagamento'
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
        Height = 126.944960000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 275.905690000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
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
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 94.488250000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 120.944960000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
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
        object Line7: TfrxLineView
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbCReceberFiadodata_pagamento: TfrxMemoView
          Left = 128.000000000000000000
          Top = 99.102350000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'data_pagamento'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCReceberFiado."data_pagamento"]')
          ParentFont = False
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
          Left = 11.338590000000000000
          Top = 2.779530000000022000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'documento'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."documento"]')
        end
        object Memo11: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000022000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'data_vencimento'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Memo.UTF8W = (
            '[dbCReceberFiado."data_vencimento"]')
        end
        object dbCReceberFiadovalor_pago: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'valor_pago'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
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
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 207.874150000000000000
        Width = 275.905690000000000000
        DataSet = dbCReceberFiado
        DataSetName = 'dbCReceberFiado'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.669139999999998700
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
        object Memo56: TfrxMemoView
          Left = 11.338590000000000000
          Top = 17.151437499999990000
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
          Left = 69.133892440000000000
          Top = 17.151437499999990000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cep_004'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceberFiado."cep_004"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
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
          Left = 69.133892440000000000
          Top = 33.633735000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cep_003'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceberFiado."cep_003"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo60: TfrxMemoView
          Left = 11.338590000000000000
          Top = 50.116032500000020000
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
          Left = 69.133892440000000000
          Top = 50.116032500000020000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cidade_desc'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceberFiado."cidade_desc"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo62: TfrxMemoView
          Left = 11.338590000000000000
          Top = 66.598329999999970000
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
          Left = 69.133892440000000000
          Top = 66.598329999999970000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cli_012'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceberFiado."cli_012"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo64: TfrxMemoView
          Left = 11.338590000000000000
          Top = 82.716450000000010000
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
          Left = 70.133892440000000000
          Top = 83.716450000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cli_004'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceberFiado."cli_004"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo13: TfrxMemoView
          Left = 64.000000000000000000
          Top = 1.125850000000014000
          Width = 187.858380000000000000
          Height = 15.118120000000000000
          DataField = 'cli_002'
          DataSet = dbCReceberFiado
          DataSetName = 'dbCReceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCReceberFiado."cli_002"]')
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
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 75.590600000000000000
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
          Left = 90.708720000000000000
          Top = 3.779530000000022000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dt. Venc')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 162.519790000000000000
          Top = 2.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor pago')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 22.677180000000020000
          Width = 230.551330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 427.086890000000000000
        Width = 275.905690000000000000
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 12.307050000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 11.338590000000000000
          Top = 19.307050000000000000
          Width = 226.771800000000000000
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
      end
    end
  end
  object qrPend_Parcelas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select cr.documento, cr.id_creceber, cr.id_cliente,  '
      'cr.data, cr.valor_nota, cr.valor, cr.valor_pago,'
      'cr.data_vencimento, cr.nota, cr.id_empresa'
      'from creceber cr'
      'where cr.id_empresa = :emp'
      'and cr.id_situacao = 4'
      'and cr.id_cliente = :cliente'
      'and cr.id_venda > 0'
      ''
      'union all'
      ''
      'select cr.documento, cr.id_creceber, cr.id_cliente,  '
      'cr.data, cr.valor_nota, cr.valor, cr.valor_pago, '
      'cr.data_vencimento, cr.nota, cr.id_empresa'
      'from creceber cr'
      'where cr.id_empresa = :emp'
      'and cr.id_situacao = 4'
      'and cr.id_cliente = :cliente'
      'and cr.id_venda is null')
    IndexFieldNames = 'nota;data_vencimento'
    Left = 464
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        Value = nil
      end>
    object qrPend_Parcelasdocumento: TWideStringField
      FieldName = 'documento'
      ReadOnly = True
    end
    object qrPend_Parcelasid_creceber: TIntegerField
      FieldName = 'id_creceber'
      ReadOnly = True
    end
    object qrPend_Parcelasid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ReadOnly = True
    end
    object qrPend_Parcelasdata: TDateTimeField
      FieldName = 'data'
      ReadOnly = True
    end
    object qrPend_Parcelasvalor_nota: TFloatField
      FieldName = 'valor_nota'
      ReadOnly = True
    end
    object qrPend_Parcelasvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object qrPend_Parcelasvalor_pago: TFloatField
      FieldName = 'valor_pago'
      ReadOnly = True
    end
    object qrPend_Parcelasdata_vencimento: TDateField
      FieldName = 'data_vencimento'
      ReadOnly = True
    end
    object qrPend_Parcelasnota: TIntegerField
      FieldName = 'nota'
      ReadOnly = True
    end
    object qrPend_Parcelasid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
  end
  object qrPend_Produtos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select distinct cr.nota, vi.ite_002 as quantidade, vi.ite_003 as' +
        ' valor_unitario, vi.ite_005 as valor_total, vi.mat_001 as id_mat' +
        'erial, m.mat_003, m.mat_004, vi.ite_001 as item, cr.id_empresa'
      'from creceber cr'
      
        'left join vendaitem vi on vi.ven_001 = cr.id_venda and vi.emp_00' +
        '1 = cr.id_empresa'
      'left join materiais m on m.mat_001 = vi.mat_001'
      'where cr.id_empresa = :emp'
      'and cr.id_situacao = 4'
      'and cr.id_cliente = :cliente'
      'and cr.id_venda > 0'
      ''
      'union'
      ''
      
        'select distinct cr.nota, vi.quantidade, vi.valor_unitario, vi.va' +
        'lor_total, vi.id_material, m.mat_003, m.mat_004, vi.item, cr.id_' +
        'empresa '
      'from creceber cr'
      
        'left join nota_saida ns on ns.numero = cr.nota and ns.id_empresa' +
        ' = cr.id_empresa'
      
        'left join nota_saida_item vi on vi.id_nota_saida = ns.id_nota_sa' +
        'ida and vi.id_empresa = ns.id_empresa'
      'left join materiais m on m.mat_001 = vi.id_material'
      'where cr.id_empresa = :emp'
      'and cr.id_situacao = 4'
      'and cr.id_cliente = :cliente'
      'and cr.id_venda is null')
    Left = 464
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_creceber'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrPend_Produtosnota: TIntegerField
      FieldName = 'nota'
      ReadOnly = True
    end
    object qrPend_Produtosquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object qrPend_Produtosvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      ReadOnly = True
    end
    object qrPend_Produtosvalor_total: TFloatField
      FieldName = 'valor_total'
      ReadOnly = True
    end
    object qrPend_Produtosid_material: TIntegerField
      FieldName = 'id_material'
      ReadOnly = True
    end
    object qrPend_Produtosmat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Size = 100
    end
    object qrPend_Produtosmat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrPend_Produtositem: TIntegerField
      FieldName = 'item'
      ReadOnly = True
    end
    object qrPend_Produtosid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
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
    Left = 575
    Top = 293
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
end
