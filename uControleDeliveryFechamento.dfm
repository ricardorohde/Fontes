object frmControleDeliveryFechamento: TfrmControleDeliveryFechamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Delivery - Fechamento'
  ClientHeight = 486
  ClientWidth = 619
  Color = clBtnFace
  Constraints.MinHeight = 514
  Constraints.MinWidth = 625
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
  object Label16: TLabel
    Left = 217
    Top = 0
    Width = 44
    Height = 16
    Caption = 'Label16'
  end
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    object AdvGroupBox1: TAdvGroupBox
      Left = 7
      Top = 8
      Width = 233
      Height = 57
      BorderColor = clNavy
      Transparent = False
      RoundEdges = True
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label9: TLabel
        Left = 17
        Top = 9
        Width = 39
        Height = 16
        Alignment = taRightJustify
        Caption = 'VENDA'
      end
      object DBText1: TDBText
        Left = 62
        Top = 9
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'nro_venda'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 31
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'CLIENTE'
      end
      object DBText2: TDBText
        Left = 62
        Top = 31
        Width = 156
        Height = 16
        DataField = 'nome_cliente'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 7
      Top = 71
      Width = 233
      Height = 216
      BorderColor = clNavy
      Transparent = False
      RoundEdges = True
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label3: TLabel
        Left = 62
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
      object Label2: TLabel
        Left = 9
        Top = 37
        Width = 117
        Height = 16
        Alignment = taRightJustify
        Caption = 'TX. DE SERVI'#199'O (+)'
      end
      object Label4: TLabel
        Left = 42
        Top = 65
        Width = 84
        Height = 16
        Alignment = taRightJustify
        Caption = 'DESCONTO (-)'
      end
      object Label5: TLabel
        Left = 23
        Top = 93
        Width = 103
        Height = 16
        Alignment = taRightJustify
        Caption = 'TOTAL A PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 51
        Top = 121
        Width = 75
        Height = 16
        Alignment = taRightJustify
        Caption = 'TOTAL PAGO'
      end
      object Label7: TLabel
        Left = 64
        Top = 149
        Width = 62
        Height = 16
        Alignment = taRightJustify
        Caption = 'RESTANTE'
      end
      object Label8: TLabel
        Left = 66
        Top = 181
        Width = 60
        Height = 23
        Alignment = taRightJustify
        Caption = 'TROCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 136
        Top = 9
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'valor_venda'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 136
        Top = 37
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'valor_tx'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 136
        Top = 65
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
      object DBText6: TDBText
        Left = 136
        Top = 93
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'valor_total_venda'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 136
        Top = 121
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'total_pago'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 136
        Top = 149
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'valor_restante'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 135
        Top = 181
        Width = 81
        Height = 23
        AutoSize = True
        DataField = 'valor_troco'
        DataSource = dsVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 7
      Top = 293
      Width = 233
      Height = 70
      BorderColor = clNavy
      Transparent = False
      RoundEdges = True
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Label11: TLabel
        Left = 9
        Top = 5
        Width = 145
        Height = 18
        Caption = 'Desconto na venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 122
        Top = 38
        Width = 19
        Height = 19
        Alignment = taRightJustify
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 9
        Top = 38
        Width = 16
        Height = 19
        Alignment = taRightJustify
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edDescontoValor: TJvValidateEdit
        Tag = 1
        Left = 144
        Top = 35
        Width = 80
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
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnExit = edDescontoValorExit
        DataConnector.DataSource = jvdsVendaMesa
        DataConnector.DataField = 'desconto'
      end
      object edDescontoPercent: TJvValidateEdit
        Tag = 1
        Left = 30
        Top = 35
        Width = 80
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
        OnExit = edDescontoPercentExit
        DataConnector.DataSource = jvdsVendaMesa
        DataConnector.DataField = 'desconto_percent'
      end
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 246
      Top = 8
      Width = 366
      Height = 241
      BorderColor = clNavy
      Transparent = False
      RoundEdges = True
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 4
      object Label1: TLabel
        Left = 11
        Top = 24
        Width = 144
        Height = 19
        Caption = 'Valor do pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 11
        Top = 57
        Width = 94
        Height = 16
        Caption = 'Nro. autoriza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 11
        Top = 87
        Width = 65
        Height = 16
        Caption = 'CPF Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edValorPagamento: TJvValidateEdit
        Tag = 1
        Left = 239
        Top = 21
        Width = 113
        Height = 27
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        EditText = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 0
      end
      object edNroAutorizacao: TEdit
        Left = 173
        Top = 54
        Width = 179
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 173
        Top = 84
        DataBinding.DataField = 'cpf_cliente'
        DataBinding.DataSource = dsVenda
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 179
      end
      object lpPnlBotoesFormas: TFlowPanel
        Left = 2
        Top = 110
        Width = 362
        Height = 129
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alBottom
        BevelOuter = bvNone
        Color = 14074285
        ParentBackground = False
        TabOrder = 3
        object btDinheiro: TAdvGlowButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 113
          Height = 58
          Caption = 'Dinheiro'
          ImageIndex = 8
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btDinheiroClick
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
          Enabled = False
          Layout = blGlyphTop
        end
        object btDebito: TAdvGlowButton
          AlignWithMargins = True
          Left = 122
          Top = 3
          Width = 113
          Height = 58
          Caption = 'D'#233'bito'
          ImageIndex = 40
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = btDebitoClick
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
          Enabled = False
          Layout = blGlyphTop
          DropDownButton = True
          DropDownMenu = pmDebito
        end
        object BtCredito: TAdvGlowButton
          AlignWithMargins = True
          Left = 241
          Top = 3
          Width = 113
          Height = 58
          Caption = 'Cr'#233'dito'
          ImageIndex = 39
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btCreditoClick
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
          Enabled = False
          Layout = blGlyphTop
          DropDownButton = True
          DropDownMenu = pmCredito
        end
        object btCheque: TAdvGlowButton
          AlignWithMargins = True
          Left = 3
          Top = 67
          Width = 113
          Height = 58
          Caption = 'Cheque'
          ImageIndex = 19
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btChequeClick
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
          Enabled = False
          Layout = blGlyphTop
        end
        object btOutros: TAdvGlowButton
          AlignWithMargins = True
          Left = 122
          Top = 67
          Width = 113
          Height = 58
          Caption = 'Outra'
          ImageIndex = 13
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 4
          OnClick = btOutrosClick
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
          Enabled = False
          Layout = blGlyphTop
          DropDownButton = True
          DropDownMenu = pmOutros
        end
        object btFiado: TAdvGlowButton
          AlignWithMargins = True
          Left = 241
          Top = 67
          Width = 113
          Height = 58
          Caption = 'Fiado'
          ImageIndex = 38
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          OnClick = btFiadoClick
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
          Enabled = False
          Layout = blGlyphTop
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 246
      Top = 253
      Width = 366
      Height = 178
      TabOrder = 5
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsParcelasPagamentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1descr_formapag: TcxGridDBColumn
          DataBinding.FieldName = 'desc_formapag'
          Options.Editing = False
          Width = 252
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Options.Editing = False
          Width = 83
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 1
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
          Width = 27
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object grCaixinha: TAdvGroupBox
      Left = 8
      Top = 369
      Width = 232
      Height = 62
      BorderColor = clNavy
      Transparent = False
      RoundEdges = True
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      Visible = False
      object Label17: TLabel
        Left = 8
        Top = 5
        Width = 157
        Height = 18
        Caption = 'Caixinha entregador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 7
        Top = 32
        Width = 19
        Height = 19
        Alignment = taRightJustify
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edCaixinha: TJvValidateEdit
        Tag = 1
        Left = 32
        Top = 29
        Width = 80
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
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        DataConnector.DataSource = jvdsVendaMesa
        DataConnector.DataField = 'caixinha_entregador'
      end
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 437
    Width = 619
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      619
      49)
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 500
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Anchors = [akRight, akBottom]
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
      Left = 381
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Anchors = [akRight, akBottom]
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
    object ckImprimirCupom: TcxCheckBox
      AlignWithMargins = True
      Left = 263
      Top = 15
      Margins.Top = 15
      Caption = 'Imprimir cupom'
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
  end
  object btn1: TBitBtn
    Left = 7
    Top = 443
    Width = 62
    Height = 25
    Caption = 'Editar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF1742592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C6F890C8F840
      84C8266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3F3F3C5C5C54288A9DFF1FE5399D71979BD4897C43D83BCA7B5C2F4F4F4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5A8A8A8CDCDCD9BB9CD79B5D48FB6D054
      C8E35ADEF477CFEC4A96D688939DE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF
      DDDDDDF2F2F2DADADA95B7C874B8D5C1F5FC62DEF65CE1F778D2EF4796D98892
      9CFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2EFEFEFDDDDDDD3D3D3D1D1D198BDCE76
      CAE6C6F6FC5DDBF459E0F67AD3F04694D7D6E7F7FFFFFFFFFFFFFFFFFFB4B4B4
      F1F1F1E1E1E1D7D7D7D4D4D4DBDBDBA3CBD878D2EDC6F6FC5EDBF45AE1F679D5
      F150A1E1DCE9F5FFFFFFFFFFFFB6B6B6F2F2F2E6E6E6DCDCDCD8D8D8DFDFDFDA
      DADA96BFCC7BD3EDC3F5FC6BDCF56CC9EC62A2D668A2D4E5EFF7FFFFFFB7B7B7
      F3F3F3E9E9E9E0E0E0DCDCDCE2E2E2DDDDDDC8C8C888B9C87FD3ECB1E2F88ABF
      E6ADD2F5C3DFFB6AA1D3FFFFFFB9B9B9F4F4F4EDEDEDE5E5E5E1E1E1E5E5E5E0
      E0E0CCCCCCC1C1C188BDCD76BDE6B3D1EFE4F2FEABD1EE5895CBFFFFFFBABABA
      F5F5F5EAEAEADDDDDDD5D5D5D4D4D4D0D0D0C2C2C2BBBBBBBFBFBFAAD3E257A4
      D784B0DA459CCFB0D8EEFFFFFFBCBCBCF6F6F6E6E6E6EEEEEEF5F5F5FAFAFAF9
      F9F9EFEFEFDDDDDDC2C2C2E5E5E5ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE
      F7F7F7FDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAE9E9E9ADAD
      ADFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE0E0E0FDFDFDFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFAFAFACECECEC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
      C6C6C6CFCFCFE7E7E7F2F2F2FCFCFCFBFBFBECECECDFDFDFC1C1C1C0C0C0F6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7
      B7B7C2C2C2CCCCCCE9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 2
    OnClick = btn1Click
  end
  object pmCredito: TPopupMenu
    Images = frmMenu.ImgList32
    Left = 264
    Top = 320
    object icMasterCard: TMenuItem
      Caption = 'Master Card'
      Enabled = False
      ImageIndex = 10
    end
    object icVisa: TMenuItem
      Caption = 'Visa'
      Enabled = False
      ImageIndex = 9
    end
    object icAmericanExpress: TMenuItem
      Caption = 'American Express'
      Enabled = False
      ImageIndex = 12
    end
    object icOutro: TMenuItem
      Caption = 'Outro'
      Enabled = False
      ImageIndex = 11
    end
  end
  object qrVenda: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001 as id_venda, '
      'v.ven_029 as nro_venda, '
      '0.00 as valor_venda, '
      'v.ven_008 as valor_tx,'
      'v.dat_001_1 as data_abertura,'
      'v.ven_007 as desconto,'
      '0.00 as total_pago,'
      '0.00 as valor_restante,'
      '0.00 as valor_troco,'
      'v.caixinha_entregador,'
      
        'coalesce(case when ven_009=0.00 then 0.00 else ven_007/ven_009/0' +
        '.01  end,0.00) as desconto_percent,'
      
        'cast(coalesce(cl.cli_004, v.cpf_cliente) as varchar(100)) as cpf' +
        '_cliente,'
      'c.id_caixa,'
      'v.ven_027 as observacoes,'
      'cl.cli_002 as nome_cliente,'
      'v.sit_001,'
      'cl.cli_012 as telefone1,'
      'cl.cli_013 as telefone2,'
      'cl.celular1,'
      'cl.cep_004 as endereco,'
      'cl.cli_008 as endereco_numero,'
      'cl.cli_009 as endereco_complemento,'
      'cl.cep_003 as bairro,'
      'cl.cidade_desc as cidade,'
      'cl.cli_007 as endereco_referencia,'
      'usu_002 as nome_entregador,'
      'v.b_taxa_entrega,'
      'coalesce(sum(i.desconto),  0.00) as valor_desconto_itens,'
      'count (1) as nro_itens,'
      'cl.cli_001 as id_cliente,'
      'v.numero_cupom,'
      'v.ven_024 as tipo_venda,'
      'sum(i.ite_005)  as total_itens'
      'from venda v '
      'join caixa c on c.id_empresa = v.emp_001 and id_caixa=:id_caixa'
      
        'join clientes cl on cl.cli_001 = v.cli_001 and cl.emp_001=v.emp_' +
        '001'
      'left join usuarios e on v.id_entregador=e.usu_001'
      
        'join vendaitem i on i.ven_001=v.ven_001 and i.emp_001=v.emp_001 ' +
        'and i.sit_001 in (4) '
      'where v.ven_001 = :id_venda and v.emp_001=:emp'
      'group by '
      
        'v.ven_001, v.ven_029, c.id_caixa, v.ven_008, v.ven_007, cl.cli_0' +
        '02, cl.cli_004, v.sit_001, cl.cli_012,'
      
        'cl.cli_013, cl.celular1,cl.cep_004, cl.cli_007, cl.cli_008, cl.c' +
        'li_009, cl.cep_003,cl.cidade_desc,'
      'e.usu_002, v.b_taxa_entrega, cl.cli_001, v.numero_cupom,'
      
        'v.ven_009, v.ven_027, v.dat_001_1, v.nro_couvert_m, v.nro_couver' +
        't_f, v.nro_pessoas, v.cpf_cliente,'
      'v.ven_024, v.caixinha_entregador ')
    ReadOnly = True
    Left = 462
    Top = 266
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 11
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = 243
      end
      item
        DataType = ftInteger
        Name = 'emp'
        ParamType = ptInput
        Value = 1
      end>
    object qrVendaid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendanro_venda: TIntegerField
      FieldName = 'nro_venda'
    end
    object qrVendadata_abertura: TDateTimeField
      FieldName = 'data_abertura'
    end
    object qrVendavalor_venda: TFloatField
      FieldName = 'valor_venda'
    end
    object qrVendatotal_pago: TFloatField
      FieldName = 'total_pago'
      ReadOnly = True
    end
    object qrVendavalor_restante: TFloatField
      FieldName = 'valor_restante'
      ReadOnly = True
    end
    object qrVendavalor_troco: TFloatField
      FieldName = 'valor_troco'
      ReadOnly = True
    end
    object qrVendadesconto_percent: TFloatField
      FieldName = 'desconto_percent'
      ReadOnly = True
    end
    object qrVendaid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
      Required = True
    end
    object qrVendavalor_tx: TFloatField
      FieldName = 'valor_tx'
    end
    object qrVendadesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaobservacoes: TWideStringField
      FieldName = 'observacoes'
      Size = 200
    end
    object qrVendanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
      ReadOnly = True
      Size = 100
    end
    object qrVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendatelefone1: TWideStringField
      FieldName = 'telefone1'
      ReadOnly = True
    end
    object qrVendatelefone2: TWideStringField
      FieldName = 'telefone2'
      ReadOnly = True
    end
    object qrVendacelular1: TWideStringField
      FieldName = 'celular1'
      ReadOnly = True
    end
    object qrVendaendereco: TWideStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 125
    end
    object qrVendaendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      ReadOnly = True
      Size = 10
    end
    object qrVendaendereco_complemento: TWideStringField
      FieldName = 'endereco_complemento'
      ReadOnly = True
      Size = 10
    end
    object qrVendabairro: TWideStringField
      FieldName = 'bairro'
      ReadOnly = True
      Size = 50
    end
    object qrVendacidade: TWideStringField
      FieldName = 'cidade'
      ReadOnly = True
      Size = 100
    end
    object qrVendaendereco_referencia: TWideStringField
      FieldName = 'endereco_referencia'
      ReadOnly = True
      Size = 80
    end
    object qrVendanome_entregador: TWideStringField
      FieldName = 'nome_entregador'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendab_taxa_entrega: TBooleanField
      FieldName = 'b_taxa_entrega'
    end
    object qrVendavalor_desconto_itens: TFloatField
      FieldName = 'valor_desconto_itens'
      ReadOnly = True
    end
    object qrVendanro_itens: TLargeintField
      FieldName = 'nro_itens'
      ReadOnly = True
    end
    object qrVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ReadOnly = True
      Required = True
    end
    object qrVendanumero_cupom: TIntegerField
      FieldName = 'numero_cupom'
    end
    object qrVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object qrVendatotal_itens: TFloatField
      FieldName = 'total_itens'
      ReadOnly = True
    end
    object qrVendacaixinha_entregador: TFloatField
      FieldName = 'caixinha_entregador'
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = cdsVenda
    Left = 510
    Top = 330
  end
  object dspVendaMesa: TDataSetProvider
    DataSet = qrVenda
    Left = 456
    Top = 320
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaMesa'
    OnCalcFields = cdsVendaCalcFields
    Left = 384
    Top = 264
    object cdsVendaid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object cdsVendanro_venda: TIntegerField
      FieldName = 'nro_venda'
    end
    object cdsVendadata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsVendavalor_venda: TFloatField
      FieldName = 'valor_venda'
      currency = True
    end
    object cdsVendatotal_pago: TFloatField
      FieldName = 'total_pago'
      currency = True
    end
    object cdsVendavalor_restante: TFloatField
      FieldName = 'valor_restante'
      currency = True
    end
    object cdsVendavalor_troco: TFloatField
      FieldName = 'valor_troco'
      currency = True
    end
    object cdsVendavalor_total_venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_total_venda'
      currency = True
      Calculated = True
    end
    object cdsVendadeconto_percent: TFloatField
      FieldName = 'desconto_percent'
      OnChange = cdsVendadeconto_percentChange
    end
    object cdsVendaid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
      Required = True
    end
    object cdsVendadata_atual: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'data_atual'
      Calculated = True
    end
    object cdsVendadesconto: TFloatField
      FieldName = 'desconto'
      currency = True
    end
    object cdsVendavalor_tx: TFloatField
      FieldName = 'valor_tx'
      currency = True
    end
    object cdsVendaobservacoes: TWideStringField
      FieldName = 'observacoes'
      Size = 200
    end
    object cdsVendanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object cdsVendacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
      OnChange = cdsVendacpf_clienteChange
      Size = 100
    end
    object cdsVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object cdsVendatelefone1: TWideStringField
      FieldName = 'telefone1'
      ReadOnly = True
    end
    object cdsVendatelefone2: TWideStringField
      FieldName = 'telefone2'
      ReadOnly = True
    end
    object cdsVendacelular1: TWideStringField
      FieldName = 'celular1'
      ReadOnly = True
    end
    object cdsVendaendereco: TWideStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 125
    end
    object cdsVendaendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      ReadOnly = True
      Size = 10
    end
    object cdsVendaendereco_complemento: TWideStringField
      FieldName = 'endereco_complemento'
      ReadOnly = True
      Size = 10
    end
    object cdsVendabairro: TWideStringField
      FieldName = 'bairro'
      ReadOnly = True
      Size = 50
    end
    object cdsVendacidade: TWideStringField
      FieldName = 'cidade'
      ReadOnly = True
      Size = 100
    end
    object cdsVendaendereco_referencia: TWideStringField
      FieldName = 'endereco_referencia'
      ReadOnly = True
      Size = 80
    end
    object cdsVendanome_entregador: TWideStringField
      FieldName = 'nome_entregador'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsVendab_taxa_entrega: TBooleanField
      FieldName = 'b_taxa_entrega'
    end
    object cdsVendavalor_desconto_itens: TFloatField
      FieldName = 'valor_desconto_itens'
      ReadOnly = True
    end
    object cdsVendanro_itens: TLargeintField
      FieldName = 'nro_itens'
      ReadOnly = True
    end
    object cdsVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ReadOnly = True
      Required = True
    end
    object cdsVendanumero_cupom: TIntegerField
      FieldName = 'numero_cupom'
    end
    object cdsVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object cdsVendatotal_itens: TFloatField
      FieldName = 'total_itens'
    end
    object cdsVendacaixinha_entregador: TFloatField
      FieldName = 'caixinha_entregador'
      currency = True
    end
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 544
    Top = 291
  end
  object cdsParcelasPagamentos: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'total_pagamento'
        Expression = 'sum(valor)'
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    AfterPost = cdsParcelasPagamentosAfterPost
    AfterDelete = cdsParcelasPagamentosAfterDelete
    Left = 440
    Top = 16
    object cdsParcelasPagamentosid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
    object cdsParcelasPagamentosdescr_formapag: TStringField
      DisplayLabel = 'Forma de pagamento'
      FieldName = 'desc_formapag'
      Size = 100
    end
    object cdsParcelasPagamentosvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object cdsParcelasPagamentosnro_autorizacao: TStringField
      FieldName = 'nro_autorizacao'
    end
    object cdsParcelasPagamentosdinheiro: TBooleanField
      FieldName = 'dinheiro'
    end
    object cdsParcelasPagamentosantecipado: TBooleanField
      FieldName = 'antecipado'
    end
    object cdsParcelasPagamentosfiado: TBooleanField
      FieldName = 'fiado'
    end
    object cdsParcelasPagamentosid_conta: TIntegerField
      FieldName = 'id_conta'
    end
  end
  object pmDebito: TPopupMenu
    Images = frmMenu.ImgList32
    Left = 320
    Top = 320
    object idMasterCard: TMenuItem
      Caption = 'Master Card'
      Enabled = False
      ImageIndex = 10
    end
    object idVisa: TMenuItem
      Caption = 'Visa'
      Enabled = False
      ImageIndex = 9
      RadioItem = True
    end
    object idAmericanExpress: TMenuItem
      Caption = 'American Express'
      Enabled = False
      ImageIndex = 12
    end
    object idOutro: TMenuItem
      Caption = 'Outro'
      Enabled = False
      ImageIndex = 11
    end
  end
  object dsParcelasPagamentos: TDataSource
    AutoEdit = False
    DataSet = cdsParcelasPagamentos
    Left = 552
    Top = 192
  end
  object pmOutros: TPopupMenu
    Images = frmMenu.ImgList32
    Left = 376
    Top = 320
  end
  object jvdsVendaMesa: TJvDataSource
    DataSet = cdsVenda
    Left = 208
    Top = 264
  end
  object RepFechaConta: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 43629.708212731480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 202
    Top = 168
    Datasets = <
      item
        DataSet = dbAuxCabRod
        DataSetName = 'dbAuxCabRod'
      end
      item
        DataSet = dbCreceberFiado
        DataSetName = 'dbCreceberFiado'
      end
      item
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = dbItensFechamento
        DataSetName = 'dbItensFechamento'
      end
      item
        DataSet = dbItensFracionadoFechamento
        DataSetName = 'dbItensFracionadoFechamento'
      end
      item
        DataSet = dbItensFracionadoOpcional
        DataSetName = 'dbItensFracionadoOpcional'
      end
      item
        DataSet = dbItensOpcional
        DataSetName = 'dbItensOpcional'
      end
      item
        DataSet = dbPagamentos
        DataSetName = 'dbPagamentos'
      end
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
        Name = 'sMensagemRetBalcao'
        Value = Null
      end
      item
        Name = 'sEntregador'
        Value = Null
      end
      item
        Name = 'sSisDev'
        Value = ''
      end
      item
        Name = 'sSisVersao'
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
      LeftMargin = 4.500000000000000000
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
        Height = 37.141620000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 274.015925000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 253.228510000000000000
          Height = 30.236240000000000000
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
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.118110240000000000
        Top = 956.221090000000000000
        Width = 274.015925000000000000
        DataSet = dbPagamentos
        DataSetName = 'dbPagamentos'
        RowCount = 0
        object Memo39: TfrxMemoView
          Left = 211.196970000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'valor'
          DataSet = dbPagamentos
          DataSetName = 'dbPagamentos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPagamentos."valor"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Left = 11.338590000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = dbPagamentos
          DataSetName = 'dbPagamentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL EM [dbPagamentos."desc_formapag"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 92.661410000000000000
        Top = 1296.378790000000000000
        Width = 274.015925000000000000
        object Memo26: TfrxMemoView
          Left = 11.338590000000000000
          Top = 19.055039999999730000
          Width = 226.771800000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sMensagemTxServico]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 46.409400000000010000
          Width = 264.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 90.645639999999960000
          Width = 264.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999795000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sEntregador]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 566.929500000000000000
        Width = 274.015925000000000000
        DataSet = dbItensFechamento
        DataSetName = 'dbItensFechamento'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          Left = 149.960629920000000000
          Width = 32.125984250000000000
          Height = 15.118120000000000000
          DataField = 'vlrvenda'
          DataSet = dbItensFechamento
          DataSetName = 'dbItensFechamento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFechamento."vlrvenda"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 214.976500000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbItensFechamento
          DataSetName = 'dbItensFechamento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFechamento."valor_total"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          ShiftMode = smDontShift
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao_item'
          DataSet = dbItensFechamento
          DataSetName = 'dbItensFechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFechamento."descricao_item"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo22: TfrxMemoView
          Left = 182.960730000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'qtdevenda'
          DataSet = dbItensFechamento
          DataSetName = 'dbItensFechamento'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFechamento."qtdevenda"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 684.094930000000000000
        Width = 274.015925000000000000
        DataSet = dbItensFracionadoFechamento
        DataSetName = 'dbItensFracionadoFechamento'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo36: TfrxMemoView
          Left = 149.960629920000000000
          Width = 32.125984250000000000
          Height = 15.118120000000000000
          DataField = 'vlrvenda'
          DataSet = dbItensFracionadoFechamento
          DataSetName = 'dbItensFracionadoFechamento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFracionadoFechamento."vlrvenda"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 214.976500000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbItensFracionadoFechamento
          DataSetName = 'dbItensFracionadoFechamento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItensFracionadoFechamento."valor_total"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao_item'
          DataSet = dbItensFracionadoFechamento
          DataSetName = 'dbItensFracionadoFechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFracionadoFechamento."descricao_item"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo53: TfrxMemoView
          Left = 182.960730000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'qtd_fracao'
          DataSet = dbItensFracionadoFechamento
          DataSetName = 'dbItensFracionadoFechamento'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFracionadoFechamento."qtd_fracao"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 642.520100000000000000
        Width = 274.015925000000000000
        Condition = 'dbItensFracionadoFechamento."item_fracionado"'
        object Memo54: TfrxMemoView
          Top = 2.000000000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - Item Fracionado - - - - - - - - - - ' +
              '- - - -')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Line12: TfrxLineView
          Top = 1.118119999999976000
          Width = 264.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 797.480830000000000000
        Width = 274.015925000000000000
        object Line3: TfrxLineView
          Top = 5.795299999999997000
          Width = 264.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 11.338590000000000000
          Top = 5.795299999999997000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub Total:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 11.338590000000000000
          Top = 59.692950000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Taxa de Entrega (+):')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 11.338590000000000000
          Top = 79.236239999999950000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 99.354360000000040000
          Width = 264.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          Left = 169.622140000000000000
          Top = 5.795299999999997000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'valor_venda'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_venda"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 174.842610000000000000
          Top = 76.913419999999970000
          Width = 86.929190000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo29: TfrxMemoView
          Left = 169.842610000000000000
          Top = 59.472480000000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_tx"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 169.622140000000000000
          Top = 79.236239999999950000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_total_venda"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 11.338590000000000000
          Top = 42.692949999999990000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desconto (-):')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 135.504020000000000000
          Top = 22.795300000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'valor_desconto_itens'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_desconto_itens"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 11.338590000000000000
          Top = 101.267780000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde. de itens:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 109.606370000000000000
          Top = 101.267780000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'nro_itens'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."nro_itens"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Top = 119.401670000000000000
          Width = 264.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          Left = 26.456710000000000000
          Top = 22.677180000000020000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desconto nos itens:')
          ParentFont = False
        end
        object dbPedidodesconto_venda: TfrxMemoView
          Left = 169.622140000000000000
          Top = 41.574830000000020000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'desconto_venda'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."desconto_venda"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 759.685530000000000000
        Width = 274.015925000000000000
        Stretched = True
        object Memo55: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = dbItensFracionadoFechamento
          DataSetName = 'dbItensFracionadoFechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - ')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 604.724800000000000000
        Width = 274.015925000000000000
        DataSet = dbItensOpcional
        DataSetName = 'dbItensOpcional'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object dbItensOpcionaldescricao: TfrxMemoView
          Left = 7.559060000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao'
          DataSet = dbItensOpcional
          DataSetName = 'dbItensOpcional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensOpcional."descricao"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 721.890230000000000000
        Width = 274.015925000000000000
        DataSet = dbItensFracionadoOpcional
        DataSetName = 'dbItensFracionadoOpcional'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo56: TfrxMemoView
          Left = 7.559060000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'descricao'
          DataSet = dbItensFracionadoOpcional
          DataSetName = 'dbItensFracionadoOpcional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbItensFracionadoOpcional."descricao"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 994.016390000000000000
        Width = 274.015925000000000000
        object Memo44: TfrxMemoView
          Left = 186.519790000000000000
          Top = 2.220469999999978000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'valor_troco'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbPedido."valor_troco"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          ShiftMode = smDontShift
          Left = 13.118120000000000000
          Top = 2.220469999999978000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TROCO SOLICITADO')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 1039.370750000000000000
        Width = 274.015925000000000000
        object Memo60: TfrxMemoView
          Left = 3.779527560000000000
          Top = 1.584964189999937000
          Width = 79.613970650000000000
          Height = 15.727721610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 86.929190000000000000
          Top = 1.584964189999937000
          Width = 79.613970650000000000
          Height = 15.727721610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 181.417440000000000000
          Top = 1.584964189999937000
          Width = 45.598200650000000000
          Height = 15.727721610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Top = 1.889754020000055000
          Width = 257.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 1232.126780000000000000
        Width = 274.015925000000000000
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
        RowCount = 0
        object Line14: TfrxLineView
          Top = 3.338589999999840000
          Width = 257.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Height = 83.711331110000000000
        Top = 1126.299940000000000000
        Width = 274.015925000000000000
        object Line9: TfrxLineView
          Top = 3.779530000000022000
          Width = 257.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line15: TfrxLineView
          Top = 64.795300000000000000
          Width = 257.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo66: TfrxMemoView
          Left = 6.089159790000000000
          Top = 67.314986670000050000
          Width = 244.829554440000000000
          Height = 14.278224440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 1080.945580000000000000
        Width = 274.015925000000000000
        DataSet = dbCreceberFiado
        DataSetName = 'dbCreceberFiado'
        RowCount = 0
        object Line16: TfrxLineView
          Left = 3.779530000000000000
          Top = 14.897650000000110000
          Width = 222.992270000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'documento'
          DataSet = dbCreceberFiado
          DataSetName = 'dbCreceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[dbCreceberFiado."documento"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 86.929190000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'data_vencimento'
          DataSet = dbCreceberFiado
          DataSetName = 'dbCreceberFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWindow
          Memo.UTF8W = (
            '[dbCreceberFiado."data_vencimento"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'valor'
          DataSet = dbCreceberFiado
          DataSetName = 'dbCreceberFiado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWindow
          HAlign = haRight
          Memo.UTF8W = (
            '[dbCreceberFiado."valor"]')
          ParentFont = False
        end
      end
      object MasterData8: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 257.008040000000000000
        Width = 274.015925000000000000
        DataSet = dbAuxCabRod
        DataSetName = 'dbAuxCabRod'
        RowCount = 0
        object Memo67: TfrxMemoView
          Left = 6.299216670000000000
          Top = 1.259843330000024000
          Width = 81.889816670000000000
          Height = 5.039373330000000000
          Memo.UTF8W = (
            '.')
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 117.165430000000000000
        Width = 274.015925000000000000
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.881880000000010000
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
          Top = 17.999999999999990000
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
          Top = 17.999999999999990000
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
          Top = 33.118119999999990000
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
          Top = 48.236239999999990000
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
          Top = 48.236239999999990000
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
          Left = 52.913420000000000000
          Top = 65.472480000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbPedido."nro_venda"] (DELIVERY)')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 81.811069999999990000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 52.913420000000000000
          Top = 81.811069999999990000
          Width = 211.653680000000000000
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
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 11.338590000000000000
          Top = 65.637785510000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Venda:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 98.267780000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cupom:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 52.913420000000000000
          Top = 98.267780000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'numero_cupom'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."numero_cupom"]')
          ParentFont = False
        end
      end
      object MasterData7: TfrxMasterData
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 1262.363020000000000000
        Width = 274.015925000000000000
        DataSet = dbAuxCabRod
        DataSetName = 'dbAuxCabRod'
        RowCount = 0
        object Memo68: TfrxMemoView
          Left = 6.299216670000000000
          Top = 1.409451669999953000
          Width = 20.787415000000000000
          Height = 4.409451670000000000
          Memo.UTF8W = (
            '.')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 257.008040000000000000
        Top = 287.244280000000000000
        Width = 274.015925000000000000
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 5.000000000000000000
          Width = 64.252010000000000000
          Height = 17.007874015748000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 236.456710000000000000
          Width = 257.007869130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Top = 237.456710000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Item')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 149.960629920000000000
          Top = 237.456710000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 182.960730000000000000
          Top = 237.456710000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 211.196970000000000000
          Top = 237.456710000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 252.574830000000000000
          Width = 257.007869130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 75.590600000000000000
          Top = 5.000000000000000000
          Width = 188.976500000000000000
          Height = 17.007874020000000000
          DataField = 'nome_cliente'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."nome_cliente"]')
          ParentFont = False
          WordBreak = True
        end
        object Line11: TfrxLineView
          Left = 11.338590000000000000
          Top = 4.000000000000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo33: TfrxMemoView
          Left = 11.338590000000000000
          Top = 23.118119999999980000
          Width = 37.795300000000000000
          Height = 32.125994020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'END.: ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 11.338590000000000000
          Top = 57.133890000000010000
          Width = 37.795300000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NRO.:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 95.267780000000000000
          Top = 57.133890000000010000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COMPL.:')
          ParentFont = False
        end
        object dbPedidoendereco_numero: TfrxMemoView
          Left = 49.133890000000000000
          Top = 57.133890000000010000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          DataField = 'endereco_numero'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."endereco_numero"]')
          ParentFont = False
        end
        object dbPedidoendereco_complemento: TfrxMemoView
          Left = 150.181200000000000000
          Top = 57.252009999999990000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DataField = 'endereco_complemento'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."endereco_complemento"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo42: TfrxMemoView
          Left = 11.338590000000000000
          Top = 76.149659999999990000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 11.338582677165400000
          Top = 94.267780000000010000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
        end
        object dbPedidobairro: TfrxMemoView
          Left = 69.811070000000000000
          Top = 76.370130000000010000
          Width = 192.755905510000000000
          Height = 17.007874020000000000
          DataField = 'bairro'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."bairro"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object dbPedidocidade: TfrxMemoView
          Left = 69.811070000000000000
          Top = 94.267780000000010000
          Width = 192.755905510000000000
          Height = 17.007874020000000000
          DataField = 'cidade'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."cidade"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 113.165430000000000000
          Width = 170.078850000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PONTO DE REFER'#202'NCIA:')
          ParentFont = False
        end
        object dbPedidoendereco_referencia: TfrxMemoView
          Left = 11.338590000000000000
          Top = 131.283550000000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          DataField = 'endereco_referencia'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."endereco_referencia"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo18: TfrxMemoView
          Left = 11.338590000000000000
          Top = 150.960730000000000000
          Width = 98.267780000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TELEFONES:')
          ParentFont = False
        end
        object dbPedidotelefone1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 166.078850000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'telefone1'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."telefone1"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 95.606370000000000000
          Top = 166.078850000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."telefone2"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 179.874150000000000000
          Top = 166.078850000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."celular1"]')
          ParentFont = False
        end
        object dbPedidoendereco: TfrxMemoView
          Left = 49.133890000000000000
          Top = 23.291245829999980000
          Width = 215.433210000000000000
          Height = 32.125984250000000000
          DataField = 'endereco'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."endereco"]')
          ParentFont = False
          WordBreak = True
        end
        object dbPedidoobservacoes: TfrxMemoView
          Left = 11.338590000000000000
          Top = 203.196970000000000000
          Width = 253.228510000000000000
          Height = 30.236240000000000000
          DataField = 'observacoes'
          DataSet = dbPedido
          DataSetName = 'dbPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbPedido."observacoes"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo49: TfrxMemoView
          Left = 11.338590000000000000
          Top = 184.299320000000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBS.:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 60.472480000000000000
          Top = 183.299320000000000000
          Width = 204.094620000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sMensagemRetBalcao]')
          ParentFont = False
        end
      end
    end
  end
  object dbPedido: TfrxDBDataset
    UserName = 'dbPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_venda=id_venda'
      'nro_venda=nro_venda'
      'data_abertura=abertura'
      'valor_venda=valor_venda'
      'total_pago=total_pago'
      'valor_restante=valor_restante'
      'valor_troco=valor_troco'
      'valor_total_venda=valor_total_venda'
      'desconto_percent=desconto_percent'
      'id_caixa=id_caixa'
      'data_atual=fechamento'
      'desconto=desconto_venda'
      'valor_tx=valor_tx'
      'observacoes=observacoes'
      'nome_cliente=nome_cliente'
      'cpf_cliente=cpf_cliente'
      'sit_001=sit_001'
      'telefone1=telefone1'
      'telefone2=telefone2'
      'celular1=celular1'
      'endereco=endereco'
      'endereco_numero=endereco_numero'
      'endereco_complemento=endereco_complemento'
      'bairro=bairro'
      'cidade=cidade'
      'endereco_referencia=endereco_referencia'
      'nome_entregador=nome_entregador'
      'b_taxa_entrega=b_taxa_entrega'
      'valor_desconto_itens=valor_desconto_itens'
      'nro_itens=nro_itens'
      'id_cliente=id_cliente'
      'numero_cupom=numero_cupom')
    OpenDataSource = False
    DataSet = cdsVenda
    BCDToCurrency = False
    Left = 80
    Top = 180
  end
  object dbEmpresa: TfrxDBDataset
    UserName = 'dbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_001=emp_001'
      'emp_002=emp_002'
      'emp_003=emp_003'
      'emp_004=emp_004'
      'emp_005=emp_005'
      'emp_006=emp_006'
      'emp_007=emp_007'
      'emp_008=emp_008'
      'emp_011=emp_011'
      'emp_012=emp_012'
      'cep_002=cep_002'
      'cep_003=cep_003'
      'cep_004=cep_004'
      'emp_013=emp_013'
      'emp_014=emp_014')
    DataSet = frmMenu.qrEmpresa
    BCDToCurrency = False
    Left = 20
    Top = 182
  end
  object qrVendaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     ,mat.mat_001 as id_produto'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , cast( case when trim(ite.ite_006) <>'#39#39' then  '
      
        '        trim(concat(MAT.MAT_003, '#39' (OBS.: '#39', trim(ite.ite_006),'#39 +
        ')'#39'))'
      
        '        else trim(MAT.MAT_003) end as varchar(200)) as descricao' +
        '_item'
      '     , MAT.MAT_003 as descricao_item_sem_obs'
      '     , ITE.ITE_006 as observacao'
      '     , ITE.data_hora_lancamento'
      '     , ite.sit_001 as cod_status'
      '     , fn_situacoes(ite.sit_001) as status'
      '     , ite.desconto'
      '     , ITE.ITE_005 as valor_total'
      
        '     , (ITE.ITE_002 * ITE.ITE_003 * ite.desconto * 0.01) as valo' +
        'r_desconto'
      '     , (ITE.ITE_005 * 0.1 * :flag_taxa_10) as valor_taxa10'
      
        '     , (ITE.ITE_005+(ITE.ITE_005 * 0.1)* :flag_taxa_10) valor_to' +
        'tal_taxa10'
      
        ',(row_number() over( order by ITE.ITE_001 nulls last )) as ordem' +
        '_item,'
      'mat.id_setor, mat.utiliza_combo'
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    BeforeOpen = qrVendaItemBeforeOpen
    Left = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag_taxa_10'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 243
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
      FieldName = 'nro_item'
      Required = True
    end
    object qrVendaItemqtdevenda: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
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
      FieldName = 'desconto'
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
    object qrVendaItemid_produto: TIntegerField
      FieldName = 'id_produto'
      ReadOnly = True
      Required = True
    end
    object qrVendaItemdescricao_item_sem_obs: TWideStringField
      FieldName = 'descricao_item_sem_obs'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
    object qrVendaItemid_setor: TIntegerField
      FieldName = 'id_setor'
      ReadOnly = True
      Required = True
    end
    object qrVendaItemutiliza_combo: TBooleanField
      FieldName = 'utiliza_combo'
      ReadOnly = True
    end
  end
  object dbPagamentos: TfrxDBDataset
    UserName = 'dbPagamentos'
    CloseDataSource = False
    DataSet = cdsParcelasPagamentos
    BCDToCurrency = False
    Left = 136
    Top = 184
  end
  object qrVendaItemFracionadoRep: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item_sem_tamanho'
      '     , '
      'case  round(ITE.ITE_002, 3) '
      'when round(1.0/2,3) then '#39'1/2'#39
      'when round(1.0/3,3) then '#39'1/3'#39
      'when round(1.0/4,3) then '#39'1/4'#39
      'end as qtd_fracao ,'
      ''
      'cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as desc_tamanho'
      '     ,cast(trim(concat('
      'mat.mat_003,'
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat('#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat('#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat('#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat('#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      '    when '#39'E'#39' then  concat('#39' ('#39',dm.tamanho_extra,'#39')'#39')'
      '    else '#39#39' end '
      'end'
      ')) as varchar(100))  as descricao_item, '
      
        'cast((case when trim(ite.ite_006) <>'#39#39' then concat('#39' (OBS.: '#39', t' +
        'rim(ite.ite_006),'#39')'#39')  end )as varchar(100) ) as observacao'
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
      '     , ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'and ite.item_fracionado>0'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    BeforeOpen = qrVendaItemBeforeOpen
    Left = 16
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'flag_taxa_10'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 35
      end>
    object IntegerField7: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'nro_item'
      Required = True
    end
    object FloatField8: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object FloatField9: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object WideStringField6: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object WideStringField7: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object IntegerField10: TIntegerField
      FieldName = 'cod_status'
    end
    object WideMemoField2: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FloatField10: TFloatField
      FieldName = 'desconto'
    end
    object FloatField11: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object FloatField12: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object FloatField13: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object LargeintField2: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object FloatField14: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object WideStringField9: TWideStringField
      FieldName = 'descricao_item_sem_tamanho'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object IntegerField12: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemFracionadoRepqtd_fracao: TWideMemoField
      FieldName = 'qtd_fracao'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemFracionadoRepdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object qrVendaItemRep: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT ITE.EMP_001 as id_empresa'
      '     , ITE.VEN_001 as id_venda'
      '     , ITE.ITE_001 as nro_item     '
      '     , ITE.ITE_002 AS QTDEVENDA'
      '     , ITE.ITE_003 AS VLRVENDA     '
      '     , MAT.MAT_003 as descricao_item_sem_tamanho'
      '     , cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as desc_tamanho'
      '     ,cast(trim(concat('
      'mat.mat_003,'
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat('#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat('#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat('#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat('#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      '    when '#39'E'#39' then  concat('#39' ('#39',dm.tamanho_extra,'#39')'#39')'
      '    else '#39#39' end '
      'end'
      
        '--,case when trim(ite.ite_006) <>'#39#39' then concat('#39' (OBS.: '#39', trim' +
        '(ite.ite_006),'#39')'#39') end'
      ')) as varchar(100)) as descricao_item'
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
      '     , ite.item_fracionado'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'and (ite.item_fracionado is null or ite.item_fracionado=0)'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    BeforeOpen = qrVendaItemBeforeOpen
    Left = 24
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'flag_taxa_10'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 35
      end>
    object IntegerField1: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'nro_item'
      Required = True
    end
    object FloatField1: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Qtde.'
      FieldName = 'qtdevenda'
      Required = True
      DisplayFormat = '0.000'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'vlrvenda'
      Required = True
      currency = True
    end
    object WideStringField1: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_item'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object WideStringField2: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object IntegerField4: TIntegerField
      FieldName = 'cod_status'
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FloatField3: TFloatField
      FieldName = 'desconto'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object FloatField5: TFloatField
      FieldName = 'valor_taxa10'
      ReadOnly = True
    end
    object FloatField6: TFloatField
      FieldName = 'valor_total_taxa10'
      ReadOnly = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object FloatField7: TFloatField
      FieldName = 'valor_desconto'
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object WideStringField4: TWideStringField
      FieldName = 'descricao_item_sem_tamanho'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object IntegerField6: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemRepdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object dbItensFracionadoFechamento: TfrxDBDataset
    UserName = 'dbItensFracionadoFechamento'
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
      'valor_taxa10=taxa'
      'valor_total_taxa10=total'
      'ordem_item=ordem_item'
      'valor_desconto=valor_desconto'
      'id_material=id_material'
      'descricao_item_sem_tamanho=descricao_item_sem_tamanho'
      'desc_tamanho=desc_tamanho'
      'item_fracionado=item_fracionado'
      'qtd_fracao=qtd_fracao'
      'data_hora_lancamento=data_hora_lancamento')
    DataSet = qrVendaItemFracionadoRep
    BCDToCurrency = False
    Left = 222
    Top = 106
  end
  object dbItensFechamento: TfrxDBDataset
    UserName = 'dbItensFechamento'
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
      'valor_taxa10=taxa'
      'valor_total_taxa10=total'
      'ordem_item=ordem_item'
      'valor_desconto=valor_desconto'
      'id_material=id_material'
      'descricao_item_sem_tamanho=descricao_item_sem_tamanho'
      'desc_tamanho=desc_tamanho'
      'item_fracionado=item_fracionado'
      'data_hora_lancamento=data_hora_lancamento')
    DataSet = qrVendaItemRep
    BCDToCurrency = False
    Left = 214
    Top = 442
  end
  object dsVendaItemRep: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemRep
    Left = 528
    Top = 184
  end
  object qrVendaItemOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_venda, id_empresa, id_vendaitem, id_opcional, descrica' +
        'o, valor, ord, tipo from '
      '(select '
      'vio.id_venda, '
      'vio.id_empresa, '
      'vio.id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao, '#39' (Valor: '#39',trim(to_char(' +
        '(o.valor * vi.ite_002) , '#39'99999990D99'#39')),'#39')'#39' ) as varchar(200)) ' +
        'as descricao, '
      '(o.valor * vi.ite_002) as valor ,'
      '1 as ord,'
      'o.tipo'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      
        'join vendaitem vi on vio.id_venda=vi.ven_001 and vio.id_empresa=' +
        'vi.emp_001 and vio.id_vendaitem=vi.ite_001'
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      'union all '
      'SELECT ITE.VEN_001 as id_venda,'
      '       ITE.EMP_001 as id_empresa,'
      '       ITE.ITE_001 as id_vendaitem,'
      '       0 as id_opcional,     '
      
        '       cast(concat('#39'Obs: '#39', ITE.ITE_006) as varchar(200)) as des' +
        'cricao,'
      '       0.00 as valor,'
      '       0 as ord,'
      '       0 as tipo'
      'FROM VENDAITEM ITE'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      
        'and not ite.sit_001 in (0,1,2,3) and not (ITE.ITE_006 is null or' +
        ' ITE.ITE_006='#39#39')'
      ') sub'
      'order by 3,7,8')
    MasterSource = dsVendaItemRep
    MasterFields = 'nro_item'
    DetailFields = 'id_vendaitem'
    ReadOnly = True
    Left = 384
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = 35
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'nro_item'
        ParamType = ptInput
        Value = 1
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
    object qrVendaItemOpcionaldescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object qrVendaItemOpcionalvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object qrVendaItemOpcionalord: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
    object qrVendaItemOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
  end
  object dbItensOpcional: TfrxDBDataset
    UserName = 'dbItensOpcional'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_venda=id_venda'
      'id_empresa=id_empresa'
      'id_vendaitem=id_vendaitem'
      'id_opcional=id_opcional'
      'valor=valor'
      'descricao=descricao'
      'ord=ord')
    DataSet = qrVendaItemOpcional
    BCDToCurrency = False
    Left = 862
    Top = 186
  end
  object dbItensFracionadoOpcional: TfrxDBDataset
    UserName = 'dbItensFracionadoOpcional'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_venda=id_venda'
      'id_empresa=id_empresa'
      'id_vendaitem=id_vendaitem'
      'id_opcional=id_opcional'
      'valor=valor'
      'descricao=descricao'
      'ord=ord')
    DataSet = qrVendaItemFracionadoOpcional
    BCDToCurrency = False
    Left = 862
    Top = 242
  end
  object qrVendaItemFracionadoOpcional: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_venda, id_empresa, id_vendaitem, id_opcional, descrica' +
        'o, valor, ord, tipo from '
      '(select '
      'vio.id_venda, '
      'vio.id_empresa,'
      'suf.ultimo_item_fracionado as id_vendaitem,'
      'vio.id_opcional, '
      
        'cast(concat('#39'Opcional: '#39', o.descricao, '#39' (Valor: '#39',trim(to_char(' +
        '(sum(o.valor * vi.ite_002)) , '#39'99999990D99'#39')),'#39')'#39' ) as varchar(2' +
        '00)) as descricao, '
      'sum((o.valor * vi.ite_002)) as valor ,'
      '1 as ord,'
      'o.tipo'
      'from vendaitemopcional vio '
      
        'join opcional o on o.id_opcional=vio.id_opcional and o.id_empres' +
        'a=vio.id_empresa'
      
        'join vendaitem vi on vio.id_venda=vi.ven_001 and vio.id_empresa=' +
        'vi.emp_001 and vio.id_vendaitem=vi.ite_001'
      ''
      ' left join '
      
        '(select max(ite_001) as ultimo_item_fracionado, item_fracionado,' +
        ' ven_001, emp_001  from ('
      'select ite_001, item_fracionado, ven_001, emp_001'
      
        'from vendaitem vi where  ven_001=:id_venda and emp_001=:id_empre' +
        'sa '
      'and item_fracionado is not null'
      'group by item_fracionado, ite_001, ven_001, emp_001'
      'order by ite_001) vis'
      
        'group by vis.item_fracionado, ven_001, emp_001 ) suf on vio.id_v' +
        'enda=suf.ven_001 and vio.id_empresa=suf.emp_001 and vi.item_frac' +
        'ionado=suf.item_fracionado '
      ''
      'where vio.id_venda=:id_venda'
      'and vio.id_empresa=:id_empresa'
      
        'group by vio.id_venda, vio.id_empresa, vio.id_opcional, o.descri' +
        'cao, vi.item_fracionado, suf.ultimo_item_fracionado, o.tipo'
      'union all '
      'SELECT ITE.VEN_001 as id_venda,'
      '       ITE.EMP_001 as id_empresa,'
      '       ITE.ITE_001 as id_vendaitem,'
      '       0 as id_opcional,     '
      
        '       cast(concat('#39'Obs: '#39', ITE.ITE_006) as varchar(200)) as des' +
        'cricao,'
      '       0.00 as valor,'
      '       0 as ord,'
      '       0 as tipo'
      'FROM VENDAITEM ITE'
      'WHERE ITE.EMP_001 = :id_empresa'
      'AND   ITE.VEN_001 = :id_venda'
      
        'and not ite.sit_001 in (0,1,2,3) and not (ITE.ITE_006 is null or' +
        ' ITE.ITE_006='#39#39')'
      ') sub'
      'order by 3,7,8')
    MasterSource = dsVendaItemFracionadoRep
    MasterFields = 'nro_item'
    DetailFields = 'id_vendaitem'
    ReadOnly = True
    Left = 384
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'nro_item'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField13: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object IntegerField14: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object IntegerField15: TIntegerField
      FieldName = 'id_vendaitem'
      ReadOnly = True
    end
    object IntegerField16: TIntegerField
      FieldName = 'id_opcional'
      ReadOnly = True
    end
    object FloatField15: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
    object WideStringField11: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 200
    end
    object IntegerField17: TIntegerField
      FieldName = 'ord'
      ReadOnly = True
    end
    object qrVendaItemFracionadoOpcionaltipo: TIntegerField
      FieldName = 'tipo'
    end
  end
  object dsVendaItemFracionadoRep: TDataSource
    AutoEdit = False
    DataSet = qrVendaItemFracionadoRep
    Left = 520
    Top = 240
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList24
    Left = 328
    object acAbrirGaveta: TAction
      Caption = 'acAbrirGaveta'
      ShortCut = 16455
      OnExecute = acAbrirGavetaExecute
    end
  end
  object qrCreceberFiado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select documento, data_vencimento, valor '
      'from creceber '
      'where id_empresa=:id_empresa and id_venda =:id_venda')
    Left = 15
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end>
    object qrCreceberFiadodocumento: TWideStringField
      FieldName = 'documento'
    end
    object qrCreceberFiadodata_vencimento: TDateField
      FieldName = 'data_vencimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrCreceberFiadovalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  object dbCreceberFiado: TfrxDBDataset
    UserName = 'dbCreceberFiado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'documento=documento'
      'data_vencimento=data_vencimento'
      'valor=valor')
    DataSet = qrCreceberFiado
    BCDToCurrency = False
    Left = 96
    Top = 12
  end
  object qrAuxCabRod: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select 1 dummy from venda where :flag limit 1')
    Left = 559
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flag'
        Value = nil
      end>
    object qrAuxCabRoddummy: TIntegerField
      FieldName = 'dummy'
    end
  end
  object dbAuxCabRod: TfrxDBDataset
    UserName = 'dbAuxCabRod'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dummy=dummy')
    OpenDataSource = False
    DataSet = qrAuxCabRod
    BCDToCurrency = False
    Left = 520
    Top = 120
  end
  object qrDadosCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'cli_002 as nome, '
      'cast(cep_004 as varchar(100)) as endereco, '
      'cli_008 as endereco_numero,'
      'cep_003 as bairro, '
      'cidade_desc, '
      'cli_012 as telefone1,'
      'cli_004 as cpf,'
      'cli_009 as endereco_complemento,'
      'cli_007 as endereco_referencia,'
      'cli_013 as telefone2,'
      'celular1'
      'from clientes where cli_001=:id_cliente and emp_001=:id_empresa')
    Left = 159
    Top = 109
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
    object qrDadosClienteendereco_complemento: TWideStringField
      FieldName = 'endereco_complemento'
      Size = 100
    end
    object qrDadosClienteendereco_referencia: TWideStringField
      FieldName = 'endereco_referencia'
      Size = 80
    end
    object qrDadosClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object qrDadosClientecelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrDadosClienteendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      Size = 100
    end
  end
  object qrAuxiliar: TUniQuery
    Connection = frmMenu.conexao
    Left = 275
    Top = 76
  end
  object qrForma: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'for_001, '
      'for_002,'
      'emp_001,'
      'b_fiado,'
      'b_devolucao,'
      'sfi_codigo,'
      'bandeira_cartao,'
      'tipo_integracao,'
      'cnpjCred,'
      'b_tef'
      'from formapgto'
      'where emp_001=:emp'
      'and for_001 = :codigo'
      'and sit_001=4'
      'order by 1')
    Left = 315
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        Value = nil
      end>
    object qrFormafor_001: TIntegerField
      FieldName = 'for_001'
      Required = True
    end
    object qrFormafor_002: TWideStringField
      FieldName = 'for_002'
      Required = True
      Size = 40
    end
    object qrFormaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrFormab_fiado: TBooleanField
      FieldName = 'b_fiado'
      Required = True
    end
    object qrFormab_devolucao: TBooleanField
      FieldName = 'b_devolucao'
      Required = True
    end
    object qrFormasfi_codigo: TIntegerField
      FieldName = 'sfi_codigo'
    end
    object qrFormatipo_integracao: TIntegerField
      FieldName = 'tipo_integracao'
    end
    object qrFormacnpjcred: TWideStringField
      FieldName = 'cnpjcred'
      Size = 14
    end
    object qrFormab_tef: TBooleanField
      FieldName = 'b_tef'
    end
    object qrFormabandeira_cartao: TWideStringField
      FieldName = 'bandeira_cartao'
      FixedChar = True
      Size = 1
    end
  end
end
