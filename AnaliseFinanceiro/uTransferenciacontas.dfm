inherited frmTransferenciacontas: TfrmTransferenciacontas
  Caption = 'Transfer'#234'ncia entre contas'
  ClientHeight = 493
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 661
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Height = 444
    ExplicitHeight = 444
    FullHeight = 200
    object AdvGroupBox2: TAdvGroupBox
      Left = 8
      Top = 9
      Width = 625
      Height = 200
      BorderColor = clNavy
      TabOrder = 0
      object Label2: TLabel
        Left = 20
        Top = 63
        Width = 167
        Height = 16
        Caption = 'CONTA '#193' SER CREDITADA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBancoCreditado: TLabel
        Left = 191
        Top = 61
        Width = 45
        Height = 18
        Caption = 'Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblAgenciaCreditado: TLabel
        Left = 337
        Top = 61
        Width = 55
        Height = 18
        Caption = 'Ag'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblContaCreditado: TLabel
        Left = 20
        Top = 117
        Width = 43
        Height = 18
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTitularCreditado: TLabel
        Left = 337
        Top = 117
        Width = 45
        Height = 18
        Caption = 'Titular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 20
        Top = 8
        Width = 118
        Height = 18
        Caption = 'Selecione a conta '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edBuscaconta: TcxButtonEdit
        Left = 20
        Top = 32
        Properties.Buttons = <
          item
            Action = acBuscaconta
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 0
        OnExit = edBuscacontaExit
        Width = 121
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 8
      Top = 240
      Width = 625
      Height = 185
      BorderColor = clNavy
      TabOrder = 1
      object Label1: TLabel
        Left = 20
        Top = 22
        Width = 158
        Height = 16
        Caption = 'CONTA '#193' SER DEBITADA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAgencia: TLabel
        Left = 337
        Top = 20
        Width = 55
        Height = 18
        Caption = 'Ag'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblConta: TLabel
        Left = 20
        Top = 76
        Width = 43
        Height = 18
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblBanco: TLabel
        Left = 185
        Top = 20
        Width = 45
        Height = 18
        Caption = 'Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTitular: TLabel
        Left = 337
        Top = 76
        Width = 45
        Height = 18
        Caption = 'Titular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 128
        Top = 150
        Width = 146
        Height = 16
        Alignment = taRightJustify
        Caption = 'VALOR '#193' SER DEBITADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSaldoatual: TLabel
        Left = 20
        Top = 119
        Width = 76
        Height = 18
        Caption = 'Saldo Atual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edValor: TJvValidateEdit
        Tag = 1
        Left = 287
        Top = 145
        Width = 105
        Height = 24
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        HasMinValue = True
        ParentFont = False
        TabOrder = 0
        OnClick = edValorClick
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 444
    TabStop = True
    ExplicitTop = 444
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 536
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
      TabOrder = 0
      TabStop = True
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
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 417
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
      TabOrder = 1
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
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 450
    Top = 66
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 208
    Top = 128
    object acBuscaconta: TAction
      Caption = 'acBuscaconta'
      ImageIndex = 0
      OnExecute = acBuscacontaExecute
    end
  end
end
