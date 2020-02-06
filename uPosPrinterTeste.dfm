object FrmPosPrinterConfig: TFrmPosPrinterConfig
  Left = 408
  Top = 125
  Caption = 'Configura'#231#227'o de impressora ESC/POS'
  ClientHeight = 549
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 329
    Top = 0
    Width = 581
    Height = 549
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 396
      Width = 579
      Height = 152
      Align = alBottom
      TabOrder = 0
      object bTagFormtacaoCaracter: TButton
        Left = 6
        Top = 50
        Width = 183
        Height = 25
        Caption = 'Tags de Formata'#231#227'o de Caracter'
        TabOrder = 0
        OnClick = bTagFormtacaoCaracterClick
      end
      object bTagsAlinhamento: TButton
        Left = 6
        Top = 74
        Width = 183
        Height = 25
        Caption = 'Tags de Alinhamento'
        TabOrder = 1
        OnClick = bTagsAlinhamentoClick
      end
      object bTagQRCode: TButton
        Left = 198
        Top = 74
        Width = 183
        Height = 25
        Caption = 'Tags de QRCode'
        TabOrder = 5
        OnClick = bTagQRCodeClick
      end
      object bTagsCodBarras: TButton
        Left = 198
        Top = 50
        Width = 183
        Height = 25
        Caption = 'Tags de Codigo de Barras'
        TabOrder = 4
        OnClick = bTagsCodBarrasClick
      end
      object bTagsTesteInvalidas: TButton
        Left = 6
        Top = 98
        Width = 183
        Height = 25
        Caption = 'Teste de Tags Invalidas'
        TabOrder = 2
        OnClick = bTagsTesteInvalidasClick
      end
      object bTagsTestePagCodigo: TButton
        Left = 6
        Top = 122
        Width = 183
        Height = 25
        Caption = 'Teste de p'#225'gina de c'#243'digo'
        TabOrder = 3
        OnClick = bTagsTestePagCodigoClick
      end
      object bImpLinhaALinha: TButton
        Left = 198
        Top = 122
        Width = 183
        Height = 25
        Caption = 'Teste Impress'#227'o Linha a Linha'
        TabOrder = 7
        OnClick = bImpLinhaALinhaClick
      end
      object bImpTagsValidas: TButton
        Left = 390
        Top = 122
        Width = 183
        Height = 25
        Caption = 'Ajuda - Tags Validas'
        TabOrder = 10
        OnClick = bImpTagsValidasClick
      end
      object bLerStatus: TButton
        Left = 390
        Top = 74
        Width = 183
        Height = 25
        Caption = 'Leitura de Status'
        TabOrder = 9
        OnClick = bLerStatusClick
      end
      object bLerInfo: TButton
        Left = 390
        Top = 50
        Width = 183
        Height = 25
        Caption = 'Leitura de Informa'#231#245'es'
        TabOrder = 8
        OnClick = bLerInfoClick
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 567
        Height = 39
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 11
        DesignSize = (
          567
          39)
        object bLimpar: TBitBtn
          Left = 378
          Top = 7
          Width = 83
          Height = 26
          Anchors = [akTop, akRight]
          Caption = 'Limpar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00101073FF000029FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000431FF10106BFFFF00FF00FF00FF00FF00FF000000
            8CFF3134F7FF0808CEFF000031FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000039FF080CCEFF3130EFFF00007BFFFF00FF00000063FF0808
            E7FF4A49F7FF4A4DF7FF0000C6FF000039FFFF00FF00FF00FF00FF00FF00FF00
            FF0000004AFF0004CEFF5A59EFFF5A59F7FF0808DEFF00004AFF000484FF2120
            FFFF3134FFFF5A59FFFF4A49EFFF0004C6FF000042FFFF00FF00FF00FF000000
            52FF0808CEFF5A59EFFF7371FFFF5255FFFF3134FFFF00046BFF000473FF181C
            FFFF2928FFFF3938FFFF5255FFFF4245EFFF0004C6FF00004AFF00005AFF0808
            CEFF5255EFFF6B69FFFF5251FFFF4241FFFF3130FFFF080C52FFFF00FF000808
            7BFF181CFFFF2928FFFF3134FFFF4A49FFFF3134EFFF0000BDFF0004C6FF4245
            EFFF5A59FFFF4245FFFF393CFFFF292CFFFF080C63FFFF00FF00FF00FF00FF00
            FF0008086BFF1818FFFF292CFFFF393CFFFF4A4DFFFF3130EFFF3134EFFF4A49
            FFFF3938FFFF3130FFFF2124F7FF08084AFFFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000452FF393CEFFF6361FFFF6361FFFF6361FFFF6361FFFF6361
            FFFF5A59FFFF2928DEFF000439FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000048CFF393CF7FF6361FFFF6361FFFF6365FFFF6365
            FFFF3134EFFF000463FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000005AFF0000A5FF3130F7FF6B69FFFF6B69FFFF6B69FFFF6B69
            FFFF2120E7FF00009CFF000042FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000052FF0000A5FF3134F7FF7B79FFFF7B79FFFF7B79FFFF7B79FFFF7B79
            FFFF7375FFFF2124E7FF000094FF000039FFFF00FF00FF00FF00FF00FF000000
            52FF00009CFF4241F7FF8C8AFFFF8C8AFFFF8C8AFFFF3130C6FF4A49DEFF8C8E
            FFFF8C8AFFFF8486FFFF2928E7FF00008CFF000039FFFF00FF00000018FF0000
            9CFF4A49F7FF9C9AFFFF9C9AFFFF9C9AFFFF3134BDFFFF00FF00000021FF5255
            E7FF9C9EFFFF9C9AFFFF9496FFFF292CE7FF00007BFFFF00FF00000029FF5255
            FFFFADAEFFFFADAAFFFFADAAFFFF393CBDFFFF00FF00FF00FF00FF00FF000000
            29FF5A5DE7FFADAEFFFFADAAFFFFADAAFFFF3130DEFFFF00FF00FF00FF004245
            BDFFBDBAFFFFBDBAFFFF393CBDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000029FF6B69E7FFCECBFFFFA5A6FFFF21248CFFFF00FF00FF00FF00FF00
            FF00393CBDFF4241C6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000029FF5A59E7FF181C7BFFFF00FF00FF00FF00}
          TabOrder = 0
          OnClick = bLimparClick
        end
        object bImprimir: TBitBtn
          Left = 469
          Top = 7
          Width = 92
          Height = 26
          Anchors = [akTop, akRight]
          Caption = 'Imprimir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            00000000000000000000000000007F7F7FFF4F4F4FFF5F5F5FFFBFBFBFFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000007F7F7FFF5F5F5FFFBFBFBFFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F
            5FFFBFBFBFFF0000000000000000000000000000000000000000000000007F7F
            7FFF5F5F5FFFBFBFBFFF9F9F9FFF8F8F8FFF9F9F9FFF5F5F5FFF3F3F3FFF5F5F
            5FFF5F5F5FFF5F5F5FFFBFBFBFFF0000000000000000000000009F9F9FFFBFBF
            BFFF9F9F9FFF9F9F9FFFBFBFBFFF9F9F9FFF9F9F9FFF7F7F7FFF7F7F7FFF5F5F
            5FFF3F3F3FFF5F5F5FFF5F5F5FFF5F5F5FFF00000000000000009F9F9FFF8F8F
            8FFFBFBFBFFFBFBFBFFFBFBFBFFF9F9F9FFF9F9F9FFF7F7F7FFF7F7F7FFF7F7F
            7FFF7F7F7FFF5F5F5FFF3F3F3FFF1F1F1FFF0000000000000000BFBFBFFF9F9F
            9FFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF8F8F8FFF7F7F7FFF7F7F
            7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF3F3F3FFF00000000BFBFBFFF9F9F
            9FFFBFBFBFFFDFDFDFFFDFDFDFFFBFBFBFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F
            8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4F4F4FFF5F5F5FFFBFBFBFFFAFAF
            AFFFCFCFCFFF8FCF8FFF5F9F9FFF7F7FBFFF9F9F9FFFAFAFAFFFAFAFAFFF6F6F
            6FFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFF4F4F4FFFBFBFBFFFBFBFBFFFAFAF
            AFFFBFBFBFFF9F9F9FFF8F8F8FFF9F9F9FFFBFBFBFFF5F5F5FFF7F7F7FFFEFEF
            EFFF4F4F4FFF9F9F9FFF9F9F9FFF8F8F8FFF7F7F7FFF00000000000000000000
            0000BFBFBFFFAFAFAFFFBFBFBFFF8F8F8FFF5F5F5FFFFFBFBFFFFF7F7FFFFFBF
            BFFF6F6F6FFF8F8F8FFFAFAFAFFFDFDFDFFF0000000000000000000000000000
            00000000000000000000BFBFBFFFAFAFAFFFAFAFAFFFFFFFFFFFFF7F7FFFFF7F
            7FFFEFEFEFFF6F6F6FFF00000000000000000000000000000000000000000000
            000000000000000000000000000000000000BFBFBFFFBFBFBFFFFFBFBFFFFF7F
            7FFFFFBFBFFFEFEFEFFF6F6F6FFF000000000000000000000000000000000000
            00000000000000000000000000000000000000000000DFDFDFFFDFDFDFFFFFBF
            BFFFFF7F7FFFFFBFBFFFEFEFEFFF3F3F3FFF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000DFDFDFFFDFDF
            DFFFFFFFFFFFBFBFBFFFBFBFBFFF000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000DFDF
            DFFFBFBFBFFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 1
          OnClick = bImprimirClick
        end
      end
      object bTagLogo: TButton
        Left = 198
        Top = 98
        Width = 183
        Height = 25
        Caption = 'Tags de Logotipo'
        TabOrder = 6
        OnClick = bTagLogoClick
      end
      object btAbrirGaveta: TButton
        Left = 390
        Top = 98
        Width = 183
        Height = 25
        Caption = 'Abrir Gaveta'
        TabOrder = 12
        OnClick = btAbrirGavetaClick
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 579
      Height = 395
      ActivePage = tsImprimir
      Align = alClient
      TabOrder = 1
      object tsImprimir: TTabSheet
        Caption = 'Texto a Imprimir'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object mImp: TMemo
          Left = 0
          Top = 0
          Width = 571
          Height = 367
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object tsLog: TTabSheet
        Caption = 'Eventos Log'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object mLog: TMemo
          Left = 0
          Top = 0
          Width = 571
          Height = 367
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 549
    Align = alLeft
    TabOrder = 1
    object gbConfiguracao: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 317
      Height = 320
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Configura'#231#227'o'
      TabOrder = 0
      object Label1: TLabel
        Left = 11
        Top = 19
        Width = 34
        Height = 13
        Caption = 'Modelo'
        Color = clBtnFace
        ParentColor = False
      end
      object Label4: TLabel
        Left = 11
        Top = 62
        Width = 26
        Height = 13
        Caption = 'Porta'
        Color = clBtnFace
        ParentColor = False
      end
      object Label2: TLabel
        Left = 11
        Top = 200
        Width = 38
        Height = 13
        Caption = 'Colunas'
        Color = clBtnFace
        ParentColor = False
      end
      object Label3: TLabel
        Left = 75
        Top = 200
        Width = 39
        Height = 13
        Caption = 'Espa'#231'os'
        Color = clBtnFace
        ParentColor = False
      end
      object Label5: TLabel
        Left = 11
        Top = 271
        Width = 169
        Height = 13
        Caption = 'Pag.codigo (suporte '#224' acentua'#231#227'o)'
        Color = clBtnFace
        ParentColor = False
      end
      object Label6: TLabel
        Left = 139
        Top = 200
        Width = 30
        Height = 13
        Caption = 'Buffer'
        Color = clBtnFace
        ParentColor = False
      end
      object Label9: TLabel
        Left = 204
        Top = 271
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Arq.Log:'
        Color = clBtnFace
        ParentColor = False
        Visible = False
      end
      object SbArqLog: TSpeedButton
        Left = 285
        Top = 289
        Width = 24
        Height = 22
        Hint = 'Abre Arquivo de Log'
        Caption = '...'
        Visible = False
        OnClick = SbArqLogClick
      end
      object Label7: TLabel
        Left = 204
        Top = 200
        Width = 57
        Height = 13
        Caption = 'Linhas Pular'
        Color = clBtnFace
        ParentColor = False
      end
      object Label50: TLabel
        Left = 11
        Top = 166
        Width = 298
        Height = 28
        AutoSize = False
        Caption = 
          '- Utilize preferencialmente o caminho compartilhado da impressor' +
          'a ao inv'#233's da porta (exemplo: \\localhost\imp1)'
        WordWrap = True
      end
      object Label49: TLabel
        Left = 11
        Top = 105
        Width = 298
        Height = 51
        AutoSize = False
        Caption = 
          '- Se n'#227'o existir o modelo da sua impressora ou  se a impressora ' +
          'n'#227'o responder ao comando (mesmo se o fabricante selecionado esti' +
          'ver correto), tente utilizar a op'#231#227'o ppEscPosEpson'
        WordWrap = True
      end
      object cbTraduzirTags: TCheckBox
        Left = 110
        Top = 246
        Width = 88
        Height = 19
        Hint = 'Traduz as Tags de Formata'#195#167#195#163'o e Cod.Barras'
        Caption = 'TraduzirTags'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object cbIgnorarTags: TCheckBox
        Left = 204
        Top = 246
        Width = 83
        Height = 19
        Hint = 'N'#195#163'o processa as Tags, imprime-as como texto normal'
        Caption = 'IgnorarTags'
        TabOrder = 1
      end
      object cbxModelo: TComboBox
        Left = 11
        Top = 38
        Width = 192
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        OnChange = cbxModeloChange
      end
      object cbxPorta: TComboBox
        Left = 11
        Top = 78
        Width = 192
        Height = 21
        TabOrder = 3
        OnChange = cbxPortaChange
      end
      object seColunas: TSpinEdit
        Left = 11
        Top = 218
        Width = 41
        Height = 22
        MaxValue = 999
        MinValue = 1
        TabOrder = 4
        Value = 48
        OnChange = seColunasChange
      end
      object cbControlePorta: TCheckBox
        Left = 11
        Top = 246
        Width = 97
        Height = 19
        Hint = 
          'Conecta a Porta Serial a cada comando enviado'#13#10'Desconecta da Por' +
          'ta Serial ap'#195#179's o envio'
        Caption = 'Controle Porta'
        TabOrder = 5
      end
      object seEspLinhas: TSpinEdit
        Left = 75
        Top = 218
        Width = 41
        Height = 22
        MaxValue = 255
        MinValue = 0
        TabOrder = 6
        Value = 0
        OnChange = seEspLinhasChange
      end
      object cbxPagCodigo: TComboBox
        Left = 11
        Top = 290
        Width = 169
        Height = 21
        Hint = 'Pagina de c'#195#179'digo usada pela Impressora POS'
        Style = csDropDownList
        TabOrder = 7
        OnChange = cbxPagCodigoChange
      end
      object seLinhasBuffer: TSpinEdit
        Left = 139
        Top = 218
        Width = 41
        Height = 22
        MaxValue = 255
        MinValue = 0
        TabOrder = 8
        Value = 0
        OnChange = seLinhasBufferChange
      end
      object edLog: TEdit
        Left = 204
        Top = 290
        Width = 80
        Height = 21
        Cursor = crIBeam
        Hint = 'Arquivo de Log para gravar os comandos enviados e recebidos'
        TabOrder = 9
        Text = 'PosPrinter.log'
        Visible = False
      end
      object seLinhasPular: TSpinEdit
        Left = 204
        Top = 219
        Width = 41
        Height = 22
        MaxValue = 255
        MinValue = 0
        TabOrder = 10
        Value = 0
        OnChange = seLinhasPularChange
      end
      object btConfiguraPorta: TAdvGlowButton
        Left = 209
        Top = 66
        Width = 100
        Height = 33
        Caption = 'Configura Porta'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 11
        OnClick = btConfiguraPortaClick
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
      object btAtivar: TAdvGlowButton
        Left = 209
        Top = 27
        Width = 100
        Height = 33
        Caption = 'Ativar'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 12
        OnClick = btAtivarClick
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
    object gbCodBarrasConfig: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 334
      Width = 317
      Height = 64
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Cod.Barras'
      TabOrder = 1
      object Label8: TLabel
        Left = 11
        Top = 15
        Width = 37
        Height = 13
        Caption = 'Largura'
        Color = clBtnFace
        ParentColor = False
      end
      object Label10: TLabel
        Left = 72
        Top = 0
        Width = 29
        Height = 13
        Caption = 'Altura'
        Color = clBtnFace
        ParentColor = False
      end
      object seBarrasLargura: TSpinEdit
        Left = 11
        Top = 31
        Width = 41
        Height = 22
        MaxValue = 5
        MinValue = 0
        TabOrder = 0
        Value = 1
        OnChange = seBarrasLarguraChange
      end
      object seBarrasAltura: TSpinEdit
        Left = 68
        Top = 31
        Width = 41
        Height = 22
        MaxValue = 255
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = seBarrasAlturaChange
      end
      object cbHRI: TCheckBox
        Left = 132
        Top = 31
        Width = 94
        Height = 19
        Hint = 
          'Conecta a Porta Serial a cada comando enviado'#13#10'Desconecta da Por' +
          'ta Serial ap'#195#179's o envio'
        Caption = 'Exibe Numero'
        TabOrder = 2
      end
    end
    object gbCodBarrasConfig1: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 406
      Width = 317
      Height = 64
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'QRCode'
      TabOrder = 2
      object Label11: TLabel
        Left = 11
        Top = 18
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Color = clBtnFace
        ParentColor = False
      end
      object Label12: TLabel
        Left = 68
        Top = 18
        Width = 64
        Height = 13
        Caption = 'Largura Mod.'
        Color = clBtnFace
        ParentColor = False
      end
      object Label13: TLabel
        Left = 163
        Top = 18
        Width = 49
        Height = 13
        Caption = 'ErrorLevel'
        Color = clBtnFace
        ParentColor = False
      end
      object seQRCodeTipo: TSpinEdit
        Left = 11
        Top = 34
        Width = 41
        Height = 22
        MaxValue = 2
        MinValue = 1
        TabOrder = 0
        Value = 2
        OnChange = seQRCodeTipoChange
      end
      object seQRCodeLarguraModulo: TSpinEdit
        Left = 84
        Top = 34
        Width = 41
        Height = 22
        MaxValue = 16
        MinValue = 1
        TabOrder = 1
        Value = 4
        OnChange = seQRCodeLarguraModuloChange
      end
      object seQRCodeErrorLevel: TSpinEdit
        Left = 164
        Top = 34
        Width = 41
        Height = 22
        MaxValue = 3
        MinValue = 0
        TabOrder = 2
        Value = 0
        OnChange = seQRCodeErrorLevelChange
      end
    end
    object gbCodBarrasConfig2: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 478
      Width = 317
      Height = 66
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'LogoTipo'
      TabOrder = 3
      object Label14: TLabel
        Left = 11
        Top = 20
        Width = 19
        Height = 13
        Caption = 'KC1'
        Color = clBtnFace
        ParentColor = False
      end
      object Label15: TLabel
        Left = 67
        Top = 20
        Width = 19
        Height = 13
        Caption = 'KC2'
        Color = clBtnFace
        ParentColor = False
      end
      object Label16: TLabel
        Left = 123
        Top = 20
        Width = 32
        Height = 13
        Caption = 'FatorX'
        Color = clBtnFace
        ParentColor = False
      end
      object Label17: TLabel
        Left = 180
        Top = 20
        Width = 32
        Height = 13
        Caption = 'FatorY'
        Color = clBtnFace
        ParentColor = False
      end
      object seLogoKC1: TSpinEdit
        Left = 10
        Top = 36
        Width = 41
        Height = 22
        MaxValue = 126
        MinValue = 32
        TabOrder = 0
        Value = 32
        OnChange = seLogoKC1Change
      end
      object seLogoKC2: TSpinEdit
        Left = 67
        Top = 36
        Width = 41
        Height = 22
        MaxValue = 126
        MinValue = 32
        TabOrder = 1
        Value = 32
        OnChange = seLogoKC2Change
      end
      object seLogoFatorX: TSpinEdit
        Left = 124
        Top = 36
        Width = 41
        Height = 22
        MaxValue = 4
        MinValue = 1
        TabOrder = 2
        Value = 4
        OnChange = seLogoFatorXChange
      end
      object seLogoFatorY: TSpinEdit
        Left = 179
        Top = 36
        Width = 41
        Height = 22
        MaxValue = 4
        MinValue = 1
        TabOrder = 3
        Value = 4
        OnChange = seLogoFatorYChange
      end
    end
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscPosEpson
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    OnGravarLog = ACBrPosPrinter1GravarLog
    Left = 344
    Top = 40
  end
  object cdsCFGImpressora: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 44
    object cdsCFGImpressoraNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFGImpressoraNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object cdsCFGImpressoraTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 500
    end
    object cdsCFGImpressoraLOGICO: TBooleanField
      FieldName = 'LOGICO'
    end
    object cdsCFGImpressoraDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
end
