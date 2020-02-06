object frmCaixaStatus: TfrmCaixaStatus
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Caixa - Status'
  ClientHeight = 661
  ClientWidth = 1100
  Color = clActiveCaption
  Constraints.MinHeight = 690
  Constraints.MinWidth = 877
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 661
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
    ExplicitWidth = 871
    DesignSize = (
      1100
      661)
    FullHeight = 200
    object pnTopo: TPanel
      Left = 0
      Top = 0
      Width = 1100
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 6
      ExplicitWidth = 871
      object lbTipoMovimentoCaixa: TLabel
        Left = 16
        Top = 7
        Width = 183
        Height = 23
        Caption = 'RESUMO DE CAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object btRelRetiradas: TButton
      Left = 246
      Top = 506
      Width = 186
      Height = 41
      Caption = 'Retiradas / Sangrias'
      TabOrder = 7
      OnClick = btRelRetiradasClick
    end
    object cxgridCaixa: TcxGrid
      Left = 8
      Top = 73
      Width = 216
      Height = 306
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 8
      object cxgridCaixaDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCaixa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxgridCaixaDBTableView1DataAbertura: TcxGridDBColumn
          Caption = 'Abertura'
          DataBinding.FieldName = 'data_abertura'
          Options.Filtering = False
          Options.Sorting = False
        end
        object cxgridCaixaDBTableView1DataFechamento: TcxGridDBColumn
          Caption = 'Fechamento'
          DataBinding.FieldName = 'data_fechamento'
          Options.Filtering = False
          Options.Sorting = False
        end
      end
      object cxgridCaixaLevel1: TcxGridLevel
        GridView = cxgridCaixaDBTableView1
      end
    end
    object dtpDataFinal: TDateTimePicker
      Left = 119
      Top = 43
      Width = 105
      Height = 24
      Date = 42599.000000000000000000
      Time = 42599.000000000000000000
      TabOrder = 1
      OnChange = dtpDataFinalChange
    end
    object dtpDataInicial: TDateTimePicker
      Left = 8
      Top = 43
      Width = 105
      Height = 24
      Date = 42599.000000000000000000
      Time = 42599.000000000000000000
      TabOrder = 0
      OnChange = dtpDataInicialChange
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 503
      Top = 43
      Width = 362
      Height = 133
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = ' Controle Pessoal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object btRelAcrescimosPorUsuario: TAdvGlowButton
        Left = 11
        Top = 30
        Width = 165
        Height = 41
        Caption = 'Detalhamento entregas Delivery e taxa de servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btRelAcrescimosPorUsuarioClick
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
      object AdvGlowButton3: TAdvGlowButton
        Left = 11
        Top = 77
        Width = 165
        Height = 41
        Caption = 'Fechamento de vendas por operador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
      object btDetalheVendas: TAdvGlowButton
        Left = 182
        Top = 30
        Width = 165
        Height = 41
        Caption = 'Detalhamento de vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btDetalheVendasClick
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
      object btRelAcrescimosCouvert: TAdvGlowButton
        Left = 182
        Top = 77
        Width = 165
        Height = 41
        Caption = 'Taxa de Couvert'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btRelAcrescimosCouvertClick
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
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 503
      Top = 182
      Width = 362
      Height = 170
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Movimenta'#231#227'o de Produtos'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object btRelVendasCanceladas: TAdvGlowButton
        Left = 182
        Top = 28
        Width = 165
        Height = 41
        Caption = 'Cancelamentos de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btRelVendasCanceladasClick
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
      object btRelProdutosVendidos: TAdvGlowButton
        Left = 11
        Top = 28
        Width = 165
        Height = 41
        Caption = 'Produtos Vendidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btRelProdutosVendidosClick
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
      object btRelDescontoItens: TAdvGlowButton
        Left = 12
        Top = 75
        Width = 165
        Height = 41
        Caption = 'Desconto nos Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btRelDescontoItensClick
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
      object btRelDescontoVendas: TAdvGlowButton
        Left = 183
        Top = 75
        Width = 165
        Height = 41
        Caption = 'Desconto de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btRelDescontoVendasClick
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
      object btRelProdutosVendidosLucro: TAdvGlowButton
        Left = 12
        Top = 122
        Width = 165
        Height = 41
        Caption = 'Lucro de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btRelProdutosVendidosLucroClick
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
      object btRelProdutosDevolvidos: TAdvGlowButton
        Left = 183
        Top = 122
        Width = 165
        Height = 41
        Caption = 'Produtos Devolvidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btRelProdutosDevolvidosClick
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
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 503
      Top = 358
      Width = 362
      Height = 171
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Movimenta'#231#227'o de Financeira'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object btRelTotalFormapag: TAdvGlowButton
        Left = 12
        Top = 30
        Width = 165
        Height = 41
        Caption = 'Totalizador Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btRelTotalFormapagClick
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
      object btRelSuprimento: TAdvGlowButton
        Left = 12
        Top = 77
        Width = 165
        Height = 41
        Caption = 'Suprimentos (+)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001C0000001C0806000000720DDF
          940000000473424954080808087C086488000000097048597300000AEB00000A
          EB01828B0D5A00000016744558744372656174696F6E2054696D650030392F30
          342F3136F45FA1900000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C00000771494441544889AD967B8CDC55
          15C73FF7FE1EF3DCD99D9D9D99DDCEEC76DBD25D5A4A17288F966E8B94102229
          C1DAD6075843A0454014253141452016886834F14540DD0812A56A204A628C0F
          023108A91568DD7629A5ED76BBBBB38FD9DD79EE6F66E7F7FBDDEB1F6D084421
          DDE8F9FB9CF339DF937BCE3D426BCD62EC9E81CC63D296FD7F7A65ECD3434FEA
          D38B0A06CCC5387F655FF7FDEBD6F5DFD393DA1258BBFCD57DC18F891BEBBFD3
          F9C5E490E7EAF8A581AE4F65BA527B03113350F646B9B4F7860D8FDD7DC32F85
          108B2AFA9C8077FD3873496A5974A02DDE45ABD583EF2B4A8DD3F45FB0E3DA87
          9EBFE2FBFF57E0AE07D3A9E4F2E0BEB6B6F67022B0125F2F201094EA9368C365
          CBC537DF75E74066F7FF0C0C6E13F14FDCD7D4DA7971F057F154F3CA74E802B4
          56F8CA456B1F53D84C558F116B4AB075C39EC7777E576C3A17A0F86FAF74EFEF
          2FFB466F66E3AEC3A37F11C174EDBC15AD9B88984984008985161A81400A8946
          D3D57229874EBC38FEE8D38F6F1CFCA11E5994C2DB9F8C5FD3735EDF370D4BAC
          94F1E2791DB13584CC044A7B9417A618ADFC9386EF00A0D168205719E4C265D7
          64EEDABEE35921446051C0EE65DDBB4AF5510EE49EA2AD394BABBD0CD7AF0182
          D9DA49A69DB7A82E4C209080C0C4C6571E858553AC5FBD6DC3232FF4FFF49C81
          57DF624602617333CAC0B00CC24612A57DB4F651DA236AA7885A6982560B0075
          AFCC6CFD38C5FA694AB5513C1C3E72D16776DDFB4CF7973F08F8BE195AB33975
          B9659BCB62C10EF41C54BD19E2F652340A4F35680964690966314590D9FA0966
          9DE3B8CA414A1B439A2CF8F3F424B6F0D1CB3FF79DDB9EB08F0DDCD1F8C3872A
          8CC6AD1B6D3B486B538684B58AC9E210A5C6188608000A5FBB480CE6DD1926AA
          83D4FC122BE25BD8D93BC0A6CCBDD4BC02C385D7C8A4CE37AEBFE2EEA7AFBA4F
          ACFA50602022AF0FDB717CEDD193598F594B325C7A8D9A574008F36C6B15C5FA
          6916BC79D07065E6F318C2E4E2F44DD83242B99163A27284F3BB36263EBBF5A6
          5F8B4B45F43F803B1E15CBBFFAECAA8140C85E11325AF17D8F9A98A22916C529
          B88C945FC5570D8430F055836A639A9660164B46989E3F4A716194B1CA1B2C8D
          6DA4D298C2530DF2CE312EEBBDF1C26FEFDDF28BF7012FDA23923BAFBBFBB9DE
          15EB6E95A690B60CA3F1A8371C54609E746C25E56285B1EA81B3F569AAEE34FD
          992FB0217307AE5FC35375F64FFC84D395FD18C2462299778B54BD29AE5A7BF3
          B6AFFD66CD83EF02AFDEDCF52D3B2C2ECACDBF494B68096881EBD789DA49DAC3
          7DF4746EA03BDACFE4EC4926E7FF85214358324CAE7A90B5A9ED683499E83A4E
          165E66B8F83742661CAD150626C5DA28A625B876DDAD0FDDF9B3D61D0032D614
          BBE4D4DC3F70FC69C2761BBEF650DA436B680E64410B92E90E6C2FC158E120C5
          C60889E00A26AA83680D7DA99D1C997D8186AA61CA2061B31585874261089BC9
          EADBB4C53BB97EFD9D4F6C7D406C36367F32718B1534B20BAA4024D042D46E47
          690F5028ED8306573BD4459E46495050C7C8C4FA986FCCF2F7F11F70BCF01287
          F3CF23854922B49CD650372011283420A5A45A9F249B581B4EA7E2D7CA865B13
          915033A6D7CC78E50DA66B4750DA470A1B005F7B486DE3526653CF1E92EA328E
          15FE4C22B49C889526573D44C86CA523DA472ABC8ABA5726EFBC75663B098D56
          1A5FFB4C540F934DADCE1AEB3F1ED99D6E4F67D3E13EF2B33966178EE3A82914
          1E01D98C212D4C695377AB14FC77B8AEEB6106C7FF8863E458D6DC4F22B49C78
          B09390194720C93B6F33511DC436C244ED241A1F4304A87A93E44BC318576E6F
          DA1D6D8966B36D17D01EEBA1549EA5589EA1B03042D51F03A131459878682913
          952378669172658E7CF50486ED13B397A0B47FB62B060D354FDD2BD212EA2468
          C490C2A4AEE6982CBFC5C9E1B79F34366C8FEE6E6E6DCE46AD24866120432EA6
          699034D652AE949871DE615E8DA3F1698FF631EB9CC00A0A64AD859985A30402
          61A2561A8D87D28A90D94C73304BC86C410A03573BE42A6F3295CBFFF6916DC7
          6F33B55668EDA151B87E8D66AB9BE6442701334A47630543A32F519A9BC47106
          990A0DD11E5D4322B89ACEA6188787E154613F81B6184D563B4A37F035584600
          34F8CA25E71C243F951F7AE5B9D1DBB5D69E545A6B858F563E4A7968AD4049EA
          0B158484CE25BD445A6CDAAC55C4DD3E46A60E7224FF02E3B5037477ACC5763A
          1829BD4ADDAF208501F828E5238464B27688FCF478F1F8EBC59D2FFEBC563CBB
          DAB4E52B170D68CEA855DA3DABD8216224E988ADC6B14FD2D6D64ED868C72F87
          393D31C8C9F9BF12690A335F683056D98FAF7CA43031844DBE7E94A9B9613D7D
          AA76DB335F9F1E7AF77B12DAA8D4DD2255374FD44A9D99BDF798D28AB6602F51
          B383B29B63E99235846592626996C9E251CA7202D3B02996F28C1907680FF751
          F34698280D51C8790FFC684FEEF9F7E6339D391E89A6DDD56395FDA9A0D9CA07
          5DE252184821A9B973CCF00E866510899B78E5100BD4702B01E68C1C8E3783DF
          D054A678EA7B378D3F2C8430000128ADB5125A6BBEF854C7FDD1B4DAAB0D0FCE
          F9F23FE3685936DA97D44B9A86A3892605F5B278FDC5274AD71C7AD97180E0D9
          001FA8FD1B17BF762F5B0F7C0C0000000049454E44AE426082}
        TabOrder = 2
        OnClick = btRelSuprimentoClick
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
      object AdvGlowButton5: TAdvGlowButton
        Left = 183
        Top = 77
        Width = 165
        Height = 41
        Caption = ' Sangria (-)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001C0000001C0806000000720DDF
          940000000473424954080808087C086488000000097048597300000AEB00000A
          EB01828B0D5A00000016744558744372656174696F6E2054696D650030392F30
          342F3136F45FA1900000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C0000046B494441544889B596DF6B5447
          14C73F67EEBDBB6BD6D48D25C4A8942028158B9680B4352069A53E0AFADCE742
          ED7B9F7DF0ADF828087D92FE0D6D5FFC05ADD0220421B460BA542D62ACB1D534
          6936B9F7CE397D987B7727ABA2457B6099B9333BF33DDFEF9C7366C4CC00B879
          EDDAEEBDB3B31FE7ABAB47304B00B49A0370D5B7031410C0A2F9A7BE4500F266
          A7F3D3EDEBD72FBF3333F33B8098198BB76F7FB86DEBD60BDCBAB5CF3F7850AF
          088BC2C2A75A11C186BFA33E006648A783EDD9D35DD9D8F86CC7D4D425B971E5
          CAEEB7F7EFFF51BFF966577EF7AEE15C589024206238278820CE85CD9DA3FE8F
          89884463F5BC54FFB7E0B4B9765BE4C891C5856EF7FD74727AFA147373BB7A0B
          0B968C8D41E5A9844DA40F12B74912983867385769EE44067DAC763C4DA55C5E
          26EB7627771C3A742AED2D2D7DD05E5C44F31C298AB0A108523314119C1B3014
          01D581DCD5B88898450EF625F61E2D4B6C6585B5870FDF4B4D3531EFD1A2E803
          8A7398F7B5AC6171CD2A49407500568D9B73606652398408E69C080440C05493
          141133337C59429E23151B1341EA8DE37EC5AECFD8FB01CB6A5D5F11554C3500
          9A8188A588A0DEE36B49A3A0D8B459D58F022A967E301ECEB65E67E21C5A96A8
          F702903A114CB50F2891B744BF4DE3155B710E8BFAF178CC5A8B02AB94490DD0
          0AD0550C450417A4917E00244948EE24E9835BED487D0411734B927EB46B9ED7
          9212242D4B7C5120798E13A1B7BECE7A003444C4451BE31C922448745656257B
          9CAB23CD26239D0E96A601BC2A04A988A0AA941B1B489ED333A379E20463FBF6
          21A1620569E2EA335C61CC202A6B88B074E3068F2E5E64A4D5C2F77A24DBB793
          1C3E4C0AA0DE539625AE2CC95B2D0E9C3C499A65C22BD8E8C4847D7FE60C45AF
          47B1BCCC1B478F92341A1543338AB5357C59B292E7E8FA3A6459F05AE4C5ED33
          CC894096616589A62935FFD46519F993272CCFCFE31A0DD6DA6DA4D9DC24DB0B
          DB6701361A94DE53784FE93D5E950C48710EBFB1C1C6EA2ACDF171A4D7E387B3
          67199F993131DB74E520429265F46B661C2810F2D60C1561F1F2656C75159F24
          94DEF7AFBA5408F79C99A166A4AAFC79EE1C4BE7CF0310C15518B299D930CB4A
          66D7EBD16EB55033D4FB282D0879589AE1BC07604BAB1592186C10966C8EC417
          59A3813703EF29CD5055A4CF10288024803CDBF3E78D3DCFA25429082A0A0486
          A68A023E067C8DA615A0415569CCF0FF23A027BC77FA925A05A8D51946F64AC9
          1F03AA2AE21C29E0BC6A60F87450D8EB00F584633333975A9AFEB1656222E8EC
          FD7F0B8C97313314684D4C6069FA30FDADDBFD6EFFB1639F8F8C8ECA3F2B2BD6
          A893FA3559AECAD66DDB64FCF8717E5958F85680D6CFF3F35F8DDEBBF7C9AF17
          2EF0D7DC5C7850D5EFCECA8481BE713B3C1F33738D066F4E4FB3F7F469FE9E9C
          FCFAC0C1839F8A992122ED6B57AF7EB1737CFC23FFF8F14E545DFDD6A98B747D
          0D0DB7FD6B2A060C112938A7C9D8D8FDFB8F1E5D9A9D9DFDD2CCD664E879DE79
          776AEAAD469639AD1F4D2F73630C5BF562C88B426FDEB973D7CC96EBA97F0164
          F766E93818B7FD0000000049454E44AE426082}
        TabOrder = 3
        OnClick = AdvGlowButton5Click
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
      object AdvGlowButton6: TAdvGlowButton
        Left = 12
        Top = 171
        Width = 165
        Height = 41
        Caption = 'CREDITOS INSERIDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001D0806000000BDA4DC
          0C0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030392F30
          342F3136F45FA1900000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C0000076549444154488995975B6C1D57
          1586BFBD67CEFDE4A439B653C7C7B113A749701235F7B4692D68A155D30B1721
          C40BB7C213AFA08A27DE9078E28107545EAA021242A0165A55A4A2E2A2A29628
          A9E226A18AE33849E3C68E1D1FDF7DCEF1B9CCECB57898F171ADB410B6B4359A
          99BDF6BFD7AC7FFD6B8D5155EE659C1D59D6A9E515CA2B7504A5526F01904BFA
          F8C6D2914F532A167864FF16732FFB99FF05FCD670592F4F95F13DC3AEDE2D94
          BAF2247D8F8ECD69C030BFDCA019844C942BDC985CC485CA607727CF3EBCEDBF
          1EE05381CF8D54F4DC8D0952698F87F66FA3BB3347D3298DD02106EAA10090F1
          2C28A47D8FB467B8335FE3EC0753ACD65A3CF44089A1073B3EF1009F08FCD7F3
          B3FADEF55B9C78B087C1812E969A21B5C0E1190306C06050144041D6A628D984
          A5984E30726396B3972639BEAB87674F96EE02BF0BF82FE766F4FCCD494E0DED
          625321C35C3DC018B0C6AC6162880FA0A080AA22125D43890ED0954D50ABD4F9
          F33FC7383E50E24B43BDE65381DFBEB0A06F5FBECE171FDB834925A90621C61A
          4C0C6662641B6F11991A541527D1177002E20427CAA6A48F1F06BCF6B7CB3C7E
          6037C5CD9B38BA376300FC35D0F3A3753D73E5260F3D58C2F91E95460B6B2C46
          35F2D62806C387E365DE7CEB121393F300F4F576F0CCA983F4F775114AE4B913
          454499AFB5D89CF679F8503FEF5EBAC9A9639F0132B48187C79AFAE174193CA5
          54DAC2D4721363C13382B10631B4BDFCDD1FCEF0ECB15E061EDD8131706BB6CA
          2B7F3CC70B3F786E1DD4294EC1A952AEB6E8DBB6052E4F716DB28CE7F97A625F
          CEF800CE392E5CBFCD539F7B80C9A5060A1889E3A9600C8889EE2BD5065F38B1
          9B9DDB3B49247D6AAB0DFE74E626CE29A153440451C5B978AA7273BECED0917E
          4EFFE30ABB7A3A191EF3D50E8F3574B23C472269486633345B42101B05F10C9D
          1286D133807C3E859FF4105572D934BEEFC540D25E1B88124A64DB0A04934993
          CE24989899C7B9102B228C4D94D9512A52AE360963D0D0C586A2843159422731
          AB22E6464C8644C26E5C27117828F15EA24C2F36D9B9BD831BB767712EC45711
          266696E9EEEB6076292097F5F054B19E61EAD61CEFBC33C2F4F4E28694532014
          0555ACB5CC2DD4F8C94F5F6DBFEFEEDEC2D0D07EBABA8B117828D402615336CD
          EDD90AE21CBE8A525EAC218904732B4D56563D8A059F74D272FAF4799E3A5462
          E0917E3CDFC3F72C09DF43D4204E510C61D3F1CB179EA6BADA4015AC858FA657
          F8F55BC37CFBF92768B6846A3D449D90CB2798AFD61127F8A0349B2D5AA1210C
          15156166A1453AE551AB3579F4F04EB6973A4825FD38AD0C184328800A0AF4F6
          1463F58AD268F7CE6E5E7CFD029555C74A2D44240A41D341A311826A04EC9C50
          69B4100515C1C3D068B88848D9149EE74569620C16051B91CCA0A81A4415D575
          054B671200B402C139691FA8DA0A704EC06894C7BEF5A8375A38BCC82BB5A885
          5C2ECDB58905FA7A3B3010790BD41A613BDAAA4A2E9388E53312998B57A7C9E6
          52115163315123D4EB82170B826F8DA1A390A2596B62B35942145430584E0E1D
          E0C5372EF2F357DEC3F72C9E67F13D8F977EFC65E26A413EE3F3D51FFD1E6B69
          8722974BF3C4E70F536F863871A8801A08561BDC974DE0598B6FADA5A7733395
          A52A9BD259C428216070640B05BEF6F5C7F16D145780975F3ACDF24A9D7C3E1D
          79A920227CF77B4FD368495BB717AB01AD56880A84449FB6BA58615B471EEB79
          F84707F366E4C34E7DFDDDAB0CF674E102418DC560A8351DABAD55BCB81AC5D8
          51CC9CA2669D50D30B0DAA0D072A08519954D5F65ACFB74C7C54E699633BF13D
          0F0BB0A7EF7EC2668BC5F20A28381124145CCCC640A4AD42517C2C2E26923511
          B922B19148B1DCBAADB8A8762ECC2E13D49BECE9DFCAB17D0563017C3FC19327
          76313E7A136CE48553C585F174445751B2D934D727E7B92F9FA2B829C5A56B77
          C864D204A18B003FBE3E149C538C81F1D1711E3BD4473295DE588FCF7D30AF3F
          FBED3F486FDDCAD6EDDDA002C6465569BDF1C06BAC32FCDE088DB8D94B67929C
          7CF40041228B9328AFD7C8A4AA18A03C3143F5F61D7EF88DCF327424EAC53634
          02AFFDFDBAFEE2D5B30C1CD94BBE9047E3CA64E3E01A03E9944731978C091795
          C1F94A8B461009B7B6BB12C028B5E52AD78747F9FE578EB2ABAFC4D17D9BEF06
          7EFFCA8A5E1C1DE757A72FF0C091BD148A05D0F526A0ED797B440FD6F63080AC
          89B9512AF32B8CBD3FCAB79E3CC0E1FD031C3F506C9BFB1FDFE6C860C188F6E9
          7744F8CD9B17E9D9DB4FF7F66E646D37B32622EBCA859AF84EDB3D98C570E7D6
          0C93573EE29BA7F6737070C706D0BB3C5EF77C5927A66678F98DF32C85961D83
          3B28140B188D5268E3880E62E2AE6165A1C2F8C83805CFF1FC7387D95EEAE6F8
          FEE2DD569FD6575FBC5AD17A7D9533176F70FA5FD758754A674F175BB6DE87EF
          27C815B260A0B65C230C1C4BB38BCC4DCF9135C2D38FECE6E4A10132991C4706
          37DF7B5FBDC1FBD1256D34EA5C1B9FE1D2D814576FCD1304C29D855500BA8B59
          1209CB9EDE2207F76E6377FFFDA4D2198EEDBBDBCBFF0B786DFCFB5A45833020
          0C82587FA36EC4588B35163F9120E12738B8A7704FFF4EFF01F69D7BD1605D8C
          C30000000049454E44AE426082}
        TabOrder = 4
        Visible = False
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
      object btRelAcrescimos: TAdvGlowButton
        Left = 183
        Top = 30
        Width = 165
        Height = 41
        Caption = 'Resumo de delivery e taxa de servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
          A20000000473424954080808087C086488000000097048597300000AEB00000A
          EB01828B0D5A00000016744558744372656174696F6E2054696D650030392F30
          342F3136F45FA1900000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C00000869494441544889BD976B7055D5
          15C77F7B9F7373DF3721DC3C48480824BC0C6F2541B48814503A2AB4D6D28E1D
          47C5191D6B8BAD542C15D461740A530B5566B4A355EBFB359D54079002823280
          80844430608010422E2137C9E5E6BE1FE79CDD0F09363818E897EE99FDE5ACFF
          5EBFB3CE5A7BEDB35156688E5209A994E272B3B5B575622010987C25DACB4D89
          18F229382D0619F1785C02B4B6B656B5B4B4940CA6BDD221AF44E476BBADEEEE
          EE1F2BA55EDABF7F7FDBFF059C4C26B548A4D7A5941AA369DAAEA2A2A22183E9
          E3E1C81505A35F4EE0743A4DA7C35E7236D6792A372FF7F3F1EEF1E9C1F45226
          EDE01B029403C7011F20FACDAD800520945283F9293AD116581AEAEA9A346EEC
          98177C1ED7C62B0846EED8D7FC6420945E99B4CCB02D47CB03C8A6D38C2DF7B7
          CC9A54B108383C68C46153DDDEDD1BFFC3E9D6767AC291E9B158F46FD3274F78
          B3A26244F3F741BF3C7176C1EB5B9A56B67439B13BC8B32C05282C53C723BB46
          594BB4F5B3ABCB7E3828B8AD3328CF747673F4F809BA82E70A4B4A8A570EF3E7
          51513162D5F78177EE6DBAFA58578C8C54A41316467FC605108C28BE3872A67C
          767559E1A0609988BE376DD2E8C749C78BF272266D9A5A5B73BFD3A6770FB2C4
          9831659CDF593012536A0825109800280159A5185768EF02860E0A9E5055E57E
          F6B56D394219DC71CFBCE780F6C1F480B3E9AB83C5DBF6B520A486100A0682B3
          101B5DE0F9D1D45FF65EAEAA87FCEB9326DFCF16CD0038F51D9B9BBE5DD13BE0
          D9B54D87F678DBEAEBD1F51C408130FB4D16D9B4C41B29CD855F140D0ADEB3F7
          A4AB2DD0A30D2B76C7B878EBF956AF5EFDCAD9B367C78E1C3972ABCFE7E5745B
          DB8CD693CDB5A1B4CF3C121A8FCD9ED317A6EA4FB2B44886A3CCBBF5FA2CE89E
          4B824DABDBA649FFE4830D47EF0B767573F2D857F1C835C3D33E4F2E007F7D7E
          C3F477DF7EEBF650A803873B6F828522934A8299C6E11A26873A17D0D1120629
          FAE0361DA2290AAABC4CAEAEDA00D6D94B8235D96E1AF8976CDE71F22ED216C9
          4877D117071AE6CFBFF18617003C6EA7914A6738178CA08B2C1606280B854961
          A18F4D1F3DC886E737E2D42CF24B0AD8BDA78179B36659D5E3476CBCEDB619DF
          403A7849703C5CE9B8F391F5D76CFEAC4D8E29CFC1A65B84CE87AB2ED897DCBB
          E4B3DE48EF7D3BBF3AFFF2C75F86F0B8DC28D3C0344C523E37CBDEDE477BD2C6
          940923A8AD34A9AE9AC69C057328F4E8130D2B56A84B4FF47B3A57AAAC72C6D3
          6D2D67528C1B19E3CE8563185D39AA7EF14F165E3D50154CB1E9D615750BF61F
          4DA2E5284AF3DD8C1C968791CE128A24387AE62C65CE6E9E583C1A87548C8B24
          987CCF5D33754DDF2BD3A9DE1FF4FB99F5DEF6C6571F7B71EBB6F7771C7BF7AA
          AB2B15B124898CC0D22D52E9F430C3CC0EBF00CDC42CBDD0C1AF1EBC69DC2776
          19C3E6C861689E0733934458267EAF9BAA8A0A024639DB8F4AF2EDF6784E697E
          A3AE69A700740C91066BC913AFED7A79C7A12EECF63CEA4F06C82DAFA4E64693
          E6AFF79135056646159E3B17BA6A7869513B408E471AC0A985B3463FF9978F1A
          6F3A1C888AA6B61898264A4840A14B1B9AD2D8F2758AA577CE3F34714CD193C0
          3900DDEEF1D53CF6D2A777AFA93BC588B252642C892574E21D3D8C291D8A76C2
          433CAAA3151A5A6F4FF737C34B8B2E4A4A9E53B3F9B319A58E9D10698F0B2C89
          E84F5F4608A48450CCE29D6D4DD7D78E295A056C87BEF3786F2295A8985AEE25
          D6D240475780D3DD1D84E2110EB445080B0FED0907E3A68CAFAB9E547DE61205
          91176FEF9422D081C7B07066148EACC2910557D6C46DA69181009FBCBF8B23ED
          9DDB2F2C92C0C1E77E7DCB53B71437A921E7FEC9F08E0FF0470FA11B26962650
          B9256C3DD04347DCD542FF593A706C786FD70DCDCD1DD895C2322CB00C44D642
          664D30C14027C7C8D0F5CD39B6EF6AFDB69275803FAF5DE3FEF09DB799337B36
          B535357CFCEF9D6C6E6EC4942594167848641D2CFFFD870FBD5EA6CFED4D675D
          52489465E2CD75CBE381C4A8704260971A5A328D85463C1A054D03CBC0E77190
          14904A25D0CC4CE140B077CBB6ED35F9FE42B1F4B7CBD8F9D9E7AC5CF1287B7E
          BE8C6834436549290BEF9F673EB2F48D9CE6035D9370BAE1C216B44C1012B053
          523E2459313C183F7E34E07FF4817B696C6C60F2D4C9BCFAFA2BF8AF2AEEB8F9
          B605AD5515BEAF2F8A38D8D959565D5DCDE1C34718EA2FA0A9E92813CB6C1C69
          DAF5C11D731F5FF7D0A29A1C9760E3BB7FDFE3EEEC096590580285B40416904E
          1A2CFEE9F53D271BD6075C1375FFB41A07D7DD309B5834CA35875D349F38706C
          F5AAD76E062EFAD4F14824920E87C3B89D6E7A7AC30C2B2E22120ED21B3C72E6
          A1DF2CDE0BF0C0C29AFB1F5858E36B38DEB239656613BA02A7A191158A98B0B8
          B67A6CEEF4298FFCC3E1C9C7920E02C15E8A0BFD747777118FC65D8006240782
          4B7C3EDFC9DDBB775FF7C7554F114F2531B206F507EB9973E3DCC4803A7A4B00
          6AF4A84B143600418FAFE0CB7DFBF75FEB7239482662381C76F61D38C8CC9933
          4F03A98BD44A29475D5DDD3A5DD7D5D8F1D56AD9F2156A6841B172BABC8937DF
          78B3E67FB91DAC59B376A6D3E5B14ACB46A865CB57A81115A394C7E351EBD6AF
          BFF5BBDA0BBD7AEEDAB56BB72E5FBEFCDB177AFEC5973AEFB9F7EE677B42E79D
          D94C16D334314D03C3345156FF3544934821D16D3A36DD268A0BFDF6A79FF9D3
          A2679E5A35FE829F871F7E78FFBA75EBE6019181018B6834EA10422CB5D96CBF
          DBB465ABFF507DBDAA9D31539B56536B84C3613D93CD621A7D40D334310CE3BF
          2522404A894DD7D1340D4DD7C9CDF57170DF17AAB1E110D3A74F17F3E7CC3E93
          4CA59252CA8D9AA66D71BBDD5BA0FFBFFAF4E9D3AEFCFCFC695EAFF766200D0C
          0D04CFB7484DAB344D0B854013D44A49AD655A2004A22F4D200408D16328EB2D
          E83BFB87FB87C4E96B4ECE486F6F9DA55456D3B43620E8F57A5300FF01F1DB3E
          CACD77DB8D0000000049454E44AE426082}
        TabOrder = 1
        OnClick = btRelAcrescimosClick
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
      object AdvGlowButton8: TAdvGlowButton
        Left = 183
        Top = 171
        Width = 165
        Height = 41
        Caption = 'CREDITOS INSERIDOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D494844520000001E0000001D0806000000BDA4DC
          0C0000000473424954080808087C086488000000097048597300000B1200000B
          1201D2DD7EFC00000016744558744372656174696F6E2054696D650030392F30
          342F3136F45FA1900000001C74455874536F6674776172650041646F62652046
          697265776F726B7320435336E8BCB28C0000076549444154488995975B6C1D57
          1586BFBD67CEFDE4A439B653C7C7B113A749701235F7B4692D68A155D30B1721
          C40BB7C213AFA08A27DE9078E28107545EAA021242A0165A55A4A2E2A2A29628
          A9E226A18AE33849E3C68E1D1FDF7DCEF1B9CCECB57898F171ADB410B6B4359A
          99BDF6BFD7AC7FFD6B8D5155EE659C1D59D6A9E515CA2B7504A5526F01904BFA
          F8C6D2914F532A167864FF16732FFB99FF05FCD670592F4F95F13DC3AEDE2D94
          BAF2247D8F8ECD69C030BFDCA019844C942BDC985CC485CA607727CF3EBCEDBF
          1EE05381CF8D54F4DC8D0952698F87F66FA3BB3347D3298DD02106EAA10090F1
          2C28A47D8FB467B8335FE3EC0753ACD65A3CF44089A1073B3EF1009F08FCD7F3
          B3FADEF55B9C78B087C1812E969A21B5C0E1190306C06050144041D6A628D984
          A5984E30726396B3972639BEAB87674F96EE02BF0BF82FE766F4FCCD494E0DED
          625321C35C3DC018B0C6AC6162880FA0A080AA22125D43890ED0954D50ABD4F9
          F33FC7383E50E24B43BDE65381DFBEB0A06F5FBECE171FDB834925A90621C61A
          4C0C6662641B6F11991A541527D1177002E20427CAA6A48F1F06BCF6B7CB3C7E
          6037C5CD9B38BA376300FC35D0F3A3753D73E5260F3D58C2F91E95460B6B2C46
          35F2D62806C387E365DE7CEB121393F300F4F576F0CCA983F4F775114AE4B913
          454499AFB5D89CF679F8503FEF5EBAC9A9639F0132B48187C79AFAE174193CA5
          54DAC2D4721363C13382B10631B4BDFCDD1FCEF0ECB15E061EDD8131706BB6CA
          2B7F3CC70B3F786E1DD4294EC1A952AEB6E8DBB6052E4F716DB28CE7F97A625F
          CEF800CE392E5CBFCD539F7B80C9A5060A1889E3A9600C8889EE2BD5065F38B1
          9B9DDB3B49247D6AAB0DFE74E626CE29A153440451C5B978AA7273BECED0917E
          4EFFE30ABB7A3A191EF3D50E8F3574B23C472269486633345B42101B05F10C9D
          1286D133807C3E859FF4105572D934BEEFC540D25E1B88124A64DB0A04934993
          CE24989899C7B9102B228C4D94D9512A52AE360963D0D0C586A2843159422731
          AB22E6464C8644C26E5C27117828F15EA24C2F36D9B9BD831BB767712EC45711
          266696E9EEEB6076292097F5F054B19E61EAD61CEFBC33C2F4F4E28694532014
          0555ACB5CC2DD4F8C94F5F6DBFEFEEDEC2D0D07EBABA8B117828D402615336CD
          EDD90AE21CBE8A525EAC218904732B4D56563D8A059F74D272FAF4799E3A5462
          E0917E3CDFC3F72C09DF43D4204E510C61D3F1CB179EA6BADA4015AC858FA657
          F8F55BC37CFBF92768B6846A3D449D90CB2798AFD61127F8A0349B2D5AA1210C
          15156166A1453AE551AB3579F4F04EB6973A4825FD38AD0C184328800A0AF4F6
          1463F58AD268F7CE6E5E7CFD029555C74A2D44240A41D341A311826A04EC9C50
          69B4100515C1C3D068B88848D9149EE74569620C16051B91CCA0A81A4415D575
          054B671200B402C139691FA8DA0A704EC06894C7BEF5A8375A38BCC82BB5A885
          5C2ECDB58905FA7A3B3010790BD41A613BDAAA4A2E9388E53312998B57A7C9E6
          52115163315123D4EB82170B826F8DA1A390A2596B62B35942145430584E0E1D
          E0C5372EF2F357DEC3F72C9E67F13D8F977EFC65E26A413EE3F3D51FFD1E6B69
          8722974BF3C4E70F536F863871A8801A08561BDC974DE0598B6FADA5A7733395
          A52A9BD259C428216070640B05BEF6F5C7F16D145780975F3ACDF24A9D7C3E1D
          79A920227CF77B4FD368495BB717AB01AD56880A84449FB6BA58615B471EEB79
          F84707F366E4C34E7DFDDDAB0CF674E102418DC560A8351DABAD55BCB81AC5D8
          51CC9CA2669D50D30B0DAA0D072A08519954D5F65ACFB74C7C54E699633BF13D
          0F0BB0A7EF7EC2668BC5F20A28381124145CCCC640A4AD42517C2C2E26923511
          B922B19148B1DCBAADB8A8762ECC2E13D49BECE9DFCAB17D0563017C3FC19327
          76313E7A136CE48553C585F174445751B2D934D727E7B92F9FA2B829C5A56B77
          C864D204A18B003FBE3E149C538C81F1D1711E3BD4473295DE588FCF7D30AF3F
          FBED3F486FDDCAD6EDDDA002C6465569BDF1C06BAC32FCDE088DB8D94B67929C
          7CF40041228B9328AFD7C8A4AA18A03C3143F5F61D7EF88DCF327424EAC53634
          02AFFDFDBAFEE2D5B30C1CD94BBE9047E3CA64E3E01A03E9944731978C091795
          C1F94A8B461009B7B6BB12C028B5E52AD78747F9FE578EB2ABAFC4D17D9BEF06
          7EFFCA8A5E1C1DE757A72FF0C091BD148A05D0F526A0ED797B440FD6F63080AC
          89B9512AF32B8CBD3FCAB79E3CC0E1FD031C3F506C9BFB1FDFE6C860C188F6E9
          7744F8CD9B17E9D9DB4FF7F66E646D37B32622EBCA859AF84EDB3D98C570E7D6
          0C93573EE29BA7F6737070C706D0BB3C5EF77C5927A66678F98DF32C85961D83
          3B28140B188D5268E3880E62E2AE6165A1C2F8C83805CFF1FC7387D95EEAE6F8
          FEE2DD569FD6575FBC5AD17A7D9533176F70FA5FD758754A674F175BB6DE87EF
          27C815B260A0B65C230C1C4BB38BCC4DCF9135C2D38FECE6E4A10132991C4706
          37DF7B5FBDC1FBD1256D34EA5C1B9FE1D2D814576FCD1304C29D855500BA8B59
          1209CB9EDE2207F76E6377FFFDA4D2198EEDBBDBCBFF0B786DFCFB5A45833020
          0C82587FA36EC4588B35163F9120E12738B8A7704FFF4EFF01F69D7BD1605D8C
          C30000000049454E44AE426082}
        TabOrder = 5
        Visible = False
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
      object AdvGlowButton2: TAdvGlowButton
        Left = 12
        Top = 124
        Width = 165
        Height = 41
        Caption = 'CFE (Cupom Fiscal)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = AdvGlowButton2Click
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
      object btRelVendasFiado: TAdvGlowButton
        Left = 183
        Top = 124
        Width = 165
        Height = 41
        Caption = 'Vendas Fiado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = btRelVendasFiadoClick
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
    end
    object bRelCaixa: TAdvGlowButton
      Left = 711
      Top = 589
      Width = 154
      Height = 66
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
        DE0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C000008B34944415478DAEC5B5D6814471CFFEFDE5D2E1F26D18B
        A9A9D5C460D55629A60D2D488B81821445106D293E15F1A5F44D506AE84B29F6
        29E0A30D7DB1D0A7580A45E84B0B966AE98335A2A95469ADA8316D62CF5C2E21
        97DCD7EEF6FF9BDB39C7CDEEDD26D9E44CE2E030B33B7333F3FBCDFF6B668D66
        5916ADE4A4D30A4FCF087846C00A4FE1851AF8F0E1C36F73F125E7172B80EB6F
        CE1FF6F5F5FD543102D8BB7CC5456B853616A463FEB64A12D05A61E96EADA80A
        B4B5B591611834323242070E1CA01D3B765028140A64EC5C2E47894482CE9C39
        E3DABE71E346DF732D180158E0F8F838757676D2EEDDBBA9A5A585344D0B6CEC
        D6D6563A71E204F5F4F4CC18777070901A1B1B2B4B40329914656D6DADD80D2C
        321E8F0732F6AA55AB44B96DDB363A7EFC389D3E7DDA73FE8AB941D334455643
        6D5DD703C9A3A3A3148944281A8DD2F6EDDBA9BBBB5BCC23E79479D912801C0E
        878B246CD9B2854E9E3C2924EDA92100C0655E080200502501EA70ECD8B122E9
        7E0F79E185940049844A4020D11B03BF7BF72E653219F15C5D5D2DDEC9796763
        6C179580A0BC40555515AD5EBD5AB859496C4D4D8D70B98113D0D17B634E8B7C
        DE4504B1D0C9C9499A9E9E16F5542A55F4D7D841D4B1AB2891D7AE5DEB0A46DA
        009558A801D4C1497A5902CAB1B5F38BDF035581868606DF3EDA2F1015836AFC
        FC48822F153814FFAE8B0B441C6FF0B054185723921388855A85824B547E0940
        05FCF697FDA42B0CFC34C883F6F12C2D621A9D453614260DD9366A162CAF9117
        99CCFC130B590823E8570202238041B4881D67F07AB88AF4680DE955D5A4715D
        B4E7B36466D36466A6C9CCB12430095E4610EF1F3D7A44F97C5E182E1832E9BA
        A48B431DF13E741ABF91C60E75D80FE83B7E8F32168B3D41ECBC09387AF46835
        C7D99FF2A01FF084EB69F43C656059F50201148992565D4FA1BA464184989481
        5BA971CC5E90847CCE930018B7E6E6E6E23B8093C6CB2D9052E30769E14BA986
        4AC0A953A72C7B0DFFF2FBAFF98CF0D9D9B367D3A508D0376CD8F0395BDFE36B
        D6AC295ADA8181019E9417C199C251D26B1B683C3545B72FFD28DAB774BE45F5
        FCCE6029B034960245059C3B022B8FDD05707577B1A3200273A6D3E9E2DC7827
        9FD11F44A0C419C38D0875BEAD5BB7CAB1D78F8D8D75731B98FE18DDBC08E079
        C247E06325E3C5E042B748837DD3F927916A4A0E5EA57DEF1DA06CDEA0DF2E5E
        A2FA57BB441B36DCF4B00148105B64B50D40D4BA3CECC8545757270892A25ECA
        96A804A812044C7C8A3CC28F9F70CE7A12C00B68927AA88A29240022AED900F7
        BCFB3E8DE53294E2DD797DEF7E1A1D9E2083DB0CEE23F5DA8D0000E1DD107D30
        0F761875ECB0FC1DEA28A12EF83DF41EF642C60C527A901114A1CD8D00A70106
        361B73D6EB2CA0ABFA3733F30259C70DDE75ADFE059A8ED452D20C53C3739BC5
        3BB4893ECA6F9C04E01D40438491B13084B22801108050AA220F8028A13A9218
        E726396D875B76C31C2E274645C6F9771680F322F2BCF38383FF50FBCBAF502B
        FB87BBB76E887706DA4004E752410C168F31B3D9AC000760E82F7718F3CBA069
        2E87B0D97884D91100B1E51DD619E0583249136C1C45FBD484900083DB841897
        5001ECAA3470EA2E4A3BA086C6789E4DF0E40C848225C0B60186C122C88B1A1B
        79400F067E2DDCC1ED7C936AAA22A20DBF354C6F0220FE6E6E2FE843D8BC0890
        AE690601284DB06C517AE826EDB7BDC0E59F2F5274F36B0CDC127D4B19C1854E
        2A68278E391320DC20B200C6463097A53D870E5192CB49F6029DEFEC653BF040
        B4A9E2EFA59F688737C0335C22ACBC6AD8643F18C4F99C19E644809B75356DF0
        ACE8A46533944F4F51DAACA1543E4D89549ADAD7ACE7777F7220C486D02890E0
        45000C1F2E4765E82BDF4B8B8F76004746983B9BF3809308270EB7F821EC3690
        7307C54070251CE21A0C9E4209FA6BE03A6D7E693BAD6EACA33B37FFA0DC6442
        B4A18FA5B83F447E1313130210C0C9C0C62BC125CA8478C12F784810EE1A4A79
        0137497195003702004A6391276D4A3CFF77FF36C587EE15DA8D5CE12094C561
        28FB0401106F1C7EF00C32400280C1F5E1C243053C9FD320BC06C62D45802F09
        70EB2498C33F8B81E5D222D841A9E921FB386CD8C7E19CE883BE384BE0FA7A6A
        6A4A883C80CB3B3C24EC98DF1DF67B4D86F924E8A6A626F2836D06016E9F941E
        8B4E4115C8CA0AB0967A212233F7C1DB8E8E0EEAEFEF171280BB3A5C7FA90404
        7D1F00D70A0250470085F9FD600BBBDDB896371E12B073218F6F8A001CDF0391
        AE5CB9B2686E70D7AE5D45D573E250EF114B12E0D49DA03E6A2E76721A3DDF12
        0003558EB9A548802F09802E3925602143D7854CCE1D77C3E14A00A2B4154BC0
        BD7BF7C4777D350DD8A7BEA5969C92ECF63DC255B99D1230DB9BD6C54E8801E0
        FA1071CA68D30D87EFC3D052230009019773AD81118038C0CF60954A3803C8EF
        08326681C59F3301CE63E4BA75EB687878F8A926411A3879A98A3507761F8003
        4B7B7BFB9233828111B09C53D8C5752438868E2D3712ECFF3F94284780C9A7B6
        73B158EC23F9017359EC32DB04DC2E31B66F49F92CE646407EDFBE7D8FAE5DBB
        76857FB09963E9D8722080253A515F5F7F874F8AA19E9E9E2776D57947A45FBD
        7A75249D4E37CB9B9AA5FE2735F240840FACEC290C3E2637767575A53C556068
        68E816836F4638BC1402203F497E76E360E9FAC18307A74B1A41D6FDEF376DDA
        B47BA91E814BA5783CFE8DD306CCB824EBEFEF3FCF626F2E37F0ECD526CE9D3B
        D737433A145B80ACF7F6F6DE67F1BFBCDC0878F8F0E10F172E5C18814754F03E
        AE2884A0032EF362765DB75525623FCBBA2CD58CF62ABB2D6C3F8794717449B4
        97C1B645D4B4EB79BB8EA024679779BB2ECB9CCBBBBCD2DFB0C718E27CC73187
        2701BA63F1111B5844A9CB1C55EA11FB5925C54984A610E105DE54169FB77356
        29DD72C62E2529B2BF4A9EE920B8B808CDA10A6AD64B10A34A885B1FCD65E735
        17376C394A759196B278C3418EE1D86567DD7219CB54E7F2FAF8AE793C972BFD
        D6CBC62E259E2D9F65B9710A8B7AF6B7C32B3C3D2360A513F0BF00030074CAB8
        6E15956C540000000049454E44AE426082}
      PopupMenu = pmRelatorioCaixa
      TabOrder = 5
      OnClick = bRelCaixaClick
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
      DropDownButton = True
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 230
      Top = 43
      Width = 267
      Height = 612
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object Label1: TLabel
        Left = 16
        Top = 31
        Width = 135
        Height = 16
        Caption = 'DATA DE FECHAMENTO'
      end
      object Label2: TLabel
        Left = 16
        Top = 14
        Width = 117
        Height = 16
        Caption = 'DATA DE ABERTURA'
      end
      object DBText1: TDBText
        Left = 202
        Top = 14
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'data_abertura'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 202
        Top = 31
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'data_fechamento'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 202
        Top = 67
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'hora_fechamento'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 202
        Top = 49
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'hora_abertura'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 49
        Width = 118
        Height = 16
        Caption = 'HORA DE ABERTURA'
      end
      object Label4: TLabel
        Left = 16
        Top = 67
        Width = 136
        Height = 16
        Caption = 'HORA DE FECHAMENTO'
      end
      object Label5: TLabel
        Left = 16
        Top = 98
        Width = 82
        Height = 16
        Caption = 'CAIXA INICIAL'
      end
      object DBText5: TDBText
        Left = 202
        Top = 98
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_inicial'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 115
        Width = 84
        Height = 16
        Caption = 'VENDAS MESA'
      end
      object DBText6: TDBText
        Left = 202
        Top = 115
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_mesa'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 133
        Width = 106
        Height = 16
        Caption = 'VENDAS DELIVERY'
      end
      object DBText7: TDBText
        Left = 202
        Top = 133
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_delivery'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 151
        Width = 97
        Height = 16
        Caption = 'VENDAS BALCAO'
      end
      object DBText8: TDBText
        Left = 202
        Top = 151
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_balcao'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 169
        Width = 110
        Height = 16
        Caption = 'VENDAS COMANDA'
      end
      object DBText9: TDBText
        Left = 202
        Top = 169
        Width = 47
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_comanda'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 16
        Top = 423
        Width = 99
        Height = 16
        Caption = 'SUPRIMENTO (+)'
      end
      object DBText10: TDBText
        Left = 195
        Top = 423
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_suprimento'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 16
        Top = 441
        Width = 78
        Height = 16
        Caption = 'RETIRADA (-)'
      end
      object DBText11: TDBText
        Left = 195
        Top = 441
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_retirada'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 16
        Top = 477
        Width = 132
        Height = 16
        Caption = 'OUTROS D'#201'BITOS   (-)'
      end
      object Label13: TLabel
        Left = 16
        Top = 512
        Width = 136
        Height = 16
        Caption = 'OUTROS CR'#201'DITOS (+)'
      end
      object DBText12: TDBText
        Left = 195
        Top = 477
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_outros_debitos'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 195
        Top = 512
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_outros_creditos'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 16
        Top = 218
        Width = 143
        Height = 16
        Caption = 'TX. SERVI'#199'O / ENTREGA'
      end
      object DBText14: TDBText
        Left = 195
        Top = 218
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'acrescimo_venda'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 16
        Top = 271
        Width = 73
        Height = 16
        Caption = 'DESCONTOS'
      end
      object DBText15: TDBText
        Left = 195
        Top = 271
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_descontos'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 16
        Top = 548
        Width = 81
        Height = 16
        Caption = 'SALDO ATUAL'
      end
      object DBText16: TDBText
        Left = 188
        Top = 548
        Width = 61
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'saldo'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 16
        Top = 566
        Width = 114
        Height = 16
        Caption = 'SALDO INFORMADO'
      end
      object DBText17: TDBText
        Left = 195
        Top = 566
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_informado'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 16
        Top = 584
        Width = 65
        Height = 16
        Caption = 'DIFEREN'#199'A'
      end
      object DBText18: TDBText
        Left = 195
        Top = 584
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'diferenca'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 16
        Top = 90
        Width = 233
        Height = 2
        Pen.Color = clNavy
      end
      object Shape2: TShape
        Left = 16
        Top = 210
        Width = 233
        Height = 2
        Pen.Color = clNavy
      end
      object Shape3: TShape
        Left = 16
        Top = 466
        Width = 233
        Height = 2
        Pen.Color = clNavy
      end
      object Shape4: TShape
        Left = 16
        Top = 292
        Width = 233
        Height = 2
        Pen.Color = clNavy
      end
      object Shape5: TShape
        Left = 16
        Top = 537
        Width = 233
        Height = 2
        Pen.Color = clNavy
      end
      object Label19: TLabel
        Left = 16
        Top = 352
        Width = 47
        Height = 16
        Caption = 'CHEQUE'
      end
      object DBText19: TDBText
        Left = 195
        Top = 352
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pagamento_cheque'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText20: TDBText
        Left = 195
        Top = 334
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pagamento_credito'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 16
        Top = 334
        Width = 105
        Height = 16
        Caption = 'CARTAO CR'#201'DITO'
      end
      object Label21: TLabel
        Left = 16
        Top = 316
        Width = 96
        Height = 16
        Caption = 'CARTAO D'#201'BITO'
      end
      object DBText21: TDBText
        Left = 195
        Top = 316
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pagamento_debito'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText22: TDBText
        Left = 195
        Top = 299
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pagamento_dinheiro'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 16
        Top = 299
        Width = 56
        Height = 16
        Caption = 'DINHEIRO'
      end
      object Shape6: TShape
        Left = 16
        Top = 412
        Width = 233
        Height = 2
        Pen.Color = clNavy
      end
      object Label25: TLabel
        Left = 16
        Top = 388
        Width = 87
        Height = 16
        Caption = 'OUTRA FORMA'
      end
      object DBText25: TDBText
        Left = 195
        Top = 388
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pagamento_outra'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 16
        Top = 494
        Width = 146
        Height = 16
        Caption = 'ESTORNO DE VENDAS (-)'
      end
      object DBText26: TDBText
        Left = 195
        Top = 494
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_estorno'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText27: TDBText
        Left = 195
        Top = 187
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pdv'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 16
        Top = 187
        Width = 74
        Height = 16
        Caption = 'VENDAS PDV'
      end
      object Label33: TLabel
        Left = 16
        Top = 370
        Width = 113
        Height = 16
        Caption = 'FIADO / CREDI'#193'RIO'
      end
      object DBText33: TDBText
        Left = 195
        Top = 370
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'total_pagamento_fiado'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 16
        Top = 253
        Width = 56
        Height = 16
        Caption = 'COUVERT'
      end
      object DBText36: TDBText
        Left = 195
        Top = 253
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_couvert'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 16
        Top = 236
        Width = 139
        Height = 16
        Caption = 'CAIXINHA ENTREGADOR'
      end
      object DBText37: TDBText
        Left = 195
        Top = 236
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'caixinha_entregador'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object AdvGroupBox5: TAdvGroupBox
      Left = 8
      Top = 509
      Width = 216
      Height = 146
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      DesignSize = (
        216
        146)
      object Label23: TLabel
        Left = 8
        Top = 6
        Width = 48
        Height = 16
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText23: TDBText
        Left = 152
        Top = 6
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'desc_status'
        DataSource = dsCaixa
      end
      object Label24: TLabel
        Left = 8
        Top = 26
        Width = 53
        Height = 16
        Caption = 'USU'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText24: TDBText
        Left = 152
        Top = 26
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'nome_usuario'
        DataSource = dsCaixa
      end
      object Label34: TLabel
        Left = 8
        Top = 66
        Width = 59
        Height = 16
        Caption = 'TERMINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText34: TDBText
        Left = 152
        Top = 66
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'terminal'
        DataSource = dsCaixa
      end
      object Label35: TLabel
        Left = 8
        Top = 46
        Width = 91
        Height = 16
        Caption = 'USU'#193'RIO FECH.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText35: TDBText
        Left = 152
        Top = 46
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'nome_usuario_fechamento'
        DataSource = dsCaixa
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 88
        Width = 198
        Height = 51
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'observacao'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object AdvGroupBox6: TAdvGroupBox
      Left = 8
      Top = 385
      Width = 216
      Height = 118
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Quantidade de Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object Label28: TLabel
        Left = 8
        Top = 22
        Width = 33
        Height = 16
        Caption = 'MESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText28: TDBText
        Left = 152
        Top = 22
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'qtde_vendas_mesa'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 8
        Top = 40
        Width = 55
        Height = 16
        Caption = 'DELIVERY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText29: TDBText
        Left = 152
        Top = 40
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'qtde_vendas_delivery'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 8
        Top = 58
        Width = 46
        Height = 16
        Caption = 'BALCAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText30: TDBText
        Left = 152
        Top = 58
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'qtde_vendas_balcao'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 8
        Top = 77
        Width = 59
        Height = 16
        Caption = 'COMANDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText31: TDBText
        Left = 152
        Top = 77
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'qtde_vendas_comanda'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText32: TDBText
        Left = 152
        Top = 95
        Width = 54
        Height = 16
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'qtde_vendas_pdv'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 8
        Top = 95
        Width = 23
        Height = 16
        Caption = 'PDV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object qrCaixa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select'
      'c.id_empresa,'
      'c.id_caixa,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.hora_abertura,'
      'c.hora_fechamento,'
      'c.valor_inicial, '
      'c.valor_informado_dinheiro,'
      'c.valor_informado_cartao,'
      'c.valor_informado_cheque,'
      'c.valor_informado_outros,'
      '(c.valor_informado_dinheiro + c.valor_informado_cartao +'
      
        'c.valor_informado_cheque + c.valor_informado_outros) as total_in' +
        'formado,'
      'coalesce(cvm_qtd.qtde_vendas, 0.00) as qtde_vendas_mesa,'
      'coalesce(cvm.valor_total, 0.00) as total_mesa,'
      'coalesce(cvd_qtd.qtde_vendas, 0.00) as qtde_vendas_delivery,'
      'coalesce(cvd.valor_total, 0.00) as total_delivery,'
      'coalesce(cvb_qtd.qtde_vendas, 0.00) as qtde_vendas_balcao,'
      'coalesce(cvb.valor_total, 0.00) as total_balcao,'
      'coalesce(cvc_qtd.qtde_vendas, 0.00) as qtde_vendas_comanda,'
      'coalesce(cvc.valor_total, 0.00) as total_comanda,'
      'coalesce(cvp_qtd.qtde_vendas, 0.00) as qtde_vendas_pdv,'
      'coalesce(cvp.valor_total, 0.00) as total_pdv,'
      'coalesce(idesc.deconto_item, 0.00) as total_desconto_item, '
      'coalesce(vdesc.desconto_venda, 0.00) as total_desconto_venda,'
      
        'coalesce(idesc.deconto_item, 0.00)+coalesce(vdesc.desconto_venda' +
        ', 0.00) as total_descontos,'
      'coalesce(vdesc.nro_pessoas, 0.00) as nro_pessoas,'
      'coalesce(vdesc.nro_couvert_f, 0.00) as nro_couvert_f,'
      'coalesce(vdesc.nro_couvert_m, 0.00) as nro_couvert_m,'
      'coalesce(vacres.acrescimo_venda, 0.00) as acrescimo_venda,'
      'coalesce(vacres.valor_couvert, 0.00) as valor_couvert,'
      
        'coalesce(vacres.caixinha_entregador, 0.00) as caixinha_entregado' +
        'r,'
      'coalesce(csupr.valor_total, 0.00) as total_suprimento,'
      'coalesce(cret.valor_total, 0.00) as total_retirada,'
      'coalesce(ccred.valor_total, 0.00) as total_outros_creditos,'
      'coalesce(cdeb.valor_total, 0.00) as total_outros_debitos,'
      'coalesce(cestorno.valor_total, 0.00) as total_estorno,'
      'fn_saldo_caixa(c.id_caixa, c.id_empresa) as saldo,'
      '(fn_saldo_caixa(c.id_caixa, c.id_empresa)  - '
      '(c.valor_informado_dinheiro + c.valor_informado_cartao +'
      
        'c.valor_informado_cheque + c.valor_informado_outros) ) as difere' +
        'nca,'
      
        'coalesce(pag_cartdeb.valor_total, 0.00) as total_pagamento_debit' +
        'o,'
      
        'coalesce(pag_cartcred.valor_total, 0.00) as total_pagamento_cred' +
        'ito,'
      
        'coalesce(pag_dinheiro.valor_total, 0.00) + c.valor_inicial as to' +
        'tal_pagamento_dinheiro,'
      
        'coalesce(pag_cheque.valor_total, 0.00) as total_pagamento_cheque' +
        ','
      
        'coalesce(pag_outra_forma.valor_total, 0.00) as total_pagamento_o' +
        'utra,'
      'coalesce(pag_fiado.valor_total, 0.00) as total_pagamento_fiado,'
      'u.usu_002 as nome_usuario,'
      'uf.usu_002 as nome_usuario_fechamento,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'cast(c.observacao as varchar(200))as observacao,'
      'c.terminal'
      'from caixa c '
      'join usuarios u on c.id_usuario=u.usu_001'
      'left join usuarios uf on c.id_usuario_fechamento=uf.usu_001'
      'left join '
      
        '( select sum(ci.valor) as valor_total,  ci.id_empresa, ci.id_cai' +
        'xa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'join encerravenda ev on ev.emp_001=ci.id_empresa and ev.ven_001=' +
        'ci.id_venda'
      
        'join encerravendaitem evi on evi.emp_001=ci.id_empresa and evi.e' +
        'nc_001=ev.enc_001 and ci.item_encerravenda=evi.ite_001'
      
        'where v.ven_024='#39'M'#39' and ci.tipo_movimento='#39'E'#39' and ev.sit_001=1 a' +
        'nd ci.classificacao='#39'V'#39
      
        'group by ci.id_empresa, ci.id_caixa ) cvm on c.id_caixa=cvm.id_c' +
        'aixa and c.id_empresa=cvm.id_empresa'
      'left join '
      
        '(select sub_qtd_v.id_empresa, sub_qtd_v.id_caixa , count(1) as q' +
        'tde_vendas from ( '
      'select ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'where v.ven_024='#39'M'#39' and ci.tipo_movimento='#39'E'#39' and ci.classificac' +
        'ao='#39'V'#39
      'group by ci.id_empresa, ci.id_caixa, ci.id_venda) sub_qtd_v'
      'group by  sub_qtd_v.id_empresa, sub_qtd_v.id_caixa'
      
        ') cvm_qtd on c.id_caixa=cvm_qtd.id_caixa and c.id_empresa=cvm_qt' +
        'd.id_empresa'
      'left join '
      
        '( select  sum(ci.valor) as valor_total,  ci.id_empresa, ci.id_ca' +
        'ixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'join encerravenda ev on ev.emp_001=ci.id_empresa and ev.ven_001=' +
        'ci.id_venda'
      
        'join encerravendaitem evi on evi.emp_001=ci.id_empresa and evi.e' +
        'nc_001=ev.enc_001 and ci.item_encerravenda=evi.ite_001'
      
        'where v.ven_024='#39'D'#39' and ci.tipo_movimento='#39'E'#39' and ev.sit_001=1 a' +
        'nd ci.classificacao='#39'V'#39
      
        'group by ci.id_empresa, ci.id_caixa ) cvd on c.id_caixa=cvd.id_c' +
        'aixa and c.id_empresa=cvd.id_empresa'
      'left join'
      
        '(select sub_qtd_v.id_empresa, sub_qtd_v.id_caixa , count(1) as q' +
        'tde_vendas from ( '
      'select ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'where v.ven_024='#39'D'#39' and ci.tipo_movimento='#39'E'#39' and ci.classificac' +
        'ao='#39'V'#39
      'group by ci.id_empresa, ci.id_caixa, ci.id_venda) sub_qtd_v'
      'group by  sub_qtd_v.id_empresa, sub_qtd_v.id_caixa'
      
        ') cvd_qtd on c.id_caixa=cvd_qtd.id_caixa and c.id_empresa=cvd_qt' +
        'd.id_empresa'
      'left join '
      
        '( select count(1) as qtde_vendas, sum(ci.valor) as valor_total, ' +
        ' ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'join encerravenda ev on ev.emp_001=ci.id_empresa and ev.ven_001=' +
        'ci.id_venda'
      
        'join encerravendaitem evi on evi.emp_001=ci.id_empresa and evi.e' +
        'nc_001=ev.enc_001 and ci.item_encerravenda=evi.ite_001'
      
        'where v.ven_024='#39'B'#39' and ci.tipo_movimento='#39'E'#39' and ev.sit_001=1 a' +
        'nd ci.classificacao='#39'V'#39
      
        'group by ci.id_empresa, ci.id_caixa ) cvb on c.id_caixa=cvb.id_c' +
        'aixa and c.id_empresa=cvb.id_empresa'
      'left join '
      
        '(select sub_qtd_v.id_empresa, sub_qtd_v.id_caixa , count(1) as q' +
        'tde_vendas from ( '
      'select ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'where v.ven_024='#39'B'#39' and ci.tipo_movimento='#39'E'#39' and ci.classificac' +
        'ao='#39'V'#39
      'group by ci.id_empresa, ci.id_caixa, ci.id_venda) sub_qtd_v'
      'group by  sub_qtd_v.id_empresa, sub_qtd_v.id_caixa'
      
        ') cvb_qtd on c.id_caixa=cvb_qtd.id_caixa and c.id_empresa=cvb_qt' +
        'd.id_empresa'
      'left join '
      
        '( select count(1) as qtde_vendas, sum(ci.valor) as valor_total, ' +
        ' ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'join encerravenda ev on ev.emp_001=ci.id_empresa and ev.ven_001=' +
        'ci.id_venda'
      
        'join encerravendaitem evi on evi.emp_001=ci.id_empresa and evi.e' +
        'nc_001=ev.enc_001 and ci.item_encerravenda=evi.ite_001'
      
        'where v.ven_024='#39'C'#39' and ci.tipo_movimento='#39'E'#39' and ev.sit_001=1 a' +
        'nd ci.classificacao='#39'V'#39
      
        'group by ci.id_empresa, ci.id_caixa ) cvc on c.id_caixa=cvc.id_c' +
        'aixa and c.id_empresa=cvc.id_empresa'
      'left join '
      '('
      
        'select sub_qtd_v.id_empresa, sub_qtd_v.id_caixa , count(1) as qt' +
        'de_vendas from ( '
      'select ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'where v.ven_024='#39'C'#39' and ci.tipo_movimento='#39'E'#39' and ci.classificac' +
        'ao='#39'V'#39
      'group by ci.id_empresa, ci.id_caixa, ci.id_venda) sub_qtd_v'
      'group by  sub_qtd_v.id_empresa, sub_qtd_v.id_caixa'
      
        ') cvc_qtd on c.id_caixa=cvc_qtd.id_caixa and c.id_empresa=cvc_qt' +
        'd.id_empresa'
      ''
      ''
      'left join '
      
        '( select count(1) as qtde_vendas, sum(ci.valor) as valor_total, ' +
        ' ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'join encerravenda ev on ev.emp_001=ci.id_empresa and ev.ven_001=' +
        'ci.id_venda'
      
        'join encerravendaitem evi on evi.emp_001=ci.id_empresa and evi.e' +
        'nc_001=ev.enc_001 and ci.item_encerravenda=evi.ite_001'
      
        'where v.ven_024='#39'P'#39' and ci.tipo_movimento='#39'E'#39' and ev.sit_001=1 a' +
        'nd ci.classificacao='#39'V'#39
      
        'group by ci.id_empresa, ci.id_caixa ) cvp on c.id_caixa=cvp.id_c' +
        'aixa and c.id_empresa=cvp.id_empresa'
      ''
      'left join '
      '('
      
        'select sub_qtd_v.id_empresa, sub_qtd_v.id_caixa , count(1) as qt' +
        'de_vendas from ( '
      'select ci.id_empresa, ci.id_caixa  from caixaitem ci'
      
        'join venda v on v.ven_001=ci.id_venda and ci.id_empresa=v.emp_00' +
        '1'
      
        'where v.ven_024='#39'P'#39' and ci.tipo_movimento='#39'E'#39' and ci.classificac' +
        'ao='#39'V'#39
      'group by ci.id_empresa, ci.id_caixa, ci.id_venda) sub_qtd_v'
      'group by  sub_qtd_v.id_empresa, sub_qtd_v.id_caixa'
      
        ') cvp_qtd on c.id_caixa=cvp_qtd.id_caixa and c.id_empresa=cvp_qt' +
        'd.id_empresa'
      ''
      'left join'
      
        '(select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caixa' +
        '  from caixaitem ci'
      'where tipo_movimento='#39'E'#39' and classificacao='#39'S'#39' '
      
        'group by ci.id_empresa, ci.id_caixa) csupr on c.id_caixa=csupr.i' +
        'd_caixa and c.id_empresa=csupr.id_empresa'
      'left join '
      
        '(select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caixa' +
        '  from caixaitem ci'
      'where tipo_movimento='#39'S'#39' and classificacao='#39'R'#39' '
      
        'group by ci.id_empresa, ci.id_caixa) cret on c.id_caixa=cret.id_' +
        'caixa and c.id_empresa=cret.id_empresa'
      'left join'
      
        '(select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caixa' +
        '  from caixaitem ci'
      'where tipo_movimento='#39'E'#39' and classificacao='#39'C'#39' '
      
        'group by ci.id_empresa, ci.id_caixa) ccred on c.id_caixa=ccred.i' +
        'd_caixa and c.id_empresa=ccred.id_empresa'
      'left join '
      
        '(select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caixa' +
        '  from caixaitem ci'
      'where tipo_movimento='#39'S'#39' and classificacao='#39'D'#39' '
      
        'group by ci.id_empresa, ci.id_caixa) cdeb on c.id_caixa=cdeb.id_' +
        'caixa and c.id_empresa=cdeb.id_empresa'
      'left join'
      
        '(select  sum(vi.desconto) as deconto_item, civ.id_caixa, civ.id_' +
        'empresa from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa'
      'where v.sit_001=1'
      
        'group by civ.id_caixa, civ.id_empresa) idesc on c.id_caixa=idesc' +
        '.id_caixa and c.id_empresa=idesc.id_empresa'
      'left join '
      
        '(select  sum(v.ven_007) as desconto_venda, sum(nro_pessoas) as n' +
        'ro_pessoas, '
      
        'sum(nro_couvert_f) as nro_couvert_f, sum(nro_couvert_m) as nro_c' +
        'ouvert_m, cv.id_caixa, cv.id_empresa from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      'where v.sit_001=1'
      
        'group by cv.id_caixa, cv.id_empresa) vdesc on c.id_caixa=vdesc.i' +
        'd_caixa and c.id_empresa=vdesc.id_empresa'
      'left join '
      
        '(select  sum(v.ven_008 - coalesce(v.valor_couvert_f, 0.0) - coal' +
        'esce(v.valor_couvert_m, 0.0) ) as acrescimo_venda,'
      
        'sum(coalesce(v.valor_couvert_f, 0.0) + coalesce(v.valor_couvert_' +
        'm, 0.0) ) as valor_couvert , sum(coalesce(v.caixinha_entregador,' +
        ' 0.0)) as caixinha_entregador, cv.id_caixa, cv.id_empresa from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      'where v.sit_001=1'
      
        'group by cv.id_caixa, cv.id_empresa) vacres on c.id_caixa=vacres' +
        '.id_caixa and c.id_empresa=vacres.id_empresa'
      'left join '
      
        '('#9'select sum(valor_total) as valor_total, id_empresa, id_caixa f' +
        'rom  '
      #9'('
      #9#9'--Entrada de venda'
      
        #9#9'select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caix' +
        'a  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'E'#39' and classificacao in ('#39'V'#39') and fp.sfi' +
        '_codigo = 4 and not fp.b_fiado '
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9#9'union all'
      #9#9'-- Estono de venda'
      
        #9#9'select sum(ci.valor)*-1 as valor_total, ci.id_empresa, ci.id_c' +
        'aixa  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'S'#39' and classificacao in ('#39'E'#39') and fp.sfi' +
        '_codigo = 4 and not fp.b_fiado  and not ci.antecipado'
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9') sub group by id_empresa, id_caixa'
      
        ') pag_cartdeb on c.id_caixa=pag_cartdeb.id_caixa and c.id_empres' +
        'a=pag_cartdeb.id_empresa'
      'left join '
      
        '(select sum(valor_total) as valor_total, id_empresa, id_caixa fr' +
        'om  '
      #9'('
      #9#9'--Entrada de venda'
      
        #9#9'select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caix' +
        'a  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'E'#39' and classificacao in ('#39'V'#39') and fp.sfi' +
        '_codigo = 3 and not fp.b_fiado '
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9#9'union all'
      #9#9'-- Estono de venda'
      
        #9#9'select sum(ci.valor)*-1 as valor_total, ci.id_empresa, ci.id_c' +
        'aixa  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'S'#39' and classificacao in ('#39'E'#39') and fp.sfi' +
        '_codigo = 3 and not fp.b_fiado  and not ci.antecipado'
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9') sub group by id_empresa, id_caixa'
      
        ') pag_cartcred on c.id_caixa=pag_cartcred.id_caixa and c.id_empr' +
        'esa=pag_cartcred.id_empresa'
      'left join '
      
        '(select sum(valor_total) as valor_total, id_empresa, id_caixa fr' +
        'om  '
      #9'('
      #9#9'--Entrada de venda'
      
        #9#9'select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caix' +
        'a  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'E'#39' and classificacao in ('#39'V'#39') and fp.sfi' +
        '_codigo = 1 and not fp.b_fiado '
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9#9'union all'
      #9#9'-- Estono de venda'
      
        #9#9'select sum(ci.valor)*-1 as valor_total, ci.id_empresa, ci.id_c' +
        'aixa  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'S'#39' and classificacao in ('#39'E'#39') and fp.sfi' +
        '_codigo = 1 and not fp.b_fiado  and not ci.antecipado'
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9') sub group by id_empresa, id_caixa'
      
        ') pag_dinheiro on c.id_caixa=pag_dinheiro.id_caixa and c.id_empr' +
        'esa=pag_dinheiro.id_empresa'
      'left join '
      
        '(select sum(valor_total) as valor_total, id_empresa, id_caixa fr' +
        'om  '
      #9'('
      #9#9'--Entrada de venda'
      
        #9#9'select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caix' +
        'a  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'E'#39' and classificacao in ('#39'V'#39') and fp.sfi' +
        '_codigo = 2 and not fp.b_fiado '
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9#9'union all'
      #9#9'-- Estono de venda'
      
        #9#9'select sum(ci.valor)*-1 as valor_total, ci.id_empresa, ci.id_c' +
        'aixa  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'S'#39' and classificacao in ('#39'E'#39') and fp.sfi' +
        '_codigo = 2 and not fp.b_fiado  and not ci.antecipado'
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9') sub group by id_empresa, id_caixa'
      
        ') pag_cheque on c.id_caixa=pag_cheque.id_caixa and c.id_empresa=' +
        'pag_cheque.id_empresa'
      'left join '
      '('
      
        '  select sum(valor_total) as valor_total, id_empresa, id_caixa f' +
        'rom  '
      #9'('
      #9#9'--Entrada de venda'
      
        #9#9'select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caix' +
        'a  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'E'#39' and classificacao in ('#39'V'#39') and not (f' +
        'p.sfi_codigo = 2 or fp.sfi_codigo = 1 or fp.sfi_codigo = 3 or fp' +
        '.sfi_codigo = 4)'
      #9#9'and  not fp.b_fiado'
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9#9'union all'
      #9#9'-- Estono de venda'
      
        #9#9'select sum(ci.valor)*-1 as valor_total, ci.id_empresa, ci.id_c' +
        'aixa  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'S'#39' and classificacao in ('#39'E'#39') and not (f' +
        'p.sfi_codigo = 2 or fp.sfi_codigo = 1 or fp.sfi_codigo = 3 or fp' +
        '.sfi_codigo = 4)  and not ci.antecipado'
      #9#9'and not fp.b_fiado '
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9') sub group by id_empresa, id_caixa'
      
        ') pag_outra_forma on c.id_caixa=pag_outra_forma.id_caixa and c.i' +
        'd_empresa=pag_outra_forma.id_empresa'
      'left join '
      '('
      
        '  select sum(valor_total) as valor_total, id_empresa, id_caixa f' +
        'rom  '
      #9'('
      #9#9'--Entrada de venda'
      
        #9#9'select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caix' +
        'a  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'E'#39' and classificacao in ('#39'V'#39') and not (f' +
        'p.sfi_codigo = 2 or fp.sfi_codigo = 1 or fp.sfi_codigo = 3 or fp' +
        '.sfi_codigo = 4)'
      #9#9'and fp.b_fiado '
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9#9'union all'
      #9#9'-- Estono de venda'
      
        #9#9'select sum(ci.valor)*-1 as valor_total, ci.id_empresa, ci.id_c' +
        'aixa  from caixaitem ci'
      
        #9#9'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formap' +
        'gto=fp.for_001'
      
        #9#9'where tipo_movimento='#39'S'#39' and classificacao in ('#39'E'#39') and not (f' +
        'p.sfi_codigo = 2 or fp.sfi_codigo = 1 or fp.sfi_codigo = 3 or fp' +
        '.sfi_codigo = 4) and not ci.antecipado'
      #9#9'and fp.b_fiado'
      #9#9'group by ci.id_empresa, ci.id_caixa'
      #9') sub group by id_empresa, id_caixa'
      
        ') pag_fiado on c.id_caixa=pag_fiado.id_caixa and c.id_empresa=pa' +
        'g_fiado.id_empresa'
      'left join'
      
        '(select sum(ci.valor) as valor_total, ci.id_empresa, ci.id_caixa' +
        '  from caixaitem ci'
      'where tipo_movimento='#39'S'#39' and classificacao='#39'E'#39' '
      
        'group by ci.id_empresa, ci.id_caixa) cestorno on c.id_caixa=cest' +
        'orno.id_caixa and c.id_empresa=cestorno.id_empresa'
      
        'where c.data_abertura >= :data1 and c.data_abertura <= :data2 an' +
        'd c.id_empresa=:id_empresa'
      'order by c.data_abertura')
    AfterOpen = qrCaixaAfterOpen
    Left = 16
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCaixaid_caixa: TIntegerField
      FieldName = 'id_caixa'
      Required = True
    end
    object qrCaixadata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrCaixadata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qrCaixahora_abertura: TTimeField
      FieldName = 'hora_abertura'
      Required = True
    end
    object qrCaixahora_fechamento: TTimeField
      FieldName = 'hora_fechamento'
    end
    object qrCaixavalor_inicial: TFloatField
      FieldName = 'valor_inicial'
      currency = True
    end
    object qrCaixavalor_informado_dinheiro: TFloatField
      FieldName = 'valor_informado_dinheiro'
      currency = True
    end
    object qrCaixavalor_informado_cartao: TFloatField
      FieldName = 'valor_informado_cartao'
      currency = True
    end
    object qrCaixavalor_informado_cheque: TFloatField
      FieldName = 'valor_informado_cheque'
      currency = True
    end
    object qrCaixavalor_informado_outros: TFloatField
      FieldName = 'valor_informado_outros'
      currency = True
    end
    object qrCaixatotal_mesa: TFloatField
      FieldName = 'total_mesa'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_delivery: TFloatField
      FieldName = 'total_delivery'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_balcao: TFloatField
      FieldName = 'total_balcao'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_comanda: TFloatField
      FieldName = 'total_comanda'
      ReadOnly = True
      currency = True
    end
    object qrCaixaacrescimo_venda: TFloatField
      FieldName = 'acrescimo_venda'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_retirada: TFloatField
      FieldName = 'total_retirada'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_outros_creditos: TFloatField
      FieldName = 'total_outros_creditos'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_outros_debitos: TFloatField
      FieldName = 'total_outros_debitos'
      ReadOnly = True
      currency = True
    end
    object qrCaixanro_pessoas: TFloatField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object qrCaixanro_couvert_f: TFloatField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object qrCaixanro_couvert_m: TFloatField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrCaixatotal_desconto_item: TFloatField
      FieldName = 'total_desconto_item'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_desconto_venda: TFloatField
      FieldName = 'total_desconto_venda'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_descontos: TFloatField
      FieldName = 'total_descontos'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_informado: TFloatField
      FieldName = 'total_informado'
      ReadOnly = True
      currency = True
    end
    object qrCaixasaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_pagamento_debito: TFloatField
      FieldName = 'total_pagamento_debito'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_pagamento_credito: TFloatField
      FieldName = 'total_pagamento_credito'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_pagamento_dinheiro: TFloatField
      FieldName = 'total_pagamento_dinheiro'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_pagamento_cheque: TFloatField
      FieldName = 'total_pagamento_cheque'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_pagamento_outra: TFloatField
      FieldName = 'total_pagamento_outra'
      ReadOnly = True
      currency = True
    end
    object qrCaixanome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrCaixadesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrCaixaobservacao: TWideStringField
      FieldName = 'observacao'
      ReadOnly = True
      Size = 200
    end
    object qrCaixaqtde_vendas_mesa: TFloatField
      FieldName = 'qtde_vendas_mesa'
      ReadOnly = True
    end
    object qrCaixaqtde_vendas_delivery: TFloatField
      FieldName = 'qtde_vendas_delivery'
      ReadOnly = True
    end
    object qrCaixaqtde_vendas_balcao: TFloatField
      FieldName = 'qtde_vendas_balcao'
      ReadOnly = True
    end
    object qrCaixaqtde_vendas_comanda: TFloatField
      FieldName = 'qtde_vendas_comanda'
      ReadOnly = True
    end
    object qrCaixaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCaixatotal_estorno: TFloatField
      FieldName = 'total_estorno'
      ReadOnly = True
      currency = True
    end
    object qrCaixaqtde_vendas_pdv: TFloatField
      FieldName = 'qtde_vendas_pdv'
      ReadOnly = True
    end
    object qrCaixatotal_pdv: TFloatField
      FieldName = 'total_pdv'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_pagamento_fiado: TFloatField
      FieldName = 'total_pagamento_fiado'
      ReadOnly = True
      currency = True
    end
    object qrCaixaterminal: TWideStringField
      FieldName = 'terminal'
      Size = 100
    end
    object qrCaixanome_usuario_fechamento: TWideStringField
      FieldName = 'nome_usuario_fechamento'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrCaixavalor_couvert: TFloatField
      FieldName = 'valor_couvert'
      ReadOnly = True
      currency = True
    end
    object qrCaixatotal_suprimento: TFloatField
      FieldName = 'total_suprimento'
      ReadOnly = True
      currency = True
    end
    object qrCaixadiferenca: TFloatField
      FieldName = 'diferenca'
      currency = True
    end
    object qrCaixacaixinha_entregador: TFloatField
      FieldName = 'caixinha_entregador'
      currency = True
    end
  end
  object dsCaixa: TDataSource
    AutoEdit = False
    DataSet = qrCaixa
    Left = 66
    Top = 184
  end
  object qrRelSuprimentos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select ci.valor, ci.id_empresa, ci.id_caixa, ci.observacao, '
      'c.observacao as observacao_caixa,'
      
        'case ci.classificacao when '#39'S'#39' then '#39'Suprimento'#39' else '#39'Outro Cr'#233 +
        'dito'#39' end as classif,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento   '
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      'where ci.tipo_movimento='#39'E'#39' and ci.classificacao in ('#39'C'#39','#39'S'#39') '
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp')
    Left = 880
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 6
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelSuprimentosvalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
    object qrRelSuprimentosid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrRelSuprimentosid_caixa: TIntegerField
      FieldName = 'id_caixa'
      Required = True
    end
    object qrRelSuprimentosobservacao: TBlobField
      FieldName = 'observacao'
    end
    object qrRelSuprimentosclassif: TWideMemoField
      FieldName = 'classif'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRelSuprimentosnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelSuprimentosdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelSuprimentosdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelSuprimentosdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelSuprimentosobservacao_caixa: TBlobField
      FieldName = 'observacao_caixa'
      ReadOnly = True
    end
  end
  object qrRelRetiradas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select ci.valor, ci.id_empresa, ci.id_caixa, ci.observacao, '
      'c.observacao as observacao_caixa,'
      
        'case ci.classificacao when '#39'R'#39' then '#39'Retirada/Sangria'#39' else '#39'Out' +
        'ro D'#233'bito'#39' end as classif,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento   '
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and c.id_empresa=ci.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      'where ci.tipo_movimento='#39'S'#39' and ci.classificacao in ('#39'R'#39','#39'D'#39') '
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp')
    Left = 880
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_caixa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelRetiradasvalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
    object qrRelRetiradasid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrRelRetiradasid_caixa: TIntegerField
      FieldName = 'id_caixa'
      Required = True
    end
    object qrRelRetiradasobservacao: TBlobField
      FieldName = 'observacao'
    end
    object qrRelRetiradasclassif: TWideMemoField
      FieldName = 'classif'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRelRetiradasnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelRetiradasdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelRetiradasdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelRetiradasdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelRetiradasobservacao_caixa: TBlobField
      FieldName = 'observacao_caixa'
      ReadOnly = True
    end
  end
  object qrRelDescontoVendas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select  v.ven_009 as valor_venda,  v.ven_007 as desconto_venda, ' +
        'v.nro_pessoas,'
      '(v.ven_009 + v.ven_007) as valor_total_venda, '
      'cast(concat(v.ven_029, '#39' '#39', '
      'case v.ven_024 '
      'when '#39'M'#39' then m.mes_002 '
      'when '#39'B'#39' then '#39'Balc'#227'o'#39' '
      'when '#39'C'#39' then Concat('#39'Comanda '#39', v.ven_026)'
      'when '#39'D'#39' then '#39'Delivery'#39' '
      'when '#39'P'#39' then '#39'PDV'#39' '
      'else '#39'Outro'#39' '
      'end) as varchar(20)) as tipo_venda, '
      
        'v.nro_couvert_f, v.nro_couvert_m, cv.id_caixa, cv.id_empresa, me' +
        's_002 as mesa,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'v.ven_029 as nro_venda,'
      
        'cast(concat(cli.cli_001, '#39' '#39', cli.cli_002) as varchar(100)) as N' +
        'omeCliente     '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      
        'left join clientes cli on (cli.cli_001 = v.cli_001) and (cli.emp' +
        '_001 = v.emp_001)'
      'where v.ven_007>0'
      'and v.sit_001=1'
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp')
    Left = 880
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 9
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelDescontoVendasvalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelDescontoVendasdesconto_venda: TFloatField
      FieldName = 'desconto_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelDescontoVendasnro_pessoas: TIntegerField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object qrRelDescontoVendasnro_couvert_f: TIntegerField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object qrRelDescontoVendasnro_couvert_m: TIntegerField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrRelDescontoVendasid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object qrRelDescontoVendasid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrRelDescontoVendasmesa: TWideStringField
      FieldName = 'mesa'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelDescontoVendasnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelDescontoVendasdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelDescontoVendasdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object qrRelDescontoVendasdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object qrRelDescontoVendasobservacao: TBlobField
      FieldName = 'observacao'
    end
    object qrRelDescontoVendastipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrRelDescontoVendasvalor_total_venda: TFloatField
      FieldName = 'valor_total_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelDescontoVendasnro_venda: TIntegerField
      FieldName = 'nro_venda'
      ReadOnly = True
    end
    object qrRelDescontoVendasnomecliente: TWideStringField
      FieldName = 'nomecliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
  end
  object qrRelDescontoItens: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select mat.mat_004 as codigo, vi.ite_003 as valor_unit_s_desc,  ' +
        'mat.mat_003 as desc_produto, vi.desconto as deconto_item, civ.id' +
        '_caixa, civ.id_empresa, '
      
        'v.ven_009 as valor_venda,  v.ven_007 as desconto_venda, v.nro_pe' +
        'ssoas, v.ven_024 as tipo_venda, '
      'v.nro_couvert_f, v.nro_couvert_m, mes_002 as mesa,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao   '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where vi.desconto>0'
      'and v.sit_001=1'
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp')
    Left = 880
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_caixa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelDescontoItensvalor_unit_s_desc: TFloatField
      FieldName = 'valor_unit_s_desc'
      Required = True
      currency = True
    end
    object qrRelDescontoItensdesc_produto: TWideStringField
      FieldName = 'desc_produto'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrRelDescontoItensdeconto_item: TFloatField
      FieldName = 'deconto_item'
      ReadOnly = True
      currency = True
    end
    object qrRelDescontoItensid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object qrRelDescontoItensid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrRelDescontoItensvalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
    end
    object qrRelDescontoItensdesconto_venda: TFloatField
      FieldName = 'desconto_venda'
      ReadOnly = True
    end
    object qrRelDescontoItensnro_pessoas: TIntegerField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object qrRelDescontoItenstipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 1
    end
    object qrRelDescontoItensnro_couvert_f: TIntegerField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object qrRelDescontoItensnro_couvert_m: TIntegerField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrRelDescontoItensmesa: TWideStringField
      FieldName = 'mesa'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelDescontoItensnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelDescontoItensdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelDescontoItensdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelDescontoItensdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelDescontoItenscodigo: TWideStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 50
    end
    object qrRelDescontoItensobservacao: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
  end
  object qrRelVendasCanceladas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select mes_002 as mesa, v.ven_009 as valor_venda, ven_027 as obs' +
        'ervacoes,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'PDV'#39' t' +
        'hen '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda'
      'from '
      'caixa  c'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'left join venda v on v.emp_001=c.id_empresa and v.id_caixa_abert' +
        'ura=c.id_caixa'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.sit_001=2 '
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp')
    Left = 880
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_caixa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelVendasCanceladasmesa: TWideStringField
      FieldName = 'mesa'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelVendasCanceladasvalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelVendasCanceladasobservacoes: TWideStringField
      FieldName = 'observacoes'
      ReadOnly = True
      Size = 200
    end
    object qrRelVendasCanceladasnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelVendasCanceladasdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelVendasCanceladasdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object qrRelVendasCanceladasdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object qrRelVendasCanceladastipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrRelVendasCanceladasobservacao: TBlobField
      FieldName = 'observacao'
    end
  end
  object qrRelProdutosVendidos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select mat.mat_004 as codigo, '
      'mat.mat_003 as desc_produto,  '
      'civ.id_caixa, civ.id_empresa, '
      'sum(vi.ite_002 )  as qtde_total_item, '
      'sum(vi.ite_005 )  as valor_total_item, '
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'cat.cat_002 as desc_categoria  '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa and not vi.sit_001  in (0,1,2,3)'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join categoria cat on mat.cat_001=cat.cat_001 and cat.emp_001=ma' +
        't.emp_001'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      'where c.id_caixa=:id_caixa and c.id_empresa=:emp'
      'and v.sit_001=1'
      'group by '
      'mat.mat_004, mat.mat_003, civ.id_caixa, civ.id_empresa, '
      'u.usu_002, c.id_situacao, mat.cat_001, cat.cat_002,'
      'c.data_abertura, c.data_fechamento, c.observacao'
      'order by mat.cat_001, qtde_total_item desc, mat.mat_003')
    Left = 880
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 2
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelProdutosVendidoscodigo: TWideStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 50
    end
    object qrRelProdutosVendidosdesc_produto: TWideStringField
      FieldName = 'desc_produto'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrRelProdutosVendidosid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object qrRelProdutosVendidosid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrRelProdutosVendidosqtde_total_item: TFloatField
      FieldName = 'qtde_total_item'
      ReadOnly = True
    end
    object qrRelProdutosVendidosvalor_total_item: TFloatField
      FieldName = 'valor_total_item'
      ReadOnly = True
      currency = True
    end
    object qrRelProdutosVendidosnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelProdutosVendidosdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelProdutosVendidosdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelProdutosVendidosdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelProdutosVendidosobservacao: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
    object qrRelProdutosVendidosdesc_categoria: TWideStringField
      FieldName = 'desc_categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
  object qrRelMovimentoFormaPag: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select sum(ci.valor) as total_forma, ci.id_caixa, ci.id_empresa,' +
        ' fp.for_002 as desc_forma, ci.tipo_movimento,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      
        'case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o'#39' when' +
        ' '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39'  when '#39'P'#39' then '#39'PDV' +
        #39' else '#39'Outro'#39' end as tipo_venda'
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formapgt' +
        'o=fp.for_001'
      
        'join venda v on v.ven_001=ci.id_venda and v.emp_001=ci.id_empres' +
        'a'
      
        'where c.id_caixa=:id_caixa and c.id_empresa=:emp and ci.tipo_mov' +
        'imento='#39'E'#39
      '-- n'#227'o traz as vendas cancelas'
      'and ci.id_venda not in'
      '(select sci.id_venda '
      'from caixaitem sci'
      
        'join venda sv on sv.ven_001=sci.id_venda and sv.emp_001=sci.id_e' +
        'mpresa'
      
        'where sci.id_caixa=:id_caixa and sci.id_empresa=:emp and sv.sit_' +
        '001=2)'
      
        'group by ci.id_caixa, ci.id_empresa , fp.for_002, ci.tipo_movime' +
        'nto,  v.ven_024, u.usu_002, c.id_situacao, c.data_abertura, c.da' +
        'ta_fechamento, c.observacao'
      
        'order by ci.id_caixa, ci.id_empresa,  ci.tipo_movimento, fp.for_' +
        '002,  v.ven_024, u.usu_002')
    Left = 880
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_caixa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelMovimentoFormaPagtotal_forma: TFloatField
      FieldName = 'total_forma'
      ReadOnly = True
      currency = True
    end
    object qrRelMovimentoFormaPagid_caixa: TIntegerField
      FieldName = 'id_caixa'
      Required = True
    end
    object qrRelMovimentoFormaPagid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrRelMovimentoFormaPagdesc_forma: TWideStringField
      FieldName = 'desc_forma'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelMovimentoFormaPagtipo_movimento: TWideStringField
      FieldName = 'tipo_movimento'
      FixedChar = True
      Size = 1
    end
    object qrRelMovimentoFormaPagnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelMovimentoFormaPagdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelMovimentoFormaPagdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelMovimentoFormaPagdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelMovimentoFormaPagtipo_venda: TWideMemoField
      FieldName = 'tipo_venda'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrRelMovimentoFormaPagobservacao: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
  end
  object repCaixa: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42849.376870706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 117
    Top = 184
    Datasets = <
      item
        DataSet = dbCaixa
        DataSetName = 'qrCaixa'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sMensagemTxServico'
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
        Height = 712.858690000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 185.589384880000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.347017906976800000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object qrCaixadata_abertura: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.347017910000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 32.914505813953500000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 32.914505810000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."data_fechamento"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 47.481993720930200000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'HORA DE ABERTURA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 145.842610000000000000
          Top = 47.481993720000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'hora_abertura'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."hora_abertura"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 62.049481627907000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'HORA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 145.842610000000000000
          Top = 62.049481630000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'hora_fechamento'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."hora_fechamento"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 83.616969530000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 91.184457441860510000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CAIXA INICIAL')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 145.842610000000000000
          Top = 91.184457441860510000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'valor_inicial'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."valor_inicial"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 105.751945348837000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VENDAS MESA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 145.842610000000000000
          Top = 105.751945348837000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_mesa'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_mesa"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 120.319433255814000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VENDAS DELIVERY')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 145.842610000000000000
          Top = 120.319433255814000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_delivery'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_delivery"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 11.338590000000000000
          Top = 134.886921162791000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VENDAS BALCAO')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 145.842610000000000000
          Top = 134.886921162791000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_balcao'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_balcao"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 11.338590000000000000
          Top = 149.454409069767000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VENDAS COMANDA')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 145.842610000000000000
          Top = 149.454409069767000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_comanda'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_comanda"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 242.859336510000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 11.338590000000000000
          Top = 222.291848600000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTOS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 145.842610000000000000
          Top = 222.291848604651000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_descontos'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_descontos"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 11.338590000000000000
          Top = 193.156872790000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TX. SERVI'#199'O / ENTREGA')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 145.842610000000000000
          Top = 193.156872790698000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'acrescimo_venda'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."acrescimo_venda"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 345.831751860000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 11.338590000000000000
          Top = 251.426824418605000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DINHEIRO')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 145.842610000000000000
          Top = 251.426824418605000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pagamento_dinheiro'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pagamento_dinheiro"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 11.338590000000000000
          Top = 265.994312325581000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CARTAO D'#201'BITO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 145.842610000000000000
          Top = 265.994312325581000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pagamento_debito'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pagamento_debito"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 11.338590000000000000
          Top = 280.561800232558000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CART'#195'O CR'#201'DITO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 145.842610000000000000
          Top = 280.561800232558000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pagamento_credito'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pagamento_credito"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 11.338590000000000000
          Top = 295.129288139535000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CHEQUE')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 145.842610000000000000
          Top = 295.129288139535000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pagamento_cheque'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pagamento_cheque"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 389.534215580000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo30: TfrxMemoView
          Left = 11.338590000000000000
          Top = 367.966727670000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RETIRADA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 145.842610000000000000
          Top = 367.966727674419000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_retirada'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_retirada"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 11.338590000000000000
          Top = 353.399239767442000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SUPRIMENTO')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 145.842610000000000000
          Top = 353.399239767442000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_suprimento'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_suprimento"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 11.338590000000000000
          Top = 447.804167210000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          Left = 11.338590000000000000
          Top = 411.669191395349000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'OUTROS CR'#201'DITOS')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 145.842610000000000000
          Top = 411.669191395349000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_outros_creditos'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_outros_creditos"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 11.338590000000000000
          Top = 397.101703488372000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'OUTROS D'#201'BITOS')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 145.842610000000000000
          Top = 397.101703488372000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_outros_debitos'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_outros_debitos"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 11.338590000000000000
          Top = 506.074118840000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo38: TfrxMemoView
          Left = 11.338590000000000000
          Top = 455.371655116279000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SALDO ATUAL')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 145.842610000000000000
          Top = 455.371655116279000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'saldo'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."saldo"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 11.338590000000000000
          Top = 469.939143023256000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SALDO INFORMADO')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 145.842610000000000000
          Top = 469.939143023256000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_informado'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_informado"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 11.338590000000000000
          Top = 484.506630930000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DIFEREN'#199'A')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 145.842610000000000000
          Top = 484.506630930233000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'diferenca'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."diferenca"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 145.842610000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."desc_status"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 601.046534186047000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 601.046534186047000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 652.386210000000000000
          Width = 230.551330000000000000
          Height = 41.574830000000000000
          DataField = 'observacao'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[qrCaixa."observacao"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 11.338590000000000000
          Top = 513.641606744186000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTD. VENDAS MESA')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 145.842610000000000000
          Top = 513.641606744186000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'qtde_vendas_mesa'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."qtde_vendas_mesa"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 11.338590000000000000
          Top = 528.209094651163000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTD. VENDAS DELIVERY')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 145.842610000000000000
          Top = 528.209094651163000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'qtde_vendas_delivery'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."qtde_vendas_delivery"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 11.338590000000000000
          Top = 542.776582558140000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTD. VENDAS BALCAO')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 145.842610000000000000
          Top = 542.776582558140000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'qtde_vendas_balcao'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."qtde_vendas_balcao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 557.344070465116000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTD. VENDAS COMANDA')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 145.842610000000000000
          Top = 557.344070465116000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'qtde_vendas_comanda'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."qtde_vendas_comanda"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 11.338590000000000000
          Top = 593.479046280000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 426.236679300000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ESTORNO DE VENDAS')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 145.842610000000000000
          Top = 426.236679302326000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_estorno'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_estorno"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 11.338590000000000000
          Top = 164.021896980000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VENDAS PDV')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 145.842610000000000000
          Top = 164.021896980000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pdv'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pdv"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 11.338590000000000000
          Top = 571.911558370000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTD. VENDAS PDV')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 145.842610000000000000
          Top = 571.911558372093000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'qtde_vendas_pdv'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."qtde_vendas_pdv"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 11.338590000000000000
          Top = 309.696776046512000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CREDI'#193'RIO')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 145.842610000000000000
          Top = 309.696776046512000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pagamento_fiado'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pagamento_fiado"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 11.338590000000000000
          Top = 324.264263950000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'OUTRA FORMA')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 145.842610000000000000
          Top = 324.264263953488000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'total_pagamento_outra'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."total_pagamento_outra"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 11.338590000000000000
          Top = 630.181510000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TERMINAL')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 145.842610000000000000
          Top = 630.181510000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'terminal'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."terminal"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 11.338590000000000000
          Top = 615.614022093023000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO FECH.')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 145.842610000000000000
          Top = 615.614022093023000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario_fechamento'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."nome_usuario_fechamento"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 695.961040000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo71: TfrxMemoView
          Left = 11.338590000000000000
          Top = 207.724360697674000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COUVERT ART'#205'STICO')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 145.842610000000000000
          Top = 207.724360697674000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'valor_couvert'
          DataSet = dbCaixa
          DataSetName = 'qrCaixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qrCaixa."valor_couvert"]')
          ParentFont = False
        end
      end
    end
  end
  object dbCaixa: TfrxDBDataset
    UserName = 'qrCaixa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_caixa=id_caixa'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'hora_abertura=hora_abertura'
      'hora_fechamento=hora_fechamento'
      'valor_inicial=valor_inicial'
      'valor_informado_dinheiro=valor_informado_dinheiro'
      'valor_informado_cartao=valor_informado_cartao'
      'valor_informado_cheque=valor_informado_cheque'
      'valor_informado_outros=valor_informado_outros'
      'total_mesa=total_mesa'
      'total_delivery=total_delivery'
      'total_balcao=total_balcao'
      'total_comanda=total_comanda'
      'acrescimo_venda=acrescimo_venda'
      'total_suprimento=total_suprimento'
      'total_retirada=total_retirada'
      'total_outros_creditos=total_outros_creditos'
      'total_outros_debitos=total_outros_debitos'
      'nro_pessoas=nro_pessoas'
      'nro_couvert_f=nro_couvert_f'
      'nro_couvert_m=nro_couvert_m'
      'total_desconto_item=total_desconto_item'
      'total_desconto_venda=total_desconto_venda'
      'total_descontos=total_descontos'
      'total_informado=total_informado'
      'diferenca=diferenca'
      'saldo=saldo'
      'total_pagamento_debito=total_pagamento_debito'
      'total_pagamento_credito=total_pagamento_credito'
      'total_pagamento_dinheiro=total_pagamento_dinheiro'
      'total_pagamento_cheque=total_pagamento_cheque'
      'total_pagamento_outra=total_pagamento_outra'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'observacao=observacao'
      'qtde_vendas_mesa=qtde_vendas_mesa'
      'qtde_vendas_delivery=qtde_vendas_delivery'
      'qtde_vendas_balcao=qtde_vendas_balcao'
      'qtde_vendas_comanda=qtde_vendas_comanda'
      'id_empresa=id_empresa'
      'total_estorno=total_estorno'
      'qtde_vendas_pdv=qtde_vendas_pdv'
      'total_pdv=total_pdv'
      'total_pagamento_fiado=total_pagamento_fiado'
      'terminal=terminal'
      'nome_usuario_fechamento=nome_usuario_fechamento'
      'valor_couvert=valor_couvert')
    DataSet = qrCaixa
    BCDToCurrency = False
    Left = 168
    Top = 184
  end
  object repRetiradasSuprimentos: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.742852777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 994
    Top = 4
    Datasets = <
      item
        DataSet = dbRetiradas
        DataSetName = 'dbRetiradas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRetiradas."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRetiradas."data_abertura"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[sTituloRep]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRetiradas."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao_caixa'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRetiradas."observacao_caixa"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 170.078850000000000000
          Top = 123.740260000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRetiradas."desc_status"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbRetiradas
        DataSetName = 'dbRetiradas'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 170.078850000000000000
          Top = 1.779529999999994000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'valor'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRetiradas."valor"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 158.740260000000000000
          Height = 15.118110240000000000
          DataField = 'observacao'
          DataSet = dbRetiradas
          DataSetName = 'dbRetiradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRetiradas."observacao"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRetiradas."valor">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbRetiradas: TfrxDBDataset
    UserName = 'dbRetiradas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor=valor'
      'id_empresa=id_empresa'
      'id_caixa=id_caixa'
      'observacao=observacao'
      'classif=classif'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao_caixa=observacao_caixa')
    DataSource = dsRetiradaSuprimento
    BCDToCurrency = False
    Left = 952
    Top = 56
  end
  object dsRetiradaSuprimento: TDataSource
    AutoEdit = False
    DataSet = qrRelSuprimentos
    Left = 928
    Top = 8
  end
  object repDescontoVendas: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.745732905090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '                                                    '
      'end.')
    Left = 1178
    Top = 324
    Datasets = <
      item
        DataSet = dbDescontoVendas
        DataSetName = 'dbDescontoVendas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          DisplayFormat.DecimalSeparator = 'd'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoVendas."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoVendas."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCONTO EM VENDAS')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoVendas."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDescontoVendas."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 185.196970000000000000
          Top = 123.740260000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL. DESC.')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoVendas."desc_status"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 111.385900000000000000
          Top = 123.724490000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL. VENDA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 37.795290240000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbDescontoVendas
        DataSetName = 'dbDescontoVendas'
        RowCount = 0
        Stretched = True
        object dbRetiradasvalor: TfrxMemoView
          Left = 173.858380000000000000
          Top = 1.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'desconto_venda'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoVendas."desconto_venda"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDescontoVendas."tipo_venda"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 105.826840000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'valor_total_venda'
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoVendas."valor_total_venda"]')
          ParentFont = False
        end
        object Nome_Cliente: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 234.330860000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSet = dbDescontoVendas
          DataSetName = 'dbDescontoVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente: [dbDescontoVendas."nomecliente"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbDescontoVendas."desconto_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 105.826840000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbDescontoVendas."valor_total_venda">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbDescontoVendas: TfrxDBDataset
    UserName = 'dbDescontoVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor_venda=valor_venda'
      'desconto_venda=desconto_venda'
      'nro_pessoas=nro_pessoas'
      'nro_couvert_f=nro_couvert_f'
      'nro_couvert_m=nro_couvert_m'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'mesa=mesa'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'tipo_venda=tipo_venda'
      'valor_total_venda=valor_total_venda'
      'nro_venda=nro_venda'
      'nomecliente=nomecliente')
    DataSet = qrRelDescontoVendas
    BCDToCurrency = False
    Left = 936
    Top = 256
  end
  object repDescontoItens: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.743534953700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1010
    Top = 56
    Datasets = <
      item
        DataSet = dbDescontoItens
        DataSetName = 'dbDescontoItens'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoItens."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoItens."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCONTO NOS ITENS')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoItens."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDescontoItens."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 123.740260000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL. DESC.')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoItens."desc_status"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 130.283550000000000000
          Top = 123.724490000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL. UNIT.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbDescontoItens
        DataSetName = 'dbDescontoItens'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 185.196970000000000000
          Top = 1.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'deconto_item'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoItens."deconto_item"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDescontoItens."codigo"]-[dbDescontoItens."desc_produto"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 132.283550000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'valor_unit_s_desc'
          DataSet = dbDescontoItens
          DataSetName = 'dbDescontoItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDescontoItens."valor_unit_s_desc"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 264.567100000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbDescontoItens."deconto_item">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbDescontoItens: TfrxDBDataset
    UserName = 'dbDescontoItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor_unit_s_desc=valor_unit_s_desc'
      'desc_produto=desc_produto'
      'deconto_item=deconto_item'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'valor_venda=valor_venda'
      'desconto_venda=desconto_venda'
      'nro_pessoas=nro_pessoas'
      'tipo_venda=tipo_venda'
      'nro_couvert_f=nro_couvert_f'
      'nro_couvert_m=nro_couvert_m'
      'mesa=mesa'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'codigo=codigo'
      'observacao=observacao')
    DataSet = qrRelDescontoItens
    BCDToCurrency = False
    Left = 936
    Top = 104
  end
  object repVendasCanceladas: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.746258032400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1066
    Top = 316
    Datasets = <
      item
        DataSet = dbVendasCanceladas
        DataSetName = 'dbVendasCanceladas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCanceladas."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCanceladas."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDAS CANCELADAS')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCanceladas."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasCanceladas."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCanceladas."desc_status"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 186.976500000000000000
          Top = 123.724490000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL. VENDA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbVendasCanceladas
        DataSetName = 'dbVendasCanceladas'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 180.417440000000000000
          Top = 3.559059999999988000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'valor_venda'
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCanceladas."valor_venda"]')
          ParentFont = False
        end
        object dbVendasCanceladasobservacoes: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999994000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          DataSet = dbVendasCanceladas
          DataSetName = 'dbVendasCanceladas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[dbVendasCanceladas."tipo_venda"] - [dbVendasCanceladas."observa' +
              'coes"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasCanceladas."valor_venda">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbVendasCanceladas: TfrxDBDataset
    UserName = 'dbVendasCanceladas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mesa=mesa'
      'valor_venda=valor_venda'
      'observacoes=observacoes'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'tipo_venda=tipo_venda'
      'observacao=observacao')
    DataSet = qrRelVendasCanceladas
    BCDToCurrency = False
    Left = 1216
    Top = 480
  end
  object repProdutosVendidos: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42790.619018402800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1026
    Top = 244
    Datasets = <
      item
        DataSet = dbProdutosVendidos
        DataSetName = 'dbProdutosVendidos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 143.622049690000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 22.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidos."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidos."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTOS VENDIDOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.472480000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 53.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidos."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 88.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosVendidos."observacao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 68.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 68.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidos."desc_status"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 126.181200000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 125.960730000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 149.181200000000000000
          Top = 125.944960000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 123.944960000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 20.897650000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 355.275820000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.000000000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL GERAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 186.078850000000000000
          Top = 2.000000000000000000
          Width = 59.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM('
            '<dbProdutosVendidos."valor_total_item">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 241.889920000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '* Os valores dos itens neste relat'#243'rio n'#227'o incluem os descontos ' +
              'cedidos no fechamento da venda.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 26.456710000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 121.322834650000000000
          Top = 1.724180000000000000
          Width = 60.291383330000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdutosVendidos."qtde_total_item">,MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 272.126160000000000000
        DataSet = dbProdutosVendidos
        DataSetName = 'dbProdutosVendidos'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 2.779527560000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidos."qtde_total_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosvalor_total_item: TfrxMemoView
          Left = 184.417440000000000000
          Top = 2.779527560000000000
          Width = 58.472480000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'valor_total_item'
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidos."valor_total_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosdesc_produto: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.779530000000080000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[dbProdutosVendidos."codigo"] - [dbProdutosVendidos."desc_produt' +
              'o"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        Condition = 'dbProdutosVendidos."desc_categoria"'
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 2.354360000000010000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 21.086580000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbProdutosVendidosdesc_categoria: TfrxMemoView
          Left = 11.338590000000000000
          Top = 4.000000000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataSet = dbProdutosVendidos
          DataSetName = 'dbProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CATEGORIA: [dbProdutosVendidos."desc_categoria"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 272.126160000000000000
        object Memo9: TfrxMemoView
          Left = 184.118223330000000000
          Top = 2.629921670000000000
          Width = 60.291383330000000000
          Height = 15.748041670000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdutosVendidos."valor_total_item">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.629921670000000000
          Width = 56.519790000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL [dbProdutosVendidos."desc_categoria"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 121.322834650000000000
          Top = 3.078540000000000000
          Width = 60.291383330000000000
          Height = 15.748041670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdutosVendidos."qtde_total_item">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbProdutosVendidos: TfrxDBDataset
    UserName = 'dbProdutosVendidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'desc_produto=desc_produto'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'qtde_total_item=qtde_total_item'
      'valor_total_item=valor_total_item'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'desc_categoria=desc_categoria')
    DataSet = qrRelProdutosVendidos
    BCDToCurrency = False
    Left = 936
    Top = 208
  end
  object repMovimentoFormaPag: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.744307974530000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 994
    Top = 164
    Datasets = <
      item
        DataSet = dbMovimentoFormaPag
        DataSetName = 'dbMovimentoFormaPag'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 126.944960000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.779530000000001000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTALIZADOR FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."observacao"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."desc_status"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 272.126160000000000000
        DataSet = dbMovimentoFormaPag
        DataSetName = 'dbMovimentoFormaPag'
        RowCount = 0
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'desc_forma'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."desc_forma"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo7: TfrxMemoView
          Left = 105.826840000000000000
          Top = 2.220470000000006000
          Width = 22.677180000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_movimento'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."tipo_movimento"]')
          ParentFont = False
        end
        object dbProdutosVendidosvalor_total_item: TfrxMemoView
          Left = 133.283550000000000000
          Top = 2.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'tipo_venda'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."tipo_venda"]')
          ParentFont = False
          WordBreak = True
        end
        object dbMovimentoFormaPagtotal_forma: TfrxMemoView
          Left = 188.976500000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          DataField = 'total_forma'
          DataSet = dbMovimentoFormaPag
          DataSetName = 'dbMovimentoFormaPag'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbMovimentoFormaPag."total_forma"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 272.126160000000000000
        Condition = 'dbMovimentoFormaPag."tipo_movimento"'
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 18.472479999999990000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.236240000000009000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FORMA')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 2.015770000000004000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 103.826840000000000000
          Top = 2.000000000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'E/S')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 128.504020000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'T. VENDA')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Top = 3.779530000000022000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbMovimentoFormaPag."total_forma">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbMovimentoFormaPag: TfrxDBDataset
    UserName = 'dbMovimentoFormaPag'
    CloseDataSource = False
    FieldAliases.Strings = (
      'total_forma=total_forma'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'desc_forma=desc_forma'
      'tipo_movimento=tipo_movimento'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'tipo_venda=tipo_venda'
      'observacao=observacao')
    DataSet = qrRelMovimentoFormaPag
    BCDToCurrency = False
    Left = 936
    Top = 160
  end
  object qrRelProdutosCancelados: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select civ.id_venda,mat.mat_004 as codigo, '
      'mat.mat_003 as desc_produto,  '
      'civ.id_caixa, civ.id_empresa, '
      'sum(vi.ite_002 )  as qtde_total_item, '
      'sum(vi.ite_005 )  as valor_total_item, '
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'vi.justificativa_cancelamento as observacao_cancelamento,'
      'mes.mes_002 as mesa,'
      
        'cast(concat(v.ven_029 ,'#39' '#39' , case v.ven_024 when '#39'M'#39' then mes.me' +
        's_002'
      ' when '#39'C'#39' then '#39'COMANDA'#39
      ' when '#39'B'#39' then '#39'BALC'#195'O'#39
      ' when '#39'D'#39' then '#39'DELIVERY'#39
      ' when '#39'P'#39' then '#39'PDV'#39
      ' else '#39'OUTRO'#39' end)  as varchar(100)) as venda_mesa,'
      'v.numero_cupom,'
      'v.dat_001_1 as data_abertura_venda,'
      #39'P'#39' as Tipo_Cancelamento '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa and vi.sit_001 = 2'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      
        'left join mesa mes on mes.emp_001=v.emp_001 and mes.mes_001=v.ve' +
        'n_025'
      'where c.id_caixa=:id_caixa and c.id_empresa=:emp '
      'group by '
      
        'mat.mat_004, mat.mat_003, civ.id_caixa, civ.id_empresa, v.ven_02' +
        '4,'
      'u.usu_002, c.id_situacao, mes.mes_002, v.ven_001, v.ven_029,'
      
        'c.data_abertura, c.data_fechamento, c.observacao, civ.id_venda, ' +
        'v.numero_cupom,'
      'vi.justificativa_cancelamento, v.dat_001_1 '
      ''
      'union all '
      '-- Uni'#227'o com as vendas canceladas'
      'select v.ven_001, mat.mat_004 as codigo, '
      'mat.mat_003 as desc_produto,'
      'c.id_caixa, c.id_empresa,'
      'sum(vi.ite_002 )  as qtde_total_item, '
      'sum(vi.ite_005 )  as valor_total_item, '
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'v.justificativa_cancelamento as observacao_cancelamento,'
      'mes.mes_002 as mesa ,'
      
        'cast(concat( v.ven_029 ,'#39' '#39' , case v.ven_024 when '#39'M'#39' then mes.m' +
        'es_002'
      ' when '#39'C'#39' then '#39'COMANDA'#39
      ' when '#39'B'#39' then '#39'BALC'#195'O'#39
      ' when '#39'D'#39' then '#39'DELIVERY'#39
      ' when '#39'P'#39' then '#39'PDV'#39
      ' else '#39'OUTRO'#39' end)  as varchar(100)) as venda_mesa ,'
      'v.numero_cupom,'
      'v.dat_001_1 as data_abertura_venda,'
      #39'V'#39' as Tipo_Cancelamento'
      'from '
      'venda v '
      
        'join caixa c on c.id_caixa=v.id_caixa_abertura and c.id_empresa=' +
        'v.emp_001'
      
        'join vendaitem vi on vi.ven_001=v.ven_001 and vi.emp_001=v.emp_0' +
        '01 '
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'left join mesa mes on mes.emp_001=v.emp_001 and mes.mes_001=v.ve' +
        'n_025'
      
        'where  c.id_caixa=:id_caixa and c.id_empresa=:emp and v.sit_001=' +
        '2'
      'group by '
      'mat.mat_004, mat.mat_003, c.id_caixa, c.id_empresa, v.ven_024,'
      'u.usu_002, c.id_situacao, mes.mes_002, v.ven_001, v.ven_029,'
      
        'c.data_abertura, c.data_fechamento, c.observacao, v.numero_cupom' +
        ','
      'v.justificativa_cancelamento, v.dat_001_1'
      'order by 1')
    Left = 880
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        ParamType = ptInput
        Value = 10
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object WideStringField1: TWideStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'desc_produto'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object FloatField1: TFloatField
      FieldName = 'qtde_total_item'
      ReadOnly = True
    end
    object FloatField2: TFloatField
      FieldName = 'valor_total_item'
      ReadOnly = True
      currency = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object WideStringField4: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object BlobField1: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
    object qrRelProdutosCanceladosmesa: TWideStringField
      FieldName = 'mesa'
      ReadOnly = True
      Size = 40
    end
    object qrRelProdutosCanceladosvenda_mesa: TWideStringField
      FieldName = 'venda_mesa'
      ReadOnly = True
      Size = 100
    end
    object qrRelProdutosCanceladosid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object qrRelProdutosCanceladosnumero_cupom: TIntegerField
      FieldName = 'numero_cupom'
      ReadOnly = True
    end
    object qrRelProdutosCanceladosobservacao_cancelamento: TWideStringField
      FieldName = 'observacao_cancelamento'
      ReadOnly = True
      Size = 200
    end
    object qrRelProdutosCanceladosdata_abertura_venda: TDateTimeField
      FieldName = 'data_abertura_venda'
      ReadOnly = True
    end
    object qrRelProdutosCanceladostipo_cancelamento: TWideMemoField
      FieldName = 'tipo_cancelamento'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dbProdutosCancelados: TfrxDBDataset
    UserName = 'dbProdutosCancelados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'desc_produto=desc_produto'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'qtde_total_item=qtde_total_item'
      'valor_total_item=valor_total_item'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'mesa=mesa'
      'venda_mesa=venda_mesa'
      'id_venda=id_venda'
      'numero_cupom=numero_cupom'
      'observacao_cancelamento=observacao_cancelamento')
    DataSet = qrRelProdutosCancelados
    BCDToCurrency = False
    Left = 984
    Top = 416
  end
  object repProdutosCancelados: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42922.721996759260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 930
    Top = 412
    Datasets = <
      item
        DataSet = dbProdutosCancelados
        DataSetName = 'dbProdutosCancelados'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 118.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosCancelados."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosCancelados."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTOS CANCELADOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosCancelados."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosCancelados."observacao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosCancelados."desc_status"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 257.008040000000000000
        Width = 272.126160000000000000
        DataSet = dbProdutosCancelados
        DataSetName = 'dbProdutosCancelados'
        RowCount = 0
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000022000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          DataField = 'desc_produto'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosCancelados."desc_produto"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 154.960730000000000000
          Top = 2.000000000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          DataField = 'qtde_total_item'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosCancelados."qtde_total_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosvalor_total_item: TfrxMemoView
          Left = 186.196970000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'valor_total_item'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosCancelados."valor_total_item"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897637795275610000
          Width = 253.228510000000000000
          Height = 15.118110240000000000
          StretchMode = smMaxHeight
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Motivo: [dbProdutosCancelados."observacao_cancelamento"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 366.614410000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM('
            '<dbProdutosCancelados."valor_total_item">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 30.236240000000010000
          Width = 241.889920000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '* Os valores dos itens neste relat'#243'rio n'#227'o incluem os descontos ' +
              'cedidos no fechamento da venda.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 26.456709999999990000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 196.535560000000000000
        Width = 272.126160000000000000
        Condition = 'dbProdutosCancelados."venda_mesa"'
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.559059999999988100
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.133890000000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 17.913420000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 149.181200000000000000
          Top = 17.897650000000000000
          Width = 34.015770000000010000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object dbProdutosCanceladosvenda_mesa: TfrxMemoView
          Left = 60.472480000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'venda_mesa'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosCancelados."venda_mesa"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 196.535560000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'numero_cupom'
          DataSet = dbProdutosCancelados
          DataSetName = 'dbProdutosCancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosCancelados."numero_cupom"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 149.181200000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CUPOM')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 272.126160000000000000
        object Memo10: TfrxMemoView
          Left = 79.370130000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUB TOTAL')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM('
            '<dbProdutosCancelados."valor_total_item">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelAcrescimosVendas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select  sum(v.ven_009) as valor_venda,  sum(v.ven_008 - coalesce' +
        '(v.valor_couvert_f,0.0) - coalesce(v.valor_couvert_m, 0.0)) as a' +
        'crescimo_venda, sum(v.nro_pessoas) as nro_pessoas,'
      'sum(v.ven_009) as valor_total_venda, '
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' the' +
        'n '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda, '
      
        'sum(v.nro_couvert_f) as nro_couvert_f , sum(v.nro_couvert_m) as ' +
        'nro_couvert_m , cv.id_caixa, cv.id_empresa,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'sum(coalesce(v.caixinha_entregador,0)) as caixinha_entregador'
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.ven_008>0'
      'and v.sit_001=1'
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp'
      
        'group by v.ven_024, cv.id_caixa, cv.id_empresa, u.usu_002, c.id_' +
        'situacao,'
      'c.data_abertura, c.data_fechamento, c.observacao   '
      'order by v.ven_024')
    Left = 960
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 9
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object FloatField3: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelAcrescimosVendasacrescimo_venda: TFloatField
      FieldName = 'acrescimo_venda'
      ReadOnly = True
      currency = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object WideStringField6: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object WideStringField7: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object BlobField2: TBlobField
      FieldName = 'observacao'
    end
    object WideStringField8: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object FloatField5: TFloatField
      FieldName = 'valor_total_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelAcrescimosVendasnro_pessoas: TLargeintField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasnro_couvert_f: TLargeintField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasnro_couvert_m: TLargeintField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrRelAcrescimosVendascaixinha_entregador: TFloatField
      FieldName = 'caixinha_entregador'
      ReadOnly = True
      currency = True
    end
  end
  object dbAcrescimosVendas: TfrxDBDataset
    UserName = 'dbAcrescimosVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor_venda=valor_venda'
      'acrescimo_venda=acrescimo_venda'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'tipo_venda=tipo_venda'
      'valor_total_venda=valor_total_venda'
      'nro_pessoas=nro_pessoas'
      'nro_couvert_f=nro_couvert_f'
      'nro_couvert_m=nro_couvert_m'
      'caixinha_entregador=caixinha_entregador')
    DataSet = qrRelAcrescimosVendas
    BCDToCurrency = False
    Left = 1064
    Top = 464
  end
  object repAcrescimosVendas: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.748394826390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1114
    Top = 556
    Datasets = <
      item
        DataSet = dbAcrescimosVendas
        DataSetName = 'dbAcrescimosVendas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.DecimalSeparator = 'd'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.779530000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ACR'#201'SCIMOS E TAXAS EM VENDAS')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendas."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 119.417440000000000000
          Top = 123.740260000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TAXA')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."desc_status"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 189.000000000000000000
          Top = 124.102350000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CAIXINHA')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338582680000000000
          Top = 17.102350000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbAcrescimosVendas
        DataSetName = 'dbAcrescimosVendas'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 111.858380000000000000
          Top = 1.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'acrescimo_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."acrescimo_venda"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendas."tipo_venda"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 189.000000000000000000
          Top = 2.007730000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'caixinha_entregador'
          DataSet = dbAcrescimosVendas
          DataSetName = 'dbAcrescimosVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendas."caixinha_entregador"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 108.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."acrescimo_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 188.000000000000000000
          Width = 57.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendas."caixinha_entregador">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelAcrescimosVendasPorUsuario: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select  count(1)as qtde_venda, '
      
        'sum(v.ven_008 - coalesce(v.valor_couvert_f,0.0) - coalesce(v.val' +
        'or_couvert_m, 0.0) ) as total_acrescimo_venda, '
      'sum(v.ven_009) as total_venda, '
      
        'cast((case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o' +
        #39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' then' +
        ' '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda, '
      'cv.id_caixa, cv.id_empresa, '
      'u.usu_002 as nome_usuario,'
      'coalesce(e.usu_002, g.usu_002)  as nome_entregador_garcom,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      
        'sum(coalesce(v.caixinha_entregador,0)) as caixinha_entregador   ' +
        '  '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      
        'join (select min(ite_001) as ite_001, ven_001, emp_001 from vend' +
        'aitem vi group by  ven_001, emp_001) vitem1 on  v.ven_001=vitem1' +
        '.ven_001 and v.emp_001=vitem1.emp_001'
      
        'join vendaitem vi on v.ven_001=vi.ven_001 and v.emp_001=vi.emp_0' +
        '01 and vitem1.ite_001=vi.ite_001'
      'left join usuarios g on g.usu_001 = vi.gar_001'
      'left join usuarios e on e.usu_001 = v.id_entregador'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.ven_008>0 '
      'and v.sit_001=1'
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp'
      'group by cv.id_caixa, cv.id_empresa, u.usu_002, e.usu_002, '
      
        'c.id_situacao, c.data_abertura, c.data_fechamento, c.observacao ' +
        ', v.id_entregador, v.ven_024, g.usu_002'
      'order by v.id_entregador')
    Left = 880
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 10
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelAcrescimosVendasPorUsuarioqtde_venda: TLargeintField
      FieldName = 'qtde_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasPorUsuariototal_acrescimo_venda: TFloatField
      FieldName = 'total_acrescimo_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasPorUsuariotipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasPorUsuarioid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasPorUsuarioid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasPorUsuarionome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelAcrescimosVendasPorUsuarionome_entregador_garcom: TWideStringField
      FieldName = 'nome_entregador_garcom'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelAcrescimosVendasPorUsuariodesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelAcrescimosVendasPorUsuariodata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object qrRelAcrescimosVendasPorUsuariodata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object qrRelAcrescimosVendasPorUsuarioobservacao: TBlobField
      FieldName = 'observacao'
    end
    object qrRelAcrescimosVendasPorUsuariototal_venda: TFloatField
      FieldName = 'total_venda'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasPorUsuariocaixinha_entregador: TFloatField
      FieldName = 'caixinha_entregador'
      ReadOnly = True
    end
  end
  object dbAcrescimosVendasPorUsuario: TfrxDBDataset
    UserName = 'dbAcrescimosVendasPorUsuario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'qtde_venda=qtde_venda'
      'total_acrescimo_venda=total_acrescimo_venda'
      'tipo_venda=tipo_venda'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'nome_usuario=nome_usuario'
      'nome_entregador_garcom=nome_entregador_garcom'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'total_venda=total_venda'
      'caixinha_entregador=caixinha_entregador')
    DataSet = qrRelAcrescimosVendasPorUsuario
    BCDToCurrency = False
    Left = 936
    Top = 352
  end
  object repAcrescimosVendasPorUsuario: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.747278032410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 986
    Top = 332
    Datasets = <
      item
        DataSet = dbAcrescimosVendasPorUsuario
        DataSetName = 'dbAcrescimosVendasPorUsuario'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
          Left = 0.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 155.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          DisplayFormat.DecimalSeparator = 'd'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 0.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 155.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."data_fechamento"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 0.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 155.842610000000000000
          Top = 49.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 0.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."observacao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 0.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 156.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."desc_status"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 1.401574800000000000
          Top = 17.102350000000000000
          Width = 253.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 0.338590000000000000
          Top = 0.779530000000000000
          Width = 255.228510000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ACR'#201'SCIMOS E TAXAS EM VENDAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 272.126160000000000000
        DataSet = dbAcrescimosVendasPorUsuario
        DataSetName = 'dbAcrescimosVendasPorUsuario'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 168.535560000000000000
          Top = 1.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'total_acrescimo_venda'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."total_acrescimo_venda"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 0.291338580000000000
          Top = 1.779530000000000000
          Width = 67.149660000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."tipo_venda"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 73.488188980000000000
          Top = 2.000000000000000000
          Width = 34.015750470000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'qtde_venda'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."qtde_venda"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 110.504020000000000000
          Top = 1.889763780000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'total_venda'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."total_venda"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 212.000000000000000000
          Top = 1.653370000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."caixinha_entregador"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 0.291338582677165400
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 0.291338580000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 168.212598425196900000
          Width = 41.574830000000000000
          Height = 15.118110236220470000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dbAcrescimosVendasPorUsuario."total_acrescimo_venda">,Mast' +
              'erData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 73.724409448818900000
          Width = 34.015750470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendasPorUsuario."qtde_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 117.188976377952800000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendasPorUsuario."total_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 212.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dbAcrescimosVendasPorUsuario."caixinha_entregador">,Master' +
              'Data1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 200.315090000000000000
        Width = 272.126160000000000000
        Condition = 'dbAcrescimosVendasPorUsuario."nome_entregador_garcom"'
        object Line8: TfrxLineView
          Left = 0.291338580000000000
          Top = 41.929190000000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 0.291338580000000000
          Top = 25.692950000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 0.291338580000000000
          Top = 23.236240000000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 169.535560000000000000
          Top = 25.472480000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TAXA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 73.488250000000000000
          Top = 25.456710000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object dbAcrescimosVendasPorUsuarionome_entregador_garcom: TfrxMemoView
          Left = 84.708720000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataField = 'nome_entregador_garcom'
          DataSet = dbAcrescimosVendasPorUsuario
          DataSetName = 'dbAcrescimosVendasPorUsuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendasPorUsuario."nome_entregador_garcom"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 0.291338582677165400
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ENTREGADOR:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 110.504020000000000000
          Top = 25.322834650000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'T. VENDA')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 211.000000000000000000
          Top = 25.684910000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CX')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 272.126160000000000000
        object Line2: TfrxLineView
          Left = 0.291338580000000000
          Width = 253.228510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 168.212598425196900000
          Width = 41.574830000000000000
          Height = 15.118110236220470000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dbAcrescimosVendasPorUsuario."total_acrescimo_venda">,Mast' +
              'erData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 73.724409448818900000
          Width = 34.015750470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendasPorUsuario."qtde_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 117.188976377952800000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendasPorUsuario."total_venda">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 211.000000000000000000
          Top = 0.078540000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<dbAcrescimosVendasPorUsuario."caixinha_entregador">,Master' +
              'Data1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelVendasCFe: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select  v.ven_001, v.ven_009 as valor_venda,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' the' +
        'n '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'v.numero_cupom as nro_cupom'
      'from'
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join caixa c on c.id_caixa = civ.id_caixa and civ.id_empresa=c.i' +
        'd_empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'left join venda v on v.emp_001=civ.id_empresa and v.ven_001=civ.' +
        'id_venda'
      'where v.Ven_038 is not null'
      'and v.sit_001=1'
      'and civ.id_caixa=:id_caixa and civ.id_empresa=:emp')
    Left = 896
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_caixa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrRelVendasCFeven_001: TIntegerField
      FieldName = 'ven_001'
      ReadOnly = True
      Required = True
    end
    object qrRelVendasCFevalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
    end
    object qrRelVendasCFetipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrRelVendasCFenome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelVendasCFedesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelVendasCFedata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object qrRelVendasCFedata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object qrRelVendasCFenro_cupom: TIntegerField
      FieldName = 'nro_cupom'
      ReadOnly = True
    end
    object qrRelVendasCFeobservacao: TBlobField
      FieldName = 'observacao'
    end
  end
  object dbVendasCFe: TfrxDBDataset
    UserName = 'dbVendasCFe'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ven_001=ven_001'
      'valor_venda=valor_venda'
      'tipo_venda=tipo_venda'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'nro_cupom=nro_cupom'
      'observacao=observacao')
    DataSet = qrRelVendasCFe
    BCDToCurrency = False
    Left = 944
    Top = 544
  end
  object repVendasCFe: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.750545752310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1002
    Top = 540
    Datasets = <
      item
        DataSet = dbVendasCFe
        DataSetName = 'dbVendasCFe'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCFe."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCFe."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFE EMITIDOS')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCFe."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasCFe."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCFe."desc_status"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 183.196970000000000000
          Top = 123.724490000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL. VENDA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 96.708720000000000000
          Top = 123.944960000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' CUPOM')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbVendasCFe
        DataSetName = 'dbVendasCFe'
        RowCount = 0
        object dbVendasCFetipo_venda: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.889763780000010000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'tipo_venda'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasCFe."tipo_venda"]')
          ParentFont = False
        end
        object dbVendasCFenro_cupom: TfrxMemoView
          Left = 94.488250000000000000
          Top = 1.889763780000010000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'nro_cupom'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasCFe."nro_cupom"]')
          ParentFont = False
        end
        object dbVendasCFevalor_venda: TfrxMemoView
          Left = 181.417440000000000000
          Top = 1.889763780000010000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'valor_venda'
          DataSet = dbVendasCFe
          DataSetName = 'dbVendasCFe'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasCFe."valor_venda"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasCFe."valor_venda">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelDetalheVendas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_029 as nrovenda,'
      'v.dat_001_1 as data_venda,'
      'v.ven_009 as valor_venda,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' the' +
        'n '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda, '
      
        'cast(( case when v.b_taxa_entrega then '#39'N'#227'o'#39'  else '#39'Sim'#39' end) as' +
        ' varchar(20)) as retirada_balcao, '
      'mat.mat_004 as codigo_produto, '
      'mat.mat_003 as desc_produto,  '
      'civ.id_caixa, civ.id_empresa,'
      'vi.ite_003 as valor_unitario, '
      'sum(vi.ite_002) as qtde_total_item, '
      'sum(vi.ite_005) as valor_total_item, '
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'cli.cli_002 as nome_cliente,    '
      'cli.cli_012 as telefone1,'
      'cli.cli_013 as telefone2,'
      'cli.cep_004 as logradouro, '
      'cli.cli_008 as logradouro_numero, '
      'cli.cli_009 as complemento, '
      'cli.cep_003 as bairro, '
      'cli.cidade_desc'
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa and not vi.sit_001  in (0,1,2,3)'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      
        'left join clientes cli on v.cli_001=cli.cli_001 and v.emp_001=cl' +
        'i.emp_001'
      
        'where c.id_caixa=:id_caixa and c.id_empresa=:emp and v.b_taxa_en' +
        'trega=:b_taxaentrega and v.ven_024='#39'D'#39' '
      'and v.sit_001=1'
      'group by '
      'mat.mat_004, mat.mat_003, civ.id_caixa, civ.id_empresa, '
      
        'u.usu_002, c.id_situacao, cli.cli_002,v.ven_029, v.ven_024, v.b_' +
        'taxa_entrega , vi.ite_003,'
      
        'c.data_abertura, c.data_fechamento, c.observacao, v.dat_001_1, v' +
        '.ven_009, cli.cli_012, cli.cli_013,'
      
        'cli.cep_004, cli.cli_008, cli.cli_009, cli.cep_003, cli.cidade_d' +
        'esc'
      'order by v.ven_009')
    Left = 1064
    Top = 608
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 11
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftBoolean
        Name = 'b_taxaentrega'
        Value = True
      end>
    object qrRelDetalheVendasnrovenda: TIntegerField
      FieldName = 'nrovenda'
      ReadOnly = True
    end
    object qrRelDetalheVendasdata_venda: TDateTimeField
      FieldName = 'data_venda'
      ReadOnly = True
    end
    object qrRelDetalheVendasvalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrRelDetalheVendastipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrRelDetalheVendasretirada_balcao: TWideStringField
      FieldName = 'retirada_balcao'
      ReadOnly = True
    end
    object qrRelDetalheVendascodigo_produto: TWideStringField
      FieldName = 'codigo_produto'
      ReadOnly = True
      Size = 50
    end
    object qrRelDetalheVendasdesc_produto: TWideStringField
      FieldName = 'desc_produto'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrRelDetalheVendasid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object qrRelDetalheVendasid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrRelDetalheVendasqtde_total_item: TFloatField
      FieldName = 'qtde_total_item'
      ReadOnly = True
    end
    object qrRelDetalheVendasvalor_total_item: TFloatField
      FieldName = 'valor_total_item'
      ReadOnly = True
      currency = True
    end
    object qrRelDetalheVendasnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelDetalheVendasdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelDetalheVendasdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelDetalheVendasdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelDetalheVendasobservacao: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
    object qrRelDetalheVendasnome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrRelDetalheVendasvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrRelDetalheVendastelefone1: TWideStringField
      FieldName = 'telefone1'
      ReadOnly = True
    end
    object qrRelDetalheVendastelefone2: TWideStringField
      FieldName = 'telefone2'
      ReadOnly = True
    end
    object qrRelDetalheVendaslogradouro: TWideStringField
      FieldName = 'logradouro'
      ReadOnly = True
      Size = 125
    end
    object qrRelDetalheVendaslogradouro_numero: TWideStringField
      FieldName = 'logradouro_numero'
      ReadOnly = True
      Size = 100
    end
    object qrRelDetalheVendascomplemento: TWideStringField
      FieldName = 'complemento'
      ReadOnly = True
      Size = 100
    end
    object qrRelDetalheVendasbairro: TWideStringField
      FieldName = 'bairro'
      ReadOnly = True
      Size = 50
    end
    object qrRelDetalheVendascidade_desc: TWideStringField
      FieldName = 'cidade_desc'
      ReadOnly = True
      Size = 100
    end
  end
  object dbDetalheVendas: TfrxDBDataset
    UserName = 'dbDetalheVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nrovenda=nrovenda'
      'data_venda=data_venda'
      'valor_venda=valor_venda'
      'tipo_venda=tipo_venda'
      'retirada_balcao=retirada_balcao'
      'codigo_produto=codigo_produto'
      'desc_produto=desc_produto'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'qtde_total_item=qtde_total_item'
      'valor_total_item=valor_total_item'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'nome_cliente=nome_cliente'
      'valor_unitario=valor_unitario'
      'telefone1=telefone1'
      'telefone2=telefone2'
      'logradouro=logradouro'
      'logradouro_numero=logradouro_numero'
      'complemento=complemento'
      'bairro=bairro'
      'cidade_desc=cidade_desc')
    DataSet = qrRelDetalheVendas
    BCDToCurrency = False
    Left = 944
    Top = 608
  end
  object repDetalheVendas: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42711.463350902800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1002
    Top = 604
    Datasets = <
      item
        DataSet = dbDetalheVendas
        DataSetName = 'dbDetalheVendas'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 147.401670000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 748.346940000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 68.031508270000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 118.149660000000000000
          Top = 68.031508270000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 85.039382280000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 118.149660000000000000
          Top = 85.039382280000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DETALHAMENTO DE VENDAS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 241.889920000000000000
          Top = 68.133890000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 310.921460000000000000
          Top = 68.133890000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 15.118120000000000000
          Top = 103.708720000000000000
          Width = 415.748300000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDetalheVendas."observacao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 241.889920000000000000
          Top = 85.039382280000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 311.480520000000000000
          Top = 85.039382280000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."desc_status"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 10.338590000000000000
          Top = 34.015770000000010000
          Width = 423.307360000000000000
          Height = 105.826840000000000000
        end
        object Memo9: TfrxMemoView
          Left = 15.118120000000000000
          Top = 41.574830000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DADOS DO CAIXA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165354330700000
        Top = 351.496290000000000000
        Width = 748.346940000000000000
        DataSet = dbDetalheVendas
        DataSetName = 'dbDetalheVendas'
        RowCount = 0
        object Memo45: TfrxMemoView
          Left = 79.370130000000000000
          Top = 1.889763780000010000
          Width = 362.834880000000000000
          Height = 18.897640240000000000
          DataField = 'desc_produto'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDetalheVendas."desc_produto"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 461.102660000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897640240000000000
          DataField = 'qtde_total_item'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."qtde_total_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosvalor_total_item: TfrxMemoView
          Left = 669.756340000000000000
          Top = 1.889763779527584000
          Width = 71.811070000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'valor_total_item'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."valor_total_item"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.149970000000000000
          Top = 1.889763779527584000
          Width = 90.708720000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          DataField = 'valor_unitario'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."valor_unitario"]')
          ParentFont = False
        end
        object dbDetalheVendascodigo_produto: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.889763779527584000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'codigo_produto'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Memo.UTF8W = (
            '[dbDetalheVendas."codigo_produto"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 442.205010000000000000
        Width = 748.346940000000000000
        object Memo4: TfrxMemoView
          Left = 514.016080000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DAS VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779527559055120000
          Width = 744.566929133858000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 668.756340000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbDetalheVendas."valor_venda">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 226.771800000000000000
        Width = 748.346940000000000000
        Condition = 'dbDetalheVendas."nrovenda"'
        object dbDetalheVendasnrovenda: TfrxMemoView
          Left = 64.252010000000000000
          Top = 11.559059999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'nrovenda'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Memo.UTF8W = (
            '[dbDetalheVendas."nrovenda"]')
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.559059999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Venda')
        end
        object dbDetalheVendasnome_cliente: TfrxMemoView
          Left = 64.252010000000000000
          Top = 35.015770000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'nome_cliente'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Memo.UTF8W = (
            '[dbDetalheVendas."nome_cliente"]')
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 35.015770000000010000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente')
        end
        object dbDetalheVendasdata_venda: TfrxMemoView
          Left = 204.756030000000000000
          Top = 11.559059999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'data_venda'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[dbDetalheVendas."data_venda"]')
        end
        object Memo11: TfrxMemoView
          Left = 120.944960000000000000
          Top = 11.559059999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'data_venda'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[dbDetalheVendas."data_venda"]')
        end
        object Memo12: TfrxMemoView
          Left = 79.370130000000000000
          Top = 76.472479999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 461.102660000000000000
          Top = 76.472479999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 668.756340000000000000
          Top = 76.472479999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779527560000000000
          Top = 6.000000000000000000
          Width = 744.566929130000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Memo15: TfrxMemoView
          Left = 563.149970000000000000
          Top = 76.472479999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 76.472479999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 461.086890000000000000
          Top = 54.015770000000010000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Retirada no Balc'#227'o')
          ParentFont = False
        end
        object dbDetalheVendasretirada_balcao: TfrxMemoView
          Left = 593.370440000000000000
          Top = 54.015770000000010000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'retirada_balcao'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDetalheVendas."retirada_balcao"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 7.559055120000000000
          Top = 95.370129999999990000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 344.378170000000000000
          Top = 35.015770000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'telefone1'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Memo.UTF8W = (
            '[dbDetalheVendas."telefone1"]')
        end
        object Memo20: TfrxMemoView
          Left = 277.905690000000000000
          Top = 35.015770000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telefones')
        end
        object Memo21: TfrxMemoView
          Left = 430.866420000000000000
          Top = 35.015770000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'telefone2'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Memo.UTF8W = (
            '[dbDetalheVendas."telefone2"]')
        end
        object dbDetalheVendaslogradouro: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.913420000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[dbDetalheVendas."logradouro"], [dbDetalheVendas."logradouro_num' +
              'ero"] [dbDetalheVendas."complemento"], [dbDetalheVendas."bairro"' +
              '], [dbDetalheVendas."cidade_desc"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 396.850650000000000000
        Width = 748.346940000000000000
        object dbDetalheVendasvalor_venda: TfrxMemoView
          Left = 661.197280000000000000
          Top = 2.220469999999978000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'valor_venda'
          DataSet = dbDetalheVendas
          DataSetName = 'dbDetalheVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDetalheVendas."valor_venda"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 578.268090000000000000
          Top = 2.220469999999978000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Venda')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 7.559060000000000000
          Width = 733.228346460000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object pmOpcoesDetalhamentoVendas: TPopupMenu
    Left = 15
    Top = 123
    object Delivery1: TMenuItem
      Caption = 'Delivery'
      OnClick = Delivery1Click
    end
    object DeliveryBalco1: TMenuItem
      Caption = 'Delivery (retirada balc'#227'o)'
      OnClick = DeliveryBalco1Click
    end
  end
  object qrRelVendasFiado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select ci.valor, ci.id_caixa, ci.id_empresa, fp.for_002 as desc_' +
        'forma, ci.tipo_movimento,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      
        'cast(concat(v.ven_029, '#39' '#39', case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39 +
        ' when '#39'B'#39' then '#39'Balc'#227'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'D' +
        'elivery'#39'  when '#39'P'#39' then '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(40)) ' +
        'as tipo_venda,'
      'cl.cli_002 as nome_cliente'
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formapgt' +
        'o=fp.for_001 and b_fiado'
      
        'join venda v on v.ven_001=ci.id_venda and v.emp_001=ci.id_empres' +
        'a'
      
        'join clientes cl on cl.cli_001=v.cli_001 and v.emp_001=cl.emp_00' +
        '1'
      
        'where c.id_caixa=:id_caixa and c.id_empresa=:emp and ci.tipo_mov' +
        'imento='#39'E'#39
      '-- n'#227'o traz as vendas cancelas'
      'and ci.id_venda not in'
      '(select sci.id_venda '
      'from caixaitem sci'
      
        'join venda sv on sv.ven_001=sci.id_venda and sv.emp_001=sci.id_e' +
        'mpresa'
      
        'where sci.id_caixa=:id_caixa and sci.id_empresa=:emp and sv.sit_' +
        '001=2)'
      
        'order by ci.id_caixa, ci.id_empresa,  ci.tipo_movimento, fp.for_' +
        '002,  v.ven_024, u.usu_002')
    Left = 1104
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 14
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelVendasFiadovalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
    object qrRelVendasFiadoid_caixa: TIntegerField
      FieldName = 'id_caixa'
      Required = True
    end
    object qrRelVendasFiadoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrRelVendasFiadodesc_forma: TWideStringField
      FieldName = 'desc_forma'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelVendasFiadotipo_movimento: TWideStringField
      FieldName = 'tipo_movimento'
      FixedChar = True
      Size = 1
    end
    object qrRelVendasFiadonome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelVendasFiadodesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelVendasFiadodata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelVendasFiadodata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelVendasFiadoobservacao: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
    object qrRelVendasFiadonome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrRelVendasFiadotipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 40
    end
  end
  object dbVendasFiado: TfrxDBDataset
    UserName = 'dbVendasFiado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor=valor'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'desc_forma=desc_forma'
      'tipo_movimento=tipo_movimento'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'nome_cliente=nome_cliente'
      'tipo_venda=tipo_venda')
    DataSet = qrRelVendasFiado
    BCDToCurrency = False
    Left = 1152
    Top = 8
  end
  object repVendasFiado: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.743534953700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1154
    Top = 64
    Datasets = <
      item
        DataSet = dbVendasFiado
        DataSetName = 'dbVendasFiado'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasFiado."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasFiado."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDAS FIADO / CREDI'#193'RIO')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000010000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasFiado."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasFiado."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 123.740260000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasFiado."desc_status"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 124.724490000000000000
          Top = 123.724490000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'T.VENDA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbVendasFiado
        DataSetName = 'dbVendasFiado'
        RowCount = 0
        object dbVendasFiadonome_cliente: TfrxMemoView
          Left = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          DataField = 'nome_cliente'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasFiado."nome_cliente"]')
          ParentFont = False
        end
        object dbVendasFiadovalor: TfrxMemoView
          Left = 188.976500000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'valor'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVendasFiado."valor"]')
          ParentFont = False
        end
        object dbVendasFiadotipo_venda: TfrxMemoView
          Left = 124.724490000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbVendasFiado
          DataSetName = 'dbVendasFiado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVendasFiado."tipo_venda"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 264.567100000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVendasFiado."valor">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelProdutosVendidosLucro: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select mat.mat_004 as codigo, '
      'mat.mat_003 as desc_produto,  '
      'civ.id_caixa, civ.id_empresa, '
      'sum(vi.ite_002 )  as qtde_total_item, '
      'sum(vi.ite_005 )  as valor_total_item,'
      'sum ( (vi.ite_005 ) --valor do item sem acrescimo'
      
        '- ((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0))* vi.it' +
        'e_002)) as total_lucro_item,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'cat.cat_002 as desc_categoria  '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa and not vi.sit_001  in (0,1,2,3)'
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join categoria cat on mat.cat_001=cat.cat_001 and cat.emp_001=ma' +
        't.emp_001'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      'where c.id_caixa=:id_caixa and c.id_empresa=:emp'
      'and v.sit_001=1'
      'group by '
      'mat.mat_004, mat.mat_003, civ.id_caixa, civ.id_empresa, '
      'u.usu_002, c.id_situacao, mat.cat_001, cat.cat_002,'
      'c.data_abertura, c.data_fechamento, c.observacao'
      'order by mat.cat_001, qtde_total_item desc, mat.mat_003;'
      '')
    Left = 1112
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 2
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object WideStringField5: TWideStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 50
    end
    object WideStringField9: TWideStringField
      FieldName = 'desc_produto'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object FloatField4: TFloatField
      FieldName = 'qtde_total_item'
      ReadOnly = True
    end
    object FloatField6: TFloatField
      FieldName = 'valor_total_item'
      ReadOnly = True
      currency = True
    end
    object WideStringField10: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object WideStringField11: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object BlobField3: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
    object WideStringField12: TWideStringField
      FieldName = 'desc_categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelProdutosVendidosLucrototal_lucro_item: TFloatField
      FieldName = 'total_lucro_item'
      ReadOnly = True
      currency = True
    end
  end
  object dbProdutosVendidosLucro: TfrxDBDataset
    UserName = 'dbProdutosVendidosLucro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'desc_produto=desc_produto'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'qtde_total_item=qtde_total_item'
      'valor_total_item=valor_total_item'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'desc_categoria=desc_categoria'
      'total_lucro_item=total_lucro_item')
    DataSet = qrRelProdutosVendidosLucro
    BCDToCurrency = False
    Left = 1128
    Top = 176
  end
  object repProdutosVendidosLucro: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42790.619018402800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1202
    Top = 124
    Datasets = <
      item
        DataSet = dbProdutosVendidosLucro
        DataSetName = 'dbProdutosVendidosLucro'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 143.622049690000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 22.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LUCRO DOS PRODUTOS VENDIDOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.472480000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 53.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 88.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."observacao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 68.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 68.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."desc_status"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 126.181200000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 125.960730000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LUCRO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 149.181200000000000000
          Top = 125.944960000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 11.338590000000000000
          Top = 123.944960000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 11.338590000000000000
          Top = 20.897650000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 355.275820000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.000000000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LUCRO TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdutosVendidosLucro."total_lucro_item">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 26.456710000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 272.126160000000000000
        DataSet = dbProdutosVendidosLucro
        DataSetName = 'dbProdutosVendidosLucro'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 2.779527560000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          DataField = 'qtde_total_item'
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."qtde_total_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosvalor_total_item: TfrxMemoView
          Left = 182.417440000000000000
          Top = 2.779527560000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'total_lucro_item'
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosVendidosLucro."total_lucro_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosdesc_produto: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.779530000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[dbProdutosVendidosLucro."codigo"] - [dbProdutosVendidosLucro."d' +
              'esc_produto"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        Condition = 'dbProdutosVendidosLucro."desc_categoria"'
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 2.354360000000010000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 21.086580000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbProdutosVendidosdesc_categoria: TfrxMemoView
          Left = 11.338590000000000000
          Top = 4.000000000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CATEGORIA: [dbProdutosVendidosLucro."desc_categoria"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 272.126160000000000000
        object Memo9: TfrxMemoView
          Left = 175.118223330000000000
          Top = 2.629921670000000000
          Width = 69.291383330000000000
          Height = 15.748041670000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbProdutosVendidosLucro."total_lucro_item">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.629921670000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataSet = dbProdutosVendidosLucro
          DataSetName = 'dbProdutosVendidosLucro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL [dbProdutosVendidosLucro."desc_categoria"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'C:\Users\Leonardo Marsal\Desktop\df.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43070.620717465280000000
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 608
    Top = 520
  end
  object qrRelProdutosDevolvidos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select'
      'v.ven_029 as nro_venda, '
      'civ.id_venda,mat.mat_004 as codigo, '
      'mat.mat_003 as desc_produto,  '
      'civ.id_caixa, civ.id_empresa, '
      'sum(dev.quantidade )  as qtde_total_item, '
      
        'sum(dev.quantidade * (vi.ite_005/vi.ite_002) )  as valor_total_i' +
        'tem, '
      'u.usu_002 as nome_usuario,'
      'u_dev.usu_002 as nome_responsavel,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao,'
      'mes.mes_002 as mesa,'
      
        'cast(concat(v.ven_029 ,'#39' '#39' , case v.ven_024 when '#39'M'#39' then mes.me' +
        's_002'
      ' when '#39'C'#39' then '#39'COMANDA'#39
      ' when '#39'B'#39' then '#39'BALC'#195'O'#39
      ' when '#39'D'#39' then '#39'DELIVERY'#39
      ' when '#39'P'#39' then '#39'PDV'#39
      ' else '#39'OUTRO'#39' end)  as varchar(100)) as venda_mesa,'
      'v.numero_cupom '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) civ '
      
        'join devolucaoitem dev on dev.id_empresa = civ.id_empresa and de' +
        'v.id_caixa=civ.id_caixa'
      
        'join vendaitem vi on vi.ven_001=dev.id_venda and vi.emp_001=civ.' +
        'id_empresa '
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001)'
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa'
      'join usuarios u on c.id_usuario=u.usu_001'
      'join usuarios u_dev on dev.id_usuario=u_dev.usu_001'
      
        'join venda v on v.ven_001=dev.id_venda and v.emp_001=civ.id_empr' +
        'esa'
      
        'left join mesa mes on mes.emp_001=v.emp_001 and mes.mes_001=v.ve' +
        'n_025'
      'where c.id_caixa=:id_caixa and c.id_empresa=:emp'
      'group by '
      
        'mat.mat_004, mat.mat_003, civ.id_caixa, civ.id_empresa, v.ven_02' +
        '4,'
      
        'u.usu_002,u_dev.usu_002,  c.id_situacao, mes.mes_002, v.ven_001,' +
        ' v.ven_029,'
      
        'c.data_abertura, c.data_fechamento, c.observacao, civ.id_venda, ' +
        'v.numero_cupom')
    Left = 1104
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 53
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrRelProdutosDevolvidosid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidoscodigo: TWideStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 50
    end
    object qrRelProdutosDevolvidosdesc_produto: TWideStringField
      FieldName = 'desc_produto'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrRelProdutosDevolvidosid_caixa: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosqtde_total_item: TFloatField
      FieldName = 'qtde_total_item'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosvalor_total_item: TFloatField
      FieldName = 'valor_total_item'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosnome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrRelProdutosDevolvidosdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrRelProdutosDevolvidosdata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      ReadOnly = True
      Required = True
    end
    object qrRelProdutosDevolvidosdata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosobservacao: TBlobField
      FieldName = 'observacao'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosmesa: TWideStringField
      FieldName = 'mesa'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrRelProdutosDevolvidosvenda_mesa: TWideStringField
      FieldName = 'venda_mesa'
      ReadOnly = True
      Size = 100
    end
    object qrRelProdutosDevolvidosnumero_cupom: TIntegerField
      FieldName = 'numero_cupom'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosnro_venda: TIntegerField
      FieldName = 'nro_venda'
      ReadOnly = True
    end
    object qrRelProdutosDevolvidosnome_responsavel: TWideStringField
      FieldName = 'nome_responsavel'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
  object dbProdutosDevolvidos: TfrxDBDataset
    UserName = 'dbProdutosDevolvidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_venda=id_venda'
      'codigo=codigo'
      'desc_produto=desc_produto'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'qtde_total_item=qtde_total_item'
      'valor_total_item=valor_total_item'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'mesa=mesa'
      'venda_mesa=venda_mesa'
      'numero_cupom=numero_cupom'
      'nro_venda=nro_venda'
      'nome_responsavel=nome_responsavel')
    DataSet = qrRelProdutosDevolvidos
    BCDToCurrency = False
    Left = 1152
    Top = 248
  end
  object repProdutosDevolvidos: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42705.747926365800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1202
    Top = 268
    Datasets = <
      item
        DataSet = dbProdutosDevolvidos
        DataSetName = 'dbProdutosDevolvidos'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 118.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTOS DEVOLVIDOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."observacao"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."desc_status"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 272.126160000000000000
        DataSet = dbProdutosDevolvidos
        DataSetName = 'dbProdutosDevolvidos'
        RowCount = 0
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000020000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          DataField = 'desc_produto'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."desc_produto"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 154.960730000000000000
          Top = 2.000000000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          DataField = 'qtde_total_item'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."qtde_total_item"]')
          ParentFont = False
        end
        object dbProdutosVendidosvalor_total_item: TfrxMemoView
          Left = 186.196970000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'valor_total_item'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."valor_total_item"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 359.055350000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM('
            '<dbProdutosDevolvidos."valor_total_item">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 241.889920000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '* Os valores dos itens neste relat'#243'rio n'#227'o incluem os descontos ' +
              'cedidos no fechamento da venda.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 26.456710000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 196.535560000000000000
        Width = 272.126160000000000000
        Condition = 'dbProdutosDevolvidos."id_venda"'
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 0.559059999999988000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.252010000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 188.976500000000000000
          Top = 34.031540000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VL.TOTAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 149.181200000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object dbProdutosCanceladosvenda_mesa: TfrxMemoView
          Left = 60.472480000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'nro_venda'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."nro_venda"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDA')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 196.535560000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'numero_cupom'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."numero_cupom"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 149.181200000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CUPOM')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 11.338590000000000000
          Top = 17.118120000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
        end
        object dbProdutosDevolvidosnome_responsavel: TfrxMemoView
          Left = 98.267780000000000000
          Top = 17.118120000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DataField = 'nome_responsavel'
          DataSet = dbProdutosDevolvidos
          DataSetName = 'dbProdutosDevolvidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbProdutosDevolvidos."nome_responsavel"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 272.126160000000000000
        object Memo10: TfrxMemoView
          Left = 79.370130000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'SUB TOTAL')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM('
            '<dbProdutosDevolvidos."valor_total_item">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qrRelAcrescimosVendasCouvert: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select  sum(v.ven_009) as valor_venda,  sum(coalesce(v.valor_cou' +
        'vert_f,0.0) + coalesce(v.valor_couvert_m, 0.0)) as total_couvert' +
        ', sum(v.nro_pessoas) as nro_pessoas,'
      'sum(v.ven_009) as valor_total_venda, '
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' the' +
        'n '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda, '
      
        'sum(v.nro_couvert_f) as nro_couvert_f , sum(v.nro_couvert_m) as ' +
        'nro_couvert_m , cv.id_caixa, cv.id_empresa,'
      'u.usu_002 as nome_usuario,'
      'cast(fn_situacoes(c.id_situacao) as varchar(100))as desc_status,'
      'c.data_abertura,'
      'c.data_fechamento,'
      'c.observacao    '
      'from '
      '(select id_caixa, id_venda, id_empresa from caixaitem'
      'group by  id_caixa, id_venda, id_empresa'
      'order by 1) cv '
      
        'join caixa c on c.id_caixa=cv.id_caixa and cv.id_empresa=c.id_em' +
        'presa'
      'join usuarios u on c.id_usuario=u.usu_001'
      
        'join venda v on v.ven_001=cv.id_venda and v.emp_001=cv.id_empres' +
        'a'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.ven_008>0'
      'and v.sit_001=1'
      'and c.id_caixa=:id_caixa and c.id_empresa=:emp'
      
        'group by v.ven_024, cv.id_caixa, cv.id_empresa, u.usu_002, c.id_' +
        'situacao,'
      'c.data_abertura, c.data_fechamento, c.observacao   '
      'order by v.ven_024')
    Left = 1080
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_caixa'
        Value = 9
      end
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object FloatField7: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_caixa'
      ReadOnly = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'id_empresa'
      ReadOnly = True
    end
    object WideStringField13: TWideStringField
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object WideStringField14: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'data_abertura'
      Required = True
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object BlobField4: TBlobField
      FieldName = 'observacao'
    end
    object WideStringField15: TWideStringField
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object FloatField9: TFloatField
      FieldName = 'valor_total_venda'
      ReadOnly = True
      currency = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'nro_pessoas'
      ReadOnly = True
    end
    object LargeintField2: TLargeintField
      FieldName = 'nro_couvert_f'
      ReadOnly = True
    end
    object LargeintField3: TLargeintField
      FieldName = 'nro_couvert_m'
      ReadOnly = True
    end
    object qrRelAcrescimosVendasCouverttotal_couvert: TFloatField
      FieldName = 'total_couvert'
      ReadOnly = True
    end
  end
  object dbAcrescimosVendasCouvert: TfrxDBDataset
    UserName = 'dbAcrescimosVendasCouvert'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor_venda=valor_venda'
      'id_caixa=id_caixa'
      'id_empresa=id_empresa'
      'nome_usuario=nome_usuario'
      'desc_status=desc_status'
      'data_abertura=data_abertura'
      'data_fechamento=data_fechamento'
      'observacao=observacao'
      'tipo_venda=tipo_venda'
      'valor_total_venda=valor_total_venda'
      'nro_pessoas=nro_pessoas'
      'nro_couvert_f=nro_couvert_f'
      'nro_couvert_m=nro_couvert_m'
      'total_couvert=total_couvert')
    DataSet = qrRelAcrescimosVendasCouvert
    BCDToCurrency = False
    Left = 1136
    Top = 392
  end
  object repAcrescimosVendasCouvert: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42879.380583622680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1114
    Top = 500
    Datasets = <
      item
        DataSet = dbAcrescimosVendasCouvert
        DataSetName = 'dbAcrescimosVendasCouvert'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
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
        Height = 142.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 272.126160000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE ABERTURA')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 145.842610000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_abertura'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          DisplayFormat.DecimalSeparator = 'd'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."data_abertura"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 33.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DE FECHAMENTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 145.842610000000000000
          Top = 33.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'data_fechamento'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."data_fechamento"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TAXAS DE COUVERT')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 11.338590000000000000
          Top = 140.196970000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.472480000000010000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'USU'#193'RIO')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 145.842610000000000000
          Top = 49.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'nome_usuario'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."nome_usuario"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 11.338590000000000000
          Top = 84.047310000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          DataField = 'observacao'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."observacao"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 123.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TIPO VENDA')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 11.338590000000000000
          Top = 121.504020000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 181.417440000000000000
          Top = 123.740260000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COUVERT')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 146.401670000000000000
          Top = 64.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DataField = 'desc_status'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."desc_status"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 11.338582677165350000
          Top = 18.102350000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 272.126160000000000000
        DataSet = dbAcrescimosVendasCouvert
        DataSetName = 'dbAcrescimosVendasCouvert'
        RowCount = 0
        object dbRetiradasvalor: TfrxMemoView
          Left = 173.858380000000000000
          Top = 1.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          DataField = 'total_couvert'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."total_couvert"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          DataField = 'tipo_venda'
          DataSet = dbAcrescimosVendasCouvert
          DataSetName = 'dbAcrescimosVendasCouvert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbAcrescimosVendasCouvert."tipo_venda"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 272.126160000000000000
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbAcrescimosVendasCouvert."total_couvert">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object pmDescVendas: TPopupMenu
    Left = 95
    Top = 123
    object ImprimiNome: TMenuItem
      Caption = 'Imprime nome do Cliente'
      OnClick = ImprimiNomeClick
    end
    object NaoImprimiNome: TMenuItem
      Caption = 'N'#227'o Imprime nome do Cliente'
      OnClick = NaoImprimiNomeClick
    end
  end
  object pmRelatorioCaixa: TPopupMenu
    Left = 176
    Top = 128
    object detalhado1: TMenuItem
      Caption = 'Detalhado'
      OnClick = detalhado1Click
    end
    object resumido1: TMenuItem
      Caption = 'Resumido'
      OnClick = resumido1Click
    end
  end
  object qrConferencia: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select sum(total_forma) as total_forma, desc_forma from ('
      
        'select case ci.tipo_movimento when '#39'E'#39' then sum(ci.valor) else s' +
        'um(-ci.valor) end as total_forma,'
      'fp.for_002 as desc_forma'
      'from caixaitem ci'
      
        'join caixa c on c.id_caixa=ci.id_caixa and ci.id_empresa=c.id_em' +
        'presa'
      
        'join formapgto fp on ci.id_empresa=fp.emp_001 and ci.id_formapgt' +
        'o=fp.for_001'
      'where c.id_caixa=:id_caixa and c.id_empresa=:emp'
      '-- n'#227'o traz as vendas cancelas'
      'and ci.id_venda not in'
      '(select sci.id_venda '
      'from caixaitem sci'
      
        'join venda sv on sv.ven_001=sci.id_venda and sv.emp_001=sci.id_e' +
        'mpresa'
      
        'where sci.id_caixa=:id_caixa and sci.id_empresa=:emp and sv.sit_' +
        '001=2)'
      
        'group by ci.id_caixa, ci.id_empresa, fp.for_002, ci.tipo_movimen' +
        'to'
      ''
      'union all'
      ''
      'select '
      'valor_inicial as total_forma, '#39'DINHEIRO'#39' as desc_forma'
      'from caixa c'
      'where c.id_caixa=:id_caixa and c.id_empresa=:emp) as sub'
      ''
      'group by desc_forma'
      'order by desc_forma')
    Left = 1008
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_caixa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrConferenciatotal_forma: TFloatField
      FieldName = 'total_forma'
      ReadOnly = True
    end
    object qrConferenciadesc_forma: TWideMemoField
      FieldName = 'desc_forma'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
end
