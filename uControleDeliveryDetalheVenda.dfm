object frmControleDeliveryDetalheVenda: TfrmControleDeliveryDetalheVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Venda'
  ClientHeight = 643
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 594
    Width = 1051
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 944
      Top = 3
      Width = 104
      Height = 43
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
      OnClick = btCancelarClick
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
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 837
      Top = 3
      Width = 104
      Height = 43
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
      OnClick = btSalvarClick
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
      Left = 730
      Top = 3
      Width = 104
      Height = 43
      Margins.Left = 0
      Caption = 'Excluir'
      ImageIndex = 7
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 623
      Top = 3
      Width = 104
      Height = 44
      Margins.Left = 0
      Caption = 'Editar'
      ImageIndex = 15
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 516
      Top = 3
      Width = 104
      Height = 44
      Margins.Left = 0
      Caption = 'Novo'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btNovoClick
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
    object btAgendar: TAdvGlowButton
      AlignWithMargins = True
      Left = 409
      Top = 3
      Width = 104
      Height = 44
      Margins.Left = 0
      Caption = 'Agendar'
      ImageIndex = 23
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      Visible = False
      OnClick = btAgendarClick
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
    object btVendasAnteriores: TAdvGlowButton
      AlignWithMargins = True
      Left = 278
      Top = 3
      Width = 128
      Height = 44
      Margins.Left = 0
      Caption = 'Vendas Anteriores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 22
      Images = frmMenu.imgListMenu40
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btVendasAnterioresClick
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 594
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    TabOrder = 1
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
    DesignSize = (
      1051
      594)
    FullHeight = 200
    object AdvGroupBox1: TAdvGroupBox
      Left = 3
      Top = 248
      Width = 1045
      Height = 343
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 12691076
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      DesignSize = (
        1045
        343)
      object Label6: TLabel
        Left = 4
        Top = 2
        Width = 52
        Height = 16
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 247
        Top = 4
        Width = 35
        Height = 16
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 333
        Top = 4
        Width = 34
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 497
        Top = 4
        Width = 84
        Height = 16
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 81
        Top = 29
        Width = 163
        Height = 16
        DataField = 'descricao'
        DataSource = dsBuscaItem
      end
      object DBText6: TDBText
        Left = 410
        Top = 26
        Width = 64
        Height = 16
        Alignment = taRightJustify
        DataField = 'valor_total'
        DataSource = dsBuscaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 412
        Top = 4
        Width = 64
        Height = 16
        Caption = 'Total item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCodProduto: TcxButtonEdit
        Left = 4
        Top = 24
        Properties.Buttons = <
          item
            Action = acPesquisaItem
            Default = True
            Kind = bkGlyph
          end>
        Properties.ClickKey = 0
        Properties.Images = frmMenu.ImgList16
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnExit = edCodProdutoExit
        Width = 62
      end
      object edObservacaoItem: TEdit
        Left = 497
        Top = 26
        Width = 260
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        MaxLength = 200
        TabOrder = 3
      end
      object btInserir: TAdvGlowButton
        Left = 765
        Top = 9
        Width = 46
        Height = 41
        Hint = 'Inserir item'
        Anchors = [akTop, akRight]
        ImageIndex = 3
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        TabStop = True
        OnClick = btInserirClick
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
      end
      object AdvGroupBox3: TAdvGroupBox
        Left = 815
        Top = 3
        Width = 227
        Height = 112
        BorderColor = clNavy
        Transparent = False
        RoundEdges = True
        Anchors = [akTop, akRight]
        Color = 14074285
        ParentBackground = False
        ParentColor = False
        TabOrder = 6
        object Label21: TLabel
          Left = 72
          Top = 9
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'SUBTOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 3
          Top = 28
          Width = 115
          Height = 32
          Alignment = taRightJustify
          Caption = 'TAXA DE '#13#10'SERVI'#199'O/ENTREGA '
        end
        object Label23: TLabel
          Left = 52
          Top = 66
          Width = 84
          Height = 16
          Alignment = taRightJustify
          Caption = 'DESCONTO (-)'
        end
        object Label24: TLabel
          Left = 96
          Top = 88
          Width = 40
          Height = 16
          Alignment = taRightJustify
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 142
          Top = 9
          Width = 53
          Height = 16
          AutoSize = True
          DataField = 'total_itens'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 142
          Top = 36
          Width = 47
          Height = 16
          AutoSize = True
          DataField = 'acrescimo'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 142
          Top = 66
          Width = 47
          Height = 16
          AutoSize = True
          DataField = 'desconto'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 142
          Top = 88
          Width = 53
          Height = 16
          AutoSize = True
          DataField = 'total_venda'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 118
          Top = 36
          Width = 18
          Height = 16
          Caption = '(+)'
        end
      end
      object AdvGroupBox4: TAdvGroupBox
        Left = 815
        Top = 121
        Width = 227
        Height = 66
        BorderColor = clNavy
        RoundEdges = True
        Anchors = [akTop, akRight]
        Color = 14074285
        ParentBackground = False
        ParentColor = False
        TabOrder = 5
        DesignSize = (
          227
          66)
        object Label25: TLabel
          Left = 9
          Top = 7
          Width = 145
          Height = 18
          Anchors = [akTop, akRight]
          Caption = 'Desconto na venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 10
          Top = 31
          Width = 71
          Height = 19
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'desconto_percent'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 103
          Top = 31
          Width = 71
          Height = 19
          AutoSize = True
          DataField = 'desconto'
          DataSource = dsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDescontoValor: TJvValidateEdit
          Tag = 1
          Left = -84
          Top = 39
          Width = 100
          Height = 27
          Flat = False
          ParentFlat = False
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloatFixed
          DecimalPlaces = 2
          EditText = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          HasMinValue = True
          MaxValue = 100.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Visible = False
          OnExit = edDescontoValorExit
          DataConnector.DataSource = jvdsVenda
          DataConnector.DataField = 'desconto'
        end
        object edDescontoPercent: TJvValidateEdit
          Tag = 1
          Left = -84
          Top = 6
          Width = 100
          Height = 27
          Flat = False
          ParentFlat = False
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloatFixed
          DecimalPlaces = 2
          EditText = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          HasMaxValue = True
          HasMinValue = True
          MaxValue = 100.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Visible = False
          OnExit = edDescontoPercentExit
          DataConnector.DataSource = jvdsVenda
          DataConnector.DataField = 'desconto_percent'
        end
      end
      object cxGrid2: TcxGrid
        Left = 3
        Top = 56
        Width = 809
        Height = 284
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 7
        LookAndFeel.NativeStyle = True
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVendaItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1nro_item: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'ordem_item'
            Width = 35
          end
          object cxGrid2DBTableView1descricao_item: TcxGridDBColumn
            DataBinding.FieldName = 'descricao_item'
            Width = 238
          end
          object cxGrid2DBTableView1desc_tamanho: TcxGridDBColumn
            DataBinding.FieldName = 'desc_tamanho'
            Width = 60
          end
          object cxGrid2DBTableView1qtdevenda: TcxGridDBColumn
            DataBinding.FieldName = 'qtdevenda'
            Width = 69
          end
          object cxGrid2DBTableView1vlrvenda: TcxGridDBColumn
            DataBinding.FieldName = 'vlrvenda'
            Width = 78
          end
          object cxGrid2DBTableView1acrescimo: TcxGridDBColumn
            DataBinding.FieldName = 'acrescimo'
            Width = 72
          end
          object cxGrid2DBTableView1desconto: TcxGridDBColumn
            DataBinding.FieldName = 'desconto'
            Width = 74
          end
          object cxGrid2DBTableView1valor_total: TcxGridDBColumn
            DataBinding.FieldName = 'valor_total'
            Width = 78
          end
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Action = acExluirItem
                Default = True
                Kind = bkGlyph
              end>
            Properties.ClickKey = 0
            Properties.Images = frmMenu.ImgList16
            Properties.ValidateOnEnter = False
            Width = 32
            IsCaptionAssigned = True
          end
        end
        object cxGrid2DBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'nro_item'
          DataController.KeyFieldNames = 'id_venda'
          DataController.MasterKeyFieldNames = 'nro_item'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.CardExpanding = True
          OptionsView.CardAutoWidth = True
          OptionsView.CardBorderWidth = 1
          OptionsView.CardIndent = 0
          OptionsView.CardWidth = 715
          OptionsView.EmptyRows = False
          OptionsView.SeparatorWidth = 0
          object cxGrid2DBCardView1observacao: TcxGridDBCardViewRow
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'observacao'
            Options.Filtering = False
            Position.BeginsLayer = True
          end
        end
        object cxGrid2DBCardView2: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVendaItemOpcional
          DataController.DetailKeyFieldNames = 'id_vendaitem'
          DataController.MasterKeyFieldNames = 'nro_item'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
        end
        object cxGrid2DBCardView3: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVendaItemOpcional
          DataController.DetailKeyFieldNames = 'id_vendaitem'
          DataController.MasterKeyFieldNames = 'nro_item'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          LayoutDirection = ldVertical
          OptionsCustomize.CardExpanding = True
          OptionsView.CaptionSeparator = #0
          OptionsView.CardAutoWidth = True
          OptionsView.CardBorderWidth = 1
          OptionsView.CardIndent = 0
          OptionsView.CardWidth = 500
          OptionsView.EmptyRows = False
          OptionsView.SeparatorWidth = 0
          object cxGrid2DBCardView3descricao: TcxGridDBCardViewRow
            DataBinding.FieldName = 'descricao'
            Position.BeginsLayer = True
            Styles.Content = frmMenu.cxDesconto
            IsCaptionAssigned = True
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
          object cxGrid2Level3: TcxGridLevel
            GridView = cxGrid2DBCardView3
            Options.TabsForEmptyDetails = False
          end
        end
      end
      object AdvGroupBox2: TAdvGroupBox
        Left = 815
        Top = 200
        Width = 227
        Height = 127
        BorderColor = clNavy
        RoundEdges = True
        Anchors = [akTop, akRight]
        TabOrder = 8
        object Label20: TLabel
          Left = 10
          Top = 9
          Width = 149
          Height = 112
          Caption = 
            '[F2] Pesquisar produto'#13#10'[F4] Opcionais no item'#13#10'[F5] Observa'#231#245'es' +
            ' no item'#13#10'[F6] Finalizar venda'#13#10'[F8] Pedidos anteriores'#13#10'[F11] V' +
            'enda Fracionada'#13#10'[Ctrl+D] Desconto no item'
        end
      end
      object edValor: TJvValidateEdit
        Tag = 1
        Left = 333
        Top = 26
        Width = 70
        Height = 24
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        EditText = '0,00'
        HasMaxValue = True
        HasMinValue = True
        MaxValue = 9999999.000000000000000000
        ReadOnly = True
        TabOrder = 2
        OnExit = edDescontoValorExit
        DataConnector.DataSource = JvdsBuscaItem
        DataConnector.DataField = 'valor_unit'
      end
      object edQuantidade: TJvValidateEdit
        Tag = 1
        Left = 247
        Top = 26
        Width = 70
        Height = 24
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 3
        EditText = '0,000'
        HasMaxValue = True
        HasMinValue = True
        MaxValue = 999999.000000000000000000
        ReadOnly = True
        TabOrder = 1
        OnChange = edQuantidadeChange
        OnExit = edDescontoPercentExit
        DataConnector.DataSource = JvdsBuscaItem
        DataConnector.DataField = 'quantidade'
      end
    end
    object pgcontroldelivery: TAdvPageControl
      Left = -1
      Top = 0
      Width = 813
      Height = 242
      ActivePage = AdvTabSheet1
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      DoubleBuffered = True
      TabBackGroundColor = clBtnFace
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '2.0.0.10'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 1
      object AdvTabSheet1: TAdvTabSheet
        Caption = 'DELIVERY'
        Color = 12691076
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          805
          211)
        object Label1: TLabel
          Left = 3
          Top = 0
          Width = 39
          Height = 16
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 3
          Top = 48
          Width = 39
          Height = 16
          Caption = 'Cliente'
        end
        object Label3: TLabel
          Left = 519
          Top = 0
          Width = 81
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Tipo de venda'
          ExplicitLeft = 514
        end
        object Label4: TLabel
          Left = 657
          Top = 0
          Width = 104
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Venda/Or'#231'amento'
        end
        object Label5: TLabel
          Left = 380
          Top = 0
          Width = 26
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Data'
          ExplicitLeft = 375
        end
        object Label10: TLabel
          Left = 308
          Top = 48
          Width = 53
          Height = 16
          Caption = 'Endere'#231'o'
          FocusControl = cxDBTextEdit2
        end
        object Label12: TLabel
          Left = 574
          Top = 48
          Width = 45
          Height = 16
          Caption = 'N'#250'mero'
          FocusControl = cxDBTextEdit3
        end
        object Label13: TLabel
          Left = 11
          Top = 147
          Width = 73
          Height = 16
          Caption = 'Observa'#231#245'es'
          FocusControl = cxDBTextEdit4
        end
        object Label14: TLabel
          Left = 308
          Top = 93
          Width = 22
          Height = 16
          Caption = 'CEP'
          FocusControl = cxDBTextEdit5
        end
        object Label15: TLabel
          Left = 130
          Top = 93
          Width = 39
          Height = 16
          Caption = 'Cidade'
          FocusControl = cxDBTextEdit6
        end
        object Label16: TLabel
          Left = 447
          Top = 95
          Width = 4
          Height = 16
          FocusControl = cxDBTextEdit7
        end
        object Label17: TLabel
          Left = 655
          Top = 48
          Width = 79
          Height = 16
          Caption = 'Complemento'
          FocusControl = cxDBTextEdit3
        end
        object Label18: TLabel
          Left = 407
          Top = 93
          Width = 105
          Height = 16
          Caption = 'Ponto de refr'#234'ncia'
          FocusControl = cxDBTextEdit5
        end
        object Label19: TLabel
          Left = 657
          Top = 93
          Width = 94
          Height = 16
          Caption = 'Taxa de Entrega'
          FocusControl = edTaxaEntrega
        end
        object labsta: TLabel
          Left = 238
          Top = 0
          Width = 36
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Status'
          ExplicitLeft = 233
        end
        object Label28: TLabel
          Left = 3
          Top = 93
          Width = 34
          Height = 16
          Caption = 'Bairro'
          FocusControl = cxDBTextEdit4
        end
        object Label26: TLabel
          Left = 73
          Top = 0
          Width = 80
          Height = 16
          Caption = 'Nro. da venda'
        end
        object cbTipoVenda: TJvDBComboBox
          Left = 519
          Top = 22
          Width = 130
          Height = 24
          DataField = 'tipo_venda'
          DataSource = dsVenda
          Anchors = [akTop, akRight]
          Items.Strings = (
            'Mesa'
            'Balc'#227'o'
            'Comanda'
            'Delivery')
          TabOrder = 0
          Values.Strings = (
            'M'
            'B'
            'C'
            'D')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbVendaOrcamento: TJvDBComboBox
          Left = 659
          Top = 22
          Width = 144
          Height = 24
          DataField = 'venda_orcamento'
          DataSource = dsVenda
          Anchors = [akTop, akRight]
          Items.Strings = (
            'Venda'
            'Or'#231'amento')
          TabOrder = 1
          Values.Strings = (
            '0'
            '2')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edIdCliente: TcxDBButtonEdit
          Tag = -1
          Left = 3
          Top = 65
          DataBinding.DataField = 'id_cliente'
          DataBinding.DataSource = dsVenda
          Properties.Buttons = <
            item
              Action = acBuscaCliente
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 64
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 22
          Width = 64
          Height = 24
          Color = 14997705
          DataField = 'ven_001'
          DataSource = dsVenda
          ReadOnly = True
          TabOrder = 3
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 380
          Top = 22
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'data_cadastro'
          DataBinding.DataSource = dsVenda
          Properties.ReadOnly = True
          Properties.ShowTime = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 130
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 73
          Top = 65
          TabStop = False
          DataBinding.DataField = 'nome'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 229
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 308
          Top = 65
          TabStop = False
          DataBinding.DataField = 'endereco'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 260
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 574
          Top = 65
          TabStop = False
          DataBinding.DataField = 'endereco_numero'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 75
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 3
          Top = 110
          TabStop = False
          DataBinding.DataField = 'bairro'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 308
          Top = 110
          TabStop = False
          DataBinding.DataField = 'cep'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 93
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 130
          Top = 110
          TabStop = False
          DataBinding.DataField = 'cidade'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 172
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 407
          Top = 110
          TabStop = False
          DataBinding.DataField = 'endereco_referencia'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Width = 242
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 657
          Top = 65
          TabStop = False
          DataBinding.DataField = 'endereco_complemento'
          DataBinding.DataSource = dsCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 146
        end
        object edTaxaEntrega: TcxDBCalcEdit
          Left = 657
          Top = 110
          TabStop = False
          DataBinding.DataField = 'acrescimo'
          DataBinding.DataSource = dsVenda
          Style.LookAndFeel.NativeStyle = True
          Style.ButtonStyle = btsDefault
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Width = 146
        end
        object DBEdit2: TDBEdit
          Left = 237
          Top = 22
          Width = 132
          Height = 24
          TabStop = False
          Anchors = [akTop, akRight]
          Color = 14997705
          DataField = 'status_desc'
          DataSource = dsVenda
          ReadOnly = True
          TabOrder = 14
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 140
          Width = 803
          Height = 71
          DataField = 'observacao'
          DataSource = dsVenda
          TabOrder = 15
        end
        object DBEdit3: TDBEdit
          Left = 77
          Top = 22
          Width = 80
          Height = 24
          Color = 14997705
          DataField = 'nro_venda'
          DataSource = dsVenda
          ReadOnly = True
          TabOrder = 16
        end
      end
      object AdvTabSheet2: TAdvTabSheet
        Caption = 'AGENDAMENTO'
        Color = 12691076
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label29: TLabel
          Left = 3
          Top = 11
          Width = 177
          Height = 18
          Alignment = taRightJustify
          Caption = 'DIA DO AGENDAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 245
          Top = 11
          Width = 74
          Height = 18
          Alignment = taRightJustify
          Caption = 'HOR'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 0
          Top = 70
          Width = 113
          Height = 18
          Alignment = taRightJustify
          Caption = 'OBSERVA'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image1: TImage
          Left = 420
          Top = -5
          Width = 374
          Height = 213
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000015C
            000000D80806000000A7405B560000000467414D410000B18F0BFC6105000000
            097048597300000B1200000B1201D2DD7EFC0000001C74455874536F66747761
            72650041646F62652046697265776F726B7320435336E8BCB28C000077914944
            4154785EED9D077814D5DAC7CF2E602FD7DE45C5060848EF0808D8EFB5EBB55E
            3FF55E7BA1A5F74EE820A814152982A282204A51444A3AE905120825BD6D99DE
            F67BDFD90C2C618094DD6CCABCCFF363C36433A7FFE73D674E210E87C3C0CD98
            1F8841CCC0B5C068E079C01F88043E049E017A01E7012640F73E06EEA53EAFB1
            5C2E037A00F702BD817B802B01FC9D49EF6F0D0CDC81EE4583E6818D15381F18
            0B44002B81DD4001700C28018E02B9C06FC042E0BF4077A08BDE3D0D5A06E42B
            D205B801780E880296031B805F012C87CDC0B74034F002703D807FA37B4F0383
            E6A27BD1A0E940E3446F15BDD9A54036600564C071167800453811F001D02336
            3C2C370179891EEBCDC027C056E010600324A061596059D98162603BE007DC01
            98F5EE6D60D01C742F1A340D689417022F03FB01D746AC00D8B85158C5FA6BF8
            330BE075FCBDF65DBCB60CC06EAE21BA2D04F210C5167B1A6B01CC5B2D9F11CC
            774400B03C506C5DCB02E1804DC02380D1FB30700BBA170D1A0F34C66E008EC9
            A2A78A0D151BAF26B29AB8D28026B8D890D1CB62EA7FC6EBAE9E300AC46D7A61
            19340EC83F1CDA7908C0A11B2D5F318F31AFB13C30DF516CB11CB02782D7CE54
            1E47802701C3D3356831BA170D1A073442E42E201DC0C689428B0D1685161B30
            7EE2FFF1BAE64569828C0D1EBF83628C3FE335BC077E671A709E5E9806E706F2
            0E870232004D34B5FCD68455F36A35F0F728B6AE62AC95078243447DF5C23230
            680ABA170D1A0734421C4AF818C0B13F6C989A07E52AA2AE428B9F1A5A43C7EF
            6ADFC7EB789FBDC0BD7A611A9C1DC8377CD91504D402989798A798CF28B298C7
            0DCBC115FC1D7EAF617950402C600C2D18B408DD8B068D031AE035C07A001B25
            A2794AE845690D586BB40DD17E8F0D1B455A1303FC5D3530562F4C83B303F986
            2F1EF7005ABE6B028A798CE573A6F240F0775A19E2F7F101AAFD6E1F70AB5E98
            06068D45F7A241E3800688538DFEAC6F90080A2636584D38B1019FA981E3754D
            90B5BFD1BE8B828D2FE174C335383390677D81E38096CF28B6F800C35E88562E
            6703CB00C5163D64ADE782E403C3F5C23430682CBA170D1A073440F47037D637
            487782828BF37375C335383390677D007CD1A5E5250A6E15D098697A080A2EE6
            7F0560A9BF86E401C3F4C23430682CBA179B0A54446D054F67419DB6059FD701
            3881DEB5C1BA036CF0EF02EA98217CEAC5C1E054B432B90F70155CF4566B80A6
            7AB8DADF68D7F1C5D9C04E56DF713CDC98A2E846742F9E0D28808B011C27C3E5
            90A3808781C7EA79BC1380E97C149800BC082403AE0DD61D60835F0060DE4E04
            3A4BDEB604CC2B9C77FB11801EAD6B5EB65470F11A2E9AC065D943010C4B2F0E
            1D09ACE3F889750FEB3AA6FB56E06AE0223D6D303837BA171B02198C6FE36F04
            1E007C019C2B9A06E0DC531CEBAAAB07BB601D1D4C27A6191B247EE24B196C90
            0D1B6E73D1BAB4281A958096BF7A713138099607D27025198A27E621CE3468EA
            182EFE0D5EC39767F87F2C131C0FC69FF5E2D091706DD398EE22005F467E054C
            01C600F80EE3023DCD30D047F7A20664E645008E89E1BC505C1A89CB1E5DBB59
            064EDC29B8280ADAB424BDDF1B340D77082EFE1F85A7E1773B23983F381E8ECE
            16EE43815EFF9D80316FBC11E85E84CCC3312ADCCD2A0CC039A1E8C5E965BE81
            67400F17BD5BFCD4FBBD41E37187E0E2C30F3DDBC6BE78EB4C601EE1DE13EF00
            D7E9E989C1494EBB00998603E5FF02700725BD0C36F03CD8E0F12DB921B82DC7
            5D828BC315E8E51A3D0F7D30AF701736F5C5A2813EA7FC07320BDF4CE2DEAD85
            805EA61AB40E38F11E3D2A6CF87ABF37683CEE125CFCFF99761A3338C93660B0
            ABAE189CE494FF40463D011CACCF3803EF6108AEFB3004B7F5F903E8E3AA2D06
            4E4EFC00193408D0366131F02E86E0BA0F4370BDC3CFC0CDAE6263502FB89031
            38EDCB132BA60C9A8721B8EEC3105CEF81A79E746B283A9D19F51FC8141CB7C5
            CA85954D2FE30C5A174370DD8721B8DEE30030BAA1E87466506C71AEEDF70056
            B2E60BEED85887791C1257FFD94918AB93172D8783FCAC86FBB3A78567706E4E
            CD4BF709EEB8581BD46FF1B4F03A2AEEA9DB7180B1797B3DDAD82DEE8CDF98CA
            A88702E2A09846443AC8C0500719100C84C0CF1D1C2D8DA3A29C15D35DC28B0F
            AEB1312C19165E0561B09D222FDD01E6537F6070D8C97C74E669CB05776CAC60
            7A20A606EE6D25FD83A50E5F266AFA421DA651516ADBAECF13BDBC6A0C784CD1
            357AE2D31941C17D0BC0A57BCDCBD4B13132191B2B434594C9BDBE32E9E5AB90
            9E7E8E4E41EF0007191EA189A47EFE3415E82198C6C63050F12B482F7F56375C
            8333D327C001E2E85EC11D1F2B900762AA499F408B5AC7F5C2ED48F402309D43
            C325F0747108A5B9CE189200183316EA41C19D0AE0AAA66609AE6974B44C4644
            8A3D5E5CCC3F1FF2A3F06AE406F9C5D09F1C2F04775C5E045E89D8E07826F047
            C7F54FCE73901151900FE0E9EAE44F9300D1C69E82797414DBEF8D65952F876F
            645F09DFE078BE41F806A7F3EFB09F1CAF47FDE2983879B5E3C2B1F0D01A1DAD
            E56B8B05970C8B102E191B5BFDE0A7AB2D6FC56D925F0AFB59370E1D05AC73CF
            06FD20DEF0E47CC10C6DDB34A6451E2E1EAC3A444F7C3A2328B8B816BA146872
            A69A4643651C1CAA90A161E2ACEF93F80A0B23565A18B9AC9672947660307D15
            56C6915D5CED786CDA3A07B93FD84186405716C7BD74F2A9D18C8F030F2DC8D1
            754818336B6D6245B98561204F75E360702A6575B4A3CAC63A12F3CB1C374F8C
            778077A6E56B8B04D704654A7A0508774D9A59B32DFDA8A58EE6640C4B2F0E1D
            8572485F591D253D1FFAB3D8EDFE60898C8A6A89878BBBE90DD2139FCE080AEE
            FB4039D034C1456F0CBC08D23F4421C3C294EFFEC895E1864A3D9DC2EC34EF78
            2EE84710C940071914AA0AA66E5E351614DCDE018E6E83C298E59BD2CB2108DA
            1992618DB5635576C76D93669E1CCB7587E0DEE32BF47E68664DF6D11A2B0421
            3943EAF0A6FC77D66FCA797D83143232B2251E2E0AEE00B89FAE007536340FB7
            59824B50704168C88808C7ECEF93E07E9DCBCA6A28C7C353BE73907E41CE063E
            BE851EEE3810DCBE818E2E83C3D8A8157B2B785166EA8332AC9196985BEAB809
            3D5CEC7138F3B565823B163D5C7FA1C7C4F89A9D99C76C1084E80CA9E3DB4B91
            1B1DE0E13A4070F5F2A9B1A400C6FE0AF5B84770874738E6FE900CF7EB5C8682
            FBC854770A2E34EEBE410EF3A0503A6CF9EE5286970C0FB789969C5FA627B8DA
            66E28D155CDC3448FD1B4D70EF9A145FF377D6F1CEE4E13A5E3604D7ED1882DB
            022BADB63B1E9ABCC629B843C21410DCA6E5A133CFB5BF51407015D22758E93A
            249C8D59B9B79A9714B63E28C31A674A425EA972D383D053C0F270E6ABB6993B
            2E5A68ACE06AE7A0D94CD8EBE8E5CFF7181F5B051E6E1D8461086ED33004D705
            43705B6025D57665EC872B65725FA0428684CB20B8388546433FDF4E0505409B
            762343E39649AF00F9FC9151D2AA1DB9020481E3E28635DEE4C4BC52E18607A2
            79105C4D5C513C71164E530417451A57FAD94CD06B21BDFC84DBC644576D4F3F
            520B61749A21054370DD8F21B82DB08A3A467E2AE00796F40E10C88010F070E3
            503CB10B8B0D16F353432F0FB5DFE1325EF58407D3F83885DCE5235D3E3E4ED8
            99714C7B096958E34D2A385643DFFCF89C5A323894378F51F319CB03F7B1C531
            DC733D08B13C5094B14C50A059D398689C572EDEFBAF7975A9851538A460086E
            D33004D70543705B602C2F490B7F4AB591FB8339F08264F343F1D0A0A3F1740C
            6CDCD868B1819F4D70F1F794794C346D9E30432023221572EB6471D0FF2DA30E
            94D4E27082E1E136CDA43A8A63274EFBCE6AEE1BC493E19132D45309841745B7
            B1C716E17768F81B0E1FA0D873213DA68B0F7EBA9AAAB6311C84D169CAC4105C
            F763086ECB4C3E5852C70C7D73394DAEFD48C4BC303F3A4B86868A620B42AA36
            7214603C84501B3E4044B5413BBD2FD6FCD04CD13C718642AEFB48EED2CB9F59
            F063AA9D13251EEE6F78B84D3359561469ED9FB92CCEF4C0D552F8D20BF21684
            37163D5ECC6F2C0F2C0BCD9BC54FED674E2DB3B1B10C3C0045D3847807B97DBA
            7C41EF0066D12FFB6905EE0D61749A323104D7FD1882DB325344599136EE2DA4
            EF7A6C0E452E7B4F84EEA7621A1DA5981F9CC1434367E0930101E6CDE3622968
            C816F3B8381AAE71E689F1D0A8E379D3F858990C8970906B3E944170D9F7E236
            DBAB6DAC21B6CD33CC33991344E1E385DB28D2278023B74E91D51924136628E6
            49F1BC79FC0C105475C8073D597CF8A1D0E2CF5056503693E259281F890C0D73
            406F4321B74FE5DF8EDE4459695EF36E0DC16D1A86E0BA60086ECB0C1BA004A2
            2B6E4A28A2FB3F359F32DD3A452077FA28A4A7BF4C06862864489844464448A6
            D1D13460318D8C64C8B008890C0A93499F4085DCE32B93EE53A54BEEF165DF8F
            FBD57EACC66E0C25B4CC5010A53A9AE33E59B08DBE6A681843BA4F16219F1575
            73A591B854359A3581A70B480078C1F0335CC3DF417D56C03356E06FA40BEFF3
            67DF8ADA4095C2CDEAEFDBA91E8286E0BA1F43705B665A23541B79D6A14AE6E3
            F85F995B26CDE4BBF60EE0A1E10AA427345E14D6FE21B8CB9444EE0F96C97D01
            0AB9DB47C29731170D08E51EF8CF326EE5D66CB696E2B06177AA6EAB874CF544
            2D14C77FB325831AFCDA17F4793DFD04D2639A045E2F0A2F7ABD88720214DA3E
            FE0AE9315DEED2CB8FBFEFF9CFE8C53FA552D556467B0076BA323104D7FD1882
            EB5E93403485E4DC5276C1BA44E655FFEFA907FEB354BCE9F1B954D7D13156F0
            74AD974C9861BFF7D905ECA3EFAEE07D176C657EF8338F3978AC16A78069426B
            886DCB4DCB43455214E1C0F15A76F1FA64F6C90F57D2D74C9C41934121ACFAE0
            C3ED1C91BEF0F3C010FE9A0767D08FBEB38259B03689C929AE66E16F71468226
            B686E0360F43705D3004D7BD868D521D666078493878AC864FCE2991B6A71CB6
            AFDE9E63FB7A4B86E5A7BF0BAC3BF717B319072AC48A5A0A85161BB5E1D57ACE
            305F255694A5BCC355DCE6BD07A92F7E4A61C396ED92FC3FFFD3E107842EF94B
            FA7C7D0AFBEBDE8374766125CF72129647A72F134370DD8F21B8EE356CA05A23
            D57E46014651457145F08598D6A05DBD27EDEF0C73AFB9E6AD5A163278AE0C28
            B095E61D569A73D0AC20CBB2EACD6A1E2D5AA72F134370DD8F21B89E37ADE19E
            09C35ACFCE94F767BADEA9CD105CF76308AE618619A66B86E0BA1F43700D33CC
            305D3304D7FD18826B986186E99A21B8EEC7105CC30C334CD70CC1753F86E01A
            669861BA6608AEFB3104D730C30CD3354370DD8F21B886196698AE1982EB7E0C
            C135CC30C374CD105CF76308AE618619A66B86E0BA1F43700D33CC305D3304D7
            FD18826B986186E99A21B8EEA7AD0B6E5B58DBDE5A71F0465ABD11664735CC47
            DC9048C0534004495600472BA1A8DBEF38D40D785CB7FA6C911982EB7EDA9AE0
            AA020026D3AC2055D6D1D2F12A9B7CBCD2E6282EB33A8E56B42E47CA55E4B26A
            BB546361449617B58ADCD2CA0C4974C89044DC245BAAAA63847208A3B4DA8E61
            395A8BFAF0207C5AA8B37312C389782618A64DDBC5ACA58637937950040BDC1F
            CA532CAF51D3A900BA71F204181686595E4309355646A018559E5A9A4EF5EF21
            C7642BC5C925953629ED6039B379CF41EBBAED39F4AADF32E595BF6539567918
            0C63E5960C79CDD62CF1C79D79F4D6A443D6ECC3951C94A904E994209218CF66
            A5D1105CF7D3160457AB10882C498A54526DE756FF9E4DBF13FD0B3DE1836F85
            71EFAF708C796F8563ECFBDFB62A18E6A877BE561EFD64153F75DE56DBAFFB0A
            E95A8A155B7098A09A4EDC0A108480DF9A7C588C5DB9977E33FA97BAA77CD6B1
            FF9CBA56F9D7F4B58ED6E29FD3D62A4FFBAC13DE8CDA6489F8FA6FEA87BF0AB8
            43651678ACC8E82535478CB47254C17CB2D01CFF475AB110F7ED6E4CA7C599CE
            EF14085B374E9EE00908EB8929DF49CFF9FD609D3C6F9B65C56FD95CE1F15A01
            D30911D5D2A9712ED3BE27434609E945155CEC37BBD92726AFE67BBCB088B97A
            62BCF51F63A26940FEC7981847EB00613D10235E312E8EBAEEE1D9B67B5EFC9C
            7916F2F9DB4DE95CA58DE31AD4D7C6A451354370DD4F5B105CACF012568A4A68
            9D515FFF4D0F7F7D0973E3B858FE92A1E162D741615297C1A18E2E43C21D5D07
            B73E10B6DC6D70A874F9F070B1FBA4787EE207DF325F6FCE64C06173F51E1A53
            891570AAE4C320B461CBFE6246FFDF32B6C723B3C46B1E88112E1E16C19F3724
            4C3C7F68980C385A11082F5CC2F0AF8678749F38931FFCD2E7FCE4D9BFD1F925
            B50CA4D0558C1A63EAF7E1CB20B402FFED964C66E2BB2B985B26C40BD78C8A12
            2E1A1EC94398AD9ECEF3806E4320CC21E1C2E52322F9EB1F8C1306BCB0887B2B
            6223FB57D671B6FE0183A274AE870CFE0E7D63E968A58DFF74F66F5CCF27E7F2
            578F8E14BA0D0A9508D41300CF4593003CB6C7D93E3C8F02E1CA6AF8D05EC8C0
            50E97CE0BAD151E2B8FF7DC5FCB033DF0E69743D97ED6C693C6186E0BA1F6F0B
            AE5A81C1E313920A4A99473E5A495F8AC75BDFED2390FB02F1EC293C84512143
            C31D645898433D49B5D50987F0210E03421CA497BF42EEF513AE1917C3BD11F5
            0B53586EC1F3AE1AD55025599176651EE31F796F8570C1FD411CB9D75724BDFC
            64D22FC879B8E160B5D120F8736BE10C13CBB03FC4A3B7BF0CE993BAF5F6E346
            BDF239BDFE8F5C86E684C67ABB6A430693F1489BFFC5FC425F313C82273DA68B
            784F359D83200FBD93CE930C0001B92F404DA7F9BE40B1FB4333D9192BF75236
            563D95F76C65A9D65514DBCC43D5DCE31FAD64BBDC394D24F7F838CB7008D415
            1026323ACA611A130DC4D47FB6061896333C322ACA41464440BB84F8F4F25348
            8F69E2AD13E2E9B855FB28413CD17341CE6986E0BA1F6F0B2E0E194A093925DC
            E0D7BEA4C84D9FF2D01064B58027CC7098C7C7391987C47A8FFA789800323442
            21774D97BBDCE3C33D3B6D2D5D564BBB7A477A064974C85B538BD9812F2E66C9
            8D9F48E41E680898C607E1BE0F9EBCBF778178407CC86828D7FBE0C172CD87C2
            2D136630ABB6E7501C2F690DF56CA636E4DC6335DCA3D3D6B0E4F6693CE93E45
            C687A57902DC1FD38A61E886DD9A38D38902450640DDBDF623E9C29E7E4CE8D2
            9DD06B11CF5696784D2A2AB308CFFA7CCF902BDFE7C9DDBE0E3216EF575F57B1
            AE40BBD06D2FAD05868FF1C0384D887798D069E83E59BA6C74343BE787141ADF
            AF613AD4149DC30CC1753F5E17DC239556EE95801F6972D58702DE87A0D06285
            D10BB32D302E56318F9F2193FEC1F285774CE7A77FB113DAA9A479477A261757
            5885073E58C19A6EFA84C71362CD1367B6DD3462837D68A6D34BBAE123F1AE67
            E7D3C907CA587C68405A542F564DD5E9A6F0900FAF47FF4291BBA609A46FA0C3
            040D5E6DF8E079E986E56D26CE7098207EE4DA0FE56B0684702B77E431E001A0
            20E97AB80C2F0A51DFEEA5C93DBE1CB97DAA6C7A7436DCA70DD7557C188C8734
            A2E77B6F8074E363B39984DC121AD272AE87A76A86E0BA1FAF0AAE048D78F58E
            5CFB6563A22972A70F7AB5926E586D8DB1310A546205BA92D28D4FCCB5E51657
            9F4D70C599DF27B3978C89461192416865B521E8DDB72D0162A41E29DE2F50F0
            5FB293B582DA405A542F564DD5E9A6ACDD9947DFF0C86C06BBECA6076220ADE0
            F5E9DDBB2D010F787548E7F6A9FCD3BEDF5BCBEA6806D3E24CD229A6149559A9
            B1FFFDBA96DC0C3D31E80998C7B683F4415D036F1E4F25962F1911C94F5DFC07
            030FCF333D344F314370DD8F57051767ADC4AEDAC793DE013CE917EC1423BDB0
            DA1E8A794C8C3A1679ED0331D2B6D462D7C3071B1AF362D8CFB55D0786B26444
            24886D13F3D95BE0F0C2E07085DC1F244D9AB2862EABA1B4F1EA3335563960E9
            5F7C97E11102BEB4510517BD65BD7BB725A0A7A10E2F80E0F67B76219552588E
            E9D44BA39C535CC5F57D76210D822BA8C3247AF76B6BA0E0427D859E957CC9C8
            28F9ED595B647C435D9FA6B39A21B8EEC7BB82CB8B4AD4CABD3208AE4C06042B
            6A775D2FAC360ABE28B91A3CDD753BF3B5EEB69E510F7EBAA6B2CBFDC114191D
            D57ED20742040F0807B93F58E8F3FAD2AAA395362BA4E56C63B9CA87F3B6CAEA
            4B4E68DCD8036817820B984094C8EDD3E47BFF3957DA935772A6315C25ABA852
            EEFDE47C89DC3259C61E80DEBDDA1C4EC185BA1AEEB814DAEB3BB3B6E094A0FA
            249DDD0CC1753F5E155C56101D33D62438A06B8E0DBB6D8FDDEA00C2E2B81AF2
            61EDCEFCFA14E91AF3D0D4EFAA4070E97625B82842D0D048FF60AEEF1B270417
            3DF933B6D6C90B7738C8B070355F70DCB05D082EC45115A41ED31CBD9F59E048
            C82FC5F4E9A631EB50A5A30F7C0704D7F952B7E1BDDA22270437CC712978F2EF
            CFF9DD816BD21A6386E0BA1F43705B8026B83FEC2AA84F91AEB18F4D5F57D3A5
            7F084346B533C1757AB8FCC0B797D71EABB2519096B3BEDD9EF2D91F0EF330E7
            94A4F628B8F73DB3D0915850569F9AD32DFB5095A3AF2AB89FB65BC17DCF105C
            AF62086E0B68ACE03EDABE055718F016086EA521B886E0360B43705D3004B705
            18827BAA1982DBDA407B81723A2BE3E29C63D443C355C17D1704573204D76B18
            82DB020CC13DD50CC17513AE82A9F7FB13401E633EBB323AEA54E09A093E7195
            DFA5A3A21C1FCCF9ADE14B33FC8FAE02BF8482DB3F445DBDA61F7EA33004D705
            43705B8021B8A79A21B86E023C51554C1F8856CCA32215F3C888930C0F53CCC3
            42EB3F4364F31024B4FE3358360F0E52EA71A80C097698E0FFA4B78F7CD9A060
            79FADC2D3803430F344D7C555E8DD8A874EB1BA8E0221867BC304E2EF16C1C86
            E0BA60086E0B3004F7543304B791689EEB186873387D0E67AFA0B08E08770AE9
            D010C53C044413057448B00802CBAB0C0F93D4EF8C8EC239EBACF9C178BB79E2
            2CCAFCD05CC46E7E680E657E743E6F7E6C816C7E6CA143E5F1850ED3E30B6432
            6E1677C9A4B9D4ABB3B75385169E2E6144AA8216290B27F194204B8C282BBCA4
            48F8016A8B0B79C4B7C27F94CEBB7BAA4C06063AE385828F7518E38BF16E9C66
            1882EB8221B82DC010DC53CD105C1DC6C62A27C03C1909DEA2D35385BC02CF74
            78980C222A9A47468AE6D1D120A43358F3C4993488A70062299B9FF99235FDFB
            1B8BE9D5D536D37FBEE34D6FFFE030BDFB936CFA68136D9ABCB5CE346D479DC9
            6FA7C5E4FF97F333E06FD614BC473105ED71A804E3E76E99F8FDC57485EFDC14
            9B6C19F74D81F5D975872C2FFC70A8EEAD4DC5ECF41DC7E5B0BF4AE5F83DE5C2
            67C995B66FB26AEB7E3F42B30F476E91BA3E102F92F1F18C793CC4EB8118C93C
            2A02451F1E0261F820C0F83B85B87EF802BE7332BDCE3C48060640F6E90A5067
            C310DC166008EEA9D6E905173D570DFC3F8A108A91D3739541A024F05E41B022
            4410271EEEC19B1E9D27989EFA8232BDF015677A6DB568FADFCF76D3E4DF6B4D
            BE7F32A6E0DDB22932992371E956323BD74EE6E4F1646E9E42E6E52322995FC0
            9385078103084716C0E782031220C3FF1D2A0BF0F3A002886461A14062B20432
            751FC293E9093CF14B944840A24202921412982292D0147B97A8FDD61E8B72B8
            2B62926593FF4E9E4CD96631BDBF11047F8D687AF12BD6F4CC120ABC671E1E0C
            3CA49503EF1C05D8993614E111A78870327CA73F649FAE0075360CC16D0186E0
            9E6A9D4B70E39DC2AA892BA617056644387AAEF5C301F5E3AA23408C464749E6
            093369D3939FB3A65756B2A6777FB699A66EA349E02E814426DBC98C0C9ECCCC
            92C8EC1C11C4540031C54F99CCC955E09A42666503590A7CC7495CFAA9C4A6CB
            277FDE8F385C38F55A0C109DA6902820128848514878AA8384A6CA242C4526C1
            C928C03289857050C0E7427CE6E48A100709E2C990A8140ABC66C9E4F30763FA
            E017BBE9B555ACF9A92F18F3A4D90CE48300E915417C65C0611E18B0ABCBCD6F
            F780ECD315A0CE8621B82DA0B308AEBAF0C1105C4716086E1FF80EB9B57EA519
            0A2C8EBD62B77A488802E2229B070562575B50C7589FF88C35BDF8356B7AE727
            CAF4E956DE14B49706616455519D930BDE2A08D9BC3C89CCC941A1AD17D62C07
            08AA83C4672A2A33321C20A2273955484F0A2872E2FF6967067F1FE782F637B1
            2EDF890222418063213C2D1E1827671CE12100F1452F7B7E0188711E8AB16002
            213685EC634DD3B633F030B19B5EF99635FF7391A3CBD8D83D5DC6C4F4278AC3
            0C59A82B429D893620B8FB50701568D8ED6F2F857AC15D778EA5BD8F4C5B570D
            824BB7630FB7E65895CD0E6939EBD2DE0E2EB84AD6A14AA5CFD3F31572D3C750
            8E20B4F8726B709004822BC07D78F3E30B19F3AB2B19F3479BC173FD9B064F90
            25F1D0859F97CF93F90744F01681025915ABD9390ED56B456F1545F584E881D0
            45BBD0502C3D81AB0023338078147708D3352EEA77EB853F3E13E38F22EC50D3
            E31CC640C03307119E952D9008F09403FFB690F0C4F590C6B7E11E83E01E5703
            DD203F7505A9A3E35DC1E5452576F51E85F40992A1614B20B8ED65B73015105C
            05045759BB335F9B4A73BA290A3D710AEEA510429131ED4E7015D23F98EFF3FA
            D24AF0706D909AB36E5EF3E9821D8A6958386E5EA36E5FD9CE0457B9EFA933EE
            A580FF970B8AABC4C14FCDE6C995EFA0072B9A1F9ECB999F5BC690FFAE67C8B4
            6D2C8948624080703C55208B8A44B2F0A00C42A48007E814D7192054289CAE22
            A609597BA3611A305DF8E0404F18D33BBF40219F15A217ECBC1E9D6A85EFA4C2
            DFAE0302802781BB81AE90B7BAE2D411F1B6E0CA91DFEEE1494F7F8E0C08C17D
            62DBC77EB8F5902161F25523A3C44D8987B0ABAD2F4420B89370F39AFEED70F3
            9AE191F0200C1206FCDF724BFD90C2D93C5CF9E3F9DB25CC13105C0904B77D6C
            CF0898C6415AEF9826DDFBC43C6E6F5E89DE4305D32C1E2AABA387E37EB803A2
            EDE49D9F05E2B79321912928B282FA52EAB342090446AE1F633D555C552F5547
            B83A120D1F26F8FF330F8514001B80206012703BE4B1AE487524BC2AB8A2244B
            CB366750170C0AB193BBA63B4C0FCD746ECEAD4EFC6EB3A8431FA6076215DC68
            FBC64933A98C43D53C24E74C9E1FF766FCAF56F0E05932385C363F18D7F64517
            F31F37201F142A939EBEE2B3413F7295758C7634CB193DDCF015BBD92E83C338
            D22F50368D8374E206E46DB92C316E78DCCE03508F6FFE94EFFDDC224BF6911A
            D70DC831AD522523890925341BF6E751FB2D517BEAC8F4BF69323B176703E058
            2C0A2C8A8A0202A380D0C8EAE7E90263E0442F6F8A80AF81FF00FD807F40BEEB
            0A567BC7AB820B261795D6B14F4F594393CBDF15C890506743C56359DAE20B34
            149007E3D07393D48308BB4F11DE9CB9C54673224E143FA3106D4E2862AE9A38
            9321B74C06CF0FF219DF70B7D5D310F0818747CF8C8F73905B3F95BA0D0CE1BE
            DD9ACDE0D9E998967AF44C493B5861BFEFC5C53672EB64D1342C42314F8474C2
            7DDAA4A73B0EC0B84D9AE9807254BADC3A990B5DBAD3AEC8EAE9B6B29597C4DC
            6A8EFB3EBF8EF9BF8D47D8EE73325973708A40E2B34168A1BBEC1C7BD566099C
            140FF4EA4E151383C6C300FB8139C013C09DC025501EBAE2D51EF1B6E0AA5DB5
            BFD28F32773C32DB4EAEFF9057C773474529B8E186DAF85178DB02905E7C1104
            6955482F7F99DC315518FDFA12E65085F55C2721A027CF072CDD65BFB0971F0B
            5D5719BAEAE021437EA310E985E52D20BF4D5AB9DE0EF1EC3E997B3D7223536D
            63D1833F63FAEA0D7F2F2CFD2D93BA625494FA70C1431AF17ED865571F300DC3
            F31258B7D4715BF46CFB053ACC57BF27BEF2E1370CCBB01CA33884AD876DEC87
            5B8EB20316E7B05784A570C427410464129C029E6CA683CC045020D461024360
            3D80049402BB8058601C7039D42F5D116B4FB405C145CF49FC3DE5303BE2B52F
            19F588F4BB7D243230C4F9D26624881384E33C06DA0B601A210E64B87ADC8C42
            EEF491BBDE1FC4FF6BFA5A6E7F61250AD159C5B6DEE43A8AE73E59B88DBEA897
            3F0F622D9201F06041E1C5B441DEE310453DF0FF56A33ECC13E974E0B141E48E
            E992E9D629DCB301EBE9C2328BE6BD9F338D80C24BB230777D8AFD2A3CA7EEA6
            4F24D2DB5FC17254F312C3399956D778B406984E858C897296279E4CD12F50E9
            76F714F1C9779752A987AA6CFB6A15F466B93B62D2781058814CDD2B398536D9
            39550A5F7AA96FEE0D916D4544201F5801BC005C05F54C57CCDA03DE165C346C
            C8AAF0EE3F54294C5DB08DBBFB89391CE913C0913BA70B2870A4A79FA47A95AD
            45EF7A7AF94BE45E5F99F4982691BBA60B383E39F4B52FB9E86FF7A067ABBD5C
            411A634A0DC50B73562730439FFF8C267D0259D263BA48EE81F4A9E105803805
            E0A7A315A90F17D309797C273CE87A07F0F73E3A8B0E58B48329AEB469693C97
            D8A29D28474951B8EF76E653E3FFF735DDAD7F283C60A641394E77962186D7AB
            D5D389403D8274DE0DE579AF8F7CD9B060A1F753739827FD7EB085FC5664FB70
            770D7DCF823C9E4CDD279269FB641294E414569C1E85E054297D4130683D8E00
            EB81FF03BA435DD315B5B64C5B105CCDD4C6CA8892F8D3AE7C6EEAFC6DD423EF
            AEE006BDF485D0E38979D61B26CCB05D372ECE76FD8371B6EB90091E64BC931B
            26C55BEE7E6A9E0D44967F72F2776CE4D77FD3BBB38E71105157B16DACE0A261
            1AC55D6947589FB9DBA987DFFB96EFF9D402EABA71B1F495232285ABC013BC6A
            54A4A3D5C0F046448AD78E8DA1EFFCE75CFB983797B3EFC56DA67FDE95CF708A
            8C69C4F836C7D474661757B1712BF6B28F7FBC8ABBE789B9D4B56362A92B8747
            09578D8C9475E3E321AE1811E9B87C58847CFBD8686EE4F3F3A9173F5EC1BD18
            FA33FDD4FCDDD67FAE2BA27A7F7B9823A1692288AD4CC2529513227BCAC20083
            36040E37AC045E04EE84BA769AB0B555DA9AE06A4892ACF047CA2C62427609BF
            714F9165E5EFD9D66F366758566CC9B47EB325D3F2CD6FF0F95B96CDFDE0FD33
            2CC8AA1D39962D494596B403E57C590D8D43079A086934D6FBD34CFBAE2C88B2
            70B8D4226E4D29B62DFF25DDBEF0BB4461E19A0479E1DA0447ABB126418170C5
            651B52ED1BF71CA4728AAB794E105D87499A923657D3FE16F3473C5E65137E4F
            2AA2966FDC6F85F0F885DF41B87AF1F108898ECFD725293F6E4C9177EECCA27F
            D97BC03A6FE761FB73EB0F33772C29E4BAC6E748240C97B602B1690A88AC31C3
            A0FD5005A0C7FB16D02E3CDEB624B80D4D6BECAE8DB721DAEFDC49C3FB6B9F68
            DAA73B4C0B0FC5ADA502D75CC3F0307D18BE964E575A6AAEF7D2C2D1C26A4DC3
            F0B81C4A61A6EDA9E1EF5D7290BB282E4B2491E90A8982868BE3B3D880B59556
            A737ECB681163F0D1CE66829AEF7D30BB37D60037E029E02AE83B2D615BBB640
            5B145CAD71366CA4AD0D4EF2C74F2D2E1AEE30ED3EAE9FEEBA77530CC3D4C4CF
            9371D0EEED4A6B18862365D772C2A77F9633F7CFCB652F0DDD2F93D054DCAC45
            51F70B5027E743A36D6B82E32A84AE7153F74DA87F71870F0A279816677AA200
            FC6CC8C9EBF09041EAFF16EFA32DC8705D98A11776DB07871AD6020F011742D9
            EB8A9E37692B828B0DC35564F9A2E3B5DCA6DD07D9CF37A4D92357ECA9095FB6
            AB2EE2EBDDAD46D8D2BF6BA356ECAD5BB229DDBE23F9107FA4DC82C309AEE39A
            CD110DED6F5451AFACA3B9B4FC3261476AB1F47BD221796BF261476B02612ADB
            930F4B893925C29172757A1B3E64DCF18071FD5BA9CECEB1C979A5ECF6E443D2
            D6E4438E6D3A717113CAB6A42265DBEE3CE5AF7D05D2B6DC7236E0EF32A6DFA2
            1C814C4F10C9E4BD12094C54549169EB62E2F4409D431C71EA820A854400B8AB
            5758B243DDD12B50DDD5CBA1EEEC15902411FF44F84C747E3644BB8EDF0B54BF
            EF2041490A095587531C706FA71847E3908A3AB482E1CBCE38E0EC0CF87FFB11
            5F5C48310FE807F54F57F8BC455B135C61474A3113F0E54E6AFCFFBE617A3D39
            9FBB61E24CF692D191F68B874750978C8C6C352E1E11495D3A2ACA7ED3C478A6
            EFD30B84873FF8960B59FE37935E588ED3A450789B63984E716FFA513676E53E
            E649DF1FE811AF2FE1FBBFB858ECF7FC67CAFD2F2C72B4261866FFE71789C35E
            FD827F68F26ACA67D11FCC8F7FE472B4283776BADB990CCB522A3C5E27CC5993
            C83CEDBB8E1AF4F2E7CCFDCF2D94204CDDB8349BE7F173B1E3FE97BE70DCFFF4
            7CA5FF23B172FF67E68B8326FF4CF79D9D4C5D1093CE9180648984E0182D34C6
            B6F4320CA7999D9805511F2F1CE20803F14341F4D92793690992FAB0989EA090
            E9F07FDF44860425DBBB46A57157CFCA946F9B97E5B86B4196D26B5136D7EF8B
            5CEB802F73EB06C067FF2F736D2AF8F317B916F8B9EEFE2F726DF83DF8BEFA77
            57CE4C974D701F129C64237E705F1F352C19C291205C11C20791564519C4B8DE
            13D68BB35EDABC8F00FC0DBC0D5C0AF55157005B9BB620B8D8A8A5520BCD857D
            B58B1AF0E262465D1EDAD34F0064D227505177135377146B45FAD77FE28AB27B
            7C71DA9478C1D0087EFCDBCBD9451BD2A82A3BDBD8F9A968EA03A5A48E12A397
            EFA247BEB888B97044142EF2E0492F9CF2A64D7BF373B42E10264EB943FA06F2
            6450187FEF6373F877A27FA1930E94E31257F4781B6B5A3EC89C2C73CB7ECD64
            1E7E77057FF9F0080EC2E1C93D7EA25A9EBAF168063DF1D3DF41EE0B7440D938
            48F78F1DE4960F4532208C254F7FCB928F7630E0D1F1205E3208056E1CE3DD97
            61AAC70802353303C40AC06BB80F6D1078AB28A653F7A2B8C2E73E01C48FBB30
            2C55EC1E9B2EF49E9B651BB52CDFF6E4BA42E9E59F0E49FFDD74C416B0B3B476
            767225BD2CB356F92EAFD6F1437EADB2B1D0CA6F2BB6DBFF3862B7ED3862B703
            543DF0B30DFF6F83DF531B0B2DFC0F0575F21AF8BBA599D54A7C5205EDBFB3B4
            E6BD5F8FDA5EF9F9B0F4CCBA43D2A86579F6FBE665D97ACC48172E8F4C1340FC
            5988A340A680004F0530BEF8400885B8AB53E7EAD3D43605F828B00418077553
            57045B136F0BAE2AB687CB2CEC3F7DBFB777EBE9C790BBA68BB855231911A1E0
            662FCE450F5E45C1956F904685F40D9271EEECA583C398FFC66EA24A2C2C76C3
            CF25BAAAD81694D472AF05AEA72FBAD78F23B74F8334C2BD86862B6424DC1BD2
            0979899F90A7AD497DDA300E98BE01210A08A3426E9DCC0D7EE133EAF7A4421A
            E2DED8E961AA575B6DE7B8C98BFEA02E1F12C6909B3FC525D00AC11DC44EA453
            2F1ECD01EA1E3224C441FAC1037150304F9E59C29280BF59323B8F27B3722412
            8BFB1B601759B7217A1E1C16D03C411C778D004F1105D60FBAF6D3D08BDC2782
            07295C1D09E23A238D1EFC452EF7AF3585F4FFB61CB5CD4CA860D7E5D4097F82
            88E6D5B2F60A5A146B5949B6F1322FC80A2B3B14D7FD3BF053AB87DA67435C7F
            8FE07F645971F03CDC8F12641EEF5F498B526E0D4BFD0922FD535E9DB430B98A
            F978FB71EB0BEB8BD811CBF2B81E33D3E91BA2F6F35D029304F084712A9D447C
            203D8120C061903E1460D50B46116E901FDE250B781FB81292AE2B86AD81D705
            B7B49612FE2F7C0345AEF8802338291E84165706E92EEBD596FBB6262E61E36A
            25553CEEF291BADDE3C7BF1EB389A258E15C82241557DAB84953D6D05D6EFC84
            036F5946F1C1554FCE7C7409C35BA86975AE0453CBB41F3CF0AE784FBCE39F73
            E83FD28B195939F55C6D1DC3DF2B8C20F11FCCDF469F77B70F476E9B2CE36A2E
            75192DDCDB8DE9C4CD8364B89F621E1EAA98070588E649B318D3879B29322B8B
            278B8A24323747511BBCBA53956EE3F31C189E1626BECCC2296741C98ADA35F7
            4B924C0189C26561C9EC1D7332E887561E60DFFDF5A87D7946B5F07BB18DCAAB
            6199724A14ACBC2C709222822A6AE2E88A9AD72EA0B9FE7C2ED3FBBB86A861C1
            0F0A88BB0062CC5531A25464E139F0A0E9D53975ACFF9F25F4BFD616D27D3FCB
            61AE8A48E35401C6E37A709C18C78631DDF8922E1AF2C1753644C3FC6A5D2CC0
            57406F489FAE207A1A6F0AAE2248B2BC7043AA70FE7D01D040A7CAA6076728EA
            8622D8B0F4C2F436B81FC0F838D9343A465DB57465FF20EE87BFF2CF35DE297C
            F2D90EBBA94F20075D5F190448514F0B688B69445184FC374D887780078E3B68
            09E33F5AC59655D3AEDE949EA98DF4B38DFBB90B864771A4C734C8A3480537C1
            51CB532FACA683F513F74B96CD63A225F3B030D93C3858303FFD85DD14BC9726
            9F1DC48DBE657543196FEC7170524CF0A59C4CC253C1EB4B96418444105CF18A
            19FB8521CBF399F7B71CA3BEC9A8A1D2CA69E6A89517C0ABE42545D166C36882
            8A869FAE75AAE1FF5BCB5CC3C5F8E12E46924D90C532BBC0E55573ECCF791666
            DAF612E68115F9F41533D219129C0CE29B8067A5E1913DCE177EDA0E6ADE175E
            1948021E014C901E5D61F414DE145CB9DAC630AF4580777BE32702AEB787C6D9
            B4387807D5C38234CBE7F5F217DF8ADB4C5968EE8CBB8555D432E2C0D79770A6
            9EBEA2EAD58E6FA30F1357D02B7D70860387172E1D1767FF35A1A85A9295B38D
            E7CA168AA3267EBAC6060F155E2D4BF76F268F5EADA48AEDD010D13C3A4A30BD
            B10E4F5560C8FC7C91E0F12FAAD88157A5DFD03C038A078E0FCF4C97556F0EBD
            3B5FE866072673D7CFCE629E5B5BC4C6EE2967361EB47205359C50CD4A02A897
            EB6C10346F08A93B0CE3AD8A701D278B872C9CB0BDD8CEC6EEAB605EFABE88B9
            6D5E164B02933875E821281187771C6A3EC57B793CDD092E13C68DD05B75FA98
            3705572A38566B1DF7DFAF6AC82D9379E23C5EA77D9CF830163CDC9191B27940
            88F8D094D5556535146ECEAD2BB8A907CAE5BE2F7C2699FB054820B8EDE7440B
            F04C499F40E982A1E1D4CCB5893534279E4D70A5FCA33575035EFEA286F4F4E3
            4CCECDC7DD975675C8038710C2253C33CC347116677A6F03076287A7D8E2C186
            B8072D7A2E7A0DCBFDA0C86A6FEAD1934691C5B1CCA9FBF88BA252B9892B0AD8
            809D25CCE6422B9B53C989565E9DF581F9D792991F6DDD4E88AF1DD25B50CD71
            DB0FD9D84878D84CFCF6007B61741A4BA6EC13D4A979985F988F33EBF3B061FE
            B61E38C4F0257017C45B5720DD8D3705574C3B585137F8C5C595D075E5C8836A
            D7B33D78B89876F525907950A830F1D3D5E520B878DE976E434AC83DAEF4FFF7
            62C57C7F30EE98D53ED287A0E0DE17285F303054085ABA8BB3D2BCEE03A5DEA4
            ACC3557590CE6AD2D39FC5178D9847BAF76D2A4EB175988704437E074AE67F2E
            E2C9F4ED78C22D7AB51289038FC9D95DF5BCD7A4092DBE14C2AE32BEAD9FB207
            BACE097CCF3959EC1B3F1F6697EFAFE6F697331C2DA87B51685E6C433AA2354C
            23A65DC6B1E8EC2A965B9651C3BCFED361E6EED9E91CF14B44E1C52D2F71AC17
            F215F213676F7867A8017723DB0E4C80F8EA8AA43BF1AA879B76B0DC3AF42568
            A4B77CCAD70B6EFB00D33E32CAD16560A8F8E8B4B59565B534BECDD76D4829F9
            A58E012F7FEE30F70B76E01685BAF76B8B380557B970509812B8E42F05045737
            7DF526E71DADB10C7A153CDCDEFE1CCE2CC13CD2BD6F5340A145F11E14880736
            0AA617BF624DE1493C59502081E0E29EA988E73D5B4D68F1679CCF3B3D5122BE
            89C235D1FBF907BE2EE002C19BDD76D8CAD6B09220CA8A2A3480263C9DD5B4F4
            23B2A828128E57EF3C62677DB71F67472FCD632F8B54B7C144E1954868B27381
            05E6B37784178FFC7905E2AA2B94EEC2AB63B8E98515B6E1AF4023BDF953A11D
            0B6E1508AEEBB12CA7584A41597B165CC78583C31CC1CB76394070EB53A46B4A
            FED11AEBA0D7BEACC539B76E135C14DB21C1B27944186F7A638D9DCCCA66D473
            C3E233516435B1F59C678B0D1FC161035C8515ACBE0413AE8B4E639E595744AF
            CDA9618ED9049E12404F0C916D8CA9E26BE765E99085E7BFCEAA611E5E7390B9
            222A0DE74C0BEAEA39CC677581457DDEEB958BE72807A60217433C7505B3A5B4
            05C1AD3504B70DD274C1B581E0D6B94170B11E2A20B60E7526C2A848DEF4BF1F
            ED644E0E4BE681678BB3109C22EBF9610475592D803B89F9248AE747A4B2CF7E
            5F68DF5468612A2851909CDEAC21B2CD339C7226955202FFCB412BF3AFEF0AA9
            AE21C92CE4B3A42E618E57F35EBF5C3C0B8EEBC6001E39DAC710DCE660086E43
            73A7E0E2CB36F46C15105CCEF4F60F3478B69C3AE5CB7950A35E23712FEA3E06
            D0B5C5868F9B91FB25702396E5D95764D63065B4C80BF2894D8D0C6B99619B91
            A07B2015D671FC92D42A7AE4D23C96F82688640AE43B2E2776EE29A15F4E9EC3
            0A84021740FC7485B3B91882DB1C0CC16D68EE125CF46CD56104D3F070DEF4DF
            F51478B4E0D9E6E3F0C1C9B99C9E02457656867345D8943DB8A7007BFFE21C06
            A7756554302C2FA953E334A135BCDA961BE6A1968F322BCA426229C547FE55CA
            DC35378B5657E24DD92BAB1BEBE08C86D6155EF4744380F3216EBAE2D91C0CC1
            6D0E86E03634F708EEE8287C3986736D39F2CE4F34999DC3AAD3BE70ACD6939E
            ADF6961C5786F925C8E861DD362B9D9EF2FB517B4A19CDB2E209A1751508C3DC
            6B6ADEC23FB24D9084EDC536F683DF8E7277CECD14D4176BBE09B8939953785B
            6FA80145370A70DBE63786E0360743701B5ACB0417672338C556368F8BE3C87B
            1B29F06A39556C9DC3089EF36CD1AB55A779A5E26E5CD2F921C9E2D36B8BD83F
            8FD8299C4F8A6973C130CF9B9AD7B2E2902D9C2C6E2FB6F3F882F2A2D014E750
            038EA7CF80876FEB892E05CC02DC32BC60086E733004B7A1B54C707118617818
            AE24E3CDE8D9CECBE3D539B69E7D29A6BD74C3B9A0B8EDA170DBCC0C7EC6BE0A
            BE92110568F01D799142730DF3C3D5D3D77EF684A961A0F09650022EA0B0DF31
            3B93360724896A79B5EED26D0698095C0471D215D2C662086E733004B7A1354F
            70D1B3C57AE79C8D2098DFFA9E25737279322B1BA77B797A7EAD4C7083EDE024
            994CDECB0F5F96C7EE3A66E759F1C4CC03C34E9A2A7E00E60D3E88106DE59C96
            5F9ECA37F5DE94288BBB8E53CC846F0F50F070E44810949BF3FC39CF4E0D3C09
            7ABA4110175D216D2C86E0360743701B5AD305575B41363C4CC14D684CAFACA0
            C8CC2CF06EF335B1F59CE0E2CB9718B8FFB404A9AB7F92F07F1B8AD9B4729AAF
            F76A51380C3BD564C81821B58C16BFCFABB32E48ADAEFD3CBDA666E3412B9351
            CEF08AA29C712F1137992ABAA2EC10332B59EE835F8FDABB8526D3C427C1B9A4
            1B4FA5D02B67F7837BEBBE0E71D115D3C6E075C11DF6B221B86D124F0B2EEEBC
            3632C261EEEF279B9EFE8281864391CF0A4575CCF664775FAFD2371F6DBA179E
            603065AF74EBAC0C76D6BE4A0EF79A55A0EB8AE9A8C7B09326EE3846316FFD7C
            981EF9452E7FD7BC4CE6BAF80CFB8DB333EDBD16647178EDA5F587A8AF326A18
            7CD905DFF754FEA9A28B0FC5524AE417265752DD676730B87F050949767AB99E
            1FD7C53A990B4C84B8E80AEAB9F0A6E0AA4B7B07BFB8B89ADCFC49BB5CDA6B06
            C17D78CA7715A5CECD6B3AA2E0AA4B7B0396FCE5B09C5D7065105CE74A33E7D2
            5EDC4B41FFBE087AB6A32215F3C040D9F4F03C9E84EEA3C9E78785135B2BEA57
            F69681428B9FB8710A78B5A396E7B3BF165918DCEF15E30F18427BBA89BF1EB6
            317D176653DD40D8CC3E0992C91FBAF2988780C92F41C66B5D7CF6F1D744A531
            6FFC7C98DB739C1224C789ED26DD9DA7783F55787949117E3A68A127AC3C4093
            90245E1D62C0CDE6B5F3D73C078AFB6EA059E7A5795370C5ECE26ACB88D7BEAC
            24374FD636AF691F8C8D514CB879CD805071C227ABCA4B6BEC67DCBC2631AFD4
            71FF4B8B417083DA9FE0F609942F181426062DDBC583877BB6C623E51457D50D
            7869710D78B8B879CDD9770AC35564B864775C1C67F2F993258B0A05322B5B21
            51E079EA57F296A136C234050F4F34852473CFAE3F4C15D4F22C784BAEE39086
            9D6A4A760DC7DEBF348F327FB24754F7F75557F9610F04F313C0DE086E4D8942
            E79BA074F9640FDF7B510EF3E7513B0E31784A74D154D1456FF7B04DE0DEFEF5
            087B556C9A600A4EC12D32B5B1DD53EB807B41D1FD11B809E2A12BAC67C2AB1E
            6E498DDDF6B4CFBA3A72DB141EEF7556AFA82D81DB330E8F94BBDD1F2C3C17F4
            635DA545DDBC46B7D1A61DA890FBFD7B9164EE1B249F38E5A13DA00A6E8074C9
            8808EAB39F526A195EC4067426930E1EAFB50CF90F78B8F70570F060C174EAA5
            15AFC9E661A18A79648460FADF4FAC3A23614EAEEC31B14550188292E5AE4189
            FC9BBF1CA18EDB053C1A4913044F89427B3455C8F0535014F1F5CDC5CCF9C1C9
            3C090721730EF59C217F01EC4184A4C8A629FBF867D71731C55601BB449E7C98
            615C55E0C92906EE2C67AF88D98FC30BA2FA70D58BA77BB1019180AEB09E096F
            0AAE62630471FAA23F5953F7A93C9EA7657EB09D6C403E36562683C2A47FF409
            E267AF4DE42445765D81748AD5585961E8FF2DA5CDBDFCF1A1025E5D13F3D91B
            40D99AC6C73AF038A06B1E9E45EDCA386A859A7D36C1953941649F0CF88122BD
            03783234C279048E731682CB7D637136820CDEAD607E7A0963C206A22DD9D5AF
            D42D078FDA816EB0D937917F7BF311F68895775DC46088ED49D3F203CB59FC26
            BB96B9694E2667C20D7B1AE331A2E84683D0819779DDBC2CEB2F85562BDEA7FE
            BE9E369912147EDA9FC7E94BC292591294E88CB3673D5DBC773EF018A02BAE7A
            785370D1943F338E71F73DB390325DF5BE808264C2531FDAEA113B2820E36315
            145B538FE9C2FDAF7E491F2EABC327F9D91AAE18B7661F75F1A030164FFF358D
            070F0FC548EFFE6D8549F1785AB162BE631AFF46D426BACA429FEB6588DA5857
            EEC8656E181FCB923BA649EAC365C20CD7B15C4C332EDB95CC136672C46FA7F3
            A48699599E3BA5211EBAC0BE894A97E909DCDB9B8AE9C35601BBBAAD2100EDD1
            4E886D052BB1A3BF29A0BB04250A242AB5712FA3F03B38B41098245F392BD3F6
            73A1D586F7AABFAFA74DAD7F359C2884EF2A652EC74D70FC939CF3B83DFB220D
            C3F809B819C2D715D886785B70654956848DBB0A983B1F9FC39A7B4C15C143C2
            D3144074417841DCD44F7CA3ED4D301E80094FB6EDE52F77BDC75718F0EA17F4
            D6B462AD6B7A5631AAA538FEDDD9BFB117F7F6E34D774C9520BF6467DAD4F439
            85DCBBD4E7333C4CC6442BE45E5FB9CBF51F72E3DEFD86CE2CAAE21CE73E4412
            0DBF23CC5A97485F392A8A31759F2C9201C1B209D3883D17F46E8785E27964BC
            E9FD5F6832AF4020B3739C6F97DDFBA20C3D0F3C44526DFC5D7D12B877416CCB
            29511B573404F77453050B900459E1DFDB7A94EE1291CA93D014A9515E228A1A
            9ED01B962A9B7C12F8B77F3D4255D0923655AC35F35B6124071FFC77197D397A
            BA78A69A53749D75422FEE2D475B14D115C2D7155957BCEEE122B869F396E443
            FCA39FACE2AE1C19C59BEF0B14D523C907060321D07D8730BCC5C050058503E2
            2399FB0488D78D8BE5FF1DBC5ED897578615AAB15D26A5B48E16A6CEDFC6747F
            2086EB0AF731C1FD487FB8EFA030453D2E1D8F8557896C25EAC3C253888784CA
            64408844FA814042DCFED13F84FBD7A7ABE8A482524E761E70D89834E2F7644E
            96F9C53FA7327D9F9ECF74EDE52F905E01CE740E08924DB889F8AB2B71F72F86
            CCCD856E9FBAD5A25E256E09D0C8D22412962C770D48E4DFF8A598AE62D5C6DF
            9A0DBFBD9926B6E297193594292A9575AEE652C54A2F8F4F05B7528C4CC3DE84
            D8F38B5C6A7F25838E486B8BAD66B2E850F8A0BF4A98CBC352B8FA29631AFAF1
            6F3995C0CB80AEC8BAE26DC145530B1BA9B2B37CF48ABDECC47757303D1E9BCD
            5F353A5ABC6C788474E98848C7A523A2BCC2652323E4AB4745F3773E36877FE8
            E395CC929F53982A1BA3096D532A942C280AFFF5964CE6918F5672773F3A87BB
            6A54B470D1F070D13C245C00D1733238AC95C0F0C20413847DC1B008F18A9191
            E26D13670A435F5DC2842FDB45955A181C2A694AFAF0BB588E68F2EECC63ECCB
            413FD2986F570F0B172E1A1828767D62216B0ADE4391050744129BEE99461007
            F78C4895CC0149FC73EB0F31658CA80DF92086E99B22C90E71CF718ABD616E26
            63C2174FD1F0D0C2BCD4CBE3D3C1A976329E5BF675562DBE40D6DA87B7F25C86
            272CF7C1EFC7E80BD1530F4BC563743CE5E16AF74D07BA43D8A789AC2B6D4170
            B582D110ABAD34BF615701E5B3701BFD46E406F1B5889F1DAF476E0036B61AAF
            866F70BC16FE93E3ED985FA480C57FD8B7EC3948DB580E1B6FC3B3AA1A6BDAF7
            251C62D8B0338F9EBE703BF742F04FDCA877BFB6F5FEF7A2BA7B9F5F68E9FDC2
            226B6BD0F3F9CF2CBDFEBDC832F8ADE5B67FF97ECF7E34FB77FEAB0DFB9943A5
            16F44EB4B1372D9D8D31FC9E6BBE48A0BEFCCEFDC54CD082ADCC6393D7B0D74E
            FD9D22D1990C9991A975F1DCDB08B0EB18952693C02471E0F20226AB8AD58611
            9A928ECE645A59C9A59428BCB2E1881DBAE1028901B1753E0CCF5D3E383B2138
            5931F9270A2F6F2CA6CA4F1D4AF0569E63F8523527710FAD2D62CC6129023C84
            B5977FEEAD7327EF67077068C10C61EB8A2DD21604174D2B1CB5F0114194651B
            C3E3F1DB4A9D9D7378051BEBC0F0298887289DE85AB7B4F1AAE914217D705FA9
            8E62851270990B8E56DB730E575279C5D5746B9073B88ACA3B526D2FAEB0D1B5
            90D1568A573801FC1CF709949A5760703F59DC7AC446F5989F458127A4AD266B
            58715B06767DA3A05105248B37CECDA4771EA370F59FF6E068695A3AAAA9E58D
            FBFCAECAADA3BB06A7B0EAAE69CE9741E72E237589749A034F2CBE7B6116B3A7
            545D7189F5C7DBA6B63140CEAD61D981CBF319535032BE006C8AD7DE1C0E0203
            215C5DB145DA8AE07666C34AEF2A74AD896B989E3299931D7CD0BE1A9A84A4F1
            24FC4483D6ABB0CD031B7E5C1A746B13A54B62F6B3AB726B69593156909DC354
            41827FC4F44A96EDFB790E4DA62668E58265746EC1C5CDDAA7ED53CE0F4AE616
            A655D1A233CFDB527E635CA46D47ECCC9D0BB358AC1F6A0FC873D31079601570
            C64DCBDBA2E06226B9E22DF3643C1ADEDB5BB89ADEB5961A4E6F10D7E45BE82B
            235271DDBBAC6E20EDEE6E5D3C34A08024F9FC90142E7C4F19C59F5CAE6B08AE
            BE619E60DE48C729817FE1A7430CF9740F7A80CE9E825E1E3704378C094B514C
            9FEEE19F5F5F4455B3526366ECB4B6615C10F1F3F46AE69AB8741EEA093C5450
            7475D2E41E6A814781362DB85AC6206A45A8077FF696E9C5438B6373CCF56FD5
            7B4BD0DF86DE3C5F6B675980B1C0A7C5CE719E87656B6C0C5B073FF382BA820C
            E3A3A1C5B3B9E9D40CFF5E2E6724FEF1EF0A2932652FA71E5DA3ED69E02ED0BB
            0D4F914D7E89FC333F14D15601DF979C920EC34E37B5FED1A22CC4EDABA04940
            22477C931432AB496583DB5A8AF77C96CDEC296B3343097AA6D603780273EFFD
            76943E2F2899C7192C1E145CF4727F06AE8470DBB4E0AA95A0DACA88078FD5F0
            C9F925F4F694C3FCD6A4C30EF86C55B6A91C9212B28F3385476BB86A2B2D4004
            35F16D6E23C6BF93185E928E9659843D99C7F8353B72A419ABF7DA43BFDA551B
            FEF5DF481D606905EA4296EDAA89F87AB765E9A6FDFCCEB46221BFB89AAF5FE0
            D0D2746A867F2FFE72C8CADC149706DEED5EC9ED628BE0FCCFE909D2AD0BB298
            3F8F530C542277C4BDA39B5A17532B68B61776B571AF8419198D1FDBC4720C4A
            922F084E62E6A7563192734F8AB69AE7A82BAAB6A45732ECA065790CF14B10D5
            051DF8B0D64B5FCBC143281F8730DBA4E06241C99575B4B827FB381BBE7C17F3
            F8A7AB983B9E9A6FBF6C623C77F98478C7950FCD6C55AE9814EFB87CC20CE1D6
            7FCDB53EFAFE0A3AECF33F98BF338E33168AD3BAAA4D35B58257D4D2ECEA2D59
            F4ABBEDFD3B7FC732E7BFE03D112191AC693C1A11C191CC6D6833F7B1A960C0A
            61C99030CE3C2A4ABCF6E1D9DCB877BEA68316EFA052F24B591B2768E9C47837
            B721E11A77FEA3EDC7F14519EEE6A440D75FAF72361FB55B9BAA7401EF76F21F
            C769BB20BBC6DBB0339B52CB4BC207DB8E33E0DDF224143CBEC6EE298B6FFAF1
            45D9277BA427D715D2C53675F55E5B7EC8697518EB85303BB592B92C2CB97E03
            730F38004E70C6C20CA01B84D9660457CD0801FAD549B925FC8BBE6B991BC7C5
            B2E7F70B16C87D0192BAF0E17E1547ABD34FFD9449BF4089F40E90BAF5F4E36F
            1D17C37C3C73339D555C851B55BB8A11D2D05C7FA788922CEECD2DA59F9EF29D
            EDCAFEC11CE9E927C2BD657541002EAC18148A8B3BF0B3F518581FE680104827
            A4B56FA074C17D01C2EDE36399B0AF76D9CBEBA8964EA99213CA69B6E7023C7D
            153C0AECC2B9BB1B37235D269FEC13872CCB67736B3816226978B767B613F511
            0A545C9557475D1EBD9F253E09CED5648D1EBB853C9F96A05C119BCE6E2A3C31
            85B03DE439C6512E6544EEB1EF0A19D3B404C1793E5A231F344D03EF89FBE60E
            8330DB8CE0CABC288B6BFFC8E5EE9D349325377D2A901ED370692F884188838C
            88749846457B15323212D217A290DEFE0AB975B2447A4CE547FD6729FD5B4AB1
            EB9423A4A1E13555ACA094C5F57F15307D9F5940AB1BADF798060F9160858C88
            7298C640386363BDC3B8FA4F284BD3C8280778BD0AB94F4DA7D8ED8E69ECFF66
            6CA68E55D99ABBE393BADB54F8BE72BA8B3F7850FEE0DDE2A9B8FA95B3F90427
            CBE707A530CB336A58684E2D79387406D3EAAA9C55C532F72CCEA6C8D4BD0289
            84AE350ECBE8E56F4370E55958AAD4D537918F4FA8A4A18CDB5B8F02E3296D2E
            B6323747A732C4579D95E1A9FD16042002681B822BCB8ABC39A188BD6DE20C9A
            5CF0362EE5051188534C13E31DE609B87F01EE6310EB5D300E136738CC0FCD52
            8589F4F495C98D9FF0BD5E5C4C27E495BA8A6E43C382557F97905F46DFF5EC67
            14B9FE234863A0627A10EE87F7C4FB431EEAE66D6B83717930CE619A140F220C
            E9BC71B2426E99CC4E5BB08DB1D29C96C6C6342AFC8E5AA973EA7876D837050C
            99BE4F2411D8A8DDD67D43EFC1C9D4BDE23F7F28A22B6875355963E2D7590DF3
            4615DB6A4614FEBDE108457CF6092404BAD53375F3F874D00BC6C503FE89C273
            1B0ED356E789C6EDB147014F09857B7DD311BAAB5F227AB9CE17AF7A696E19B8
            BA6D17701B84E975C155CA6A29F1C9696B1972C5FB3C766DCD8FCC82F063CFBE
            71B537C04DC371C36C1025D3C4190A190C5DF17BFDF887A6AFA379011753E956
            3855742449965E8EFA85217D0204ECBA9B27CDC49DC29CF7D40BCBDB60BCE021
            639A38D341AEFD50BAF591596C527E99B69F82DE83A5A1A98D1A10D7E55B987F
            44A7395F503857F8E855CAE6802F7724DC10BB5B6832F7435E1D0399DD5EBAB5
            DE322C1309375C5F9353C390D0541CC36CFC2200F400F1255360B274FB67D974
            4E35DB9E86121A9A5A3FB71EA3985B67A43B37B8F1C4CB5CA753807B2CBC09E1
            795D70C51D69C5D42D0FCF6248F7290A993453518FCA6E6A1C5A1FF5A1006916
            AE7F622E9F5250A6ADD36F6878BCB3585A6367EE7B7D29631A122690515120B6
            6D3E7D4EC00B27F705C8178E88E4E67E9F6C032717BB8E8D695CAAE04A8A4308
            DF5DC674F14B64A1618BEA9EB4FA95B239E00903124E621FBDB280CEAFE15908
            B439C31E9DC9540720BB9AE5FA2DC9A5403871CE2DBE286B9CE0E238672078C3
            21C9C2A2B46A1A0F73C4FB01ED31CF312F64488473BA624012AF6EBCE31448FD
            F4371F0E980BE17957707949E667AF4DAAEA3A20D40ADEA2629A005D6CBD30DA
            1ACE2100850C0993AE9E18CF2CDD9C510DA58762D4D014415484FD072BAA6F7B
            61B1C534389C378D8A3AFB395F6D093CED6170A842EE0FA6DF9AB1A902E7EE42
            9A1AD3B8548FFF80956727AC3A48AB2B7BD417136EF52014756395A06461497A
            15CD494A53863C3AA3A90253C749FC7FB71CA1C8F4048E44A91BD3344E647028
            28344586BFE3C7AF3E48553A3703D2C4B6BDE639C65B5A965D435F1195CAA88B
            21E2D4CD94F4F3A0F9E038EEEFC055109EF70497E2452EE29B3D95A6BE4116D2
            334031B723C1C56372C89070F99A49F1D482F5296592F3C54143534410820C10
            DCBB5E5A5C871E6EBB12DC71B10E322CC241FA0652CF87FC585963533781694C
            E3C24628AF3B60E1AF9809DDB540E8AEE11422F7BD9440B19549448A74FBE739
            54B1956FEB53925ACB30FD67435C9A56CD10FF04068705485C23575A39C73615
            326D9F78C3DC2C7A4F09A56DBBD8DE1F701877B99697F971DF14E066E5A2FA42
            502F0F5A068AF821E06908CF7B82CBF0221FBF3AA1AADBC0101BE9E9EF688F82
            7BDDA499F4925FD22B4070D1C36A6828B852CEA1AADA7B5FF9DC0A822BB63BC1
            1D1AEE20FD02E957223756D7DA58BD874A43531B20FCC306FE5D6A27A1C93C09
            01EF161BB67B0417EF2593C854A94B580A179D504E81778BF1D204A033992676
            F8A98A07FC83872A0A92E26025D90159A3E034390E32464E2C65B8BBE76753E4
            A33DB8F80445A071E2820744FA25CA1787A7B29FA555B96EBBA8D19E0DE32F45
            2454501744A7716A4FACB1F9D23458600184E555C11566AE49A83E6F602808AE
            5FFB14DC8766324B37A557412D470FABA1A9829B7DA8AAEE9E573EB7B54FC10D
            C3B9C8CC6B51BF54D7DA59BD874A4353BD9E3246649FF9A1C8AE8E8D39E739EA
            55C2E6804221918854E1FA799974761543D5AF706AEFDE56634D4B237E629AA5
            1A5A14124A68667D411DB724A35A9C91584147EC2DAF8BD85B511BB1A7BC7676
            528565717A35FBC4F78739E29B00A202BD0DDC2C5C3F7F4F05C76D7156C2B47D
            FCBF371C66EA78497B5FD151F25ACDC78C4A9619B02417871504F0723D31AC80
            F7DC0E9C07E17955706B4070AD86E0B6419A2FB85242392D0C5F5E80736F4512
            99822F66F42A61D3C131C7C854B11B08EE036B0E5275ACD816374BF1A4613AD5
            FD0FF657D0EC7210D2777F2966472FCFB7F7989FC95C15BF5F324582A7169642
            A984A650F07FEAB21919788203EE632137696A5E3C78C253F68AD7CDCEA0771C
            B577C4BC56EBAB203BF8177F3A642341492C89F688878B737D7173F2FB203CAF
            0BAEE1E1B6459A27B8D818F9B5F975D6EBE666D2EAD126D1A9EE9C54AE90F054
            F1B2E8FDDC273B4AAD9C7862AA5A67105C9912657ECF713B1BF657293D62491E
            7D5E442A0B5EAB805D7E129028A94B557108271449C6175D786CB94082921910
            5BA1492F2EF1BB78AF297B39BF3F8FD328F21807A023E535A605D3C486ED2DA7
            CE8F49E371F7330F8CE5A2875B083C07611982DB240CC13D9BA9821BBCBBAC86
            84A758C1BB756FC58586600A4F916F9A97216C3B6CB78B72A7105B4C9F9856C1
            305376945077CCCB60CC7E093C998E029B0C5D7EC8639C1F8BABC5A2D29C7B1C
            38C19FB18B4C111C9F6CECD964CE717267B97DB4471CF3ED01BAD0AACE50E9A8
            3D094C93B4A9C8CEDEB3301BF79510C14970F74E62989FE5803F8465086E9330
            04F76C0659E190DFD87C442081C9BC2A00EEACB8D1698A292C45ECFB551ECB81
            C7052DA5A38A001AA64B6125855F9A516DEF333B8322D3F671B82B1A094C024F
            1FBC57CC13F44471C84603F31B05336EBF00D801A6FEFFA7E7E7E9A030A0D848
            384DEAFAF874FAAF12F5D48C8EDC9350F3F93825DA9F585B68214189BCFAF072
            BFE0DA80A5C0F986E036054370CF66F2519B203CBEB648C23D0E9C3BEBEB56C0
            A6130344A6295D23D398E73614574358E875619C3AAA08C87582CCFBFD5962FF
            4760328DDE26785FE8C53AD44524B889FB99F316BBB0B8272BBE1DC7E5A57ADF
            D1C3F952326ABF7861682AFBD9FE4A0AE2D11187121A1AA68DF7DD558AE3DFB8
            82D1DD828BE07CDC3F805B0DC16D0A86E09ECD949D47A9BA014BF2ACEAF82D7A
            B8FA95AFE9C480C084A52A57C6677031FB2AAC105687165C4E5684C0BF4B2953
            40124326EF95D49739789C4DE35E403A3D55E76753CA00E7388BE6D05461C837
            05F63ABE4D9EE0E009C3078AE3B3F42AC11495C6135CE4A19F3F2D01CBA10018
            6C086E533004F7ACB636DF527EEBBCCC6A120C9516BD52B7790AE98A392849BE
            7B5E96635D01EAADDA48B4AE6E473369756E2D7D65542A4DA6EF73EE66854708
            E9E68B2EF85DFC3BF46E1B2B1EF837B848453285A5307D97E6D90FD6F29D4570
            317DD277F9757597C467D442EF4C52C7C1F5F3A9B960FE96008F7B5B708D6961
            6D9193824BBF0E825BD7480F77D1FE6ACB95F1E9E0E142D70C2B99FBBA66B239
            2049BC7F5136BFAB443D95021B8946473229CFC2318396E6D164EA3E3CDABB39
            BBACA1C8E270026E828D6BF91B23D64EC1C5A18898340A1E6EEC5B5B8ED135AC
            A4E57547364C9FB8F318557BEFE7B9B5EA4A3C1CBA71D774462798BF65C047DE
            14DCF6BCF04142C15DB629BD1204574F8C50704510DC5A105C5C69D6BE96F68E
            05C11DA6AE34A35E8DDC58D9C89566726C428574491C7856A1AAE0BA6F0C373A
            4DE91298C40E5B965F5350CBD5D687D7914C1335EEC31DC7EDC43F812721C9B8
            07053CB49A25B8386688A28BE0CF784D135EFC6C88536C63F753EA6770B2DC15
            44776D9E85ADDFA8A6238BAEDA5BCAABE5B847571FE441706578D081E03639DF
            CF06E6711530D32B824BF3221FB7726F55B701ED7669AF782D2EEDDDB8BF4272
            9E10DBD0507085ACA2CA9ABB5F5E6C01C16D5F9BD7A0E0429992BE01D40B613F
            5580E0E22AA3739912B2A7CC712176C7700E275632B7096EAAD22524851DB7BA
            B0AA8E95F0A5594733F5C5546239C3DEBB2887213E09CEB5FDCD6BF49A88E243
            0F45940134E1D5AEBB7E07871EF0F73480DF05F18532FC68B7F8F40F85F6629B
            80DB5F7664C1C5B42915ACE4787363B18304262A242CD913828BA7F92EF79AE0
            467FBBA7A2CBFDC116D2AB1D092EA00AEED070E99A4933A9CF7E4C2913CFBC97
            82B8FF4045D59D2FA982DBFE3CDCA161B85B18F57AF4A68A3ABBBA79CD396DCA
            CE128719BB636129CE9905FA95AFE9C480E086A67013D616D5309254531F5C47
            32145C3E36B182BA2C2E9D53CF18C3B9B47A79D13450505168716841F3785160
            F1DEAE5E2D82DF718A3176A77D12949BE766F0BF1DB60950C7D507821AD30E6A
            8CAC383EFDEDA8C3EC9F080E83470417A7866DF68AE04AB22C2CD9B4BFE682A1
            6176728F8FF30484B6BA297743C6C6C820B8F2B513E2B9AFB7645BA016EA0A2E
            0E351C29B75277BCB088310D0C9320AFDA8FE0C203104FA7E83230948958B1DB
            42B13C7AB8E76C709FEC28C1E95B786CB97B05373245EE169E22FC7B63312D29
            0ACE0DED688682C6FCF7B763B5E688348A44A6A218EAE745D3D1C4150515C775
            B1E1A3F0A2B82228BAA7BF60C36185E83461694635EBB2056687351604773208
            AEC973828B0FB564AF082E98B427A794EDFEC84C865CF59E4C1E9AE53CCEA6AD
            8BEE783C070C3CDCDE81D2550FCF62720FD768AB701A1A8A93248892F4B8EFF7
            1CB9C74F2483C2F0C40710DD367CE20382E5F0D04C07B9E643E9AA3131EC5F19
            471B7DE2C3E43F4A1C264F086E78AA727E648AF2FEF6636AF7CF195A87324C13
            FBD2C623952434C54AA2D43170FDBC683C9AD0A2986A5E2E0E1B5800ED851AD2
            708CD709AE620B4AB645EEA9C01DC771A7B08E98EF270C7742FAD8B3828B799F
            EE2DC17558685EFE78F6EF0CB9FA0386DC3E4D313D080D7D42BCFA865C1525BD
            30BD058AD02488DB986885DCEDA380F7C77FB860BB1DBC586D6278435305173F
            B7A71D616E7974364B6EFA58C2137AF13405D5A3C77B623ABD9956F4B8317CCC
            7335FF6738CF34BB7DAA8267B7BD37E35706CA4913DB7336388F0A6E549A3279
            67497D481DCE306F99E77F3E5C41429341705BB4BC141BB726B628A8E8CDA217
            AB79B2DACF9A006B63BCDAEF51EC71CF6107094CB284FC5D5E69086E8BC1F2C0
            7C4EF396E0AA82545052C73DF2E12A9AFCE33D9EF4F293E13E0A191DE5303DE0
            3C515615022FA30AD06810DA61E10AB9CB4732DFEBCB3D17F423536565506CCF
            E4F9E135F577905071E9E60CEE9609B11C9E884BFA05296404A47354A462024F
            5705F2534D73AB13837180B840398E8854D4937BEF857200B1FD97CF3AFA70B9
            B5495BF27DBA030437C2CD828BC213912A83E0CA1F6C3F8E71D1CBEFF66E9826
            FAC58D87D1C3B5AB430A2D135C144D14546CE428A44E1175FE4EFB8EE6FDBA8A
            2F823F73243849383F3A955D95574B410FA7A3CF5470D0D0523FF1EC182E9685
            D73C5C2C3C5574738BAB85177CD6B2A4A72F07822690FB834178A1E18F8A740A
            0274E151F44E8893A7718627C3CF8A6934A4711888639F4005BC3EE1820121EC
            FB719BE9E355766D4C53A3A1B9FE4EE104495ABFFB003DE4D52F309D22A45324
            F707C9644898ACBE9C42B11B1905E067A4F37876CFE10C6B4414A64D069195C8
            805099F4F697C8DDBEE2A503C3B877A337D98BCA2C4D9EF8FEC9F61210478F08
            AED22D3C857FE6E743764171A0B7D5D10CF399F3DB5566BD201ABCCD301CC36D
            F25E14D8A83521D504547FB8E054B4BFD3861E9C2FD70292986BE664701B0E5A
            04781A60FCB4BA8034FA21DC5E8C519C63B81E145C2C8F44AF0D29D41B169A74
            A4D222CE5D9D400F7B650945068480F04E9750E048F7A9A2DABDBD7D2A76735B
            87DBA6CA2AB74F95E0538D4397FEC1DCD83797D35FFDB29FAE767AB64DF5B4D0
            D315B28BABF9F02FFF6487BDFC25D36D4404437AF98BE41EF028EFF491C89DD3
            7972E73444F03010861A9640EE81707BFA81F88730F73C399F7DD9F7077AD596
            2CB6AC8EC6070A7A35AA978E09688C4DFDD343430A51A90A9EF230716D512D23
            CA75F5C175245305EDBB7C0B7BDBFC6C8E04244B048F126ADA1C5C4D58D19B45
            D144D1C56B7ADFD503FF16BF8F7F8F93FF85F3C1FB1DBDA2800BFEAB94D979C4
            CE329203EB8556273A94E0DA25C5F1E16F479C430AB8B5A5FB0517C7CEBF6F0B
            828B8527B1BC24ECC938CA7FF1530A3B79D66FDC139FACB28D7A7D0935F2D52F
            A451AF7DE918F59F25ADC36B5F2A8038EA8DA5D423EF7F6B7D3FF657F6CB1F53
            D894FC52569265ED6D2DC6BB29154EFBBE5C67E7C4BFD38F72CB3765D8A396FE
            254C9EBB557A2D7C03F5BCFFF7752F04FC60793170BDD5C3585E08F8BEF6DF41
            3F5AFF37E3573EF48B3FC545DF27D35BF615F105476B788864C334228DB2E0DD
            658E0B5068715F51AC64CDEF169F4A4C9AD225389919BBB2B0AA86113BEC3CDC
            3A4EE626AE394893E90978AA6E53F34F134BECBAA237A50D23E87D570F679969
            FFC75DC6A2E1EFC353C47F80E73B74710EFFEA4FC5CCC2942AE6EFE314C7C98A
            F6506E74FD68A3A6D6F172789AFC67C3610778F6B86F87270417E7E17EED6DC1
            45736DD8324EA7B2D1BC70B8CC42271794B20939C7E584ECE38E84DC5622E7B8
            9298735C4C2928630F96D4D2568AE725E76AB2E6086D43734DA7C0F2A2646778
            A9CACAB065B594BDBC96A62A6A69DAA3D4D15439865547D3168A13184E9445E9
            C483A445698C4928C79566127808D8D0DDB95B986256579AE5D61EA8653BA287
            ABE5B7B024AB9ABA20228501D175E65FE31B3E366A1C8FAD03D09B42C13D29A0
            CDC3B9DF2EAE7AF34B944DFE49E2A5D1FBB9814B72B9FF6D3EC22C4DAF62134B
            68DE2ECA9AF8B64753EBFD010B273CB1B650508F83C71E9AFB05B71A98DF1604
            D7D5B4C68EB843E09A63AEC2E31A0777C6C3F59E1A5AB8AD895E3C9A6BCAFCB4
            4ACB15333CB097424CFD5E0A9F67F1BB4B29AD61B734BE6DD114BB20736FFE7A
            842653F609C437C1B9BCB7F18D1F87127009690D8065A0F79DE6119D86276EE0
            543185F826CADD7C93842BC253F87E8B7258105F7A6D5E1D5350C3F1D00DC4F2
            694FC30E1847696F0955D767495E1DA44F2291E0E1BAABEE3A41C1C54DC8BDB3
            97421BB78ED8905BC3E4EF0B2C15B7CFCBAA22C1C9B834D58D95365D310525CB
            77CDCB94D71658B486DCA4F1E5766472914DE027AE3CC080E8F224043C2E6D13
            F1B3E7A7AB878B8B1B9A329C7076D4B0EB451FCB155713468200A3E7EB9B209F
            377D9F746D782A3770691EE3FF6709BDB3D8CE965202C79C3C9AC7F5E1DED64C
            AD4BEB0A2CB597CFC2DDC2C059706BDD55C1B239063C6208AE61EE3225B194B1
            0E5B9E6F5305173D22FDCAD73CC293952BE3D3F9D0DDE51608ABC36F400EBD75
            F6C16F0A28326D2F6E64830740A2E89E2D4FB5315C145DF47471D6017E1FC1DF
            B9A73C34E1D704381ABC41EC828782F80627491707270B37CD48E7062ECB63FF
            BBE508BDE9A095A1045578EBCB4B2D32358DF59FDE36F581302FAD523045A6E2
            B966EE7B509D04CB250BE86708AE61EE32E5B84D14FFB9B650264149CE33B6DC
            E925C0FDBA45A5B14FFD7818F752E8C8828BA60A524625C33FBDAE9025D31238
            32799FAC76E9E3212FF0C487D3B70FD40417D1A677E14C05FCFFA982AB1DC773
            EADF370F4D8055CF17E287A726E003222459BA342A55B8735E26FBAFB5079985
            49954C6E158BCBB2B1ECDA92C78B71E1A7FE59527FE2438A7BEBAD137CF8E189
            0FDD0DC135CC5DA6488A437EED97623CD34C74BBE0E28BB3F01461C0D7051C2F
            6250EA904247165C442EB4F062F0CE12EE4E3C09D90784F7E33D127C3AB71044
            2F138FDC419C63BDB8F10C82C7D3F3000BD71832238325333378F8BE73BA5938
            FCAD364E89FBEDBAAB9CD003C7F071A7B348D5EB9571436F53488A707D5C3A3F
            6E793EFBEE6F47E92599D54C46A5BA21D2D9160FB59A1DB50BF4BFD615DA4860
            92730F62F70A2E3EE87029F537C04586E01AE62E4381E003FF2EAB052FC1AE56
            5CAC70EEABBCEA2192B72DC812FE3A42D19DE8D45E05BAE4D2CEA376E6D3ADC7
            A8618B72984B425358E29B28A8874AFAAAC7A4A3B039A733E1925C15F5671944
            4F2281891C7C8F21BE0900FC1C90C411BF4491F88170E34B30145FCC634D7CDD
            29C0B880033DDFA024D9EC97209D1798C45F1D97C68EF93A9F9BB2F538B33ABB
            8ECDA962719A9937C4577DA86D3A6463EFF92C9B01C1750E85B95F70F1855910
            E0BE537BE77C6F086E27375570D716D459AF9F9749E1781EEE63EBD6C61B9E22
            5E1EB39FF9E48F522B7F7207AB8E2EBA688A0CBD073B2FF305351CBB30B98279
            7A5D117DEF826CF6DA98FDDCA5E1A962B73010D69064018497C765B9EA674892
            600E4D952E894C95E07BECED73B3AC63BF29A05EDE506C7D70F541E6C6D999FC
            F9C129029ED20BDF97D5F9D328BEDA1133EE283BED1E587EE8F9E2831844DE0C
            0F8A0B7C92847F84A7F28396E4327EDB8F53BF16D998620BCF33D0838134B786
            F8AA75367C6F39D3253A4DAC1FBF75DF74462778CF42E019084B15DC0F80E60B
            EE4010DC11E18E798687DBD90D1B87BCBF8A93C6AD2880460C1E147A58EE3AAA
            041B6C54AAD42D32551CBDFA005FCD481CB416AF77475BD1501C54384991EB58
            49C8ABE6E86F326BE8D05DA5FCFF7E3DCA3CB1AEA86EDC8A03750F7C5D503B06
            18FFED819A7FFF74D8E6BFB354589651CDED28B6536594205A39892FA745FE97
            421BFBDE962374BFC539ECA53169C27921C9CED33A22D29CA72EBBEB459BC649
            F14551077107425214937FA27CA15F927055741A3BEA9B0226764F39B3F7989D
            AD8534C2835552E061539F76773F6065BB28734F7E5F6483870EAB1ED6A97AE5
            F5F1740F38869E02DC0BE1A982FB3ED07CC11D10A27AB8CB366738936058A736
            BBECE0DFFAEDB81DBA671C345E777A0BCE974220B857CFCEA4F694508CE03C4F
            CE9D0DB0BD18A619C7B1654692650B2749358CC45750227BCC2A3047AC020B30
            253681ADA6250E7E2FD2822C8BB2BA91F80930FF6A5849CCAD66D8EFB26BE9FF
            DB58CC765F98CD91B0541C82701ECD8EE3BDDA3429F77A7E4EF0DED88D8F4AC3
            B295BB86274B9747A609B7CDCFE2FE055E7CFCDE3226A98CE6A03BE389956DF2
            DFC729BAEFE7B98C7A96197AE07A716C19F8C26C0BD005C23B21B8A540D30417
            308DC121853005377899B936113304CFB2B7E327E40A6DD0B9807247EA66A7D7
            DACE8B491749307451B141E957C4A6828D4106AF483C2F3C5508DB5D46D978F5
            9043777B3DEDC130BDAE601E68DE7E43B4EB0DFF46037F27B2A22C16D5F1C29E
            E314FFE5FE2AF68D0D87999E207AEAD0C4B47DA2FAA2CEB964DB394BC29D2FDB
            B06CB5218748F0ACC352259C31D00DCAFAC6B8FDFCA045D9DC4B3F1E6216A756
            D2D9552C6EAAA40D27B5C430ED52C0EE72AA4B741ACE50C093A6F1A1AE17BF96
            80CBACE743580441C19D0234DDC34550704745C96454A4DCF7B52FE9FF446EAC
            7B2B6E73DDEB51BF585E33E874BC1AB5C9F261E48F9609D1BFD7758B4D838A96
            E16E8F011B85648A4895BA7F9E431FAAE378E86E76562FD7D55C05F44C9CC94E
            7C07FE9165C84FF47C8FD878FE8FC3766E714A25F7F28F45DCDD0BB2591292C4
            93E989CE591238F54F9DE900C28B2BE1DC25BE28BC0876EFC371C8211997144B
            DD4292C46B9C331D980FB71E63BFCBA96333AB598E119BB5A7037E57AE602476
            CC57F9947A68A7F34823F7D757E7F8EDD310DE09C17D0BA8029A2EB8C8B81899
            3C102399EF0F16BADCEBC775EDE9CF77E965D029E91DC077BDED63A1CBB0481B
            99BEC3461614486466967372BC7E856C2A4E2F1745373099FF3CAD9A663BD7CB
            334F9B2ABC08FC832FEA245156C44A5A107E3F646343FE2A651E5955C8F69A9F
            C55F828B0402924400E7DC9E9CE9E0CE61077518433DB918EFAF908064D93C3D
            51ECEA9FC45F3523831DB7A280F960CB31E6ABF46AA610BC738CB39A8A731B7E
            4FFC32AB86C2716375392F86A117879681F3A17F05AE80F04E08EE60201F904E
            8868D340A1766E643DFAC49EAEEA06DB069D0C2CFF21210A191C2292FF5BCB92
            B9B902999D23BB517011EC7A8A38D777E0D2022AAB8AE15118A032B7B48B69D8
            E9A68A2F0279AC38C557E4761CB6B151BBCBD987D71C64EF9A9BC95F1E992A99
            710F5F2402C069601E19F7AD17DF08F04603417C7D13A42E7E8962B7C024F6E9
            B585CCFE7286971AD7E3912B58897F78F541CA149828A87393E33C329C80E798
            CD0054B14550702F0156014CBD78EA89AA8141E31813ED300F0A94CC4F2E6648
            643203A20BDE836E656C2ECE976751A9B22930895B945AC5B0A23A87B3B1DE8D
            61CD37557CE11F75E801673BFC79C4C64DDB768CEDF3452E7B49442ADF2D2459
            30E38A2D1431AD47E2FEAE3A82F7046107F10D4D564C9FECE15EFEE990FD38C5
            E318EFD91EBE980671757E2D7D63541ACEBD95D40523EE8F23A6FB30A04E07D3
            40C13501AF03958021B8062D635C9CC33C3040814F9E4CFF83210B0A04323353
            8106A857299B83B311E338DFF44469DCAA8354412DCFA208D43726C33C6F98CF
            6A7EE314352B278B79552CBF1CBAF66F6C28A67B2CCC61BB86A6F2667F75A683
            44C2F1040B282F1436F73E7C9DC441DD9ABC4FBE737E36F77BB18D074FFC6CF5
            40A9E565EEA91F0ED9897F22EFA1A5BC08EE69B109B801C23C29B8F80F34944B
            81CD8070A2E1181834073C8B6E58A8C33C245830FD670D45E6E471646E9EBB87
            159C5DD5D014D91490C42C4CA9A6EBBD5C4374BD63AA0083F84AC76D829054CA
            704BF757B36F6E2C66EF5890C5760B48E2BA4CD92798FC129DFB41E06C046D6C
            D61D6287FB4B4C4F90AF9D912EAFCEAF93F9330B2EFE42FCE1A0D5E9DDFAC1C3
            C0FD9E2D82F7C41DDBFC20CC13628B9CF8011ACB702015104F341E0383E63230
            50323F349B21A1FB28B2E000BE3C707FB70DBDDC297BC4DE8B7398E40A9601B5
            35C672BD6F2876580E6215230ABB8ED9B9598915ECBF7F3844F704F13D2F3C45
            C025BE26BF24191F98D0F3710A6F4B663AA882BB4FEA3E2793F9ED909DAD9F6F
            AC6772918D671EFCF600ADCE33C61771CEE104FDFB361FF4E8F703FD214C7DC1
            45A0A13C09A40386E81A341F1C56181A829EAE60FAEF7A0A3C5C8ECCC995498C
            3AAEA757419B073650DC3760EA5EEE958D47E80A46D476A242C3867F264FC7B0
            D6332C039116156EDB211B13BCB3847974D541E69E7959DCA5D1A9BC39344554
            37ACC739BECE0D8F34F4CBBC21F83D1CC79DBA4F78726D91A5D82AD8214057C1
            D5EA01BEF4E3A7EF2CB59DEF9F8453DC70A31DFD7BB61CF46EC320CC53F41539
            ED023498A781FD8031BC60D03C50704747C9F8F2CCF4D8029644243164E141A1
            7EAEA35E056D3E3801DF3741BE383295FD2AA39A86EEA43627131B9DE1EDB62D
            C3F210EA3885FBF980859DB2E31833EA9B03F4CDB333F94B234174D1E30D874F
            9CE5D094317FFF24F9E2A8FDDC8A9C5A563859FE9A69F540DE74C84A83174CA9
            DE2DD645CF082ED6719C7B3B1CC23C4D5F4FBB8040A39908EC02EC271A918141
            53181BAB80972B9B4784F3E4C3CD34082E4F6665E35B65BD4ADA7C540F072AF9
            F40461D0D25CBAC872E22D35E2DAF00CF3BEA90F42F8472B1FB19C16D9EFF36B
            D9FFFC52CCF69897C55E129CCC770DC2FD74C1E3C58D6E70BF056D337B2CEB93
            9EAFF37A688AD26D6A02FFEEE6A374052DE22208D761A5130F5E5A94D9573714
            D3DD701A18AE2A432FDAB51EB90F3CC4F30BE05208F7346D3DED02020D06672E
            DC0EF8013847D706181EAF41E3412F776484C33C2448343FF3050342CB82E83A
            771073F7582E7AB9C1C9B80B15F7EEEFC7A84A46726D7886E8B65DC3B29124D9
            21D57292985DCD72782AF0D3DF153237CCCAE02E0D4D15CF53F77448C239BECE
            976DCEE5BF58D67217BF44E192C064F6959F0FD345753C0E27352C73556CA1D7
            2384EF2DB75F1E0575107745C32D231B3B64D134B05E1F01C640B8BADAAA7B51
            031ACE85C0FDC0C7C07AE01840013C80E3BCC6343283B310EB300F0F05E10D73
            98FEFBA383CCC975905959E8E5BA792CB7FE854B40A2D4353C859D9F56C950CE
            F3B40CD16D3FA679A3E2312BCFEF3E66E716A656B2FFF9B998E9B9209BBB3824
            993BCF27413CCF2751BCC03F89BB22663F3BEE9B026A4E52255D428B672A6B75
            BEF0EABC3AFABA99990CF1C32D43A19E786EEC164FD9F80C5037AAD143F7A21E
            D080BA030F03BEC032E07700C77A0B811200E7F1561B189C605C5C95795464B5
            796040A5F99179E5A6A0DD3499978715D3FDDD396C44382EE79B205E15B79FFD
            2EBF0EC7730DD16D9F866585E52656B392F047B18D8BDB5741FD6FE361EEADF5
            87F829DB8FD3ABB36B99AC2A463B35A261D9E2FF710A98B4EB18C5DEBE309B21
            FE49A2EA199F3A2CE14EB04E67037740D8BA1A8AE85E3C17D0982E00EE031E02
            5E04DE04DE05DE333038C1D858278383DE360F0C7CC33479EB97645636A57AA4
            9E105D1C5A88DA2F936909C29DF3B3A82D4556063C1C7C89A289AE61EDD35040
            71A3229117242C4F6DC848CFF0BB58D6726615CBF5FF3297513758C725C778FC
            8F67C416C1A3E92743B8BA9AA9A17BD1C0C013904585578317BABEBE82BA5F70
            116C50D128BAFBC461CBF3E894725ADBCEAFA1176458C7342C67E90825724FAD
            2DA44DEA46F8A928B4DA619AFAF5A665605DFE05B808C2D6ADFB1ABA170D0C3C
            0554CA7F021640AFE2BA0BE7EE52D3F6F24FAD2BA20FD471E81169C30A86F076
            6C93EB38897B73D311FA82C044569D91E01444ED53AFBEB494A3C09310B66E9D
            7745F7A28181A7808AD90D080770277CBDCAEB1E704C170F569CBC4F78E1FB22
            E6609D3A5D0CBBA186E0764C531FA6B5ACC47FFCFB51FA7CBF444EDD98C67322
            AB812FCA62206CDDFADE10DD8B06069E042AE8F5001E3BA25781DD030E2DE0C9
            04BE090AF9680FF7F4BA423ABF96D53C5DCD0C8FB7631896A15CC688FC7BBF1D
            65BBF825F0044F3346B1F5DC982D8261FC0C5C0DE1EBD6F586E85E3430F03450
            49870179805E45760FAAE8027842C1A77B85C7D714B219CE235A344F577DB902
            18D63E4D7B60CA87AD3CF7DAC6621A1EB09CFA9075E729146706F74B180CE1EB
            D6713D742F1A18781AA8A866E01D00BB647A95D93DE0D0C2AC0C07094852C8E4
            047ED2AA83F6E472868138E08B346D5CD7B0F669AAD81EACE3F8373783D80624
            71EAF4AFF874771F75AE472DF00E84AF5BBFCF84EE450383D6002AEC15C08AFA
            0AEC39B0F1C5A72BEA2AA3E9FBF807571EA0F79618B317DAB1699EAD985FCDE1
            019334094DE148488A0C9EAD275F8E696018DF00FF8038E8D6ED33A17BD1C0A0
            B5804ADB13F81BD0ABD8EE033D5D5C3F8FE76F4DDF27F65994C3FE986FE11851
            365EA4B53F936D82CC6F2AB251FDBECCB5938044145BE731E79EF76C913F803B
            211EBA75FA6CE85E3430684DA0F23E00787E3C17C7F510DC956AEA3EF19A8854
            3E6C570953C1A89B9E1863B96DDB34AF563A6613D8A09DA5F6EBE2D219E29328
            E0BE0AAD28B659C03088876E5D3E17BA170D0C5A1BA8C44F01A5F595DA73A0A7
            1B9FE1DC896AF25E99F824B02FAD2BA2D22B581AE2A10D316818D6360CCB4296
            1487B8F32845FF73CD417B573C1E677A827C6213F1D611DB63C08923CF9B83EE
            4503036F0095F94D005F46E85576F732533D654051A70F7DB2971FBC2897FA3A
            B386A62575D31B6DF68221BCDE332DEF55B1A544995FBABF9AEEBB309B2653F6
            0AC437A1FEE1A98ED77A7ACC16C14DC5FF0771D1ADBB8D45F7A2818137800ADD
            05F0076840AFD2BB17F48A70AE6E688A034457BC342A9509FBAB94396CE5B5B5
            FA86E07ACF54A105C4FC1A8E0DDE55425D857BCD4ED92B9170282FDC3743AF4C
            3D031E771E0498203EBA75B7B1E85E3430F01650A92F05E200DCC859AFF2BB1F
            1C6288062FC92741320524728F7C7790FDF5908DA79D07539E699314C33C6B72
            352789BF1EB2328FAE3E6823C1491C0980DE08EEA7DC3AC3071A1C10099C0F71
            D2ADB34D41F7A281813781CAFD0F2006B0037A8DC0BDE0EE6533321C24063E83
            9270EA9874D38CFDDCE4EDC7EDE9150CC3CB0A8AAE3167B7750C870F843D2534
            F7CE96A3FC7533E0C1EB9BC093C024E7090F28B6AD27B8388C80627B31C44BB7
            AE3615DD8B0606DE062A397ABA38BC5007E83506F782A23B1344173F7188C167
            1FBE50E3FBCCCDE4FCFF2AE5F2AA39DC7BD5582CE17ED3866D64011E6C19950C
            EBB3FD3875CFEC4C10DA2489F826E25967CE315A9C61D2B0DC3C8715F003CE83
            B8E9D6D1E6A07BD1C0A02D80951DF810689D176931802ABCF50D3B30118F61C7
            462F8CFC3C8789DD5BCE1CACE31A2E9830C4B7E9A6892C1A3EC084BC5A8E0DF9
            AB841DB4208B36FB24B064F25E8904253B8516C76B5B7718013DDB694037889B
            6EDD6C2EBA170D0CDA0A50E9BB02D3816A40AF717806ED851A9E7F85676A4DDB
            27760B4DE11E5F75805E9E51431FB50BAE2FD60C6B9A619EA92FC40E5904767E
            72253DEE9B02A66B68324FA62638CF30C3875FEBBE18D3C0612C1FC0ED628BE8
            5E3430684B40E5BF10F804C079907A8DC473E0EA345C168C3F078210F8240A57
            CE48675FFEF130FB4D562D9B5BC3F1A01CDA5083616737145A7C4889E9950C8F
            D3F09E5A7788B9180F77F401A1458F167B185A7EB73E95007AB66E1D467045F7
            A281415B031A01EEA3FB32E0D915697A68DD593C334D3D311684D7374104A1E0
            477D738089DD5D46EF3E4EF1558C7AFC8BF182ED74C3FC902A6989FFFB18C584
            EF2AA5872CC9A32F0A4BC117623874209328C8D7D87AA16DDDE1038D02E075C0
            239EAD86EE450383B608340604B775C4E34C70BA8E5EC3F11C2804E881A1F086
            A72824205121D313C48B0292F81EB333B897C0EB5D9151CD1EA8E558E6F45383
            353ABA611AB534CB9CAC8885753CB72ABB967DF1C722E6F6F80CB69B4F228F43
            34EAD001CEA9D5C6CE5BF7A5982B7F020F427C75EB9D3BD1BD6860D09681C6D1
            1DC06963D805D46B409E455DE1A40AAF834480606057D8073C35DF44E1BAB054
            7EC8E739EC875B8ED23F14589863368107E541F1D5861D3A9A006B69D0D223CB
            8AC2975322F77B9195FD64EB3166C81779EC35E129BC3A6C807B130725E1D2EA
            FABCF4AAD0E25CEFCF817B21DEBA75CDDDE85E343068EB4023B90C78164802B4
            06D4FA637F9A60A09786D39770DF5D5F1095E064E1D65999DCA81505CC075B8F
            B15FA657B349C7298695146D7A99EB0B374DAC4E8856FD675B30D7F8A871827F
            5CE386BFC3F4F0F9D52CF775560DF3E1D663DCB81507D81E33335912982CA80F
            237FE80DE0743BCC337C58794F6435F01CB20F802B20EEBA75CC13E85E343068
            2F408319036C00F41A55EBA10D37A09044C3CF61AAF84A24304920E1A9E22DB3
            32840796E4D36FFF52CCCE4FAA64B71DB1B307AD3CAF28AA00A3F86AB88A595B
            B013420BA6892BFE9F2FA34521B184E196EFAFA13FDE7A9C7D1844B6FB9C0C16
            BC7E91F843DAFD92441202F9803D01EDC1A49777AD4F02F03CA05BA73C89EE45
            0383F604349CBB80394019A0D7C05A1F9CDD801E37BE0C0A4B55D49552FE89E0
            E925891747A6F1BD17E7B04FAE2BE47CFE384E2FCFAC16361DB25219150C7FCC
            2A08ACECD044581338FC445CCD55089B6B7AF7C070F0DA898700FCC357D0229F
            5BC5F15B8BEDD4AA9C3A31785719FDDACF87D8C14BF2B82B62D2591204E2EA87
            2FC0126512968CE9C67CC09561DE9A71A0070E21AC010642BA74EB92A7D1BD68
            60D0DE804684430CAF02BB003CAD55AFC1B51EAAC75BFF330E3720D12042F8B2
            0DC730FD1264935FA2D82D3849BC2C3295BF7E56867DC4923CE1B9EF0A699FED
            C76D5FA657F13F1DB4B07F1DA36CB879CB319B2095338250C74B1C2BA97B3C68
            42AC89A3364C7136B4EF6802AEFE2D2F3B780B2F73E58C281C81700ED6F1B8B4
            D6BEF1A0955D9E592384EE2AA55E5B7FC83EE6AB7CFED6B999D43FA2D3F8F383
            9305B36F22882C082CA64713597CA1881E6DC33CF03ED9C014E07A48B36E1D6A
            0D742F1A18B447A031E139693D806800C7E8F41A5EEBE33ADCA00A100852248A
            2F78BEA1205421C9B27AA4B76FA2629ABE4FB8C02F41B8222459BC2E3C95BD6D
            6686B5EFD23CF6C1D585D2D3EB8BA8373615D706EC2CB52D4AA914D6E6D42A9B
            0F58E41DC576FAAF12CAF2F771CA9A5CCED8F36A386B5E0D6BCDAE616DF89953
            CDDA52CB19DBDFC7280B08B875EB211BB3F9A045FA2EBBD6B128B50ABD55DB5B
            9B8FD63EFDE3217AC2EA8372FFE5F9FC1D73326D3744A6B15786264B17072489
            661F3C093741566716E0342E1C2AC0F8E334394D60D5F469696C33E0D2703CC6
            6928E0B1F9B58D45F7A281417B061A167ABB6381D540EBED3AD6583401D6C409
            410F382A15673D384518BD4614371C0BC54F7C19179024998392848B425284AB
            23D2E41BE1FBB746A749B7CDC8A041982DB7C56758EF9A9769EFB528C7DA6B71
            B6B5E7A26C5B2FA0E767D9B6BBE665596F8F777EA77BDC7EF6D6D834E9C6E854
            C7D55169F2C56129823938992781C962FDD00786E70C17E3812FBBD033C7CDBE
            D14BD7D2D03605D67508631BF024709D5E3DF106BA170D0C3A02D0D06E00DE05
            5200D746D936C1E9662A0D8418BD619C46851E65387CE26C083C9B2D38C901E0
            8C0851250849717E6AD74EF95D3DEA35F8BB10F87BF454F17ECE7B3BA76B6178
            182EC6491556171AC6B96D72100805FAE9D50B6FA27BD1C0A0A3008D0E37C019
            0ECC065A7F69B07B71BE88C317518853044F7F3185B324106DEC5843FBBDEBDF
            6B3F6BF776BD4FFB03E765E369BAE8D55EAA571FBC8DEE4503838E063640E071
            6025D076663318B8832A6013F006702D60D6AB036D01DD8B06061D116888C8D5
            C033C07AE038A0D7800DDA0778E8280AEDDBC04D80D75F8A9D0BDD8B06061D19
            6898389BE13A6012F02D5001E8356883B68700E0D001CEA77D1AB81E70CBF137
            AD81EE450383CE003454CDE37D005808B80A6F4718D36CEF342C837200F73E98
            08E0D04117BD726DCBE85E3430E86C40E3BD11780CC0156BF896DBB5E11B7897
            5C00CBE561E036BDF26B2FE85E3430E88C4063C6A186AB8009401880F338BDB3
            239901F6363603783C3996070E01B5F898726FA37BD1C0A033030D1B85F722E0
            76E015E00B2019689D032D3B2F3864B0139807BC04E01E1978DA479B9D75D054
            742F1A18183881C68E274DE094B23B013CE6E727004F9DC0832D45404F380C1A
            07BE00AB01303F71BADE6B00EE757C09E0D19317BC85EE45030383D30111B800
            F807D017F808F81E3804A070A0F8CAF5E8894B67075F7EE1A642983F34900F7C
            07E04AC0FB005C8EDD2145D615DD8B06060667068401871C502070EEE760E01D
            E033003743C723B6F504A7B3830F24CC1FCC273C3BAC3F80E3B2D87BE8304306
            E742F7A2818141E300B1300138DE8B5DE121002E2B0D06D07BC32D01AD809E00
            7574F0CC391C2A580BE08B2F5C6C82227B2B803D05DDFCECE8E85E343030681A
            2820008A6F17E07CE00EE041E0DF000A0E7A76F8D63D152801F444AABD82E3B0
            E9C0EFC0122000402F166717E08B47CC0FCC17CC1FDDFCEB2CE85E3430306819
            282C000E3DA0D0740570131D14615C64811BA587004B812D40229005E0FC5F9C
            86660758C0DB0B2F307C1EA0009CA65504A0D78E3336B602F8A26B06F05F001F
            2E983E9C5580E9C57463FA75F3A7B3A27BD1C0C0C0FDA0F800E8E5B90A31CEFB
            ED03E0FEBDD8EDFE148802E603286828C838F6892F998A01F48E51FCD0ABC4F1
            62DCEF17BBEF8D3DE502BF87628E7F877F8FB32D50E4715F89C3000E03E0995F
            28A8B87C7631100BE00C8D17005CE5D50FC0157AAEC2DAE9BDD7C6A07BD1C0C0
            A0F540A1AA07454B1364EC865F03F404B06BFE1C802FE7C2015CDEFA23B00F40
            8144A16CECCB3A14DB422007D803E0019C380C80FBC7E2FD319CF1003E04703F
            619CA2A509AA866E3A0CCE8583FC3FAECB4A19E011688C0000000049454E44AE
            426082}
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 0
          Top = 29
          DataBinding.DataField = 'data_agendamento'
          DataBinding.DataSource = dsVenda
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 190
        end
        object DBMemo2: TDBMemo
          Left = 0
          Top = 94
          Width = 414
          Height = 114
          DataField = 'observacao'
          DataSource = dsVenda
          TabOrder = 2
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 243
          Top = 29
          DataBinding.DataField = 'hora_agendamento'
          DataBinding.DataSource = dsVenda
          ParentFont = False
          Properties.SpinButtons.Visible = False
          Properties.TimeFormat = tfHourMin
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -19
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 78
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 243
          Top = 66
          DataBinding.DataField = 'hora_agendamento'
          DataBinding.DataSource = dsVenda
          Properties.EditMask = '!90:00;1;_'
          TabOrder = 3
          Width = 121
        end
      end
    end
    object AdvGroupBox5: TAdvGroupBox
      Left = 818
      Top = 11
      Width = 227
      Height = 231
      BorderColor = clNavy
      TabOrder = 2
      object AdvPanel2: TAdvPanel
        Left = 3
        Top = 3
        Width = 210
        Height = 83
        BevelOuter = bvNone
        Color = clActiveCaption
        TabOrder = 0
        UseDockManager = True
        Version = '2.5.4.1'
        BorderWidth = 1
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -13
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.Indent = 0
        DoubleBuffered = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        Text = ''
        FullHeight = 200
        object lbNroCompra: TLabel
          Left = 2
          Top = 11
          Width = 206
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Esta '#233' a %d'#170' compra do cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbTotalItens: TLabel
          Left = 5
          Top = 33
          Width = 206
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total de %d itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbNroPontos: TLabel
          Left = 5
          Top = 55
          Width = 206
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'O cliente possui %d pontos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object btEditarCliente: TAdvGlowButton
        Left = 3
        Top = 112
        Width = 210
        Height = 54
        Caption = 'Editar Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 69
        Images = frmMenu.imgListMenu40
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btEditarClienteClick
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
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 10
        Top = 172
        Caption = 'N'#227'o cobrar taxa de entrega (RETIRADA NO BALC'#195'O)'
        DataBinding.DataField = 'b_taxa_entrega'
        DataBinding.DataSource = dsVenda
        Properties.Alignment = taLeftJustify
        Properties.MultiLine = True
        Properties.ValueChecked = False
        Properties.ValueUnchecked = True
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Transparent = True
        OnClick = cxDBCheckBox1Click
        Width = 185
      end
    end
  end
  object qrVenda: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO venda'
      
        '  (ven_001, ven_004, emp_001, ven_002, cli_001, sit_001, ven_023' +
        ', b_taxa_entrega,'
      
        '   usu_001_1, dat_001_1, ven_009, ven_024, ven_008, id_caixa_abe' +
        'rtura, ven_027, cpf_cliente,'
      '   ven_029, terminal_abertura,data_agendamento,hora_agendamento)'
      'VALUES'
      
        '  (:ven_001, LOCALTIMESTAMP, :emp_001, :venda_orcamento, :id_cli' +
        'ente, :sit_001, '#39'N'#39', :b_taxa_entrega,'
      
        '   :usu_001_1, :data_cadastro, :total_venda, :tipo_venda, :acres' +
        'cimo, :id_caixa_abertura, :observacao, :cpf_cliente,'
      
        '   :nro_venda, :terminal_abertura,:data_agendamento,:hora_agenda' +
        'mento)')
    SQLDelete.Strings = (
      'DELETE FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE venda'
      'SET'
      
        '  ven_002 = :venda_orcamento, cli_001 = :id_cliente, sit_001 = :' +
        'sit_001, usu_001_1 = :usu_001_1, '
      
        '  dat_001_1 = :data_cadastro, ven_009 = :total_venda, ven_024 = ' +
        ':tipo_venda, ven_007 = :desconto,'
      
        '  ven_008= :acrescimo, id_caixa_abertura = :id_caixa_abertura, v' +
        'en_027 = :observacao,'
      
        '  cpf_cliente =:cpf_cliente, b_taxa_entrega = :b_taxa_entrega, v' +
        'en_029 = :nro_venda,'
      
        '  terminal_abertura = :terminal_abertura,data_agendamento=:data_' +
        'agendamento,hora_agendamento=:hora_agendamento'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ven_001, emp_001, ven_002, cli_001, sit_001, usu_001_1, d' +
        'at_001_1, ven_009, ven_024 FROM venda'
      'WHERE'
      '  ven_001 = :ven_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'ven_001, '
      'emp_001,'
      'ven_029 as nro_venda,  '
      'cli_001 as id_cliente,'
      'dat_001_1 data_cadastro, '
      'ven_024 as tipo_venda, '
      'ven_002 as venda_orcamento,'
      'coalesce(ven_007,0.00) as desconto,'
      'coalesce(ven_008, 0.00) as acrescimo,'
      'coalesce(ven_009, 0.00) as total_venda,'
      
        'coalesce(case when ven_009=0.00 then 0.00 else ven_007/ven_009/0' +
        '.01  end,0.00) as desconto_percent,'
      'sit_001,'
      'usu_001_1,'
      'cast(fn_situacoes(sit_001) as varchar(100)) as status_desc,'
      'id_caixa_abertura,'
      'cpf_cliente,'
      'ven_027 as observacao,'
      'b_taxa_entrega,'
      'terminal_abertura,'
      'data_agendamento,'
      'hora_agendamento'
      'from venda'
      'where ven_001=:id_venda and emp_001=:id_empresa')
    AfterOpen = qrVendaAfterOpen
    AfterPost = qrVendaAfterPost
    AfterScroll = qrVendaAfterScroll
    OnCalcFields = qrVendaCalcFields
    Left = 360
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
      OnChange = qrVendaid_clienteChange
    end
    object qrVendadata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
    end
    object qrVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object qrVendavenda_orcamento: TIntegerField
      FieldName = 'venda_orcamento'
    end
    object qrVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendausu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendastatus_desc: TWideStringField
      FieldName = 'status_desc'
      ReadOnly = True
      Size = 100
    end
    object qrVendatotal_venda: TFloatField
      FieldName = 'total_venda'
      currency = True
    end
    object qrVendatotal_itens: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_itens'
      currency = True
      Calculated = True
    end
    object qrVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
      OnChange = qrVendaacrescimoChange
      currency = True
    end
    object qrVendadesconto_percent: TFloatField
      FieldName = 'desconto_percent'
      DisplayFormat = '##0.00%'
    end
    object qrVendadesconto: TFloatField
      FieldName = 'desconto'
      currency = True
    end
    object qrVendaid_caixa_abertura: TIntegerField
      FieldName = 'id_caixa_abertura'
    end
    object qrVendaobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
      Size = 11
    end
    object qrVendab_taxa_entrega: TBooleanField
      FieldName = 'b_taxa_entrega'
      OnChange = qrVendab_taxa_entregaChange
    end
    object qrVendanro_venda: TIntegerField
      FieldName = 'nro_venda'
    end
    object qrVendaterminal_abertura: TWideStringField
      FieldName = 'terminal_abertura'
      Size = 100
    end
    object qrVendadata_agendamento: TDateTimeField
      FieldName = 'data_agendamento'
    end
    object qrVendahora_agendamento: TTimeField
      FieldName = 'hora_agendamento'
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    OnStateChange = dsVendaStateChange
    Left = 424
    Top = 344
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 248
    Top = 248
    object acBuscaCliente: TAction
      Caption = 'acBuscaCliente'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
    end
    object acPesquisaItem: TAction
      Caption = 'acPesquisaItem'
      ImageIndex = 0
      OnExecute = acPesquisaItemExecute
    end
    object acExluirItem: TAction
      Caption = 'acTteste'
      ImageIndex = 1
      OnExecute = acExluirItemExecute
    end
    object acInsereProdutoFracionado: TAction
      Caption = 'acInsereProdutoFracionado'
      OnExecute = acInsereProdutoFracionadoExecute
    end
    object acDescontoItem: TAction
      Caption = 'acDescontoItem'
      ShortCut = 16452
      OnExecute = acDescontoItemExecute
    end
  end
  object qrBuscaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_001 as id_material, '
      'm.mat_003 as descricao, '
      'm.mat_003 as descricao_old, '
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')  as varchar(100)) a' +
        's descricao_p,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39')  as varchar(100)) a' +
        's descricao_m,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39')  as varchar(100)) a' +
        's descricao_g,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  as varchar(100)) ' +
        'as descricao_gg,'
      
        'cast(concat(m.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')  as varchar(100' +
        ')) as descricao_extra,'
      'm.tamanho_padrao,'
      'm.b_venda_tamanho,'
      'm.valor_tam_p,'
      'm.valor_tam_m,'
      'm.valor_tam_g,'
      'm.valor_tam_gg,'
      'm.valor_tam_extra,'
      'u.uni_003 as unidade , '
      'm.mat_008 as valor_unit, '
      'm.mat_008 as valor_unit_ref,'
      'mat_004 as cod_ref,'
      '1.00 as quantidade,'
      'coalesce(ui.ite_001, 0) as ultimo_item,'
      'coalesce(m.mat_021, 0) as cod_impressora,'
      'm.b_peso_balanca,'
      'm.cat_001 as id_categoria,'
      'm.b_exige_alterar_preco_venda,'
      'coalesce(m.tara_balanca, 0.0) as tara_balanca,'
      'm.b_exige_70pc_valor_unit'
      'from materiais m'
      
        'join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_00' +
        '1'
      'join desc_tamanho_material dm on dm.id_empresa=m.emp_001'
      
        'left join (select ite_001, ite_013 from vendaitem where ven_001=' +
        ':id_venda and emp_001=:emp order by ite_001 desc limit 1) ui on ' +
        'true'
      'where m.mat_004=:cod_ref and m.emp_001=:emp;')
    AfterOpen = qrBuscaItemAfterOpen
    OnCalcFields = qrBuscaItemCalcFields
    Left = 168
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'cod_ref'
        ParamType = ptInput
        Value = nil
      end>
    object qrBuscaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrBuscaItemdescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrBuscaItemunidade: TWideStringField
      FieldName = 'unidade'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qrBuscaItemvalor_unit: TFloatField
      FieldName = 'valor_unit'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qrBuscaItemcod_ref: TWideStringField
      FieldName = 'cod_ref'
      Size = 50
    end
    object qrBuscaItemvalortotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      Calculated = True
    end
    object qrBuscaItemultimo_item: TIntegerField
      FieldName = 'ultimo_item'
      ReadOnly = True
    end
    object qrBuscaItemquantidade: TFloatField
      FieldName = 'quantidade'
      OnChange = qrBuscaItemquantidadeChange
    end
    object qrBuscaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
      ReadOnly = True
    end
    object qrBuscaItemdescricao_old: TWideStringField
      FieldName = 'descricao_old'
      Required = True
      Size = 50
    end
    object qrBuscaItemdescricao_p: TWideStringField
      FieldName = 'descricao_p'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_m: TWideStringField
      FieldName = 'descricao_m'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_g: TWideStringField
      FieldName = 'descricao_g'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_gg: TWideStringField
      FieldName = 'descricao_gg'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemdescricao_extra: TWideStringField
      FieldName = 'descricao_extra'
      ReadOnly = True
      Size = 100
    end
    object qrBuscaItemtamanho_padrao: TWideStringField
      FieldName = 'tamanho_padrao'
      Size = 2
    end
    object qrBuscaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrBuscaItemvalor_tam_p: TFloatField
      FieldName = 'valor_tam_p'
    end
    object qrBuscaItemvalor_tam_m: TFloatField
      FieldName = 'valor_tam_m'
    end
    object qrBuscaItemvalor_tam_g: TFloatField
      FieldName = 'valor_tam_g'
    end
    object qrBuscaItemvalor_tam_gg: TFloatField
      FieldName = 'valor_tam_gg'
    end
    object qrBuscaItemvalor_tam_extra: TFloatField
      FieldName = 'valor_tam_extra'
    end
    object qrBuscaItemb_peso_balanca: TBooleanField
      FieldName = 'b_peso_balanca'
      Required = True
    end
    object qrBuscaItemid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object qrBuscaItemb_exige_alterar_preco_venda: TBooleanField
      FieldName = 'b_exige_alterar_preco_venda'
      Required = True
    end
    object qrBuscaItemtara_balanca: TFloatField
      FieldName = 'tara_balanca'
      ReadOnly = True
    end
    object qrBuscaItemb_exige_70pc_valor_unit: TBooleanField
      FieldName = 'b_exige_70pc_valor_unit'
      Required = True
    end
    object qrBuscaItemvalor_unit_ref: TFloatField
      FieldName = 'valor_unit_ref'
      Required = True
    end
  end
  object dsBuscaItem: TDataSource
    DataSet = qrBuscaItem
    OnStateChange = dsBuscaItemStateChange
    Left = 376
    Top = 248
  end
  object qrInsereItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'insert into vendaitem '
      '(emp_001, ven_001, mat_001, ite_002, ite_003, '
      ' ite_005, ite_006,  ite_001,'
      ' ite_013, ite_012, sit_001, ite_011, ite_008,'
      ' tamanho, b_venda_tamanho, item_fracionado,'
      ' quantidade_impressao, desconto, b_70pc_valor_unit)'
      'values '
      '(:emp, :id_venda, :id_material, :quantidade, :valor_unit, '
      ' :valor_total, :observacao, :nro_item , '
      ' :cod_impressora, '#39'N'#39', 4, '#39'N'#39', '#39'N'#39', '
      ' :tamanho, :b_venda_tamanho, :item_fracionado,'
      ' :quantidade_impressao, :desconto, :b_70pc_valor_unit)')
    Left = 488
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_material'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantidade'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_unit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'valor_total'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'observacao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'nro_item'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cod_impressora'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tamanho'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'b_venda_tamanho'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item_fracionado'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'quantidade_impressao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'b_70pc_valor_unit'
        Value = nil
      end>
  end
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      
        '  (emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite_005' +
        ', ite_006, sit_001, desconto, data_hora_lancamento)'
      'VALUES'
      
        '  (:emp_001, :ven_001, :ite_001, :mat_001, :ite_002, :ite_003, :' +
        'ite_005, :ite_006,  :sit_001, :desconto, :data_hora_lancamento)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :emp_001, ven_001 = :ven_001, ite_001 = :ite_001, ma' +
        't_001 = :mat_001, ite_002 = :ite_002, ite_003 = :ite_003, '
      
        '  ite_005 = :ite_005, ite_006 = :ite_006, sit_001 = :sit_001, de' +
        'sconto = :desconto, data_hora_lancamento = :data_hora_lancamento'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite' +
        '_005, ite_006, ite_009, sit_001, desconto FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND ven_001 = :ven_001 AND ite_001 = :ite_0' +
        '01')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA '
      '     , ite.acrescimo    '
      '     , MAT.MAT_003 as descricao_item'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      
        '     , (ITE.ITE_002 * ITE.ITE_003 * ite.desconto * 0.01) as valo' +
        'r_desconto'
      '     , ITE.ITE_005 as valor_total'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1) * :flag_taxa_10) valor_t' +
        'otal_taxa10'
      
        '     , (row_number() over( order by ITE.ITE_001 nulls last )) as' +
        ' ordem_item'
      '     , ITE.MAT_001 as id_material'
      '     , cast(('
      'case when ite.b_venda_tamanho then '
      '  case ite.tamanho'
      '    when '#39'P'#39' then  dm.tamanho_p'
      '    when '#39'M'#39' then  dm.tamanho_m'
      '    when '#39'G'#39' then  dm.tamanho_g'
      '    when '#39'GG'#39' then dm.tamanho_gg '
      '    when '#39'E'#39' then  dm.tamanho_extra'
      '  else '#39#39' end '
      'else '#39#39' end) as varchar(100)) as desc_tamanho,'
      'ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    Left = 240
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 27
      end>
    object qrVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaItemnro_item: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'nro_item'
      Required = True
    end
    object qrVendaItemvlrvenda: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object qrVendaItemdescricao_item: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemcod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object qrVendaItemstatus: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemdesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      currency = True
    end
    object qrVendaItemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrVendaItemvalor_taxa10: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object qrVendaItemvalor_total_taxa10: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object qrVendaItemordem_item: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object qrVendaItemvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemqtdevenda: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrVendaItemdesc_tamanho: TWideStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemacrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'acrescimo'
      currency = True
    end
  end
  object dsVendaItem: TDataSource
    AutoEdit = False
    DataSet = qrVendaItem
    OnStateChange = dsVendaItemStateChange
    Left = 280
    Top = 336
  end
  object qrCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'c.cli_001 as id_cliente, '
      'c.emp_001 as id_empresa, '
      'c.cli_002 as nome,'
      'c.cli_012 as telefone1,'
      'c.cli_013 as telefone2,'
      'c.celular1,'
      'c.celular2,'
      'c.cli_014 as celular3,'
      'c.cep_004 as endereco,'
      'c.cli_008 as endereco_numero,'
      'c.cli_009 as endereco_complemento,'
      'c.cep_003 as bairro,'
      'c.cidade_desc as cidade,'
      'c.cep_002 as cep,'
      'c.cli_007 as endereco_referencia,'
      'c.pontos_atuais,'
      'coalesce(sv.nro_vendas,0)+1 as nro_vendas,'
      
        'coalesce(b.bai_003, e.taxadeliverypadrao, 0.00) as taxa_delivery' +
        ','
      'c.cli_004'
      'from clientes c'
      'join empresas e on e.emp_001=c.emp_001'
      
        'left join bairro b on c.bai_001=b.bai_001 and c.emp_001=b.emp_00' +
        '1'
      
        'left join (select count(1) as nro_vendas, cli_001, emp_001 from ' +
        'venda where sit_001=1 group by cli_001, emp_001) sv on sv.cli_00' +
        '1=c.cli_001 and sv.emp_001=c.emp_001'
      'where c.cli_001 = :id_cliente and c.emp_001 = :id_empresa')
    Left = 536
    Top = 144
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
    object qrClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object qrClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object qrClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object qrClientecelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrClientecelular2: TWideStringField
      FieldName = 'celular2'
    end
    object qrClientecelular3: TWideStringField
      FieldName = 'celular3'
    end
    object qrClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 125
    end
    object qrClienteendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      Size = 10
    end
    object qrClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qrClientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object qrClientecep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object qrClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qrClienteid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrClienteendereco_complemento: TWideStringField
      FieldName = 'endereco_complemento'
      Size = 10
    end
    object qrClienteendereco_referencia: TWideStringField
      FieldName = 'endereco_referencia'
      Size = 80
    end
    object qrClientetaxa_delivery: TFloatField
      FieldName = 'taxa_delivery'
      ReadOnly = True
      currency = True
    end
    object qrClientenro_vendas: TLargeintField
      FieldName = 'nro_vendas'
      ReadOnly = True
    end
    object qrClientepontos_atuais: TIntegerField
      FieldName = 'pontos_atuais'
    end
    object qrClientecli_004: TWideStringField
      FieldName = 'cli_004'
    end
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = qrCliente
    OnStateChange = dsClienteStateChange
    Left = 584
    Top = 144
  end
  object jvdsVenda: TJvDataSource
    AutoEdit = False
    DataSet = qrVenda
    Left = 424
    Top = 400
  end
  object cdsVendaItemFull: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaItemFull'
    Left = 64
    Top = 424
    object cdsVendaItemFullemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object cdsVendaItemFullven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object cdsVendaItemFullite_001: TIntegerField
      FieldName = 'ite_001'
      Required = True
    end
    object cdsVendaItemFullmat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object cdsVendaItemFullcom_001: TIntegerField
      FieldName = 'com_001'
    end
    object cdsVendaItemFullite_002: TFloatField
      FieldName = 'ite_002'
      Required = True
    end
    object cdsVendaItemFullite_003: TFloatField
      FieldName = 'ite_003'
      Required = True
    end
    object cdsVendaItemFullite_004: TFloatField
      FieldName = 'ite_004'
    end
    object cdsVendaItemFullite_005: TFloatField
      FieldName = 'ite_005'
    end
    object cdsVendaItemFullmat_002: TIntegerField
      FieldName = 'mat_002'
    end
    object cdsVendaItemFullmat_003: TIntegerField
      FieldName = 'mat_003'
    end
    object cdsVendaItemFullite_006: TWideStringField
      FieldName = 'ite_006'
      Size = 200
    end
    object cdsVendaItemFullite_007: TIntegerField
      FieldName = 'ite_007'
    end
    object cdsVendaItemFullite_008: TWideStringField
      FieldName = 'ite_008'
      Size = 1
    end
    object cdsVendaItemFullite_010: TDateTimeField
      FieldName = 'ite_010'
    end
    object cdsVendaItemFullsit_001: TIntegerField
      FieldName = 'sit_001'
    end
    object cdsVendaItemFullite_011: TWideStringField
      FieldName = 'ite_011'
      Size = 1
    end
    object cdsVendaItemFullpes_001: TIntegerField
      FieldName = 'pes_001'
    end
    object cdsVendaItemFullite_012: TWideStringField
      FieldName = 'ite_012'
      Size = 1
    end
    object cdsVendaItemFullite_013: TIntegerField
      FieldName = 'ite_013'
    end
    object cdsVendaItemFullgar_001: TIntegerField
      FieldName = 'gar_001'
    end
    object cdsVendaItemFulldesconto: TFloatField
      FieldName = 'desconto'
    end
    object cdsVendaItemFullorm_codigo: TIntegerField
      FieldName = 'orm_codigo'
    end
    object cdsVendaItemFullcst_consumidor: TIntegerField
      FieldName = 'cst_consumidor'
    end
    object cdsVendaItemFullicms_perc: TFloatField
      FieldName = 'icms_perc'
    end
    object cdsVendaItemFullicms_valor: TFloatField
      FieldName = 'icms_valor'
    end
    object cdsVendaItemFullpis_codigo_saida: TIntegerField
      FieldName = 'pis_codigo_saida'
    end
    object cdsVendaItemFullpis_perc: TFloatField
      FieldName = 'pis_perc'
    end
    object cdsVendaItemFullpis_valor: TFloatField
      FieldName = 'pis_valor'
    end
    object cdsVendaItemFullcof_codigo_saida: TIntegerField
      FieldName = 'cof_codigo_saida'
    end
    object cdsVendaItemFullcofins_perc: TFloatField
      FieldName = 'cofins_perc'
    end
    object cdsVendaItemFullcofins_valor: TFloatField
      FieldName = 'cofins_valor'
    end
    object cdsVendaItemFullmod_codigo: TIntegerField
      FieldName = 'mod_codigo'
    end
    object cdsVendaItemFullcfop_consumidor: TWideStringField
      FieldName = 'cfop_consumidor'
      Size = 4
    end
    object cdsVendaItemFullredbasecalcst: TFloatField
      FieldName = 'redbasecalcst'
    end
    object cdsVendaItemFullredbasecalcicms: TFloatField
      FieldName = 'redbasecalcicms'
    end
    object cdsVendaItemFullcso_codigo: TIntegerField
      FieldName = 'cso_codigo'
    end
    object cdsVendaItemFullid_usuario_cancelamento: TIntegerField
      FieldName = 'id_usuario_cancelamento'
    end
    object cdsVendaItemFulltamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object cdsVendaItemFullb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object cdsVendaItemFullitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object cdsVendaItemFullacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
  end
  object dspVendaItemFull: TDataSetProvider
    DataSet = qrVendaItemFull
    Left = 65528
    Top = 400
  end
  object qrVendaItemFull: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      
        '  (emp_001, ven_001, ite_001, mat_001, com_001, ite_002, ite_003' +
        ', ite_004, ite_005, mat_002, mat_003, ite_006, ite_007, ite_008,' +
        ' ite_010, sit_001, ite_011, pes_001, ite_012, ite_013, gar_001, ' +
        'desconto, orm_codigo, cst_consumidor, icms_perc, icms_valor, pis' +
        '_codigo_saida, pis_perc, pis_valor, cof_codigo_saida, cofins_per' +
        'c, cofins_valor, mod_codigo, cfop_consumidor, redbasecalcst, red' +
        'basecalcicms, cso_codigo, id_usuario_cancelamento, tamanho, b_ve' +
        'nda_tamanho, item_fracionado, acrescimo, quantidade_impressao, d' +
        'ata_hora_lancamento)'
      'VALUES'
      
        '  (:emp_001, :ven_001, :ite_001, :mat_001, :com_001, :ite_002, :' +
        'ite_003, :ite_004, :ite_005, :mat_002, :mat_003, :ite_006, :ite_' +
        '007, :ite_008, :ite_010, :sit_001, :ite_011, :pes_001, :ite_012,' +
        ' :ite_013, :gar_001, :desconto, :orm_codigo, :cst_consumidor, :i' +
        'cms_perc, :icms_valor, :pis_codigo_saida, :pis_perc, :pis_valor,' +
        ' :cof_codigo_saida, :cofins_perc, :cofins_valor, :mod_codigo, :c' +
        'fop_consumidor, :redbasecalcst, :redbasecalcicms, :cso_codigo, :' +
        'id_usuario_cancelamento, :tamanho, :b_venda_tamanho, :item_fraci' +
        'onado, :acrescimo, :quantidade_impressao, :data_hora_lancamento)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :emp_001, ven_001 = :ven_001, ite_001 = :ite_001, ma' +
        't_001 = :mat_001, com_001 = :com_001, ite_002 = :ite_002, ite_00' +
        '3 = :ite_003, ite_004 = :ite_004, ite_005 = :ite_005, mat_002 = ' +
        ':mat_002, mat_003 = :mat_003, ite_006 = :ite_006, ite_007 = :ite' +
        '_007, ite_008 = :ite_008, ite_010 = :ite_010, sit_001 = :sit_001' +
        ', ite_011 = :ite_011, pes_001 = :pes_001, ite_012 = :ite_012, it' +
        'e_013 = :ite_013, gar_001 = :gar_001, desconto = :desconto, orm_' +
        'codigo = :orm_codigo, cst_consumidor = :cst_consumidor, icms_per' +
        'c = :icms_perc, icms_valor = :icms_valor, pis_codigo_saida = :pi' +
        's_codigo_saida, pis_perc = :pis_perc, pis_valor = :pis_valor, co' +
        'f_codigo_saida = :cof_codigo_saida, cofins_perc = :cofins_perc, ' +
        'cofins_valor = :cofins_valor, mod_codigo = :mod_codigo, cfop_con' +
        'sumidor = :cfop_consumidor, redbasecalcst = :redbasecalcst, redb' +
        'asecalcicms = :redbasecalcicms, cso_codigo = :cso_codigo, id_usu' +
        'ario_cancelamento = :id_usuario_cancelamento, tamanho = :tamanho' +
        ', b_venda_tamanho = :b_venda_tamanho, item_fracionado = :item_fr' +
        'acionado, acrescimo = :acrescimo, quantidade_impressao = :quanti' +
        'dade_impressao, data_hora_lancamento = :data_hora_lancamento'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, com_001, ite_002, ite' +
        '_003, ite_004, ite_005, mat_002, mat_003, ite_006, ite_007, ite_' +
        '008, ite_010, sit_001, ite_011, pes_001, ite_012, ite_013, gar_0' +
        '01, desconto, orm_codigo, cst_consumidor, icms_perc, icms_valor,' +
        ' pis_codigo_saida, pis_perc, pis_valor, cof_codigo_saida, cofins' +
        '_perc, cofins_valor, mod_codigo, cfop_consumidor, redbasecalcst,' +
        ' redbasecalcicms, cso_codigo, id_usuario_cancelamento, tamanho, ' +
        'b_venda_tamanho, item_fracionado, acrescimo, quantidade_impressa' +
        'o, data_hora_lancamento FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND ven_001 = :ven_001 AND ite_001 = :ite_0' +
        '01')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM vendaitem'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT *'
      'FROM VENDAITEM ITE'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda')
    Left = 64
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 236
      end>
    object qrVendaItemFullemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaItemFullven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaItemFullite_001: TIntegerField
      FieldName = 'ite_001'
      Required = True
    end
    object qrVendaItemFullmat_001: TIntegerField
      FieldName = 'mat_001'
      Required = True
    end
    object qrVendaItemFullcom_001: TIntegerField
      FieldName = 'com_001'
    end
    object qrVendaItemFullite_002: TFloatField
      FieldName = 'ite_002'
      Required = True
    end
    object qrVendaItemFullite_003: TFloatField
      FieldName = 'ite_003'
      Required = True
    end
    object qrVendaItemFullite_004: TFloatField
      FieldName = 'ite_004'
    end
    object qrVendaItemFullite_005: TFloatField
      FieldName = 'ite_005'
    end
    object qrVendaItemFullmat_002: TIntegerField
      FieldName = 'mat_002'
    end
    object qrVendaItemFullmat_003: TIntegerField
      FieldName = 'mat_003'
    end
    object qrVendaItemFullite_006: TWideStringField
      FieldName = 'ite_006'
      Size = 200
    end
    object qrVendaItemFullite_007: TIntegerField
      FieldName = 'ite_007'
    end
    object qrVendaItemFullite_008: TWideStringField
      FieldName = 'ite_008'
      Size = 1
    end
    object qrVendaItemFullite_010: TDateTimeField
      FieldName = 'ite_010'
    end
    object qrVendaItemFullsit_001: TIntegerField
      FieldName = 'sit_001'
    end
    object qrVendaItemFullite_011: TWideStringField
      FieldName = 'ite_011'
      Size = 1
    end
    object qrVendaItemFullpes_001: TIntegerField
      FieldName = 'pes_001'
    end
    object qrVendaItemFullite_012: TWideStringField
      FieldName = 'ite_012'
      Size = 1
    end
    object qrVendaItemFullite_013: TIntegerField
      FieldName = 'ite_013'
    end
    object qrVendaItemFullgar_001: TIntegerField
      FieldName = 'gar_001'
    end
    object qrVendaItemFulldesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaItemFullorm_codigo: TIntegerField
      FieldName = 'orm_codigo'
    end
    object qrVendaItemFullcst_consumidor: TIntegerField
      FieldName = 'cst_consumidor'
    end
    object qrVendaItemFullicms_perc: TFloatField
      FieldName = 'icms_perc'
    end
    object qrVendaItemFullicms_valor: TFloatField
      FieldName = 'icms_valor'
    end
    object qrVendaItemFullpis_codigo_saida: TIntegerField
      FieldName = 'pis_codigo_saida'
    end
    object qrVendaItemFullpis_perc: TFloatField
      FieldName = 'pis_perc'
    end
    object qrVendaItemFullpis_valor: TFloatField
      FieldName = 'pis_valor'
    end
    object qrVendaItemFullcof_codigo_saida: TIntegerField
      FieldName = 'cof_codigo_saida'
    end
    object qrVendaItemFullcofins_perc: TFloatField
      FieldName = 'cofins_perc'
    end
    object qrVendaItemFullcofins_valor: TFloatField
      FieldName = 'cofins_valor'
    end
    object qrVendaItemFullmod_codigo: TIntegerField
      FieldName = 'mod_codigo'
    end
    object qrVendaItemFullcfop_consumidor: TWideStringField
      FieldName = 'cfop_consumidor'
      Size = 4
    end
    object qrVendaItemFullredbasecalcst: TFloatField
      FieldName = 'redbasecalcst'
    end
    object qrVendaItemFullredbasecalcicms: TFloatField
      FieldName = 'redbasecalcicms'
    end
    object qrVendaItemFullcso_codigo: TIntegerField
      FieldName = 'cso_codigo'
    end
    object qrVendaItemFullid_usuario_cancelamento: TIntegerField
      FieldName = 'id_usuario_cancelamento'
    end
    object qrVendaItemFulltamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object qrVendaItemFullb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrVendaItemFullitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemFullacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object qrVendaItemFullquantidade_impressao: TFloatField
      FieldName = 'quantidade_impressao'
    end
  end
  object JvdsBuscaItem: TJvDataSource
    AutoEdit = False
    DataSet = qrBuscaItem
    Left = 384
    Top = 456
  end
  object qrVendaItemOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.VEN_001 as id_venda,'
      '       ITE.EMP_001 as id_empresa,'
      '       ITE.ITE_001 as id_vendaitem,'
      '       0 as id_opcional,     '
      
        '       cast(concat('#39'Observa'#231#245'es: '#39', ITE.ITE_006) as varchar(200)' +
        ') as descricao,'
      '       0.00 as valor,'
      '       0 as ord'
      'FROM VENDAITEM ITE'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      
        'and not ite.sit_001 in (0,1,2,3) and not (ITE.ITE_006 is null or' +
        ' ITE.ITE_006='#39#39')'
      ''
      'union all'
      ''
      'select '
      'vio.id_venda, '
      'vio.id_empresa, '
      'vio.id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao) as varchar(200)) as descr' +
        'icao, '
      'o.valor ,'
      '1 as ord'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      'order by 3,7')
    ReadOnly = True
    AfterOpen = qrVendaItemObsSubAfterOpen
    Left = 152
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 27
      end>
    object qrVendaItemOpcionalid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      ReadOnly = True
    end
    object qrVendaItemOpcionalid_opcional: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object qrVendaItemOpcionalvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object qrVendaItemOpcionaldescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object qrVendaItemOpcionalord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
  end
  object dsVendaItemOpcional: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemOpcional
    Left = 232
    Top = 352
  end
  object qrVendaItemOpcionalFull: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitemopcional'
      '  (id_venda, id_empresa, id_vendaitem, id_opcional)'
      'VALUES'
      '  (:id_venda, :id_empresa, :id_vendaitem, :id_opcional)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitemopcional'
      'WHERE'
      
        '  id_venda = :Old_id_venda AND id_empresa = :Old_id_empresa AND ' +
        'id_vendaitem = :Old_id_vendaitem AND id_opcional = :Old_id_opcio' +
        'nal')
    SQLUpdate.Strings = (
      'UPDATE vendaitemopcional'
      'SET'
      
        '  id_venda = :id_venda, id_empresa = :id_empresa, id_vendaitem =' +
        ' :id_vendaitem, id_opcional = :id_opcional'
      'WHERE'
      
        '  id_venda = :Old_id_venda AND id_empresa = :Old_id_empresa AND ' +
        'id_vendaitem = :Old_id_vendaitem AND id_opcional = :Old_id_opcio' +
        'nal')
    SQLLock.Strings = (
      'SELECT * FROM vendaitemopcional'
      'WHERE'
      
        '  id_venda = :Old_id_venda AND id_empresa = :Old_id_empresa AND ' +
        'id_vendaitem = :Old_id_vendaitem AND id_opcional = :Old_id_opcio' +
        'nal'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_venda, id_empresa, id_vendaitem, id_opcional FROM vend' +
        'aitemopcional'
      'WHERE'
      
        '  id_venda = :id_venda AND id_empresa = :id_empresa AND id_venda' +
        'item = :id_vendaitem AND id_opcional = :id_opcional')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM vendaitemopcional'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT *'
      'FROM VENDAITEMOPCIONAL'
      'WHERE id_empresa = :id_empresa'
      'AND   id_venda = :id_venda')
    Left = 32
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 56
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 40
      end>
    object qrVendaItemOpcionalFullid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaItemOpcionalFullid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendaItemOpcionalFullid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      Required = True
    end
    object qrVendaItemOpcionalFullid_opcional: TIntegerField
      FieldName = 'id_opcional'
      Required = True
    end
  end
  object dspVendaItemOpcionalFull: TDataSetProvider
    DataSet = qrVendaItemOpcionalFull
    Left = 112
    Top = 464
  end
  object cdsVendaItemOpcionalFull: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaItemOpcionalFull'
    Left = 120
    Top = 520
    object cdsVendaItemOpcionalFullid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object cdsVendaItemOpcionalFullid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object cdsVendaItemOpcionalFullid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      Required = True
    end
    object cdsVendaItemOpcionalFullid_opcional: TIntegerField
      FieldName = 'id_opcional'
      Required = True
    end
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 697
    Top = 343
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 611
    Top = 360
  end
end
