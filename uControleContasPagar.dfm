inherited frmControleContasPagar: TfrmControleContasPagar
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Contas a Pagar'
  ClientHeight = 517
  ClientWidth = 882
  Constraints.MinHeight = 500
  Constraints.MinWidth = 850
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 898
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 882
    Height = 468
    ExplicitWidth = 876
    ExplicitHeight = 468
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 7
      Top = 8
      Width = 868
      Height = 113
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
      ExplicitWidth = 862
      DesignSize = (
        868
        113)
      object Label2: TLabel
        Left = 494
        Top = 7
        Width = 69
        Height = 16
        Caption = 'Filtrar por:'
      end
      object Label3: TLabel
        Left = 736
        Top = 7
        Width = 61
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Situa'#231#227'o:'
        ExplicitLeft = 731
      end
      object Label4: TLabel
        Left = 11
        Top = 59
        Width = 78
        Height = 16
        Alignment = taRightJustify
        Caption = 'Fornecedor:'
      end
      object Label5: TLabel
        Left = 494
        Top = 59
        Width = 43
        Height = 16
        Alignment = taRightJustify
        Caption = 'Conta:'
      end
      object lbFornecedor: TLabel
        Left = 111
        Top = 84
        Width = 73
        Height = 16
        Caption = 'Fornecedor'
      end
      object lbConta: TLabel
        Left = 566
        Top = 84
        Width = 38
        Height = 16
        Caption = 'Conta'
      end
      object dtpDataInicial: TDateTimePicker
        Left = 272
        Top = 29
        Width = 105
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
      object dtpDataFinal: TDateTimePicker
        Left = 383
        Top = 29
        Width = 105
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object btPesquisar: TAdvGlowButton
        AlignWithMargins = True
        Left = 741
        Top = 59
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
        TabOrder = 10
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
      object cbFiltroData: TComboBox
        Left = 172
        Top = 29
        Width = 94
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Items.Strings = (
          'Lan'#231'amento'
          'Vencimento'
          'Pagamento'
          'Cancelamento')
      end
      object cbFiltroCampo: TComboBox
        Left = 494
        Top = 29
        Width = 91
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Items.Strings = (
          'Nota'
          'Documento'
          'Hist'#243'rico'
          'Conta Avulsa'
          'Conta Fixa')
      end
      object edFiltroCampo: TEdit
        Left = 591
        Top = 30
        Width = 139
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ExplicitWidth = 104
      end
      object cbFiltroSituacao: TComboBox
        Left = 736
        Top = 29
        Width = 124
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Items.Strings = (
          'N'#227'o Pagas'
          'Vencidas'
          'Pagas'
          'Canceladas'
          'Todas')
      end
      object edCodFornecedor: TcxButtonEdit
        Left = 11
        Top = 81
        Properties.Buttons = <
          item
            Action = acBuscaFornecedor
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 8
        OnExit = edCodFornecedorExit
        OnKeyDown = edCodFornecedorKeyDown
        Width = 94
      end
      object edCodConta: TcxButtonEdit
        Left = 494
        Top = 81
        Properties.Buttons = <
          item
            Action = acBuscaConta
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 9
        OnExit = edCodContaExit
        OnKeyDown = edCodContaKeyDown
        Width = 66
      end
      object rbTodasDatas: TcxRadioButton
        Left = 11
        Top = 10
        Width = 113
        Height = 17
        Caption = 'Todas as datas'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbIntervaloDatasClick
      end
      object rbIntervaloDatas: TcxRadioButton
        Left = 11
        Top = 33
        Width = 158
        Height = 17
        Caption = 'No intervalo de datas'
        TabOrder = 1
        OnClick = rbIntervaloDatasClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 7
      Top = 127
      Width = 868
      Height = 285
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      ExplicitWidth = 862
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsCPagar
        DataController.KeyFieldNames = 'id_cpagar'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Selecao: TcxGridDBColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Options.Filtering = False
          VisibleForEditForm = bTrue
          Width = 24
        end
        object cxGrid1DBTableView1id_cpagar: TcxGridDBColumn
          DataBinding.FieldName = 'id_cpagar'
          Visible = False
        end
        object cxGrid1DBTableView1data_vencimento: TcxGridDBColumn
          DataBinding.FieldName = 'data_vencimento'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 88
        end
        object cxGrid1DBTableView1nome_fornecedor: TcxGridDBColumn
          DataBinding.FieldName = 'nome_fornecedor'
          Options.Editing = False
          Width = 141
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Options.Editing = False
          Width = 125
        end
        object cxGrid1DBTableView1conta_desc: TcxGridDBColumn
          DataBinding.FieldName = 'conta_desc'
          Options.Editing = False
          Width = 112
        end
        object cxGrid1DBTableView1nota: TcxGridDBColumn
          Caption = 'Nota'
          DataBinding.FieldName = 'nota'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 65
        end
        object cxGrid1DBTableView1documento: TcxGridDBColumn
          DataBinding.FieldName = 'documento'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1especie_desc: TcxGridDBColumn
          DataBinding.FieldName = 'especie_desc'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 87
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Options.Editing = False
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'cod_status_pag'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.DefaultImageIndex = 6
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              Description = 'PAGO'
              ImageIndex = 5
              Value = 0
            end
            item
              Description = 'VENCIDO'
              ImageIndex = 7
              Value = 1
            end
            item
              Description = 'VENCE HOJE'
              ImageIndex = 8
              Value = 2
            end
            item
              Description = 'PENDENTE'
              ImageIndex = 6
              Value = 3
            end
            item
              Description = 'CANCELADO'
              ImageIndex = 9
              Value = '4'
            end>
          Options.Editing = False
          Options.Filtering = False
          Options.AutoWidthSizable = False
          Width = 95
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 7
      Top = 418
      Width = 868
      Height = 44
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 862
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 113
        Height = 16
        Alignment = taRightJustify
        Caption = 'Data Pagamento:'
      end
      object DBText1: TDBText
        Left = 122
        Top = 3
        Width = 4
        Height = 16
        AutoSize = True
        DataField = 'data_pagamento'
        DataSource = dsCPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 3
        Top = 25
        Width = 75
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor Pago:'
      end
      object DBText2: TDBText
        Left = 84
        Top = 25
        Width = 45
        Height = 16
        AutoSize = True
        DataField = 'valor_pago'
        DataSource = dsCPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 194
        Top = 3
        Width = 87
        Height = 16
        Caption = 'Respons'#225'vel:'
      end
      object DBText3: TDBText
        Left = 287
        Top = 3
        Width = 4
        Height = 16
        AutoSize = True
        DataField = 'usuario_pagamento'
        DataSource = dsCPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 462
        Top = 3
        Width = 131
        Height = 16
        Caption = 'Data Cancelamento:'
      end
      object DBText4: TDBText
        Left = 599
        Top = 3
        Width = 4
        Height = 16
        AutoSize = True
        DataField = 'data_cancelamento'
        DataSource = dsCPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 671
        Top = 3
        Width = 87
        Height = 16
        Caption = 'Respons'#225'vel:'
      end
      object DBText6: TDBText
        Left = 764
        Top = 3
        Width = 4
        Height = 16
        AutoSize = True
        DataField = 'usuario_cancelamento'
        DataSource = dsCPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 468
    Width = 882
    ExplicitTop = 468
    ExplicitWidth = 876
    object btSair: TAdvGlowButton
      AlignWithMargins = True
      Left = 764
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
    object btIncluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 646
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
      TabOrder = 1
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 528
      Top = 3
      Width = 115
      Height = 41
      Margins.Left = 0
      Caption = 'Alterar'
      ImageIndex = 15
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btEditarClick
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
    object btExcluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 410
      Top = 3
      Width = 115
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
      TabOrder = 3
      OnClick = btExcluirClick
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
    object btPagamento: TAdvGlowButton
      AlignWithMargins = True
      Left = 292
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
      TabOrder = 4
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
    object btEstorno: TAdvGlowButton
      AlignWithMargins = True
      Left = 174
      Top = 3
      Width = 115
      Height = 41
      Margins.Left = 0
      Caption = 'Estono'
      ImageIndex = 37
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btEstornoClick
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
      Left = 56
      Top = 3
      Width = 115
      Height = 41
      Margins.Left = 0
      Caption = 'Relat'#243'rio'
      ImageIndex = 14
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
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
  end
  object qrCPagar: TUniQuery
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
      '  cp.id_movimentocc,'
      '  cp.conta_fixa'
      'from cpagar cp'
      
        'join fornecedor f on f.id_fornecedor= cp.id_fornecedor and f.id_' +
        'empresa=cp.id_empresa'
      
        'join conta c on c.id_conta= cp.id_conta and c.id_empresa=cp.id_e' +
        'mpresa'
      'left join usuarios ui on ui.usu_001=cp.id_usuario'
      'left join usuarios up on up.usu_001=cp.id_usuario_pagamento'
      'left join usuarios uc on uc.usu_001=cp.id_usuario_cancelamento'
      'where cp.id_empresa = :id_empresa')
    Active = True
    Left = 264
    Top = 72
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_empresa'
        Value = 1
      end>
    object qrCPagarid_cpagar: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_cpagar'
      Visible = False
    end
    object qrCPagardescricao: TWideStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'descricao'
      Size = 150
    end
    object qrCPagarnota: TIntegerField
      FieldName = 'nota'
    end
    object qrCPagardocumento: TWideStringField
      DisplayLabel = 'Documento'
      FieldName = 'documento'
    end
    object qrCPagarvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrCPagarespecie_desc: TWideStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'especie_desc'
      ReadOnly = True
    end
    object qrCPagarconta_desc: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta_desc'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrCPagarnome_fornecedor: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nome_fornecedor'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrCPagarid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrCPagarcod_status_pag: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cod_status_pag'
      ReadOnly = True
    end
    object qrCPagardata_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'data_vencimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
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
    object qrCPagarusuario_pagamento: TWideStringField
      FieldName = 'usuario_pagamento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrCPagardata_cancelamento: TDateTimeField
      FieldName = 'data_cancelamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrCPagardata_pagamento: TDateTimeField
      FieldName = 'data_pagamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrCPagarvalor_pago: TFloatField
      FieldName = 'valor_pago'
      currency = True
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
    object qrCPagardata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object qrCPagarconta_fixa: TBooleanField
      FieldName = 'conta_fixa'
    end
  end
  object dsCPagar: TDataSource
    DataSet = qrCPagar
    Left = 320
    Top = 72
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 208
    Top = 72
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
    object acBuscaFornecedor: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaFornecedorExecute
    end
    object acBuscaConta: TAction
      Caption = 'acBuscaConta'
      ImageIndex = 0
      OnExecute = acBuscaContaExecute
    end
  end
  object repCPagar: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42706.465223310190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 394
    Top = 71
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
          Top = 3.779530000000000000
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
          Top = 34.236240000000000000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 245.669450000000000000
        Width = 748.346940000000000000
        AllowSplit = True
        object Line1: TfrxLineView
          Left = 5.779527560000000000
          Top = 3.779530000000000000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 589.606680000000000000
          Top = 6.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCPagar."valor">,MasterData1)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 668.976810000000000000
          Top = 6.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbCPagar."valor_pago">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 487.559370000000000000
          Top = 6.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 748.346940000000000000
        AllowSplit = True
        DataSet = dbCPagar
        DataSetName = 'dbCPagar'
        RowCount = 0
        object dbCPagardata: TfrxMemoView
          Left = 7.559060000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118110236220500000
          DataField = 'data'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."data"]')
          ParentFont = False
        end
        object dbCPagardata_vencimento: TfrxMemoView
          Left = 85.047310000000000000
          Top = 2.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118110236220500000
          DataField = 'data_vencimento'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."data_vencimento"]')
          ParentFont = False
        end
        object dbCPagarvalor: TfrxMemoView
          Left = 589.386210000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118110236220500000
          DataField = 'valor'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."valor"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 668.976810000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118110236220500000
          DataField = 'valor_pago'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCPagar."valor_pago"]')
          ParentFont = False
        end
        object dbCPagarnome_fornecedor: TfrxMemoView
          Left = 264.464750000000000000
          Top = 2.000000000000000000
          Width = 192.756030000000000000
          Height = 15.118110236220500000
          DataField = 'nome_fornecedor'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."nome_fornecedor"]')
          ParentFont = False
        end
        object dbCPagardata_pagamento: TfrxMemoView
          Left = 172.196970000000000000
          Top = 2.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118110236220500000
          DataField = 'data_pagamento'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."data_pagamento"]')
          ParentFont = False
        end
        object dbCPagarnota: TfrxMemoView
          Left = 464.882190000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118110236220500000
          DataField = 'nota'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."nota"]')
          ParentFont = False
        end
        object dbCPagardocumento: TfrxMemoView
          Left = 517.795275590551000000
          Top = 2.000000000000000000
          Width = 71.811023622047210000
          Height = 15.118110236220500000
          DataField = 'documento'
          DataSet = dbCPagar
          DataSetName = 'dbCPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCPagar."documento"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 79.370130000000000000
        Width = 748.346940000000000000
        object Memo12: TfrxMemoView
          Left = 85.047310000000000000
          Top = 38.149660000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 464.882190000000000000
          Top = 38.149660000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 593.165740000000000000
          Top = 38.149660000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
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
        object Memo15: TfrxMemoView
          Left = 517.795275590551000000
          Top = 38.149660000000000000
          Width = 71.811023622047210000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DOC.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 38.149660000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISSAO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779525120000000000
          Top = 57.929190000000000000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 260.685220000000000000
          Top = 38.149660000000000000
          Width = 196.535560000000000000
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
        object Memo20: TfrxMemoView
          Left = 672.756340000000000000
          Top = 38.149660000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VL. PAGO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 172.196970000000000000
          Top = 38.149660000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PAGAMENTO')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 740.787406460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 740.787880000000000000
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 347.716760000000000000
        Width = 748.346940000000000000
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 740.787399130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 6.779530000000000000
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
          Top = 6.779530000000000000
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
  object dbCPagar: TfrxDBDataset
    UserName = 'dbCPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_cpagar=id_cpagar'
      'descricao=descricao'
      'nota=nota'
      'documento=documento'
      'valor=valor'
      'especie_desc=especie_desc'
      'conta_desc=conta_desc'
      'nome_fornecedor=nome_fornecedor'
      'id_situacao=id_situacao'
      'cod_status_pag=cod_status_pag'
      'data_vencimento=data_vencimento'
      'usuario_insercao=usuario_insercao'
      'usuario_cancelamento=usuario_cancelamento'
      'usuario_pagamento=usuario_pagamento'
      'data_cancelamento=data_cancelamento'
      'data_pagamento=data_pagamento'
      'valor_pago=valor_pago'
      'id_caixa=id_caixa'
      'itemcaixaitem=itemcaixaitem'
      'id_movimentocc=id_movimentocc'
      'data=data')
    OpenDataSource = False
    DataSet = qrCPagar
    BCDToCurrency = False
    Left = 479
    Top = 72
  end
end
