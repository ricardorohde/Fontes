object frmVendaTouch: TfrmVendaTouch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'OSFOOD'
  ClientHeight = 711
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 744
    Top = 0
    Width = 331
    Height = 688
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 0
    object pnItens: TPanel
      Left = 0
      Top = 88
      Width = 331
      Height = 364
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = 14074285
      ParentBackground = False
      TabOrder = 0
      object cxGridVendaItem: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 325
        Height = 358
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridVendaItemDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVendaItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridVendaItemDBTableView1descricao_item: TcxGridDBColumn
            DataBinding.FieldName = 'descricao_item'
            Width = 180
          end
          object cxGridVendaItemDBTableView1vlrvenda: TcxGridDBColumn
            DataBinding.FieldName = 'vlrvenda'
            Width = 62
          end
          object cxGridVendaItemDBTableView1qtdevenda: TcxGridDBColumn
            DataBinding.FieldName = 'qtdevenda'
            Width = 59
          end
          object cxGridVendaItemDBTableView1desconto: TcxGridDBColumn
            DataBinding.FieldName = 'desconto'
            Visible = False
          end
          object cxGridVendaItemDBTableView1valor_total: TcxGridDBColumn
            DataBinding.FieldName = 'valor_total'
            Width = 66
          end
        end
        object cxGridVendaItemDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
        end
        object cxGridVendaItemLevel1: TcxGridLevel
          GridView = cxGridVendaItemDBTableView1
        end
      end
    end
    object pnValorItens: TPanel
      Left = 0
      Top = 0
      Width = 331
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 5654808
      ParentBackground = False
      TabOrder = 1
      object DBText5: TDBText
        AlignWithMargins = True
        Left = 81
        Top = 6
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'vlrvenda'
        DataSource = dsVendaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 72
        Height = 16
        Align = alLeft
        Alignment = taRightJustify
        Caption = 'Valor unit.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 208
        Top = 6
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'qtdevenda'
        DataSource = dsVendaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 167
        Top = 4
        Width = 40
        Height = 16
        Caption = 'Qtde.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 382
        Top = 6
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_total'
        DataSource = dsVendaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 293
        Top = 4
        Width = 69
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total item:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnItem: TPanel
      Left = 0
      Top = 25
      Width = 331
      Height = 38
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object DBText1: TDBText
        Left = 6
        Top = 18
        Width = 42
        Height = 17
        Alignment = taCenter
        DataField = 'ordem_item'
        DataSource = dsVendaItem
      end
      object Label2: TLabel
        Left = 9
        Top = 2
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
      object DBText2: TDBText
        Left = 382
        Top = 19
        Width = 41
        Height = 13
        Alignment = taCenter
        AutoSize = True
        DataField = 'cod_produto'
        DataSource = dsVendaItem
      end
      object Label3: TLabel
        Left = 380
        Top = 2
        Width = 43
        Height = 16
        Alignment = taRightJustify
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        AlignWithMargins = True
        Left = 45
        Top = 9
        Width = 320
        Height = 26
        Alignment = taCenter
        DataField = 'descricao_item'
        DataSource = dsVendaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnObs: TPanel
      Left = 0
      Top = 63
      Width = 331
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = 5654808
      ParentBackground = False
      TabOrder = 3
      object DBText7: TDBText
        AlignWithMargins = True
        Left = 38
        Top = 3
        Width = 41
        Height = 13
        Align = alClient
        Alignment = taCenter
        AutoSize = True
        DataField = 'observacao'
        DataSource = dsVendaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 29
        Height = 16
        Align = alLeft
        Alignment = taCenter
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 527
      Width = 331
      Height = 51
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 5654808
      ParentBackground = False
      TabOrder = 4
      object dbtTotalVenda: TDBText
        Left = 231
        Top = 6
        Width = 186
        Height = 39
        Alignment = taRightJustify
        DataField = 'valor_venda'
        DataSource = dsVendaMesa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalVenda: TLabel
        Left = 4
        Top = 11
        Width = 221
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Caption = 'TOTAL VENDAS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -23
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = []
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 502
      Width = 331
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 13752749
      ParentBackground = False
      TabOrder = 5
      object DBText10: TDBText
        Left = 144
        Top = 4
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'nro_itens_cacelados'
        DataSource = dsVendaMesa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 4
        Width = 115
        Height = 16
        Caption = 'Itens cancelados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbAntecipação: TLabel
        Left = 221
        Top = 3
        Width = 86
        Height = 16
        Caption = 'Antecipa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 477
      Width = 331
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 11515257
      ParentBackground = False
      TabOrder = 6
      object lbDescontos: TLabel
        Left = 5
        Top = 4
        Width = 73
        Height = 16
        Caption = 'Descontos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTxdeServico: TLabel
        Left = 221
        Top = 4
        Width = 95
        Height = 16
        Caption = 'Tx. de Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel11: TPanel
      Left = 0
      Top = 452
      Width = 331
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 9209117
      ParentBackground = False
      TabOrder = 7
      object DBText9: TDBText
        Left = 151
        Top = 5
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        Color = clBtnFace
        DataField = 'nro_itens'
        DataSource = dsVendaMesa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 5
        Width = 39
        Height = 16
        Caption = 'Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalProdutos: TLabel
        Left = 221
        Top = 5
        Width = 100
        Height = 16
        Caption = 'Total Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = []
      end
      object DBText8: TDBText
        Left = 338
        Top = 5
        Width = 87
        Height = 19
        Alignment = taRightJustify
        DataField = 'valor_venda'
        DataSource = dsVendaMesa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnAcoes: TPanel
      Left = 0
      Top = 578
      Width = 331
      Height = 110
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 8
      Visible = False
      DesignSize = (
        331
        110)
      object Label18: TLabel
        Left = 22
        Top = 74
        Width = 66
        Height = 35
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cancelar Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label20: TLabel
        Left = 492
        Top = 168
        Width = 64
        Height = 27
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cancelar Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label14: TLabel
        Left = 240
        Top = 74
        Width = 77
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pr'#233' Fechamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label15: TLabel
        Left = 349
        Top = 71
        Width = 64
        Height = 35
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fechar Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label1: TLabel
        Left = 135
        Top = 73
        Width = -43
        Height = 32
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = False
        Caption = 'Cancelar Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        StyleElements = []
        ExplicitWidth = 59
      end
      object btCancelarMesa: TAdvGlowButton
        AlignWithMargins = True
        Left = 491
        Top = 6
        Width = 66
        Height = 66
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acCancelaMesa
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 18
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 0
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTop
      end
      object AdvGlowButton4: TAdvGlowButton
        AlignWithMargins = True
        Left = 23
        Top = 4
        Width = 66
        Height = 66
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acCancelaItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 17
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 1
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTop
      end
      object btFecharMesa: TAdvGlowButton
        AlignWithMargins = True
        Left = 347
        Top = 1
        Width = 66
        Height = 66
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acFecharMesa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 10
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 2
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTop
      end
      object btImprimir: TAdvGlowButton
        Left = 241
        Top = 6
        Width = 66
        Height = 66
        Action = acPreFechamentoImprimir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 5
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 3
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTopAdjusted
      end
      object AdvGlowButton2: TAdvGlowButton
        AlignWithMargins = True
        Left = 133
        Top = 3
        Width = 66
        Height = 66
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Action = acCancelaMesa
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 18
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 4
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTop
      end
    end
  end
  object Panel4: TPanel
    Left = 361
    Top = 0
    Width = 383
    Height = 688
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 1
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 381
      Height = 686
      Align = alClient
      AllowDelete = False
      AllowInsert = False
      ColCount = 2
      DataSource = dsVendaMesa
      PanelHeight = 57
      PanelWidth = 182
      PopupMenu = puPopupOpcoesMesa
      TabOrder = 0
      RowCount = 12
      SelectedColor = clNavy
      OnClick = DBCtrlGrid1Click
      OnDblClick = DBCtrlGrid1DblClick
      OnPaintPanel = DBCtrlGrid1PaintPanel
      object imgMesa: TImage
        Left = 0
        Top = 0
        Width = 182
        Height = 57
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F987000000097048597300000B1300000B1301009A9C18
          00000A4F6943435050686F746F73686F70204943432070726F66696C65000078
          DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A21
          09104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807E4
          21A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C
          9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173FD
          230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42995C
          01808401C07491384B08801400407A8E42A600404601809D98265300A0040060
          CB6362E300502D0060277FE6D300809DF8997B01005B94211501A09100201365
          884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0B7
          00C0CE100BB200080C00305188852900047B0060C8232378008499001446F257
          3CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE49172B
          14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE0E
          AECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2F
          B31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370F8
          7E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3C
          FCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB7
          0BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525D2
          FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F700
          00F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E44
          242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC6036
          844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C051
          688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA8801
          628A58238E08179985F821C14804128B2420C9881451224B91354831528A5420
          55481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB543
          B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F
          3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB056
          AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A820
          1C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C23
          D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E5223
          E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE421
          F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52DD
          A8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D31A
          681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D861583
          C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F99
          6F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB54
          8FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67A8
          6F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B
          0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352
          F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB931
          655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A
          275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477
          BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806
          B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E184
          91B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE
          9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDF
          B7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB346
          AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806
          DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D
          5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613
          CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BD
          E44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E
          593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F91
          57ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8
          B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02FB
          F87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC
          90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557863F
          8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3E
          AA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDF
          FCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96404C
          884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8435C
          2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A
          9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC6585
          B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B26765
          5766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A586
          4B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD54F
          ABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D
          4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCABF
          99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40D
          DF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A4
          54F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB
          5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203
          FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D55
          8D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A
          429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794A
          F354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F
          6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6D
          EA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4
          BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727
          EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7
          068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA743
          CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5
          FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE4
          7C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB00000B5949
          44415478DAD55A09705455163DBF3BE9ECFBD2212180A565CD8C8EE88C0583CA
          04041559544022A86C256B0292440204080912402241445645C405D1B16064D8
          04545434C2802085C32E0824642309249D747AFB7FEE7D9D6ED2E925E9106B98
          97EA4AE0BFE59EF7CEBDF7DCF75B4ABE38082A499200F497203D43BF13E8A3E0
          F66C6C67B102E573FABD4B5614452200BE04209B9ECD6DECF0FFD06883953C02
          B080010C26ABB7DC2EC64B56EB6051CC504B3E1E4150BFA10C600B0D1AF2BF36
          DC6E15FD34C80D0852050A208A0736D393AD0460C041FAA3BBE32E484E93FEDE
          8DD79415193AB91649C17DD13BA40F9697E543AFD4C34FE5EFD20EB2F29034EC
          C2801FE8EF879A3EB0281698601403D4F081AFE4EB04AABD9B5931A141316070
          D8300C8F1C8975156FE1B8FE18627DB5B860380F1F494D16A89A0F2B949EBDD0
          BF090049708FDB1D7E77C18F0C2F3195A0CC5C42307C682702D0DE018A3746AF
          E869A354181B3511FD439FC6A2D21CFCAC3F8AA5096FE11BDD97D854FD3E22D5
          11AE010CF9F526001916B1CF63A326E0B1D0FED0C017C5A622FCA8FB01BB6BB6
          A1848004A982C5A2ED0183D7D2CB75085187614A4C061E0CEC8EBCD26C9C6D38
          8D2509CBF193FEDFF8A4EA438C8E1A879D37B6095BFC24FFA66B33807E760075
          34D97D010F60717C81530428325DC6C6CAF5F85EB75F4CC2B46ABB6F48626C1D
          F1BD8BE64ECCD066A3A36F47641567E08AF9320A1256E190AE101BAAD6627EFC
          6B302A46BC51F61A420968ADA5A6E9BA85D2E0F3360012EA651DEE09F8330178
          031A95C669591EF871D5FBD85CF581F8B77537BC0721938FB1B3760BEA81E971
          7310AC0AC1CCE26928315EC5B2C4D5B449DF62C3B5B578357E09196F404E4916
          2644A720C6274E005133E1C8271A013C6E3F0136C6443E303AEA250C8B78C1AD
          017B6A76626DC50AB1337E921F5AEF179208101C599E0C1B8489D15361900D98
          57320BD5E64A2CEDB812DFD109BF57B90EB91D168BA894533213CF478EC1A0F0
          C1C8B93A931CFA57F84BFEB6350BA5A79B00606E9B098089508F8B49C1B3E123
          DC9AC20B2D2B5B0CA36C1461AE3527C1F15D2DA984412F448EC6754B356615A5
          8BD3589EB8165FD5ECC1FACA35C88BCFA7DE2AA2541A45A45118173D19738AA7
          E370DD8FC25F1C28F4F4B9C79CC2A88976D604B338B667239E776BD001DD3728
          285D0803F5F7F74027DE183632541D8E949869E813FA046E58AE93F16944DB7A
          BC99F8369DEA0EACBFB61A7909AF53E8D06046D1CB782A7C08A66AA78B7CB0FD
          FA56E103CD9A6B00BCA489E2B285408C2710432386BB05B1B766B758808F5423
          695CF460DFAA43274D67646867E14FE463E5E65264154D1751A8A0D34AECBABE
          1D1BAFBD83DC84C514E582309380F50B1B8069B199D854B591FCE16D919955AE
          C2E8532E0158778D4170421B1F9D4A3EE19E4EBB6F6CC75B65CBC40968548E3E
          C1C6DFEDFF07CC8ECB4582261145C62B984B74D010ED9625AE123BBB9E1C9669
          13EE1381B4CB93D037B41F32C9B9F7D7EEC3929205443B4AA714F55C3406D0D7
          25001B088E02663A0B3E89611EE8F4C58D1D0462296449B64727DE0076F20509
          F9B837A0ABE8B78F4E8C017378E4D8FE4EC52AA2CD5244FA4421FDCA24F40CEE
          8DAC0EB938A93F813957A70BBFE139DCD0D33380E6741A2740B47012E505D693
          203A715EE919D20B391D16D9FBB07FF9D2B38F2A3750B479878CCF17E131FDCA
          64F4087E1833B5F328F3978A9C70D5588440A28E8756280D6A1140533A99C449
          247B380906B1A28C40488AD0371362A6B8ECFF8FEA4D8825C313359D9046C63F
          18D80DD9F179D05BF4C82E998163754784D3B610DD08C0D93E2D02B879120611
          9D269251C35A00B1B2FC0D9828C4BE9EB8025D03FFE2B21F47A04997C60807CF
          8D5F445CF725CECFC71794674255A12D9BE41D005B9E2008948CC6739E88744F
          A7CFAA36634BF566ACEEFC9EE0B7ABC622EE58DD4FB83FF001A24A1045A2F5F8
          80A251903AB8B5EAB7501AE805001B085B749A4499D41D8803B5DF5084F92716
          762C20CEFBB438EFDE1BBB904F398535964F2BFAB71980ADB18C60C79E184D74
          8A74A413F3368B326CD780BF6244D4C816E73A5A7F04AF5E9D239CDE5FF24AB2
          338047DB0440724876A976106C3CE784F3863322ABBAC89EF6C63E7040F73536
          54AC4335C90A7FEFC561A134A08D009A8230C180D498740C24C15550BA18970C
          1729AB2E429C6FBC437FD64D2CCB59EF9F6B3883D30DA770D6705A3C6B83F1B7
          0EC006834170C91741CEDA4573075ED166D1DF11F61E978C17F169D5269C2183
          AF992BA0B3E884D254AB5442F7586B8F36D516ED01C07A05C2FC7D2A7C28A668
          D31BE5AEB51DAD3B8C35E56F228C001DAD3F2CB2AABAF54EDA0A00677ADF0285
          20F43CCB875154F6BD183DD641709D6938899CE2591849F545BFB08128A06264
          2745267654CED4ED70DB5128F56F230049A84CBEF2F0434A6C1A151CCF383C2F
          3795615EF14C3C1AFA38921B1D9C6B8D8F2ADFC3A6CA8D746AB29009B708A2ED
          00586586AB2390D1611609B05E0ECF6A2DB5985D942178BEAACBBB4E63BFADFD
          9A32F5325C33558804768B007A790D4047062652FA9F153FCFAE326D8D4BC6D7
          480EECBAF12F44A82331267A02253BE77A824BC3E5A54B704C7F0441529090CB
          6D8A42DE02E04AEA5EFFFB84F15DFCEE747826D3CF9AF215D85CF901C5FF5041
          19FE4C8E9D46796284CBB9DE2E5F851DD73F1797081E64B37B004FB612004FCC
          D460C93B3D6E36B4BE714E7D3E26C3D755AC843F152B7C7360CD1346C1F7C95A
          921D2EA438CFBBB5FA33BC5BB1067AF2A90041292F32F19367923C02B01A6116
          3709FD4207224D9B29C456F3B69BCAC2A5A58BA0A2A2DD5794964A93F126F149
          8D4D7749276E47EA0EE2CDD2A5B868BC80607588B8A96BC569144AFD4E27B558
          911929542647BD8889B15384D86ADE7EACFD1EF349CBD82A301797B0A2F0B7C8
          66A4C6A53969275B2BA602660555753FD47E2722542BFCC23D009BF13CFCA598
          89181E358AF6C459E29ED4FF42112793F85CD528C43C9DA4553BB9F3096E7A59
          8FF749567F5AB989DF1C51BEF0F31E8088F1963A04AA03F1725CA6B82170D52E
          1B2F91F1AFE0B2E13704A942D012776D3EC14052884EC9511ECAD3EB3B4506E7
          BBA320F7A19601FCDD01002FC2F78FD13E31C88C9F8B87827BBA1CC913675DC9
          C02FFAE308A1EAA9F5D1A3F1A280FC2A95644772A4FBCA8E4F97FDE284FE675A
          2344F8971380279A00B05E75D78B3A757687F9F863C03D2E2766800B4AE61157
          BFA5D2AFC5BAD5CD499884864A2110C322DDDF3BB1F85B5DB61C5FD6ECA50815
          D0BC527304C0BA86C3635E623EEEF2BBDBE584BC731C6DB6556F115ABFAD2F3E
          AC3E66248F308BE894ECA13C65DABD4E6BEE215A71E676B85A7CFC544F0180FF
          5327EB44C13E3AE625B793AD295B810F2B3788F7042E6ECABC6E4C27BEAD4E89
          4BC77391EE2F94CF518134E5E278B1814D4ACE42A9EFA9870500CEA206B901D9
          09797822ACBFCB493EA9FC082BCB0A44B4E1EBEDF6787726E844850EAF9FA29D
          86E7285CBB6A578DC5987C71ACF03DEBED9F0DC0C9876F9E00151A2363C608E7
          6ADEB8E85E5894034984364DBBBE68B2D1896BBBA9DA0C0AD9CE200EEB0E22F3
          D234A8A808E22C6F07D0E7E443761F60C70A5407614E7C2E1E0949B20F66F5B8
          B0385728D000DAFDDFEBADA5B828203AA56AD33034EAB9C6770FD6DD9F5F341B
          FFD19F20470E74F481478FF73848755D77DB4EB0237316EC1DDA179DFC3AE337
          8AF1FB6BF659EF28555E8B2DAFCFC22C9B6805197F0B79045D03EF478DB98636
          F02BCA39979DEB07130E494987BA6F518548436CFF6F4B360D94116DEFCDFD69
          E0ADBD13F30682F52D0E9F3660157BACAD38843AAC4FA6C93A65AB9474A0DB60
          12E45B48403AC5431EF07BBF1FF6D414BB2054A17996274228A857864A49DF75
          F395A1644B7ED25C024A7D6F8BAF4CB86F32C13242510C4A1E69A5057C029065
          457CDD86CC7F863EB7F7D76D1414D3477CDD46A59694FF029A1B80690B5F212B
          0000000049454E44AE426082}
        Transparent = True
        Visible = False
        ExplicitLeft = -14
        ExplicitTop = -1
        ExplicitWidth = 58
        ExplicitHeight = 40
      end
      object lbNroMesaComanda: TcxDBLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alClient
        DataBinding.DataField = 'nro_nome_mesa'
        DataBinding.DataSource = dsVendaMesa
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clBtnShadow
        Properties.WordWrap = True
        Style.BorderStyle = ebsNone
        Style.Color = clCream
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.Shadow = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = DBCtrlGrid1Click
        OnDblClick = DBCtrlGrid1DblClick
        Height = 51
        Width = 176
        AnchorX = 91
        AnchorY = 29
      end
    end
  end
  object pnStatus: TPanel
    Left = 0
    Top = 688
    Width = 1075
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    Color = 5263440
    ParentBackground = False
    TabOrder = 2
  end
  object pnMesaComanda: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 688
    Align = alLeft
    BevelOuter = bvNone
    Color = 14074285
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = -2
    ExplicitTop = -6
    DesignSize = (
      361
      688)
    object lbTipoVenda: TLabel
      Left = 19
      Top = 238
      Width = 150
      Height = 42
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'COMANDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AdvGlowButton3: TAdvGlowButton
      AlignWithMargins = True
      Left = 8
      Top = 360
      Width = 347
      Height = 75
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Action = acTranferenciaItem
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 2
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
      Appearance.BorderColor = clGray
      Appearance.Color = clYellow
      Appearance.ColorTo = clYellow
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = clYellow
      Appearance.ColorMirrorTo = clYellow
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      ExplicitWidth = 450
    end
    object btLimpar: TAdvGlowButton
      Left = 217
      Top = 314
      Width = 77
      Height = 70
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btLimparClick
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
    object edMesa: TEdit
      Left = 18
      Top = 286
      Width = 156
      Height = 50
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      OnKeyDown = edMesaKeyDown
    end
    object pnLegenda: TPanel
      Left = 0
      Top = 549
      Width = 361
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 464
      object lbLegendaLivre: TLabel
        Left = 33
        Top = 6
        Width = 27
        Height = 16
        Alignment = taCenter
        Caption = 'Livre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbLegendaOcupada: TLabel
        Left = 189
        Top = 6
        Width = 50
        Height = 16
        Alignment = taCenter
        Caption = 'Ocupada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbLegendaFechada: TLabel
        Left = 99
        Top = 6
        Width = 48
        Height = 16
        Alignment = taCenter
        Caption = 'Fechada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 285
        Top = 6
        Width = 70
        Height = 16
        Alignment = taCenter
        Caption = 'Ag. Limpeza'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape1: TShape
        Left = 7
        Top = 5
        Width = 20
        Height = 20
        Brush.Color = 4381259
        Pen.Color = clNavy
      end
      object Shape2: TShape
        Left = 163
        Top = 5
        Width = 20
        Height = 20
        Brush.Color = 2441207
        Pen.Color = clNavy
      end
      object Shape3: TShape
        Left = 75
        Top = 5
        Width = 20
        Height = 20
        Brush.Color = 3462373
        Pen.Color = clNavy
      end
      object Shape4: TShape
        Left = 259
        Top = 5
        Width = 20
        Height = 20
        Brush.Color = 15448147
        Pen.Color = clNavy
      end
    end
    object btOK: TAdvGlowButton
      Left = 220
      Top = 238
      Width = 74
      Height = 70
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btOKClick
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
    object pnImagensLegenda: TPanel
      Left = 322
      Top = 619
      Width = 359
      Height = 63
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 4
      Visible = False
      ExplicitLeft = 425
      object imgLivre: TImage
        Left = 17
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C180000004F494441546843EDCF310D0020100031B4FD8AFF053320A321B9
          A102BAF699FBB3025A01AD8056402BA015D00A6805B4025A01AD8056402BA015
          D00A6805B4025A01AD8056402BA015D00A689F07E63E45AE973CBED46BF30000
          000049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgReserva: TImage
        Left = 56
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C1800000EB6494441546843B597797455E5B9C637DA76D52EAF5DB51454A6
          308ADAB5BCD78AE72427E464228C61EEEAF576C1B2B4E516D43A500ADA6BD5A5
          7540175420C83C850C8449C20CC18484B13206026438F33C4F3949A0EA739F6F
          E7EC78120F9C40ED1FBFB5CFD9D967EFDFF37EEFF7ED2F927FD2A476264F9609
          4C992205A74EED20346D9A4C700A99395E8A6E7C426A29794C6A297E5C6A2D51
          78426A2B95F901194C46938537B6FE7C0339484E90D3E418D9CEBF2D2233C853
          E44122FF5EB95F5BF16352A0F83FA5D165D725ED369394B5CD28656D3749393B
          CC32B93B2D1D7C57017A51601629230E826ED24A4E91BF9111BC578FF8007965
          F5FF72809E947F968CBA45801F9179E43AC1BF4880949027458060F193D2B8B2
          3AE9E96D9E7BB4DBCC3FC8DE6EFAFE9D04B88FBC4A1C0424C400D95D02E4F061
          17620FEFC263682B1E82B62D29682B1ACCEF4FB49F2F1ECE7303786E103F3F1A
          777D27A2E49D2F8B073F70B1649234BBEC9094B9CDD42363BBED1ECADF4BEE49
          16A01785B7C6C4BF61CAB493C119E37FCC00F730C0DB0CD04AF00D8FB54B6D19
          84962D4311DA910BCFBEDFC05F3E1DAD453C4F22656A780ECC86FFB329682E7D
          8AD7A6F0FC50FE7678DC7D3AA8BE513CEC1728EA25ED2A79591AB1C32FA5EF74
          51DADC83E2828401FE830176117C8B490CF1BBD10BA3858F6F62003EE01B5AB7
          0C2183112AD3C051F11A0C6777C170F5348C46135C6737A0B57000198870793E
          CF196068B80CDDC523B09C28807FF7F4D83D189C21E3EF4B6CD1A2E1A3FF5934
          40BA56344A5AB47585F4F4CE8894B3D37ACB112848282F98CC0033C67D1DDDF4
          38A2AC186F4C58D9C21484B6A6C25AF92EF4D72FC06C75C0ED8BC01F8A2210B9
          89D0956244D7FE042DEB1E44F3EEB1F00542F0059BE1F147607578A0D3E960F8
          621BBCE5BF4294456821EDF7EEC047C67FBDA59FF455613FE983B2D5D253BBDA
          A467764564E2033C47705B264D46F81D15A2A5C3F8300E3D1FE6669BE86AAB61
          71F829174428149209068308849A11B0D5215CF33AC255AF2078B908FE20C3F9
          FD328140005E9F1F36A7174DBA2698AB17235CFA34A28583E4E2B4331CCD5B86
          BB9AB73CAA89160E93DA0A074A1BB7BE25ADD9FA9EB476EBDF24C94779D28F21
          9A08256F0503E44F45E077A3F980C1BCE950588FBE09835ECF6A367712571082
          010A07C2AD140FC3176AE99057F0F97CF2D1E3F5C360F34177AE1CFEED39886E
          EECF673C1A4F6DA4F0D1BE91C2A11236F726BD6484FC30F23A4152F227C33775
          02424B46C072FC7D182D0EB9CAA17067F14E01E41021F8393A7E7FA093BC1240
          418C86C51980EED2E70C918BE64D0340E978D646380AF148DE89131752AEFA5B
          B2B7C09F9707DBFB0B60B25B100CB7573E91BCA02300E92AAED02980D72B1FAD
          6C29DDF9830896A811D93C98E2C33A086F1E3A9E480A92273F7F3F430409BAC5
          E8D170BFF42A82363B42D1E8771E40C164F3C278721DC29B8622B26990105738
          45BE27E4059263C284E3AEFCFC9BDEFC7C748B09136482E7CE21D4D6F66F0BE0
          F6703E182CB0EF9F8BC886BEF101BE0E6D1A329D4802C9306EDC16EB84096621
          C7D1E81EA346C15F54F4AD11483889EF3280D7EB81DDC5F970B182CFFA05C21B
          0680C20A07821B874802E9EA9831B31962AFA8AABB9B78D8469E850B118A9316
          925E4A44221184E3CEDD5D00173C1E8FFCD96071C1B66F2E42EBFB83C20AF6E0
          C6C14F92EF49E7F3F286D58D19F3579710EB22DA1511D233660CCC5A2D74AF72
          1E504CAC40CDCD11982D562C59BA1C7B0E1E46B8392A87B89B001EE27639E171
          D9F99DA3E0F4407FB61C818D43293E880C96096C18FC7C60C3A087A5B37979F7
          3144BA75DC38BF67FC78B86F8167DC3898B2B2707DDA34342E5E0C577D3D42AC
          B61881304384F979DD860D983973263EDB77009196568EC2DD8D80DBED86DB69
          67081BE782074D0DD7E12ECD44607D8A105758C500D9D23F468D92CE90FAD1A3
          AB5C944C849B5537B06D9A962D8383E2E1961644C4048EF5BA9F0F8F84C3D09B
          2C78ED8D37F0DBDFCEC2D1E3A7D072E3467B2B09418A7412A7A44F088B56E167
          593EF6D9E374C249EC4E877CCE6034C3BAEF4504D6F6817FFD208563FEF50317
          C80104E7468D9A65A7ACB30BAEB16361C9CD45D3279F20D8DA8AE69B37E53E57
          7A5F16A3A0900A47C2385F7B057F7CF965FCF1A59770E1E225B4449BE1A75CBC
          BC1C80BF1355F7B85CB2A42FE08737148497A3E9E2DFDD1C3D1BDFCEEE402BCC
          9E36188EAF42604D6F8A0F54D091B5D299DC5C85071AC68CD1898A770AC01547
          3F63060CAC7C8401C2ACB440545FAE2C2BE68F6B11311295D535983B772E16BE
          FE175CB97A8DAD16E65642BC89DBF73F7200119A45F0B118FEE666F81C2EF8AF
          5C41A0A61AC1BD7BE1AF3C0697A9119E2F56C055F516ECBB677204FAC60708FA
          D60DDC2F9DCEC9913945CEE7E6CEB3B35D1CAC7A07D9D930BEF20A8CAC627BBF
          C70250424C62A5FA1D523C4629B47BCF5ECC7DF14554EFDF8F16BE330256AB1C
          42840E381CF05DAB87AFAA0ADEB2327856AD8267E932B89617C0BA7E03743B76
          A1FECC25D8AE7E0EDFCA9FC2BFE201F857F70285498AC24DEFDA949A8E00B110
          298D79797A9708A1C000E6E79E83B9A141AE98681B3900E5E500317919CA89BF
          B7717EB8B8CD387FF234ACEFBE0BDBBC79707EF8218267CFC24A49CBFB1FC0F8
          E122180A5640575A8686C315B87EEE02EA9BF4D0DBB96CFA02FC7D1BDCF547E0
          2BB85F0EE15BFD10BC6B079214857F7AD70E38219DCACEEEE004399793F3A62D
          262F46C32EF63E3939B09794C0C7C92BD67A2129464369870089F07BA4B50D3A
          4EE443151558B2E2535CDC5D0ED78205B032806DFE7C380E1C446DF93E345DA8
          85DE6082DEED85C51F843B1491EFA914428CA4CBC36DB6FE321C875E8163CF6F
          E0D8C6657C4D1F8A0F50087BD6F43F249DCCCAEAC489ACACFE0DB9B93A07571D
          9B426626ECB366C16B3070A2B16F451B503ECA37713014E6B2E7C1B113A7B094
          155DB0F035FC7EF66CCC79FE791C3BFA39BC0505ED23C0A5D7C47026B1AD8E34
          F377DC7E73871AE4E4150510F75410CBA8952D67B1DAF90F92935B0A330CD5CB
          E05DD913945630B957F7DF9C288074263B7BBE59543E3E045F5E4ECA78D93E72
          D5297EFED2256C2E2EC53C0AFEEF1FFE8097797CFFE38FB1FBD011D4D637C2C8
          0AFB44BF73225BCD16189DAED8BCE1AA14BF32515AAC46E2ED2BE46D361B2C16
          4B3B0CD1A437C374603E3C2B7B83D20AA7C89BB270578E6765DD7F3927E7A243
          8450E06A64136FE49327F90E68C5CE3DFB9036320353A74FC77B8B3E42E9AEDD
          387F85A294F4B08783A2AAB1B5DDC57DBE5B966D97969750A20410EF001783BA
          B8F63B7894AB1F0B60260D0DF5B095E4C1BDEA91F8009BDDABFB4D946A28DC95
          6AC22093745CFFED14B72A70146C6C0D3F1F72E94A1D366DFF0CE59535B86CB2
          F1FF5C4E70B685DFC31714AB285AA1E3E544312F2BAC087BF877212C5E566E9E
          77F328E4ED767BE7EA13A3D98AC60B47E05C3308AE557D49BF187DE7F3D83F61
          00C1B1ACAC7BCF6565955862F2E2285E68969123E1E04B2D24DE09DCF384444B
          B18F7DDCB7888A2B9BB08E2D0191DB23AE4544951D3159212D3E8B7336565E54
          5F19012B69323961DCFF27B83EED1D0B20E377AEEC3B92DC27D56466DE92635A
          EDCFEBB2B36D3621AEC065D5C239E1E2FAEEA1BC2C2B2463E2E2A8888A0ACB50
          5EF9ACC80B71A5E20A8ABC12C06475A0F1F269D8368E806B454F3857F6217DE1
          F8B4EF097E960452B5567B5B8E6BB5739AB88C0A79B3025BC9C2DE775DBE0C0F
          DB46A9B4C04559858E008A780C45FEF6016C68323A60D8FF6738973F48E94748
          1F85E7892448281D4F1539A3D516994408628E61D268607DE105B8F960375796
          EF3A80DEEC42E3999DB0AF1A024741EF0E79FB8A479AC8FD441248C732329252
          9591F1D039ADF6BC0821CB0BB8B516216CEFBD07B7E8F7D8FA7DDB00B163B200
          268B9DAD7306E6422DECCB7B0A69195B81383E3C8B50BE9D84C25D6100A972E4
          C811B55AADDBCC396052E00BCE949101FBBA75DC3DF28DCADEBF6500FECD4149
          11C2CEB076718C93570298AD2E345CBD0853E964D83FF931A51F8E673FA57F74
          C701040C20985EA7D5B68AEA1B1518C0C830F61D3BE0E6A476C58D424700B698
          8DDB0BF39C3930BFF30EAC3535B0F33A3B43C50730583D68A83D1527FF50BCBC
          83DFFF2B5E5E0E5029E4BA03031C259F8F1CF9C2D5CCCCAFE24318B8B41AB8CC
          DACBB9F7E1A476C5464296E7BAEFE06437FEF29730A8D530A4A5C1281602B69E
          ADAE4E1E0D8BCD0E9DD186C65325306F625B2E55E43BF8D2BAFCA1FF26525764
          A93BA18254A6A7BF718D2B9168218302E78308612D2E86538C02ABEEE4883829
          687EFB6DE855AA6FAE1581F9DDF8ECB3D097EF65CB9CE6710E2C2BFAC3C6CA53
          2C8EDE5F5A96F57E4111EE4A42C96454A4A74B55E9E91F5C63FB0821BD427A3A
          F43CA7E73FFC865DBB6066AB98FFFE77E819563E1F7FAD38C7D1D06565C3F062
          2A2C4B1E8465F94F40D9786E92B924A1BC20A1605218E0884623556A348BE510
          42464188524CFFCC33D0113DDB463E177F4D3CDC4FE935BCC7B34FC1FC511F58
          0A7E46F15E02937969AF2942FEDF12A082010E6B34F732C492AB22849024BABB
          258DA392CFB67ABB1F4C4B7A6D332FEE3DD4BCA2A764F9F46732D695BD129258
          3019B10062140EA7A5F5A84C4B5B54176B9F8472DD459309DD284D5837563DB1
          31532319FF2F4532FDB51DF39B89492C988CB800B11052456AEA5BB5E9E95F89
          104DDDE45B01D84E82A6F40C6F9326FDD78DAA0C2919890593D125C011063894
          9A2A1D494D7DE982467343C75546D0749788DFD66934CE4B1ACD0F6B79FFDB91
          58301909021C660011E2606AEAFF7CA1D1781BD9524D441CEF04F19B06723C2D
          6D5D25EF579584C482C9B84580B810DA93A9A9F5F53121598EEF89DBA25C47CE
          A4A5D5B2251F39CA7B2523B160329204101C50AB5358C18A2B5C528560431294
          2067D3D28247D4EA4C064828DC95C482C9E84600C17EB5FA8787D4EA8FCEA6A6
          360BC9A6986C3CE29C10BF929A8AE3A9A9FA836AF5C4C36A7542D94424164C46
          370370144408699F4A35B64AAD3E7D9E92D7C488900652472EF0DC09B5DA7E48
          A5FA98D70D6000892390503611890593710701E4102A95B457A5FA298FBF3EA2
          52951E55A94E939AC32AD53A9E9BB147A54AA17C0F71DD9D054895FE1FC1E3BA
          9B3D148FDF0000000049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgLimpeza: TImage
        Left = 95
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C180000004F494441546843EDCF410D00200C00313C62164F1301321A927B
          5440D73E737F56402BA015D00A6805B4025A01AD8056402BA015D00A6805B402
          5A01AD8056402BA015D00A6805B4025A01EDF3C0DC071CC59E87F72650EE0000
          000049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgComandaLimpeza: TImage
        Left = 135
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C1800000409494441546843ED95ED4F53671887CF1F32FC349B98183FD39D
          9EBE505B9CBCAC748A98E1445DCCA00C4A79918845A034C5B1320B21A838E632
          A505E4CD8AB35B9632FD022E99F1AB2B022A6FEAE307FE81DFEEE7849A861D8B
          C99699E7641FAEFB3EBD797A725FE5F457C995789D2298A0A4A44FEEB24D0282
          B2C905D8B6A14830A9F8A7578C80A0E840A0880A014121813B2F190141615221
          150282A2078199178C80A030A9800A01412181DB1B8C80A030E920150282A203
          818FE3EB8C80A0E840E0C0AD354640507420903FBDCA0808CAFF02EF1B2639A7
          56180141D1818063F2392320283A10D84F8580A090C0C4334640507420601F7F
          CA08088A0E04F2A810101412B8B9CC08EC84ED2DD7EF1926D1328C2FB413A6D1
          25582656601A7BBAC53398C79FAB33EBE49ADAF96BEBE42A6C536BC89BDE503B
          9FF39E9EF33379D3EBEA3547B9C9EFB3F2E6FDE6F47DC69634F7D806098C2D31
          02D9B08C2D63E08F0D54760FA22FF13BAE241FA17BEA1E1A07C7712274190575
          01B57FD57B1DAEC610E48A7AEC29AE8072B20115C101ECAF6C41219D317FD184
          EAC875EC3B749A66E7603DDD8C40EC679AFD88F2F63EF806465115BE8686A138
          5C33EBB0D087A6B54F064C2253C66DB3A1D0277E7FF9355A5BCE20399BC4FCFC
          3C6EC5E388F446E0ABAF4789BB44ED9DC1208E94952137D7880F7272209B6478
          EBEAE07038E176BBA19815043A3BB1DBB01B4E673EAC362B86A3C3E80874A0CA
          538570388CB6563FBE1D18C4915F5E422101AD7D322081D14546201BCAE8327E
          5D788516BF1F89E46FB837F700E3F11984FBFAE16D6A86ABB44CEDEDA10B282D
          3F8E5CB30DBB3E3440B6D951D3D004C7C12294941E856277A02DD805C3DE7D70
          1614C3EA3C801FA223381F0CE1CB1A2F2EF444E06FEB40F7A52194265E4019D1
          DE27031D0858A810F4BCBD1DD37F24D095217098044C24A0B54F062430F28411
          C8866964694BE0DC3B087C4E02D67F2E70970462DAFB64C024331502D990FF05
          01D73601C70E028748402601AD7D322081D80223900D39B688FB8B6C2B856631
          C753E8364FA15EF81A780AB9D5FE26858C46E4ECE2296482D74729E474D2994F
          2985CC0804780A19E0C8E72964A3148A520A0528853CE85653A8554D21FE1F90
          A3DAFB64C024850A816C7081AB0FD7E1E9EAC7E5C41CAECD3EC4C5A9249A2FC5
          702AD08B02CF59B5D75EFC1E2EEF79188F56C2E03C0C53B90727DA23B09FF4D1
          991628C7AA51DB3384BD859FC17EAA1E96E3B50845EFA0A6E73B1CF37F83C6FE
          1BA8FEFA0ACE5C9D40517C5515D0DA27837713506229E40EA7D447C9187D42D7
          0B6AFF88C4F88C7FC9794F5FF3DF0D33FDC2F2CE67BCA7E7FC75FA6F1C233D26
          EA7B29F3D3F7E3DD144D69ECF137984407193F2C283A109087FF6404044515D8
          DC3614894D49BEF138453031799CFA0BE4BA23A11DF43B390000000049454E44
          AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgComandaOcupada: TImage
        Left = 174
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C1800000422494441546843ED95EF4F535718C7FB774C6E0147B16A9639DD
          E8EF9F50C87491C1A6E834191223C82F81B2890C6A69AB80C0182C9B2CBA0859
          C44458968DE9B6844587C9226AB2174B4C96F02FDC370CDA82E877DF735B1BC8
          CA8417733B8D2F3E3CF7B9E7E1DEF3B9A7E739BA78E18E39A24ACA9C2E5EB463
          9E4052E6B902DB69B21D92A252C048012313295175318F512590140A7829E065
          222714E03210484A0608C4DDDB540249C904010F053C4CE484025E0A7899C849
          2608C8BE0762AE7C9540523241C04D01371339A18087021E26729209024E834A
          20299920E0A2808B899C50C04D01371339C90401C7CB2A81A4A8BAA8234F2590
          140A3829E0642227147051C0C5444E3241C0BE552590941702FF35147050C0C1
          E45998B2F0C8AA47DC9C85B8690B9618972D7A3CB265E3B13D478B627C85D74F
          1CB980732B1E3326C673B51A2D67CD133126EE315FB22889FF63DD32A3B816CF
          8D723CED3CD6B23181381FBEF85937BEAAA9C4EFC3BDF8636410F72F74E1466B
          1DC62A2BD0B7D7A3C5C9FA2A0CEEF7A1DDBA0B278DD9E8B0EFC695F70F22ECB5
          683501C7EB98A8AB42E32B79DABDA0AB0033A1364CD41EC3A52365F8B6B91AD7
          4E5662DA5F8395B7F620CAF7A69BCF2A3622C0AFC4AFB270671AA7035DB87DEB
          36EECDCEE2FBA9290C0F0DA1D5EF4779599916CF47CEE150C52158CC66E8B314
          D86D36B43435C3E7F369354E8703E17004F906034A7CC5F0B8DDB8363E8E7028
          8CBADA5A0CF4F7A333D8852F070780776D88F2BDE9E7948202B65C95D0763D72
          B06452B0307D039D1F75E0CE4F3FE2C1CC2FF8E1EB495C1CE8477BD329BCF776
          A916FBBA82A83C78005EB30946BD029FCD8AB6C606ECF7156A35250E3B7A8301
          ECCA37A0D45784BD6E1726C646D17B3680969A6A0CF77423DCD981B1BE1EA0CC
          82A85949339F35A8BA45FE21589F1CFEE615FC991498A1C07D0ADCA4C0E71438
          931410F1C22A816D1428A2C0E95502C549815793026F52E07A52A07995C06852
          609102E9E7948202760A70C3AC0F05F8A0E72E504E016EF0F4734AF142E07F20
          B0D13D3023BA50905DE81666EFDEC5D477892EE46FF1E31D761811CF4522385C
          51012BBB90A224BA5033BB5031BB90A8115D28120EFDAD0B4542A154170A0483
          B82CBA50B975837BC09AA312AC4F3662A20B5DFA18976B8FE3B791213CBC7211
          BF7ED2836FDA9AF045D51184F6156A71FC5435CE9796A0C9F21A8E1AF468B1ED
          C1C8B1C338E3B56A357EFB1BB8DA7802553BF3D0EEB5E10397093F779FC5D586
          13F8F4E8014CB6D663B4FE386E7ED880957DBB130269E79442AC0005F8959F49
          014F5F2E698C3156F012A5B668A7F2D39354C425BE503B4D7900891359C46531
          CE286A4414754FC704DAA9CE7BA24E9CEEE25A3C577CB8B4F358CB2604368938
          3FD2DD17FCD3D826F9F7049E13620F64730F70B9E444D52D58F5F3049232AF5B
          B0287344951365EE2FC7580E69065BA3130000000049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgOcupada: TImage
        Left = 214
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C1800000050494441546843EDCF310D0020100031CCBC0EFC2B6204190DC9
          0D15D075F6DC9F15D00A6805B4025A01AD8056402BA015D00A6805B4025A01AD
          8056402BA015D00A6805B4025A01AD805640FB3C30F7018E8A2B3C29DA714A00
          00000049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgFechada: TImage
        Left = 293
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C1800000050494441546843EDCF410D00200C003144CDBF0A2CA003643424
          F7A880AEB3E7FEAC8056402BA015D00A6805B4025A01AD8056402BA015D00A68
          05B4025A01AD8056402BA015D00A6805B402DAE781B90F98044D87C374EF3F00
          00000049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
      object imgComandaFechada: TImage
        Left = 253
        Top = 15
        Width = 32
        Height = 32
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
          0000003008060000005702F9870000000467414D410000B18E7CFB5193000000
          206348524D0000870F00008C0F0000FD520000814000007D790000E98B00003C
          E5000019CC733C857700000A396943435050686F746F73686F70204943432070
          726F66696C65000048C79D96775454D71687CFBD777AA1CD30025286DEBBC000
          D27B935E456198196028030E3334B121A2021145449A224850C480D150245644
          B1101454B007240828311845542C6F46D68BAEACBCF7F2F2FBE3AC6FEDB3F7B9
          FBECBDCF5A170092A72F9797064B0190CA13F0833C9CE911915174EC0080011E
          608029004C5646BA5FB07B0810C9CBCD859E2172025F0401F07A58BC0270D3D0
          33804E07FF9FA459E97C81E89800119BB339192C11178838254B902EB6CF8A98
          1A972C66182566BE284111CB893961910D3EFB2CB2A398D9A93CB688C539A7B3
          53D962EE15F1B64C2147C488AF880B33B99C2C11DF12B1468A30952BE237E2D8
          540E33030014496C1770588922361131891F12E422E2E500E048095F71DC572C
          E0640BC49772494BCFE173131205741D962EDDD4DA9A41F7E464A5700402C300
          262B99C967D35DD252D399BC1C0016EFFC5932E2DAD24545B634B5B6B4343433
          32FDAA50FF75F36F4ADCDB457A19F8B96710ADFF8BEDAFFCD21A0060CC896AB3
          F38B2DAE0A80CE2D00C8DDFB62D3380080A4A86F1DD7BFBA0F4D3C2F890241BA
          8DB1715656961197C3321217F40FFD4F87BFA1AFBE67243EEE8FF2D05D39F14C
          618A802EAE1B2B2D254DC8A767A433591CBAE19F87F81F07FE751E06419C780E
          9FC313458489A68CCB4B10B59BC7E60AB8693C3A97F79F9AF80FC3FEA4C5B916
          89D2F81150638C80D4752A407EED07280A1120D1FBC55DFFA36FBEF830207E79
          E12A938B73FFEF37FD67C1A5E225839BF039CE252884CE12F23317F7C4CF12A0
          010148022A9007CA401DE800436006AC802D70046EC01BF88310100956031648
          04A9800FB2401ED8040A4131D809F6806A50071A41336805C741273805CE834B
          E01AB8016E83FB60144C80676016BC060B10046121324481E421154813D287CC
          2006640FB941BE50101409C54209100F124279D066A8182A83AAA17AA819FA1E
          3A099D87AE4083D05D680C9A867E87DEC1084C82A9B012AC051BC30CD809F681
          43E0557002BC06CE850BE01D7025DC001F853BE0F3F035F8363C0A3F83E71080
          10111AA28A18220CC405F147A29078848FAC478A900AA4016945BA913EE42632
          8ACC206F51181405454719A26C519EA850140BB506B51E5582AA461D4675A07A
          51375163A859D4473419AD88D647DBA0BDD011E8047416BA105D816E42B7A32F
          A26FA327D0AF31180C0DA38DB1C2786222314998B59812CC3E4C1BE61C661033
          8E99C362B1F2587DAC1DD61FCBC40AB085D82AEC51EC59EC107602FB0647C4A9
          E0CC70EEB8281C0F978FABC01DC19DC10DE126710B7829BC26DE06EF8F67E373
          F0A5F8467C37FE3A7E02BF4090266813EC08218424C2264225A1957091F080F0
          924824AA11AD8981442E7123B192788C789938467C4B9221E9915C48D1242169
          07E910E91CE92EE925994CD6223B92A3C802F20E7233F902F911F98D0445C248
          C24B822DB141A246A2436248E2B9245E5253D24972B564AE6485E409C9EB9233
          5278292D291729A6D47AA91AA99352235273D2146953697FE954E912E923D257
          A4A764B0325A326E326C99029983321764C62908459DE242615136531A291729
          13540C559BEA454DA21653BFA30E506765656497C986C966CBD6C89E961DA521
          342D9A172D85564A3B4E1BA6BD5BA2B4C4690967C9F625AD4B8696CCCB2D9573
          94E3C815C9B5C9DD967B274F9777934F96DF25DF29FF5001A5A0A710A890A5B0
          5FE1A2C2CC52EA52DBA5ACA5454B8F2FBDA7082BEA290629AE553CA8D8AF38A7
          A4ACE4A194AE54A57441694699A6ECA89CA45CAE7C46795A85A262AFC2552957
          39ABF2942E4B77A2A7D02BE9BDF4595545554F55A16ABDEA80EA829AB65AA85A
          BE5A9BDA4375823A433D5EBD5CBD477D564345C34F234FA345E39E265E93A199
          A8B957B34F735E4B5B2B5C6BAB56A7D694B69CB69776AE768BF6031DB28E83CE
          1A9D069D5BBA185D866EB2EE3EDD1B7AB09E855EA25E8DDE757D58DF529FABBF
          4F7FD0006D606DC0336830183124193A19661AB6188E19D18C7C8DF28D3A8D9E
          1B6B184719EF32EE33FE6862619262D26872DF54C6D4DB34DFB4DBF477333D33
          96598DD92D73B2B9BBF906F32EF317CBF4977196ED5F76C78262E167B1D5A2C7
          E283A59525DFB2D572DA4AC32AD6AAD66A84416504304A1897ADD1D6CED61BAC
          4F59BFB5B1B411D81CB7F9CDD6D036D9F688EDD472EDE59CE58DCBC7EDD4EC98
          76F576A3F674FB58FB03F6A30EAA0E4C870687C78EEA8E6CC726C749275DA724
          A7A34ECF9D4D9CF9CEEDCEF32E362EEB5CCEB922AE1EAE45AE036E326EA16ED5
          6E8FDCD5DC13DC5BDC673D2C3CD67A9CF3447BFA78EEF21CF152F26279357BCD
          7A5B79AFF3EEF521F904FB54FB3CF6D5F3E5FB76FBC17EDE7EBBFD1EACD05CC1
          5BD1E90FFCBDFC77FB3F0CD00E5813F06320263020B026F0499069505E505F30
          253826F848F0EB10E790D290FBA13AA1C2D09E30C9B0E8B0E6B0F970D7F0B2F0
          D108E3887511D7221522B9915D51D8A8B0A8A6A8B9956E2BF7AC9C88B6882E8C
          1E5EA5BD2A7BD595D50AAB53569F8E918C61C69C8845C786C71E897DCFF46736
          30E7E2BCE26AE366592EACBDAC676C4776397B9A63C729E34CC6DBC597C54F25
          D825EC4E984E7448AC489CE1BA70ABB92F923C93EA92E693FD930F257F4A094F
          694BC5A5C6A69EE4C9F09279BD69CA69D96983E9FAE985E9A36B6CD6EC5933CB
          F7E137654019AB32BA0454D1CF54BF5047B8453896699F5993F9262B2CEB44B6
          74362FBB3F472F677BCE64AE7BEEB76B516B596B7BF254F336E58DAD735A57BF
          1E5A1FB7BE6783FA86820D131B3D361EDE44D894BCE9A77C93FCB2FC579BC337
          771728156C2C18DFE2B1A5A550A2905F38B2D5766BDD36D436EEB681EDE6DBAB
          B67F2C62175D2D3629AE287E5FC22AB9FA8DE93795DF7CDA11BF63A0D4B274FF
          4ECC4EDECEE15D0EBB0E974997E5968DEFF6DBDD514E2F2F2A7FB52766CF958A
          6515757B097B857B472B7D2BBBAA34AA7656BDAF4EACBE5DE35CD356AB58BBBD
          767E1F7BDFD07EC7FDAD754A75C575EF0E700FDCA9F7A8EF68D06AA838883998
          79F049635863DFB78C6F9B9B149A8A9B3E1CE21D1A3D1C74B8B7D9AAB9F988E2
          91D216B845D8327D34FAE88DEF5CBFEB6A356CAD6FA3B5151F03C784C79E7E1F
          FBFDF0719FE33D2718275A7FD0FCA1B69DD25ED40175E474CC7626768E764576
          0D9EF43ED9D36DDBDDFEA3D18F874EA99EAA392D7BBAF40CE14CC1994F6773CF
          CE9D4B3F37733EE1FC784F4CCFFD0B11176EF506F60E5CF4B978F992FBA50B7D
          4E7D672FDB5D3E75C5E6CAC9AB8CAB9DD72CAF75F45BF4B7FF64F153FB80E540
          C775ABEB5D37AC6F740F2E1F3C33E43074FEA6EBCD4BB7BC6E5DBBBDE2F6E070
          E8F09D91E891D13BEC3B537753EEBEB897796FE1FEC607E807450FA51E563C52
          7CD4F0B3EECF6DA396A3A7C75CC7FA1F073FBE3FCE1A7FF64BC62FEF270A9E90
          9F544CAA4C364F994D9D9A769FBEF174E5D38967E9CF16660A7F95FEB5F6B9CE
          F31F7E73FCAD7F366276E205FFC5A7DF4B5ECABF3CF46AD9AB9EB980B947AF53
          5F2FCC17BD917F73F82DE36DDFBBF077930B59EFB1EF2B3FE87EE8FEE8F3F1C1
          A7D44F9FFE050398F3FCBAC4E8D3000000097048597300000B1300000B130100
          9A9C18000003EE494441546843ED96EF4F535718C7FB8FC0ABC1922D199452A0
          D02275B6686697CD254BC926665B662A65D842155CACD5962A928120418CE084
          174874BFB288266E313292CD88FAC6FEC2ADC94C54FA03EED8F807BEFB9E535E
          4C606C268BEC545E7C7AFA9C73EEBDE79373CFF35C5D66B63649344549EAD209
          CB1281A22C09016D45A74A68143053C0CC4049F2402015AFD108148502090A24
          18A8493EEC40BC9A02D50C9444D3CDC54C1A81A250204A81280335C907813805
          E20CD4240F0452FC213CD14A4281589546A028F92010A7409C819A5020418104
          0335C90701D5CFC05CB49295B892554D493605361AF1294181380335D914D868
          C419A8E019A8E0FBA4249B021B0D056214883150931745406E5729B2B36548C7
          4AF90D528A74BC14994419E6670D58F8B95CB6627CE14139B45F8CF82D5921DB
          DCB851CE11B19823C6449F463271BDEC9B7FC0EB793FF15FDC772E6A5C7B2D4F
          23CE8091678093D72115E3C21EF5E3F3B31FE3DEAD3E44EE9DC18F374FE09B4B
          5E0C0F36221CD8CE76372646F7E16468270EB454E2A3DD4568F798706EE07DF8
          DBB7C8391DADD5B838EA82EBC35771A4BD0E9FFACCB8712D80F10B2E0C9E72E2
          CBF1168C8DECC5D5AFF7434BDAF86CC3AAB5AC40D33D89183582F548C5F458CC
          4EA3E3D0514C4D4D61E6F66D4C5EB982D3A7FBD1D6D6865DBBDE966D381C86D3
          E984C9548582820298CD35F07ABDB0D96D724E6DAD05A1CE108A8B8B60B7DB61
          B55A31317111A150086EB71B3D3D9FC17FE41886CFF5E28F870E3EBB6CD55A56
          F00C0299EFE1F71FC6F40FD77167661AD7AE7E8533833D38D4E14183F32DD976
          9F3C863D8DEFC25A5785978B0BB1EDF51AB41F6C81C3B14DCEB1DB2CE8EA0AA0
          E4B562BCE9B061C7F63A5CBE3486AE1301783D2EF4F7752118F4E3C2F96EFCFE
          EB4E3EFBDF08701B08D623C5F77431FB9C051E52204A8135D6F317F2412052CE
          57A89CDBF1F788ACB398F9EE39BF426FF0D9FA556B59C18B24909D62160A300B
          DDC4CC0CB3D0642E0BF97CB92C24DAE3C7C36868C865A1C2C2025898855A5BBD
          B0D7E7B2D01666A1CECE20E58A505F6FC7D6ADB92CD4190AA2D9DDB49C858E62
          4466217188FF23813966A1854743383BB00F777E1AC2FDBBE7317DA31797C70F
          62B0EF03F83B76C8766CE413040F3BE0DE5B09E73B2FA1C565C240EF1EF83C75
          72CEFEA61A8C0E37A3B1E1151CF058E16DB6E0FA6458F69DEA7E0F1363AD1819
          6AC2B75FF8641DC865A1B5D7B48C38C4148832F8272225AC907ACA94B08094C8
          5D49F3708BAA9965B5156D9AE3E2FF3CABB1A8B4A295E3A2CA2EF78B39624CF4
          8958DE877DF27A793FBD6C9FB088ADB98EA7790681FF27F9201031F00C70BBD4
          44D33DBE6F5822509425DDE388214934353124FF04CB6AEC4EA922F653000000
          0049454E44AE426082}
        Proportional = True
        Stretch = True
        Transparent = True
      end
    end
    object AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard
      Left = 10
      Top = 6
      Width = 327
      Height = 226
      Text = ''
      AllowAutoZoom = False
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
      KeyDistance = 4
      Keys = <
        item
          Caption = '7'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 3
          Y = 1
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '8'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 111
          Y = 1
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '9'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 216
          Y = 1
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '4'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 3
          Y = 57
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '5'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 111
          Y = 57
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '6'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 216
          Y = 57
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '1'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 3
          Y = 113
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '2'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 111
          Y = 113
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '3'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 216
          Y = 113
          Height = 56
          Width = 107
          SubKeys = <>
        end
        item
          Caption = '0'
          KeyValue = -1
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skNone
          X = 3
          Y = 169
          Height = 56
          Width = 215
          SubKeys = <>
        end
        item
          Caption = 'Del'
          KeyValue = 8
          ShiftKeyValue = -1
          AltGrKeyValue = -1
          SpecialKey = skBackSpace
          Color = 10526880
          X = 216
          Y = 169
          Height = 56
          Width = 107
          SubKeys = <>
        end>
      SmallFont.Charset = DEFAULT_CHARSET
      SmallFont.Color = clWindowText
      SmallFont.Height = -19
      SmallFont.Name = 'Tahoma'
      SmallFont.Style = []
      Version = '1.8.4.1'
      OnKeyClick = AdvSmoothTouchKeyBoard1KeyClick
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object pnAcao2: TPanel
      Left = 0
      Top = 582
      Width = 361
      Height = 106
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 5
      ExplicitWidth = 464
      object Label12: TLabel
        Left = 20
        Top = 73
        Width = 57
        Height = 32
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Exibir Mesas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label13: TLabel
        Left = 152
        Top = 73
        Width = 64
        Height = 32
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Exibir Comandas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label17: TLabel
        Left = 288
        Top = 78
        Width = 64
        Height = 19
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object btnSair: TAdvGlowButton
        Left = 287
        Top = 5
        Width = 66
        Height = 66
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = frmMenu.ImgList64B
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Transparent = True
        TabOrder = 0
        OnClick = btnSairClick
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTopAdjusted
      end
      object btTipoComanda: TAdvGlowButton
        Left = 151
        Top = 5
        Width = 66
        Height = 66
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 3
        DisabledPicture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000015
          184944415478DADC9BDB8FE4C775DF3FA7AA7EFDEB9EFBECCC5ECDBD935A7249
          26BA444A4C388844C73164077004F8210F31FC943CE5299001230962F821C883
          FF85004184E421B003070802C440A43C288622C5A4E4E592DCD57239E4DE6676
          76EE33DDFDEBFE55D5C94355FFBA6777B84B1A5A09F48F28F67675754D9D6F9D
          FB392DDFFEF6B799785E11E45B22BC2C2285115144F85C3FAA445551D55A951B
          07DD833FFDCE77BEF37EB7DB05C0C5180130C81F4E15ADDF5BEE4C77665A25CE
          394C265E3EA720A82A005115EF3D07C3011BD6FDEB7FF8CD6FFED17FF9933FF9
          0300A7AA18E4DF2E763AFFF2A5B9254E4FCFD16E1558633FB7841F054488816A
          58B3DADDEB945FB0FFE6BD97AFBA776EBCF7AF9CAA7EB9E38ADF7F697689F3B3
          8B94ED92B2281091BF5600A82A85AB69190B0ABFF68DAFFFFE7BB76EFE5787EA
          EF9CE8CC98339D59CA568BA9561B670D22E6AF1900112B16A272A633CB85E553
          E6F5AB577FC711F5B5D9A245E91C85B558110C826405F2797A04D04F9C17AC08
          85B594CE315BB478F5EAD5D79C88582B068B200AA24054949F25F13A0653CCF3
          BBE9670194E9B308560C274E9EB20E5485C422A8A231A247B17E8CCD1F102319
          D74F71A8181063109B642F7A9FF730E9EF65604484CF6A723586E61C2292F652
          05C91C6CCC9356218B83A080AAD3A8C4983F089168C2130711314C9D3B8D2D4B
          6208F4EFAE1106C36763A04A6B719EF6C9254C5982467CB7A2BFBA8E3FE8522E
          1FA37DFC1800D5FA26C3EDDDCF04426B719ED6B1794CCB51AD6D10AA219D93C7
          3165813FE8D1BBB77A68BF98694413CD1A1517639AD41841F398A44C410DB8E9
          29EC5407F5811EA0212056D2E77192C505B18206A5589863FAE20BE9102182B1
          B416E7709D363BEFFE14E32C6E7E267D6D6B973818264E3192B92C1F27FB2AC8
          58844CAB60EADC694CE1F0BD8AE80353674E501C9B275643A2F76888E98C1317
          82265A3544620220106348132112253E760B8A4425FA80F11E0D01CDEB473417
          F373B8A90E007EFF807ABF0B51692DCCA6BD62E460E51EC5CC14E589254CCB61
          3B6D621D501FC8DC486B7911DB6E33DCDA25541528D8768B6261115338E260C8
          70678F301852CCCD24F07DA05A7D44AC86485140880CB777A9D637518DA83FCC
          01318C884F74BB1022312342CC430EA3A666849E26260931C95F84994BE7689F
          5C6A4CA6C648EFC13ADD8FEE8F6F1E25F42B4CCB019AC4D448DA4313B8ED53C7
          314572BECAA50576DEB989ED94CC5DB984290B440CAA9176BF62EFC687944BF3
          889174F3674F251005C2B0A65C5E449C63F7BD0F30D61CE680E6F6232144CCE8
          F63506A23F62843488118D49816808C4BAC6B64B5ACB0B688CF4D736E8AF6DA0
          AAB44F2C61DA2DD487B43E2AAA61C22865D109018D29DC183CDA64B0B543F41E
          D37298C2511E3F86691584C190830FEF10AA21B6D3A67D7299DEBD8784DA2302
          F57E8FDD777F4AE85509F3E190DEDD07108EA669C4C13186140B6818131AC53C
          C1016293D2308DFCA48DA47059AB82EF57898DE30288608AA221101445E8DE5D
          A5DAD84EA2D2EDD239B1DC5897E1CE1E6E668A626E36CD09186789211D76B87F
          40796229896259E0AB2AED2F0E1D0E196CEE3075F60CA65DA275A0DEEF12633C
          E4CB24110879CF408C1117E25804D286E6901954C090CC2359D9C5D1DA90E634
          06DA2797116350558C31808E0F90B5AFEFF589C3613A4C1DC6666BE4AD8DAC91
          26516A44D308735FB898CD9A8098B172CCA65427CD1C69AF18C2216F56559B73
          C7180931E21A447C445D24CA6366502118936E3EEA210ED0986E5801BFDF4D66
          CC25391EEE77691D9BCFD605E2B066EA85534CBD701A50F66F7D44180E89AAE9
          F32C8663318B634042A4FF7023FB1496D0AF1AEE4A40693E4F6C460C3E89A079
          D20CAA8FC410A807034C18598118323A87470C01424837AD0A5189B5270CEB74
          E87C83D5D63683ED5DCA63F3B416E730CE2650F3F73424608D7318E7F2E1B352
          CACA77441023D3ACE3EF1EDCB98F6D95B48ECDE366A71AEE6AF608A1B92446C0
          349CFAD8C834DFBF7F0F1743D2863AE202E26322A009B991FCABE266A6D31FF7
          3E1D5804A222CE623B25206854C2603866CB467C92320CD500D72E1B0E6A0E3B
          B2D5B54FFBE7EF0A60DA2D5CBB8DEF55E3BFAD63AE249F4FA3A6DB0F1EA2392C
          023EAD0D21F2E107B7712184BC78A403E43000AA60B491651016AE5E26544336
          DF7A07DFED51CC4CD33EB99C4C5E547CBF62B0B983B106397B9A18223397CE62
          B2D28C832183ED5DEC9913394C0162225EB2990CDE533DDAA27D7C09B186B997
          2F63DB258A3278B8491C0CB34DC937EE4332AFE43D323D29B87952077437B678
          B8F6303B423AE11C84A37DF2301822D68146E25088B5C7F72AB6FFF27D662F9F
          4F8E8931541BDBEC7FF031A1AAE83D78889D9966EAD4718A992950A5DE3F60EF
          E60AFEA08BD68150D559297A7458A7F7392E3958B98718A173EA38B62C09FD01
          DD8FEEB1BF7207D7E9240E0B31E99218898321A11AA6799F39DA3C6605B209BC
          7BED7A02F0B77FEB1F7DF7978F9D79F32BF32728CB92C28E5361938FB1F60960
          A24F322502A628408438ACD34D5AD3580D3BDDC175DA6854FCFE41B2DFD62046
          9A2049471A3B07303AA1D48C7348612144425DA75C853188B3E3BC5F0887CE18
          7D78223E8CAAD4C1B3BB7297FFF83FFF3BFF6DFFC1F75C68EC62CC6C24474683
          A1F647C497D23858A11A1C9A571F9AB77EEF807A777F1C05E6CF9302AD3F39BA
          CFC788750D753DDE3BEBA3662ECF1F3AE31134A82ABEDB67EBADEBCD9C0B2190
          40C83A80A301F899C5ECA3C0E617F0C41059FFF3BF20F4068701D06CEAA23744
          FDEC71F9E7E5D9FEC97B54EB9B87E61A1188DE272F50693820C71714324A927D
          5E526482A2D41A1B1A7AF7D6D8BBF5D113A9B2E4096633182510752C3FA3FFBF
          57EFF1280C3E57B77DDC96BC54CC004A6F7D938DB7DE49EEF263D7E826E53F8A
          214E289096187E546DF1BDDEC3CF25CBBF397592BFB90F1B6F5DCB41D9934F02
          20669B29E1900844516EF477F0DE633E45327354651AD5147422E767B2799B5C
          3359BD913C172772848FEF71D8003DBD6E1135F2FDDBEF73F66E9D02AA4F785C
          0C31B995C1A3460E034024FAF0A900505566E6E6298A92BD9D4DBCAF71AEC5FC
          B16354FD1EBD837D409A35BBDB1B94659B99B9794208694DF78085C52510616F
          678B1823ADB26466769EBA1E2262285A2D628CF40EF61854D5278270F3D64DCA
          8F1F1197AE3EF5DC2EC4E417C7910E3013F65D0CC1FB67021063E485F317B9FC
          CAEB6888ECED6C71E3FA8F79F5CB5FA333358D88E1DD1FFF3F8AB2C595D7BE88
          86C8F6D6069BEBAB9C397B91D9F905D6EEDF2104CFA95F3A8731968DF535AEBF
          FD43CEBF7885CB575E636B739D9D8D472C2C2D33BF788CF77FF236F7EFAE349C
          D5F82B2170EDDA35D6D6D7F81BE5E233B976C211CA71C0A41590F8A90158583E
          49777F9F8DF555CE5DFC02730B4B4CCFCD73FBC6BB9CBDF0228BCBC7295A65B3
          E6C24BAF70F3FA4FB8B3729B377EF59B785F73ECF8291E3EB8CFF6E6238AB285
          3196E99979B6B737D0A8BCFFCE8F99999DE36F7FFDD7E8F5BBE95C130074BB5D
          AE5DBB46BFDFFF5435043DA4047D02804366D01042F85400C4BC2EF880F73521
          2AC10782F784E0F13E60DD636BBCA7EC4CD12A4B76B6B7985D58626E6191A9D9
          391E3EB8C3FCD232BDDE01C3E180F6F40CDE7B66E6170921B0B7B34DF09E9801
          78F0E0012B2B2B84103E93A24C49D19042CB9440188B40144D1C107CAAAB7DC2
          134220C440C889C61063227EF27D16B5D15C0C91BAAE59585A2686C8EEF61667
          2F09DB5B9B186338F94BE7E9EEED628B8256D1A2700565BBCDCCEC3CDD832EDD
          837D628C0CFA7D6EDDBAC5DEDEDE5FC952B82629EA930F10CD84869E1001157D
          3A004D9AC9A71C61A8538C90736F29EF10C66B107CF0CCCE1FA3DFEFB1BFB79B
          122B833E460C5333730C87439697961104632C5333734CCDCEB1B7B3455555AC
          AFAF73EFDEBD272C0B80C90113464065A2762687CA7EE358A001409B8D8218BC
          0F781F9E09C0EADD8FB9F2FA973973EE229B8F1EF2F0C13DCE9CBDC0D94B2F21
          62597B70175714BCFAC5AF71E6DC45D6D7EED3EFF5595C3ACEFEDE1E07FBFBAC
          DEBBCBA917CE2108EBAB7779F7C77F01227CF557BE4151B4D8DFDD65767E8195
          0F6E71FDFA75AA6C058C318D596CCEAE11E72C189B01C8B9C7A81053746BAD49
          6630C69C8F1321EA0492A28C00429EEE06AF7C7093CD8D4794659B9DAD0DEA7A
          C08FBEFF5DE68F2D33E8F7D8DBDD0160777B9BB26CB3BDF5881802D7DEFA0183
          AA22C6C8F5B77FC8BD950F40849DED4D42CE08BDF3D60F11236C6F6EF2C7FFE9
          3F70E7A315AAAAC25ADB28C1D1AB345EACC1589BC2EE89A31B01353185D36292
          196C3242E49B9E30831A92C2D2A7E88011776D3E7AD8144F8D187ABD1EDDEEC7
          E37CC2116B56EFDF03C05A8BF79EB5D5FB0D4123621EAEDEE7E1C387ECEEEEA6
          54B6731445F1C4CD4F72402452BA16D6594C1681A8A906212A186B31D66411C8
          4511554547A967208AE18D62810FAB3D7A71F819E2CE2363D1A7AEF14F7C9E38
          6F7373B321DC18837389F09485917C93D288C2880BE66CC9AFCF9F469C4BF50C
          C068C44493932C066B6D0A864665B1985A0346ED110C88BC6667F817B3977914
          07FCBC82E4507BAA9D5D06FB5D9493C8E2298C49D91E3139939459584C02A201
          2527524ED836A75C9B5A23A9E52371858480C494894A00C4512E30600F058AE9
          191259C272C2CC3CF770380E6BFCDE01BEDF0775D09A4F9A7C943E1BA5C24C4A
          9D891969FA54356E7A0CC4102412140CA6C96E1B351811628C58EB2600080A21
          8EADC063771D819AF09CC85642AFA2EEF688C3C3E931B196A65227927388D210
          9E881F81933881460F1CEE72935C3112234888A934EF5C728434F824638C5A63
          9E3FB36B1DF0BD7EAAF21C15ED59DBB03AC6A414BB495A9D5113971DDBFA912E
          182555A5A9088D4DE0488F18F158E7B0D68DFA0372BE3C9AE4093E2F003412AA
          016130241E95643D82F81191626D9ECF7376048C3DCC058D28F0649137A67E41
          018C7338974520C40031102512C73D629F703A210C3D4695C23986BE4630448D
          181104C13A43ED0365ABA01ED6E9B6AB0A935B539C4B296E630C61D4A96A52FD
          DF158E3A789C2D132F6A32912197D84DCB608D495A3D17618D08119056910A2D
          62F21D1E6EF4202610442CC6251D60A7CAF2775F2C662E5E72330999266FA447
          0EDFADB8FCAD7FC0E0EF7D89FFF5E0437EF99FFD13BA974F73FE37BE81BF7A81
          C1175EE047DD2D5EF9EDDFE0DFFFE07F73E137DFE42FE301E5D75EE3CF1E7D4C
          FFCA59FEF8D635CCDF7A99FFD37DC4F0EA05564FCDF283FE165B178EF33F566F
          F3CA3FFE2DFEECE10A9B2F2C71F0E269BEBFBBC6D96F7E9DE3BFFA77589975BC
          6F2A4EBEF9061FCF1816DEF812B7670CAFBDFE1A7BB73FC69465E61633F13AE6
          9828422472A7EEB1323C58314D87482E473F6B84AA62F1CA258AAF5EE5F6B461
          F68D2F21AFBFC8DCAF7C05F7C52B0CAF9CE3A7ED40EBABAFF276D827BEFE226B
          27E7A85E3EC78D7664EDD41CFF77B0CD8313B3BC5BD4AC9D9A63EDE41CEF9581
          7BCB53BC5DEF53BF7A899B6DE5FE5287AD338BDC749EE195B3945FB94AF7FC71
          EE2FB4D197CFB37B7A0179E5223BA71799BB743EF902CE21452AC09A6262E479
          7116630B8CCB6650B3194C854619DBD2A7747E85AA26F4076835C077FBD4075D
          42AF4FE8556835C40545AB012D048635364464E86929D81069271794960A3657
          814B8442A16D2CA6F6B4C5500045848E75581F61E87111DAC66042A450C1F840
          416AB73185439CCB96C33C210164F917D564069DC3458D1069FA0355CC91F67E
          54BAF6FD01D1D78410A8EBFA480DFE57799276368D7B6B8C198F91F21BCD5B87
          31D2CCDBD1E7CE610A3B610A1F6FF692642935A44AB6B1B94D6E24022244192B
          8C71C7C6B8932386F033EFA06DECFA446467B2A9A32170ECEEDAEC14D989EF60
          4C62F191553842094A34A99AEC1CD69A1C0DC6D884C3A8129E6E039E5B8FEF28
          2B3C72691B6EC86EAE193942990346F392D72553681B13CA1122201210B5C911
          B20E632D2E34BD7FB915F6E75C169B0C6464E4EB8F44228B85B536393E8C4543
          243947660484118CB3486ED14921C1E1460F118BA0981010234909FEE2AB5832
          C106924AF3A3DBCEAF66F46F0123131C2187C5066BC64191C8210E1005216274
          EC4059637EF1008C585F90278833191031F6503CD088C9845E6042148E9461C9
          D990987C0293F58E99ACCEFCFC2FFFB14486641F5E680E98643CBBB88C081E11
          9F392073C72712FF78DBC1C46FA1DCA48C686E227F6AC8AA8A6DB790A9364323
          D8E929A4536267A690A936744A6A6B30531D2A14DA2DBCB3C4B26020E09DA5A7
          01EF0C0351FCA8ADCE08DE5A2A8D68D9A21608560885A51690B248DDA7AD8260
          0DB40A6261A155109C438AE2535FA4A20DC7D842CCEFBED49ABDF8626B3AE7CC
          E4D93C0BEC7F7807BDF11127762BBA3FB941B8B1C2FEDBEF52BF771BFBE17D96
          B6BA841B1F71A136B8955516370EE8DC7FC4D90A8EEF54BC6CA739BE5771C13B
          9676FB2CEF0E381B0CA7FBCA65DBA15CDBE26C741CAF22C70E6ACE44877BB845
          BCBBC6F46E8F6383805BDF6166BF8F5DDF626AAF47B5BD93A2C3A7A4ED42FE01
          D5FD61973BD5FE8A74C47EF737674EBFF9EBD3273122B917E0E96CEBAB0A1394
          B25DD2EF5758930A28236D5C140583C190A9A90E5535C03947088156AB48AF45
          8BBAAE71AD82A011B18EA26CA14628DA6D6AEF29A7A7C039C41A8A4E49505063
          68B54B6CAB4514C5150551C01505B56AEA427B06F70E836738ACF9D1FE3A7FBE
          FDE07B6E74A77102A56715414D59E6941998E94E6EA71D7F7F08C8549B7E1681
          1AC0192A0067A9358033D4A2884D440601630D5E23A6DD6260C058C1149608B9
          81BAC017966893CFEF9D4D9DA3D6F0D97E88336AAF55710AC1A3048D28428067
          05C43FC3FCC038CA1C97C1C7FF6E46EE1D54D526B3A39A7CFAD1FA4F530B8C31
          E263C06BAA5A69D4E03CF1FA9AAFFE7E5F232D92AB6847F984E70C834C0C9D50
          C393FF1D1592CB046866C24D7F2AF1AA8418198640DF0736EB8A805EB70A8F86
          C47FBA644A39E5DA849C145320A44AC1731B51786C481A26A5E4A30841842010
          4C7E25253F82687A4509B912F449C3C740D0C0307882F7DCEEEDF16E772BF6A3
          FFE716581D682CD7C3E0EF76C4B260477CA0877A6A9EDB90548D565220A61904
          35F9E684DCBA977B8AD1A4C9731748C869AEA0B9007BC4A843C08740DFD7DCEE
          EDF1F6C1065BBEFA7741F53F373CEE44FE70DE14BF77AE98EA2CD9123BC1FECF
          2D3C1093149D588C333949E19A84A5291CD6D9F43E8F5122C334230541E60827
          489BDF22240ED9AD07AC0EBAFD6EA8FF28A8FE41EA4D3EFCBC6245BE65919781
          E2F9F7C509D68E637E9773F5D6599C4D843BEBB0457E6F0BAC33299B6B2DC6D8
          26541EB9D09F60B944D13AC28DA8FAA7C0FBAAE9071DFF7F008977F21767A72F
          490000000049454E44AE426082}
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC54600000F
          464944415478DADC5BCB8F1C459AFF45666466BD9FDDEDA69B6AD3C6189BB684
          D90B16B0209695909038CC1F309AD3DEF6C848A39DD18CE630DAC3FC17489CD0
          6AFE82197140E200C2966D306EDCEE6775755575BDBAB32ADF197BC011444667
          55B73DD88C49299555599191F1FDE27B7F5F918F3EFA08D27105C0AF08219709
          2186A6690CBF80238E63C2180B1863DF8DC7E3BF7DFCF1C777C7E3310080C671
          0C002084FCD9B2ACDF96CBE56C369B05A5148410FEDB334938634C5CC33084E3
          38304DF30F1F7CF0C15F3FFDF4D33F0100658C8110F29742A1F03F4B4B4BA8D5
          6AB02C0B9AA63DB384A70111C7313CCF43BFDFCF1A86F1C7575E79857EFBEDB7
          BFA78CB17FB32CEB77CF3DF71C1616166059164CD30421E4170500630C945250
          4AC118C37BEFBDF7BB7BF7EEFD1F658CFDBA5C2E6BB55A0DA6692293C908F6FF
          A501A0691A1863A8D56A585A5AD2D6D6D67E4D196357B3D92C0CC300A554B0FE
          2F85785987699A064A290CC340369BC5DADADA554A08D1354D83A66927107B12
          0AE95F01584EEFC2C2824E01304248426372CB9046C0A312F150C90A80A3284A
          CCF1CF00A3AE896FDC34EB25D3F8F0374639C1FC1A4551821BF844737373300C
          035114A1D7EB2108825317CD1843A15040B95C866118608CC1F33C0C0603B8AE
          8B62B18872B90C00188D46B06DFB9180C8E7F328140AA09462381C220802542A
          15504AE1BA2E7ABD5E62BE388E13B432C67EF003F8171921F5B02C0B9665891D
          8CE35800A5728CA66988E318F97C1E0B0B0B09D4F3F93C4CD3C4EEEE2E745D47
          369B05001C1F1F230CC3133A4815477E9F528AB9B939504AE1791EA22842AD56
          433E9F47100488A228B14655BC39DD02007E4651746217082188A2484C2A8306
          00B95C0E966501005CD785E338608C219FCF8B97B6DB6D64B359944A25504A61
          9AA6988FCF532C166118066CDB461004608CC1344DE47239504A110401C6E331
          822010C0455184C160802008A0EB3A1863188FC7188D46608C890D93C55B3EA9
          4CD459949FCC3E8C319C3B770EE57239B163FD7E1F9D4E27C14DBEEF83529AE0
          063E4F1445A8542AD0751D8410148B45ECECECC0344D2C2F2F0BB3CC1883EFFB
          68369B28168B6263E6E6E6C49C4110A0582C42D334ECEDEDA52A7779B33575F7
          A79DAAAE08C3108661A0582C823186E17088E17008C698907955DE527C74B1F0
          A3A323D8B68D288A402985AEEB825B822040BBDD461004304D13954A05BD5E0F
          6118821002C771B0BBBB0BCFF34008411886E8F57A53694A70800A409A49E432
          ADA2C7598E2B37591F504AC5587E1C1E1EE2E8E80800E0791ECAE5B2787E3C1E
          2393C9209BCD0AB0745D170B761C07E5725900E4FB3EE23816041F1F1F0B4E88
          A2088EE388DF65C04F00A0DE50151A5F8CBC8BAA1E608CA152A908365595A3EC
          8B876128645755BCF278196C420896969612E62D4D69AB73A501A06E3895D944
          556EAAECA81C20DF771C07E3F15868F1C9648242A120880AC310F57A1DF57A1D
          00D06AB51086A1783E4DCC64C047A391D0EA7CF7D5F5A8664E55E8F2FD288AE0
          FB3E345913AB08C913CBC4866188300CC5A2B919B36D1B854201F97C5EB0AF0C
          1C2104BAAE0BD151E795BFAB9FBBDD2E0CC340A15040269399F9EC345A54809A
          CDE68F1CA0EA8134EF893F9CC964122C25B3BE699A623C3765EACE72AB609AA6
          F8AE8A94AC7CF91A0CC380699AC2EECF02EF341188A2081B1B1B67D301AA796C
          341A0882001B1B1BF03C0F994C06954A452CC2F77D1C1F1F2774C1B973E74428
          1A86216CDB46AD569B1A7F846188A3A32394CB65689A86E5E565E14D8E4623A1
          4BF8B3323772133B0B80D1688476BB7DD2114AD3019AA62108024110677FCFF3
          B0B5B585C5C54564B35961CE0E0E0EE0FB3EFAFD3E32990CAAD5AAD0EE8EE360
          7F7F1FAEEB228A220441909893730D00B4DB6D104250AD566118067CDF47B7DB
          45BBDD86699A088200711C27AEFCE41C94A603E238C6FAFAFA0FD62A8D03544F
          308E633C78F0E0841DE78AC4B66DE1E470C5A6691AC230C4CECE8E58300780BB
          BCBD5E0F83C1402C6C381CE2E0E0206175F6F7F7D16EB7A1EBBAF03F0821F03C
          0FDF7DF75D628D9B9B9B89B5A96E3D7F4FAFD743B7DBFD11000E02474CF59FE5
          09D3E26CCEF6F27D59941CC7C1643211BFF1DFD3E64C9B9F2B5DD90446519410
          03EE15CE8A58E33886EBBAD8D8D810F7689A87F438E1E859EE3F6AAE216DDC59
          DF99362E8A22DCBD7B37B1595436739C037EEA64C8BFCAB1B9B989D16894B847
          65F6E772A602C08394672D0F288B44AFD7C3FEFEFE8971093F8073809A5169B7
          DBB06DFB9902A05028607E7E1E00301C0E13722F6FF04C25A8EB3AB6B7B785C9
          78D68E4B972EA15AADE2FEFDFB53755B4204E4A88F1F070707C26C9DA10495D0
          F4B2C25303243527286BF86973A816629658C6718C9B376FE2FCF9F33315FBA9
          7E003737A701C01843B15884699A223F671806AAD52A1CC711F93E3E663018C0
          B22C944A2511BE8EC76354AB551042301C0E11C7314CD344A954FA2170D13491
          67B06D5BC4FF69C7FAFA3A6CDB46A3D198B9EE993A40B6C1B30088E3182B2B2B
          B87CF9B2488EDCBE7D1BAFBDF61A72B91C0821B879F3264CD3C4DADA1A1863E8
          F57AE8743A58595941A95442B3D9441445585E5E86A669E8743AB871E3065E7C
          F145BCFCF2CB383C3C44BFDF47AD5643A552C1EDDBB7B1B3B373625D5114E1D6
          AD5B68B7DB585A5A3A956B695A9644568267E180388E31373707DBB6D1E97470
          E1C20554AB55148B45DCBB770F2FBCF002EAF53A4CD314632E5EBC886FBEF906
          5B5B5B78F7DD77118621E6E7E7D16AB5D0EBF5601806344D43B15844BFDF0763
          0CB76FDF46B158C4DB6FBF8DF1787C625DE3F118B76EDD82E33867D613A93AE0
          7100E0E3B83FAFDEE3EFE1DF3967653219589685C160804AA58272B98C42A180
          66B3895AAD86F1780CCFF390CBE51086A110191E10F175EDEFEF637373F354EF
          722A074CCBA2A8717FDAA15A1235C9A27A9BFC1A04016AB51AE238C66030C0EA
          EA2AFAFDBE88FE8E8F8F4506D9300CA133C6E3316CDB16A9B2EFBFFF5EA4DA1E
          F5A06A3A5CD50167E100359FC0730169BFC931401886A8542A984C268200D775
          A1691A0A85027CDF174A51D775140A05140A050C8743B8AE8B4EA783BDBDBD13
          96452E7FA93586A91C9006809CFD390D80BDBD3D5CBD7A158D4603DD6E17AD56
          0BDD6E17ABABABD0340DCD66138661E0DAB56B68341A68B55A701C07F57A5D64
          939ACD26969797410841ABD5C2CD9B374108C19B6FBE09C3307074748452A984
          8D8D0DDCB97307AEEB0ABF455D7B1CC727AADC3C08E3CFE8BA9E8C05D43C9A5C
          10392D3EB87FFF3E0E0F0F615916FAFD3E7CDFC7E79F7F8E6AB50AD775850F3E
          1C0E615996485B7FF5D557F03C0F711CE3C68D1BD8DADA022104FD7E5FBCF7EB
          AFBF16F73EF9E4136C6F6FC3755DE8BA2E36865FE54AB07CCA9CC1AF84906442
          240D45AEB8CEE207F0189B233C994CC07B71F8F3EA18EE9FEBBA8E300CD16AB5
          120BE409D476BB2D12A3BCC4ADEEBCCABDA6698AFCA39CE297019A29025114E1
          FCF9F3E876BB8910F2718ED3B4B3FA3B5F53AFD74B648455C2D5CF1C5CCBB2B0
          B6B67602005E88E1C9D9D470585EC4E2E222DE79E71DB1934FE3E039C3C96482
          0B172E24D89813ACEEBEDAD3542C1685C9D475FD442E42E800D50AA8B21E0401
          72B99C28743E69C21DC71119E35AAD964A70DA67353EE03A8D13AF022038404E
          84A65586CFC2BEFFECE1FB3E5CD74DA4B8F82EC9BD3D2A9BCB8E9BBC6EFE5D26
          5ECD70EBBAFE43D3946CA76533F1A40F9E55F67D3FD5C2A83B2F6B7479F7D314
          A1AC74D38AB1BC632CC10169CEC493DA6D9EB69ED5C3A312A89AB53480D24441
          0DA14F7080ECBD9D2529CA6BF0841051BAE69CC351E7F72DCB82EFFB227DCEC7
          F10209676199DD29A508C3505498F87C72C7479A42E472FD2800E8BAFE637F80
          0AC2B4D3711C5CBF7E1DAFBFFE3ABADD2EDE7FFF7DBCFAEAABF8F0C30F71FDFA
          75ACADADE1F8F8186FBCF106BEFCF24BACACACC0755D341A0D6C6D6D813186CF
          3EFB0C5114617D7D5D2C6863630393C9045F7CF1052E5DBA84ADAD2DD8B60DC3
          30B0BEBE8ED5D555BCF5D65BA8D56A383E3EC6A54B9790C96470F9F265589685
          6BD7AE098D7FDA292C00A5A71747D5D3F77D3CFFFCF368341AB06D1B172F5EC4
          B973E7F0D24B2F61696909D56A15A3D1082B2B2B68369B989F9F17E5F3E17008
          00D8DEDE16050AAE9C068301C230C4DEDE1EEAF5BA88F628A5E8F7FBA856AB68
          341AC8E572088200F57A1D9452CCCFCFC3300C2C2E2E26ECFB69C40B2BA0B2FE
          599A24393B0741207A823CCF83E7792208E23D3B694D55BC8A242B2ABE389EF1
          E14A8A175C652B65188678461625FE4C5A5027B7E570F32894A06C1EA6E5E0E4
          2607BE10B98EF753342F4ED3FA1C883465C8775D1E3B4B077000128E905CB656
          1D09D58190FB7A7EEACE4D19009910F9B34C24BFAA40CCE262192801C0E396C6
          9E444F6F9A979766FFA75D652BA18A80CC691C2CAAF6EAFD1C44AB44A8E1ACCA
          01D39C23BEAB69ADB2AA0BCCC7D39FBB78A13A2FB3FCFD591E615A4498F61E15
          AC9F1D00158469519E3A669AE29CA59BD464092104DA69E5ECA7C1FE6904ABAC
          AE8ACB340E38EB3BF9679AD60C755AC9C9344DE1BA6632191886814C2623B2B7
          00442F30CFCB699A96309F3C20924B60B2FF205B25390BC4DD5DD9A9917D8247
          E93B78F8BCFE9BF9F9F9D5F9F9F9A9DD2169C7C1C101BADD2E745DC7EEEE2E3A
          9D0EB6B6B670707080E1700842083A9D0E4AA592685C761C07B95C0EBAAE6361
          6141B4C3F2F7168B45643219D4EB75388E8352A924D25A85420193C94464870C
          C3100510DE156ADBF6CCF5CB4EDF703844AFD7DB248661FC7D6D6DED3FAE5CB9
          924074160BF1F4986559701C47787C9C150DC310C50CD7754530C3B982373871
          AF4F6EAFB32C4B74837356B72C4B84E99665094F52BE726E3BAD781B86217CDF
          C783070FB0BEBEFE0F0A80A8C9825922C018136C1EC7B16893975FCE1392DC97
          E72CCADD620E206F78E2E9775DD71322C0C583073972D7B8EAF29E46FC143120
          943116A5C5024F2329A2262BCF7AAA09CEB3C8BEDA26FB90E688C6717CE7E8E8
          E83F83204804294FAB25862B53F5E4A2C1AFEA3D397B759AF72A779F0641205A
          FB18637774C658378AA2FFCAE572A4542A3DF6AE3CCE99D635A67E4E1B9BD654
          3D2B84E7BBCE3351ED761BCD6633F67DFFBF7500AD300C2DDBB6FFDD300C51CF
          7F5A403C6A7B9D4C2CDFD5D3FEF0C1CB7BBEEFA3D3E9607B7B1BE3F1F87FE338
          FE8448ACF8E76C36FBDB6AB59ACDE7F30973F224C541F6CB857BFA30AE973FCB
          F7D4E4C6342F506DF49E4C26180E878EE7797F8DE3F84F8C31A8945DD134ED57
          8490CB000C004FDC454CCDD22844F3FFFCAA635400A6F9008C31F1F779C6D8DF
          00DCE5A0FCFF00519BB2C0A9363C330000000049454E44AE426082}
        Transparent = True
        TabOrder = 1
        OnClick = btTipoComandaClick
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTopAdjusted
      end
      object btTipoMesa: TAdvGlowButton
        Left = 20
        Top = 6
        Width = 66
        Height = 66
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        DisabledPicture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000015
          354944415478DADC9B79905CD775DE7FE7DED77BF7AC1880040892A0480220C0
          0D00096E26242E62B45012C428B15C91E852E44A6C976467A14A16B53055514A
          892A2E45DE189762BA24B914C59618D30B6D91341791044100040102837D9B19
          6030E0CC60965EDF7BF7DEFCF15EF7F400DD3303127299B9AFEEBCEE9EB79D73
          BF7BCE77CEB94FFEE02F7E8FA6B61AD80CAC12A5124A2927C27BBA3907D65A71
          D606C0FE8AAB3CF9B3E9BFDD57B165003C8B0340E03F7909EF916C3E9B49A692
          78090F154B2FEF512D3817C9669D230C42FC9A8F2EEAAFDE9ABDFDDB2F169FFB
          06800716906FA632E9AF74747790CD6549A65368AD10A5F8FFA1396B31C6E257
          6BA432A98C3EABBF7E796D8537101C7BD4B3B0CE4BE82FE7BB0BE4BBF264F359
          92C924A2E43D3BF2AD90E0ACC3CF24500985C5B1CE5FFFE5C1B1133FF19CB39F
          C9E6322A9B4B93C9A5C964D3684FA39482F790FC0E8BC3A1D0ADFE89B516ED29
          9CB38441404FA1575D39BDE2339EC5ADF5D209BC74029DF29084022DB8F790F0
          164356B274785D8C0623D85607294144A1531E7579AF4CAE58EB692D5A7B82D2
          20E2406CC37ABE175A88A14377726D6A15555BE5B43B85C5A0D008120D7FBD89
          45C4A134684FE84D2ED21E5A9C5360C561C561B0B85618FA27381F0C8625DE12
          DE97BA866933CDBEDA5E2C962EDD43D14E619C390729B621A7538016E7397120
          0E1777DB0420E30C5A340A85C5625C882028D1FF04DC9BE5B2E4955C9EBC8249
          33417F750FA10B59995E45AFD7C7CEF2767CE7E3896E0C9EC536E4ACCBEC5967
          318D6E504E455613CB226F0997252E23214942173061CE72261C61DA4CA344C5
          10FBC76B120BA1C5E3EAE44A16272E61C24CB0B7B29BD085AC4EAF6191D7C79E
          CA6E4AA644B7D74DD996086324D858C6BABCD659BC48541BFF8D3E1917D0AD7B
          589DBEAEE9F669F2BAC0A589650C87A718A81DA3E66A68F1FEF120EF42D22ACB
          75E93574EA2E46C351FAABBB31CEB0267D037D89C5EC2AEFE44C789A6B522BB9
          327515DBCB5BA9D80A5A34B68E8286A40ECF6270CE60E3EE9CC160E84BF4B57C
          082D9ACB12CBE9D1BD1CACED673418418987FA05A3217001DD5E2F6BD2D79351
          19DE0ECFF056E54D1C8E1B33EBE8F17AD959DECE48789A95A955AC48BD8F7DD5
          BD4C8467C9AA2C068375E12C392D06CF6009B18418422C2A3ED0383BE7036555
          961B333773440E71D43F8C884221B88B0C798723B421CB92CB599D5E83271E67
          C211DE2CEF404471532CFC8ED23646C26156A5AEE3AAD435F457F770B476983E
          AF8F9B33B7B0AFB697E1F014A6495683C573AE190121D609563986FC01962696
          E1CD017141B83A7D2D6995666FF52D422C9A8B479F23903AAE4E5DCB35E99500
          9C0E86D959D98E42B13EB3816EAF876DA5D7381D0CB33ABD86ABD3D7D25FDDC3
          A1EA01FABCC5ACCFDECAA499E44C703AA24B310AEA722BEB22D7679D8D2DBD05
          076366949DE5ED8484F33EE865C9CBB939BB1EE514810B9A8CEA3BEF810B70CE
          717DFAC686F0A7FC21B695B7204EB121BB916EAF87D74AAF72D21F62557A35D7
          A657B1AFBA97FD957E7ABD5E36643752733576945FC7777E4346EB6C2CB3C3AB
          CF09E3428C0B514E1017D9F7A160005BB2ACCFDE3A271200167B97B02EB7816D
          A5D7F09DFFAE901010925339D6656F619117D9A2217F806DE5AD2448726BFE36
          BABC6E5E2DFE9C53FE49AECFDCC0CAF475F457F6B0B7BA9B455E1FB7646F4744
          D83ABD85B22DE1E1619D6BC8699D21703ECA10BB86FABEA92BA718F44FF07A69
          0B660148E8F396B0217B1B8A3A12CC05F7AAABD2ADBBB9237F7743F841FF04AF
          955E2181C79DF9BBE9F2BA78B9F80283FE09D664D6B23AB3967D95BDECAEECA4
          4B77B33177072995E2F5D2AB8C9B51C4C9ECFBC4B28E04A75175E767DA6C8A48
          095BA65F2174C1BC4A589C58C286DC460C16DF056DAF7BEE16105275559627AF
          E0CEFC26F22A0FC0D1DA115E2EBE445252DC55D84487D7C18BD3CF33503BC1DA
          CC8DACC9DCC0FE6A3F3BCAAFD3A5BBB9337F375995E38DF23686FC4114AAE5FD
          2C96417F00D5FC63D8A68B288EFBC778B5F832A19B1F09972696724B6E231683
          EFFCB6D7ADF78090D0055C9759CBC6DC1D2424110B7F88578A3F272D69DE5FB8
          9782EEE485A9E738513BC6F5999BB83E732307AAFDBC5EDA4297D7C35DF9F793
          55390E54F7B1BFD20F222DEF67308C9B71C6CC6833139C81BDB40805B5688EFB
          473145C3DD85F7A399DB265C915C81CBC3ABC597B0CE2273D80443C886EC4656
          3511AFC3D583BC5C7C914EDDCDBD1D1F24A773FCC3D4330CF8C7589FBD951BB3
          3773B07A802DC597E9D43DDC9D7F3F799DE7A43FC88EF2EB2011F33B9742D7E5
          DC5FE98F5362AEEEF7CD2C23D832A24471BC76048B6553FE0378F148B56B5726
          5740CEF2F3E20BB8F8FCF3A23917F0BED4B5B38437187655DF20AFF3DCD7F100
          599DE5D9C9A739EE1F6343EE366ECAAEE760753F2F159FA74B77714FC77D74E8
          4EC6CD182F175F2074419C1768A5809061FF246F87237505D47971C49195336D
          1510294173B47608EB2C1F28DC3BBF1252EFC3E27869FA1F3084B312160E87A0
          589BBD6136DAD07CA0703F6932784AF3F7937FC371FF28B7666F677DF6160ED5
          0EF262F1393A5427F775FC333A7517155BE185A9E728DA221E090CA6651055B5
          657695DF68FCE6CDCCFF689398E0CCD5149A23B5831867B8AFE381795DE455A9
          ABB1385E987A96108312158F7EC8A5C9A574EB9EF3CEE9D1BD00BC34FD3CFBAB
          FDDC99DFC486DC460ED70EF1CCE4D3147407F7777E982EDD8DC1F0FCF4B39C09
          4F47815B1B8FE5B06C2D6DA5E2AAB838C8F7663C40FD932C28CA53A2395C3B88
          99323CD0F9213CE646C2D5A96BA060796EFA99C8D648E42A7B75DF9CE7AD485D
          458FD7C3DACC8D1CA91DE6EF27FF9A9CCAF3A1CE8FD2132BEE95E2CF395A3B44
          52A55A8E7CBDEDADBCC568F8F6ACDFBC881484181B60AC46AC5B7098AB110E55
          F7E39CE581CE8F34AC775B25A45762713C33F57784311959EC2D9EF39CE5C92B
          58CE159C0A4EF1D4C44F28A80E3ED2F5F1064778B3BC9D374ADB484A0263DBBB
          E9E1E01447AB87A2545753F7EA31B28DADA3CC61045B350FCD816A3FC6857CA4
          EBE3F3DA846BD3AB70CEF2CCD4DFA1510D411692F4BC2CB19C4D1DF7D2172BED
          68F5302F4E3F8F2058D77EE447C3B7D955DED9FAF96D9C18A8BBC20B5540A404
          8FFDD57DD809CB47BB36CF8B849599EB38E11FE7847F9C0EDDB9A07B2C4B5CC6
          A77A7EA5F1FD4C709AA727FF8AD08578E8B6C01F33A3EC8EC3E696CF3E131E46
          9D05DA80F32E241EFDD5BDB809C7835D9B494872CEE347C351FABCC5E877905E
          2B99124F4D3CC9B49D8A8D5E6BF1CF8423ECABEC6D08EF5A74CF329B0CCB3B54
          00404212BC55D94DE80C9BBB3FD5160923C1698EF94778A8EB5F5E7816D8853C
          35F953868393A454BAADD11BF08F73A2767CFE81B3CC0E46A27CE13BCFEE2425
          C1DEEA2ECCD99087BA7F99E43948A8B91A3F3DFB6396249634C2DC85B69AABF2
          D7137FC9816A3F2949615AD072E30C076BFB391B8EB7B424E776AFCE004317A2
          9D06E7DE9502229B90606F6537CE59FE79CFAF3494306DA6F8E1F8134C98B3FC
          5AF76F2E18FE255BE450F520AF965E62D83F4952522D63928A2B73B072809AAB
          2EFC594D9C1CA823807789801917996057E54DCC98E5D3BD9FE56C38CE13637F
          8C88E2F38B7E834589F6D67F223CCB4838CCA03FC0903FC44838CC6438812078
          926864799BDBDBE10843C1E079FC7FAEF19F99028D182904DC454B7747366117
          E5D1C719094ED3E3F5F070EFE729E88EF38E3D1B9E656BE9550ED70E321E8E51
          B2C58830A1D0E2A163F6786E5EC2B73506FC018A76FA9DA1D562E214D1C545C0
          0C6354EC2EBFC92DF9DBF874CF674849EABC63DE286FE3A7677F4CC9961084A4
          245108AA6144DD79559EBA7F3F1D0CCF72718DC193F689D6F3A7402325A62E8A
          0D682E45F9B6C6BD1DF7B3B9FB5FB444D68ED2EB3C31FA3FF960E7875999BA8E
          EF8DFE21810BD0B4B70F655B662418A6622B91CF929948B3710F77AEB82E0EBE
          1C1685262AEC347282F622DB807AEAE9C1AECD7CB0F3C32D8F3958DDCF9F8C3E
          CE3D8507F858D743007CA8F341FEEFD99F1062E2B256736DC0E7EDE00CD3761A
          11418B6E083CE3BEDB4FE00829168D4611A290080161DC9533B88BA080D00568
          D17CBAF7B3DC91BFABE53143FE207F30F21D36E46EE7A19E193E704FC707E9D1
          8BF8D1F8F7993413A4248DC530168E31652641A240AC2EF0CCC82B449A859FCD
          671C0E271644B0E2103C041DDB80060F54EFDA08D6AC4FDE2BF0B9DE5FE3FAEC
          4D2D8F190FC7F8FD33BFCBF2E4E53CDCFBAFCFFBFF4DB9752C4E2CE189D13F66
          5B694BC4F41C8D7A645DF0A850ABEAE2C72B5ACE45C48C02AC5844A20AB11685
          12152545671222EFAE976C895EAF872F2CFE776D852FDB128F9FF92E83B51324
          55B22D475F9A5CC66F5FF225EE2A6CA26C4B8D81D1F1FCD5A2D0A2E3BDC2138D
          168D271A4FBC78AF9AFACCEFF5E3140A7DF527573C9CC8E9153AA3514921AA26
          3B2E742BD91257A5AEE68B97FC472E4B5EDE96C63E7EE6BBECAEBC494EE7223F
          1F0C70736E7DCB226B5292DC91BF9B6EAF87DDE537085C484A25510DC1BDF8B3
          1729A36953A8785FEF2ACA771AC1F90E53B584257BCCB34D4448BF032FE0808A
          2D7353761DFF76C917E950EDA3BBEF8F7E8FADA52D645416E30C09F1D8527C99
          9AADF18525FF81B44AB73CEF635D9FE48AD495FCFEC87718094E92538508BE4D
          5B341D049829DB37AFF1720E9C384414562C1E211E0ABDE213973FECE5F40A95
          564852709A78A1C4FCDDE028BB129B0AF7F0EB8B7F8B9CCAB515FECFC7FF377F
          35F9242949E3700404146D91922DF156651783C109EE2CDCDDB6DC7E49E2526E
          CFDDC9B03FCC5030405252784423AF44A355131244A3946EA04344A144A39C80
          155C0061D51094CC31BD62F3150FEBBCB74267149254A0C109F342DE1052B555
          3ED6F5493ED7F76FE6CC0BFE6CF269FE6CFC4FD1A2A9D92A453B4DC99608E242
          4B52A538543BC0807F823B0ABFD4F65A399DE3AEC2268CB31CAEEE4744935489
          785ED785AF4F0785D798043A4689020B36B098AAC394C2635E348E515DD7321B
          42EDDD9CC1E1F86CEFE778B07BF39CC7BE567C853F3CF31D02E7B73578003995
          E3C5A967F1D07CE9D2AFB59D0E5A34FF6AD1AF7255FA2A7E34F6432AB6485265
          6201F52C52741E118A97C618122488EA979E710E631DC65A94B538DB9E4A484C
          463C49F21B8B7F8B4D1DF7CC29FC9EF26EBE79EAEB546C95A424E65D3B905305
          9E9F7A1641F8D2A55F23A5526D8FBD237F37CB12CBF9C1D89F30501B20A77288
          C4EE5166E8D1ACA49A4443108A41E14518B9E2134B231B9051A8A4C01C5EA062
          2B1474275F5AFA5536E6EF985398E3B5633C7AF211A6CCE4793981B611A46852
          2ACD91DA6186FC416E2FDC3567C8DCE575B32E772B53668AA16088844A46AE2E
          164ECDF2021AE5EA53C0C5362038A6977F7CE9C33AA757E8B420B1025C0B0594
          6D9965A9E53CBAEC315667D6CC9BEEFAEAD0239CF487DA42F93C74C5A3A7D164
          5486E3FE5186FD53DC92BB6D4EFB92942437E7D69352698E578FE0248A429B39
          429DF408911134BEC55442825270CCB32EAA985817ADAA8EDCE0F9E46575662D
          5F59FA0D162796CC93BC28F19F4F7D8D23B54364E7F00AE74EAE6861A36AF0BC
          BCEA604BF165BC91045F58F2EF49AAB951746FC7FD2C4D2EE3A9F19F30692748
          4BA60513342034C8908A2A9C267668268E95EA2143B4154D913BF3BFC497973E
          46478B387E76F467F8F6F037D951DA4A5E1560812B8694088243C59F9544FB82
          2EB0B5F40AEA8CE23797FCF6BC536975FA3A162F5ECC53679FE458ED3049956A
          2CDE72F1B5ADB8882A894689A0977E7CC9C32AA756B80CD884C3688B91283952
          B4451EECDACCEF2C7D8CACCACE2BC87747FE3B7F33F197E454E182730652676B
          4DAE4CA149AB0C83C100A3C10837E46E9EB70C975559D6666F20703E27FDA1C8
          FFC7D7C609D6388C6F092A01413138A6EA65B1FA6AEB3A5C6AD6E7E1459FE791
          4B1F9D37CF0FF067637FCA5F8CFFF80260CFACA045C5818D1289ADB88EBF2B0A
          AAC0F6D2EBFC60F47FE13B7F4199A80F753DC847BB3F4142128DD059C90C2FD0
          F5EBB7BA40D556F844F7437CBEEFD71724C4DF4E3CC5F7DE7E9C8CCA5C702439
          F34E423D969F21B71122A26F795D6047793B3F1C7DA241A0E66BEBB21BB8A7F3
          FE46693E4AAFE9C635058572CE51EF3847E842BA74379FEEFDEC826EF2CAF44B
          FCEEE9FF1A5DD009CDD75B488F3294712A23DED7B33982204E354C6356B2EC2A
          EFE44763DF5F1012006ECCDE4CB7EE8E83FD9940BAA102D74816C58B125DC0A5
          89A52C495C32EFC5FB2B7BF82FA71EC3B8108DBEE008B2216BFD9BB87322F973
          F33D8A8C64D85D7E933F1FFFD18294E091A05377625DD89012248E94145EBD4A
          DA3C22F53575F53A7EEB8CCE00DF18FA1DA6CD146949375E50BAF0E66625ACDC
          CCDC88D110E5FC048956AF48A484B74ABB50283ED5F3CBF31664C338D5E79A86
          5A1C31F13F8F8D790CD60638523BD4F68267CD59BE3EF86586FD93717477315A
          D3C83751599915E2C60652141995A1BFB2879F8EFF9F396DC2A499E0EDF00CEA
          5CEFD150AA73D878F46D9C75A9B80A7F34F23FA8DA6ACB2ACD63435F615FB59F
          B4CAE0DEC58670DE64985DB6380725E2902675A5254D7F652F4F8D3FD9520916
          CBF393CF52362544A275CCCED1207DCE39F4920F2FFA559DD32B744690A4423C
          C153098ED78EB1A7B29B3EAF8FBCCE53B555DE2CEFE0BF9DFA263B4BDB16C40B
          164A7F0589E8AA8ACC53C365896AB96F244344915449CE04A7190A0629A80229
          49131272CA1FE267934F73A0BA8F844A34B2222634985A885FF1A94D558F7BB6
          628D0B1D3604153A4844DACE48869DC5EDEC2EEDA4C7EBC5C5C94CEB0C199585
          5FC43B45AE4D19435AFC4F66CE49AA2403D5E30CD64E90D70504A164A2CA5242
          25A2F9EF1CCE386CE830A18D7202356B3C17BA3DA66AEED335854D8278209E80
          40425238E718F7C71AEB82341ED65E24E9C5C50BEC2D5622EA2DF5CF62B16270
          A267725012A5B69D44195E25D13B80888B58BD739482E998F6AAC6B3D60DBC0D
          2DA11F12D442824A88B3ECF1B0FC20180BBF281989ED848BA6826A4EAA496399
          CA451D788984070F133340622327024AA23009012772CEBB4D5E9CDE362DBDD5
          AC75030E9C75847E48ADEC532BD5A84E542DD6FDC073E2DE7015F7AD6038FC0A
          0674A05129872810F58B7D0B44A88F225801238E44FDAD2EF1B08011A2D8442C
          463C3CB168317884B15D88821A35C74A54671DD638C25A486DDAA73256C154CD
          B79CB837BC98173C6A8A26B435FB88CEEB8C4A2B2421E702E0E22B402466E606
          A50C1E1EA118B41802317862F024404B82840468F1F09A02A53AADD54D95A256
          36C5D9C8F885D5905AD1AFD8C07C1BF886730E59F3AD6B9A0F6EBC3E8F9010D5
          E4777E4118D0A8E88D4E89D2219EF2667FC6432B150B1FA73AE3428734848F7D
          492BE216BD372CCEB900D80F3C09ECABBF2CF6FF06004DCA918AD851F9D10000
          000049454E44AE426082}
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000010
          3B4944415478DADC5B5B6FDB56B6FE4891A2445A96E5BB1D3BB29CD87114A7B5
          D3E6EAB4099293B6E8E521EDF360FEC1791B603073708AF3708001E647F4615E
          FA52246D81200F49D0266E1220696E75EABB2C5BB66E916849B62EBC6D9E8709
          598AA62E4EDC19E46C60C3B64C91FBFBF65A6B7F6BED4DEAABAFBE82A51D0670
          19C0184DD32C4DD33A455178939BAEEB208450841005C09CA228579E3F7F3E2B
          CB320080B15CFB3F0CC3FC4910042FC77160180606F83795045DD7CD9FAAAA42
          9224148BC5FF0A85427F9F9F9FFF1200989717FDAFD7EBFD8BDFEF872008E038
          0E2E970B344DE3FF43238440D3344892048FC7E36518E6BF33990C93CD66FFCA
          0038C630CC9FFD7E3F5A5B5B210802DC6E37689AC69B6EFE3637302716008686
          86FE2C8AE2370C21E40F3CCFD35EAF173CCFC3EBF5826198376EF60D73AF3569
          8410B85C2EE8BA0E4551D0D6D646777474FC810130CE711C388E03CBB226F837
          69F6755D87DBED06CFF328140A8ED7D0340D8661C0B22C0CBC9D9D9DE30C4DD3
          2E2B605DD7CDFEA680F77ABDE8E9E981A228C8E572D0751D144581A2A82A1C56
          2BA1691A3E9FCFC5D897BA370DBCCFE7437777372A950A128904745D07CFF3A8
          542A208438BA8985049D71BAA9712121C47407239018E6F4EF06AEEB3A3A3A3A
          D0D1D18152A984783C0E42087A7B7BD1D2D282D5D555689A563556A789650821
          E60D092126485DD7D1DADA8AB6B636300C034DD3502A9550281450A954FE6D24
          E8BA0E97CB85EEEE6EF8FD7E944A256C6C6C40D334F4F7F7C3E7F3617D7D1D92
          244110044892646232F059F1324E7EAF691A0441405F5F9FF9609665E1F178D0
          D6D6867C3E8F4C26035555FFA5441042E076BBD1D7D7079EE7B1BDBD8D8D8D0D
          1042B06FDF3EF87C3EC46231140A05F4F4F4A0B3B313D168148AA298E3B46365
          0C56ACDDF0AD5AD1341008401004249349140A05736DFD3D9BA669686969417F
          7F3FDC6E37B6B6B6108BC50000838383A6D9170A05F4F6F6A2ABAB0BF1781CC5
          62116EB71BBAAE43D3B41D5869AB39183F8D0BEB35B7DB8DC1C14174757599D7
          5BD9DDAB4E0831D66D0C0E0EC2ED76A3502860757515BAAE9BE0A3D12872B91C
          7A7A7AD0DDDD8D783C8E743A0DAFD78BE1E161F03C0F4DD3AAB0EABAEE6C0100
          208A22DADADAEACE2E4551E8E9E901CBB2D8D8D830979FBDF6F9EEEE6EF4F6F6
          0200F2F93C565757415114868686200802229108F2F93CFAFBFBD1D3D383783C
          8E6432099FCF87A1A12194CB65E4F3F9AA38B0C302AC8C0340B158C4EAEA6A43
          4B0080F6F676048341501465B2FCBADDB8CFC0C080097E737313914804144521
          140A4110042C2F2F637373137D7D7DE8EDED453C1E473C1E474B4B0B42A11054
          5545341AAD69A5A605689A064DD34CB9683C50D7750C0D0D35F4F3D6D6560483
          41ACACAC4055D5D7B20443B7078341331689A288959515B85C2E13FCE2E22272
          B91CF6EDDB87BEBE3E6C6C6C606363033E9F0FA15008144561797919922481A6
          699358830C4DD3FE690156FF7772854824D29425B4B6B69A0F760A38CD745555
          C1F33C4646464CF0D96C16CBCBCBA0691A232323E0791E0B0B0B104511FDFDFD
          D8B76F1FE2F13862B118789EC7F0F0305896C5F2F2328AC5E20ED337B0E6F379
          6717B0FE4D51144451C4D2D212344D6B9A04AB19371BEC5455457B7B3B464747
          C1711C00E0C58B17585C5C04C330181D1D85D7EBC5FCFC3CB2D92C0606063030
          308044228168346A12C7711CA2D1283637374D11E7844D14C5DF2CC0CE8EB553
          14854C26D334096D6D6D2609AAAA3635F386903970E080E96EE9741A8B8B8B60
          5916636363F07ABD989B9B432693A9021F8944200882495C2291402291004551
          35B1158B45148BC5DF94A01DB0D3FA9FC9644008C1A143871A0AA0CECE4E00C0
          E2E222344DAB1B13082108854255C22B954A616161013CCF231C0E83E338CCCE
          CE2293C960686808FBF7EF473299C4D2D212789EC7E8E8283C1E0F445144341A
          35EFEB54172084209148FC2684ACFE6AD7CFF665EFC58B17D0751D870E1D6A18
          183B3B3BA1EB3A1616166AE6EA9AA6A1BBBBBB0A3C2104B1580C1E8F07478E1C
          81DBEDC6CCCC0CB2D92C42A11082C12092C924E6E7E7C1F33C0E1F3E0CAFD78B
          62B18885850513835DFB1B1873B99C993633F63CA051B0A3691AE9741ABAAE63
          6C6CAC21095D5D5DD0751DF3F3F3D0757D4772425114060606763CE3F0E1C360
          18062E970BBFFCF20B32990C86878731343484542A85B9B93978BD5E1C397204
          3CCF439665CCCECE429224B85C2E471C8410C8B28CB5B5B5EA64C829FA372221
          954A8110827038DC9084EEEE6E00C0ECEC6C55FEA0691ADADADA2008C28EEF18
          9FCDCFCF23914860747414A15008E9741A333333F07ABD181F1F07CFF3208460
          6E6E0E8542010CC3D4C44008C1CACA0A1445F98D805A117937248C8F8F374502
          2104B3B3B3664C30F47D233712040103030348A7D378F6EC19388EC3D1A3474D
          92969696904EA7EB820780F5F5756C6D6DED4C870D7160089866333C8AA2904C
          26A1EB3A8E1E3DDA900443D13D7FFEDC24BA56D265B48E8E0E00402E97C3E3C7
          8FE1F178303131617E6F757515D168142E97ABEE0A95CBE54CD7755482BB7101
          BB25241209689A86898989A6482084E0F9F3E7A028AA2101D678110804303636
          667E279D4E637E7EDE31E25B9B3573DC317EA720B8DB4ED33492C9241E3F7EDC
          944EE8EFEF476F6F2F589685D7EB6D8A8040208013274EA0B5B5D54C8A9E3D7B
          5695E139F542A180582C56B3CCC73829A4DD5A81D51200606262020CC3D4BD7E
          7B7B1B3E9FEF950A2A9224E1C99327A8542A3523BE31F3F178BC6E8DD3D1025E
          358373B95C585F5FC7A3478FEA5A825151B2AEFDBB298C3C7EFC18B95CCE5CEB
          9D7A26933153F47AAD6645E8559B41022104EFBEFBEE0E4B5055150F1F3E446B
          6BAB19149B6D8AA2E0E9D3A7482412669DD269A94BA552661254AB2A6CFCCD38
          69F2D7ADF359493871E2844942B95CC6BD7BF7502A9570FEFCF9A69F23491252
          A99499FED65AEE645946329984AAAA4D8F75D74A70B724E8BA8E53A74EA1582C
          627A7A1A1445E1DCB97375A37FB15844A15080288AD8DCDC443E9F47A9540245
          51357DBE502898F58BDDB4D75E069B21E1F6EDDB28140A1004015353538E91BF
          582C22128998E66B94B30D5D62588B7D7C8AA24014454892F44A63649C0A227B
          D9288A422C16C3F0F0304E9D3AE5B83A44A3513C7CF810E6A18597D7583585D3
          B8B6B6B6CC5A9FD3739BF96C4749CC298B7A9D82A6AAAA0887C378E79D771C07
          B0B2B2823B77EE607C7C1C7D7D7DF8F1C71F1BA6CFB22C239FCF9B9ADED807AC
          07D8BA5F68ED8E2EB017955DC3AA26262670F4E851C76B92C9246EDFBE8D7038
          8C63C78E0100DE7AEB2D3C7AF4C8710B4ED334140A054892B443B2373ACD6214
          47EC64317601B41704189674FAF4691C3C78D0F11A511471E3C60D0C0F0FE3F8
          F1E3E6E7E170188220E0FEFDFB2897CB601806BAAE637B7B1BE572B90AB8158C
          9315D82DC020D5DA19A792D1EB10A0AA2ABC5E2FCE9E3D8BC1C1C19A2AF0C68D
          1B686F6FC7D4D4D48EFF078341B4B6B6E2CE9D3B884422E604390177FAAC5E0C
          30EE636CFAD2AF9B0758BB2CCB100401172F5EAC095E9224DCBA750BD96CB6AE
          5C0E0402F8F0C30F313A3A5A15E1ADFE6B82B0CDAA71BEA951A7280AAED3A74F
          FFD1E3F184DC6E375C2E57CD80D2A8C9B28CAEAE2E7CF0C107686F6FAFE91AB7
          6EDDC2FAFA3A388E83288A104511C160D05114310C83919111088280B5B5B57F
          EEE6BE3CC162076A27C429E019AEA0691A1445812CCB2B7B22846459C6FEFDFB
          71E1C285BAD9DDF4F434229108DC6EB7796667696909AAAAE2D2A54B6059D6F1
          7B939393E8E8E8C0CD9B3791CBE5C071DC0E9076EBA815080D1730AE739D3C79
          F28F1CC7855896352DC0BE8D5CAF4B928443870EE1C2850B662DDFA93D78F000
          4F9E3C01CBB2E62C542A15C8B28C582C06511431323252531EFBFD7E1C387000
          F97C1E9B9B9B5596E064DA562BB15A85F16C59962149D28AEBE4C993A60BECE6
          8094B16B3B393989F7DF7FBF6E2164666606F7EEDD034DD35014059224419224
          3399611806A9540AD96CB62E091CC7617474148410249349F3E0533D12EC2E61
          689397E358616A6D8935B3C64F4D4D617272B2EEB54B4B4BB879F366C304C5A8
          FBD3348D4F3EF9A4A63BD0348D3367CEA0ABAB0BF7EFDF87244970BBDD8EFEEE
          346EAB555014B5FB64485555300C838B172F626C6CACEEB5EBEBEBF8EEBBEFA0
          284A5387283C1E0F66676701A02E0900303232824020809F7EFA09A228EE20A1
          96123454A6692D4E45905ACB9C2449E0380E9F7EFA6943F0994C0657AF5E852C
          CB4D9F20A1280A1E8F070B0B0BB876ED5A43ABE9ECECC4471F7D8483070F56CD
          AED19D96C61DFF6FB6262849120281002E5FBE8CFDFBF7372C775DBD7A155B5B
          5B0D4B634EEBBBC7E3C1D2D212AE5FBF5E55C3AFE53AEFBDF75E55AE61076AEF
          554AD029B23B2D73FDFDFDF8ECB3CFCCA264BDE2C5B7DF7E8B743A0DB7DBDD34
          78FBB26690E072B970E9D2A5864486C361040201FCFCF3CF2897CB6059B6A114
          AE5282764B30F6098AC52282C1203EFFFCF386E00921B876ED1A5656569A066F
          1FA09D84E5E5E5A6822800F4F5F5E1FCF9F3E8EDED357DDDAA1A1D570AEB9114
          5555CDB4D858A7272626F0C5175F3455BEBE71E3067EFDF557783C9E5DD70C9C
          C48C4142341AC50F3FFCD014092D2D2D3873E68C1917ECE0774868EBECDBF3F8
          B367CFE2E38F3F6E2A88DDBD7B170F1E3CD8F5CCD77203EB808D030FD3D3D34D
          91E072B9F0F6DB6F637272B24A08394964BA56F5F5D8B1633877EE5C53837FFA
          F4296EDFBE6D2E45BB055ECF1A8C417B3C1EACAEAEE2EEDDBB4D6DBE18596538
          1CAEBAAF9D08DAE97416CFF33875EA54530F595858C0F5EBD7772DA11B1DCA76
          4A6DDD6E37D6D6D670EFDEBDA62BBF838383E60EB2BD70625A80F5DD1A4DD3E0
          F7FBE1F7FB1BDE7C636303DF7FFFBDE96B7B05BE16091445816559C462313C78
          F0A06977F07ABD5502AFAA24661F94F58457BDBABD288AB872E50A2A958A59B5
          79D5BAA1D3A6453D520C12288AC2F1E3C71BC628A7DD2E535A3B69ED6C368B74
          3A5DF386A55209DF7CF38D9995ED55F5B8DECCDBE382713AF5E1C387756342A9
          54C2D6D6564D92683B2B1445415114DCBC79D351854992842B57AE209148BC72
          C4AF6701BB710F9665118FC76BEE45EABA6E1E9BB1075BEBF900CA6E1E2CCB22
          1289E0EBAFBFC6D4D494B987178FC7313D3D8DB5B535F304F65ECDFAAB368304
          599631323202BFDF0F8AA2502814B0BCBC8C542A5575FAD556FFA418599635EB
          D15163EB89655944A351ACADAD9947518AC5A279667FAFF60DECEFF534B214A7
          DF198641269341369B85C7E3014551E62B33868B3AA95C455134861032A328CA
          7F1829AB9148587766B6B7B7AB928CBDDA3DA269BAAA56EF54E2AEA512ADAFEF
          580376B95CAED2FCD60068D4025FD603A1EBFA0CA3EBFA3FB6B7B7FF936559DA
          D815325E9BB59B68B3026437045841582DD0FABB533A6B97B7CD56B02A950ACA
          E532B6B7B789AEEBFF60003C5214E56FF97CFE2F8410783C1E93807FC5EB3066
          79DA02CA09ACFDA79D804627510D028CF79E6459FE1B8047C6BBC37F95244955
          55F54F1CC779ED05D2DFABD5AAEDD7036DFC6EFF8E5350B5BF3C2DCB32CAE572
          5955D5BF03F852D7F5AAB7C7BFD434EDEB52A97419C0180096A669FDF726C0BE
          C96105E804DC09BC7D97C84EC2CB954E013007E00A8059E3FFFF37000E2F9358
          B98714310000000049454E44AE426082}
        Transparent = True
        TabOrder = 2
        OnClick = btTipoMesaClick
        Appearance.BorderColor = clGray
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
        Layout = blGlyphTopAdjusted
      end
    end
    object btInserirItem: TAdvGlowButton
      AlignWithMargins = True
      Left = 7
      Top = 441
      Width = 347
      Height = 75
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Action = acPesquisarItem
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 15
      Images = frmMenu.ImgList64B
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      Appearance.BorderColor = clGray
      Appearance.Color = clHighlight
      Appearance.ColorTo = clHighlight
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = clHighlight
      Appearance.ColorMirrorTo = clHighlight
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object AdvGlowButton1: TAdvGlowButton
      AlignWithMargins = True
      Left = 11
      Top = 401
      Width = 347
      Height = 75
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Action = acTranferenciaMesa
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 19
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      Appearance.BorderColor = clGray
      Appearance.Color = clTeal
      Appearance.ColorTo = clTeal
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = clTeal
      Appearance.ColorMirrorTo = clTeal
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btCredito: TAdvGlowButton
      AlignWithMargins = True
      Left = 11
      Top = 427
      Width = 347
      Height = 75
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Action = acPagamentoAntecipado
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 16
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
      Appearance.BorderColor = clGray
      Appearance.Color = 6447871
      Appearance.ColorTo = 6447871
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirror = 6447871
      Appearance.ColorMirrorTo = 6447871
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object qrVendaMesa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'qr.nro_mesa, '
      'qr.id_mesa,'
      'qr.id_venda, '
      'qr.descricao_mesa, '
      'qr.valor_venda, '
      'qr.status,'
      'qr.cod_venda,'
      
        'cast(case when qr.status=4 then '#39'LIVRE'#39' else fn_situacoes(qr.sta' +
        'tus) end as varchar(100)) as desc_status,'
      'qr.nro_nome_mesa,'
      'qr.obs_mesa,'
      'cast(qr.nome_reserva as varchar(100)) as  nome_reserva,'
      'cast(qr.telefone_reserva as varchar(100)) as telefone_reserva,'
      'qr.data_reserva ,'
      'qr.hora_reserva,'
      'qr.data_abertura,'
      'qr.nro_pessoas,'
      'qr.nro_couvert_m,'
      'qr.nro_couvert_f,'
      'qr.cpf_cliente,'
      'qr.valor_antecipado,'
      'cast(qr.tipo_venda as varchar(1)) as tipo_venda,'
      'qr.valor_pendente,'
      'qr.nro_itens,'
      'qr.nro_itens_cacelados,'
      'qr.id_garcom_abertura'
      'from'
      '('
      '-- Select da mesa'
      'select '
      '0 as ordenacao,'
      'm.mes_003 as nro_mesa, '
      'm.mes_001 as id_mesa,'
      'v.ven_001 as id_venda, '
      'm.mes_002 as descricao_mesa, '
      'coalesce(v.ven_009,0) as valor_venda, '
      ''
      '  CASE WHEN v.sit_001 is null  THEN m.sit_001'
      '       when (v.sit_001 =1 and v.ven_015=1) then 15'
      '       ELSE  v.sit_001 end  as status,'
      ''
      'coalesce(v.ven_029, -1) as cod_venda,'
      
        '--cast(case when coalesce(v.sit_001,  m.sit_001)=4 then '#39'LIVRE'#39' ' +
        'else fn_situacoes(coalesce(v.sit_001,  m.sit_001)) end as varcha' +
        'r(100)) as desc_status,'
      
        'cast(trim(concat(cast(m.mes_003 as varchar), '#39' '#39', v.ven_027))  a' +
        's varchar(100)) as nro_nome_mesa,'
      'v.ven_027 as obs_mesa,'
      'm.nome_reserva as  nome_reserva,'
      'm.telefone_reserva as telefone_reserva,'
      'm.data_reserva ,'
      'm.hora_reserva,'
      'v.dat_001_1 as data_abertura,'
      'v.nro_pessoas,'
      'v.nro_couvert_m,'
      'v.nro_couvert_f,'
      'v.cpf_cliente,'
      'coalesce (vpa.valor_antecipado, 0) as valor_antecipado,'
      'coalesce(v.ven_024, '#39'M'#39') as tipo_venda,'
      
        'coalesce(v.ven_009,0) - coalesce (vpa.valor_antecipado, 0)  as v' +
        'alor_pendente,'
      'coalesce(vi.nro_itens, 0) as nro_itens,'
      'coalesce(vic.nro_itens, 0) as nro_itens_cacelados,'
      'v.id_garcom_abertura'
      'from mesa m'
      
        '-- uniao com as vendas em aberto (8) e pre fechadas (21), encerr' +
        'ada (1) aguardando libera'#231#227'o (ven_015=1)'
      
        'left join venda v on (m.emp_001 = v.emp_001) and (m.mes_001 = v.' +
        'ven_025) and (v.sit_001 in (8,21) or (v.sit_001 =1 and v.ven_015' +
        '=1))'
      '-- uni'#227'o com pagamento antecipado'
      
        'left join ( select sum(valor) as valor_antecipado , vpa.id_venda' +
        ' , vpa.id_empresa'
      'from venda_pag_antecipado vpa '
      
        'join venda v on vpa.id_venda=v.ven_001 and  vpa.id_empresa=v.emp' +
        '_001'
      
        'where  (v.sit_001 in (4,8,21,19) or (v.sit_001 =1 and v.ven_015=' +
        '1))'
      
        'group by vpa.id_venda, vpa.id_empresa ) vpa on vpa.id_venda=v.ve' +
        'n_001 and vpa.id_empresa=v.ven_001'
      '--uni'#227'o com os items, para pegar contador...'
      
        'left join ( select count(1) as nro_itens, vi.ven_001 , vi.emp_00' +
        '1 from vendaitem vi '
      'join venda v on v.ven_001=vi.ven_001 and vi.emp_001=v.emp_001'
      
        'where (v.sit_001 in (4,8,21,19) or (v.sit_001 =1 and v.ven_015=1' +
        '))'
      'and vi.sit_001=4'
      
        'group by vi.ven_001 , vi.emp_001 ) vi on vi.ven_001=v.ven_001 an' +
        'd vi.emp_001=v.emp_001'
      '--uni'#227'o com os items cancelados, para pegar contador...'
      
        'left join ( select count(1) as nro_itens, vi.ven_001 , vi.emp_00' +
        '1 from vendaitem vi '
      'join venda v on v.ven_001=vi.ven_001 and vi.emp_001=v.emp_001'
      
        'where (v.sit_001 in (4,8,21,19) or (v.sit_001 =1 and v.ven_015=1' +
        '))'
      'and vi.sit_001=2'
      
        'group by vi.ven_001 , vi.emp_001 ) vic on vic.ven_001=v.ven_001 ' +
        'and vic.emp_001=v.emp_001'
      '--mesas ativas e reservadas'
      'where m.sit_001 in (4, 19)'
      'and m.emp_001=:id_empresa'
      ''
      '-- Union com as comandas'
      'union'
      ''
      'select '
      '1 as ordenacao,'
      'v.ven_026 as nro_comanda, '
      'null as id_mesa,'
      'v.ven_001 as id_venda, '
      
        'cast(concat('#39'COMANDA'#39', '#39' '#39',  v.ven_026 ) as varchar(40) ) as des' +
        'cricao_comanda, '
      'coalesce(v.ven_009,0) as valor_venda, '
      
        'CASE when (v.sit_001 =1 and v.ven_015=1) then 15 ELSE  v.sit_001' +
        ' end  as status,'
      'coalesce(v.ven_029, -1) as cod_venda,'
      
        '--cast(case when v.sit_001=4 then '#39'LIVRE'#39' else fn_situacoes(v.si' +
        't_001) end as varchar(100)) as desc_status,'
      
        'cast(trim(concat(cast(v.ven_026 as varchar), '#39' '#39', v.ven_027))  a' +
        's varchar(100)) as nro_nome_comanda,'
      'v.ven_027 as obs_mesa,'
      #39#39' as nome_reserva,'
      #39#39' as telefone_reserva,'
      'null as data_reserva ,'
      'null as hora_reserva,'
      'v.dat_001_1 as data_abertura,'
      'v.nro_pessoas,'
      'v.nro_couvert_m,'
      'v.nro_couvert_f,'
      'v.cpf_cliente,'
      'coalesce (vpa.valor_antecipado, 0) as valor_antecipado,'
      'v.ven_024 as tipo_venda,'
      
        'coalesce(v.ven_009,0) - coalesce (vpa.valor_antecipado, 0)  as v' +
        'alor_pendente,'
      'coalesce(vi.nro_itens, 0) as nro_itens,'
      'coalesce(vic.nro_itens, 0) as nro_itens_cacelados,'
      'v.id_garcom_abertura'
      'from venda v'
      '--uni'#227'o com pagamento antecipado'
      
        'left join ( select sum(valor) as valor_antecipado , vpa.id_venda' +
        ' , vpa.id_empresa'
      'from venda_pag_antecipado vpa '
      
        'join venda v on vpa.id_venda=v.ven_001 and  vpa.id_empresa=v.emp' +
        '_001'
      
        'where  (v.sit_001 in (4,8,21,19) or (v.sit_001 =1 and v.ven_015=' +
        '1))'
      
        'group by vpa.id_venda, vpa.id_empresa ) vpa on vpa.id_venda=v.ve' +
        'n_001 and vpa.id_empresa=v.ven_001'
      '--uni'#227'o com os items, para pegar contador...'
      
        'left join ( select count(1) as nro_itens, vi.ven_001 , vi.emp_00' +
        '1 from vendaitem vi '
      'join venda v on v.ven_001=vi.ven_001 and vi.emp_001=v.emp_001'
      
        'where (v.sit_001 in (4,8,21,19) or (v.sit_001 =1 and v.ven_015=1' +
        '))'
      'and vi.sit_001=4'
      
        'group by vi.ven_001 , vi.emp_001 ) vi on vi.ven_001=v.ven_001 an' +
        'd vi.emp_001=v.emp_001'
      '--uni'#227'o com os items cancelados, para pegar contador...'
      
        'left join ( select count(1) as nro_itens, vi.ven_001 , vi.emp_00' +
        '1 from vendaitem vi '
      'join venda v on v.ven_001=vi.ven_001 and vi.emp_001=v.emp_001'
      
        'where (v.sit_001 in (4,8,21,19) or (v.sit_001 =1 and v.ven_015=1' +
        '))'
      'and vi.sit_001=2'
      
        'group by vi.ven_001 , vi.emp_001 ) vic on vic.ven_001=v.ven_001 ' +
        'and vic.emp_001=v.emp_001'
      ''
      
        'where v.ven_024='#39'C'#39' and (v.sit_001 in (8,21) or (v.sit_001 =1 an' +
        'd v.ven_015=1))'
      'and v.emp_001=:id_empresa ) as  qr'
      'order by 1,2'
      ''
      ''
      ''
      '')
    ReadOnly = True
    AfterOpen = qrVendaMesaAfterOpen
    AfterScroll = qrVendaMesaAfterScroll
    AfterRefresh = qrVendaMesaAfterRefresh
    BeforeRefresh = qrVendaMesaBeforeRefresh
    Left = 446
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrVendaMesaid_mesa: TIntegerField
      FieldName = 'id_mesa'
      Required = True
    end
    object qrVendaMesaid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
      Required = True
    end
    object qrVendaMesanro_mesa: TIntegerField
      FieldName = 'nro_mesa'
      Required = True
    end
    object qrVendaMesadescricao_mesa: TWideStringField
      FieldName = 'descricao_mesa'
      Required = True
      Size = 40
    end
    object qrVendaMesavalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrVendaMesastatus: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
    object qrVendaMesacod_venda: TIntegerField
      FieldName = 'cod_venda'
      ReadOnly = True
    end
    object qrVendaMesadesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrVendaMesanro_nome_mesa: TWideStringField
      FieldName = 'nro_nome_mesa'
      ReadOnly = True
      Size = 100
    end
    object qrVendaMesaobs_mesa: TWideStringField
      FieldName = 'obs_mesa'
      ReadOnly = True
      Size = 200
    end
    object qrVendaMesanome_reserva: TWideStringField
      FieldName = 'nome_reserva'
      Size = 100
    end
    object qrVendaMesatelefone_reserva: TWideStringField
      FieldName = 'telefone_reserva'
    end
    object qrVendaMesadata_reserva: TDateField
      FieldName = 'data_reserva'
    end
    object qrVendaMesahora_reserva: TTimeField
      FieldName = 'hora_reserva'
    end
    object qrVendaMesadata_atual: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'data_atual'
      Calculated = True
    end
    object qrVendaMesadata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
    end
    object qrVendaMesanro_pessoas: TIntegerField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object qrVendaMesanro_couvert_m: TIntegerField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrVendaMesanro_couvert_f: TIntegerField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object qrVendaMesacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
      ReadOnly = True
      Size = 11
    end
    object qrVendaMesavalor_antecipado: TFloatField
      FieldName = 'valor_antecipado'
      ReadOnly = True
      currency = True
    end
    object qrVendaMesatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 1
    end
    object qrVendaMesavalor_pendente: TFloatField
      FieldName = 'valor_pendente'
      ReadOnly = True
      currency = True
    end
    object qrVendaMesanro_itens: TLargeintField
      FieldName = 'nro_itens'
      ReadOnly = True
    end
    object qrVendaMesanro_itens_cacelados: TLargeintField
      FieldName = 'nro_itens_cacelados'
      ReadOnly = True
    end
    object qrVendaMesaid_garcom_abertura: TIntegerField
      FieldName = 'id_garcom_abertura'
      ReadOnly = True
    end
  end
  object dsVendaMesa: TDataSource
    AutoEdit = False
    DataSet = qrVendaMesa
    Left = 518
    Top = 40
  end
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      '  (emp_001, ven_001, ite_001, mat_001, '
      '   ite_002, ite_003, ite_005, ite_006, '
      '   ite_008, sit_001, ite_011, '
      '   ite_012, ite_013, gar_001, desconto, '
      '   tamanho, b_venda_tamanho, item_fracionado, '
      '   quantidade_impressao)'
      'VALUES'
      '  (:id_empresa, :id_venda, :nro_item, :id_material, '
      '   :QTDEVENDA, :VLRVENDA, :valor_total, :observacao, '
      '   :ite_008, :cod_status, :ite_011, '
      '   :ite_012, :ite_013, :gar_001, :desconto, '
      '   :tamanho, :b_venda_tamanho, :item_fracionado, '
      '   :quantidade_impressao)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :id_empresa, ven_001 = :id_venda, ite_001 = :nro_ite' +
        'm, mat_001 = :id_material, '
      
        #9'ite_002 = :QTDEVENDA, ite_003 = :VLRVENDA, ite_005 = :valor_tot' +
        'al, ite_006 = :observacao, '
      #9'ite_008 = :ite_008, sit_001 = :cod_status, ite_011 = :ite_011, '
      
        #9'ite_012 = :ite_012, ite_013 = :ite_013, gar_001 = :gar_001, des' +
        'conto = :desconto, '
      
        #9'tamanho = :tamanho, b_venda_tamanho = :b_venda_tamanho, item_fr' +
        'acionado = :item_fracionado,'
      '        quantidade_impressao =:quantidade_impressao'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite' +
        '_005, ite_006, ite_008, sit_001, ite_011, ite_012, ite_013, gar_' +
        '001, desconto, tamanho, b_venda_tamanho, item_fracionado FROM ve' +
        'ndaitem'
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
      'else '#39#39' end ) as varchar(100)) as desc_tamanho,'
      ''
      'cast(( '
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(mat.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      
        '    when '#39'E'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')' +
        ' '
      '  else MAT.MAT_003 end'
      'else '
      '  MAT.MAT_003'
      'end) as varchar(100)) as descricao_item'
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
      '     , ite.gar_001'
      '     ,ite.ite_013  -- impressora'
      '     ,ite.b_venda_tamanho'
      '     ,ite.tamanho'
      '     ,ite.ite_012  -- item pago'
      '     ,ite.sit_001  -- id_situacao'
      '     ,ite.ite_011  -- deve imprimir'
      '     ,ite.ite_008  -- item impresso'
      '     ,ite.quantidade_impressao'
      '     ,MAT.MAT_004 as cod_produto'
      ''
      'FROM VENDAITEM ITE'
      
        'JOIN MATERIAIS MAT ON (MAT.EMP_001 = ITE.EMP_001) AND (MAT.MAT_0' +
        '01 = ITE.MAT_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ITE.EMP_001'
      'WHERE ITE.EMP_001 = :emp'
      'AND   ITE.VEN_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'ORDER BY ITE.ITE_001')
    ReadOnly = True
    Left = 472
    Top = 120
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
      DisplayFormat = '0.000'
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
      Size = 100
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
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemdescricao_item_sem_tamanho: TWideStringField
      FieldName = 'descricao_item_sem_tamanho'
      ReadOnly = True
      Size = 50
    end
    object qrVendaItemdesc_tamanho: TWideStringField
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemgar_001: TIntegerField
      FieldName = 'gar_001'
    end
    object qrVendaItemite_013: TIntegerField
      FieldName = 'ite_013'
    end
    object qrVendaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrVendaItemtamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object qrVendaItemite_012: TWideStringField
      FieldName = 'ite_012'
      Size = 1
    end
    object qrVendaItemite_011: TWideStringField
      FieldName = 'ite_011'
      Size = 1
    end
    object qrVendaItemite_008: TWideStringField
      FieldName = 'ite_008'
      Size = 1
    end
    object qrVendaItemquantidade_impressao: TFloatField
      FieldName = 'quantidade_impressao'
    end
    object qrVendaItemcod_produto: TWideStringField
      FieldName = 'cod_produto'
      ReadOnly = True
      Size = 50
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
  end
  object dsVendaItem: TDataSource
    AutoEdit = False
    DataSet = qrVendaItem
    Left = 552
    Top = 120
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList64B
    Left = 616
    Top = 40
    object acAberturaDeMesa: TAction
      Caption = 'Abertura [F1]'
      ImageIndex = 69
      ShortCut = 112
      OnExecute = acAberturaDeMesaExecute
    end
    object acPreFechamentoImprimir: TAction
      Caption = '&Pr'#233' fechamento'
      ImageIndex = 5
      ShortCut = 116
      OnExecute = acPreFechamentoImprimirExecute
    end
    object acFecharMesa: TAction
      Caption = '&Fechar mesa'
      ImageIndex = 10
      ShortCut = 117
      OnExecute = acFecharMesaExecute
    end
    object acEnviarCozinha: TAction
      Caption = 'Enviar '#224' cozinha'
      ImageIndex = 10
      ShortCut = 118
    end
    object acTranferenciaMesa: TAction
      Caption = 'Transferir mesa [F8]'
      ImageIndex = 19
      ShortCut = 119
      OnExecute = acTranferenciaMesaExecute
    end
    object acJuntarMesas: TAction
      Caption = '&Juntar mesas [F9]'
      ImageIndex = 81
    end
    object acPagamentoAntecipado: TAction
      Caption = '&Pagamento parcial [F10]'
      ImageIndex = 16
      ShortCut = 121
      OnExecute = acPagamentoAntecipadoExecute
    end
    object acReabrirMesa: TAction
      Caption = 'Rea&brir mesa [Ctrl+A]'
      ImageIndex = 2
      ShortCut = 16449
      OnExecute = acReabrirMesaExecute
    end
    object acCancelaMesa: TAction
      Caption = 'Cancelar venda'
      ImageIndex = 18
      ShortCut = 16471
      OnExecute = acCancelaMesaExecute
    end
    object acPesquisarItem: TAction
      Caption = 'Inserir item'
      ImageIndex = 15
      OnExecute = acPesquisarItemExecute
    end
    object acCancelaItem: TAction
      Caption = 'Cancelar item'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = acCancelaItemExecute
    end
    object acDescontoItem: TAction
      Caption = 'Desconto no item [Ctrl+D]'
      ImageIndex = 79
      ShortCut = 16452
    end
    object acObservacaoItem: TAction
      Caption = 'Obs. no item [Ctrl+S]'
      ImageIndex = 78
      ShortCut = 16467
    end
    object acReservarMesa: TAction
      Caption = '&Reservar mesa [Ctrl+F]'
      ImageIndex = 77
      ShortCut = 16454
    end
    object acImprimirPrevia: TAction
      Caption = 'Imprimir pr'#233'via'
    end
    object acTransferirGarcom: TAction
      Caption = 'Transferir gar'#231'om'
    end
    object acAlterarTituloMesa: TAction
      Caption = 'Alterar t'#237'tulo da mesa'
      OnExecute = acAlterarTituloMesaExecute
    end
    object acPesquisaGarcom: TAction
      Caption = 'acPesquisaGarcom'
    end
    object acAlteraPessoas: TAction
      Caption = 'Clientes'
      ImageIndex = 34
    end
    object acInsereProdutoFracionado: TAction
      Caption = 'Inserir Fracionado [F11]'
      ImageIndex = 84
      ShortCut = 122
    end
    object acOpcionaisItem: TAction
      Caption = 'Opcionais [Ctrl+O]'
      ImageIndex = 86
      ShortCut = 16463
    end
    object acLimparMesa: TAction
      Caption = 'Liberar mesa'
      OnExecute = acLimparMesaExecute
    end
    object acTranferenciaItem: TAction
      Caption = 'Tranferir itens [F9]'
      ImageIndex = 2
      ShortCut = 120
      OnExecute = acTranferenciaItemExecute
    end
  end
  object qrInsereItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'insert into vendaitem '
      '(emp_001, ven_001, mat_001, ite_002, ite_003, '
      ' ite_005, ite_006, ite_001, gar_001, '
      ' ite_013, ite_012, sit_001, ite_011, ite_008,'
      ' tamanho, b_venda_tamanho, item_fracionado,'
      ' quantidade_impressao, desconto, numero_pedido  )'
      'values '
      '(:emp, :id_venda, :id_material, :quantidade, :valor_unit, '
      ' :valor_total, :observacao,  :nro_item , :id_garcom,'
      ' :cod_impressora, '#39'N'#39', 4, '#39'S'#39', '#39'N'#39', '
      ' :tamanho, :b_venda_tamanho, :item_fracionado,'
      ' :quantidade_impressao, :desconto, :numero_pedido )'
      '')
    Left = 384
    Top = 160
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
        Name = 'id_garcom'
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
        Name = 'numero_pedido'
        Value = nil
      end>
  end
  object puPopupOpcoesMesa: TPopupMenu
    Left = 440
    Top = 210
    object ransferirmesaF81: TMenuItem
      Action = acTranferenciaMesa
      Caption = 'Transferir mesa'
    end
    object PagantecipadoF101: TMenuItem
      Action = acPagamentoAntecipado
      Caption = '&Pagamento parcial'
    end
    object acAlterarTituloMesa1: TMenuItem
      Action = acAlterarTituloMesa
    end
    object acLimparMesa1: TMenuItem
      Action = acLimparMesa
    end
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 408
    Top = 112
  end
end
