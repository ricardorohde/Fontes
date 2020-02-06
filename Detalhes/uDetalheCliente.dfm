object frmDetalheCliente: TfrmDetalheCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CADASTRO DE CLIENTES'
  ClientHeight = 538
  ClientWidth = 819
  Color = 14997705
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
  object pgcontrol: TAdvPageControl
    Left = 0
    Top = 0
    Width = 819
    Height = 489
    ActivePage = AdvTabSheet1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clNavy
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = [fsBold]
    Align = alClient
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    DefaultTabColor = 14997705
    ActiveColor = 14997705
    TabBackGroundColor = 14997705
    TabMargin.RightMargin = 0
    TabOverlap = 0
    LowerActive = 1
    Version = '2.0.0.10'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'DADOS CADASTRAIS '
      Color = 14997705
      ColorTo = 12691076
      TabColor = 14997705
      TabColorTo = clNone
      object JvLabel10: TJvLabel
        Left = 559
        Top = 107
        Width = 77
        Height = 13
        Caption = 'COMPLEMENTO'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel11: TJvLabel
        Left = 326
        Top = 159
        Width = 119
        Height = 13
        Caption = 'PONTO DE REFER'#202'NCIA'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel12: TJvLabel
        Left = 773
        Top = 159
        Width = 15
        Height = 13
        Caption = 'UF'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel13: TJvLabel
        Left = 10
        Top = 211
        Width = 121
        Height = 13
        Caption = 'TELEFONE RESIDENCIAL'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel14: TJvLabel
        Left = 10
        Top = 265
        Width = 56
        Height = 13
        Caption = 'CPF / CNPJ'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel15: TJvLabel
        Left = 168
        Top = 211
        Width = 138
        Height = 13
        Caption = 'TELEFONE RESIDENCIAL (2)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel16: TJvLabel
        Left = 326
        Top = 211
        Width = 116
        Height = 13
        Caption = 'CELULAR 1 (PARA SMS)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel18: TJvLabel
        Left = 484
        Top = 211
        Width = 69
        Height = 13
        Caption = 'CELULAR ( 2 )'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel19: TJvLabel
        Left = 642
        Top = 211
        Width = 69
        Height = 13
        Caption = 'CELULAR ( 3 )'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel20: TJvLabel
        Left = 168
        Top = 265
        Width = 40
        Height = 13
        Caption = 'RG / I.E'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel25: TJvLabel
        Left = 326
        Top = 265
        Width = 32
        Height = 13
        Caption = 'EMAIL'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel3: TJvLabel
        Left = 595
        Top = 55
        Width = 90
        Height = 13
        Caption = 'C'#211'D. FIDELIDADE'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel4: TJvLabel
        Left = 10
        Top = 55
        Width = 116
        Height = 13
        Caption = 'NOME / RAZ'#195'O SOCIAL'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel5: TJvLabel
        Left = 691
        Top = 55
        Width = 87
        Height = 13
        Caption = 'DATA CADASTRO'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel6: TJvLabel
        Left = 10
        Top = 107
        Width = 21
        Height = 13
        Caption = 'CEP'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel7: TJvLabel
        Left = 166
        Top = 107
        Width = 56
        Height = 13
        Caption = 'ENDERE'#199'O'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel8: TJvLabel
        Left = 10
        Top = 159
        Width = 41
        Height = 13
        Caption = 'BAIRRO'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel9: TJvLabel
        Left = 484
        Top = 107
        Width = 45
        Height = 13
        Caption = 'N'#218'MERO'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object Label4: TLabel
        Left = 10
        Top = 7
        Width = 46
        Height = 16
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel1: TJvLabel
        Left = 529
        Top = 159
        Width = 40
        Height = 13
        Caption = 'CIDADE'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel2: TJvLabel
        Left = 484
        Top = 55
        Width = 98
        Height = 13
        Caption = 'DATA NASCIMENTO'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object JvLabel22: TJvLabel
        Left = 559
        Top = 265
        Width = 70
        Height = 13
        Caption = 'OBSERVA'#199#195'O'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -27
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = [fsBold]
      end
      object Label2: TLabel
        Left = 106
        Top = 7
        Width = 48
        Height = 16
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 106
        Top = 29
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'situacao'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 10
        Top = 29
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'cli_001'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 484
        Top = 7
        Width = 79
        Height = 16
        Caption = 'TIPO PESSOA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 635
        Top = 7
        Width = 76
        Height = 16
        Caption = 'SITUA'#199#195'O IE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 357
        Top = 7
        Width = 32
        Height = 16
        Caption = 'SEXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 166
        Top = 126
        DataBinding.DataField = 'cep_004'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Width = 312
      end
      object edNome: TcxDBTextEdit
        Left = 10
        Top = 74
        DataBinding.DataField = 'cli_002'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 468
      end
      object edRG: TDBEdit
        Left = 168
        Top = 284
        Width = 152
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_005'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
      object DBEdit11: TDBEdit
        Left = 168
        Top = 230
        Width = 152
        Height = 29
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_013'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit12: TDBEdit
        Left = 326
        Top = 230
        Width = 152
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'celular1'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit13: TDBEdit
        Left = 484
        Top = 230
        Width = 152
        Height = 29
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'celular2'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit14: TDBEdit
        Left = 642
        Top = 230
        Width = 160
        Height = 29
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_014'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object DBEdit15: TDBEdit
        Left = 326
        Top = 284
        Width = 227
        Height = 27
        AutoSize = False
        DataField = 'email'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object DBEdit2: TDBEdit
        Left = 595
        Top = 74
        Width = 90
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'codigo_fidelidade'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 326
        Top = 178
        Width = 197
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_007'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit5: TDBEdit
        Left = 559
        Top = 126
        Width = 243
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_009'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 484
        Top = 126
        Width = 69
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_008'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 773
        Top = 178
        Width = 29
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'uf'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object edCPFCNPJ: TDBEdit
        Left = 10
        Top = 284
        Width = 152
        Height = 27
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_004'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object DBEdit9: TDBEdit
        Left = 10
        Top = 230
        Width = 152
        Height = 29
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cli_012'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object grGrafico: TAdvGroupBox
        Left = 10
        Top = 317
        Width = 580
        Height = 137
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Conta corrente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        object JvLabel17: TJvLabel
          Left = 7
          Top = 36
          Width = 96
          Height = 16
          Caption = 'SALDO ATUAL:'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object JvLabel21: TJvLabel
          Left = 7
          Top = 73
          Width = 127
          Height = 16
          Caption = 'LIMITE DE CR'#201'DITO:'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = 14997705
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = [fsBold]
        end
        object dbedit21: TDBEdit
          Left = 140
          Top = 67
          Width = 110
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'limite_credito'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object dbedit20: TDBEdit
          Left = 141
          Top = 30
          Width = 110
          Height = 23
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'saldo_atual'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object btLancarCreditoCC: TAdvGlowButton
          Left = 375
          Top = 30
          Width = 191
          Height = 40
          Caption = 'Lancar Cr'#233'dito na conta'
          ImageIndex = 26
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btLancarCreditoCCClick
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
        object btLancarDebitoCC: TAdvGlowButton
          Left = 375
          Top = 83
          Width = 191
          Height = 40
          Caption = 'Lancar D'#233'bito na conta'
          ImageIndex = 27
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btLancarDebitoCCClick
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
          Left = 7
          Top = 104
          Caption = 'BLOQUEAR FIADO AO ATINGIR LIMITE DE CR'#201'DITO'
          DataBinding.DataField = 'b_limite_fiado'
          DataBinding.DataSource = dsDetalhe
          TabOrder = 4
        end
      end
      object AdvGroupBox1: TAdvGroupBox
        Left = 596
        Top = 317
        Width = 206
        Height = 66
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Pontos atuais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        object DBText1: TDBText
          Left = 68
          Top = 17
          Width = 65
          Height = 17
          Alignment = taCenter
          Color = clRed
          DataField = 'pontos_atuais'
          DataSource = dsDetalhe
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object btPontosMais: TAdvGlowButton
          Left = 66
          Top = 35
          Width = 30
          Height = 25
          ImageIndex = 3
          Images = frmMenu.ImgList16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btPontosMaisClick
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
        object btPontosMenos: TAdvGlowButton
          Left = 103
          Top = 35
          Width = 30
          Height = 25
          ImageIndex = 4
          Images = frmMenu.ImgList16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = btPontosMenosClick
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
      object edIdCep: TcxDBButtonEdit
        Tag = -1
        Left = 10
        Top = 126
        DataBinding.DataField = 'cep_002'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaCEP
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
        Width = 148
      end
      object edIDCidade: TcxDBButtonEdit
        Tag = -1
        Left = 529
        Top = 178
        TabStop = False
        DataBinding.DataField = 'cid_001'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaCidade
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 11
        Width = 24
      end
      object edCidadeDesc: TcxDBTextEdit
        Left = 559
        Top = 178
        DataBinding.DataField = 'cidade_desc'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Width = 208
      end
      object edIDBairro: TcxDBButtonEdit
        Tag = -1
        Left = 10
        Top = 178
        DataBinding.DataField = 'bai_001'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Properties.Buttons = <
          item
            Action = acBuscaBairro
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Width = 55
      end
      object DBEdit4: TDBEdit
        Left = 71
        Top = 178
        Width = 183
        Height = 27
        TabStop = False
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'cep_003'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 691
        Top = 74
        TabStop = False
        DataBinding.DataField = 'dat_001_1'
        DataBinding.DataSource = dsDetalhe
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 111
      end
      object btIncluirBairro: TAdvGlowButton
        Left = 260
        Top = 178
        Width = 27
        Height = 27
        Hint = 'Incluir bairro'
        ImageIndex = 2
        Images = frmMenu.ImgList16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        OnClick = btIncluirBairroClick
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
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 484
        Top = 74
        TabStop = False
        DataBinding.DataField = 'data_nascimento'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 105
      end
      object DBEdit1: TDBEdit
        Left = 559
        Top = 284
        Width = 243
        Height = 27
        AutoSize = False
        DataField = 'observacao'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object btEditarBairro: TAdvGlowButton
        Left = 293
        Top = 178
        Width = 27
        Height = 27
        Hint = 'Incluir bairro'
        ImageIndex = 10
        Images = frmMenu.ImgList16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 26
        OnClick = btEditarBairroClick
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
      object cbtipopessoa: TJvDBComboBox
        Left = 484
        Top = 26
        Width = 145
        Height = 27
        DataField = 'tipo_pessoa'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        ParentFont = False
        TabOrder = 27
        Values.Strings = (
          'F'
          'J')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
        OnChange = cbtipopessoaChange
      end
      object JvDBComboBox3: TJvDBComboBox
        Left = 635
        Top = 26
        Width = 167
        Height = 27
        DataField = 'situacao_ie'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Isento'
          'Contribuinte'
          'N'#227'o contribuinte')
        ParentFont = False
        TabOrder = 28
        Values.Strings = (
          'I'
          'C'
          'N')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBComboBox4: TJvDBComboBox
        Left = 357
        Top = 26
        Width = 121
        Height = 27
        DataField = 'sexo'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Feminino'
          'Masculino'
          'N'#227'o se aplica')
        ParentFont = False
        TabOrder = 29
        Values.Strings = (
          'F'
          'M'
          'N')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object btAtivar: TAdvGlowButton
        Left = 596
        Top = 386
        Width = 206
        Height = 32
        Caption = 'Ativar Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 30
        OnClick = btAtivarClick
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
      object btAtualizarSintegra: TAdvGlowButton
        Left = 596
        Top = 424
        Width = 206
        Height = 32
        Caption = 'Atualizar Sintegra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 16
        Images = frmMenu.ImgList24
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 31
        OnClick = btAtualizarSintegraClick
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
    object AdvTabSheet2: TAdvTabSheet
      Caption = 'BLOQUEIO'
      Color = 14997705
      ColorTo = clNone
      TabColor = 14997705
      TabColorTo = clNone
      object AdvGroupBox4: TAdvGroupBox
        Left = 440
        Top = 3
        Width = 367
        Height = 286
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Bloquear cliente para delivery'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          367
          286)
        object Label1: TLabel
          Left = 9
          Top = 26
          Width = 112
          Height = 16
          Caption = 'Motivo de bloqueio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 71
          Top = 215
          Width = 47
          Height = 16
          AutoSize = True
          DataField = 'situacao'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 215
          Width = 48
          Height = 16
          Caption = 'STATUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btBloquear: TAdvGlowButton
          Left = 9
          Top = 237
          Width = 150
          Height = 40
          Caption = 'Bloquear cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
          TabOrder = 0
          OnClick = btBloquearClick
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
        object btDesbloquear: TAdvGlowButton
          Left = 165
          Top = 237
          Width = 168
          Height = 40
          Caption = 'Desbloquear cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 0
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btDesbloquearClick
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
        object cxDBMemo1: TcxDBMemo
          Left = 9
          Top = 48
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'obs_bloqueio'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 161
          Width = 348
        end
      end
      object AdvGroupBox2: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 431
        Height = 286
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Caption = 'Fun'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label11: TLabel
          Left = 124
          Top = 22
          Width = 153
          Height = 16
          Caption = 'Data consulta SPC/ Serasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 126
          Top = 66
          Width = 151
          Height = 16
          Caption = 'Dia vencimento da parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 108
          Top = 111
          Width = 169
          Height = 16
          Caption = 'Dias de atraso para negativar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 78
          Top = 155
          Width = 199
          Height = 16
          Caption = 'N'#250'mero de dias para avisar cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 4
          Top = 201
          Width = 273
          Height = 16
          Caption = 'Taxa de juros ao m'#234's (vazio = Padr'#227'o sistema)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 113
          Top = 249
          Width = 164
          Height = 16
          Caption = 'Situa'#231#227'o cadastral do cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 291
          Top = 19
          DataBinding.DataField = 'data_consulta_spc'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 121
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 291
          Top = 63
          DataBinding.DataField = 'dia_vencimento'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyPress = cxDBSpinEdit1KeyPress
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 291
          Top = 152
          DataBinding.DataField = 'num_dias_aviso'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnKeyPress = cxDBSpinEdit2KeyPress
          Width = 121
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 291
          Top = 198
          DataBinding.DataField = 'taxa_juros'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyPress = cxDBCalcEdit1KeyPress
          Width = 121
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 289
          Top = 246
          Width = 123
          Height = 24
          DataField = 'id_situacao_spc'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Aprovado'
            'Em observacao'
            'Inativo'
            'Spc'
            'Bloqueado')
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 291
          Top = 108
          DataBinding.DataField = 'num_dias_atraso'
          DataBinding.DataSource = dsDetalhe
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyPress = cxDBSpinEdit3KeyPress
          Width = 121
        end
      end
    end
    object AdvTabSheet3: TAdvTabSheet
      Caption = 'DADOS ADICIONAIS'
      Color = 14997705
      ColorTo = clNone
      TabColor = 14997705
      TabColorTo = clNone
      object Label5: TLabel
        Left = 11
        Top = 11
        Width = 85
        Height = 19
        Caption = 'Filia'#231#227'o M'#227'e'
        FocusControl = cxDBTextEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 11
        Top = 69
        Width = 78
        Height = 19
        Caption = 'Filia'#231#227'o Pai'
        FocusControl = cxDBTextEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 243
        Width = 59
        Height = 19
        Caption = 'C'#244'njuge'
        FocusControl = cxDBTextEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 127
        Width = 64
        Height = 19
        Caption = 'Profiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 11
        Top = 185
        Width = 82
        Height = 19
        Caption = 'Estado Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 11
        Top = 301
        Width = 89
        Height = 19
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 11
        Top = 36
        DataBinding.DataField = 'filiacao_mae'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 460
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 11
        Top = 94
        DataBinding.DataField = 'filiacao_pai'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 460
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 11
        Top = 268
        DataBinding.DataField = 'nome_conjuge'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 460
      end
      object DBComboBox1: TDBComboBox
        Left = 11
        Top = 210
        Width = 460
        Height = 27
        DataField = 'estado_civil'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Solteiro(a)'
          'Casado(a)'
          'Divorciado(a)'
          'Vi'#250'vo(a)'
          'Separado(a)')
        ParentFont = False
        TabOrder = 3
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 11
        Top = 152
        DataBinding.DataField = 'profissao'
        DataBinding.DataSource = dsDetalhe
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 460
      end
      object DBMemo1: TDBMemo
        Left = 11
        Top = 326
        Width = 460
        Height = 89
        DataField = 'observacao'
        DataSource = dsDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
    end
    object AdvTabSheet4: TAdvTabSheet
      Caption = 'MOVIMENTO FINANCEIRO'
      Color = 14997705
      ColorTo = clNone
      TabColor = 14997705
      TabColorTo = clNone
      DesignSize = (
        811
        461)
      object JvLabel23: TJvLabel
        Left = 3
        Top = 2
        Width = 158
        Height = 16
        Caption = 'HIST'#211'RICO DE COMPRAS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = [fsBold]
      end
      object Label17: TLabel
        Left = 2
        Top = 441
        Width = 47
        Height = 18
        Anchors = [akLeft, akBottom]
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 486
      end
      object lblTotal: TLabel
        Left = 80
        Top = 438
        Width = 92
        Height = 23
        Anchors = [akLeft, akBottom]
        Caption = 'R$ 0,00 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 483
      end
      object JvLabel24: TJvLabel
        Left = 262
        Top = 3
        Width = 281
        Height = 16
        Caption = 'PRODUTOS COMPRADOS (TODAS AS NOTAS)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = 14997705
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = [fsBold]
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 18
        Width = 257
        Height = 413
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFinanceiro
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1id_venda: TcxGridDBColumn
            DataBinding.FieldName = 'id_venda'
            Options.Editing = False
            Width = 100
          end
          object cxGrid1DBTableView1data: TcxGridDBColumn
            DataBinding.FieldName = 'data'
            Options.Editing = False
            Width = 83
          end
          object cxGrid1DBTableView1valor_nota: TcxGridDBColumn
            DataBinding.FieldName = 'valor_nota'
            Options.Editing = False
            Width = 72
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid2: TcxGrid
        Left = 263
        Top = 18
        Width = 572
        Height = 222
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsProdutoscomprados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1id_produto: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'id_produto'
            Width = 62
          end
          object cxGrid2DBTableView1descricao: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'descricao'
            Width = 256
          end
          object cxGrid2DBTableView1quantidade: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'quantidade'
          end
          object cxGrid2DBTableView1valor_unitario: TcxGridDBColumn
            Caption = 'Valor unit'#225'rio'
            DataBinding.FieldName = 'valor_unitario'
            Width = 71
          end
          object cxGrid2DBTableView1valor_total: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'valor_total'
            Width = 89
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object pgcontrolContas: TAdvPageControl
        Left = 262
        Top = 242
        Width = 572
        Height = 216
        ActivePage = AdvTabSheet5
        ActiveFont.Charset = DEFAULT_CHARSET
        ActiveFont.Color = clWindowText
        ActiveFont.Height = -11
        ActiveFont.Name = 'Tahoma'
        ActiveFont.Style = []
        Anchors = [akLeft, akTop, akBottom]
        DoubleBuffered = True
        TabBackGroundColor = clBtnFace
        TabMargin.RightMargin = 0
        TabOverlap = 0
        Version = '2.0.0.10'
        PersistPagesState.Location = plRegistry
        PersistPagesState.Enabled = False
        TabOrder = 2
        object AdvTabSheet5: TAdvTabSheet
          Caption = 'Contas a receber'
          Color = 14997705
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          DesignSize = (
            564
            188)
          object cxGrid3: TcxGrid
            Left = 3
            Top = 3
            Width = 558
            Height = 182
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            object cxGrid3DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsContasareceber
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid3DBTableView1id_venda: TcxGridDBColumn
                DataBinding.FieldName = 'id_venda'
                Width = 109
              end
              object cxGrid3DBTableView1data_vencimento: TcxGridDBColumn
                DataBinding.FieldName = 'data_vencimento'
                Width = 113
              end
              object cxGrid3DBTableView1valor: TcxGridDBColumn
                DataBinding.FieldName = 'valor'
                Width = 121
              end
              object cxGrid3DBTableView1valor_pago: TcxGridDBColumn
                DataBinding.FieldName = 'valor_pago'
                Width = 117
              end
              object cxGrid3DBTableView1valor_restante: TcxGridDBColumn
                DataBinding.FieldName = 'valor_restante'
                Width = 112
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
        end
        object AdvTabSheet6: TAdvTabSheet
          Caption = 'Contas recebidas'
          Color = 14997705
          ColorTo = clNone
          TabColor = clBtnFace
          TabColorTo = clNone
          object cxGrid4: TcxGrid
            Left = -2
            Top = 0
            Width = 566
            Height = 233
            TabOrder = 0
            object cxGrid4DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsContasrecebidas
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid4DBTableView1id_venda: TcxGridDBColumn
                DataBinding.FieldName = 'id_venda'
                Width = 120
              end
              object cxGrid4DBTableView1data_vencimento: TcxGridDBColumn
                DataBinding.FieldName = 'data_vencimento'
                Width = 131
              end
              object cxGrid4DBTableView1valor_nota: TcxGridDBColumn
                DataBinding.FieldName = 'valor_nota'
                Width = 124
              end
              object cxGrid4DBTableView1data_pagamento: TcxGridDBColumn
                DataBinding.FieldName = 'data_pagamento'
                Width = 189
              end
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGrid4DBTableView1
            end
          end
        end
      end
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 489
    Width = 819
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 688
      Top = 3
      Width = 128
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar (F6)'
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
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
      Left = 557
      Top = 3
      Width = 128
      Height = 41
      Margins.Left = 0
      Caption = 'Salvar (F5)'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
      Left = 426
      Top = 3
      Width = 128
      Height = 41
      Margins.Left = 0
      Caption = 'Excluir (F4)'
      ImageIndex = 7
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 295
      Top = 3
      Width = 128
      Height = 41
      Margins.Left = 0
      Caption = 'Editar (F3)'
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 164
      Top = 3
      Width = 128
      Height = 41
      Margins.Left = 0
      Caption = 'Novo (F2)'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btNovoClick
      Appearance.BorderColor = clNavy
      Appearance.BorderColorDisabled = clNavy
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
    object btNovoSintegra: TAdvGlowButton
      AlignWithMargins = True
      Left = 6
      Top = 3
      Width = 155
      Height = 41
      Margins.Left = 0
      Caption = 'Novo Sintegra (F1)'
      ImageIndex = 58
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btNovoSintegraClick
      Appearance.BorderColor = clNavy
      Appearance.BorderColorDisabled = clNavy
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
  object qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clientes'
      
        '  (cli_001, cidade_desc, celular1, celular2, saldo_atual, limite' +
        '_credito, pontos_atuais, emp_001, cli_002, cli_003, cli_004, '
      
        '   cli_005, cli_006, cli_007, cli_008, cli_009, cep_004, cep_003' +
        ', cid_001, cep_002, cli_012, cli_013, cli_014,  '
      
        '   usu_001_1, usu_001_2, dat_001_1, dat_001_2, ram_001, for_001,' +
        ' con_001, cli_017, bai_001, observacao,'
      
        '   codigo_fidelidade, uf, b_limite_fiado, data_nascimento, email' +
        ', obs_bloqueio,'
      
        '   filiacao_mae, filiacao_pai, nome_conjuge, profissao, estado_c' +
        'ivil,'
      
        '   data_consulta_spc, dia_vencimento, num_dias_aviso, taxa_juros' +
        ', id_situacao_spc, num_dias_atraso, tipo_pessoa,'
      '   situacao_ie, sexo, tipo_cliente)'
      'VALUES'
      
        '  ((select coalesce(max(cli_001),0)+1 from clientes where emp_00' +
        '1=:emp_001 ), '
      
        '   :cidade_desc, :celular1 , :celular2, :saldo_atual, :limite_cr' +
        'edito, :pontos_atuais, :emp_001, :cli_002, :cli_003, :cli_004, '
      
        '   :cli_005, :cli_006, :cli_007, :cli_008, :cli_009, :cep_004, :' +
        'cep_003, :cid_001, :cep_002, :cli_012, :cli_013, :cli_014, '
      
        '   :usu_001_1, :usu_001_2, localtimestamp , :dat_001_2, :ram_001' +
        ', :for_001, :con_001, :cli_017, :bai_001,:observacao,'
      
        '   :codigo_fidelidade, :uf, :b_limite_fiado, :data_nascimento,:e' +
        'mail, :obs_bloqueio,:filiacao_mae,:filiacao_pai, :nome_conjuge, ' +
        ':profissao, :estado_civil,'
      
        '   :data_consulta_spc, :dia_vencimento, :num_dias_aviso, :taxa_j' +
        'uros, :id_situacao_spc, :num_dias_atraso, :tipo_pessoa,'
      '   :situacao_ie, :sexo,:tipo_cliente)')
    SQLDelete.Strings = (
      'DELETE FROM clientes'
      'WHERE'
      '  cli_001 = :Old_cli_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE clientes'
      'SET'
      
        '  cli_001 = :cli_001, celular1 = :celular1, celular2 = :celular2' +
        ', saldo_atual = :saldo_atual, '
      
        '  limite_credito = :limite_credito, pontos_atuais = :pontos_atua' +
        'is,  emp_001 = :emp_001, '
      
        '  cli_002 = :cli_002, cli_003 = :cli_003, cli_004 = :cli_004, cl' +
        'i_005 = :cli_005, cli_006 = :cli_006, '
      
        '  cli_007 = :cli_007, cli_008 = :cli_008, cli_009 = :cli_009, ce' +
        'p_004 = :cep_004, cep_003 = :cep_003, '
      
        '  cid_001 = :cid_001, cep_002 = :cep_002, cli_012 = :cli_012, cl' +
        'i_013 = :cli_013, cli_014 = :cli_014, '
      
        '  usu_001_1 = :usu_001_1, usu_001_2 = :usu_001_2, dat_001_1 = :d' +
        'at_001_1, '
      
        '  dat_001_2 = :dat_001_2, ram_001 = :ram_001, for_001 = :for_001' +
        ', con_001 = :con_001, '
      
        '  cli_017 = :cli_017, bai_001 = :bai_001, observacao = :observac' +
        'ao, cidade_desc = :cidade_desc,'
      
        '  codigo_fidelidade = :codigo_fidelidade, uf = :uf, b_limite_fia' +
        'do =:b_limite_fiado,'
      
        '  data_nascimento = :data_nascimento, email=:email, obs_bloqueio' +
        '=:obs_bloqueio, sit_001=:sit_001,'
      
        '  filiacao_mae = :filiacao_mae , filiacao_pai = :filiacao_pai, n' +
        'ome_conjuge = :nome_conjuge,'
      
        '  profissao = :profissao , estado_civil = :estado_civil, data_co' +
        'nsulta_spc =:data_consulta_spc, '
      '  dia_vencimento =:dia_vencimento,'
      '  num_dias_aviso  =:num_dias_aviso,'
      '  taxa_juros =:taxa_juros,'
      '  id_situacao_spc =:id_situacao_spc,'
      '  num_dias_atraso =:num_dias_atraso,'
      
        '  tipo_pessoa = :tipo_pessoa , situacao_ie = :situacao_ie, sexo ' +
        '= :sexo, tipo_cliente =:tipo_cliente'
      'WHERE '
      '  cli_001 = :Old_cli_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM clientes'
      'WHERE'
      '  cli_001 = :Old_cli_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT cli_001, emp_001, cli_002, cli_003, cli_004, cli_005, cli' +
        '_006, cli_007, cli_008, cli_009, cep_004, cep_003, cid_001, cep_' +
        '002, cli_012, cli_013, cli_014, cli_016, usu_001_1, usu_001_2, d' +
        'at_001_1, dat_001_2, ram_001, for_001, con_001, cli_017, bai_001' +
        ', cli_018 FROM clientes'
      'WHERE'
      '  cli_001 = :cli_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT CLI.CLI_001,'
      '       CLI.EMP_001,'
      '       CLI.CLI_002,'
      '       CLI.CLI_003,'
      '       CLI.CLI_004,'
      '       CLI.CLI_005,'
      '       CLI.CLI_006,'
      '       CLI.CLI_007,'
      '       CLI.CLI_008,'
      '       CLI.CLI_009,'
      '       CLI.CEP_004,'
      '       CLI.CEP_003,'
      '       CLI.CLI_012,'
      '       CLI.CLI_013,'
      '       CLI.CLI_014,'
      '       CLI.BAI_001,'
      '       cast(CLI.observacao as varchar(500)) as observacao ,'
      
        '       CAST(FN_SITUACOES(CLI.SIT_001)  AS VARCHAR(40)) AS SITUAC' +
        'AO,'
      '       CLI.tipo_pessoa,'
      '       CLI.CLI_017,'
      '       CLI.CID_001,'
      '       CLI.CEP_002,'
      '       CID.CID_002,'
      '       CLI.RAM_001,'
      '       CLI.FOR_001,'
      '       CLI.CON_001,'
      '       CLI.USU_001_1,'
      '       CLI.USU_001_2,'
      '       CLI.DAT_001_1,'
      '       CLI.DAT_001_2,'
      '       USU_1.USU_002 AS INCLUSAO,'
      '       USU_2.USU_002 AS EDICAO,'
      '       CLI.CELULAR1,'
      '       CLI.CELULAR2,'
      '       CLI.saldo_atual, '
      '       CLI.limite_credito, '
      '       CLI.pontos_atuais,'
      '       CLI.CIDADE_DESC,'
      '       cli.codigo_fidelidade, '
      '       cli.uf,'
      '       cli.b_limite_fiado,'
      '       cli.data_nascimento,'
      '       cli.email,'
      '       cli.obs_bloqueio,'
      '       CLI.SIT_001,'
      '       cli.filiacao_mae, '
      '       cli.filiacao_pai, '
      '       cli.nome_conjuge, '
      '       cli.profissao, '
      '       cli.estado_civil ,'
      '       cli.data_consulta_spc,'
      '       cli.dia_vencimento, '
      '       cli.num_dias_aviso, '
      '       cli.taxa_juros, '
      '       cli.id_situacao_spc,'
      '       cli.num_dias_atraso,'
      '       cli.situacao_ie,'
      '       cli.sexo,       '
      '       cli.tipo_cliente'
      ''
      'FROM CLIENTES CLI'
      'LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CLI.CID_001)'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = CLI.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = CLI.USU_001_2' +
        ')'
      'WHERE CLI.EMP_001 = :EMP'
      '  AND CLI.CLI_001 = :ID')
    BeforePost = qrDetalheBeforePost
    OnNewRecord = qrDetalheNewRecord
    AfterRefresh = qrDetalheAfterRefresh
    Left = 722
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object qrDetalhecli_001: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'cli_001'
      Required = True
    end
    object qrDetalheemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrDetalhecli_002: TWideStringField
      FieldName = 'cli_002'
      Required = True
      OnChange = qrDetalhecli_002Change
      Size = 80
    end
    object qrDetalhecli_003: TWideStringField
      FieldName = 'cli_003'
      Size = 80
    end
    object qrDetalhecli_004: TWideStringField
      FieldName = 'cli_004'
      OnChange = qrDetalhecli_004Change
    end
    object qrDetalhecli_005: TWideStringField
      FieldName = 'cli_005'
    end
    object qrDetalhecli_006: TWideStringField
      FieldName = 'cli_006'
    end
    object qrDetalhecli_007: TWideStringField
      FieldName = 'cli_007'
      Size = 100
    end
    object qrDetalhecli_009: TWideStringField
      FieldName = 'cli_009'
      Size = 100
    end
    object qrDetalhecli_012: TWideStringField
      FieldName = 'cli_012'
    end
    object qrDetalhecli_013: TWideStringField
      FieldName = 'cli_013'
    end
    object qrDetalhecli_014: TWideStringField
      FieldName = 'cli_014'
    end
    object qrDetalhecid_001: TIntegerField
      FieldName = 'cid_001'
      OnChange = qrDetalhecid_001Change
    end
    object qrDetalhecep_002: TWideStringField
      FieldName = 'cep_002'
      OnChange = qrDetalhecep_002Change
      Size = 9
    end
    object qrDetalhecid_002: TWideStringField
      FieldName = 'cid_002'
      Size = 60
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalheusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalhedat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrDetalheinclusao: TWideStringField
      FieldName = 'inclusao'
      ReadOnly = True
      Size = 30
    end
    object qrDetalheedicao: TWideStringField
      FieldName = 'edicao'
      ReadOnly = True
      Size = 30
    end
    object qrDetalhecli_008: TWideStringField
      FieldName = 'cli_008'
    end
    object qrDetalhecep_004: TWideStringField
      FieldName = 'cep_004'
      Size = 125
    end
    object qrDetalhecep_003: TWideStringField
      FieldName = 'cep_003'
      Size = 125
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      Size = 40
    end
    object qrDetalhecli_017: TFloatField
      FieldName = 'cli_017'
    end
    object qrDetalhebai_001: TIntegerField
      FieldName = 'bai_001'
      OnChange = qrDetalhebai_001Change
    end
    object qrDetalhecelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrDetalhecelular2: TWideStringField
      FieldName = 'celular2'
    end
    object qrDetalhesaldo_atual: TFloatField
      FieldName = 'saldo_atual'
    end
    object qrDetalhelimite_credito: TFloatField
      FieldName = 'limite_credito'
    end
    object qrDetalhepontos_atuais: TIntegerField
      FieldName = 'pontos_atuais'
    end
    object qrDetalheobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 500
    end
    object qrDetalhecidade_desc: TWideStringField
      FieldName = 'cidade_desc'
      Size = 100
    end
    object qrDetalhecodigo_fidelidade: TWideStringField
      FieldName = 'codigo_fidelidade'
      Size = 100
    end
    object qrDetalheuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object qrDetalheram_001: TIntegerField
      FieldName = 'ram_001'
    end
    object qrDetalhefor_001: TIntegerField
      FieldName = 'for_001'
    end
    object qrDetalhecon_001: TIntegerField
      FieldName = 'con_001'
    end
    object qrDetalheb_limite_fiado: TBooleanField
      FieldName = 'b_limite_fiado'
      Required = True
    end
    object qrDetalhedata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qrDetalheemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qrDetalheobs_bloqueio: TWideStringField
      FieldName = 'obs_bloqueio'
      Size = 200
    end
    object qrDetalhesit_001: TIntegerField
      FieldName = 'sit_001'
      OnChange = qrDetalhesit_001Change
    end
    object qrDetalhefiliacao_mae: TWideStringField
      DisplayLabel = 'Filia'#231#227'o M'#227'e'
      FieldName = 'filiacao_mae'
      Size = 80
    end
    object qrDetalhefiliacao_pai: TWideStringField
      DisplayLabel = 'Filia'#231#227'o Pai'
      FieldName = 'filiacao_pai'
      Size = 80
    end
    object qrDetalheprofissao: TWideStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'profissao'
      Size = 80
    end
    object qrDetalheestado_civil: TWideStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'estado_civil'
    end
    object qrDetalhenome_conjuge: TWideStringField
      FieldName = 'nome_conjuge'
      Size = 80
    end
    object qrDetalhedata_consulta_spc: TDateField
      FieldName = 'data_consulta_spc'
    end
    object qrDetalhedia_vencimento: TIntegerField
      FieldName = 'dia_vencimento'
    end
    object qrDetalhenum_dias_aviso: TIntegerField
      FieldName = 'num_dias_aviso'
    end
    object qrDetalhetaxa_juros: TFloatField
      FieldName = 'taxa_juros'
    end
    object qrDetalheid_situacao_spc: TIntegerField
      FieldName = 'id_situacao_spc'
    end
    object qrDetalhenum_dias_atraso: TIntegerField
      FieldName = 'num_dias_atraso'
    end
    object qrDetalhetipo_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      Required = True
      OnChange = qrDetalhetipo_pessoaChange
      Size = 1
    end
    object qrDetalhesituacao_ie: TWideStringField
      FieldName = 'situacao_ie'
      Required = True
      Size = 1
    end
    object qrDetalhesexo: TWideStringField
      FieldName = 'sexo'
      Required = True
      Size = 1
    end
    object qrDetalhetipo_cliente: TWideStringField
      FieldName = 'tipo_cliente'
      Size = 1
    end
  end
  object dsDetalhe: TDataSource
    AutoEdit = False
    DataSet = qrDetalhe
    OnStateChange = dsDetalheStateChange
    Left = 728
    Top = 136
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 616
    Top = 272
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
    object acBuscaCEP: TAction
      Caption = 'acBuscaCEP'
      ImageIndex = 0
      OnExecute = acBuscaCEPExecute
    end
    object acBuscaCidade: TAction
      Caption = 'acBuscaCidade'
      ImageIndex = 0
      OnExecute = acBuscaCidadeExecute
    end
    object acBuscaBairro: TAction
      Caption = 'acBuscaBairro'
      ImageIndex = 0
      OnExecute = acBuscaBairroExecute
    end
  end
  object qrfinanceiro: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_venda, id_empresa,id_cliente,  valor_nota,id_situacao,' +
        '   to_char (data,'#39'dd/mm/yyyy'#39')as data from creceber '
      'where   id_cliente =:id_cliente and id_empresa =:id_empresa'
      
        'group by id_venda, id_empresa,id_cliente,  valor_nota,id_situaca' +
        'o,  to_char (data,'#39'dd/mm/yyyy'#39') order by id_venda')
    MasterSource = dsDetalhe
    BeforeOpen = qrfinanceiroBeforeOpen
    AfterOpen = qrfinanceiroAfterOpen
    Left = 708
    Top = 72
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
    object qrfinanceiroid_venda: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#250'mero da venda'
      FieldName = 'id_venda'
    end
    object qrfinanceiroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrfinanceiroid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrfinanceirovalor_nota: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'valor_nota'
      ReadOnly = True
      Required = True
      currency = True
    end
    object qrfinanceirodata: TWideMemoField
      DisplayLabel = 'Data'
      FieldName = 'data'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrfinanceiroid_situacao: TIntegerField
      FieldName = 'id_situacao'
    end
  end
  object dsFinanceiro: TDataSource
    AutoEdit = False
    DataSet = qrfinanceiro
    Left = 644
    Top = 72
  end
  object qrProdutoscomprados: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select vi.mat_001 as id_produto, vi.ite_002 as quantidade ,vi.it' +
        'e_003 as valor_unitario ,vi.ite_005 as valor_total, m.mat_003   ' +
        'as Descricao, vi.ven_001 '
      'from vendaitem vi '
      
        'join materiais m on vi.mat_001=m.mat_001 and vi.emp_001=vi.emp_0' +
        '01 '
      'join venda v on v.ven_001= vi.ven_001 and v.emp_001=vi.emp_001 '
      
        'where   v.cli_001 =:id_cliente and v.emp_001 =:id_empresa order ' +
        'by vi.mat_001')
    MasterFields = 'id_venda'
    DetailFields = 'ven_001'
    BeforeOpen = qrProdutoscompradosBeforeOpen
    Left = 636
    Top = 152
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
    object qrProdutoscompradosid_produto: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'id_produto'
      Required = True
    end
    object qrProdutoscompradosquantidade: TFloatField
      Alignment = taLeftJustify
      FieldName = 'quantidade'
      Required = True
      DisplayFormat = '0.00'
    end
    object qrProdutoscompradosvalor_unitario: TFloatField
      Alignment = taLeftJustify
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrProdutoscompradosvalor_total: TFloatField
      Alignment = taLeftJustify
      FieldName = 'valor_total'
      currency = True
    end
    object qrProdutoscompradosdescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrProdutoscompradosven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
  end
  object dsProdutoscomprados: TDataSource
    AutoEdit = False
    DataSet = qrProdutoscomprados
    Left = 636
    Top = 216
  end
  object qrContasareceber: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_cliente ,id_empresa, id_venda, data_vencimento, valor_' +
        'pago, valor, (valor-valor_pago) as valor_restante from creceber ' +
        'where id_situacao=4 '
      
        'and id_cliente =:id_cliente and id_empresa=:id_empresa order by ' +
        'id_venda ')
    BeforeOpen = qrContasareceberBeforeOpen
    Left = 704
    Top = 336
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
    object qrContasareceberdata_vencimento: TDateField
      DisplayLabel = 'Data vencimento'
      FieldName = 'data_vencimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrContasarecebervalor_pago: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor pago'
      FieldName = 'valor_pago'
      currency = True
    end
    object qrContasarecebervalor: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor da parcela'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrContasarecebervalor_restante: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor restante'
      FieldName = 'valor_restante'
      ReadOnly = True
      currency = True
    end
    object qrContasareceberid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrContasareceberid_venda: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#250'mero da venda'
      FieldName = 'id_venda'
      Required = True
    end
  end
  object dsContasareceber: TDataSource
    AutoEdit = False
    DataSet = qrContasareceber
    Left = 608
    Top = 352
  end
  object qrContasrecebidas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_empresa, id_cliente, id_venda, data_vencimento, valor_' +
        'nota, data_pagamento  from creceber where id_situacao=7 and id_e' +
        'mpresa=:id_empresa '
      'and id_cliente=:id_cliente order by id_venda')
    BeforeOpen = qrContasrecebidasBeforeOpen
    Left = 748
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        Value = nil
      end>
    object qrContasrecebidasid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrContasrecebidasid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object qrContasrecebidasid_venda: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#250'mero da venda'
      FieldName = 'id_venda'
    end
    object qrContasrecebidasdata_vencimento: TDateField
      DisplayLabel = 'Data vencimento'
      FieldName = 'data_vencimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrContasrecebidasvalor_nota: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor total'
      FieldName = 'valor_nota'
      Required = True
      currency = True
    end
    object qrContasrecebidasdata_pagamento: TDateTimeField
      DisplayLabel = 'Data do pagamento'
      FieldName = 'data_pagamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dsContasrecebidas: TDataSource
    AutoEdit = False
    DataSet = qrContasrecebidas
    Left = 568
    Top = 288
  end
  object ACBrConsultaCNPJ: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = True
    Left = 328
    Top = 365
  end
  object qraux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 576
    Top = 16
  end
  object qrxAux2: TUniQuery
    Connection = frmMenu.conexao
    Left = 640
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 68
    Top = 152
    object REIMPRIMIRCUPOM1: TMenuItem
      Caption = 'REIMPRIMIR CUPOM'
      OnClick = REIMPRIMIRCUPOM1Click
    end
  end
end
