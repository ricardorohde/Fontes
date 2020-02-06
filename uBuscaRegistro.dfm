object frmBuscaRegistro: TfrmBuscaRegistro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 506
  ClientWidth = 764
  Color = clBtnFace
  Constraints.MinWidth = 660
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
    Width = 764
    Height = 457
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
      764
      457)
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 98
      Height = 16
      Caption = 'Termo de busca:'
    end
    object Label2: TLabel
      Left = 490
      Top = 8
      Width = 82
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Buscando por:'
      ExplicitLeft = 353
    end
    object cbCampoFiltro: TComboBox
      Left = 490
      Top = 27
      Width = 139
      Height = 24
      Style = csDropDownList
      Anchors = [akTop, akRight]
      TabOrder = 0
      TabStop = False
      Items.Strings = (
        'Descri'#231#227'o')
    end
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 8
      Top = 60
      Width = 748
      Height = 388
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object edBusca: TEdit
      Left = 8
      Top = 27
      Width = 313
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      OnEnter = edBuscaEnter
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 637
      Top = 10
      Width = 119
      Height = 41
      Margins.Left = 0
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      ImageIndex = 6
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object grTecladoTouch: TAdvGroupBox
      Left = 0
      Top = 239
      Width = 764
      Height = 218
      BorderStyle = bsNone
      Align = alBottom
      TabOrder = 4
      object pnAjusteEsquerdo: TAdvGroupBox
        Left = 2
        Top = 3
        Width = 3
        Height = 213
        BorderStyle = bsNone
        Align = alLeft
        TabOrder = 0
      end
      object pnTecladoConteudo: TAdvGroupBox
        Left = 5
        Top = 3
        Width = 757
        Height = 213
        BorderStyle = bsNone
        Align = alClient
        TabOrder = 1
        object kbTeclado: TAdvSmoothTouchKeyBoard
          Left = 6
          Top = 3
          Width = 636
          Height = 212
          Text = ''
          AutoCompletion.Font.Charset = DEFAULT_CHARSET
          AutoCompletion.Font.Color = clWhite
          AutoCompletion.Font.Height = -19
          AutoCompletion.Font.Name = 'Tahoma'
          AutoCompletion.Font.Style = []
          AutoCompletion.Color = clBlack
          Fill.Color = 12691076
          Fill.ColorTo = 12691076
          Fill.ColorMirror = clNone
          Fill.ColorMirrorTo = clNone
          Fill.GradientType = gtVertical
          Fill.GradientMirrorType = gtSolid
          Fill.BorderColor = clNone
          Fill.Rounding = 0
          Fill.ShadowOffset = 0
          Fill.Glow = gmNone
          KeyboardType = ktQWERTY
          KeyDistance = 2
          Keys = <
            item
              KeyCombination = True
              ShiftKeyCombination = True
              Caption = '`'
              ShiftCaption = '~'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 1
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '1'
              ShiftCaption = '!'
              AltGrCaption = '|'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 43
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '2'
              ShiftCaption = '@'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 86
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '3'
              ShiftCaption = '#'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 128
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '4'
              ShiftCaption = '$'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 170
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '5'
              ShiftCaption = '%'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 212
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              ShiftKeyCombination = True
              Caption = '6'
              ShiftCaption = '^'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 255
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '7'
              ShiftCaption = '&'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 297
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '8'
              ShiftCaption = '*'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 339
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '9'
              ShiftCaption = '('
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 381
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '0'
              ShiftCaption = ')'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 424
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '-'
              ShiftCaption = '_'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 466
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '='
              ShiftCaption = '+'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 508
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '\'
              ShiftCaption = '|'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 550
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Back'
              KeyValue = 8
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skBackSpace
              Color = 10526880
              X = 593
              Y = 1
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '->'
              ShiftCaption = '<-'
              KeyValue = 9
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skTab
              Color = 10526880
              X = 1
              Y = 43
              Height = 42
              Width = 63
              SubKeys = <>
            end
            item
              Caption = 'Q'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 64
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'W'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 107
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'E'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 149
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #203
                end
                item
                  Caption = #202
                end
                item
                  Caption = #201
                end
                item
                  Caption = #200
                end
                item
                  Caption = #235
                end
                item
                  Caption = #234
                end
                item
                  Caption = #233
                end
                item
                  Caption = #232
                end>
            end
            item
              Caption = 'R'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 191
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'T'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 233
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Y'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 276
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #255
                end
                item
                  Caption = #221
                end
                item
                  Caption = #253
                end>
            end
            item
              Caption = 'U'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 318
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #220
                end
                item
                  Caption = #219
                end
                item
                  Caption = #218
                end
                item
                  Caption = #217
                end
                item
                  Caption = #252
                end
                item
                  Caption = #251
                end
                item
                  Caption = #250
                end
                item
                  Caption = #249
                end>
            end
            item
              Caption = 'I'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 360
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #207
                end
                item
                  Caption = #206
                end
                item
                  Caption = #205
                end
                item
                  Caption = #204
                end
                item
                  Caption = #239
                end
                item
                  Caption = #238
                end
                item
                  Caption = #237
                end
                item
                  Caption = #236
                end>
            end
            item
              Caption = 'O'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 403
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #214
                end
                item
                  Caption = #212
                end
                item
                  Caption = #211
                end
                item
                  Caption = #210
                end
                item
                  Caption = #246
                end
                item
                  Caption = #244
                end
                item
                  Caption = #243
                end
                item
                  Caption = #242
                end>
            end
            item
              Caption = 'P'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 445
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '['
              ShiftCaption = '{'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 487
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = ']'
              ShiftCaption = '}'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 529
              Y = 43
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Enter'
              KeyValue = 13
              ShiftKeyValue = 0
              AltGrKeyValue = 0
              SpecialKey = skReturn
              Color = 10526880
              X = 582
              Y = 43
              Height = 84
              Width = 53
              SubKeys = <>
            end
            item
              Caption = 'Caps Lock'
              KeyValue = 20
              ShiftKeyValue = 0
              AltGrKeyValue = 0
              SpecialKey = skCaps
              Color = 10526880
              X = 1
              Y = 85
              Height = 42
              Width = 74
              SubKeys = <>
            end
            item
              Caption = 'A'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 75
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #196
                end
                item
                  Caption = #194
                end
                item
                  Caption = #193
                end
                item
                  Caption = #192
                end
                item
                  Caption = #228
                end
                item
                  Caption = #226
                end
                item
                  Caption = #225
                end
                item
                  Caption = #224
                end>
            end
            item
              Caption = 'S'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 117
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'D'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 160
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'F'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 202
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'G'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 244
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'H'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 286
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'J'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 329
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'K'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 371
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'L'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 413
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = ';'
              ShiftCaption = ':'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 455
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = ','
              ShiftCaption = '"'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 498
              Y = 85
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Shift'
              KeyValue = 160
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skShift
              Color = 10526880
              X = 1
              Y = 127
              Height = 42
              Width = 85
              SubKeys = <>
            end
            item
              Caption = 'Z'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 86
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'X'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 128
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'C'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 170
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #231
                end>
            end
            item
              Caption = 'V'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 212
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'B'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 255
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'N'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 297
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <
                item
                  Caption = #209
                end
                item
                  Caption = #241
                end>
            end
            item
              Caption = 'M'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 339
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = ','
              ShiftCaption = '<'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 381
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '.'
              ShiftCaption = '>'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 424
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '/'
              ShiftCaption = '?'
              KeyValue = -1
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skNone
              X = 466
              Y = 127
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Shift'
              KeyValue = 161
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skShift
              Color = 10526880
              X = 508
              Y = 127
              Height = 42
              Width = 116
              SubKeys = <>
            end
            item
              Caption = 'Ctrl'
              KeyValue = 162
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skCtrl
              Color = 10526880
              X = 1
              Y = 169
              Height = 42
              Width = 63
              SubKeys = <>
            end
            item
              Caption = 'Win'
              KeyValue = 91
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skWin
              Color = 10526880
              X = 64
              Y = 169
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Alt'
              KeyValue = 18
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skAlt
              Color = 10526880
              X = 107
              Y = 169
              Height = 42
              Width = 63
              SubKeys = <>
            end
            item
              KeyValue = 32
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skSpaceBar
              X = 170
              Y = 169
              Height = 42
              Width = 254
              SubKeys = <>
            end
            item
              Caption = 'Alt Gr'
              KeyValue = 0
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skAltGr
              Color = 10526880
              X = 424
              Y = 169
              Height = 42
              Width = 63
              SubKeys = <>
            end
            item
              Caption = 'Win'
              KeyValue = 92
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skWin
              Color = 10526880
              X = 487
              Y = 169
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = 'Menu'
              KeyValue = 93
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skApp
              Color = 10526880
              X = 529
              Y = 169
              Height = 42
              Width = 42
              SubKeys = <>
            end
            item
              Caption = '->'
              KeyValue = 39
              ShiftKeyValue = -1
              AltGrKeyValue = -1
              SpecialKey = skRight
              Color = 10526880
              X = 572
              Y = 169
              Height = 42
              Width = 63
              SubKeys = <>
            end>
          SmallFont.Charset = DEFAULT_CHARSET
          SmallFont.Color = clWindowText
          SmallFont.Height = -9
          SmallFont.Name = 'Tahoma'
          SmallFont.Style = []
          Version = '1.8.4.1'
        end
      end
    end
    object ckTermoParcialBusca: TcxCheckBox
      Left = 324
      Top = 27
      TabStop = False
      Anchors = [akTop, akRight]
      Caption = 'Busca por termo parcial'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Transparent = True
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 457
    Width = 764
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 657
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Left = 550
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Confirma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
  end
  object qrBusca: TUniQuery
    Connection = frmMenu.conexao
    FetchRows = 50
    ReadOnly = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False')
    AfterOpen = qrBuscaAfterOpen
    Left = 440
    Top = 64
  end
  object dsBusca: TDataSource
    AutoEdit = False
    DataSet = qrBusca
    Left = 488
    Top = 64
  end
end
