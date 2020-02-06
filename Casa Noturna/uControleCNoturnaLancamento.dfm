object frmControleCNoturnaLancamento: TfrmControleCNoturnaLancamento
  Left = 0
  Top = 0
  Caption = 'frmControleCNoturnaLancamento'
  ClientHeight = 554
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TAdvPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 554
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
    DesignSize = (
      937
      554)
    FullHeight = 200
    object pnDireito: TPanel
      Left = 512
      Top = 0
      Width = 425
      Height = 554
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object pnCategoria: TPanel
        Left = 1
        Top = 1
        Width = 423
        Height = 176
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object DBCtrlGridCategoria: TDBCtrlGrid
          Left = 0
          Top = 0
          Width = 423
          Height = 176
          Align = alClient
          ColCount = 3
          DataSource = dsCategoria
          PanelBorder = gbNone
          PanelHeight = 88
          PanelWidth = 135
          TabOrder = 0
          RowCount = 2
          SelectedColor = 12691076
          OnClick = DBCtrlGridCategoriaClick
          OnPaintPanel = DBCtrlGridCategoriaPaintPanel
          object pnItemCat: TPanel
            Left = 5
            Top = 7
            Width = 124
            Height = 75
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            OnClick = DBCtrlGridCategoriaClick
            object imgCategoria: TImage
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 39
              Height = 71
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alLeft
              Center = True
              Proportional = True
              OnClick = DBCtrlGridCategoriaClick
              ExplicitLeft = 10
              ExplicitTop = 8
              ExplicitHeight = 41
            end
            object lbCategoria: TcxDBLabel
              AlignWithMargins = True
              Left = 46
              Top = 3
              Align = alClient
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = dsCategoria
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clBtnShadow
              Properties.WordWrap = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              Transparent = True
              OnClick = DBCtrlGridCategoriaClick
              Height = 69
              Width = 75
              AnchorX = 84
              AnchorY = 38
            end
          end
        end
      end
      object pnLabelProdutos: TPanel
        Left = 1
        Top = 177
        Width = 423
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Color = clHotLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object DBCtrlGridProduto: TDBCtrlGrid
        Left = 1
        Top = 193
        Width = 423
        Height = 360
        Align = alClient
        ColCount = 3
        DataSource = dsBuscaItem
        PanelBorder = gbNone
        PanelHeight = 60
        PanelWidth = 135
        TabOrder = 2
        RowCount = 6
        SelectedColor = 12691076
        OnClick = DBCtrlGridProdutoClick
        OnPaintPanel = DBCtrlGridProdutoPaintPanel
        object Panel1: TPanel
          Left = 5
          Top = 6
          Width = 124
          Height = 48
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object imgProduto: TImage
            AlignWithMargins = True
            Left = 2
            Top = 2
            Width = 64
            Height = 44
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            Center = True
            Proportional = True
            ExplicitLeft = 10
            ExplicitTop = 0
            ExplicitHeight = 51
          end
          object lbDescProduto: TcxDBLabel
            Left = 68
            Top = 0
            Align = alClient
            DataBinding.DataField = 'descricao'
            DataBinding.DataSource = dsBuscaItem
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clBtnShadow
            Properties.WordWrap = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            Transparent = True
            Height = 48
            Width = 56
            AnchorX = 96
            AnchorY = 24
          end
        end
      end
    end
    object pnDadosVenda: TPanel
      Left = 7
      Top = 9
      Width = 499
      Height = 144
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        499
        144)
      object Label1: TLabel
        Left = 9
        Top = 8
        Width = 55
        Height = 25
        Caption = 'Ficha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 384
        Top = 8
        Width = 98
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'N'#176' Venda'
        FocusControl = cxDBSpinEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 247
      end
      object lbUsuario: TLabel
        Left = 9
        Top = 111
        Width = 481
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 439
      end
      object edNumeroComanda: TEdit
        Left = 9
        Top = 39
        Width = 369
        Height = 33
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        OnExit = edNumeroComandaExit
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 384
        Top = 39
        TabStop = False
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'numero_venda'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Properties.UseNullString = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 106
      end
      object edNomeCliente: TcxDBTextEdit
        Left = 9
        Top = 78
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'nome_cliente'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 481
      end
    end
    object Panel2: TPanel
      Left = 7
      Top = 159
      Width = 499
      Height = 388
      Anchors = [akLeft, akTop, akBottom]
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        499
        388)
      object Label3: TLabel
        Left = 9
        Top = 10
        Width = 155
        Height = 23
        Caption = 'C'#243'digo do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 202
        Top = 9
        Width = 97
        Height = 23
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edCodProduto: TEdit
        Left = 9
        Top = 38
        Width = 187
        Height = 33
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        OnExit = edCodProdutoExit
      end
      object edQuantidade: TcxDBCurrencyEdit
        Left = 202
        Top = 38
        AutoSize = False
        DataBinding.DataField = 'quantidade'
        DataBinding.DataSource = dsBuscaItem
        ParentFont = False
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.000'
        Properties.EditFormat = '0.000'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 34
        Width = 115
      end
      object btQtdeMais: TAdvGlowButton
        Left = 323
        Top = 38
        Width = 40
        Height = 34
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btQtdeMaisClick
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
      object btQtdeMenos: TAdvGlowButton
        Left = 366
        Top = 38
        Width = 40
        Height = 34
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btQtdeMenosClick
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
      object btInserir: TAdvGlowButton
        AlignWithMargins = True
        Left = 412
        Top = 11
        Width = 78
        Height = 61
        Hint = 'Inserir item'
        Caption = 'Adicionar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = btInserirClick
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
      object AdvGroupBox2: TAdvGroupBox
        AlignWithMargins = True
        Left = 9
        Top = 145
        Width = 481
        Height = 43
        BorderColor = clNavy
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        object btKb2_0: TAdvGlowButton
          Left = 356
          Top = 5
          Width = 39
          Height = 31
          Caption = '0'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 9
          OnClick = btKb2_0Click
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
        object btKb2_2: TAdvGlowButton
          Left = 44
          Top = 5
          Width = 39
          Height = 31
          Caption = '2'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = btKb2_2Click
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
        object btKb2_1: TAdvGlowButton
          Left = 5
          Top = 5
          Width = 39
          Height = 31
          Caption = '1'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btKb2_1Click
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
        object btKb2_3: TAdvGlowButton
          Left = 83
          Top = 5
          Width = 39
          Height = 31
          Caption = '3'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btKb2_3Click
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
        object btKb2_4: TAdvGlowButton
          Left = 122
          Top = 5
          Width = 39
          Height = 31
          Caption = '4'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btKb2_4Click
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
        object btKb2_5: TAdvGlowButton
          Left = 161
          Top = 5
          Width = 39
          Height = 31
          Caption = '5'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 4
          OnClick = btKb2_5Click
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
        object btKb2_6: TAdvGlowButton
          Left = 200
          Top = 5
          Width = 39
          Height = 31
          Caption = '6'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          OnClick = btKb2_6Click
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
        object btKb2_7: TAdvGlowButton
          Left = 239
          Top = 5
          Width = 39
          Height = 31
          Caption = '7'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 6
          OnClick = btKb2_7Click
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
        object btKb2_8: TAdvGlowButton
          Left = 278
          Top = 5
          Width = 39
          Height = 31
          Caption = '8'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 7
          OnClick = btKb2_8Click
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
        object btKb2_9: TAdvGlowButton
          Left = 317
          Top = 5
          Width = 39
          Height = 31
          Caption = '9'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 8
          OnClick = btKb2_9Click
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
        object btKb2_virg: TAdvGlowButton
          Left = 395
          Top = 5
          Width = 39
          Height = 31
          Caption = ','
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 10
          OnClick = btKb2_virgClick
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
        object btKb3_BackSpace: TAdvGlowButton
          Left = 434
          Top = 5
          Width = 39
          Height = 31
          Caption = #11013
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 11
          OnClick = btKb3_BackSpaceClick
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
      object cxGrid1: TcxGrid
        AlignWithMargins = True
        Left = 9
        Top = 194
        Width = 481
        Height = 135
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 6
        TabStop = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVendaItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Cod.'
            DataBinding.FieldName = 'cod_referencia'
            Width = 47
          end
          object cxGrid1DBTableView1descricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            Options.Editing = False
            Width = 233
          end
          object cxGrid1DBTableView1quantidade: TcxGridDBColumn
            Caption = 'Qtd.'
            DataBinding.FieldName = 'quantidade'
            Options.Editing = False
            Options.Filtering = False
            Options.AutoWidthSizable = False
            Width = 55
          end
          object cxGrid1DBTableView1valor_unitario: TcxGridDBColumn
            DataBinding.FieldName = 'valor_unitario'
            Options.Editing = False
            Options.Filtering = False
            Options.AutoWidthSizable = False
            Width = 70
          end
          object cxGrid1DBTableView1valor_acrescimo: TcxGridDBColumn
            DataBinding.FieldName = 'valor_acrescimo'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 51
          end
          object cxGrid1DBTableView1valor_total: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'valor_total'
            Options.Editing = False
            Options.Filtering = False
            Options.AutoWidthSizable = False
            Width = 70
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 0
                Kind = bkGlyph
              end>
            Properties.Images = frmMenu.ImgList24
            Visible = False
            Options.ShowEditButtons = isebAlways
            Options.AutoWidthSizable = False
            Width = 33
          end
        end
        object cxGrid1DBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'item'
          DataController.MasterKeyFieldNames = 'item'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          LayoutDirection = ldVertical
          OptionsCustomize.CardExpanding = True
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CardAutoWidth = True
          OptionsView.CardBorderWidth = 1
          OptionsView.CardIndent = 0
          OptionsView.CardWidth = 500
          OptionsView.EmptyRows = False
          OptionsView.SeparatorWidth = 0
          object cxGrid1DBCardView1descricao: TcxGridDBCardViewRow
            Caption = 'Opcional'
            DataBinding.FieldName = 'descricao'
            Options.Editing = False
            Options.Filtering = False
            Position.BeginsLayer = True
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object btConfirma: TAdvGlowButton
        AlignWithMargins = True
        Left = 9
        Top = 335
        Width = 155
        Height = 47
        Margins.Left = 0
        Action = acLancarPedido
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
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
      object pnDescProduto: TPanel
        Left = 0
        Top = 72
        Width = 499
        Height = 73
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 8
        object DBText3: TDBText
          Left = 9
          Top = 2
          Width = 365
          Height = 19
          DataField = 'descricao'
          DataSource = dsBuscaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 385
          Top = 6
          Width = 58
          Height = 18
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'cod_ref'
          DataSource = dsBuscaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 9
          Top = 27
          Width = 41
          Height = 18
          Caption = 'Qtde.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 129
          Top = 27
          Width = 78
          Height = 18
          Alignment = taRightJustify
          Caption = 'Valor unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 8
          Top = 48
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'quantidade'
          DataSource = dsBuscaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 132
          Top = 48
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'valor_unit'
          DataSource = dsBuscaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 260
          Top = 48
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'valor_acrescimo'
          DataSource = dsBuscaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 259
          Top = 27
          Width = 77
          Height = 18
          Alignment = taRightJustify
          Caption = 'Acr'#233'scimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 385
          Top = 48
          Width = 58
          Height = 18
          AutoSize = True
          DataField = 'valor_total'
          DataSource = dsBuscaItem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 385
          Top = 27
          Width = 75
          Height = 18
          Alignment = taRightJustify
          Caption = 'Total item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object AdvGlowButton1: TAdvGlowButton
        AlignWithMargins = True
        Left = 167
        Top = 335
        Width = 155
        Height = 47
        Margins.Left = 0
        Action = acCancelarItem
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 44
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 9
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
      object AdvGlowButton2: TAdvGlowButton
        AlignWithMargins = True
        Left = 325
        Top = 335
        Width = 155
        Height = 47
        Margins.Left = 0
        Action = acObservacoesItem
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 20
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 10
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
  object qrCategoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select c.cat_001 as id_categoria, c.cat_002 as descricao, c.b_ex' +
        'ibir_icone, c.arquivo_img , sub_mat.nro_produtos from categoria ' +
        'c'
      'join '
      
        ' (select cat_001, emp_001 , count(1) as nro_produtos from materi' +
        'ais where sit_001=4 group by cat_001 , emp_001 ) sub_mat'
      ' on sub_mat.cat_001=c.cat_001 and c.emp_001=sub_mat.emp_001'
      'where c.sit_001=4 and c.emp_001=:id_empresa'
      'order by  sub_mat.nro_produtos desc')
    Left = 608
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrCategoriaid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Required = True
    end
    object qrCategoriadescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 40
    end
    object qrCategoriab_exibir_icone: TBooleanField
      FieldName = 'b_exibir_icone'
    end
    object qrCategoriaarquivo_img: TWideStringField
      FieldName = 'arquivo_img'
      Size = 200
    end
    object qrCategorianro_produtos: TLargeintField
      FieldName = 'nro_produtos'
      ReadOnly = True
    end
  end
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = qrCategoria
    Left = 688
    Top = 64
  end
  object qrBuscaItem: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE materiais'
      'SET'
      '  mat_001 = :mat_001'
      'WHERE'
      '  mat_001 = :Old_mat_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mat_001 as id_material, '
      'm.mat_003 as descricao,'
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
      'u.uni_003 as unidade , '
      'case when m.b_venda_tamanho then'
      '  case m.tamanho_padrao'
      '    when '#39'P'#39' then m.valor_tam_p'
      '    when '#39'M'#39' then m.valor_tam_m'
      '    when '#39'G'#39' then m.valor_tam_g'
      '    when '#39'GG'#39' then m.valor_tam_gg'
      '    when '#39'E'#39' then m.valor_tam_extra'
      '    else m.mat_008'
      '   end '
      'else'
      '  m.mat_008'
      'end as valor_unit,'
      'm.mat_008 as valor_unit_old,  '
      'mat_004 as cod_ref,'
      '1.00 as quantidade,'
      'coalesce(ui.ite_001, 0) as ultimo_item,'
      'coalesce(ui.id_garcom, default_garcom.usu_001) as id_garcom,'
      'coalesce(g.usu_002,  default_garcom.usu_002) as nome_garcom,'
      'coalesce(m.mat_021, 0) as cod_impressora,'
      'm.tamanho_padrao,'
      'm.b_venda_tamanho,'
      'm.valor_tam_p,'
      'm.valor_tam_m,'
      'm.valor_tam_g,'
      'm.valor_tam_gg,'
      'm.valor_tam_extra,'
      'm.b_peso_balanca,'
      'm.cat_001 as id_categoria,'
      'm.b_exige_alterar_preco_venda,'
      'm.b_exige_70pc_valor_unit,'
      'm.arquivo_img'
      'from materiais m'
      
        'join unidades u on m.uni_001 = u.uni_001 and m.emp_001 =u.emp_00' +
        '1'
      
        'left join (select gar_001 as id_garcom, ite_001, ite_013 from ve' +
        'ndaitem where ven_001=:id_venda and emp_001=:emp order by ite_00' +
        '1 desc limit 1) ui on true'
      'left join usuarios g on g.usu_001=ui.id_garcom '
      
        'left join (select usu_001 , usu_002 from usuarios where b_funcao' +
        '_garcom and sit_001=4 order by 1  limit 1 ) default_garcom on tr' +
        'ue'
      'join desc_tamanho_material dm on dm.id_empresa=m.emp_001'
      'where  m.emp_001=:id_empresa and m.sit_001=4'
      '--deixar essa linha para filtro'
      'order by m.mat_003')
    Options.StrictUpdate = False
    Options.FlatBuffers = True
    AutoCalcFields = False
    BeforeScroll = qrBuscaItemBeforeScroll
    OnCalcFields = qrBuscaItemCalcFields
    Left = 600
    Top = 152
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
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrBuscaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrBuscaItemdescricao: TWideStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInWhere]
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
      EditFormat = '#,##0.00'
      currency = True
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
    end
    object qrBuscaItemid_garcom: TIntegerField
      FieldName = 'id_garcom'
    end
    object qrBuscaItemnome_garcom: TWideStringField
      FieldName = 'nome_garcom'
      Size = 40
    end
    object qrBuscaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
      ReadOnly = True
    end
    object qrBuscaItemvalor_unit_old: TFloatField
      FieldName = 'valor_unit_old'
      Required = True
    end
    object qrBuscaItemquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = '0.000'
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
    object qrBuscaItemvalor_acrescimo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_acrescimo'
      currency = True
      Calculated = True
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
    object qrBuscaItemb_exige_70pc_valor_unit: TBooleanField
      FieldName = 'b_exige_70pc_valor_unit'
      Required = True
    end
    object qrBuscaItemarquivo_img: TWideStringField
      FieldName = 'arquivo_img'
      Size = 200
    end
  end
  object dsBuscaItem: TDataSource
    DataSet = qrBuscaItem
    Left = 680
    Top = 288
  end
  object qrVenda: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_026 as numero_comanda, '
      'v.ven_029 as numero_venda, '
      'v.ven_001 as id_venda,'
      'c.cli_002 as nome_cliente,'
      'c.cli_004 as cpf_cliente,'
      'c.cli_005 as rg_cliente,'
      'v.valor_consumacao,'
      'v.valor_entrada,'
      'v.valor_limite,'
      'v.ven_009 as valor_venda,'
      
        'cast(concat(c.cli_004, '#39' - '#39', c.cli_002 ) as varchar(100))  as c' +
        'pf_nome,'
      
        'cast(concat(c.cli_005, '#39' - '#39', c.cli_002 ) as varchar(100))  as r' +
        'g_nome'
      'from venda v'
      'join clientes c on c.cli_001 = v.cli_001 and v.emp_001=c.emp_001'
      'where v.ven_026=:numero_comanda and v.emp_001=:id_empresa '
      'and v.sit_001=8 -- situa'#231#227'o 8 =  venda comanda em aberto')
    AfterOpen = qrVendaAfterOpen
    Left = 264
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'numero_comanda'
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrVendaid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object qrVendacpf_cliente: TWideStringField
      FieldName = 'cpf_cliente'
      ReadOnly = True
    end
    object qrVendarg_cliente: TWideStringField
      FieldName = 'rg_cliente'
      ReadOnly = True
    end
    object qrVendavalor_consumacao: TFloatField
      FieldName = 'valor_consumacao'
      Required = True
    end
    object qrVendavalor_entrada: TFloatField
      FieldName = 'valor_entrada'
      Required = True
    end
    object qrVendavalor_limite: TFloatField
      FieldName = 'valor_limite'
      Required = True
    end
    object qrVendavalor_venda: TFloatField
      FieldName = 'valor_venda'
    end
    object qrVendacpf_nome: TWideStringField
      FieldName = 'cpf_nome'
      ReadOnly = True
      Size = 100
    end
    object qrVendarg_nome: TWideStringField
      FieldName = 'rg_nome'
      ReadOnly = True
      Size = 100
    end
    object qrVendanumero_comanda: TIntegerField
      FieldName = 'numero_comanda'
    end
    object qrVendanumero_venda: TIntegerField
      FieldName = 'numero_venda'
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    Left = 312
    Top = 120
  end
  object cdsVendaItem: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'id_material'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'quantidade'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'valor_unitario'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'cod_referencia'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'observacao'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'cod_impressora'
        DataType = ftInteger
      end
      item
        Name = 'b_venda_tamanho'
        DataType = ftBoolean
      end
      item
        Name = 'tamanho'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'item_fracionado'
        DataType = ftInteger
      end
      item
        Name = 'tamanho_descricao'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'valor_acrescimo'
        DataType = ftFloat
      end
      item
        Name = 'item'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'desconto'
        DataType = ftFloat
      end
      item
        Name = 'descricao'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'numero_pedido'
        DataType = ftInteger
      end
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
        Name = 'id_garcom'
        DataType = ftInteger
      end
      item
        Name = 'item_impresso'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'pendente_impressao'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'id_situacao'
        DataType = ftInteger
      end
      item
        Name = 'quantidade_impressao'
        DataType = ftFloat
      end
      item
        Name = 'data_hora_lancamento'
        DataType = ftDateTime
      end
      item
        Name = 'novo_item'
        Attributes = [faReadonly]
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'cdsItensInseridosIndex1'
        Fields = 'item'
      end>
    Params = <>
    ProviderName = 'dspVendaItem'
    StoreDefs = True
    AfterOpen = cdsVendaItemAfterPost
    AfterPost = cdsVendaItemAfterPost
    Left = 768
    Top = 416
    object cdsVendaItemdescricao: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao'
      Size = 100
    end
    object cdsVendaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
    end
    object cdsVendaItemcod_referencia: TWideStringField
      FieldName = 'cod_referencia'
      Size = 50
    end
    object cdsVendaItemobservacao: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Size = 200
    end
    object cdsVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object cdsVendaItemquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
      DisplayFormat = '0.000'
    end
    object cdsVendaItemvalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unitario'
      Required = True
      DisplayFormat = '0.000'
      currency = True
    end
    object cdsVendaItemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      DisplayFormat = '0.000'
      currency = True
    end
    object cdsVendaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object cdsVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object cdsVendaItemtamanho_descricao: TWideStringField
      FieldName = 'tamanho_descricao'
      Size = 100
    end
    object cdsVendaItemtamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object cdsVendaItemvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object cdsVendaItemitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object cdsVendaItemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object cdsVendaItemnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
    end
    object cdsVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object cdsVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object cdsVendaItemid_garcom: TIntegerField
      FieldName = 'id_garcom'
    end
    object cdsVendaItemitem_impresso: TWideStringField
      FieldName = 'item_impresso'
      Size = 1
    end
    object cdsVendaItempendente_impressao: TWideStringField
      FieldName = 'pendente_impressao'
      Size = 1
    end
    object cdsVendaItemid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object cdsVendaItemquantidade_impressao: TFloatField
      FieldName = 'quantidade_impressao'
    end
    object cdsVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
    end
    object cdsVendaItemnovo_item: TBooleanField
      FieldName = 'novo_item'
    end
    object cdsVendaItemvalor_total2: TAggregateField
      FieldName = 'valor_total_itens'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor_total)'
    end
  end
  object dsVendaItem: TDataSource
    AutoEdit = False
    DataSet = cdsVendaItem
    Left = 552
    Top = 417
  end
  object dspVendaItem: TDataSetProvider
    DataSet = qrVendaItem
    Left = 696
    Top = 416
  end
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      '  (emp_001, ven_001, ite_001, mat_001, '
      '   ite_002, ite_003, ite_005, ite_006, '
      '   ite_008, data_hora_lancamento, sit_001, ite_011, '
      '   ite_013, gar_001, desconto, '
      '   tamanho, b_venda_tamanho, item_fracionado, '
      '   quantidade_impressao, acrescimo)'
      'VALUES'
      '  (:id_empresa, :id_venda, :item, :id_material, '
      '   :quantidade, :valor_unitario, :valor_total, :observacao, '
      
        '   :item_impresso, localtimestamp, :id_situacao, :pendente_impre' +
        'ssao, '
      '   :cod_impressora, :id_garcom, :desconto, '
      '   :tamanho, :b_venda_tamanho, :item_fracionado, '
      '   :quantidade_impressao, :valor_acrescimo)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :id_empresa, ven_001 = :id_venda, ite_001 = :item, m' +
        'at_001 = :id_material, '
      
        '  ite_002 = :quantidade, ite_003 = :valor_unitario, ite_005 = :v' +
        'alor_total, ite_006 = :observacao, '
      
        '  ite_008 = :item_impresso, data_hora_lancamento = :data_hora_la' +
        'ncamento, sit_001 = :id_situacao, ite_011 = :pendente_impressao,' +
        ' '
      
        '  ite_013 = :cod_impressora, gar_001 = :id_garcom, desconto = :d' +
        'esconto, '
      
        '  tamanho = :tamanho, b_venda_tamanho = :b_venda_tamanho, item_f' +
        'racionado = :item_fracionado,'
      '  quantidade_impressao =:quantidade_impressao'
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
        '_005, ite_006, ite_008, ite_009, sit_001, ite_011, ite_012, ite_' +
        '013, gar_001, desconto, tamanho, b_venda_tamanho, item_fracionad' +
        'o FROM vendaitem'
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
      'SELECT '
      'ite.emp_001 as id_empresa,'
      'ite.ven_001 as id_venda,'
      'ite.gar_001 as id_garcom,'
      'ite.mat_001 as id_material,'
      'ite.ite_002 as quantidade,'
      'ite.ite_003 as valor_unitario,'
      'ite.ite_005 as valor_total,'
      'mat.mat_004 as cod_referencia,'
      'ite.ite_006 as observacao,'
      'ite.ite_013 as cod_impressora,'
      'ite.ite_008 as item_impresso,'
      'ite.ite_011 as pendente_impressao,'
      'ite.b_venda_tamanho,'
      'ite.tamanho,'
      'ite.item_fracionado,'
      'cast(( '
      'case ite.tamanho'
      '  when '#39'P'#39' then  dm.tamanho_p'
      '  when '#39'M'#39' then  dm.tamanho_m'
      '  when '#39'G'#39' then  dm.tamanho_g'
      '  when '#39'GG'#39' then dm.tamanho_gg '
      '  when '#39'E'#39' then  dm.tamanho_extra'
      'else '#39#39' end ) as varchar(100)) as tamanho_descricao,'
      'ite.acrescimo as valor_acrescimo,'
      'ite.ite_001 as item,'
      'ite.desconto,'
      'cast(( '
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(mat.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      
        '    when '#39'E'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')' +
        ' '
      '  else mat.mat_003 end'
      'else '
      '  mat.mat_003'
      'end) as varchar(100)) as descricao,'
      'ite.numero_pedido,'
      'ite.sit_001 as id_situacao,'
      'ite.quantidade_impressao,'
      'ite.data_hora_lancamento,'
      'false as novo_item'
      'from vendaitem ite'
      
        'join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_0' +
        '01 = ite.mat_001)'
      
        'join venda ven on ite.ven_001=ven.ven_001 and ite.emp_001=ven.em' +
        'p_001'
      
        'left join mesa mes on mes.emp_001 = ven.emp_001 and mes.mes_001 ' +
        '= ven.ven_025'
      'join desc_tamanho_material dm on dm.id_empresa=ite.emp_001'
      'where ite.emp_001 = :id_empresa'
      'and   ite.ven_001 = :id_venda'
      'and not ite.sit_001 in (0,1,2,3)'
      'order by ite.ite_001')
    ReadOnly = True
    Left = 624
    Top = 416
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
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qrVendaItemvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      Required = True
    end
    object qrVendaItemvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object qrVendaItemcod_referencia: TWideStringField
      FieldName = 'cod_referencia'
      Size = 50
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemcod_impressora: TIntegerField
      FieldName = 'cod_impressora'
    end
    object qrVendaItemb_venda_tamanho: TBooleanField
      FieldName = 'b_venda_tamanho'
    end
    object qrVendaItemtamanho: TWideStringField
      FieldName = 'tamanho'
      Size = 2
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemtamanho_descricao: TWideStringField
      FieldName = 'tamanho_descricao'
      Size = 100
    end
    object qrVendaItemvalor_acrescimo: TFloatField
      FieldName = 'valor_acrescimo'
    end
    object qrVendaItemitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrVendaItemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaItemdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qrVendaItemnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
    end
    object qrVendaItemid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendaItemid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaItemid_garcom: TIntegerField
      FieldName = 'id_garcom'
    end
    object qrVendaItemitem_impresso: TWideStringField
      FieldName = 'item_impresso'
      Size = 1
    end
    object qrVendaItempendente_impressao: TWideStringField
      FieldName = 'pendente_impressao'
      Size = 1
    end
    object qrVendaItemid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
    object qrVendaItemquantidade_impressao: TFloatField
      FieldName = 'quantidade_impressao'
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
    end
    object qrVendaItemnovo_item: TBooleanField
      FieldName = 'novo_item'
    end
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList32
    Left = 544
    Top = 288
    object acLancarPedido: TAction
      Caption = 'Lan'#231'ar Pedido'
      ImageIndex = 1
      OnExecute = acLancarPedidoExecute
    end
    object acCancelarItem: TAction
      Caption = 'acCancelarItem'
      ImageIndex = 44
      OnExecute = acCancelarItemExecute
    end
    object acObservacoesItem: TAction
      Caption = 'acObservacoesItem'
      ImageIndex = 20
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
      
        '(:id_empresa, :id_venda, :id_material, :quantidade, :valor_unit,' +
        ' '
      ' :valor_total, :observacao,  :nro_item , :id_garcom,'
      ' :cod_impressora, '#39'N'#39', 4, '#39'S'#39', '#39'N'#39', '
      ' :tamanho, :b_venda_tamanho, :item_fracionado,'
      ' :quantidade_impressao, :desconto, :numero_pedido )'
      '')
    Left = 544
    Top = 352
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
end
