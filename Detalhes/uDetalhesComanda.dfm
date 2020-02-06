inherited frmDetalhecomanda: TfrmDetalhecomanda
  Caption = 'GERAR COMANDAS'
  ClientHeight = 145
  ClientWidth = 463
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 469
  ExplicitHeight = 174
  PixelsPerInch = 96
  TextHeight = 16
  object Label9: TLabel [0]
    Left = 295
    Top = 134
    Width = 99
    Height = 16
    Caption = 'Numero da inicial'
  end
  object Label10: TLabel [1]
    Left = 170
    Top = 42
    Width = 99
    Height = 16
    Caption = 'Numero da inicial'
  end
  inherited pnPrincipal: TAdvPanel
    Width = 463
    Height = 96
    ExplicitWidth = 537
    ExplicitHeight = 96
    FullHeight = 200
    object AdvPanel1: TAdvPanel
      Left = 0
      Top = 0
      Width = 463
      Height = 96
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
      ExplicitWidth = 537
      FullHeight = 200
      object AdvGroupBox2: TAdvGroupBox
        Left = 2
        Top = 6
        Width = 459
        Height = 84
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        TabOrder = 0
        object Label8: TLabel
          Left = 166
          Top = 14
          Width = 81
          Height = 16
          Caption = 'Numero inicial'
        end
        object Label11: TLabel
          Left = 316
          Top = 14
          Width = 73
          Height = 16
          Caption = 'Numero final'
        end
        object Label1: TLabel
          Left = 6
          Top = 14
          Width = 55
          Height = 16
          Caption = 'Descri'#231#227'o'
        end
        object edNomecomanda: TEdit
          Left = 6
          Top = 32
          Width = 145
          Height = 29
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edComandainicial: TEdit
          Left = 166
          Top = 32
          Width = 135
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object edComandafinal: TEdit
          Left = 316
          Top = 32
          Width = 135
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 96
    Width = 463
    ExplicitTop = 96
    ExplicitWidth = 537
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 356
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Gerar'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 249
      Top = 3
      Width = 104
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
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 87
    Top = 14
  end
end
