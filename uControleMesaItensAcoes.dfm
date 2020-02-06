object frmControleMesaItensAcoes: TfrmControleMesaItensAcoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'OSFOOD RESTAURANTE'
  ClientHeight = 529
  ClientWidth = 869
  Color = clBtnFace
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
    Width = 869
    Height = 480
    Align = alClient
    BevelOuter = bvNone
    Color = 12691076
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
    DesignSize = (
      869
      480)
    FullHeight = 200
    object cxGrid1: TcxGrid
      Left = 4
      Top = 10
      Width = 861
      Height = 199
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsVendaItem
        DataController.KeyFieldNames = 'nro_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1id_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'id_empresa'
          Visible = False
        end
        object cxGrid1DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
        end
        object cxGrid1DBTableView1nro_item: TcxGridDBColumn
          DataBinding.FieldName = 'nro_item'
          HeaderAlignmentHorz = taCenter
          Width = 48
        end
        object cxGrid1DBTableView1descricao_item: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_item'
          Width = 220
        end
        object cxGrid1DBTableView1qtdevenda: TcxGridDBColumn
          DataBinding.FieldName = 'qtdevenda'
          Width = 42
        end
        object cxGrid1DBTableView1vlrvenda: TcxGridDBColumn
          DataBinding.FieldName = 'vlrvenda'
          Width = 55
        end
        object cxGrid1DBTableView1desconto: TcxGridDBColumn
          Caption = 'Desc.(%)'
          DataBinding.FieldName = 'desconto_perc'
          Width = 61
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'valor_total'
          Width = 58
        end
        object cxGrid1DBTableView1observacao: TcxGridDBColumn
          DataBinding.FieldName = 'observacao'
          Width = 218
        end
        object cxGrid1DBTableView1hora: TcxGridDBColumn
          DataBinding.FieldName = 'hora'
          Visible = False
        end
        object cxGrid1DBTableView1cod_status: TcxGridDBColumn
          DataBinding.FieldName = 'cod_status'
          Visible = False
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Visible = False
        end
        object cxGrid1DBTableView1flag: TcxGridDBColumn
          DataBinding.FieldName = 'flag_imprimir'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Visible = False
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1valor_total_calc: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total_calc'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 215
      Width = 869
      Height = 265
      ActivePage = pgOpcionais
      Align = alBottom
      MultiLine = True
      TabOrder = 1
      OnDrawTab = PageControl1DrawTab
      object pgObservacao: TTabSheet
        Caption = 'Observa'#231#245'es'
        DesignSize = (
          861
          231)
        object Label6: TLabel
          Left = 4
          Top = 7
          Width = 89
          Height = 16
          Caption = 'Observa'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeObs: TDBEdit
          Left = 4
          Top = 29
          Width = 853
          Height = 198
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = False
          DataField = 'observacao'
          DataSource = dsVendaItem
          TabOrder = 0
          OnChange = dbeObsChange
        end
      end
      object pgDesconto: TTabSheet
        Caption = 'Desconto'
        ImageIndex = 1
        object Label1: TLabel
          Left = 275
          Top = 71
          Width = 44
          Height = 19
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 373
          Top = 71
          Width = 87
          Height = 19
          Caption = 'Valor Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 15
          Top = 71
          Width = 113
          Height = 19
          Caption = 'Desconto (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 491
          Top = 71
          Width = 43
          Height = 19
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 275
          Top = 99
          Width = 60
          Height = 19
          Align = alCustom
          AutoSize = True
          DataField = 'qtdevenda'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 375
          Top = 99
          Width = 60
          Height = 19
          Align = alCustom
          AutoSize = True
          DataField = 'vlrvenda'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 474
          Top = 99
          Width = 60
          Height = 19
          Align = alCustom
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'valor_total_calc'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 15
          Top = 18
          Width = 39
          Height = 19
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 15
          Top = 46
          Width = 60
          Height = 19
          Align = alCustom
          AutoSize = True
          DataField = 'nro_item'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 79
          Top = 18
          Width = 65
          Height = 19
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 79
          Top = 46
          Width = 69
          Height = 19
          Align = alCustom
          AutoSize = True
          DataField = 'descricao_item'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 145
          Top = 71
          Width = 116
          Height = 19
          Caption = 'Desconto (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDescontoPercent: TJvValidateEdit
          Tag = 1
          Left = 15
          Top = 96
          Width = 116
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
          OnEnter = edDescontoPercentEnter
          OnExit = edDescontoPercentExit
          DataConnector.DataSource = jvdsVendaItem
          DataConnector.DataField = 'desconto_perc'
        end
        object edDescontoValor: TJvValidateEdit
          Tag = 1
          Left = 145
          Top = 96
          Width = 116
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
          OnEnter = edDescontoPercentEnter
          OnExit = edDescontoPercentExit
          DataConnector.DataSource = jvdsVendaItem
          DataConnector.DataField = 'desconto'
        end
      end
      object pgCancelamento: TTabSheet
        Caption = 'Cancelamento'
        ImageIndex = 2
        DesignSize = (
          861
          231)
        object Label5: TLabel
          Left = 4
          Top = 7
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
        object DBText4: TDBText
          Left = 285
          Top = 7
          Width = 53
          Height = 16
          Align = alCustom
          AutoSize = True
          DataField = 'nro_item'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeObsCancelamento: TDBEdit
          Left = 3
          Top = 29
          Width = 853
          Height = 198
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = False
          DataField = 'justificativa_cancelamento'
          DataSource = dsVendaItem
          TabOrder = 0
          OnChange = dbeObsCancelamentoChange
          OnKeyDown = dbeObsCancelamentoKeyDown
        end
      end
      object pgOpcionais: TTabSheet
        Caption = 'Opcionais'
        ImageIndex = 3
        DesignSize = (
          861
          231)
        object Label7: TLabel
          Left = 4
          Top = 7
          Width = 141
          Height = 16
          Caption = 'Opcionais dispon'#237'veis:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 416
          Top = 7
          Width = 153
          Height = 16
          Caption = 'Opcionais selecionados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotalOp: TLabel
          Left = 301
          Top = 185
          Width = 36
          Height = 19
          Anchors = [akLeft, akBottom]
          Caption = 'Total'
          ExplicitTop = 175
        end
        object lbItensNro: TLabel
          Left = 301
          Top = 210
          Width = 35
          Height = 19
          Anchors = [akLeft, akBottom]
          Caption = 'Itens'
          ExplicitTop = 200
        end
        object cxGridOpcionaisDisponiveis: TcxGrid
          Left = 0
          Top = 29
          Width = 292
          Height = 200
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            OnKeyDown = cxGridDBTableView1KeyDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsqrOpcional
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = frmMenu.cxZebra1
            Styles.ContentOdd = frmMenu.cxZebra2
            object cxGridDBTableView1id_opcional: TcxGridDBColumn
              DataBinding.FieldName = 'id_opcional'
              Visible = False
            end
            object cxGridDBTableView1descricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
              Width = 213
            end
            object cxGridDBTableView1valor: TcxGridDBColumn
              DataBinding.FieldName = 'valor'
              Width = 103
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object btAdicionarOp: TAdvGlowButton
          Left = 297
          Top = 29
          Width = 113
          Height = 41
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 26
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btAdicionarOpClick
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
        object btRemoverOp: TAdvGlowButton
          Left = 297
          Top = 76
          Width = 113
          Height = 41
          Caption = 'Remover'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 27
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btRemoverOpClick
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
        object cxGrid3: TcxGrid
          Left = 416
          Top = 29
          Width = 327
          Height = 200
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsVendaItemOpcional
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = frmMenu.cxZebra1
            Styles.ContentOdd = frmMenu.cxZebra2
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'id_opcional'
              Visible = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
              Width = 217
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'valor'
              Width = 124
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Qtde.'
              DataBinding.FieldName = 'qtde'
              Width = 50
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object edFiltroOpcionais: TEdit
          Left = 151
          Top = 3
          Width = 141
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = edFiltroOpcionaisKeyDown
        end
        object edqtde: TcxSpinEdit
          Left = 329
          Top = 136
          TabOrder = 5
          Value = 1
          Width = 49
        end
      end
      object pgQuantidade: TTabSheet
        Caption = 'Quantidade'
        ImageIndex = 4
        object Label16: TLabel
          Left = 446
          Top = 18
          Width = 75
          Height = 19
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 535
          Top = 18
          Width = 87
          Height = 19
          Caption = 'Valor Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 303
          Top = 18
          Width = 94
          Height = 19
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 676
          Top = 18
          Width = 43
          Height = 19
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 447
          Top = 46
          Width = 69
          Height = 19
          Align = alCustom
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'desconto'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 553
          Top = 46
          Width = 69
          Height = 19
          Align = alCustom
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'vlrvenda'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 650
          Top = 46
          Width = 69
          Height = 19
          Align = alCustom
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'valor_total_calc'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 15
          Top = 18
          Width = 39
          Height = 19
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 15
          Top = 46
          Width = 69
          Height = 19
          Align = alCustom
          AutoSize = True
          DataField = 'nro_item'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 79
          Top = 18
          Width = 65
          Height = 19
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText15: TDBText
          Left = 79
          Top = 46
          Width = 69
          Height = 19
          Align = alCustom
          AutoSize = True
          DataField = 'descricao_item'
          DataSource = dsVendaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edQuantidade: TJvValidateEdit
          Left = 303
          Top = 43
          Width = 92
          Height = 27
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
          MaxValue = 999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = edQuantidadeEnter
          OnKeyPress = edQuantidadeKeyPress
          DataConnector.DataSource = jvdsVendaItem
          DataConnector.DataField = 'qtdevenda'
        end
      end
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 480
    Width = 869
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 750
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
      Left = 631
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
    object btFiltraOpc6: TAdvGlowButton
      AlignWithMargins = True
      Left = 528
      Top = 3
      Width = 100
      Height = 41
      Margins.Left = 0
      Caption = 'Geral'
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      Visible = False
      OnClick = btFiltraOpc6Click
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
    object btFiltraOpc5: TAdvGlowButton
      AlignWithMargins = True
      Left = 425
      Top = 3
      Width = 100
      Height = 41
      Margins.Left = 0
      Caption = 'Coberturas'
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      Visible = False
      OnClick = btFiltraOpc5Click
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
    object btFiltraOpc4: TAdvGlowButton
      AlignWithMargins = True
      Left = 322
      Top = 3
      Width = 100
      Height = 41
      Margins.Left = 0
      Caption = 'Molhos'
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      Visible = False
      OnClick = btFiltraOpc4Click
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
    object btFiltraOpc3: TAdvGlowButton
      AlignWithMargins = True
      Left = 219
      Top = 3
      Width = 100
      Height = 41
      Margins.Left = 0
      Caption = 'Complementos'
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      Visible = False
      OnClick = btFiltraOpc3Click
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
    object btFiltraOpc2: TAdvGlowButton
      AlignWithMargins = True
      Left = 116
      Top = 3
      Width = 100
      Height = 41
      Margins.Left = 0
      Caption = 'Recheios'
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      Visible = False
      OnClick = btFiltraOpc2Click
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
    object btFiltraOpc1: TAdvGlowButton
      AlignWithMargins = True
      Left = 13
      Top = 3
      Width = 100
      Height = 41
      Margins.Left = 0
      Caption = 'Massas'
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 7
      Visible = False
      OnClick = btFiltraOpc1Click
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
    BeforeScroll = cdsVendaItemBeforeScroll
    AfterScroll = cdsVendaItemAfterScroll
    OnCalcFields = cdsVendaItemCalcFields
    Left = 480
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
      OnChange = cdsVendaItemqtdevendaChange
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
      OnValidate = cdsVendaItemdescontoValidate
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
      OnValidate = cdsVendaItemdesconto_percValidate
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
    object cdsVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
  end
  object dspVendaItem: TDataSetProvider
    DataSet = qrVendaItem
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 24
  end
  object dsVendaItem: TDataSource
    DataSet = cdsVendaItem
    Left = 376
    Top = 24
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
    Left = 624
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
  object cdsVendaItemOpcional: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_vendaitem;tipo;descricao'
    MasterFields = 'nro_item'
    MasterSource = dsVendaItem
    PacketRecords = 0
    Params = <>
    AfterPost = cdsVendaItemOpcionalAfterPost
    Left = 128
    Top = 96
    object cdsVendaItemOpcionalid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object cdsVendaItemOpcionalid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object cdsVendaItemOpcionalid_vendaitem: TIntegerField
      FieldName = 'id_vendaitem'
      Required = True
    end
    object cdsVendaItemOpcionalvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object cdsVendaItemOpcionalid_opcional: TIntegerField
      FieldName = 'id_opcional'
      Required = True
    end
    object cdsVendaItemOpcionaldescricao: TWideStringField
      DisplayLabel = 'Opcional'
      FieldName = 'descricao'
      Size = 100
    end
    object cdsVendaItemOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
    object cdsVendaItemOpcionalqtde: TIntegerField
      FieldName = 'qtde'
      KeyFields = 'qtde'
    end
  end
  object dsVendaItemOpcional: TDataSource
    DataSet = cdsVendaItemOpcional
    Left = 96
    Top = 24
  end
  object qrOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select o.id_opcional, o.descricao, o.valor, o.tipo,qtde'
      'from materiais_opcional mo'
      
        'join opcional o on mo.id_opcional=o.id_opcional and mo.id_empres' +
        'a=o.id_empresa'
      
        'where mo.id_material = :id_material and mo.id_empresa = :id_empr' +
        'esa and o.id_situacao=4'
      'order by o.descricao')
    Left = 304
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_material'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrOpcionalid_opcional: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_opcional'
    end
    object qrOpcionaldescricao: TWideStringField
      DisplayLabel = 'Opcional'
      FieldName = 'descricao'
      Size = 100
    end
    object qrOpcionalvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
    object qrOpcionalqtde: TIntegerField
      FieldName = 'qtde'
    end
  end
  object dsqrOpcional: TDataSource
    AutoEdit = False
    DataSet = qrOpcional
    Left = 216
    Top = 88
  end
  object jvdsVendaItem: TJvDataSource
    DataSet = cdsVendaItem
    Left = 416
    Top = 72
  end
  object RepItemCancelado: TfrxReport
    Version = '5.1.5'
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
    Left = 250
    Top = 156
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
          Top = 43.464566929999990000
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
          Top = 43.464566929999990000
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
            '[dbPedido."justificativa_cancelamento"]')
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
      'cod_status=cod_status'
      'status=status'
      'desconto=desconto'
      'valor_total=valor_total'
      'valor_total_calc=valor_total_calc'
      'item_fracionado=item_fracionado'
      'acrescimo=acrescimo'
      'desconto_perc=desconto_perc'
      'tipo_venda=tipo_venda'
      'descricao_mesa=descricao_mesa'
      'nro_venda=nro_venda'
      'fracionado=fracionado'
      'data_hora_lancamento=data_hora_lancamento'
      'qtdevenda_old=qtdevenda_old'
      'justificativa_cancelamento=justificativa_cancelamento'
      'id_material=id_material')
    DataSet = cdsVendaItem
    BCDToCurrency = False
    Left = 348
    Top = 156
  end
end
