inherited frmConfiguracao: TfrmConfiguracao
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#245'es '
  ClientHeight = 649
  ClientWidth = 872
  ExplicitTop = -284
  ExplicitWidth = 878
  ExplicitHeight = 673
  PixelsPerInch = 96
  TextHeight = 13
  object Label185: TLabel [0]
    Left = 26
    Top = 54
    Width = 88
    Height = 13
    Caption = 'Taxa de juros (%)'
  end
  inherited CoolBar1: TCoolBar
    Top = 611
    Width = 872
    Align = alBottom
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 866
      end>
    ExplicitTop = 611
    ExplicitWidth = 872
    inherited pnPadrao: TPanel
      Width = 866
      ExplicitWidth = 866
      inherited tBarPadrao: TToolBar
        Width = 866
        ButtonHeight = 30
        ButtonWidth = 82
        ShowCaptions = True
        ExplicitWidth = 866
        object btAlterar: TToolButton
          Left = 0
          Top = 0
          Caption = 'Alterar'
          ImageIndex = 17
          Visible = False
          OnClick = btAlterarClick
        end
        object btConfirmar: TToolButton
          Left = 82
          Top = 0
          Hint = 'Confirmar'
          Caption = 'Confirmar'
          ImageIndex = 5
          OnClick = btConfirmarClick
        end
        object btCancelar: TToolButton
          Left = 164
          Top = 0
          Hint = 'Cancelar'
          Caption = 'Cancelar'
          ImageIndex = 6
          OnClick = btCancelarClick
        end
      end
    end
  end
  object pcPrincipal: TPageControl [2]
    Left = 0
    Top = 0
    Width = 872
    Height = 611
    ActivePage = tsBackup
    Align = alClient
    TabOrder = 1
    object pgGeral: TTabSheet
      Caption = 'Geral'
      DesignSize = (
        864
        583)
      object GroupBox20: TGroupBox
        Left = 3
        Top = 114
        Width = 518
        Height = 207
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Caixa'
        TabOrder = 0
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 5
          Top = 74
          Caption = 'Permite fechamento de caixa com venda em aberto'
          DataBinding.DataField = 'b_permite_fechamento_caixa_venda_aberta'
          DataBinding.DataSource = dsEmpresa
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
        end
        object dbPdvcoletivo: TcxDBCheckBox
          Left = 5
          Top = 16
          Caption = 'Utiliza PDV Coletivo'
          DataBinding.DataField = 'b_pdv_coletivo'
          DataBinding.DataSource = dsEmpresa
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Transparent = True
        end
        object ckFechamentoCaixaEmail: TCheckBox
          Tag = 1
          Left = 9
          Top = 141
          Width = 203
          Height = 17
          Caption = 'Enviar fechamento do Caixa por email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edEmailFechamentoCaixa: TEdit
          Tag = 1
          Left = 222
          Top = 140
          Width = 284
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnExit = edMensagemCouvertMesaExit
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 5
          Top = 95
          Caption = 
            'Permite fechamento de caixa por outro usu'#225'rio diferente do de ab' +
            'ertura'
          DataBinding.DataField = 'b_permite_fechamento_caixa_outro_usuario'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 2
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 5
          Top = 117
          Caption = 
            'Permite fechamento de caixa que recebeu pagamento parcial de ven' +
            'da (mesa/comanda em aberto)'
          DataBinding.DataField = 'b_permite_fechamento_caixa_venda_pag_antecipado'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 3
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 5
          Top = 161
          Caption = 'Permite receber troco de qualquer forma de pagamento'
          DataBinding.DataField = 'b_permite_troco_todas_formas'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 6
        end
        object cxDBCheckBox10: TcxDBCheckBox
          Left = 5
          Top = 181
          Caption = 'Buscar valores de pagamentos no fechamento do caixa'
          DataBinding.DataField = 'b_buscar_valores_fechamento_caixa'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 7
        end
        object ckcaixa_garcom: TCheckBox
          Tag = 1
          Left = 9
          Top = 37
          Width = 232
          Height = 20
          Caption = 'Caixa somente para garcom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object dbpdv_nao_coletivo: TcxDBCheckBox
          Left = 5
          Top = 55
          Caption = 
            'Utiliza caixa individual ( Marque essa op'#231#227'o caso queira trabalh' +
            'ar com caixas individuais)'
          DataBinding.DataField = 'b_pdv_nao_coletivo'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 9
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 327
        Width = 518
        Height = 81
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Geral'
        TabOrder = 1
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 5
          Top = 16
          Caption = 'Utiliza controle de clientes '
          DataBinding.DataField = 'b_utiliza_controle_cliente'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 0
        end
        object ckOcultar_menu_fiscal: TCheckBox
          Tag = 1
          Left = 9
          Top = 56
          Width = 488
          Height = 17
          Caption = 
            'Ocultar menu fiscal no fechamento do cupom (Configure as op'#231#245'es ' +
            'em formas de pagamento)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ckUtilizar_selecao_precos: TCheckBox
          Tag = 1
          Left = 9
          Top = 37
          Width = 334
          Height = 17
          Caption = 'Utilizar pre'#231'o a vista/prazo/atacado na venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox31: TGroupBox
        Left = 529
        Top = 114
        Width = 332
        Height = 116
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Estoque'
        TabOrder = 2
        object Label176: TLabel
          Left = 32
          Top = 18
          Width = 226
          Height = 39
          Caption = 
            'Atualizar o valor custo dos materiais ao alterar valor de custo ' +
            'do ingrediente (item de composi'#231#227'o)'
          WordWrap = True
        end
        object Label178: TLabel
          Left = 32
          Top = 63
          Width = 215
          Height = 39
          Caption = 
            'Considerar rendimento para corrigir valor de custo do ingredient' +
            'e (item de composi'#231#227'o) na entrada de estoque'
          WordWrap = True
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 6
          Top = 18
          AutoSize = False
          DataBinding.DataField = 'b_atualiza_custo_material_composicao'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 0
          Height = 21
          Width = 25
        end
        object cxDBCheckBox8: TcxDBCheckBox
          Left = 6
          Top = 63
          AutoSize = False
          DataBinding.DataField = 'b_considera_rendimento_entrada_composicao'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 1
          Height = 21
          Width = 25
        end
      end
      object AdvGroupBox6: TAdvGroupBox
        Left = 3
        Top = 4
        Width = 855
        Height = 105
        BorderColor = clNavy
        Caption = 'M'#211'DULO DISPON'#205'VEIS AOS OPERADORES DO SISTEMA'
        TabOrder = 3
        object ckPermiteacessopdv: TCheckBox
          Tag = 1
          Left = 9
          Top = 27
          Width = 242
          Height = 17
          Caption = 'PERMITE ACESSO AO PDV'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
        end
        object ckPermiteacessobalcao: TCheckBox
          Tag = 1
          Left = 9
          Top = 50
          Width = 242
          Height = 17
          Caption = 'PERMITE ACESSO BALC'#195'O / BALC'#195'O TOUCH'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
        end
        object ckPermiteacessomesaecomanda: TCheckBox
          Tag = 1
          Left = 9
          Top = 73
          Width = 242
          Height = 17
          Caption = 'PERMITE ACESSO MESA / COMANDA'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 2
        end
        object ckPermiteacessodelivery: TCheckBox
          Tag = 1
          Left = 257
          Top = 27
          Width = 271
          Height = 17
          Caption = 'PERMITE ACESSO AO DELIVERY'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 3
        end
        object ckPermiteacessofechamentodecontas: TCheckBox
          Tag = 1
          Left = 257
          Top = 50
          Width = 271
          Height = 17
          Caption = 'PERMITE ACESSO FECHAMENTO DE CONTAS'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
        end
        object ckPermiteacessomonitorpreparo: TCheckBox
          Tag = 1
          Left = 257
          Top = 73
          Width = 350
          Height = 17
          Caption = 'PERMITE ACESSO MONITOR DE PREPARO / MONITOR DE ENTREGA '
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 5
        end
        object CheckBox1: TCheckBox
          Tag = 1
          Left = 610
          Top = 25
          Width = 242
          Height = 17
          Caption = 'PERMITE ACESSO BLOQUEI COMANDA'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 6
        end
        object CheckBox2: TCheckBox
          Tag = 1
          Left = 610
          Top = 48
          Width = 242
          Height = 17
          Caption = 'PERMITE ACESSO MESA/COMANDA'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
        end
        object ckcartao: TCheckBox
          Tag = 1
          Left = 610
          Top = 73
          Width = 242
          Height = 17
          Caption = 'HABILITAR CART'#195'O'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 8
          Visible = False
        end
      end
      object GroupBox12: TGroupBox
        Left = 529
        Top = 236
        Width = 332
        Height = 85
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Opcionais'
        TabOrder = 4
        object Label1: TLabel
          Left = 27
          Top = 38
          Width = 259
          Height = 13
          Caption = '(Massas/Recheios/Complementos/Molhos/Coberturas)'
          WordWrap = True
        end
        object ckTrabalharTipoOpcionais: TCheckBox
          Tag = 1
          Left = 10
          Top = 21
          Width = 319
          Height = 17
          Caption = 'Trabalhar com Tipo de Opcionais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pgEmpresa: TTabSheet
      Caption = 'Empresa'
      ImageIndex = 1
      object Label13: TLabel
        Left = 3
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEdit6
      end
      object lbRazaoSocial: TLabel
        Left = 87
        Top = 6
        Width = 60
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = dbeRazaoSocial
      end
      object Label15: TLabel
        Left = 3
        Top = 49
        Width = 71
        Height = 13
        Caption = 'Nome Fantasia'
      end
      object lbCNPJ: TLabel
        Left = 80
        Top = 97
        Width = 97
        Height = 13
        Caption = 'CNPJ / CPF / Outros'
        FocusControl = cxDBTextEdit3
      end
      object Label17: TLabel
        Left = 248
        Top = 97
        Width = 70
        Height = 13
        Caption = 'Insc. Est. / RG'
        FocusControl = cxDBTextEdit4
      end
      object Label18: TLabel
        Left = 415
        Top = 97
        Width = 89
        Height = 13
        Caption = 'Inscri'#231#227'o Mun'#237'cipal'
        FocusControl = cxDBTextEdit5
      end
      object lbTipoEmp: TLabel
        Left = 3
        Top = 94
        Width = 20
        Height = 13
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 5
        Top = 144
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label21: TLabel
        Left = 8
        Top = 188
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label16: TLabel
        Left = 415
        Top = 49
        Width = 82
        Height = 13
        Caption = 'Regime tribut'#225'rio'
      end
      object Label2: TLabel
        Left = 145
        Top = 144
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object dbeRazaoSocial: TcxDBTextEdit
        Left = 87
        Top = 21
        AutoSize = False
        DataBinding.DataField = 'emp_002'
        DataBinding.DataSource = dsEmpresa
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 22
        Width = 481
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 3
        Top = 65
        AutoSize = False
        DataBinding.DataField = 'emp_003'
        DataBinding.DataSource = dsEmpresa
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 22
        Width = 302
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 248
        Top = 113
        AutoSize = False
        DataBinding.DataField = 'emp_005'
        DataBinding.DataSource = dsEmpresa
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Height = 22
        Width = 153
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 415
        Top = 113
        AutoSize = False
        DataBinding.DataField = 'emp_006'
        DataBinding.DataSource = dsEmpresa
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Height = 22
        Width = 153
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 3
        Top = 21
        AutoSize = False
        DataBinding.DataField = 'emp_001'
        DataBinding.DataSource = dsEmpresa
        ParentColor = True
        Style.BorderStyle = ebsNone
        Style.Shadow = False
        TabOrder = 10
        Height = 22
        Width = 78
      end
      object cxDBImage1: TcxDBImage
        Left = 605
        Top = 21
        DataBinding.DataField = 'emp_011'
        DataBinding.DataSource = dsEmpresa
        Properties.FitMode = ifmProportionalStretch
        Properties.GraphicClassName = 'TJPEGImage'
        TabOrder = 11
        Visible = False
        Height = 187
        Width = 214
      end
      object cxDBTextEdit3: TDBEdit
        Left = 80
        Top = 113
        Width = 153
        Height = 22
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'emp_004'
        DataSource = dsEmpresa
        TabOrder = 4
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 231
        Caption = ' Localiza'#231#227'o '
        TabOrder = 9
        Height = 155
        Width = 565
        object Label24: TLabel
          Left = 112
          Top = 13
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = edEndereco
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 474
          Top = 15
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = edNumero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 8
          Top = 57
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = edComplemento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 257
          Top = 57
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = edBairro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 8
          Top = 100
          Width = 33
          Height = 13
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 8
          Top = 15
          Width = 19
          Height = 13
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 405
          Top = 100
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = cxDBTextEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 444
          Top = 100
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = cxDBTextEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label119: TLabel
          Left = 325
          Top = 100
          Width = 59
          Height = 13
          Caption = 'C'#243'digo IBGE'
          FocusControl = cxDBTextEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edEndereco: TDBEdit
          Left = 112
          Top = 32
          Width = 355
          Height = 22
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'cep_004'
          DataSource = dsEmpresa
          TabOrder = 0
        end
        object edComplemento: TDBEdit
          Left = 8
          Top = 72
          Width = 239
          Height = 22
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'emp_008'
          DataSource = dsEmpresa
          TabOrder = 2
        end
        object edBairro: TDBEdit
          Left = 257
          Top = 72
          Width = 280
          Height = 22
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'cep_003'
          DataSource = dsEmpresa
          TabOrder = 3
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 81
          Top = 119
          AutoSize = False
          DataBinding.DataField = 'cid_002'
          DataBinding.DataSource = dsEmpresa
          ParentColor = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 4
          Height = 22
          Width = 238
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 405
          Top = 119
          AutoSize = False
          DataBinding.DataField = 'est_003'
          DataBinding.DataSource = dsEmpresa
          ParentColor = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 5
          Height = 22
          Width = 33
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 444
          Top = 119
          AutoSize = False
          DataBinding.DataField = 'pai_002'
          DataBinding.DataSource = dsEmpresa
          ParentColor = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 6
          Height = 22
          Width = 93
        end
        object edNumero: TcxDBTextEdit
          Left = 474
          Top = 32
          Margins.Left = 4
          Margins.Top = 1
          AutoSize = False
          DataBinding.DataField = 'emp_007'
          DataBinding.DataSource = dsEmpresa
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Height = 22
          Width = 63
        end
        object edIdCep: TcxDBButtonEdit
          Tag = -1
          Left = 8
          Top = 32
          DataBinding.DataField = 'cep_002'
          DataBinding.DataSource = dsEmpresa
          Properties.Buttons = <
            item
              Action = acBuscaCEP
              Default = True
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 98
        end
        object edIdCidade: TcxDBButtonEdit
          Tag = -1
          Left = 8
          Top = 119
          DataBinding.DataField = 'cid_001'
          DataBinding.DataSource = dsEmpresa
          Properties.Buttons = <
            item
              Action = acBuscaCidade
              Default = True
              ImageIndex = 0
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 67
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 325
          Top = 119
          AutoSize = False
          DataBinding.DataField = 'cod_ibge'
          DataBinding.DataSource = dsEmpresa
          ParentColor = True
          Style.BorderStyle = ebsNone
          Style.Shadow = False
          TabOrder = 9
          Height = 22
          Width = 74
        end
      end
      object edTelefone: TcxDBMaskEdit
        Left = 3
        Top = 161
        DataBinding.DataField = 'emp_013'
        DataBinding.DataSource = dsEmpresa
        Properties.CharCase = ecUpperCase
        Properties.EditMask = '(99)9999-9999'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
        Width = 114
      end
      object edMail: TcxDBTextEdit
        Left = 8
        Top = 203
        AutoSize = False
        DataBinding.DataField = 'emp_014'
        DataBinding.DataSource = dsEmpresa
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Height = 22
        Width = 444
      end
      object cbTipo: TJvDBComboBox
        Left = 3
        Top = 113
        Width = 71
        Height = 21
        DataField = 'emp_012'
        DataSource = dsEmpresa
        Items.Strings = (
          'CNPJ'
          'CPF'
          'Outros')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 415
        Top = 65
        Width = 145
        Height = 21
        DataField = 'crt_codigo'
        DataSource = dsEmpresa
        KeyField = 'crt_codigo'
        ListField = 'crt_descricao'
        ListSource = dsListaRegimeTributario
        TabOrder = 2
      end
      object cxDBMaskEdit1: TcxDBMaskEdit
        Left = 145
        Top = 161
        DataBinding.DataField = 'celular'
        DataBinding.DataSource = dsEmpresa
        Properties.CharCase = ecUpperCase
        Properties.EditMask = '(99)99999-9999'
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 12
        Width = 114
      end
    end
    object pgSATNFC: TTabSheet
      Caption = 'SAT / MFE'
      ImageIndex = 2
      object lbInfoIBPT: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 543
        Width = 858
        Height = 19
        Align = alBottom
        Alignment = taCenter
        Caption = 'Importando tabela IBPT, aguarde...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        ExplicitWidth = 252
      end
      object grSAT: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 26
        Width = 858
        Height = 511
        Align = alClient
        Caption = 'SAT / MFE'
        TabOrder = 0
        object Label14: TLabel
          Left = 16
          Top = 63
          Width = 92
          Height = 13
          Caption = 'C'#243'digo de ativa'#231#227'o'
        end
        object Label19: TLabel
          Left = 382
          Top = 63
          Width = 78
          Height = 13
          Caption = 'Ind. Rat. ISSQN'
        end
        object Label22: TLabel
          Left = 561
          Top = 63
          Width = 81
          Height = 13
          Caption = 'Ind. Exig. ISSQN'
        end
        object Label23: TLabel
          Left = 209
          Top = 63
          Width = 79
          Height = 13
          Caption = 'CNPJ Sw. House'
        end
        object Label32: TLabel
          Left = 16
          Top = 106
          Width = 61
          Height = 13
          Caption = 'Caminho DLL'
        end
        object Label33: TLabel
          Left = 16
          Top = 153
          Width = 188
          Height = 13
          Caption = 'Assinatura Sw. House (344 caracteres)'
        end
        object Label43: TLabel
          Left = 382
          Top = 106
          Width = 108
          Height = 13
          Caption = 'Diret'#243'rio XML (cupons)'
        end
        object Label44: TLabel
          Left = 127
          Top = 63
          Width = 69
          Height = 13
          Caption = 'Vers'#227'o Layout'
        end
        object edSATcodAtivacao: TEdit
          Tag = 1
          Left = 16
          Top = 80
          Width = 105
          Height = 21
          TabOrder = 0
        end
        object cbIndRatISSQN: TComboBox
          Tag = 1
          Left = 382
          Top = 80
          Width = 173
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object cbIndExigISSQN: TComboBox
          Tag = 1
          Left = 561
          Top = 80
          Width = 180
          Height = 21
          Style = csDropDownList
          TabOrder = 3
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object edSWHCNPJ: TEdit
          Tag = 1
          Left = 209
          Top = 80
          Width = 167
          Height = 21
          TabOrder = 4
        end
        object edAssSWH: TEdit
          Tag = 1
          Left = 16
          Top = 167
          Width = 725
          Height = 21
          TabOrder = 7
        end
        object edCaminhoDLLSAT: TJvFilenameEdit
          Tag = 1
          Left = 16
          Top = 123
          Width = 360
          Height = 21
          AddQuotes = False
          TabOrder = 5
          Text = ''
        end
        object edSATDiretorioXML: TJvDirectoryEdit
          Tag = 1
          Left = 382
          Top = 123
          Width = 359
          Height = 21
          DialogKind = dkWin32
          TabOrder = 6
          Text = ''
        end
        object edSATVersaoLayout: TEdit
          Tag = 1
          Left = 127
          Top = 80
          Width = 76
          Height = 21
          TabOrder = 1
        end
        object btImportarIBPT: TAdvGlowButton
          AlignWithMargins = True
          Left = 207
          Top = 25
          Width = 167
          Height = 34
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'Importar tabela IBPT'
          ImageIndex = 23
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 8
          OnClick = btImportarIBPTClick
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
        end
        object GroupBox24: TGroupBox
          Left = 336
          Top = 198
          Width = 405
          Height = 97
          Caption = 'Controles Aparelho SAT'
          TabOrder = 9
          object btAtivarSAT: TAdvGlowButton
            Left = 12
            Top = 20
            Width = 109
            Height = 30
            Cursor = crHandPoint
            Caption = 'Ativar SAT'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = btAtivarSATClick
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
          object btConsultarSAT: TAdvGlowButton
            Left = 131
            Top = 20
            Width = 109
            Height = 30
            Cursor = crHandPoint
            Caption = 'Consultar SAT'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = btConsultarSATClick
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
          object btStatusOperacional: TAdvGlowButton
            Left = 249
            Top = 20
            Width = 109
            Height = 30
            Cursor = crHandPoint
            Caption = 'Status Operacional'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 2
            OnClick = btStatusOperacionalClick
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
          object btTesteFimAFim: TAdvGlowButton
            Left = 12
            Top = 58
            Width = 109
            Height = 30
            Cursor = crHandPoint
            Caption = 'Teste Fim a Fim'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 3
            OnClick = btTesteFimAFimClick
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
          object btAtualizacaoSW: TAdvGlowButton
            Left = 131
            Top = 58
            Width = 109
            Height = 30
            Cursor = crHandPoint
            Caption = 'Atualizar SW B'#225'sico'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 4
            OnClick = btAtualizacaoSWClick
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
          object btExtrairLog: TAdvGlowButton
            Left = 249
            Top = 58
            Width = 109
            Height = 30
            Cursor = crHandPoint
            Caption = 'Extrair Log'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 5
            OnClick = btExtrairLogClick
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
        object GroupBox32: TGroupBox
          Left = 16
          Top = 198
          Width = 314
          Height = 97
          Caption = 'MFE Integrador'
          TabOrder = 10
          object Label179: TLabel
            Left = 12
            Top = 14
            Width = 83
            Height = 13
            Caption = 'Pasta de Entrada'
          end
          object Label180: TLabel
            Left = 12
            Top = 52
            Width = 71
            Height = 13
            Caption = 'Pasta de Sa'#237'da'
          end
          object Label181: TLabel
            Left = 211
            Top = 14
            Width = 38
            Height = 13
            Caption = 'Timeout'
          end
          object edMFETimeout: TSpinEdit
            Tag = 1
            Left = 211
            Top = 28
            Width = 83
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 30
          end
          object edMFEInput: TJvDirectoryEdit
            Tag = 1
            Left = 12
            Top = 28
            Width = 193
            Height = 21
            DialogKind = dkWin32
            TabOrder = 2
            Text = 'c:\Integrador\Input\'
          end
          object edMFEOutput: TJvDirectoryEdit
            Tag = 1
            Left = 12
            Top = 66
            Width = 193
            Height = 21
            DialogKind = dkWin32
            TabOrder = 1
            Text = 'c:\Integrador\Output\'
          end
        end
        object rgTipoSisSAT: TRadioGroup
          Tag = 1
          Left = 16
          Top = 21
          Width = 187
          Height = 37
          Caption = 'Sistema utilizado'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'SAT'
            'MFE')
          TabOrder = 11
        end
        object grpConfigRede: TGroupBox
          Left = 19
          Top = 301
          Width = 725
          Height = 185
          Caption = '  Configura'#231#245'es de Rede  '
          TabOrder = 12
          object grpIPFix: TGroupBox
            Left = 166
            Top = 67
            Width = 289
            Height = 105
            Caption = '  IPFIX  '
            TabOrder = 5
            Visible = False
            object lblSSID2: TLabel
              Left = 36
              Top = 21
              Width = 10
              Height = 13
              Caption = 'IP'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID3: TLabel
              Left = 22
              Top = 51
              Width = 24
              Height = 13
              Caption = 'Mask'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID4: TLabel
              Left = 4
              Top = 81
              Width = 43
              Height = 13
              Caption = 'Gateway'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID5: TLabel
              Left = 160
              Top = 21
              Width = 26
              Height = 13
              Caption = 'DNS1'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID6: TLabel
              Left = 159
              Top = 51
              Width = 26
              Height = 13
              Caption = 'DNS2'
              Color = clBtnFace
              ParentColor = False
            end
            object edtSATRedeIP: TEdit
              Tag = 1
              Left = 60
              Top = 14
              Width = 88
              Height = 21
              TabOrder = 0
            end
            object edtSATRedeMask: TEdit
              Tag = 1
              Left = 60
              Top = 44
              Width = 88
              Height = 21
              TabOrder = 1
            end
            object edtSATRedeGW: TEdit
              Tag = 1
              Left = 60
              Top = 74
              Width = 88
              Height = 21
              TabOrder = 2
            end
            object edtSATRedeDNS1: TEdit
              Tag = 1
              Left = 196
              Top = 14
              Width = 87
              Height = 21
              TabOrder = 3
            end
            object edtSATRedeDNS2: TEdit
              Tag = 1
              Left = 196
              Top = 44
              Width = 87
              Height = 21
              TabOrder = 4
            end
          end
          object grpPPPoE: TGroupBox
            Left = 166
            Top = 67
            Width = 289
            Height = 105
            Caption = '  PPPoE  '
            TabOrder = 0
            Visible = False
            object lblSSID7: TLabel
              Left = 17
              Top = 24
              Width = 36
              Height = 13
              Caption = 'Usuario'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID8: TLabel
              Left = 17
              Top = 54
              Width = 30
              Height = 13
              Caption = 'Senha'
              Color = clBtnFace
              ParentColor = False
            end
            object edSATRedeUsuario: TEdit
              Tag = 1
              Left = 64
              Top = 16
              Width = 88
              Height = 21
              TabOrder = 0
            end
            object edSATRedeSenha: TEdit
              Tag = 1
              Left = 64
              Top = 46
              Width = 88
              Height = 21
              TabOrder = 1
            end
          end
          object grpWiFi: TGroupBox
            Left = 12
            Top = 67
            Width = 144
            Height = 105
            Caption = '  WiFi  '
            TabOrder = 1
            Visible = False
            object lblSSID: TLabel
              Left = 8
              Top = 21
              Width = 27
              Height = 13
              Caption = 'SSID:'
              Color = clBtnFace
              ParentColor = False
            end
            object lbl7: TLabel
              Left = 8
              Top = 51
              Width = 22
              Height = 13
              Caption = 'Seg:'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID1: TLabel
              Left = 8
              Top = 81
              Width = 30
              Height = 13
              Caption = 'Senha'
              Color = clBtnFace
              ParentColor = False
            end
            object edSATRedeSSID: TEdit
              Tag = 1
              Left = 47
              Top = 14
              Width = 82
              Height = 21
              TabOrder = 0
            end
            object cbSATRedeSeg: TComboBox
              Tag = 1
              Left = 47
              Top = 41
              Width = 82
              Height = 21
              Style = csDropDownList
              ItemIndex = 1
              TabOrder = 1
              Text = 'WEP'
              Items.Strings = (
                'NONE'
                'WEP'
                'WPA-PERSONAL'
                'WPA-ENTERPRISE')
            end
            object edSATRedeCodigo: TEdit
              Tag = 1
              Left = 47
              Top = 74
              Width = 82
              Height = 21
              TabOrder = 2
            end
          end
          object grpProxy: TGroupBox
            Left = 466
            Top = 19
            Width = 150
            Height = 153
            Caption = '  Proxy  '
            TabOrder = 2
            object lblSSID9: TLabel
              Left = 24
              Top = 48
              Width = 10
              Height = 13
              Caption = 'IP'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID10: TLabel
              Left = 11
              Top = 78
              Width = 26
              Height = 13
              Caption = 'Porta'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID11: TLabel
              Left = 3
              Top = 104
              Width = 36
              Height = 13
              Caption = 'Usuario'
              Color = clBtnFace
              ParentColor = False
            end
            object lblSSID12: TLabel
              Left = 8
              Top = 130
              Width = 30
              Height = 13
              Caption = 'Senha'
              Color = clBtnFace
              ParentColor = False
            end
            object cbbSATRedeProxy: TComboBox
              Tag = 1
              Left = 8
              Top = 16
              Width = 129
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = '0= N'#227'o usa proxy'
              OnChange = cbbSATRedeProxyChange
              Items.Strings = (
                '0= N'#227'o usa proxy'
                '1= Proxy com configura'#231#227'o'
                '2= Proxy transparente')
            end
            object edtSATRedeProxyIP: TEdit
              Tag = 1
              Left = 49
              Top = 44
              Width = 88
              Height = 21
              Enabled = False
              TabOrder = 1
            end
            object edtSATRedeProxyUser: TEdit
              Tag = 1
              Left = 49
              Top = 96
              Width = 88
              Height = 21
              Enabled = False
              TabOrder = 2
            end
            object edtSATRedeProxySenha: TEdit
              Tag = 1
              Left = 49
              Top = 122
              Width = 88
              Height = 21
              Enabled = False
              TabOrder = 3
            end
            object seSATRedeProxyPorta: TSpinEdit
              Tag = 1
              Left = 49
              Top = 70
              Width = 88
              Height = 22
              Enabled = False
              MaxValue = 999999
              MinValue = 0
              TabOrder = 4
              Value = 0
            end
          end
          object rgSATRedeTipoLan: TRadioGroup
            Tag = 1
            Left = 166
            Top = 19
            Width = 289
            Height = 41
            Caption = '  Tipo Rede  '
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'DHCP'
              'PPPoE'
              'IPFIX')
            TabOrder = 3
            OnClick = rgSATRedeTipoLanClick
          end
          object rgSATRedeTipoInter: TRadioGroup
            Tag = 1
            Left = 12
            Top = 19
            Width = 144
            Height = 41
            Caption = 'Tipo Rede'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'ETHE'
              'WIFI')
            TabOrder = 4
            OnClick = rgSATRedeTipoInterClick
          end
        end
      end
      object ProgressBarIbpt: TProgressBar
        Left = 0
        Top = 565
        Width = 864
        Height = 18
        Align = alBottom
        Step = 1
        TabOrder = 1
        Visible = False
      end
      object ckUtilizaSAT: TCheckBox
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 858
        Height = 17
        Align = alTop
        Caption = 'Utiliza SAT / MFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = ckUtilizaSATClick
      end
    end
    object pgNFCe: TTabSheet
      Caption = 'NFE / NFCe'
      ImageIndex = 11
      object pcConfigNFCEACBR: TPageControl
        Left = 0
        Top = 23
        Width = 864
        Height = 560
        ActivePage = pgConfigNFCEACBREmitente
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object pgConfigNFCEACBREmitente: TTabSheet
          Caption = 'Dados NFCe'
          object GroupBox4: TGroupBox
            Left = 3
            Top = 3
            Width = 318
            Height = 270
            Caption = '    NFCe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label81: TLabel
              Left = 11
              Top = 29
              Width = 54
              Height = 13
              Caption = #218'ltima nota'
              FocusControl = cxUltimaNFCE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label107: TLabel
              Left = 11
              Top = 75
              Width = 24
              Height = 13
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label183: TLabel
              Left = 11
              Top = 167
              Width = 139
              Height = 13
              Caption = 'Justificativa de conting'#234'ncia:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label188: TLabel
              Left = 11
              Top = 213
              Width = 144
              Height = 13
              Caption = 'N'#250'mero de vias na impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cxUltimaNFCE: TcxDBSpinEdit
              Left = 11
              Top = 44
              DataBinding.DataField = 'numero_nfce'
              DataBinding.DataSource = dsEmpresa
              ParentFont = False
              TabOrder = 0
              Width = 100
            end
            object cxSerieNFCE: TcxDBSpinEdit
              Left = 11
              Top = 89
              DataBinding.DataField = 'serie_nfce'
              DataBinding.DataSource = dsEmpresa
              ParentFont = False
              TabOrder = 1
              Width = 100
            end
            object edNFCeJustificativaContingencia: TEdit
              Tag = 1
              Left = 11
              Top = 186
              Width = 294
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object ckNFCeEmitirEmContingencia: TCheckBox
              Tag = 1
              Left = 11
              Top = 121
              Width = 254
              Height = 17
              Caption = 'Sempre emitir em conting'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object ckNFCeSugerirContingencia: TCheckBox
              Tag = 1
              Left = 11
              Top = 144
              Width = 294
              Height = 17
              Caption = 'Sugerir emitir em conting'#234'ncia na ocorr'#234'ncia de erros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edNFCeNumeroVias: TSpinEdit
              Tag = 1
              Left = 11
              Top = 232
              Width = 65
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxValue = 10
              MinValue = 1
              ParentFont = False
              TabOrder = 5
              Value = 1
            end
            object ckAtivarNFCE: TCheckBox
              Tag = 1
              AlignWithMargins = True
              Left = 9
              Top = 1
              Width = 15
              Height = 18
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
              OnClick = ckAtivarNFCEClick
            end
          end
        end
        object pgConfigNFEACBREmitente: TTabSheet
          Caption = 'Dados NFe'
          ImageIndex = 7
          DesignSize = (
            856
            532)
          object Label197: TLabel
            Left = 640
            Top = 2
            Width = 98
            Height = 13
            Caption = 'Caminho logotipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 2
            Width = 475
            Height = 370
            Caption = 'NFe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              475
              370)
            object Label157: TLabel
              Left = 11
              Top = 76
              Width = 24
              Height = 13
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label156: TLabel
              Left = 11
              Top = 30
              Width = 55
              Height = 13
              Caption = #218'ltima Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label167: TLabel
              Left = 11
              Top = 122
              Width = 108
              Height = 13
              Caption = 'CFOP de Sa'#237'da padr'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label168: TLabel
              Left = 11
              Top = 168
              Width = 178
              Height = 13
              Caption = 'Informa'#231#245'es complementares padr'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label169: TLabel
              Left = 11
              Top = 214
              Width = 239
              Height = 13
              Caption = 'Conta padr'#227'o para lan'#231'amento de contas a pagar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lbContaPagarNfe: TLabel
              Left = 125
              Top = 235
              Width = 29
              Height = 13
              Caption = 'Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label196: TLabel
              Left = 11
              Top = 265
              Width = 18
              Height = 13
              Caption = 'Site'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cxDBSpinEdit4: TcxDBSpinEdit
              Left = 11
              Top = 92
              DataBinding.DataField = 'serie_nfe'
              DataBinding.DataSource = dsEmpresa
              ParentFont = False
              TabOrder = 0
              Width = 100
            end
            object cxDBSpinEdit3: TcxDBSpinEdit
              Left = 11
              Top = 46
              DataBinding.DataField = 'numero_nfe'
              DataBinding.DataSource = dsEmpresa
              ParentFont = False
              TabOrder = 1
              Width = 100
            end
            object edNFeCFOPSaidaPadrao: TEdit
              Tag = 1
              Left = 11
              Top = 138
              Width = 108
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '5102'
            end
            object edNFeInfoComplementarPadrao: TEdit
              Tag = 1
              Left = 11
              Top = 184
              Width = 454
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edIDContaPagarPadaraoNfe: TcxDBButtonEdit
              Left = 11
              Top = 232
              DataBinding.DataField = 'id_conta_padrao_cpagar_nfe'
              DataBinding.DataSource = dsEmpresa
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edIDContaPagarPadaraoNfePropertiesButtonClick
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 108
            end
            object cxDBCheckBox9: TcxDBCheckBox
              Left = 7
              Top = 315
              Caption = 
                'Inserir custo de IPI e Substitui'#231#227'o tribut'#225'ria no custo do produ' +
                'to'
              DataBinding.DataField = 'inserir_custos_impostos_importacao_nfe'
              DataBinding.DataSource = dsEmpresa
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
            end
            object edSite: TEdit
              Tag = 1
              Left = 11
              Top = 282
              Width = 310
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 50
              ParentFont = False
              TabOrder = 5
            end
            object grpFotos: TGroupBox
              Left = 267
              Top = 13
              Width = 157
              Height = 167
              Caption = 'Logotipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              object Panel2: TPanel
                Left = 4
                Top = 14
                Width = 150
                Height = 150
                BevelInner = bvRaised
                BevelKind = bkSoft
                BevelOuter = bvNone
                TabOrder = 0
                object imgProduto: TJvImage
                  Left = 1
                  Top = 1
                  Width = 142
                  Height = 143
                  Center = True
                  Proportional = True
                  Stretch = True
                end
              end
            end
            object btLogo: TAdvGlowButton
              AlignWithMargins = True
              Left = 428
              Top = 23
              Width = 37
              Height = 37
              Anchors = [akLeft]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ImageIndex = 25
              Images = frmMenu.ImgList32
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = btLogoClick
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
            object ckNaoBaixarEstoqueNFe: TCheckBox
              Tag = 1
              Left = 11
              Top = 342
              Width = 204
              Height = 17
              Caption = 'N'#227'o baixar estoque ao emitir NFe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
          end
          object edLogotipo: TEdit
            Tag = 1
            Left = 640
            Top = 16
            Width = 98
            Height = 21
            Cursor = crIBeam
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
            Visible = False
          end
        end
        object pgConfigNFCEACBRCertificado: TTabSheet
          Caption = 'Certificado'
          object Label34: TLabel
            Left = 3
            Top = 17
            Width = 117
            Height = 13
            Caption = 'Tipo de Emiss'#227'o (SSLLib)'
          end
          object lCryptLib: TLabel
            Left = 80
            Top = 44
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'CryptLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lHttpLib: TLabel
            Left = 86
            Top = 71
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'HttpLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lXmlSign: TLabel
            Left = 68
            Top = 98
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'XMLSignLib'
            Color = clBtnFace
            ParentColor = False
          end
          object gbCertificado: TGroupBox
            Left = 3
            Top = 122
            Width = 283
            Height = 335
            Caption = 'Certificado'
            TabOrder = 0
            object Label36: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label63: TLabel
              Left = 8
              Top = 62
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object Label64: TLabel
              Left = 8
              Top = 105
              Width = 79
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object Label35: TLabel
              Left = 289
              Top = 16
              Width = 225
              Height = 65
              Caption = 
                'Informe o n'#250'mero de s'#233'rie do certificado'#13#10'Dispon'#237'vel no Internet' +
                ' Explorer no menu'#13#10'Ferramentas - Op'#231#245'es da Internet - Conte'#250'do '#13 +
                #10'Certificados - Exibir - Detalhes - '#13#10'N'#250'mero do certificado'
              Visible = False
            end
            object edNFCeSenhaCertificado: TEdit
              Tag = 1
              Left = 8
              Top = 78
              Width = 266
              Height = 21
              PasswordChar = '*'
              TabOrder = 0
            end
            object edNFCeNumSerieCertificado: TEdit
              Tag = 1
              Left = 8
              Top = 124
              Width = 186
              Height = 21
              TabOrder = 1
              OnChange = edNFCeNumSerieCertificadoChange
            end
            object edNFCeCaminhoCertificado: TJvFilenameEdit
              Tag = 1
              Left = 8
              Top = 35
              Width = 265
              Height = 21
              AddQuotes = False
              DefaultExt = '*.pfx'
              Filter = 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*'#39
              TabOrder = 2
              Text = ''
            end
            object btNFCeDataValidadeCertificado: TAdvGlowButton
              Left = 8
              Top = 151
              Width = 130
              Height = 35
              Caption = 'Data de Validade'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 3
              OnClick = btNFCeDataValidadeCertificadoClick
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
            object btNFCeSha256Certificado: TAdvGlowButton
              Left = 8
              Top = 291
              Width = 100
              Height = 35
              Caption = 'SHA256+RSA'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 4
              OnClick = btNFCeSha256CertificadoClick
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
            object btNFCeCNPJCertificado: TAdvGlowButton
              Left = 144
              Top = 192
              Width = 130
              Height = 35
              Caption = 'CNPJ'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 5
              OnClick = btNFCeCNPJCertificadoClick
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
            object btNFCeSubjectNameCertificado: TAdvGlowButton
              Left = 8
              Top = 192
              Width = 130
              Height = 35
              Caption = 'Subject Name'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 6
              OnClick = btNFCeSubjectNameCertificadoClick
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
            object btNFCeNumSerieCertificado: TAdvGlowButton
              Left = 144
              Top = 151
              Width = 130
              Height = 35
              Caption = 'Num.S'#233'rie'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 7
              OnClick = btNFCeNumSerieCertificadoClick
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
            object ckNFCeAssinar: TCheckBox
              Tag = 1
              Left = 114
              Top = 306
              Width = 54
              Height = 19
              Caption = 'Assinar'
              Checked = True
              State = cbChecked
              TabOrder = 8
            end
            object edNFCeSHA256: TEdit
              Tag = 1
              Left = 8
              Top = 264
              Width = 266
              Height = 21
              TabOrder = 9
              Text = '0548133600013704583493000190'
            end
            object btNFCeSelecionarCertificado: TAdvGlowButton
              Left = 200
              Top = 105
              Width = 73
              Height = 40
              Caption = 'Selecionar Certificado'
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 10
              OnClick = btNFCeSelecionarCertificadoClick
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
          object cbNFCeTipoEmissaoSSLLib: TComboBox
            Tag = 1
            Left = 126
            Top = 14
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 1
            OnChange = cbNFCeTipoEmissaoSSLLibChange
          end
          object cbNFCECryptLib: TComboBox
            Tag = 1
            Left = 126
            Top = 41
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 2
          end
          object cbNFCEHttpLib: TComboBox
            Tag = 1
            Left = 126
            Top = 68
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 3
          end
          object cbNFCEXmlSignLib: TComboBox
            Tag = 1
            Left = 126
            Top = 95
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 4
          end
        end
        object pgConfigNFCEACBRGeral: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object GroupBox6: TGroupBox
            Left = 3
            Top = 3
            Width = 270
            Height = 374
            Caption = 'Geral'
            TabOrder = 0
            object Label65: TLabel
              Left = 11
              Top = 108
              Width = 86
              Height = 13
              Caption = 'Forma de Emiss'#227'o'
            end
            object Label66: TLabel
              Left = 11
              Top = 62
              Width = 72
              Height = 13
              Caption = 'Formato Alerta'
            end
            object Label67: TLabel
              Left = 11
              Top = 363
              Width = 120
              Height = 13
              Caption = 'Modelo Documento Fiscal'
              Visible = False
            end
            object Label68: TLabel
              Left = 11
              Top = 154
              Width = 119
              Height = 13
              Caption = 'Vers'#227'o Documento Fiscal'
            end
            object Label69: TLabel
              Left = 11
              Top = 200
              Width = 73
              Height = 13
              Caption = 'IdToken/IdCSC'
            end
            object Label70: TLabel
              Left = 11
              Top = 246
              Width = 53
              Height = 13
              Caption = 'Token/CSC'
            end
            object Label71: TLabel
              Left = 110
              Top = 459
              Width = 198
              Height = 13
              Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
            end
            object ckNFCeSalvar: TCheckBox
              Tag = 1
              Left = 11
              Top = 315
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbNFCeFormaEmissao: TComboBox
              Left = 11
              Top = 127
              Width = 248
              Height = 21
              Enabled = False
              TabOrder = 1
            end
            object ckNFCeAtualizarXML: TCheckBox
              Tag = 1
              Left = 11
              Top = 16
              Width = 97
              Height = 17
              Caption = 'Atualizar XML'
              TabOrder = 2
            end
            object ckNFCeExibirErroSchema: TCheckBox
              Tag = 1
              Left = 11
              Top = 39
              Width = 129
              Height = 17
              Caption = 'Exibir Erro Schema'
              TabOrder = 3
            end
            object edNFCeFormatoAlerta: TEdit
              Tag = 1
              Left = 11
              Top = 81
              Width = 248
              Height = 21
              TabOrder = 4
            end
            object cbNFCeModeloDF: TComboBox
              Tag = 1
              Left = 11
              Top = 382
              Width = 248
              Height = 21
              TabOrder = 5
              Visible = False
            end
            object ckNFCeRetirarAcentos: TCheckBox
              Tag = 1
              Left = 11
              Top = 292
              Width = 193
              Height = 17
              Caption = 'Retirar Acentos dos XMLs enviados'
              TabOrder = 6
            end
            object cbNFCeVersaoDF: TComboBox
              Tag = 1
              Left = 11
              Top = 173
              Width = 248
              Height = 21
              TabOrder = 7
            end
            object edNfceIdToken: TEdit
              Tag = 1
              Left = 11
              Top = 219
              Width = 248
              Height = 21
              TabOrder = 8
            end
            object edNfceToken: TEdit
              Tag = 1
              Left = 11
              Top = 265
              Width = 248
              Height = 21
              TabOrder = 9
            end
            object edNFCePathLogs: TJvDirectoryEdit
              Tag = 1
              Left = 11
              Top = 336
              Width = 248
              Height = 21
              DialogKind = dkWin32
              TabOrder = 10
              Text = ''
            end
            object edNFCePathSchemas: TJvDirectoryEdit
              Tag = 1
              Left = 110
              Top = 478
              Width = 248
              Height = 21
              DialogKind = dkWin32
              TabOrder = 11
              Text = ''
            end
          end
        end
        object pgConfigNFCEACBRWebservice: TTabSheet
          Caption = 'WebService'
          ImageIndex = 2
          object GroupBox21: TGroupBox
            Left = 3
            Top = 3
            Width = 269
            Height = 219
            Caption = 'WebService'
            TabOrder = 0
            object Label72: TLabel
              Left = 8
              Top = 16
              Width = 119
              Height = 13
              Caption = 'Selecione UF de Destino:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label189: TLabel
              Left = 8
              Top = 167
              Width = 95
              Height = 13
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              Caption = 'Timeout (segundos)'
            end
            object ckNCFeVisualizar: TCheckBox
              Tag = 1
              Left = 8
              Top = 123
              Width = 153
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbNFCeUF: TComboBox
              Tag = 1
              Left = 8
              Top = 35
              Width = 249
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = 24
              ParentFont = False
              TabOrder = 1
              Text = 'SP'
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
            object ckNCFeSalvarSOAP: TCheckBox
              Tag = 1
              Left = 8
              Top = 146
              Width = 241
              Height = 17
              Caption = 'Salvar envelope SOAP'
              TabOrder = 2
            end
            object rgNFCeTipoAmb: TRadioGroup
              Tag = 1
              Left = 8
              Top = 65
              Width = 249
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 3
            end
            object edNFCeTimeout: TEdit
              Tag = 1
              Left = 8
              Top = 186
              Width = 102
              Height = 21
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              NumbersOnly = True
              TabOrder = 4
            end
          end
          object GroupBox23: TGroupBox
            Left = 3
            Top = 372
            Width = 269
            Height = 113
            Caption = 'Proxy'
            TabOrder = 1
            object Label73: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label74: TLabel
              Left = 213
              Top = 16
              Width = 26
              Height = 13
              Caption = 'Porta'
            end
            object Label75: TLabel
              Left = 8
              Top = 62
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label76: TLabel
              Left = 137
              Top = 62
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object edNFCeProxyHost: TEdit
              Tag = 1
              Left = 8
              Top = 35
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edNFCeProxyPorta: TEdit
              Tag = 1
              Left = 207
              Top = 35
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edNFCeProxyUser: TEdit
              Tag = 1
              Left = 8
              Top = 81
              Width = 123
              Height = 21
              TabOrder = 2
            end
            object edNFCeProxySenha: TEdit
              Tag = 1
              Left = 137
              Top = 81
              Width = 123
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object gbxRetornoEnvio: TGroupBox
            Left = 3
            Top = 228
            Width = 269
            Height = 138
            Caption = 'Retorno de Envio de NFe'
            TabOrder = 2
            object Label77: TLabel
              Left = 116
              Top = 39
              Width = 51
              Height = 13
              Caption = 'Tentativas'
            end
            object Label78: TLabel
              Left = 8
              Top = 85
              Width = 101
              Height = 13
              Caption = 'Intervalo (segundos)'
            end
            object Label79: TLabel
              Left = 8
              Top = 39
              Width = 102
              Height = 13
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              Caption = 'Aguardar (segundos)'
            end
            object ckNCFeAjustarAut: TCheckBox
              Tag = 1
              Left = 8
              Top = 16
              Width = 234
              Height = 17
              Caption = 'Ajustar Automaticamente prop. "Aguardar"'
              TabOrder = 0
            end
            object edNFCeTentativas: TEdit
              Tag = 1
              Left = 116
              Top = 58
              Width = 85
              Height = 21
              NumbersOnly = True
              TabOrder = 2
            end
            object edNFCeIntervalo: TEdit
              Tag = 1
              Left = 8
              Top = 104
              Width = 102
              Height = 21
              NumbersOnly = True
              TabOrder = 3
            end
            object edNFCeAguardar: TEdit
              Tag = 1
              Left = 8
              Top = 58
              Width = 102
              Height = 21
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              NumbersOnly = True
              TabOrder = 1
            end
          end
        end
        object pgConfigNFCEACBRArquivos: TTabSheet
          Caption = 'Arquivos'
          ImageIndex = 4
          object sbPathNFe: TSpeedButton
            Left = 240
            Top = 130
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label93: TLabel
            Left = 6
            Top = 116
            Width = 94
            Height = 13
            Caption = 'Pasta Arquivos NFe'
          end
          object Label94: TLabel
            Left = 6
            Top = 154
            Width = 143
            Height = 13
            Caption = 'Pasta Arquivos Cancelamento'
          end
          object sbPathCan: TSpeedButton
            Left = 240
            Top = 168
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label95: TLabel
            Left = 6
            Top = 192
            Width = 198
            Height = 13
            Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
          end
          object sbPathCCe: TSpeedButton
            Left = 240
            Top = 206
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label96: TLabel
            Left = 6
            Top = 230
            Width = 129
            Height = 13
            Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
          end
          object sbPathInu: TSpeedButton
            Left = 240
            Top = 244
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label97: TLabel
            Left = 6
            Top = 268
            Width = 101
            Height = 13
            Caption = 'Pasta Arquivos DPEC'
          end
          object sbPathDPEC: TSpeedButton
            Left = 240
            Top = 282
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label98: TLabel
            Left = 6
            Top = 306
            Width = 109
            Height = 13
            Caption = 'Pasta Arquivos Evento'
          end
          object sbPathEvento: TSpeedButton
            Left = 240
            Top = 320
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object edtPathCCe: TEdit
            Left = 6
            Top = 208
            Width = 235
            Height = 21
            TabOrder = 0
          end
          object edtPathNFe: TEdit
            Left = 6
            Top = 132
            Width = 235
            Height = 21
            TabOrder = 1
          end
          object edtPathCan: TEdit
            Left = 6
            Top = 170
            Width = 235
            Height = 21
            TabOrder = 2
          end
          object edtPathInu: TEdit
            Left = 6
            Top = 246
            Width = 235
            Height = 21
            TabOrder = 3
          end
          object edtPathDPEC: TEdit
            Left = 6
            Top = 284
            Width = 235
            Height = 21
            TabOrder = 4
          end
          object edtPathEvento: TEdit
            Left = 6
            Top = 322
            Width = 235
            Height = 21
            TabOrder = 5
          end
          object cbxSalvarArqs: TCheckBox
            Left = 6
            Top = 0
            Width = 210
            Height = 17
            Caption = 'Salvar Arquivos em Pastas Separadas'
            TabOrder = 6
          end
          object cbxPastaMensal: TCheckBox
            Left = 6
            Top = 16
            Width = 210
            Height = 17
            Caption = 'Criar Pastas Mensalmente'
            TabOrder = 7
          end
          object cbxAdicionaLiteral: TCheckBox
            Left = 6
            Top = 32
            Width = 210
            Height = 17
            Caption = 'Adicionar Literal no nome das pastas'
            TabOrder = 8
          end
          object cbxEmissaoPathNFe: TCheckBox
            Left = 6
            Top = 48
            Width = 233
            Height = 17
            Caption = 'Salvar NFe pelo campo Data de Emiss'#227'o'
            TabOrder = 9
          end
          object cbxSalvaPathEvento: TCheckBox
            Left = 6
            Top = 64
            Width = 233
            Height = 17
            Caption = 'Salvar Arqs de Eventos'
            TabOrder = 10
          end
          object cbxSepararPorCNPJ: TCheckBox
            Left = 6
            Top = 80
            Width = 233
            Height = 17
            Caption = 'Separar Arqs pelo CNPJ do Certificado'
            TabOrder = 11
          end
          object cbxSepararPorModelo: TCheckBox
            Left = 6
            Top = 96
            Width = 251
            Height = 17
            Caption = 'Separar Arqs pelo Modelo do Documento'
            TabOrder = 12
          end
        end
        object pgConfigNFCEACBREmail: TTabSheet
          Caption = 'Email'
          ImageIndex = 2
          object Label100: TLabel
            Left = 8
            Top = 8
            Width = 69
            Height = 13
            Caption = 'Servidor SMTP'
          end
          object Label101: TLabel
            Left = 206
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Porta'
          end
          object Label102: TLabel
            Left = 8
            Top = 48
            Width = 36
            Height = 13
            Caption = 'Usu'#225'rio'
          end
          object Label103: TLabel
            Left = 137
            Top = 48
            Width = 30
            Height = 13
            Caption = 'Senha'
          end
          object Label104: TLabel
            Left = 8
            Top = 88
            Width = 122
            Height = 13
            Caption = 'Assunto do email enviado'
          end
          object Label105: TLabel
            Left = 8
            Top = 160
            Width = 93
            Height = 13
            Caption = 'Mensagem do Email'
          end
          object edtSmtpHost: TEdit
            Left = 8
            Top = 24
            Width = 193
            Height = 21
            TabOrder = 0
          end
          object edtSmtpPort: TEdit
            Left = 206
            Top = 24
            Width = 51
            Height = 21
            TabOrder = 1
          end
          object edtSmtpUser: TEdit
            Left = 8
            Top = 64
            Width = 120
            Height = 21
            TabOrder = 2
          end
          object edtSmtpPass: TEdit
            Left = 137
            Top = 64
            Width = 120
            Height = 21
            TabOrder = 3
          end
          object edtEmailAssunto: TEdit
            Left = 8
            Top = 104
            Width = 249
            Height = 21
            TabOrder = 4
          end
          object cbEmailSSL: TCheckBox
            Left = 10
            Top = 136
            Width = 167
            Height = 17
            Caption = 'SMTP exige conex'#227'o segura'
            TabOrder = 5
          end
          object mmEmailMsg: TMemo
            Left = 8
            Top = 176
            Width = 249
            Height = 130
            TabOrder = 6
          end
        end
        object pgConfigNFCEACBRDANFE: TTabSheet
          Caption = 'DANFe'
          ImageIndex = 1
          object GroupBox5: TGroupBox
            Left = 3
            Top = 3
            Width = 262
            Height = 78
            Caption = 'NFCe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label82: TLabel
              Left = 16
              Top = 24
              Width = 71
              Height = 13
              Caption = 'Tipo de DANFe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cbNFCeTipoDanfe: TComboBox
              Tag = 1
              Left = 16
              Top = 43
              Width = 234
              Height = 21
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox25: TGroupBox
            Left = 3
            Top = 87
            Width = 262
            Height = 87
            Caption = 'NFe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label159: TLabel
              Left = 16
              Top = 32
              Width = 71
              Height = 13
              Caption = 'Tipo de DANFe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cbNFeTipoDanfe: TComboBox
              Tag = 1
              Left = 16
              Top = 51
              Width = 234
              Height = 21
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
      object ckUtilizaNFE: TCheckBox
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 858
        Height = 17
        Align = alTop
        Caption = 'Utiliza NFe / NFCe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = ckUtilizaNFEClick
      end
    end
    object pgEcf: TTabSheet
      Caption = 'ECF'
      ImageIndex = 10
      object pcConfigECF: TPageControl
        Left = 0
        Top = 23
        Width = 864
        Height = 560
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'ECF'
          ImageIndex = 3
          DesignSize = (
            856
            532)
          object SbArqLog: TSpeedButton
            Left = 856
            Top = 216
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 759
          end
          object Label126: TLabel
            Left = 11
            Top = 200
            Width = 107
            Height = 13
            Caption = 'Mensagem Aguarde...'
          end
          object Label129: TLabel
            Left = 600
            Top = 200
            Width = 126
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Mensagem Trabalhando...'
            ExplicitLeft = 503
          end
          object Label127: TLabel
            Left = 11
            Top = 322
            Width = 49
            Height = 13
            Align = alCustom
            Caption = 'Resposta:'
            Layout = tlBottom
          end
          object Label128: TLabel
            Left = 11
            Top = 284
            Width = 38
            Height = 13
            Align = alCustom
            Caption = 'Status: '
            Layout = tlBottom
          end
          object lbECFStatus: TLabel
            Left = 55
            Top = 284
            Width = 54
            Height = 13
            Align = alCustom
            Caption = 'Desativado'
            Layout = tlBottom
          end
          object Label133: TLabel
            Left = 11
            Top = 303
            Width = 82
            Height = 13
            Align = alCustom
            Caption = #218'ltimo comando: '
            Layout = tlBottom
          end
          object lbECFUltimoComando: TLabel
            Left = 95
            Top = 303
            Width = 39
            Height = 13
            Align = alCustom
            Caption = 'Nenhum'
            Layout = tlBottom
          end
          object ckECFTentarNovamente: TCheckBox
            Tag = 1
            Left = 11
            Top = 131
            Width = 121
            Height = 17
            Caption = 'Tentar Novamente'
            TabOrder = 0
          end
          object ckECFBloqueiaMouseTeclado: TCheckBox
            Tag = 1
            Left = 11
            Top = 154
            Width = 145
            Height = 17
            Caption = 'Bloqueia Mouse Teclado'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object ckECFExibeMsg: TCheckBox
            Tag = 1
            Left = 11
            Top = 177
            Width = 131
            Height = 17
            Caption = 'Exibe Msg Aguarde...'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object ckECFArredondaPorQtd: TCheckBox
            Tag = 1
            Left = 162
            Top = 131
            Width = 187
            Height = 17
            Caption = 'Arredondamento por Quantidade'
            TabOrder = 1
          end
          object ckECFGavetaSinalInvertido: TCheckBox
            Tag = 1
            Left = 478
            Top = 141
            Width = 187
            Height = 17
            Caption = 'Gaveta Sinal Invertido'
            TabOrder = 3
            Visible = False
          end
          object ckECFDescricaoGrande: TCheckBox
            Tag = 1
            Left = 478
            Top = 164
            Width = 187
            Height = 17
            Caption = 'Descri'#231#227'o Grande'
            Checked = True
            State = cbChecked
            TabOrder = 6
            Visible = False
          end
          object edECFMsgTrabalhando: TEdit
            Tag = 1
            Left = 600
            Top = 219
            Width = 175
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 7
            Text = 'Impressora est'#225' trabalhando'
          end
          object Button1: TButton
            Left = 124
            Top = 246
            Width = 101
            Height = 32
            Caption = 'Fontes do ECF'
            TabOrder = 8
            Visible = False
          end
          object btnIdentificaPafECF: TButton
            Left = 231
            Top = 246
            Width = 101
            Height = 32
            Caption = 'Identifica PAF-ECF'
            TabOrder = 9
            Visible = False
          end
          object ckECFArredondamentoItemMFD: TCheckBox
            Tag = 1
            Left = 162
            Top = 154
            Width = 147
            Height = 17
            Caption = 'Arredondamento Item MFD'
            TabOrder = 4
          end
          object edECFMsgAguarde: TEdit
            Tag = 1
            Left = 11
            Top = 219
            Width = 486
            Height = 21
            TabOrder = 10
            Text = 'Comunicando com o ECF'
          end
          object bAtivar: TBitBtn
            Left = 11
            Top = 246
            Width = 107
            Height = 32
            Anchors = [akTop, akRight]
            Cancel = True
            Caption = 'Ativar (teste)'
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF0808391818A51818A51818A51818A51818A518
              18A51818A51818A51818A51818A51818A51818A5101042FFFFFFFFFFFF1818AD
              0000C60000C60000CE0000CE0000DE1818E71818EF0808EF0008EF1821EF2131
              F73142FF2929BDFFFFFFFFFFFF1010AD0000B50000BD0000C66B6BE7DEDEFFFF
              FFFFFFFFFFE7E7FF848CF71821EF1829EF2939EF2129C6FFFFFFFFFFFF1010AD
              0000B50000BD8C8CE7FFFFFFDEDEF79494EF8C8CEFD6D6F7FFFFFFADB5FF2129
              EF2939EF2129C6FFFFFFFFFFFF1010AD0000B56B6BD6FFFFFFADADEF0808CE00
              00D60000DE0000E79494EFFFFFFF949CF71829EF2129C6FFFFFFFFFFFF1010A5
              1010BDD6D6F7F7F7FF3131CE1818D61818DE1010DE0000E70008E7E7E7FFEFEF
              FF2931EF2129C6FFFFFFFFFFFF1818A53131BDEFEFFFDEDEF72929CE3131D631
              31DE3131DE3939E71010E7B5B5F7FFFFFF3139EF1821BDFFFFFFFFFFFF1818A5
              3939BDE7E7F7EFEFFF4242CE3939D69C9CEF9C9CEF4A4AE74A4AEFDEDEFFEFF7
              FF1821EF1818BDFFFFFFFFFFFF2121A54242BDADADDEFFFFFF9C9CE74A4AD6EF
              EFFFF7F7FF5252E79494EFFFFFFFC6C6F70810E71010BDFFFFFFFFFFFF2929A5
              5A5AC66363C6DEDEEFFFFFFF9494E7E7E7F7E7E7FFA5A5EFFFFFFFEFEFF78484
              E76363EF1010BDFFFFFFFFFFFF2929A56B6BC66363C67373C6ADADD68484D6E7
              E7FFEFEFFFA5A5E7D6D6EF8484DE7B7BE78C8CEF3131BDFFFFFFFFFFFF3131A5
              7B7BC67373C67373CE7373C67B7BCEF7F7FFF7F7FF8484DE8484D68C8CE78C8C
              E79494E74242BDFFFFFFFFFFFF313194ADADDEADADDEADADDEADADE7B5B5E7B5
              B5E7B5B5E7BDBDEFBDBDEFC6C6EFC6C6F7D6D6F78C8CB5FFFFFFFFFFFF181894
              21218C3131943131943131943131943131943131943131943131943131943131
              94292994181884FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 11
            OnClick = bAtivarClick
          end
          object mResp: TMemo
            AlignWithMargins = True
            Left = 11
            Top = 333
            Width = 834
            Height = 188
            Margins.Left = 11
            Margins.Top = 0
            Margins.Right = 11
            Margins.Bottom = 11
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 13
            Font.Name = 'Consolas'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 12
            WantReturns = False
            WordWrap = False
          end
          object btECFTestaVenda: TButton
            Left = 338
            Top = 246
            Width = 114
            Height = 32
            Caption = 'Emitir venda teste'
            TabOrder = 13
            Visible = False
            OnClick = btECFTestaVendaClick
          end
          object btECFCancelarCupom: TButton
            Left = 458
            Top = 246
            Width = 114
            Height = 32
            Caption = 'Cancelar Cupom'
            TabOrder = 14
            Visible = False
            OnClick = btECFCancelarCupomClick
          end
          object ckECFindiceFormaPagDuasCasas: TCheckBox
            Tag = 1
            Left = 162
            Top = 177
            Width = 304
            Height = 17
            Caption = #205'ndice de forma de pagamento com duas casas'
            TabOrder = 15
          end
          object GroupBox27: TGroupBox
            Left = 11
            Top = 7
            Width = 834
            Height = 106
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 16
            object Label162: TLabel
              Left = 11
              Top = 53
              Width = 47
              Height = 13
              Caption = '&Baud rate'
              Color = clBtnFace
              FocusControl = cbECFBaud
              ParentColor = False
            end
            object Label163: TLabel
              Left = 122
              Top = 53
              Width = 43
              Height = 13
              Caption = '&Data Bits'
              Color = clBtnFace
              FocusControl = cbECFDataBits
              ParentColor = False
            end
            object Label164: TLabel
              Left = 233
              Top = 53
              Width = 28
              Height = 13
              Caption = '&Parity'
              Color = clBtnFace
              FocusControl = cbECFParity
              ParentColor = False
            end
            object Label165: TLabel
              Left = 303
              Top = 53
              Width = 42
              Height = 13
              Caption = '&Stop Bits'
              Color = clBtnFace
              FocusControl = cbECFStopBits
              ParentColor = False
            end
            object Label166: TLabel
              Left = 363
              Top = 53
              Width = 64
              Height = 13
              Caption = '&Handshaking '
              Color = clBtnFace
              FocusControl = cbECFHandShaking
              ParentColor = False
            end
            object Label123: TLabel
              Left = 124
              Top = 7
              Width = 26
              Height = 13
              Caption = 'Porta'
            end
            object Label122: TLabel
              Left = 11
              Top = 7
              Width = 34
              Height = 13
              Caption = 'Modelo'
            end
            object Label124: TLabel
              Left = 233
              Top = 7
              Width = 40
              Height = 13
              Caption = 'TimeOut'
            end
            object Label125: TLabel
              Left = 303
              Top = 7
              Width = 44
              Height = 13
              Caption = 'Intervalo'
            end
            object Label130: TLabel
              Left = 363
              Top = 7
              Width = 63
              Height = 13
              Caption = 'Linhas Buffer'
            end
            object Label132: TLabel
              Left = 434
              Top = 7
              Width = 87
              Height = 13
              Caption = 'P'#225'gina de C'#243'digo:'
              Color = clBtnFace
              ParentColor = False
            end
            object cbECFBaud: TComboBox
              Tag = 1
              Left = 11
              Top = 72
              Width = 105
              Height = 21
              TabOrder = 0
              OnChange = cbECFBaudChange
              Items.Strings = (
                '110'
                '300'
                '600'
                '1200'
                '2400'
                '4800'
                '9600'
                '14400'
                '19200'
                '38400'
                '56000'
                '57600'
                '115200')
            end
            object cbECFDataBits: TComboBox
              Tag = 1
              Left = 122
              Top = 72
              Width = 105
              Height = 21
              ItemIndex = 3
              TabOrder = 1
              Text = '8'
              OnChange = cbECFDataBitsChange
              Items.Strings = (
                '5'
                '6'
                '7'
                '8')
            end
            object cbECFParity: TComboBox
              Tag = 1
              Left = 233
              Top = 72
              Width = 64
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 2
              Text = 'None'
              Items.Strings = (
                'None'
                'Odd'
                'Even'
                'Mark'
                'Space')
            end
            object cbECFStopBits: TComboBox
              Tag = 1
              Left = 303
              Top = 72
              Width = 54
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = '1'
              Items.Strings = (
                '1'
                '1,5'
                '2')
            end
            object cbECFHandShaking: TComboBox
              Tag = 1
              Left = 363
              Top = 72
              Width = 158
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 4
              Text = 'Nenhum'
              Items.Strings = (
                'Nenhum'
                'XON/XOFF'
                'RTS/CTS'
                'DTR/DSR')
            end
            object cbECFPorta: TComboBox
              Tag = 1
              Left = 122
              Top = 26
              Width = 105
              Height = 21
              TabOrder = 5
              Text = 'Procurar'
            end
            object cbECFModelo: TComboBox
              Tag = 1
              Left = 11
              Top = 26
              Width = 105
              Height = 21
              Style = csDropDownList
              TabOrder = 6
              Items.Strings = (
                'Procurar'
                'ecfNaoFiscal'
                'ecfBematech'
                'ecfSweda'
                'ecfDaruma'
                'ecfSchalter'
                'ecfMecaf'
                'ecfYanco'
                'ecfDataRegis'
                'ecfUrano'
                'ecfICash'
                'ecfQuattro')
            end
            object edECFTimeOut: TSpinEdit
              Tag = 1
              Left = 233
              Top = 26
              Width = 64
              Height = 22
              AutoSize = False
              MaxValue = 100
              MinValue = 1
              TabOrder = 7
              Value = 10
            end
            object edECFIntervaloAposComando: TSpinEdit
              Tag = 1
              Left = 303
              Top = 26
              Width = 54
              Height = 22
              AutoSize = False
              Increment = 10
              MaxValue = 1000
              MinValue = 0
              TabOrder = 8
              Value = 100
            end
            object edECFLinBuf: TSpinEdit
              Tag = 1
              Left = 363
              Top = 26
              Width = 65
              Height = 22
              AutoSize = False
              MaxValue = 1000
              MinValue = 0
              TabOrder = 9
              Value = 0
            end
            object edECFPaginaCodigo: TSpinEdit
              Tag = 1
              Left = 434
              Top = 26
              Width = 87
              Height = 22
              MaxValue = 9999999
              MinValue = 0
              TabOrder = 10
              Value = 0
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'RFD'
          ImageIndex = 2
          TabVisible = False
          object PageControl2: TPageControl
            Left = 0
            Top = 55
            Width = 856
            Height = 477
            ActivePage = TabSheet6
            Align = alClient
            TabOrder = 1
            object TabSheet6: TTabSheet
              Caption = 'Sw.House'
              ImageIndex = 1
              object Label135: TLabel
                Left = 12
                Top = 10
                Width = 60
                Height = 13
                Caption = 'Razao Social'
              end
              object Label136: TLabel
                Left = 276
                Top = 10
                Width = 23
                Height = 13
                Caption = 'COO'
              end
              object Label137: TLabel
                Left = 12
                Top = 51
                Width = 25
                Height = 13
                Caption = 'CNPJ'
              end
              object Label138: TLabel
                Left = 143
                Top = 51
                Width = 65
                Height = 13
                Caption = 'Insc.Estadual'
              end
              object Label139: TLabel
                Left = 276
                Top = 51
                Width = 67
                Height = 13
                Caption = 'Insc.Municipal'
              end
              object Label140: TLabel
                Left = 12
                Top = 91
                Width = 46
                Height = 13
                Caption = 'Aplicativo'
              end
              object Label141: TLabel
                Left = 192
                Top = 91
                Width = 37
                Height = 13
                Caption = 'Numero'
              end
              object Label142: TLabel
                Left = 276
                Top = 91
                Width = 33
                Height = 13
                Caption = 'Vers'#227'o'
              end
              object Label143: TLabel
                Left = 12
                Top = 132
                Width = 34
                Height = 13
                Caption = 'Linha 1'
              end
              object Label144: TLabel
                Left = 204
                Top = 132
                Width = 34
                Height = 13
                Caption = 'Linha 2'
              end
              object edSH_RazaoSocial: TEdit
                Left = 12
                Top = 26
                Width = 245
                Height = 21
                Cursor = crIBeam
                TabOrder = 0
              end
              object edSH_COO: TEdit
                Left = 276
                Top = 26
                Width = 121
                Height = 21
                Cursor = crIBeam
                TabOrder = 1
              end
              object edSH_CNPJ: TEdit
                Left = 12
                Top = 66
                Width = 121
                Height = 21
                Cursor = crIBeam
                TabOrder = 5
              end
              object edSH_IE: TEdit
                Left = 144
                Top = 66
                Width = 114
                Height = 21
                Cursor = crIBeam
                TabOrder = 7
              end
              object edSH_IM: TEdit
                Left = 276
                Top = 66
                Width = 121
                Height = 21
                Cursor = crIBeam
                TabOrder = 9
              end
              object edSH_Aplicativo: TEdit
                Left = 12
                Top = 106
                Width = 169
                Height = 21
                Cursor = crIBeam
                TabOrder = 2
              end
              object edSH_NumeroAP: TEdit
                Left = 192
                Top = 106
                Width = 65
                Height = 21
                Cursor = crIBeam
                TabOrder = 3
              end
              object edSH_VersaoAP: TEdit
                Left = 276
                Top = 106
                Width = 121
                Height = 21
                Cursor = crIBeam
                TabOrder = 4
              end
              object edSH_Linha1: TEdit
                Left = 12
                Top = 146
                Width = 181
                Height = 21
                Cursor = crIBeam
                TabOrder = 6
              end
              object edSH_Linha2: TEdit
                Left = 208
                Top = 146
                Width = 189
                Height = 21
                Cursor = crIBeam
                TabOrder = 8
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'ACBrRFD.INI'
              object Panel4: TPanel
                Left = 0
                Top = 415
                Width = 848
                Height = 34
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object bRFDLer: TButton
                  Left = 131
                  Top = 6
                  Width = 75
                  Height = 25
                  Caption = 'Ler'
                  TabOrder = 0
                end
                object bRFDSalvar: TButton
                  Left = 219
                  Top = 6
                  Width = 75
                  Height = 25
                  Caption = 'Salvar'
                  TabOrder = 1
                end
              end
              object mRFDParam: TMemo
                Left = 0
                Top = 0
                Width = 848
                Height = 415
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = 12
                Font.Name = 'Fixedsys'
                Font.Pitch = fpVariable
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 856
            Height = 55
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              856
              55)
            object sbDirRFD: TSpeedButton
              Left = 854
              Top = 23
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 757
            end
            object Label145: TLabel
              Left = 134
              Top = 7
              Width = 108
              Height = 13
              Caption = 'Diret'#243'rio arquivos RFD'
            end
            object chRFD: TCheckBox
              Left = 24
              Top = 13
              Width = 82
              Height = 31
              Caption = 'Gerar RFD'
              TabOrder = 0
            end
            object edDirRFD: TEdit
              Left = 134
              Top = 23
              Width = 720
              Height = 18
              Cursor = crIBeam
              Anchors = [akLeft, akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = 11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Redu'#231#227'o Z'
          ImageIndex = 6
          object Label146: TLabel
            Left = 3
            Top = 39
            Width = 45
            Height = 13
            Caption = 'Resposta'
            Layout = tlBottom
          end
          object btnDadosRZ: TButton
            Left = 3
            Top = 3
            Width = 108
            Height = 25
            Caption = 'Ler Dados RZ'
            TabOrder = 0
            OnClick = btnDadosRZClick
          end
          object mRZ: TMemo
            AlignWithMargins = True
            Left = 3
            Top = 129
            Width = 850
            Height = 400
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 13
            Font.Name = 'Courier'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
            WantReturns = False
            WordWrap = False
          end
          object btnDadosUltimaRZ: TButton
            Left = 117
            Top = 3
            Width = 129
            Height = 25
            Caption = 'Ler Dados '#218'ltima RZ'
            TabOrder = 2
            OnClick = btnDadosUltimaRZClick
          end
          object btnEfetuarRZ: TButton
            Left = 252
            Top = 3
            Width = 108
            Height = 25
            Caption = 'Efetuar Redu'#231#227'o Z'
            TabOrder = 3
            OnClick = btnEfetuarRZClick
          end
        end
        object tbsMenuFiscal: TTabSheet
          Caption = 'Menu Fiscal'
          ImageIndex = 6
          object grpMenuFiscalOpcoes: TGroupBox
            Left = 0
            Top = 0
            Width = 856
            Height = 532
            Align = alClient
            Caption = 'Op'#231#245'es do Menu fiscal'
            TabOrder = 0
            object btnMenuFiscalLX: TButton
              Left = 10
              Top = 20
              Width = 171
              Height = 25
              Caption = 'LX'
              TabOrder = 0
              OnClick = btnMenuFiscalLXClick
            end
            object btnMenuFiscalLMFC: TButton
              Left = 10
              Top = 51
              Width = 171
              Height = 25
              Caption = 'LMFC'
              TabOrder = 1
              OnClick = btnMenuFiscalLMFCClick
            end
            object btnMenuFiscalLMFS: TButton
              Left = 10
              Top = 82
              Width = 171
              Height = 25
              Caption = 'LMFS'
              TabOrder = 2
              OnClick = btnMenuFiscalLMFSClick
            end
            object btnMenuFiscalMFDEspelho: TButton
              Left = 187
              Top = 20
              Width = 171
              Height = 25
              Caption = 'Espelho MFD'
              Enabled = False
              TabOrder = 3
              Visible = False
              OnClick = btnMenuFiscalMFDEspelhoClick
            end
            object btnMenuFiscalMFDArq: TButton
              Left = 187
              Top = 51
              Width = 171
              Height = 25
              Caption = 'Arq. MFD'
              Enabled = False
              TabOrder = 4
              Visible = False
              OnClick = btnMenuFiscalMFDArqClick
            end
            object btnMenuFiscalRelMeiosPagto: TButton
              Left = 364
              Top = 20
              Width = 171
              Height = 25
              Caption = 'Meios Pagto.'
              Enabled = False
              TabOrder = 5
              Visible = False
              OnClick = btnMenuFiscalRelMeiosPagtoClick
            end
            object btnMenuFiscalRelDAVEmitidos: TButton
              Left = 364
              Top = 51
              Width = 171
              Height = 25
              Caption = 'DAV Emitidos'
              Enabled = False
              TabOrder = 6
              Visible = False
              OnClick = btnMenuFiscalRelDAVEmitidosClick
            end
            object btnMenuFiscalRelIdentPAFECF: TButton
              Left = 364
              Top = 82
              Width = 171
              Height = 25
              Caption = 'Identifica'#231#227'o PAF-ECF'
              Enabled = False
              TabOrder = 7
              Visible = False
              OnClick = btnMenuFiscalRelIdentPAFECFClick
            end
            object btnMenuFiscalConfigPAFECF: TButton
              Left = 364
              Top = 113
              Width = 171
              Height = 25
              Caption = 'Configura'#231#245'es do PAF-ECF'
              Enabled = False
              TabOrder = 8
              Visible = False
              OnClick = btnMenuFiscalConfigPAFECFClick
            end
            object btnMenuFiscalNotaPaulista: TButton
              Left = 187
              Top = 82
              Width = 171
              Height = 25
              Caption = 'CAT52'
              Enabled = False
              TabOrder = 9
              Visible = False
              OnClick = btnMenuFiscalNotaPaulistaClick
            end
            object btnArqMFNovo: TButton
              Left = 10
              Top = 113
              Width = 171
              Height = 25
              Caption = 'Arq.MF (novo)'
              TabOrder = 10
              OnClick = btnArqMFNovoClick
            end
            object btnArqMFDNovo: TButton
              Left = 187
              Top = 113
              Width = 171
              Height = 25
              Caption = 'Arq.MFD (novo)'
              Enabled = False
              TabOrder = 11
              Visible = False
              OnClick = btnArqMFDNovoClick
            end
            object pgcMenuFiscalTipo: TPageControl
              Left = 2
              Top = 282
              Width = 852
              Height = 248
              ActivePage = tbsMenuFiscalTipoData
              Align = alBottom
              TabOrder = 12
              Visible = False
              object tbsMenuFiscalTipoData: TTabSheet
                Caption = 'Emiss'#227'o por intervalo de data'
                object Label148: TLabel
                  Left = 15
                  Top = 15
                  Width = 19
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'de :'
                end
                object Label149: TLabel
                  Left = 142
                  Top = 15
                  Width = 16
                  Height = 13
                  Caption = 'at'#233
                end
                object edtDtInicial: TDateTimePicker
                  Left = 40
                  Top = 10
                  Width = 96
                  Height = 21
                  Date = 40620.448168067130000000
                  Time = 40620.448168067130000000
                  TabOrder = 0
                end
                object edtDtFinal: TDateTimePicker
                  Left = 163
                  Top = 10
                  Width = 96
                  Height = 21
                  Date = 40620.448168067130000000
                  Time = 40620.448168067130000000
                  TabOrder = 1
                end
              end
              object tbsMenuFiscalTipoCOO: TTabSheet
                Caption = 'Emiss'#227'o por intervalo de COO'
                ImageIndex = 1
                object Label150: TLabel
                  Left = 15
                  Top = 15
                  Width = 19
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'de :'
                end
                object Label151: TLabel
                  Left = 142
                  Top = 15
                  Width = 16
                  Height = 13
                  Caption = 'at'#233
                end
                object edtCOOInicial: TSpinEdit
                  Left = 40
                  Top = 10
                  Width = 96
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 0
                  Value = 1
                end
                object edtCOOFinal: TSpinEdit
                  Left = 163
                  Top = 10
                  Width = 96
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 1
                  Value = 1
                end
              end
            end
            object btECFCancelarCupom2: TButton
              Left = 187
              Top = 144
              Width = 171
              Height = 25
              Caption = 'Cancelar Cupom'
              Enabled = False
              TabOrder = 13
              Visible = False
              OnClick = btECFCancelarCupomClick
            end
          end
          object chkMenuFiscalCotepe1704: TCheckBox
            Left = 30
            Top = 171
            Width = 467
            Height = 17
            Caption = 
              'Gerar o arquivo no formato do ato Cotepe 17/04 (Somente para os ' +
              'menus: LMFC, Arq.MFD)'
            TabOrder = 2
          end
          object chkMenuFiscalGerarArquivo: TCheckBox
            Left = 10
            Top = 148
            Width = 171
            Height = 17
            Caption = 'Efetuar a gera'#231#227'o de arquivo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object tsTagsImpressao: TTabSheet
          Caption = 'Tags de Impress'#227'o'
          ImageIndex = 6
          TabVisible = False
          DesignSize = (
            856
            532)
          object Label152: TLabel
            Left = 84
            Top = 24
            Width = 34
            Height = 13
            Caption = 'Altura'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label153: TLabel
            Left = 12
            Top = 24
            Width = 44
            Height = 13
            Caption = 'Largura'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label154: TLabel
            Left = 0
            Top = 0
            Width = 856
            Height = 16
            Align = alTop
            Alignment = taCenter
            Caption = 'Tags de Formata'#231#227'o de Impress'#227'o e C'#243'digo de Barras'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 384
          end
          object speBarrasLargura: TSpinEdit
            Left = 12
            Top = 40
            Width = 46
            Height = 22
            AutoSize = False
            MaxValue = 6
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object BitBtn6: TBitBtn
            Left = 673
            Top = 22
            Width = 133
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Enviar Linha Gerencial'
            Default = True
            ModalResult = 1
            TabOrder = 0
          end
          object MemoTesteTags: TMemo
            Left = 0
            Top = 328
            Width = 856
            Height = 204
            Align = alBottom
            Lines.Strings = (
              'TEXTO LIVRE'
              'At'#233' 600 caracteres'
              #193#201#205#211#218#225#233#237#243#250#231#199#227#245#195#213#202#234#192#224
              ''
              '</linha_dupla>'
              ''
              '<CE>*** TAGS DE FORMATA'#199#195'O ***</CE>'
              '<e>EXPANDIDO</e>'
              '<N>Negrito</n>'
              '<S>Sublinhado</s>'
              '<C>CONDENSADO</C>'
              '<i>ITALICO</I>'
              '</linha_simples>'
              ''
              '<CE>*** TAGS DE C'#211'DIGO DE BARRAS ***</CE>'
              'EAN 8:'
              '<ean8>1234567</ean8>'
              'EAN13:'
              '<ean13>123456789012</ean13>'
              'INT25:'
              '<inter>1234567890</inter>'
              'CODE39: '
              '<code39>ABCDE12345</code39>'
              'CODE93:'
              '<code93>ABC123abc</code93>'
              'CODE128:'
              '<code128>$-=+ABC123abc</code128>'
              'UPCA:'
              '<upca>12345678901</upca>'
              'CODABAR :'
              '<codabar>$12345</codabar>'
              '</linha_simples>'
              ''
              '<CE>*** TAGS DE FORMATA'#199#195'O ***</CE>'
              '<ce>NO CENTRO</CE>'
              '<AD>A Direira</ad>'
              '</linha_simples>'
              ''
              '<CE>*** TESTE DE TAGS INV'#193'LIDAS ***</CE>'
              '<ce> <>tags inv'#225'lidas no texto">">><<</CE>'
              '<AD><da><ec></</A Direira</ad>'
              ''
              '</linha_dupla>')
            ScrollBars = ssVertical
            TabOrder = 5
          end
          object chBarrasImprimeTexto: TCheckBox
            Left = 164
            Top = 40
            Width = 151
            Height = 19
            Caption = 'Imprime Texto na Barra'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 3
          end
          object speBarrasAltura: TSpinEdit
            Left = 84
            Top = 40
            Width = 46
            Height = 22
            AutoSize = False
            MaxValue = 200
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object chIgnorarTagsFormatacao: TCheckBox
            Left = 164
            Top = 66
            Width = 183
            Height = 19
            Caption = 'Ignorar TAGs de Formata'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
        end
      end
      object ckUtilizaECF: TCheckBox
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 858
        Height = 17
        Align = alTop
        Caption = 'Utiliza ECF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = ckUtilizaECFClick
      end
    end
    object pgMesa: TTabSheet
      Caption = 'Mesa'
      ImageIndex = 3
      object Label37: TLabel
        Left = 370
        Top = 135
        Width = 108
        Height = 16
        Caption = 'Taxas e Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 9
        Top = 3
        Width = 105
        Height = 16
        Caption = 'Op'#231#245'es de mesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox7: TGroupBox
        Left = 370
        Top = 157
        Width = 351
        Height = 256
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label11: TLabel
          Left = 11
          Top = 11
          Width = 119
          Height = 13
          Caption = 'Taxa de servi'#231'o 10%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 11
          Top = 38
          Width = 284
          Height = 13
          Caption = 'Mensagem para taxa de servi'#231'o (10% do gar'#231'om)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edTaxaAdicional: TComboBox
          Left = 137
          Top = 8
          Width = 49
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 0
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object edMensagemTxServico: TEdit
          Tag = 1
          Left = 11
          Top = 57
          Width = 284
          Height = 21
          TabOrder = 1
          Text = 'TAXA DE SERVI'#199'O (+)'
          OnExit = edMensagemTxServicoExit
        end
        object GroupBox8: TGroupBox
          Left = 11
          Top = 83
          Width = 284
          Height = 156
          Caption = 'Couvert Art'#237'stico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object ckCouvertMesa: TCheckBox
            Tag = 1
            Left = 12
            Top = 23
            Width = 150
            Height = 17
            Caption = 'Ativar couvert na mesa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edMensagemCouvertMesa: TEdit
            Tag = 1
            Left = 12
            Top = 46
            Width = 261
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = edMensagemCouvertMesaExit
          end
          object GroupBox9: TGroupBox
            Left = 11
            Top = 73
            Width = 262
            Height = 72
            Caption = 'Valor de entrada'
            TabOrder = 2
            object Label40: TLabel
              Left = 130
              Top = 17
              Width = 42
              Height = 13
              Caption = 'Feminino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 18
              Top = 17
              Width = 46
              Height = 13
              Caption = 'Masculino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edValorCouvertFem: TJvValidateEdit
              Tag = 1
              Left = 128
              Top = 36
              Width = 89
              Height = 21
              Flat = False
              ParentFlat = False
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '0'
              HasMinValue = True
              TabOrder = 1
              OnKeyPress = edValorCouvertFemKeyPress
            end
            object edValorCouvertMasc: TJvValidateEdit
              Tag = 1
              Left = 16
              Top = 36
              Width = 89
              Height = 21
              Flat = False
              ParentFlat = False
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '0'
              HasMinValue = True
              TabOrder = 0
              OnKeyPress = edValorCouvertMascKeyPress
            end
          end
        end
        object GroupBox10: TGroupBox
          Left = 11
          Top = 236
          Width = 284
          Height = 68
          Caption = 'Consuma'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          object ckConsumacao: TCheckBox
            Tag = 1
            Left = 18
            Top = 22
            Width = 150
            Height = 17
            Caption = 'Ativar consuma'#231#227'o m'#237'nima'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edValorConsumacao: TJvValidateEdit
            Tag = 1
            Left = 189
            Top = 20
            Width = 68
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfCurrency
            DecimalPlaces = 2
            EditText = '0'
            HasMinValue = True
            TabOrder = 1
          end
        end
      end
      object GroupBox11: TGroupBox
        Left = 9
        Top = 25
        Width = 345
        Height = 540
        TabOrder = 1
        object ckExigirGarcomLancarItem: TCheckBox
          Tag = 1
          Left = 11
          Top = 9
          Width = 309
          Height = 17
          Caption = 'Solicitar senha para gar'#231'om lan'#231'ar item na mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ckExigirSenhaCancelamentoItens: TCheckBox
          Tag = 1
          Left = 11
          Top = 32
          Width = 192
          Height = 17
          Caption = 'Exigir senha para cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ckExigirSenhaTransfMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 55
          Width = 192
          Height = 17
          Caption = 'Exigir senha para transferir mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ckHabilitarAlterarValorUnitario: TCheckBox
          Tag = 1
          Left = 11
          Top = 101
          Width = 192
          Height = 17
          Caption = 'Habilitar valor unit'#225'rio para venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ckAgruparItensIguaisMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 124
          Width = 278
          Height = 17
          Caption = 'Agrupar itens com mesmo c'#243'digo na mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ckExigePreFechamentoMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 147
          Width = 254
          Height = 17
          Caption = 'Exigir a impress'#227'o do cupom de pr'#233' fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ckImprimirIngredientesCozinhaMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 170
          Width = 230
          Height = 17
          Caption = 'Imprimir lista de ingredientes para cozinha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object ckFacionadoMaiorValorMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 193
          Width = 230
          Height = 17
          Caption = 'Cobrar maior valor para Item Fracionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ckImprimirCupomCancelamentoItemMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 216
          Width = 182
          Height = 17
          Caption = 'Imprimir cupom ao cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ckLiberacaoPosFechamentoMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 239
          Width = 262
          Height = 17
          Caption = 'Aguardar libera'#231#227'o ap'#243's o fechamento (limpeza)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object ckExigirSenhaReabrirMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 78
          Width = 192
          Height = 17
          Caption = 'Exigir senha para reabrir mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ckCederTrocoGarcomMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 262
          Width = 246
          Height = 17
          Caption = 'Ceder troco da venda ao gar'#231'om (caixinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object ckOcultarValoresMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 285
          Width = 246
          Height = 17
          Caption = 'Ocultar valores da venda na Tela de Mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object ckAvisaEstoqueMinimoMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 308
          Width = 246
          Height = 17
          Caption = 'Emitir aviso de estoque m'#237'nimo ao lan'#231'ar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object ckExigeJustificativaCancItemMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 331
          Width = 262
          Height = 17
          Caption = 'Exigir justificativa ao cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object ckExigirsenhafechamentomesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 354
          Width = 262
          Height = 17
          Caption = 'Exigir senha no fechamento da mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ckExigirsenhaprefechamentomesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 377
          Width = 276
          Height = 17
          Caption = 'Exigir senha no pr'#233' fechamento da mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object ckImprimirVariasViasCupomMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 400
          Width = 326
          Height = 17
          Caption = 'Permite escolher a quantidade de vias a imprimir no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object ckExigirSenhaJuntarMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 423
          Width = 214
          Height = 17
          Caption = 'Exigir senha para juntar mesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object ckExigir70pcValorUnitMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 446
          Width = 318
          Height = 17
          Caption = 'Exigir valor m'#237'nimo de 70% do valor unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object ckFracionado70pcCatDiffMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 469
          Width = 331
          Height = 17
          Caption = 'Cobrar 70% do valor quando fracionado de categorias diferentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          WordWrap = True
        end
        object ckNaoPermitirAlterarQtdMesaTouch: TCheckBox
          Tag = 1
          Left = 11
          Top = 492
          Width = 318
          Height = 17
          Caption = 'N'#227'o permitir alterar quantidade  do item (apenas modo touch)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object ckHabilitarAlterarValorUnitariocouvertmesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 515
          Width = 317
          Height = 17
          Caption = 'Permitir alterar valor unit'#225'rio no couvert art'#237'stico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
      end
      object ckUtilizacontroleambiente: TDBCheckBox
        Left = 378
        Top = 425
        Width = 173
        Height = 17
        Caption = 'Utiliza controle de ambiente'
        DataField = 'b_utiliza_controle_ambiente'
        DataSource = dsEmpresa
        TabOrder = 2
        Visible = False
        OnClick = ckUtilizacontroleambienteClick
      end
      object btVinculacaoMesaAmbiente: TAdvGlowButton
        AlignWithMargins = True
        Left = 536
        Top = 419
        Width = 152
        Height = 27
        Hint = 'Definir ambientes'
        Margins.Right = 5
        Caption = 'Vincular mesas a ambientes'
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Visible = False
        OnClick = btVinculacaoMesaAmbienteClick
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
      object GroupBox29: TGroupBox
        Left = 370
        Top = 25
        Width = 351
        Height = 104
        TabOrder = 4
        object ckExigirsenhacancelarmesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 9
          Width = 262
          Height = 17
          Caption = 'Exigir senha para cancelar mesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ckExigirsenhatransferiritem: TCheckBox
          Tag = 1
          Left = 11
          Top = 32
          Width = 262
          Height = 17
          Caption = 'Exigir senha para transferir Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ckExigirnomemesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 55
          Width = 262
          Height = 17
          Caption = 'Exigir nome na abertura da mesa '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ckAgruparItensIguaisImpressaoMesa: TCheckBox
          Tag = 1
          Left = 11
          Top = 78
          Width = 326
          Height = 17
          Caption = 'Agrupar itens iguais na impress'#227'o do pr'#233' fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object pgDelivery: TTabSheet
      Caption = 'Delivery'
      ImageIndex = 4
      object AdvGroupBox1: TAdvGroupBox
        Left = 3
        Top = 3
        Width = 344
        Height = 488
        TabOrder = 0
        object Label46: TLabel
          Left = 10
          Top = 442
          Width = 175
          Height = 13
          Caption = 'Mensagem no cupom de fechamento'
        end
        object Label175: TLabel
          Left = 91
          Top = 396
          Width = 197
          Height = 13
          Caption = 'Informe o tempo de espera para entrega'
        end
        object dbValordelivery: TcxDBCurrencyEdit
          Tag = -1
          Left = 10
          Top = 30
          DataBinding.DataField = 'taxadeliverypadrao'
          DataBinding.DataSource = dsEmpresa
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '#,##0.00'
          Properties.UseLeftAlignmentOnEditing = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          OnKeyPress = dbValordeliveryKeyPress
          Width = 121
        end
        object ckHabilitarAlterarValorUnitarioDL: TCheckBox
          Tag = 1
          Left = 10
          Top = 63
          Width = 192
          Height = 17
          Caption = 'Habilitar valor unit'#225'rio para venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edMensagemCupomDelivery: TEdit
          Tag = 1
          Left = 10
          Top = 461
          Width = 284
          Height = 19
          TabOrder = 2
          Text = 'AGRADECEMOS A PREFER'#202'NCIA'
          OnExit = edMensagemTxServicoExit
        end
        object ckImprimirIngredientesCozinhaDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 86
          Width = 230
          Height = 17
          Caption = 'Imprimir lista de ingredientes para cozinha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ckFacionadoMaiorValorDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 109
          Width = 230
          Height = 17
          Caption = 'Cobrar maior valor para Item Fracionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ckNumeroVendaPorCaixaDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 132
          Width = 284
          Height = 17
          Caption = 'Zerar n'#250'mero de pedido (venda) ao fechar o caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ckImprimirCupomFechamentoDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 155
          Width = 265
          Height = 17
          Caption = 'Imprimir cupom n'#227'o fiscal no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ckCederTrocoEntregadorDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 178
          Width = 254
          Height = 17
          Caption = 'Ceder troco da venda ao entregador (caixinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object ckSuprimirCabecalhoRodapeDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 201
          Width = 254
          Height = 17
          Caption = 'N'#227'o imprimir cabe'#231'alho e rodap'#233' no cupom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ckAvisaEstoqueMinimoDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 224
          Width = 246
          Height = 17
          Caption = 'Emitir aviso de estoque m'#237'nimo ao lan'#231'ar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ckPermiteAlterarTaxaDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 247
          Width = 303
          Height = 17
          Caption = 'Permite alterar a taxa de delivery no momento da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object ckNaoImprimirCozinhaDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 270
          Width = 303
          Height = 17
          Caption = 'N'#227'o enviar itens para impressora de produ'#231#227'o (cozinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object ckFracionado70pcCatDiffDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 316
          Width = 331
          Height = 17
          Caption = 'Cobrar 70% do valor quando fracionado de categorias diferentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          WordWrap = True
        end
        object CKEXIGIR70PCVALORUNITDELIVERY: TCheckBox
          Tag = 1
          Left = 10
          Top = 293
          Width = 318
          Height = 17
          Caption = 'Exigir valor m'#237'nimo de 70% do valor unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object ckImprimirDadosEndClienteCozinhaDelivery: TCheckBox
          Tag = 1
          Left = 10
          Top = 339
          Width = 331
          Height = 17
          Caption = 'Imprimir endere'#231'o do cliente na impress'#227'o de produ'#231#227'o (cozinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          WordWrap = True
        end
        object JvDBSpinEdit1: TJvDBSpinEdit
          Left = 9
          Top = 393
          Width = 76
          Height = 19
          TabOrder = 16
          DataField = 'tempo_espera_delivery'
          DataSource = dsEmpresa
        end
        object ckTaxadeliverypadrao: TCheckBox
          Tag = 1
          Left = 10
          Top = 7
          Width = 317
          Height = 17
          Caption = 'Habilita taxa de delivery valor '#250'nico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnClick = ckTaxadeliverypadraoClick
        end
        object ckEnviar_email_informando_situacao_pedido: TCheckBox
          Tag = 1
          Left = 9
          Top = 420
          Width = 331
          Height = 17
          Caption = 'Enviar e-mail informando a situa'#231#227'o do pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          WordWrap = True
        end
        object ckCaixinhaEntregador: TCheckBox
          Tag = 1
          Left = 10
          Top = 362
          Width = 246
          Height = 17
          Caption = 'Exibir caixinha entregador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
      end
      object AdvGroupBox2: TAdvGroupBox
        Left = 353
        Top = 3
        Width = 410
        Height = 226
        TabOrder = 1
        object Label83: TLabel
          Left = 10
          Top = 36
          Width = 52
          Height = 13
          Caption = 'Porta COM'
        end
        object Label84: TLabel
          Left = 10
          Top = 64
          Width = 50
          Height = 13
          Caption = 'Baud Rate'
        end
        object Label85: TLabel
          Left = 10
          Top = 91
          Width = 43
          Height = 13
          Caption = 'Data bits'
        end
        object Label86: TLabel
          Left = 10
          Top = 118
          Width = 37
          Height = 13
          Caption = 'Stop bit'
        end
        object Label87: TLabel
          Left = 10
          Top = 145
          Width = 42
          Height = 13
          Caption = 'Paridade'
        end
        object Label88: TLabel
          Left = 10
          Top = 172
          Width = 58
          Height = 13
          Caption = 'Flow control'
        end
        object ckUtilizaIDChamada: TCheckBox
          Tag = 1
          Left = 10
          Top = 11
          Width = 175
          Height = 17
          Caption = 'Utiliza identificador de chamada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edPortaIDChamada: TEdit
          Tag = 1
          Left = 81
          Top = 34
          Width = 121
          Height = 19
          TabOrder = 1
        end
        object cbBaudIDChamada: TComboBox
          Tag = 1
          Left = 81
          Top = 61
          Width = 121
          Height = 21
          ItemIndex = 0
          TabOrder = 2
          Text = '9600'
          Items.Strings = (
            '9600')
        end
        object cbDatabIDChamada: TComboBox
          Tag = 1
          Left = 81
          Top = 88
          Width = 121
          Height = 21
          TabOrder = 3
          Text = '8'
          Items.Strings = (
            '5'
            '6'
            '7'
            '8')
        end
        object cbStopIDChamada: TComboBox
          Tag = 1
          Left = 81
          Top = 115
          Width = 121
          Height = 21
          TabOrder = 4
          Text = '1'
          Items.Strings = (
            '1'
            '1.5'
            '2')
        end
        object cbParidadeIDChamada: TComboBox
          Tag = 1
          Left = 81
          Top = 142
          Width = 121
          Height = 21
          TabOrder = 5
          Text = 'None'
          Items.Strings = (
            'None'
            'Odd'
            'Even'
            'Mark'
            'Space')
        end
        object cbFlowcontrolIDChamada: TComboBox
          Tag = 1
          Left = 81
          Top = 169
          Width = 121
          Height = 21
          TabOrder = 6
          Text = 'None'
          Items.Strings = (
            'None'
            'Hardware'
            'Software'
            'Custom')
        end
        object CKIGNORADDDIDCHAMADA: TCheckBox
          Tag = 1
          Left = 10
          Top = 196
          Width = 265
          Height = 17
          Caption = 'Ignorar DDD (dois primeiros d'#237'gitos) ao identificar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = ckUtilizaBalancaClick
        end
        object AdvGroupBox4: TAdvGroupBox
          Left = 218
          Top = 34
          Width = 186
          Height = 134
          TabOrder = 8
          object Label91: TLabel
            Left = 11
            Top = 60
            Width = 35
            Height = 13
            Caption = 'Status:'
            Color = clBtnFace
            ParentColor = False
          end
          object meIdchamda: TMemo
            Left = 11
            Top = 79
            Width = 166
            Height = 44
            TabOrder = 0
          end
          object btTesteIdChamada: TAdvGlowButton
            Left = 11
            Top = 13
            Width = 166
            Height = 41
            Caption = 'Testar identificador'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = btTesteIdChamadaClick
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
      end
      object AdvGroupBox5: TAdvGroupBox
        Left = 353
        Top = 235
        Width = 410
        Height = 256
        TabOrder = 2
        object Label192: TLabel
          Left = 10
          Top = 36
          Width = 48
          Height = 13
          Caption = 'Cliente id:'
        end
        object Label193: TLabel
          Left = 10
          Top = 64
          Width = 67
          Height = 13
          Caption = 'Cliente Secret'
        end
        object Label194: TLabel
          Left = 10
          Top = 91
          Width = 40
          Height = 13
          Caption = 'Usuario:'
        end
        object Label195: TLabel
          Left = 10
          Top = 118
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object edClient_id: TcxDBTextEdit
          Left = 81
          Top = 33
          DataBinding.DataField = 'cliente_id_ifood'
          DataBinding.DataSource = dsEmpresa
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object edClient_secret: TcxDBTextEdit
          Left = 81
          Top = 61
          DataBinding.DataField = 'cliente_secret_ifood'
          DataBinding.DataSource = dsEmpresa
          Enabled = False
          Properties.PasswordChar = '*'
          TabOrder = 2
          Width = 121
        end
        object edUsername: TcxDBTextEdit
          Left = 81
          Top = 88
          DataBinding.DataField = 'username_ifood'
          DataBinding.DataSource = dsEmpresa
          Enabled = False
          TabOrder = 3
          Width = 121
        end
        object edPassword: TcxDBTextEdit
          Left = 81
          Top = 115
          DataBinding.DataField = 'password_ifood'
          DataBinding.DataSource = dsEmpresa
          Enabled = False
          Properties.PasswordChar = '*'
          TabOrder = 4
          Width = 121
        end
        object ckUtilizaIFood: TcxDBCheckBox
          Left = 7
          Top = 7
          Caption = 'Utiliza controle IFood'
          DataBinding.DataField = 'utiliza_ifood'
          DataBinding.DataSource = dsEmpresa
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Transparent = True
          OnClick = ckUtilizaIFoodClick
        end
      end
    end
    object pgPDV: TTabSheet
      Caption = 'PDV'
      ImageIndex = 5
      object GroupBox13: TGroupBox
        Left = 3
        Top = 3
        Width = 358
        Height = 268
        TabOrder = 0
        object ckAlterarValorUnitarioPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 9
          Width = 309
          Height = 17
          Caption = 'Permite alterar valor unit'#225'rio do item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ckAlterarQtdPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 32
          Width = 192
          Height = 17
          Caption = 'Permite alterar quantidade  do item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ckPermiteDescontoFechamentoPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 55
          Width = 192
          Height = 17
          Caption = 'Permite desconto no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ckPermiteDescontoItemPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 78
          Width = 192
          Height = 17
          Caption = 'Permite desconto no item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ckExigirSenhaCancelamentoItensPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 101
          Width = 222
          Height = 17
          Caption = 'Solicitar senha para cancelamento do item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ckExigirSenhaCancelamentoVendaPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 124
          Width = 309
          Height = 17
          Caption = 'Solicitar senha para cancelamento da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ckSolicitarCLienteVendaPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 147
          Width = 232
          Height = 17
          Caption = 'Solicitar cliente na abertura da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ckAvisaEstoqueMinimoPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 170
          Width = 246
          Height = 17
          Caption = 'Emitir aviso de estoque m'#237'nimo ao lan'#231'ar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object ckExigeJustificativaCancItemPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 193
          Width = 262
          Height = 17
          Caption = 'Exigir justificativa ao cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ckImprimirVariasViasCupomPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 216
          Width = 326
          Height = 17
          Caption = 'Permite escolher a quantidade de vias a imprimir no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ckPermiteAlterarQuantidadeBalancaPDV: TCheckBox
          Tag = 1
          Left = 11
          Top = 239
          Width = 271
          Height = 17
          Caption = 'Permite alterar peso (quantidade) obtido da balan'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
      end
    end
    object pgBalcao: TTabSheet
      Caption = 'Balc'#227'o'
      ImageIndex = 6
      object GroupBox14: TGroupBox
        Left = 3
        Top = 3
        Width = 367
        Height = 468
        TabOrder = 0
        object Label80: TLabel
          Left = 13
          Top = 424
          Width = 339
          Height = 13
          Caption = 
            'Mensagem no final do cupom  abaixo do numero do pedido (via clie' +
            'nte)'
        end
        object ckFacionadoMaiorValorBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 9
          Width = 230
          Height = 17
          Caption = 'Cobrar maior valor para Item Fracionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ckUtilizaPainelSenhaBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 32
          Width = 230
          Height = 17
          Caption = 'Utiliza painel de senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CKALTERARVALORUNITARIOBALCAO: TCheckBox
          Tag = 1
          Left = 13
          Top = 55
          Width = 309
          Height = 17
          Caption = 'Permite alterar valor unit'#225'rio do item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CKEXIGIRSENHACANCELAMENTOITENSBALCAO: TCheckBox
          Tag = 1
          Left = 13
          Top = 78
          Width = 222
          Height = 17
          Caption = 'Solicitar senha para cancelamento do item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CKSOLICITARCLIENTEVENDABALCAO: TCheckBox
          Tag = 1
          Left = 13
          Top = 124
          Width = 232
          Height = 17
          Caption = 'Solicitar cliente na abertura da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ckExigirSenhaCancelamentoVendaBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 101
          Width = 309
          Height = 17
          Caption = 'Solicitar senha para cancelamento da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ckPermiteDescontoFechamentoBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 147
          Width = 292
          Height = 17
          Caption = 'Permite desconto no fechamento do cupom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ckBalcaoModoTouch: TCheckBox
          Tag = 1
          Left = 13
          Top = 238
          Width = 268
          Height = 17
          Caption = 'Utilizar a venda em Balc'#227'o no modo Touch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ckEmiteFiscalBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 261
          Width = 92
          Height = 17
          Caption = 'Emite Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object ckExibeCodProdutoBalcaoTouch: TCheckBox
          Tag = 1
          Left = 13
          Top = 307
          Width = 302
          Height = 17
          Caption = 'Habilitar campo de c'#243'digo do produto para busca (Touch)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object ckOcultaObsTecladoBalcaoTouch: TCheckBox
          Tag = 1
          Left = 13
          Top = 284
          Width = 302
          Height = 17
          Caption = 'Ocultar campo de observa'#231#245'es e teclado (Touch)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object ckAvisaEstoqueMinimoBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 332
          Width = 246
          Height = 17
          Caption = 'Emitir aviso de estoque m'#237'nimo ao lan'#231'ar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object ckExigeJustificativaCancItemBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 355
          Width = 262
          Height = 17
          Caption = 'Exigir justificativa ao cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object edMensagemCupomBalcao: TEdit
          Left = 13
          Top = 439
          Width = 339
          Height = 21
          TabOrder = 17
        end
        object ckImprimirVariasViasCupomBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 192
          Width = 326
          Height = 17
          Caption = 'Permite escolher a quantidade de vias a imprimir no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = ckImprimirVariasViasCupomBalcaoClick
        end
        object ckImprimirDuasViasCupomBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 215
          Width = 326
          Height = 17
          Caption = 'Sempre imprimir duas vias no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = ckImprimirDuasViasCupomBalcaoClick
        end
        object ckNaoImprimirCozinhaBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 378
          Width = 303
          Height = 17
          Caption = 'N'#227'o enviar itens para impressora de produ'#231#227'o (cozinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ckPermiteDescontoitemBalcao: TCheckBox
          Tag = 1
          Left = 13
          Top = 169
          Width = 262
          Height = 17
          Caption = 'Permite desconto no item '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object CKIMPRIMEDESTAQUE: TCheckBox
          Tag = 1
          Left = 13
          Top = 401
          Width = 303
          Height = 17
          Caption = 'Imprimir N'#186' Pedido em destaque no cabe'#231'alho (cozinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
      end
    end
    object pgComanda: TTabSheet
      Caption = 'Comanda'
      ImageIndex = 7
      object GroupBox15: TGroupBox
        Left = 319
        Top = 3
        Width = 346
        Height = 562
        TabOrder = 1
        object ckExigirGarcomLancarItemComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 9
          Width = 276
          Height = 17
          Caption = 'Solicitar senha para gar'#231'om lan'#231'ar item na comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ckExigirSenhaCancelamentoItensComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 32
          Width = 192
          Height = 17
          Caption = 'Exigir senha para cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ckHabilitarAlterarValorUnitarioComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 101
          Width = 192
          Height = 17
          Caption = 'Habilitar valor unit'#225'rio para venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ckAgruparItensIguaisComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 124
          Width = 309
          Height = 17
          Caption = 'Agrupar itens com mesmo c'#243'digo na comanda '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ckExigePreFechamentoComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 147
          Width = 254
          Height = 17
          Caption = 'Exigir a impress'#227'o do cupom de pr'#233' fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ckImprimirIngredientesCozinhaComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 170
          Width = 230
          Height = 17
          Caption = 'Imprimir lista de ingredientes para cozinha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object ckFacionadoMaiorValorComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 193
          Width = 230
          Height = 17
          Caption = 'Cobrar maior valor para Item Fracionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ckExigirSenhaCancelamentoComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 55
          Width = 192
          Height = 17
          Caption = 'Exigir senha para cancelar comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ckImprimirCupomCancelamentoItemComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 214
          Width = 182
          Height = 17
          Caption = 'Imprimir cupom ao cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ckLiberacaoPosFechamentoComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 237
          Width = 254
          Height = 17
          Caption = 'Aguardar libera'#231#227'o ap'#243's o fechamento (limpeza)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object ckExigirSenhaReabrirComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 78
          Width = 192
          Height = 17
          Caption = 'Exigir senha para reabrir comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ckCederTrocoGarcomComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 260
          Width = 254
          Height = 17
          Caption = 'Ceder troco da venda ao gar'#231'om (caixinha)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object ckOcultarValoresComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 283
          Width = 270
          Height = 17
          Caption = 'Ocultar valores da venda na Tela de Comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object ckAvisaEstoqueMinimoComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 306
          Width = 246
          Height = 17
          Caption = 'Emitir aviso de estoque m'#237'nimo ao lan'#231'ar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object ckExigeJustificativaCancItemComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 329
          Width = 262
          Height = 17
          Caption = 'Exigir justificativa ao cancelar item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object ckExigirsenhaprefechamentocomanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 375
          Width = 276
          Height = 17
          Caption = 'Exigir senha no pr'#233' fechamento da comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ckExigirsenhafechamentocomanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 352
          Width = 262
          Height = 17
          Caption = 'Exigir senha no fechamento da comanda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object ckImprimirVariasViasCupomComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 398
          Width = 326
          Height = 17
          Caption = 'Permite escolher a quantidade de vias a imprimir no fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object ckExigirSenhaJuntarComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 421
          Width = 214
          Height = 17
          Caption = 'Exigir senha para juntar comandas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object ckExigir70pcValorUnitComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 444
          Width = 318
          Height = 17
          Caption = 'Exigir valor m'#237'nimo de 70% do valor unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object ckFracionado70pcCatDiffComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 467
          Width = 331
          Height = 17
          Caption = 'Cobrar 70% do valor quando fracionado de categorias diferentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          WordWrap = True
        end
        object ckNaoPermitirAlterarQtdComandaTouch: TCheckBox
          Tag = 1
          Left = 11
          Top = 490
          Width = 318
          Height = 17
          Caption = 'N'#227'o permitir alterar quantidade  do item (apenas modo touch)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object ckHabilitarAlterarValorUnitariocouvertcomanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 513
          Width = 334
          Height = 17
          Caption = 'Permitir alterar valor unit'#225'rio no couvert art'#237'stico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object ckAgruparItensIguaisImpressaoComanda: TCheckBox
          Tag = 1
          Left = 11
          Top = 536
          Width = 326
          Height = 17
          Caption = 'Agrupar itens iguais na impress'#227'o do pr'#233' fechamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
      end
      object GroupBox16: TGroupBox
        Left = 3
        Top = 337
        Width = 169
        Height = 86
        Caption = 'Numera'#231#227'o das comandas'
        TabOrder = 2
        Visible = False
        object Label5: TLabel
          Left = 12
          Top = 27
          Width = 25
          Height = 13
          Caption = 'In'#237'cio'
          FocusControl = edNumeroComandaInicio
        end
        object Label6: TLabel
          Left = 92
          Top = 27
          Width = 16
          Height = 13
          Caption = 'Fim'
          FocusControl = edNumeroComandaFim
        end
        object edNumeroComandaInicio: TcxDBSpinEdit
          Left = 12
          Top = 46
          DataBinding.DataField = 'numero_comanda_inicio'
          DataBinding.DataSource = dsEmpresa
          Properties.MaxValue = 1000000.000000000000000000
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Visible = False
          Width = 63
        end
        object edNumeroComandaFim: TcxDBSpinEdit
          Left = 92
          Top = 46
          DataBinding.DataField = 'numero_comanda_fim'
          DataBinding.DataSource = dsEmpresa
          Properties.MaxValue = 9999999.000000000000000000
          TabOrder = 1
          Visible = False
          Width = 63
        end
      end
      object GroupBox19: TGroupBox
        Left = 3
        Top = 3
        Width = 310
        Height = 254
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 11
          Top = 11
          Width = 119
          Height = 13
          Caption = 'Taxa de servi'#231'o 10%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 11
          Top = 38
          Width = 284
          Height = 13
          Caption = 'Mensagem para taxa de servi'#231'o (10% do gar'#231'om)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edTaxaAdicionalComanda: TComboBox
          Left = 137
          Top = 8
          Width = 49
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 0
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o')
        end
        object edMensagemTxServicoComanda: TEdit
          Tag = 1
          Left = 11
          Top = 57
          Width = 284
          Height = 21
          TabOrder = 1
          Text = 'TAXA DE SERVI'#199'O (+)'
          OnExit = edMensagemTxServicoExit
        end
        object GroupBox17: TGroupBox
          Left = 3
          Top = 84
          Width = 284
          Height = 80
          Caption = 'Couvert Art'#237'stico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object ckCouvertComanda: TCheckBox
            Tag = 1
            Left = 16
            Top = 23
            Width = 150
            Height = 17
            Caption = 'Ativar couvert na comanda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edMensagemCouvertComanda: TEdit
            Tag = 1
            Left = 12
            Top = 46
            Width = 261
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = edMensagemCouvertMesaExit
          end
        end
        object grp3: TGroupBox
          Left = 11
          Top = 170
          Width = 262
          Height = 72
          Caption = 'Valor de entrada'
          TabOrder = 3
          object lbl8: TLabel
            Left = 130
            Top = 17
            Width = 42
            Height = 13
            Caption = 'Feminino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl9: TLabel
            Left = 18
            Top = 17
            Width = 46
            Height = 13
            Caption = 'Masculino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edValorCouvertFemComanda: TJvValidateEdit
            Tag = 1
            Left = 128
            Top = 36
            Width = 89
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 2
            EditText = '0'
            HasMinValue = True
            TabOrder = 1
            OnKeyPress = edValorCouvertFemComandaKeyPress
          end
          object edValorCouvertMascComanda: TJvValidateEdit
            Tag = 1
            Left = 16
            Top = 36
            Width = 89
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 2
            EditText = '0'
            HasMinValue = True
            TabOrder = 0
            OnKeyPress = edValorCouvertMascComandaKeyPress
          end
        end
      end
      object grp2: TGroupBox
        Left = 3
        Top = 263
        Width = 310
        Height = 68
        Caption = 'Consuma'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ckConsumacaoComanda: TCheckBox
          Tag = 1
          Left = 18
          Top = 22
          Width = 150
          Height = 17
          Caption = 'Ativar consuma'#231#227'o m'#237'nima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edValorConsumacaoComanda: TJvValidateEdit
          Tag = 1
          Left = 189
          Top = 20
          Width = 68
          Height = 21
          Flat = False
          ParentFlat = False
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfCurrency
          DecimalPlaces = 2
          EditText = '0'
          HasMinValue = True
          TabOrder = 1
        end
      end
    end
    object pgImpressao: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 9
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 864
        Height = 583
        Align = alClient
        Color = clWindow
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          860
          579)
        object Label113: TLabel
          Left = 479
          Top = 524
          Width = 123
          Height = 18
          Alignment = taRightJustify
          Caption = 'Etiqueta t'#233'rmica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label114: TLabel
          Left = 33
          Top = 23
          Width = 54
          Height = 18
          Alignment = taRightJustify
          Caption = 'Balc'#227'o '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label115: TLabel
          Left = 29
          Top = 71
          Width = 59
          Height = 18
          Alignment = taRightJustify
          Caption = 'Cozinha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label116: TLabel
          Left = 60
          Top = 118
          Width = 26
          Height = 18
          Alignment = taRightJustify
          Caption = 'Bar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label117: TLabel
          Left = 40
          Top = 250
          Width = 42
          Height = 18
          Alignment = taRightJustify
          Caption = 'Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label118: TLabel
          Left = 17
          Top = 295
          Width = 64
          Height = 18
          Alignment = taRightJustify
          Caption = 'Delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label190: TLabel
          Left = 43
          Top = 164
          Width = 42
          Height = 18
          Alignment = taRightJustify
          Caption = 'Sal'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label191: TLabel
          Left = 14
          Top = 206
          Width = 70
          Height = 18
          Alignment = taRightJustify
          Caption = 'Ambiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxModoImpCozinha2: TcxRadioGroup
          Tag = 1
          Left = 260
          Top = 148
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 29
          Height = 38
          Width = 370
        end
        object edCaminhoImp: TComboBox
          Left = 460
          Top = 521
          Width = 163
          Height = 21
          TabOrder = 0
          Visible = False
        end
        object btTestarImpressoraTermica: TAdvGlowButton
          Left = 449
          Top = 514
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          Visible = False
          OnClick = btTestarImpressoraTermicaClick
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
        object btConfigTermica: TAdvGlowButton
          Left = 449
          Top = 512
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          Visible = False
          OnClick = btConfigTermicaClick
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
        object cxModoImpTermica: TcxRadioGroup
          Tag = 1
          Left = 436
          Top = 504
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 3
          Visible = False
          Height = 38
          Width = 212
        end
        object edImpBalcao: TComboBox
          Left = 93
          Top = 24
          Width = 163
          Height = 21
          TabOrder = 4
        end
        object btTestarImpressoraBalcao: TAdvGlowButton
          Left = 638
          Top = 15
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          OnClick = btTestarImpressoraBalcaoClick
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
        object edImpCozinha1: TComboBox
          Left = 93
          Top = 72
          Width = 163
          Height = 21
          TabOrder = 6
        end
        object btConfigCozinha: TAdvGlowButton
          Left = 744
          Top = 62
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 7
          OnClick = btConfigCozinhaClick
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
        object btTestarImpressoraCozinha: TAdvGlowButton
          Left = 638
          Top = 62
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 8
          OnClick = btTestarImpressoraCozinhaClick
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
        object edImpBar1: TComboBox
          Left = 93
          Top = 119
          Width = 163
          Height = 21
          TabOrder = 9
        end
        object btTestarImpressoraBar: TAdvGlowButton
          Left = 638
          Top = 110
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 10
          OnClick = btTestarImpressoraBarClick
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
        object edImpCaixa: TComboBox
          Left = 93
          Top = 251
          Width = 163
          Height = 21
          TabOrder = 11
        end
        object btTestarImpressoraCaixa: TAdvGlowButton
          Left = 638
          Top = 244
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 12
          OnClick = btTestarImpressoraCaixaClick
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
        object edImpDelivery: TComboBox
          Left = 93
          Top = 296
          Width = 163
          Height = 21
          TabOrder = 13
        end
        object btTestarImpressoraDelivery: TAdvGlowButton
          Left = 638
          Top = 287
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 14
          OnClick = btTestarImpressoraDeliveryClick
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
        object cxModoImpBalcao: TcxRadioGroup
          Tag = 1
          Left = 262
          Top = 3
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 15
          Height = 38
          Width = 370
        end
        object cxModoImpCozinha: TcxRadioGroup
          Tag = 1
          Left = 263
          Top = 55
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 16
          Height = 38
          Width = 370
        end
        object cxModoImpBar: TcxRadioGroup
          Tag = 1
          Left = 261
          Top = 102
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 17
          Height = 38
          Width = 370
        end
        object cxModoImpCaixa: TcxRadioGroup
          Tag = 1
          Left = 257
          Top = 236
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 18
          Height = 38
          Width = 370
        end
        object cxModoImpDelivery: TcxRadioGroup
          Tag = 1
          Left = 256
          Top = 279
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 19
          Height = 38
          Width = 370
        end
        object btConfigBalcao: TAdvGlowButton
          Left = 744
          Top = 15
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 20
          OnClick = btConfigBalcaoClick
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
        object btConfigBAR: TAdvGlowButton
          Left = 744
          Top = 110
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 21
          OnClick = btConfigBARClick
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
        object btConfigCaixa: TAdvGlowButton
          Left = 744
          Top = 244
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 22
          OnClick = btConfigCaixaClick
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
        object btConfigDelivery: TAdvGlowButton
          Left = 744
          Top = 287
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 23
          OnClick = btConfigDeliveryClick
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
        object gbescpos: TGroupBox
          Left = 463
          Top = 522
          Width = 69
          Height = 17
          Caption = 'Impress'#227'o Extrato SAT'
          TabOrder = 24
          Visible = False
          object rgSuporteESCPOS: TRadioGroup
            Left = 51
            Top = 26
            Width = 244
            Height = 51
            Cursor = crHandPoint
            Caption = 'Linguagem ESCPOS'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Com Suporte'
              'Sem Suporte')
            TabOrder = 0
            OnClick = rgSuporteESCPOSClick
          end
          object gbComSuporte: TGroupBox
            Left = 16
            Top = 83
            Width = 350
            Height = 154
            TabOrder = 1
            Visible = False
            object Label89: TLabel
              Left = 35
              Top = 12
              Width = 109
              Height = 13
              Caption = 'Impressora N'#227'o Fiscal:'
            end
            object Label90: TLabel
              Left = 28
              Top = 39
              Width = 116
              Height = 13
              Caption = 'Linha entre os Extratos:'
            end
            object Label92: TLabel
              Left = 102
              Top = 68
              Width = 42
              Height = 13
              Caption = 'Colunas:'
            end
            object Label99: TLabel
              Left = 44
              Top = 97
              Width = 100
              Height = 13
              Caption = 'Espa'#231'o entre Linhas:'
            end
            object Label106: TLabel
              Left = 17
              Top = 125
              Width = 127
              Height = 13
              Caption = 'Larg. Linha C'#243'd. de Barra:'
            end
            object edtLinhaEntreExtratos: TSpinEdit
              Left = 155
              Top = 36
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 0
            end
            object edtColunaBobina: TSpinEdit
              Left = 155
              Top = 65
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 0
            end
            object edtEspacoEntreLinhas: TSpinEdit
              Left = 155
              Top = 94
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 2
              Value = 0
            end
            object edtLarguraCodigoBarra: TSpinEdit
              Left = 155
              Top = 122
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 0
            end
            object cmbImpressoraNaoFiscal: TComboBox
              Left = 155
              Top = 9
              Width = 182
              Height = 21
              Style = csDropDownList
              TabOrder = 4
            end
          end
          object gbSemSuporte: TGroupBox
            Left = 12
            Top = 91
            Width = 350
            Height = 173
            TabOrder = 2
            Visible = False
            object Label108: TLabel
              Left = 102
              Top = 30
              Width = 41
              Height = 13
              Caption = 'Largura:'
              Visible = False
            end
            object Label109: TLabel
              Left = 74
              Top = 59
              Width = 69
              Height = 13
              Caption = 'Margem Topo:'
              Visible = False
            end
            object Label110: TLabel
              Left = 61
              Top = 88
              Width = 82
              Height = 13
              Caption = 'Margem Rodap'#233':'
              Visible = False
            end
            object Label111: TLabel
              Left = 53
              Top = 116
              Width = 90
              Height = 13
              Caption = 'Margem Esquerda:'
              Visible = False
            end
            object Label112: TLabel
              Left = 67
              Top = 145
              Width = 76
              Height = 13
              Caption = 'Margem Direita:'
              Visible = False
            end
            object edtLargura: TSpinEdit
              Left = 155
              Top = 27
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 0
              Value = 0
              Visible = False
            end
            object edtMargemTopo: TSpinEdit
              Left = 155
              Top = 56
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 0
              Visible = False
            end
            object edtMargemRodape: TSpinEdit
              Left = 155
              Top = 85
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 2
              Value = 0
              Visible = False
            end
            object edtMargemEsquerda: TSpinEdit
              Left = 155
              Top = 113
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 0
              Visible = False
            end
            object ckbExtratoPreview: TCheckBox
              Left = 155
              Top = 6
              Width = 137
              Height = 17
              Caption = 'Exibir Preview do Extrato'
              TabOrder = 4
              Visible = False
            end
            object edtMargemDireita: TSpinEdit
              Left = 155
              Top = 142
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 5
              Value = 0
              Visible = False
            end
          end
          object btnTestaImpressaoExtrato: TAdvGlowButton
            Left = 266
            Top = 32
            Width = 100
            Height = 30
            Caption = 'Imprimir Extrato'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 3
            OnClick = btnTestaImpressaoExtratoClick
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
        object edImpCozinha2: TComboBox
          Left = 93
          Top = 165
          Width = 163
          Height = 21
          TabOrder = 25
        end
        object btTestarImpressoraCozinha2: TAdvGlowButton
          Left = 638
          Top = 158
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 26
          OnClick = btTestarImpressoraCozinha2Click
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
        object edImpBar2: TComboBox
          Left = 93
          Top = 207
          Width = 163
          Height = 21
          TabOrder = 27
        end
        object btTestarImpressoraBar2: TAdvGlowButton
          Left = 638
          Top = 202
          Width = 100
          Height = 30
          Caption = 'Testar Impress'#227'o'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 28
          OnClick = btTestarImpressoraBar2Click
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
        object cxModoImpBar2: TcxRadioGroup
          Tag = 1
          Left = 259
          Top = 190
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Modo gr'#225'fico'
            end
            item
              Caption = 'ESC/POS (Serial)'
            end
            item
              Caption = 'Monitor de Produ'#231#227'o'
            end>
          ItemIndex = 0
          Style.BorderStyle = ebsNone
          TabOrder = 30
          Height = 38
          Width = 370
        end
        object btConfigCozinha2: TAdvGlowButton
          Left = 744
          Top = 158
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 31
          OnClick = btConfigCozinha2Click
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
        object btConfigBar2: TAdvGlowButton
          Left = 744
          Top = 202
          Width = 100
          Height = 30
          Caption = 'Configurar'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 32
          OnClick = btConfigBar2Click
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
        object grpVenda: TGroupBox
          Left = 3
          Top = 341
          Width = 770
          Height = 98
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Impress'#227'o em produ'#231#227'o (Cozinha/Bar/Balc'#227'o)'
          TabOrder = 33
          object lbl4: TLabel
            Left = 27
            Top = 38
            Width = 286
            Height = 41
            AutoSize = False
            Caption = 
              'ATEN'#199#195'O: Caso mais de um computador na rede esteja com esta op'#231#227 +
              'o marcada, pode haver duplicidade de impress'#227'o de cupons na cozi' +
              'nha '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object lbl5: TLabel
            Left = 328
            Top = 38
            Width = 445
            Height = 31
            AutoSize = False
            Caption = 
              'Esta op'#231#227'o faz com que, ao lan'#231'ar os itens para impress'#227'o na pro' +
              'du'#231#227'o (cozinha), os itens ser'#227'o replicados em todas as impressor' +
              'as selecionadas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object lbl6: TLabel
            Left = 328
            Top = 72
            Width = 128
            Height = 13
            Caption = 'Qtde. de vias de produ'#231#227'o'
          end
          object ckImprimePedidosCozinha: TCheckBox
            Tag = 1
            Left = 10
            Top = 19
            Width = 278
            Height = 17
            Caption = 'Imprimir pedidos '#224' cozinha a partir deste computador'
            TabOrder = 0
          end
          object ckReplicaImpressaoCozinha: TCheckBox
            Tag = 1
            Left = 312
            Top = 19
            Width = 412
            Height = 17
            Caption = 
              'Replicar impress'#227'o dos itens do pedido em todas as impressoras d' +
              'e produ'#231#227'o '
            TabOrder = 1
          end
          object seQtdeViasProducao: TSpinEdit
            Tag = 1
            Left = 460
            Top = 69
            Width = 46
            Height = 22
            MaxValue = 5
            MinValue = 0
            TabOrder = 2
            Value = 1
          end
          object ckImpressaoProducaoExpandido: TCheckBox
            Tag = 1
            Left = 512
            Top = 71
            Width = 269
            Height = 17
            Caption = 'Usar fontes grandes na impress'#227'o (modo ESC/POS)'
            TabOrder = 3
          end
        end
      end
    end
    object pgGaveta: TTabSheet
      Caption = 'Gaveta'
      ImageIndex = 8
      object grGavetaConfig: TAdvGroupBox
        Left = 9
        Top = 34
        Width = 326
        Height = 218
        Caption = 'Configura'#231#245'es'
        TabOrder = 0
        object Label47: TLabel
          Left = 10
          Top = 66
          Width = 123
          Height = 13
          Caption = 'Compartilhamento / Porta'
          Color = clBtnFace
          ParentColor = False
        end
        object Label10: TLabel
          Left = 10
          Top = 20
          Width = 106
          Height = 13
          Caption = 'Modelo da Impressora'
          Color = clBtnFace
          ParentColor = False
        end
        object Label48: TLabel
          Left = 10
          Top = 112
          Width = 44
          Height = 13
          Caption = 'Aten'#231#227'o:'
        end
        object Label49: TLabel
          Left = 10
          Top = 131
          Width = 305
          Height = 43
          AutoSize = False
          Caption = 
            '- Se n'#227'o existir o modelo da sua impressora ou  se a impressora ' +
            'n'#227'o responder ao comando (mesmo se o fabricante selecionado esti' +
            'ver correto), tente utilizar a op'#231#227'o ppEscPosEpson'
          WordWrap = True
        end
        object Label50: TLabel
          Left = 10
          Top = 175
          Width = 305
          Height = 28
          AutoSize = False
          Caption = 
            '- Utilize preferencialmente o caminho compartilhado da impressor' +
            'a ao inv'#233's da porta'
          WordWrap = True
        end
        object cbModeloImpGaveta: TComboBox
          Left = 10
          Top = 39
          Width = 199
          Height = 21
          TabOrder = 0
        end
        object cbPortaImpGaveta: TComboBox
          Tag = 1
          Left = 10
          Top = 85
          Width = 199
          Height = 21
          TabOrder = 1
        end
        object btTestarGaveta: TAdvGlowButton
          Left = 215
          Top = 66
          Width = 100
          Height = 41
          Caption = 'Testar Abertura'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btTestarGavetaClick
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
      object ckUtilizaGaveta: TCheckBox
        Tag = 1
        Left = 9
        Top = 11
        Width = 155
        Height = 17
        Caption = 'Utiliza gaveta de dinheiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ckUtilizaGavetaClick
      end
    end
    object pgBalanca: TTabSheet
      Caption = 'Balan'#231'a'
      ImageIndex = 10
      object ckUtilizaBalanca: TCheckBox
        Tag = 1
        Left = 9
        Top = 11
        Width = 94
        Height = 17
        Caption = 'Utiliza balan'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ckUtilizaBalancaClick
      end
      object grBalancaConfig: TGroupBox
        Left = 9
        Top = 34
        Width = 454
        Height = 383
        Caption = 'Configura'#231#245'es'
        TabOrder = 1
        object Label52: TLabel
          Left = 11
          Top = 21
          Width = 34
          Height = 13
          Caption = 'Modelo'
          Color = clBtnFace
          ParentColor = False
        end
        object Label53: TLabel
          Left = 11
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Porta Serial'
          Color = clBtnFace
          ParentColor = False
        end
        object Label54: TLabel
          Left = 11
          Top = 107
          Width = 47
          Height = 13
          Caption = 'Baud rate'
          Color = clBtnFace
          ParentColor = False
        end
        object Label55: TLabel
          Left = 11
          Top = 152
          Width = 43
          Height = 13
          Caption = 'Data Bits'
          Color = clBtnFace
          ParentColor = False
        end
        object Label56: TLabel
          Left = 11
          Top = 196
          Width = 28
          Height = 13
          Caption = 'Parity'
          Color = clBtnFace
          ParentColor = False
        end
        object Label57: TLabel
          Left = 11
          Top = 286
          Width = 61
          Height = 13
          Caption = 'Handshaking'
          Color = clBtnFace
          ParentColor = False
        end
        object Label58: TLabel
          Left = 11
          Top = 240
          Width = 42
          Height = 13
          Caption = 'Stop Bits'
          Color = clBtnFace
          ParentColor = False
        end
        object Label62: TLabel
          Left = 11
          Top = 331
          Width = 40
          Height = 13
          Caption = 'TimeOut'
          Color = clBtnFace
          ParentColor = False
        end
        object cbBalancaModelo: TComboBox
          Left = 11
          Top = 37
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'Nenhuma'
          Items.Strings = (
            'Nenhuma'
            'Filizola'
            'Toledo')
        end
        object cbBalancaPortaSerial: TComboBox
          Tag = 1
          Left = 11
          Top = 80
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'COM1'
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8')
        end
        object cbBalancaBaud: TComboBox
          Tag = 1
          Left = 11
          Top = 125
          Width = 145
          Height = 21
          ItemIndex = 6
          TabOrder = 2
          Text = '9600'
          Items.Strings = (
            '110'
            '300'
            '600'
            '1200'
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '38400'
            '56000'
            '57600')
        end
        object cbBalancaDataBits: TComboBox
          Tag = 1
          Left = 11
          Top = 168
          Width = 145
          Height = 21
          ItemIndex = 3
          TabOrder = 3
          Text = '8'
          Items.Strings = (
            '5'
            '6'
            '7'
            '8')
        end
        object cbBalancaHandShaking: TComboBox
          Left = 11
          Top = 304
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Nenhum'
          Items.Strings = (
            'Nenhum'
            'XON/XOFF'
            'RTS/CTS'
            'DTR/DSR')
        end
        object cbBalancaParity: TComboBox
          Left = 11
          Top = 213
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Text = 'none'
          Items.Strings = (
            'none'
            'odd'
            'even'
            'mark'
            'space')
        end
        object cbBalancaStopBits: TComboBox
          Left = 11
          Top = 257
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 's1'
          Items.Strings = (
            's1'
            's1,5'
            's2'
            '')
        end
        object AdvGroupBox3: TAdvGroupBox
          Left = 162
          Top = 37
          Width = 271
          Height = 241
          TabOrder = 7
          object Label59: TLabel
            Left = 15
            Top = 111
            Width = 45
            Height = 13
            Caption = 'Resposta'
            Color = clBtnFace
            ParentColor = False
          end
          object Label60: TLabel
            Left = 15
            Top = 66
            Width = 49
            Height = 13
            Caption = 'Peso Lido:'
            Color = clBtnFace
            ParentColor = False
          end
          object Label61: TLabel
            Left = 15
            Top = 164
            Width = 51
            Height = 13
            Caption = 'Mensagem'
            Color = clBtnFace
            ParentColor = False
          end
          object sttPeso: TStaticText
            Left = 15
            Top = 81
            Width = 233
            Height = 24
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Font.Quality = fqAntialiased
            ParentFont = False
            TabOrder = 0
          end
          object sttResposta: TStaticText
            Left = 15
            Top = 128
            Width = 233
            Height = 32
            AutoSize = False
            TabOrder = 1
          end
          object Memo1: TMemo
            Left = 15
            Top = 184
            Width = 233
            Height = 42
            TabOrder = 2
          end
          object btBalancaLerPeso: TAdvGlowButton
            Left = 15
            Top = 19
            Width = 138
            Height = 41
            Caption = 'Testar Leitura de Peso'
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 3
            OnClick = btBalancaLerPesoClick
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
        object edBalancaTimeOut: TSpinEdit
          Tag = 1
          Left = 11
          Top = 350
          Width = 145
          Height = 22
          MaxValue = 5000
          MinValue = 0
          TabOrder = 8
          Value = 2000
        end
      end
      object GroupBox3: TGroupBox
        Left = 469
        Top = 34
        Width = 212
        Height = 383
        Caption = 'Etiqueta / C'#243'digo de Barras'
        TabOrder = 2
        object Label131: TLabel
          Left = 11
          Top = 21
          Width = 153
          Height = 13
          Caption = 'Largura do c'#243'digo de barras (A)'
        end
        object Label134: TLabel
          Left = 11
          Top = 115
          Width = 73
          Height = 13
          Caption = 'D'#237'gito inicial (C)'
        end
        object Label147: TLabel
          Left = 11
          Top = 68
          Width = 159
          Height = 13
          Caption = 'Largura do c'#243'digo do produto (B)'
        end
        object Image1: TImage
          Left = 11
          Top = 181
          Width = 182
          Height = 184
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000159
            00000158080200000076CC18290000000467414D410000B18F0BFC61050000B9
            6B49444154785EED9D05981447D3C7933709EEEEEEEECE2139DC3D10DCDDDD3D
            B8BBBBBFB81E7E100E87C35D824B82E54B02B1EF775B43BF73B3727B70C71DD0
            FFE71ED8EDA9EEE9AEAEFA57D5ECECEC17BB77EF7EF9F2E5BF1A1A1A9F31FEFE
            FBEF2F6EDEBCF9CF3FFF180D1A1A1A9F2BBE78F6EC99F1524343E333C617FFF7
            7FFF67BCD4D0D0F88CA1B9404343C30F9A0B343434FCA0B9404343C30F9A0B34
            3434FCA0B9404343C30F1F820B8E1F3F3E78F0E006FED1B061C3A64D9BB66AD5
            AA63C78E03070E5CB264C9F5EBD78D0E6FF1EAD52BDA8D0E7668D2A449EBD6AD
            BB75EB3666CC986DDBB63D79F2C4E8F616F7EEDD9B3F7FBE082389CCEBD7AFE5
            D082050B1A376E2C87003319346890BD2A6EDEBC397EFC7843E82D366EDC2877
            67FDF5D75FE7CE9D335ADD40DBB66D8F1D3B26235FB972E5871F7E300E346870
            E9D2A53FFFFC93F6478F1E2D5AB4C868B5034B6ED3A64DF7EEDD59F2F6EDDB9F
            3F7F1EE0BD21E870D8B06146FF060D468D1A75F7EE5DE398DBD8B56BD7D0A143
            5111735EBE7CB9D1EA128F1F3F665BE5A47DFAF4D9B3678FB4B30593274F6EDE
            BCB91C5AB66CD9CF3FFF2C87CCB870E1C29021434466DCB8710F1F3E340EFCFB
            EF840913A43B3BB866CD1AA3D53FF6EDDBD7B76F5FE98EEDB9583287264E9C28
            9280055EBB76CD38E61E7EFFFDF7B973E7AA1529888577E8D081E5638798CA6F
            BFFD66F4F18F850B17B2AD46B7803076ECD8DBB76F1B3D83141F820B366CD850
            B468D188FE112952A42851A2448B162D56AC58891327CE912307EBFCEF7FFF6B
            36EEA74F9F76E9D2C5E86087C89123478F1E3D5EBC78A952A5F2F0F068D7AEDD
            A953A7C4A304172F5EC4FD443861C284D890DA8CF6EDDB736A390498499A3469
            305F8B6BFDF8E38F850A153284DE027712DEE15C98B8D1EA0692264DBA7EFD7A
            19D9C7C7A754A952C6818811BDBDBDFFF8E30FDA21C44E9D3A19AD7660C93162
            C460C9A953A72E52A4087686CFBC79F346C6748843870EE5CB97CFE81F3122CB
            D9B4699371CC6D8C18312265CA94499224499F3E3D7C64B4BA0434CAA6C84973
            E7CE8DB7483BF6F6FDF7DFC78E1D5B0E55AC5811A2914366E0CCC58B171799AA
            55AB9AFDB3468D1A71E2C4A13D6AD4A8D08DD1EA1FF3E6CDCB93278F74C7F6D0
            9271C03FD8EEC3870F67CF9E5D2441DAB46989197FFFFDB721E106605B429A4C
            C90CB170CC1BDBCB9A356BA54A95A64E9D8A5A8C6E26B08F89122532BA05842A
            55AAF8FAFA1A3D83141F820BF0F0BC79F37E111058E7B7DF7E8B5728E3C6E5F0
            70E3B04B7CF9E597F876FDFAF56FDCB8A1E8E0FCF9F3CD9A3513015863F4E8D1
            8A0B5AB468F1CD37DFC82141B870E14E9C38A1120740D887C562C68C6948BC05
            6116D6408013EDDCB9D368750338808A63B00CCE6C1CF8E28BBD7BF70A175CBD
            7A9514C6687509968C3360859817539561ED017341B5469F2FBEC02E7BF7EE6D
            1C731B3D7BF60C13260CDDB16FBCD768750936020A909366CA9469E6CC99D2FE
            EBAFBF56AB568DBD964371E3C6C59FED6F78DBBD7B77FEFCF945A66CD9B2A451
            C6817FFFAD50A18274FFFAEBAF9DAD65D6AC5999336796EED81E31D938E01FB8
            F1D2A54BD97A91048C492648103224DC004922198A5A9133B05F193366749877
            B46CD9128A37E40242993265887946CF20450870C15736A01AE3BD09E1C387AF
            55AB163B21F1D9C205FFF9CF7FA42FB0EF4E0BDD67CC98A10C2B505C801190AA
            BD78F1420400AF198D931A126FE18C0B98807986F6209EA30A19DC4D2E0870C9
            441ECA2867378FC2AA952B57C6818D0E36CA2B57AE5C606F360D3E2E6009A54B
            9766F97254E1C370016ED9B56B571153203F0D94B359B840B6CCDE6C04D001D9
            81D9CC80990B50886CB733B07DA74F9F367A06293E3417608BE4C6647D981446
            401E9833674E82831C4511581B7E228E61E6026C9134153312D01D132951A204
            099E598F38181B2C5412282E40CBD423E6BA9474BD478F1EC661139C7101D320
            AF31E6E7088D1A35A23490C1DDE102969C2143067242E9CE9289099E9E9ED9B2
            652323101940CE7CE9D22519D60C125D1C92A417B518A236E02464E086907B08
            3E2E00091224C0A5691701C187E102F4402123620A745CBB76ADA55A74010B17
            5046952F5F9E5DE35F4CBD58B16259B26489102182EC02FFB21C8BFECD5C40C1
            CB0265C71D62E8D0A10E0B8DF7C787E60262A35C2723AD253ADDBE7DDBCBCB0B
            8F55C60DA1B25A7136331790ABB769D34606047467E68F1E3DDABC79330AC22C
            440CAE3972E488E4CCEE7001A793BEBC8059CC5AA692C4CD38C4FE9989C31917
            5096536548DF00E10E173067F2E7DF7FFF5DBAB0281CE6FEFDFB542ED893F270
            4ACD43870E898C19240554E9C2B308B340C06BCA046765B633042B17001C066D
            8B80E0037001FA59B468917242B658548A098D1933C6C24D2E60E1827EFDFA61
            B71031F5E6CF3FFF4C4459BD7A75C99225C9E0647C4AC55EBD7A99AB513317B4
            6FDFFE975F7E310E7C5884181718C76CC031D86011405F0D1B36FCE9A79F6877
            C1050A780874A0320BB065CB1659943B5CC016129778C179E3C78F8FD1A880B0
            69D32672160E21992C5932712410525CA080246B54552E2EB16BD72EFBCB5D74
            FCEEBBEFA440A07A428191234796D7E42F962D708DE0E60234DFAD5B37F3943E
            00176063741719B2C2D4A9532BC6C7B7CF9E3D6BC80504875C601C7B0BB69504
            44740858C2E5CB978D639A0B8C6336DCBD7B77C8902122804F92096349B4BBC3
            0500BF527603962F5FFEFCF973DADDE10288C09C256282E29360DEBC79B24324
            78952A55521B19E25C008E1F3F9E22450A1103640AE6380360348212AB130ACB
            9A352B75598E1C39443E49922428C7FDABE5C1CD05204F9E3C668FFD005C40A2
            4E1A2F320C387FFE7C22B6BCA50BC1DC900B08EE7001983469127423325479A4
            24C601CD05C6311B48F5715411800B885A72AF819B5C70E0C00109E0028A0EF1
            1F77B82065CA94044FB51393274F163F7FF1E2053E2F8E142D5A343618461099
            D0C005D44192CE80B061C3EED9B3C752DFB2AD10842405A06EDDBAD3A74FAF5D
            BBB6BC459963C78E55AC17203E001790D975EDDA5564C007E002B81E4E44004B
            40988A153E926592CF139CA4D20C106E72C1C993270B172E2C324993261D3C78
            B07140738171CC06F2A58E1D3B8A005C40957EEBD62DDADDE102E6BF64C91236
            4FC4700C94EEFEB5C354A952356DDA54991D7E281FF930A556AD5AD142F64804
            A6F0567E15E25C40D6435451092D86657FBD8019B66DDB562C1B958E18318291
            070C1820EC467D51A24409F74BE260E2021C000A1092C5B1495EB00DC956829B
            0B9E3E7D4AD12E3A84EBD1F99B376F3042490DD052FDFAF5CD27750137B9801D
            21E11519CCB551A346C601CD05C6319B712C5DBA54ED1CDBD0A953A7070F1E70
            C8CC056CD8F7DF7F4F5F70E1C2051C9E7460DBB66DE3C68D2B5AB428E68E0CFF
            162B564CDDBFE82617A07DF652C4E8CEC808E09CD81C2D587FC99225A11B29B6
            81332E603B3D3D3DAB3B0755BD723F77B8008BC19F7D7D7D2D4B1E33664C8102
            05440690D72020C30AA04294902E5D3AF17C3208325E8A88050B16244B968C16
            DA71C28B172F5A48D91982890B12264CC8686A2D2810DF9662C71D2E601559B2
            64B1DD8C670563B2E3D2DD2117F8F8F8300D1148942811FA210B58B3660DF620
            8D050B16C46E0D699770930B5857952A55C4506131AA4E95CA99B98009A013C3
            62EC807E1C5E270E127C682EC0A5299C56D94092367EFC783243722775258C38
            CCC6BC7AF58A8E662EC01693274F8E0601CA826229250A152A94366D5A092C68
            994118532E160037B980F880778958FCF8F1714B3609E7A7A8A3059FE9D0A183
            3B5CC004D863867506E6A63ED877870BE8C2EAA86959320E605E32E90F029C91
            59AD5CB9D2F279357BBA7DFB769101A54A95E274B45321972B574E1AD1D5ECD9
            B32D1D9D2198B82071E2C4C3870FEFDEBDBBEC20EBCD90218330943B5C009815
            AFEDC1DA850781432E20D163561C458C3874E7CE1D369D7F49EEA423418B34CA
            9D4B2A6E7201E353A9A94D21C0A84B3C662EE0EC2EAC084F7176DBF5FBE34373
            01EBC9912307A4CB4E931352AEE3A5F8BF3ACAC610D3A4543373816BA041B23B
            74CA76AA32CF4D2E183A74E8962D5B448C6D58B66C19F68A70AC58B168A140C0
            8EDDE182003167CE9C4071816BA034964C0E75F7EE5D156104F7EEDDC38E0DB9
            2FBE2098E099B4DFBC7913AF9646564A9C4152BAB846F07101A9CADAB56B9579
            C0506C075A72930BDC813D1730876EDDBA495DC9BFE8416C867F290D0857B4A3
            1F122E77F4E3261700AA4E55CC162F5E5C052D3317B8063A21884AAF20C787E6
            0217C0B89324493265CA14E5B1EE7001448B4991DB135E70244504C04D2EA01D
            49AC5CF2376C9184BC73E7CE58036FE1266F6F6F77B8003EC2940971CE80DDAB
            ED7F1F2EE02C499326A51EC1456FDDBA659FE79F3D7B96BA4909AF58B142F22C
            96CF1C64212C96DAE1F4E9D3F6DDED117C5CB068D12218AA4F9F3ECC93167448
            6A70EAD429F21A77B88055D0C51EB295027B2EE06DD5AA5545064D92151A076C
            57FBD3A449231D990041C238E01CEE73419B366D8468005CA0BE9465E602AC2E
            7CF8F086C5D8816D75B3727907840A2E60F330502C060FC46A55943373014C81
            BE30142A05142A8E0A68A40CDBBC79B3FD151737B960DCB871D03F3E2FE949C3
            860D719E3A75EAF09A1672728EBAC3054469F279028B3390A22B6DBBC3059C3D
            4E9C3894FD2C396AD4A8323D40C252AB562D2F2F2FB3AE14C83C77ECD8C17A45
            3875EAD49C8BC63736D02B7BF6EC72082C5EBC58D1930B042B1740DFDBB66D23
            491461C04EB105017201CE4CB954D91158A38AC0F65CC0AAD5C7AB5482285F94
            03E07D925639446422BDB2D7B005EE7301A6859F8B98F9DAAD990BD86EF211C3
            62EC3078F0E023478E48AF20C787E6020C1A0BC0B8C9BDF1433818F7C6686AD6
            AC396BD62C095F0A662EC01529B1301D0CA55EBD7A1417629D38498D1A358E1F
            3FCE461ADDDEC27D2EC0B7BFFFFE7BA9E528C97AF4E84165CE6B4E8AD7B167EE
            7041907F8E807991BE52D58F1A35AA76EDDA284DE68CDDF016FB7658CDDEBF7F
            9F95CA08002E9B3F7FFE9EB76034599AA0499326F65F95B147B072018D6437FD
            FBF797D5011C75F8F0E1AABB332E201EBCC3E708EC5A972E5DE4F302D8042E58
            BF7EBDA19D3D7B366CD850A04001491958328BC5D58D9E4EE02617B059EC2661
            0F19C667516AFBCC5CF0197D8E40489F3C7932350F55220918A19284F0C18307
            0ECDDACC05E6CF14719B112346E0C6B2676C43993265CC377209DCE782172F5E
            8C1C39921C8C96F8F1E3C3D9193366E475A24489FAF6ED1B525CC09CD5678A18
            DCA04183E45300C0647009DCDE5E6FCC016713B100415CF5F1F10930F4053717
            901A1C3870007E1779C059D4CD5441CB05185BB972E5C4720204AC44A660F474
            0237B9001B53B736911D10FC8D039F2D1738BCBFC0199C710178F6EC197E2E45
            26C06DD80F8B4DBBCF05F81B69AA64955809C2E2F930C2C2850B430317803B77
            EE346DDA54020B8055BB77EF6E7FF701E5121426320182C52E5BB6CC928ED923
            B8B900DCBD7B97C58A3C6067554D14B45C40E457054280608643870E357A3A81
            9B5CC0CEAA8C8C78C3DE1907341718C75CC20517E0F6187DB162C5E4281EC2B6
            9165982B05F7B980B884A7710A1156179F48170F1D3A144AB88049AE5EBD5A55
            D14C326EDCB8274F9E541F4D01CC88E5282F7207189F7D4A65C107E00294C95A
            122448209A37C7EDA0E502D6A26ED90C1004F052A54A394C5A15DCE482B973E7
            520E8B0C31462904682E08182EB8009074C1D9F883081049D836F5EC03E03E17
            D082CB65C992452C5E816412B70F255C0038EFE0C183D54C5842DDBA75CD9F7B
            E14E0D1A3490A39045C28409D3A54B87099A414BD2A4494506E0B19CDDE8EF04
            1F800B00ABEBD3A78FEC8B1941C8059CBD64C992B2164E14274E1C4329FE41DC
            1619280975F9FAFABA28A3DCE10236B776EDDAEA722645E8D1A3478D639A0B8C
            632EE19A0BD89EC3870FD7AA554B04D8B6A851A3625BEAFE99407101536228E5
            6680DD6DD2A409EDA1870B0850FBF7EFC71B458025A3169205B5E4B56BD7CA2D
            5200725CB06001231FF40FF98894D549EC655D842CD766F061B8809CEECC9933
            F0144E2E1D0541C805070E1C6032B2F03469D2403D8652FC63D4A851AA8E20D8
            4C9830C1456AE0820BE8C5D18B172F76EDDA95C54A7D0723E0F0E6BA4C7341C0
            70CD050045B3EBEA8A1A7B5CB46851C6979D0B141790810F1932442E2F0BD8BC
            41830671C84D2E2008631358A70B787979C96778EFC6050043993E7DBA799E55
            AB56BD70E102CCC83C59A3CC133F499D3AF5C3870F1D1AF1EDDBB70B152AA44A
            89CE9D3B9B9DCD1E8A0BF897618DC538C2C891236FDEBCC949DF810B0047998C
            F9492D2008B980BD530542993265282AA5DD0228A97EFDFA2216214204D243FB
            4FA9142C5C80623B76ECC8C47AF4E8D1B66D5B1237268CD92B824300CA363ADB
            60E6029486066CBA740CCC15E3317A06293E6E2E006C1B0E2F8C0BD839A29CDC
            C511282EC07CD7AD5B275F5C1364CF9E7DE1C2851C72930BD86C289F4D7501FA
            4A4AFFCE5C004E9D3AA5B2218066F0A867CF9E117F9A366D2A8D0470AC50ADD7
            02F43360C000753F6CB162C576ECD8611C7304C505B02D7A3316E308D4593E3E
            3E10EBBB71011D591DF2CA73409070015C893FE3FFAA6FAB56ADE46B2FF6C0BD
            090C2289696115D7AF5F7766B4162E081F3E7CB468D15005FFAA6BDB0A891225
            22C058CE6BE602BAB0EF365D3A469E3C7966CC9861F40C527CF45CC0FCD7AC59
            63FE388AFD3E7EFC38BE1D282EC0562E5FBE9C366D5A9107147524E41C72930B
            DC41DFBE7DEFDA9ECFFD3E5C4045B062C50A342962006AA03C81CB8839D24225
            0C273A8B668CC9D254F94A1A3C6DDA34F335480B14170408DC863CFC9DB900B0
            716CBADC002E08122E604A0C9222450A091B2C197B70983409962D5B96E1EDA5
            3E8875FEFCF9CE3E6DB170813340A3288794C1BE9034734180C044274E9C68F4
            0C527CF45C00AE5DBB868A55C6CBAE409C84BE407101C043A8F92522B17375EA
            D491AF4E87362E002CB941830652F7023C9FC201C7902BA9983BEB224D7066EB
            101FFAC1D6D56251A03C4BCA213E2417009443F493B98120E102D4C81C14C540
            9A50A721ED08870F1FAE59B3A608B3765ECBA6DBC30517B011F4C57292264D9A
            3F7FFE7EFDFA9D3D7B16E51B3DDFE233E2823D7BF6346CD810CB00A54B97C6C1
            B015E3984B90F7E2C0D2D1D3D373D4A851C601FF20A091977A78788824200126
            C8638EF8ADB4142F5E7CF1E2C5E26F60F8F0E1EC0DED55AA5459BA74A934826E
            DDBAC938D822A5AF844A1864DBB66DB8AE6DA4DCF3E6CD93AB3BACE2C89123D2
            E826F05831295F5F5FF8C868CD9D9B4446CE8543725E6964CED8B4C370CD94BC
            BDBD99A4480258069392169686C25D043DC0B07DFAF4514AEBDAB5AB8B87FF4E
            9932A540810222E91A382AE3706A4A21D84A1ABFFBEE3B552133730A69396FF9
            F2E51DDEF04F77E6A614DEA14307334F514E4B77889B74C668F50FFC9C934A77
            544186CF7949FBD57A5197B31F4D103C7CF870EAD4A9228C565997F9B9B866E0
            41E69115E8C546905D92B50D1D3AF4E0C183B086D1C73F7EF8E1876FBFFDD6E8
            1610AA57AF4E5668F40C527C082ED0D0D008FD081C1790DE6868687C8C307CD8
            3902C1050F1E3C20A32371D2D0D0F8B840B1290FEC72814070C1B163C728BD92
            264D9A4E4323F04893264DAA54A9D2A64D6BBCD7F85040EDFC3B65CA14C3939D
            20105CF0E38F3FD6AA55AB68D1A25E1A1A81C4D2A54B092449922459BB76ED8E
            1D3B8C568D0F82FEFDFBE7CA95EB871F7E303CD90902C705DF7FFFBDF9BB961A
            1A6EE2A79F7E1A346850EAD4A97FF9E517776A578D20C47FFFFBDF6FBFFD5673
            8146A880E6821084E6028D5004CD052108CD051AA1089A0B42109A0B3E71E051
            7FFCF107DBE7E64D9C01E2CF3FFFFCEDB7DFD4AD99410BCD05218810E002F618
            63BA6BC2BD7BF71E3C78F0E4C99357AF5E3933D9D7B69FA6461849F3D73F7EFD
            F5D7870F1FCA380EF1F2E54BB9CDD67CDE478F1EB9F965875002D48296701596
            6071120EE139A8050174F8FBEFBF9B0570DA93274FEED8B10319F4C02134C6F2
            EFDFBFFFF8B1DFF3570C391B10405DB45BF0E6CD1B352673D8B76F9FAFAFAFBC
            15601E4C808D7068274F9F3EBD73E7CEB367CF02D4B9E6821044087001F6B77E
            FDFA6826C489132773E6CC952A559A3871E2EDDBB71D1AC1D1A3471B366C8870
            FAF4E9CD1F81CE9933276FDEBC328E438C1B370EC342122FDAB871232DD1A347
            2F54A890FA0DB5D00FBC1D27891F3FFE7FFEF31F36CC1C93F1AE9B376FB66CD9
            12B5C48D1BB77CF9F2B83D2B350EDB1E1028BF3775FAF4695C1DE5CF9B37CFC3
            C32359B2649E9E9E68CFAC6DA864D4A85118840567CF9E95EF3232C284091398
            498B162DA48B60F1E2C559B366CD9123C792254B8CA6B76086D5AA558B102142
            FBF6EDE54B5C2EA0B9200411025C40545FBD7AF5972660E25F7FFD75D8B06163
            C48851B97265F3739D14B036F802E1C891239B9F99336DDAB40C1932C8380EC1
            DAE43905376EDCE8D1A3873486091366D7AE5DC194E8063988AB1D3B769467E6
            9BB900373B7EFC38FBC72114881AD161FEFCF9A15AE548505EAC58B150112FC8
            AD860D1B86A77DF3CD375F7DF5154A489A3429C4AABED7045FD4AA558B760B0E
            1E3C28329045CF9E3D53A4483172E448E902481CAA54A982B73BE48265CB96A5
            4D9B169D6B2E08E508192E58B56A15668D7DE4B67D65AD74E9D29851CC983169
            216E638E965FE620D0F5EFDF5F1E468EC5638BA40F92F96FDFBE1D3FA96143C1
            820571090C9D2009A748E3BA75EBA4A6F0F1F151DFDB0783070F2666DA860FBD
            C01FC8FC870F1F2ECA61DA662EB87AF56AE7CE9D23DA7E1790A489C40AB72705
            80F228011040D2DBDB1B672632330EC451A64C19DE66CA94891608025DC1B078
            B828D3CBCB0B6B90AFD0A26D05F654B8E0CC99330D1A3460B3E4E7FAE8850EC9
            4A4849989E850BA0AA4D9B36E5CA954B9E86A2B920942384B98030858B128EF8
            9702215FBE7C34A64993866919D2366082B56BD7965086F9923ECC9F3F5FBEB1
            4FCCC725CED93075EA542264A44891C8608F1D3B268D183A3936A6CC49A3468D
            CAF8380FFF9221BBF8FA6D68009E8C327172F5743660E6829D3B77E2CF2C07CA
            4345D4F0254B96C42D5BB76E4D568F001E3577EE5C340693925C90DEA3DB2449
            92F0169D4F9A340995A22E3C562E1C2C5AB42867CE9CC993278762E45E3401A5
            BE90050508A7285EBCF8C993272168DE92A37146792A84E20284A19E01030664
            CF9E5D3DB44773412847087381F9B7030965D801250031B043870ED22858BE7C
            799E3C7968A7284D972E1D0E8FF5DBFFAAD7E6CD9B718C2851A2C82F9718AD36
            60649826118FA375EAD421521142F101951E0358835A9A3910F4D4634243100F
            1E3C1833660CC4873BE166F2D00EC5055021DAE350ECD8B179C142709E3D7BF6
            AC5CB9922DC0F39121689323B058F9ADC4264D9A9076C983F4705732FF78F1E2
            41AFEA399C9C2E65CA943032459CDF0CECC089D802720A28F8D1A347CD9A3523
            6B4093891225E285E20266C8E0900E0A27EF90E7BB682E08E508455CC0DE93CF
            633A5815A9AC3402524D7C1B8BE7101CC1E044218CEFDAB56B960F1D5C7001A6
            4931028960E85BB66CC125383BCB267C1912FFFE7BE5CA15D2ECF8F1E393F49A
            DB430A376EDCE8D3A70F1E455A3E74E850CBF502BC7DECD8B1B424489060FFFE
            FDBB76EDDAB06103558099C52E5FBE4C258F4EC81ADEBC7953AE5C39088535CA
            43D9488BB265CB460BE34B4DD1AD5B3708173D77E9D285C1C9B390544F406383
            468C18418146DE0195DCB97307D3499B366DEFDEBDAB56AD1A274E1CC50558CB
            B66DDB382FD59F24239A0B423F421117002C0F1620A7C5AA8C26DBD3786BD5AA
            4584E110DE4E664B5FE880E86D79028C332E8032B0D1A4499392CD1227898124
            17F8007E62FE09CA0B172E142E5C9813518F6094466BC8E1E1C387AC11F7C3C3
            E12F92793317E08A643AB490380C1E3C183F27E0A3797228120A19814C1EC786
            4D08E3F422B747E72853AECE5247B05EF4409E4F0681CF538F90264094748114
            205C5404CBC80713A8B453A74E38AA980B63C25053A64CA16FF7EEDD13264C68
            CE0B201A9C9F2A860A4E1E5DA7B92094237471019E59B3664DDAA990B127B106
            C25DFEFCF9497409D78F1F3FDEBB772F653F1EDBA2450BCBC53F675C80F30F1C
            3810FAC0C8B66EDD0A35502690B8721666A2920B0C11A6207D183D7AB4E4CC21
            0B34409027F9C715EDB9802C86AA9E169C19A76569FC8B96D015193E32AC8B92
            8104DED3D3136DE0BA72E994DD910B25E7CF9FE7106AF1F0F08070C9F92B57AE
            8C000A249267CA94297AF4E81C85653817A35DBF7EBD6EDDBAB972E592C7BDD1
            025BC91E911A98B980AC018361F21C25C3D25CF051207471C1891327B0360E61
            585803268541F4EFDF3F71E2C44475B256642E5DBA84EDD297EC94D41719E90B
            9C71813CA012B32E50A0006C4297993367925A4328C3860D93D21AD08E0BE178
            E65B6B42031C72019E2C8F3F850B709EF1E3C7B36A744256453B7E8B62172D5A
            44902798FFFEFBEFF824CB47BE7EFDFA72A7107910393C4AC89D3B375E4ACD05
            BD66CC98915C60DAB46978758D1A3538CAF89C94146CDFBE7DA54A95223BB3FF
            1D510B1798A1B9E06341E8E2021F1F1F2A4FEC8FA2F44FDB3D6AB834C10AFBA6
            CE9F376F1E8645DE4B8220DDD5E78502875C8049E11244391201066704B209F2
            DEE4C993330809334C2192A116AEF3026A84912347CAED866886B770E5FAF5EB
            09F5644394F173E6CC21B978F6EC191501F2EC8E3CBB063661EFA1C8A2458B22
            8CC2D10CF5C88D1B3738CA5BA819A5D10557A724914F19A0929B376FFA4DCB04
            CD059F0042171790FF331B125D3C5F5A0E1C3840D442385CB87054B0F1E2C5C3
            B8F1765A40972E5DCC76E9900BF01CDE520663F4B8132380B871E312EE18217D
            FAF4F6E61BDAE0900B704E32265AE2C78F4F592ED449768023417CF0264953BD
            7AF5281C203BF27920D70B4891E42A0902540DE801B6B5545B02088234016AC6
            FFA11E7228F9B8515D4D54D05CF00920747101B3C10E30FA6AD5AA49CB881123
            A80E4418A314F09A168091992FFE39E4022C9EC94817F32032021907C1D35C50
            844238E4024A9B3163C6D00217ECD8B143FC73EAD4A9B01B95C28C1933C8E40B
            162C982A552AA9DB395AB1624538517D8E407690356B5634D0A8512379923762
            6C34A7E335800BB264C902873668D0002E20E9205F1B3D7AB41C354373C12780
            50C405589EFCD80695BC5C1AA080C77C2344884018278291E10B68245E11D0F0
            7C86929B8E80432E58BA74299905C3A64C99D2E86F03A56F2CDB4F62D4AE5DDB
            FD1F3B0D1138E402FE5DBC7871F8F0E14997264C98208D83070F4E922449AE5C
            B9962D5BB669D326C238BBAB2EA9B468D1820A422E2EE269E45CD1A2454333F4
            FAF9E79F492EEAD6AD0B7D40281CA5D7850B1790679BD8178803A539F476A0B9
            E01340087341B366CD886014B4A3468DA217B68B8753205CBD7A15496C3173E6
            CCC470AC70EDDAB567DF829A76E6CC99F83C23608552DF027B2E2031EED5AB17
            3E4F72D1AD5B37A3BF0DF83F2B97CF2FE56779EEDFBF4F1AD2B4695306C7376C
            43860A38E4025C45223F25559E3C79F6EDDB876F4370B0035CB97DFBF6B973E7
            520DB56AD54A0601B367CF8643D146870E1DF6ECD983EA88F968ECE0C183F029
            1B57B468511452AE5C392F2FAF4B972E51832040CBBA75EB28DF8A152B56B66C
            D9DDBB771BC399A0B9E01340487201489C3831DE4E7D4BD02646E1F6928552FD
            620AF8241646E3D0A143CD1FF2E1E1D4B7100787D4CF19027B2EB879F3668D1A
            3530687C66E3C68D222660FC1E3D7A9083705EE21E0E86F5E34BBC6DDCB8B1C3
            FA39A4E0900B009E3364C810B8205CB870382A2047909F543B7DFAB4E408A40C
            220CE0560A04845172912245281FE8EBE1E141B94116C0BF6DDBB66584D8B163
            172E5CB842850A6C0AAA43C31408CB972FC7D59B3469C220C67026682EF80410
            C25C2020BC63A0D4BDC425A672EDDA35C4B0CE9A356B468E1C192323E3C5FFA5
            BB80B7952B57C63D281F162E5C28B712DB73C1FAF5EBC932A00CE6A3D20705A6
            413ACDD9AB57AF0E1160E5A1EA5E2305675CC00B52248A794991388A1B43643E
            3E3EBEBEBE2438E9D3A7DFB66D9B0803823F19106B2477409EE2AB408102D40B
            72DD1110F3291350A96C0ACA8429E0509449C60435F4E9D3072F15613334177C
            0208012EC082293EDB984038EAD2A50B93A0C4959B61015C80FD6140B49F3F7F
            5E1A153014A6DEBD7B77FA92EE0A1790F977EAD489A1D4170D4819088FC810D6
            A4C50CD861D2A4494C807F2F5FBEFCE0C18371E3C621AC7E0A3194E0CD9B37E7
            CE9DEBDCB933533D75EA94725D807B93025007E1C3F5EBD727233876EC188D17
            2F5E446F68C3F2F91FB50FCEDFAE5D3B843B76EC08C99A3F14A02375078370B4
            4E9D3A6892D24CF4367FFE7C92028A0575F5C10CF8023A60BFECBF6FFEFCF973
            123D66CE7903ACBC3417842042800B34821CB80D1C2A0F209216922F98EEFAF5
            EB66E250E0E8A3478F9CED29CECF505449669AE02D7419DC9751341784203417
            688422682E0841682ED00845D05C1082D05CA0118AF06E5CF0D75F7F51CE500D
            D95FCBA085768E9AAF3D9B1BEDCF224781B309D06EEE0EE8C25B05E9CE51FBF9
            28A839F02F2318AD6FA18E2AF88D685BA045D8726A339037AF3A40682ED00845
            78072E78FCF871B76EDD52A54A55A64C99952B571AAD6FB170E1C292254BA64B
            97AE57AF5EF8062D7FFCF1C794295372E4C84197DEBD7B5FBA74492405AF6DCF
            BFAA58B162B162C5D467D516304904E8DEA74F9FAB57AFDEB97367ECD8B1BC55
            C89C3973A952A55AB76EBD61C30675CF9B051B376EAC52A50AC20C75E8D021A3
            F52DD6AC5953BE7C79190DA09002050AD4A95367F4E8D1D7AF5F579A414B4B97
            2E3584EC902D5B36CB33815C4373814628C23B70011EDEBF7FFF183162244890
            A073E7CE46AB0D8CD0B163C7983163264F9E7CE4C89132E0CB972F4B94281131
            62C4AFBEFA2A7FFEFC5BB66C1161C1EFBFFF3E71E244860A1F3EFCDAB56B8D56
            FFC01B73E6CC49F7162D5A5CB870E1E6CD9B7DFBF6E5ADC237DF7C13214284E8
            D1A367CC9891B9A98FC61498C9E0C183E3C4898370B264C9ECDD0F0ACB9E3DBB
            8C26081B366CE4C891E3C68D5BB56AD5DDBB770BAF3D79F264FAF4E986841D98
            00F42103BA03CD051AA108EF5623E039C4C03061C2942D5BD6FC781B9CB072E5
            CA7845E1C28509D1B4E042172F5E8C1D3BF67F6C5F48891A35EAA44993F07F91
            07BC26C8C32C1C5DEDE4416FD7AE5DC3511168D6ACD9F9F3E7E1021204DE4201
            458A14210DF1F0F04899322574F0F5D75F93928C1831C2B2169659BF7E7D2646
            2F588914407C5B6181ED59720C98244912F29DE2C58BE7C99347EE2261CE4D9B
            363D76EC186270C1B469D31804E4CE9DBB74E9D2E54CA85EBD3AA79601DD81E6
            028D508477E382C3870F63F7F80399BFF9BB6ABB76ED22F2E33FF5EAD593BBDA
            5FBC78317FFE7C5883308B2BC20864F257AE5C1179F03E5C40DC5EB162C5BE7D
            FBF6ECD9835F9135E0C99C0876B87CF9B2D1D986CD9B37434FB83A33610EA40F
            67CF9E35AF57B800E7A78E3878F020D58A9797D7D4A953392F03924AF01AFA30
            73C1B871E3C817F03E05D46239AF6B682ED07017CF9F3FC7F8D4B718DF13983E
            C5F9A3478F88E4EA12D7BB71C1E3C78F7BF6EC4910A616983C79B2D1FAEFBF52
            C6134849D465DAF7EEDDC33861013C8D4384EEA2458B6EDAB449E4C1FB700139
            39B42211FEEFBFFF8695E4D97CA40696DB31E5F670664B3A435E103F7E7CA64D
            17E3F05B2E601AE6AF93BC7AF56AC8902110012B6DDBB6ED03DB4F8D292ED8BE
            7DBBFB4EEA101F9A0BD8607437DB39D09A8F8F8F21FDEFBFBEBEBE702DED703C
            5B6EB4BEC5A953A7962F5F2E1D0573E7CE5DBC7831AB22897238671AE932C706
            6612A80BADCEC0200F1F3EA4F29C376F1EB33D71E204DB661C7304944098C204
            172D5AB466CD9AD3B65F34328E99408ACB98C431FB9BF96EDFBECDDEB3D2952B
            5772D4BC0AE2124BDBB66D9B7D99FA3EF8F9E79F49C567CD9AC5EE1C3A74C850
            B723908DE3D238B3F1DE0634C3CEE25D7BF7EEBD73E70E03A20464468D1AC52A
            D4B73FDE8D0BD01E1393AF96907B4B4774223FB495397366662E2D67CE9CC197
            C814F0258E264E9C183F1C3366CC9BB7775505151700D867E4C8913051A24489
            060C18208DE0D9B3677847B870E14A952AD5A54B17A6071D50CBC8FD9D02875C
            00D8EB82050B72AE9A356B62FC662E58BF7E3D6F316F05D61228F3FED05CC0B6
            316916EF0C9065F7EEDD0D69DB8DEE2952A4A0BD62C58AF6DF9043D790AE7414
            9056C58B178F4626803F981F8E0050CDA54B9792264D1A295224323A0C948D31
            8EBD2B58119E49D9494587E531FFBA75EB9225BAA00332372215096D9C3871D2
            A64D4B3279FCF871E3D85B60196BD7AECD9B372FC63A70E040A3D5865BB76E61
            BE050A1460A59CAE4E9D3A070E1C5026D8BC79739686BA6894962001CACC972F
            1F260BDB62C186BA1D81480B4FE124C67B1BD00C0BC1C94B9428317AF4687C1E
            8F45F9282157AE5C509E78E3BB7101D8B16347B162C508983973E694BE641C85
            0A152205A856AD1A36890C0502EE0D1110AB972D5B0637716A5EA331454641C8
            0500974E993265AC58B1CC2ECD64D83B2646230B6FD0A00173C026B122E5BACE
            B880A5952D5B96739529530656357341A74E9DA64F9FCEEE28E06881FA8A5D08
            7001C552DCB78035E50A0AE68B63D0922953A67EFDFA89F0AFBFFE5ABC78710A
            2404D0E98409132CF173E8D0A1E45AA8522EB132027A674CF69B2E18873CD2C7
            90B6590371DB4F7336E084E7CE9D338EBD2B18939D23286188091326848C980F
            FEE9EC99083839A643ACC04362C78E8D3C13465D6858593F3244304A59D66EE1
            027C86CA304D9A340416168BFDF1822D246314E5886D51A392204897F7C71F7F
            FC8151A26168DADBDBBB57AF5E7E9B6753383344DBAC9D994823C64A12876245
            C92C9379CABEC85662F72C41664B708E1933266153ACF69DB9E0E2C58B847A19
            9CEA9AC129B0D3A74F8F75315B49916EDCB8D1BE7D7B668B8FE1C3F85E850A15
            10C0C6D437B882960BC8DA70698CB37AF5EA4693ED4728086FAC1A4E249D1C3F
            7EBC1830F991F232675CC0E0D0314B80E62411505C600F2609291B3DDD400870
            015642B41754AA54096760DE9E9E9ED8192D4C05B210613C19B360E5E09B6FBE
            C1752D0F41172E081F3E3CA64FDF1E3D7AB0D9F821368A7E01D9B2393560FB09
            029C8E43FC4B0C415981B2397B90AA61D09814568819B1EBE2DEE4A5E6AC4F01
            73C99F3F3F13603BE172B61647824AD09B9811B92555034680B930490B17E02D
            288DEEF2E971BD7AF5D00C7420DF26442038B8E0C2850B8450FC79C68C19C45B
            AA1BDBEEF566CB48C198000A47EDD2487422F9525C400C6CD3A64DC78E1DB10A
            AC93A9B25E4683431999F201C780B509ECBC7D672E60ED53A74E6526D0EBB061
            C3D024B68156D121A7C0EA188D049B1D4786A02A8F8D6756F81B5583BAD41FB4
            5CB06EDD3A323B964C36242D1C25BD272D452D1C2550B1704E074BA21FF5185E
            675C00F02C5120798D990B60132640178522458A387CD884337C682E3003ED2F
            5DBA14676625B0A3E5141C1D3E7C3869308A9378827D33B871D806E102F69B14
            DD68B25D62C11C510D5D6087EBA6DF53C6C7C8C969476B786F98306190545F01
            1660376C1870D316D160860C1930413267BADCBB770FF7E014BC359F5A813392
            E330E72953A6702E2212B608773055B9BE85A715B6FD6C8190A0850BC86BC8AB
            595DDFBE7DB124B20FCE8E307629CF29B370015392E520AC56C479C92FB07BDA
            790D2C02164C9E3C996204DBB2C419265CB56A55223F864B2E60B4DA4EAAB8A0
            67CF9E72810010AB09C234C29B3E3E3E9C115FC23FA920F064DEBE331700F26D
            B91C58BA7469960663623968525886166A2E1445E4C0DCF13A34306BD62C7988
            1B659D306970E4054C433DB30F9380C411669BD83BE670ECD83102215B069F52
            FDC9AA9D71012A2278D09D40C272CC5C405A8413A1468555AB56A14FA3A71B08
            BD5C80813233768EAD6547D10B3E3671E244E3B00D0EB980684C0490ED24F0AA
            8F55D86C56CBC603CA105806014296F9CE3364162D5AC41909EFF2E0F000816F
            4355B8CAFCF9F379CBB4F119584695A916B46BD70EE2C020C4D48E1C3982DFB2
            4C4287643D447BCC02B05E88C0C20583070FC691A81108D1BCC5F8982A96943B
            776E8C92163317E0ABCC01F7A386EFDCB9B370138D4424D6484046C398DDF2E5
            CBAB54A98265DB5FB610B016D8076BB33CC824B05CC004BA76ED4A23C514898C
            1F45D9925E1C18B530FFF7E1025C8B90CBDAA953D853780126A5CE9239532090
            B3706A045029BA8543A9D4D03C8D6C99DC6518B45C806E5132DB8D99490B892A
            DB873046CB3299837CD2410B13533FFFE38C0BA030B95E50AE5C39F6D7CC05E8
            F3E79F7F66FE0A0439ACD1E8E906422917C07F681C8B613BA9F7B00F82213647
            362E179904CEF2829933674A5E40BAA82E9F600DE4B4681CD5B3854234F0ABF9
            232512579211F6802D74E7DA1BBC43F9C724714E55DAE0579C1D6F34BB870221
            883088F1498D0AE3D4AE5D1BEEC0BC246D66FB3D3C3CB048C0B0162EC097B075
            6229AAE32D86883C1360C2688C16C5057BF6EC617028064FC3E8099B6806E398
            3B772EE7A2114E440328105E408764B3F629257B043F66CE9C19618A7C5CD438
            604360B980460A3D1A13274EBC73E74E7699C66EDDBAB146180185BF0F179091
            61C70C4E4E0E6DA164F480AB8856191C55D866E4F7A35B24088017A88E163235
            AA77C470A1A0E2020C75D4A85124052C76C89021D2886B28CF9739005ED302A0
            0CCA58C49C7101410E8B45129B397BF6AC990B48D9DC77528708A55C80FD51E6
            5178B3AFCB962DF3F6F626FAB16DC43773B8162EC0ACB14846603BB124EC402E
            1A115A0980ECAE089394925F30200BC6D48812D493A89B8E6AFF9E3F7F4EE065
            400E39BB1DDD0C9167FEC4197C4F1A65BF0B162C686619850A152AE03C8A2970
            8F468D1A6110540A726903AB0514B49403921A98B9005FC2E6E4F9A5BCC57428
            46D00C8D9201292EC0E7E13E6C9125639454101001A7838CA01EF4D6BC7973DA
            F1109440175215FCD37692FF812E145684324E316FDE3C33110377B880C88CE6
            2F5EBC78F0E0C1FEFDFB4BB8E65F3C4AA2167380C8C86BC8A8DF870B0883C446
            D6CB5A48FA3000868501390BFB4BEE437C26832314972A550AFA131063501D3B
            8EC5324210720149161ECB6428439806CBC175393B1363AF31456306A54B63D5
            4C18B570146D23E9900B1859B242189C8AF2D9B3679F0517900B919762C44424
            6C08CBC0ACD94879DAB721F4960BC4ED09A158189AE2B5F80611895C404C8A6D
            A67CA2917041B2C0B970543689AD42DD88C980C479B6101AA25270E7F3793C96
            B485F967CC98515504F836BB88B990F2498B196C3C0B21C7DBBB772F6FC96071
            6F99B0445DE6262EC784EDB900DDE27B0407688EB7845C99C037DF7C835DB258
            E102120724A95CF00D9C1F7B151B5DBC78318720D93A75EAE0AEAC91721AE273
            C605F4A22E45006F819B44990AEE7001FB82EFB15E4A153688794294B56AD5A2
            AF0853B4C3DD4C9512F77DB800B077F26B1A021234F9348794011D6227A45413
            264C20B460540292762686FEF3E5CB77F2E44933179082B17633B019B28CAB57
            AF3AE402F43065CA141884E845A20A1190D89221F2E2D1A3479816DD314E2409
            57B08331838307C9281B376ECC1660F074A74C102E60EF501DE7A59179F6EDDB
            177740264F9E3CF0265995990B287BE13B99A702899E10AE3B088D5CC022A9F7
            F001B4838E08774892F643F37832B62EB925102E408CF658B16211EE188A7F49
            77478C18C120EA4A3E4626BF440A011F3E7C1867C33E089E04644C41A5F780C1
            E985803BB648B00D422E80E94546E0261740794C80856097B4081790F35317D0
            4E77CC4E052B78108DE1939436D282DA3D3D3D09350EB9003DA0792C18BDAD5F
            BFDE687D0B77B8C002688848B875EB5643D476818D5313B4478E1CF99E5C00A7
            B76BD7CE3893A942C4DF98275C902953263229F3C8B061E7CE9D2589983C79B2
            990B503EC99D197826490176E5900BD802B28C02050AC04730202B65585E430D
            9C88028D12006AC056715A95AE020EB19B7467102AA6EBD7AF0B17D082DA392F
            6920718B5DA0053B21A595E865E602720AC4649E0A1883728100111AB9005E84
            08710FDA2923D91BB253F4485187722145F5084D55232086C370527487A7E16F
            5456E60F08B0868A152B32204E3271E2445816B04F8429CA39AC50F14BA080F7
            4A8D4064539FE1C91501368694555ACC285FBE3C13C6AAC4793026F88E75B110
            77B800FB93C12583C579A8119800C1562E820A17D0222012E26C2AB727B74403
            A4062408D282962816305C675C006BC0B36464EA43780577B840F2616817FAAB
            51A306B335176E80E416EEC6496081F7E4028AAC254B96C8F29915FA67868C43
            96C7989C824CC11227D977DC09254BB6825B2A2EB0073267CE9CA1DE71C8050A
            4C006E2529C0B53036A9CE201D98087B63B158A3717A1B9803BE0D77630638F0
            A14387840B8CE16C8005D877F202D2586A2E2177331738040C62F602D7088D5C
            8041B060590C6E830A00F9127AA405DBA297489AAF1DA2505F5F5FF9A81FC90E
            1D3A100164E3398489D091EE1C950101AC01E3A065BC912C4EC60C1450B45C3B
            C45554AC93ABEED4E15E5E5ED26206C9392655AC5831F97C4E5D3B64EFE52A97
            82432E208899AF1D428B14E44C80E248BE7E235C400BEE8D39A2409C10A31155
            90F71258E4D369BFE1DEDE47C4941C72015105A2840BB02AFBA3EE7001C6407E
            84F5C3CECCD0728708804389A5EC2FCB7C4F2E60A3C922611CB6A069D3A6A210
            16BE61C30694DCA44913B919D902F244A231BD500E5C80303A64047BD4AB570F
            A322D74092B7D3A74F272FC37288FC2220A859B326B961FFFEFDD962A9FB9818
            792873E028A62E1708CDF8F5D75F2114C80853A454D9B3670F1B2DA309E84B65
            413D45D6C068D20B83E11486842330880A030122D471018DB8070C4A23F641EA
            486A24C088F1197C984D15433173016F316B126F923DE9AB3EA179FAF4291686
            87E0F698B5319C0DB80A6E83679A4DD97D300D0C82128E938A77B14F28941676
            C242FF02769445E1CC9473BCC543CA942983BCFA4C51C12117C8D523A887D49D
            B7983BAA6669B837018A16E102B444EAC1B9D018C444DD28F539DD21083258F5
            BB0958A15CCE7496175003A3286622E465863B5C60FE1CC121604C6A7536112B
            7C4F2ED0781F843A2EC0BC48ED88DE34E2241D3B7624AD15C0CA1831FE4C428E
            DBD0DDC205807C8C4664E84E367EE2C409C2827C630C9F270D330F0848B6C593
            897E0C88302343E164746E265764E0142FC46A8C9ED417BBC76DF0C6F6EDDB13
            A3A006C89B48A2EE1166A5642878383E4614DABC7933F2C470E42D4A76C80544
            364234496CBF7EFDE84E4C235F65BD142672B153B8402E287094B9C951E6C002
            61107816A224703D7EFC98AAE4F4E9D314567471C605701C73A092B2FF582448
            B88079C28C8C4F3AADB9200411EAB880E026F78440070479896602EA611C8643
            C4556214E9AB3D17E06FA4CDF836DDB16F4C1F73A75CC40130590C57C4147048
            622CC1931C8C0121025A10862388D886904B20465FAA12180A5FEAD4A913F3A1
            5C9C3B772E034201CC0D87A466FEF9E79F5932BE97274F1E88A972E5CAA47C6D
            DAB4619E381BE1D192CE39E4021201727EBA17295264C68C1903060C60A5D0D9
            F2E5CB25AD102EA03E27F7C6FFE5D226E90FFBC27C8E1F3F8E12E8CEB04852E0
            905008753AE402B8ECC08103382A6C657F293448B860FEFCF9289C11162F5EAC
            B9200411EAB880185EB46851EC9B7682BCD92010C06E3074C25ABB76ED888AF6
            5C0068276F27316658B9444708C55B88C6F6EBC461E446AE82050B12459F3F7F
            3E64C810FA9241787B7B1B422E81D5421F383F73C6617881A791F0E3421CC50D
            306E0E7176E23054F5E79F7F52CA4ABDC3429818C0B1CDAC2770C80538278525
            6908EC43779C9C17A44B2AEF307301CE8F3E590E2D2444F02C74337AF468CA04
            5AC2860DCB08CC043FE4B5432E40FF2C506E0A80582D930C122E40E1543DA54B
            97E6EC9A0B4210A18B0BB054AAE8A851A362E25404966B69C853F766B0DD7E8F
            F53F7AF4C82117E012785D810205C4D64986A9353065A2B1D95E054F9F3E8556
            700CCC7DDCB87181BDD70870BAEBD7AF63D038150B61280F0F8F6DDBB641491C
            C50DF064DA317765DF172F5E6CD1A205D90DEDCC103222B9B0377D875C006EDC
            B841B4C79FE90E8F90C2E0F62AA730730163C2110D1B368477501479164C44B2
            80BA72E7CE0DA140BBE4267481C56871F8551616285740F052AA27A3D58620E1
            025441C923BFD4A8B9200411925C0028717139127E127B221E6687ED922D1322
            B00CF5A9B8022672E8D0A11D3B7660D6D4F33821DDF7ECD963B9308B191D3B76
            8C41903C79F224B1915310F62D1FDA014E4AE98118E3301A67BC76ED1A1D199F
            73194201013FC4C198F6ECD9B357AF5ECDA9613131E5DF7FFFFDC489136DDBB6
            A54C204A8B3C67B972E5CA962D5BC88AD9005F5F5F87D7265005C90533614A46
            930D7427C23367BAAF58B182D3E193CA73CE9E3DCB216A01993F736381CC0D5F
            7DF2E409750AFE4CA1814E200B94C31640BBE40E5098B35488AA0D4AAA5FBFBE
            DCBAA3C07E9D3A750A75B1E9B0AAD16A035488CE012B357F82680162D016671F
            3E7C38AF3517842042980B3E25E018A41578B5D98869C439E1022CDE62DC78E9
            AFBFFEEAC24F5C0346A0BBFBFB228037BB76EDCA068D1933463E7325BD22B320
            87AA5EBD3A0C62C8F9075442499F23470EB9C1290881B5905364CC98912408FD
            682E0841682E085E1087172C5840314CCA6034852888E1F20DD9142952B46AD5
            6AE4C8919448A4E85F7DF5159588FDE7DE02128A4A952AC58B176FECD8B1F6D7
            35DE074C2071E2C4D471A74F9FE6ADE6821084E682E00599F3860D1BB0F887B6
            870B8438A865FAF7EF9F2449922FBFFC925C0016801720827CF9F241132EFC1C
            1648952A15F4612958DE07A436504CF2E4C9214AF95E96E6821084E682E00506
            4DD540326FBC0F05A0C2C7DFCA952BE7E1E191274F9E82050B56A95265C58A15
            A4308684239C3B77AE79F3E61D3A7438667B32FFFB03CDBC7CF992C244EEB493
            46CD052108CD059F23DEBC79F3E8D1233C905CC0C7C78798FCB7FFBBF4ED8167
            22EFEDED4D666134BD1F1890F37A7979C1328A2B431517902531436612D88B32
            EF09D2A557AF5E715EB8527D3CF401A0B9402314E11DB880B40B5EBB75EB167D
            5DA736720FE883070F9004BCE02D8E671CB6C3D1A347972E5DBA70E1C2C3870F
            1B4D36BC7EFD9A13C1890CC2BF4F9E3C717601982570086167806BD4A74B0A94
            93DBB76F9F3B77EE962D5BE45E520BDC5F3213C073910477EEDC717DA15A7381
            462802C61D582EC0DECA972FFFF5D75FC78D1BB75DBB7646AB1D487C6EDFBE3D
            6EDCB802050AC48E1D1B615EF0F6DADB47AAD8A359B3669122458A172F9EF9D7
            0D10A64A6AD9B265FAF4E963C488913265CA060D1AECD8B1C321A7E0E77BF7EE
            6DE51C389E7DCDB579F366797851E9D2A555F564C6FEFDFB2B55AAC492995BDB
            B66D8D564720B358B56A55983061104E922489FDFD3566682ED0084578072E18
            3870A03CA92156AC58EAB18216E0A8B881A7A767C48811F18AFFD8C00B5CBD4A
            952AEA81546630818A152B7EF9E5979933679E33678E34E2DB384CBA74E9E436
            538EF26F58DB2376EC7F341110E1870D1B66BBB3D431F2E5CB87AF1AD26F316D
            DAB40C1932B0A2DAB56B330DA3F52D380B63C68F1F5F96DCBA756BE38023DCBC
            7953EE58473861C2849484C60147F874B800C226E523117AFCF8718066443D46
            9420D17278938F86331067C8362D771F3A04DB811D5FBA74892ECE02AF3D02CB
            0504640F0F0FBCDA3517ECDEBD9BDC010746CC82C89123E34EEAC1560A04E422
            458A20807B70165A301562789A3469E4BBF366D082F7AE58B1C2B252964FDC36
            841C21478E1CCB972F37A4DFA2478F1EA42DF054C78E1DED55B775EBD662C58A
            C1417477CD0598F7E4C9931947CE151AB980A2C5C7C7073E5680FF9A366DDAA9
            53A7D9B367CB77CE01A63066CC983A75EA1842FE51AD5A356A2A5C1AC9376FDE
            1C3870A06BD7AEA54A9522B92A5AB468E5CA95A74E9D4AAD65512576492F12BC
            12254A208919314F6838483E2763F079F3E6356FDEBC6EDDBA30F7B973E75CF8
            00B52B86357CF8707455A3468DEEDDBB139D2C79E6F5EBD767CD9AD5A2458B9A
            356BF6EAD5EBC2850BAAB66464C61F3B766CFDFAF5AB56ADDABE7DFB4D9B3689
            3600792966448A2B4FD4092A303D16C86CA74C99C26B764A125D2F2F2FCBDDE2
            00CF3971E2047B317AF4688745AF43048A0B7C7D7DD9E828B6DFD700CEB800D2
            C7BBA2DA9E384A84241AE7CC99930C5F5143A64C99E40BE066AC5EBD3A9BEDE1
            E558883C308A55B05845040C983469524E2A6F19AD78F1E2D88079DAD8397B27
            020E61CF051833364FAE913C7972ECDF687D8BE3C78F57B7FD00877477C105CF
            9E3D63F759A64882D0C805BFFEFAEBBA75EBA861142244888066E3C489C3AEC0
            08576CBF7B8B4E514ACC98310D21FF6047D93FC9A0604A344EED246409102091
            EB697BDEA1ED9C7E206123D92B58B060F4E8D1256B029C1A7D75E8D0C1CD6F25
            3A03C9C8C48913C927A3D91EBB922C59327CF8F0E1C3CE0C9A5DC18DD96FB256
            D642CA87DB6CD9B2455D51C7D0B1E08C1933325B04D848D6489C11BEC0C8B0CB
            54A952712E164B014CB6B974E952B992B478F1628C2C458A14F8956DB0A0C199
            3367D8113C04F684950E1D3A44C10C083E842043E82D203B3208A69D356BD683
            070F5A68CE19DCE40246DBB76F5FAD5AB538BBEC2370C6057835CA41804DC7C6
            FAF6ED4B9C47D5909A74670B50A62543C425D81D4A8976EDDA3D7FFE9C33C2DD
            2C472C87FD629CB56BD752A1B0E93238BB002D9AAFCF6199925C48B95EA14205
            EA0E33B076CB7DDF3017218DD1F2E6CD4BA261B4DA4076835B29F601CEB8E0EE
            DDBB7847FEFCF995478050CA059C95C9B160D48DD566C992058A9564060B96A7
            53630A583F291CEE4A3D866ACC607719041AC60A49C37018D82477EEDC6C30D9
            A07C213F71E2C450A3842C4EBA71E3C65CB972710A14C4FE911A14285000E340
            32418204ECCA3B7F5A0697B36A888C15912B320D26439A470D296C6501C48185
            4173D822C2B0002F9815B64281C7C29F3C7942CA00A1300EFA81BF7078F48013
            D217CA1F3C7830E68872F0CC92254BCA2A1887B841CAB070E14216C8F2FBF7EF
            6F9C3228403A006F962953862C0CCFC188FD4CEC8B2FD82F877752613365CB96
            6509C43737538300B90055C3EF3366CCA00C56D9AFC0211730CF3E7DFA40D008
            20CFE4612819194F83A7F0528E366EDCD83243B22A36854343870E45A5E81CAD
            CA8900964911C13824470412692435207D337FE7057696C84C24C723C8D7F6FB
            07A9131B6A48DB808C3017C620CFC261C9CC59968C326DA73260CF05D839FBD2
            BB776FCCC64C0420B47301C173EEDCB90B162C18376E1C993FDA273BC2B8399D
            E202688208BFD20E24F64427F4C502D8513234544F78479BE802B2E7149D3B77
            96A2838C9AD28033E25124961423140B6BD6ACE9D6AD1BDE4B3B119869C80C03
            0BB673D2A44978235BCE0B08A870E1C27287BFC37483DDC26F71EFD2A54B3367
            B451AF5E3DE6C09C3924179F39C4088811E4972C59025D3238EA623958212512
            C92A46337FFE7C820F3E8030402DA82E505CE0D0E5EC8189376CD8105B2484CA
            759600B9808570087BC5888F1C3962B4BA44805CF0F4E953B60901B4CDA9D121
            1EE8E27A01C4412E836E1120328F1A35CA38607B3C1C6F2165B484DECC3EC9EA
            08CE0C4E10C23E69411853F15BAD0DE480920AE1A80848B9C18E1060CCAA803D
            617C0E11185005B99271C039485D853EA0274E4A0B59094B9667D2D04E92C8E9
            C4CFEDB9407E5792D3719455B304C598A19D0BD0A3F0281B4FC645A0A61D3B16
            F2162E20F461EED2D71E1B366C90AFD660A3A409B4C0E2EC93A7A72765213101
            EDD0B26AD5AA3469D2A01A46838C55CA7AEFDE3D5271368C13713A29C89921AB
            40715892B4B8C6D9B36771664C819993A53373EC86DC84B0835B1A422690A154
            AA5409E6965F8BE5749B376FB6EDD717CC9355D08EB9274A94881494D1486DA0
            18163875EA54260C53D4AD5B177680F2302F66C88AA486C446C9292C5CC062A9
            56C830E94877CE4823164612B169D3A6F5EBD793FDE263B82B4B263111010BE0
            5C0F0F0F9211823C5372870B981B54487643DAC5BA701BE3807304C805A4D0CA
            27A544478DB276875CB06BD72EEC5BE4D90EF347064C0FCDB310E3BD09981FC3
            D285F1A92668B970E10225898C030DB183AA164081A4B7B4E39F64B5EA0BDA8C
            4CFA260ECC5EA001F611CBE45F1715937C1B1D43E585DC12FEE0C1838E1D3B0A
            F711C964C912EAECB9805D46402683DAF102E88CB7E0A3E10280BDE28DB413A2
            09E38A0BD842548FC59BA10C8B44AB58B162688A65C026972F5FC68CB0666A42
            7A61E58CCF198900F82A155DD7AE5DA5A3027EC8089C1715932872DE2B57AE40
            F05824BEE7FA5E0E014B268D679FA850848F0808F2E801CA049131E3FCF9F3A4
            03B366CD92AC812D6793FCB6CBF6FB1C8CC024C94E291F08FBD816B900135351
            858408C3A25E10CB46150C28FE006558B880A32893E5106D483BB1155A200294
            43BD4A2246A8277326FBE05F963C7DFA74874E0B3D41A6EA59ECEE70019AC461
            A8CBD03C258F0452D770930BB01CF4C38EB31C023B2512D370C805A454840499
            273103F3C0B5E06E722BDC9B5CC0E162311EB68F2E70AE7C4DFBCC9933646A32
            0E1CE4E3E3239200BA91AC1E23A4566586D28E4EF061E9821F12F0972F5F8E1A
            99D2BE7DFB10B3BFF38725C338D83C81443D905271018393326FDBB6AD4B972E
            BC6658675C40688495DAB76FCFDC482D252D0AED5C803FB01F18D6AB57AF6824
            F2D048E846538A0BB00CF442D452C0854E9F3E2DE44A91CFE9E0510624BC136F
            F11F821BC6C4368B3DF1568A3A86B27F681FF68142390A07112AE9826B61F7B4
            0C1932C452CE3904F116DF2319A30C918BF98B162D82C2B057F36D2A0EC1E930
            9A912347723AB610EDC174CD9B37E735B6CB04BA77EF8E7DF00246E090D1CD04
            B88325C3442881AA0766515CD0B76F5FBCAB4993261C822CC68F1F8F614194D4
            4742A08417A2072625F3670EC3860D737816DC0C2685ECE4263C77B840C02672
            6ACA6F3CD068728E00B900817EFDFA9131D5AF5F9F01992AF5A30B2E60C9B295
            00BE3E75EA149ACC93270F8DD83D69D425D38F6828D04E414117942F1FA0C208
            92B40208D45CFAE1D8F89B1C221AC3D43273C916A59DDD946743C95B3C99A912
            A82C748097B1E9EC0BFCA52E1CA25BD6C892A9D17C7D7D992D1A70C6054C865A
            9B05CAA630998F860B7015660FA888CA962D4B00416B2436E2C6C2057ECAF30F
            349E34695202A00C386FDE3CE8030DAAA3B801D183CD105DE3DBD822873264C8
            0095482F05422EBAE6282648B4E4BC448C4C99323113A2993A8B0B7879799109
            63F1F037ABA3858D24CB6004A62132CEC04A712A4C93F96307D0161C4738623E
            50099905CB011CC516A9772C35276F69A45E4006F6C1BC68545C40E948E6455F
            004F5DB7FDB62A4901FE80AAB1276A69CC1A19F4890C2775C805D007353F5D30
            477169F7B980F3C2D1043487B7F45810201750CB10180F1C38A0F4E09A0B58A9
            7835FA41C94D9B36B54DD9001449592E3F5B6674B08171188DF41E2A91C40106
            2454482F36C5FCA00726C3EAE410806E244AB15E797C9E43A0EDF2E5CB63F9E6
            53937DB0711C2583E3903492D892F09289A0736971C105EC0E440FC1C9DB8F86
            0B00E9162E04084A981A2DD027AC8C98FB5C406024C5958BED2280A2C3850B47
            56BC75EB563408A98B77E12DF281A519981D751D47F167022C2D6C3F04815D52
            DA392C9E2DA0CA605748B67BF4E8218A62F3C8F019930CD6E2BD1660556C3C2B
            62F2F82467A42A21FCD2972DC48ED164A3468D500EA6C93C2D1F76B0D92C8DEE
            C8538F10F669142EC043D0098BE2282C0321CA4C38A35C4E237A906B60B8A888
            AA442E3839E402A62477C5422EB0152DEE73419F3E7D701E98D19DE7A004C805
            34B23BE67ADB35179019717699277A809DE5B5027602C1A11CA3830DB8049609
            996257D282C3CBDD8D00959A6F0DC64BF16A3904F0618940EAB34C672095E3D4
            B265024ABF94295372080285E2A59125B323E625BBE002B618FD2893FB98B8C0
            0C669C3C7972D62969B9E2026C9424B9B7099817F5BF9A1292B810BAA31EC331
            D8421910FF69D0A0013C4D9C6F61FB795FA902A497029BD1CBF6B0606848D92B
            14001C9AA33D8854281A46A39093BC003B20CDC3F83A75EAE462102646F1020F
            02FC531278A84D2E53114ED9699C1F4B655DD831FC629EFFAD5BB7F01CCECB89
            88DB68402C46B800EEC0A0F9173DE030AAD8A1A4245E71A86AD5AACAC2486424
            9776C8059C48CC1AB2130A769F0BC68C1903A3A54D9BD6F269B94304C805F670
            CD054C588E0AD0213914C91AA62557F801063374E850391DFF52E5A10AAC1126
            6567651CCA40F5795EBA74E9E4C92B02324D34298700A9A5D8C0B469D344A580
            148FFD9D3163C6B871E3D0242C4023A7209F357F7A251F15738874465D47B387
            0B2EB0E063AA114A972E4DE4C415D1C2AC59B376EDDA25570A10E35FE1021C18
            E3C64ACC50D7C301064D910C1993FD921DB16D689CC40137C0AA366CD880B054
            01EC8DFD4712640AD81047A920A4180E2CF02EEC83A9328ED8C1D2A54BB367CF
            4E350E73898C3DEEDCB983E3B143B8A5878707F9A1D039FFCAF34B990FF6440B
            EC3073E64C46C30254EA886F635BC4285C1D15C967FE7248B8801509182A6FDE
            BC9885281685703A2C9BA024F2002BA12C42D821179C3B774E6ECD609BC412DC
            E7823973E610EBD80E15635D809D0D3E2E800858C5FEFDFBA13658184690B081
            027166F4833CB6441699204102DAF15EA9B9006A57DC81151160A41DC005952B
            5796430003131BC09821FA12254A142B566CE0C0815826050E8A62A822458A60
            9C08C31154AF6AA59C917D81DCF10515DBEDF16972012726DDBA71E30646C0F6
            9B1321C505AE3F535CB26409EA804DD86369812308B0D481289A788B093279F2
            084E478A811E454C816ABF54A952CC07EF551F08050AF821119B73E15D72ED70
            F6ECD9B856ECD8B10938226301EE3D7DFA743C560C74FDFAF5E6BDC7A6210816
            2E350BF32761617CAC96D9A2195A56AE5C8987D382A7A104F9FC49A0B8000D90
            DB637604A2458B16A1618EA24CB69CD1CC7B4434837AE8E2900BC838A4E4215E
            C989DCE7020A1F6608E047A3C939829C0BCC35021E4E46A96C8C0C4B6E0A04A4
            00E227AC0B4531148D8C2C05113878F0207426C2BC900F1704870E1D22299343
            4091329E0F87F216CB54E300D4CB34A4E220A12B59B2A4A45A18009640A9486D
            8B8388B0437C9A5C60FE4CD10237B900BDA056D68999AAABB2A8B57DFBF672DF
            D8B265CB600736189BA038A47286A195E3B16174C44AF0968A152B5AAEEBBA09
            AC0A6B60F0E2C58B939BD0824711B1293AA64C99223266B0345644C460E309E9
            047F89240A8411664B77B9231D7E2193242F2068ECD9B387EE9826CA814748BF
            D93C98C5EC39C205AC88AD2533C7C2B03956279FD4629D55AA5481208857EA73
            3E069120E9900BA853D01B47D136E5182DEE73C1D4A9535105CC68FF532BF608
            722E50D70E016467BE6601A961A5902987281C501A8DD879F7EEDDD133C60959
            A3581126F82323E3C48B174FE50B007DB2957208A8FCCE0538570EDBFD0B00C5
            B22F9828D92B53E5BC24CB2AFB7388CF970BB00C727E1F3BB04EAC1627C99A35
            2B3B2A768F5A49FFF0346226CE89A76DB6FD9E3AE42D451D03A2BEEDDBB7FBFA
            FA32C8A44993D80CB26802D7D8B163E5D44C09A361C39071871DC86BC845F137
            D48D975EBE7C99E593E9A93B55C8E709DD64280458E68CE760B550155C40DC86
            A7A84B0538030212F31981A411DB6245A439783E2B3D7AF4E8CF3FFF0C596091
            F8333E4F126E74DEB60D9D3061E10292A04E9D3AB11608852C83D3C91DD9D7AF
            5F8728E98B8B4E9C38118D51E3C00B700DFA71C80590917C06D9A54B17B9D665
            E682B66DDBB24CD91401B99EBA24866D41D62CD305A12B043917983F5324EF63
            778C0336B46CD9127BE090A25D9C5F2EA61045B0015587B2A2C2850BCB38F8A1
            F9D328C9F9E5101B8A7A039C3959985C8B05245C8C86CED90559488B162DE4C3
            1A67F87CB900922685F3FBD55813AA57AF4EC09134AC76EDDAD83160B3D95D0C
            0279D801E76CDAB429BEC46848722EAC9FF34A48C4BB188716C438055E279FC4
            705E5E14285000678383E8689B8E2BB022EC06EB61A8BA75EB5225264F9E1C26
            E205A52902240E9C0897600E240ED093845909ECCC56817110600B993923908E
            524F12A9980C83E3C3F00E4E2849296B247D307ADA404D41A8172E20CEF7EFDF
            9F94F8EAD5AB7817ABA684411BB8F1BC79F352A44881E1E203581E16C0DC78CB
            980EB940F6020D3319D192990B3817F3917D11B00B42C1A063C78E9838FB0547
            488B0B043917C0B32A02631EC470E3800DEDDAB563D738C4EEB070CE48BA4E54
            40D5D0EEDEBD7B0D39DB6775AA10605F1847D104559B5C4CC19E63C68CC912A4
            9DD1D024BB09774BD5A0807214B340FAA74E9D22498197C5C39989625287F87C
            B900497BD01767A6BC478C78CB8225AF330EDBBE888211102A5560C78B5022BB
            2E462F60D75168A54A95D43D480C18D87B8DC0952B576AD4A8C16C650E721580
            3C452C063720D4E08D93274FC6CA715149C8ED3163C60CD8875E2C0A2B51179C
            19109723ACB11C0691BBE2EC3178F0607462E602CE8E45E290183D0E4F6AC008
            58362983144D4C0CC6A16A90CF14870F1F2E9FA85B80CB51492126A1D5CC05F6
            604075DB5CE5CA95D98BCE9D3B6397D2E20241CE05382ABC2FB3A20E5FBD7AB5
            71C0B6D1102E04C721F449688137613A14420B2B357F7048BB7C2C0DD80E285B
            3C8241D6AE5D2BBB892D318E7CE88B7EE842FA0919493E681BC680F96E48A647
            9E483E02CFCA2521BAB8CE463F1D2E602874445C8280E5266DE3807FA065924F
            6C1A497BD097B45CE813C5E1F36407B463EE80B08C0962AC9669C3FA3367CECC
            972F1FC68A6A90A48E25381C367DB99817045294C268789D3BF7200309BF8444
            7A61196480E4F9AADAC4AAB06F3868D6AC59705FB76EDD283EFD9661077C55C8
            9199B33714A24C15FE22E6EFDAB54B96437D8E25191DFC8309A3133A96295386
            2E64C8C8C32C92E222C04EDFBE7D9BD95277C0141E1E1E9C023760B6D4535401
            A3468D5211CF0C6A31F6827489C1790BBF50ADC849EDC1B9E4AA276230324446
            2D2657525C23C8B9008724A22867C08B5431CF7C281B71600E41DC98A2E47712
            2AD823B9354B80D23811ED82912347CAF71AB13DE85B06A123F5855C828191EB
            D7AF2FED5823315F2D870940B8F215063C1F43A585F5922A3202048D7788A433
            7C3A5C104C40A1F82D3930453EFCE2C292B075748429131E713C376DCE1D3014
            AE78F3E64DF3557D403B4C113B76EC356BD62882700798DA3DDB4F9E39F4CF77
            03C53F564E22C30B75515DEE2F2024CA8D5EF6A0162B59B224EC49DDE4A6C698
            337B215C26D74D02449073010BC4AB25D49397414C78298D580B45BB0ACE14FC
            A4FDD80F5E8A7FD222099A318A8D385091381580448E1D3BC620502A114B1A49
            E2482485F238D4B56B57D22E692F5DBA34DA4621000B91BBCB3884E7F7EAD54B
            CC86C48DF1A1D1008B29CD0501039DB207204033624BC420DC3438F721FB6D19
            964283101D254A14BC5AB99F3B601C19D0781F148008C8D8B13C721332025A18
            9F163C0AA7254115310B9876CB962D5902C687A31AAD2E41523076EC58EC9594
            CDFC81BC0B043917001272A9E7016E89B3C917C3682461A1118EC062F16168B7
            4E9D3A7829A0B830D74AA888C84195247E85933768D000BE68DEBCB99C1DE09F
            0418562D5DA64D9B26DF11A40BDAAE55ABD6A14387F6EEDD4B9E12E3ED23588A
            172F8EBFC0F81C120EB2BF09D21E9A0B3E566046307DF6ECD9B172B2D020679F
            C082003562C408AC19E323CE532350346155B844A54A952C57D7CCA04C20AE52
            7DB8903183E4889C991A78F6ECD96E965AC1C1052402309D64FE78050BC72B08
            C8108138099CC80CD92658926DA2915C86B06F9900C93FE792780EA2468D1A2F
            5E3C9C5C5A5826D9BE797F2F5FBE0C53C8518AAFC89123531730322F784B63CC
            9831C91DF02C6868DEBC79223974E850262C233883E6828F151807790119E9DD
            BB778336C2BF1B98C3912347883F112346C44AE4A2262FB265CB46087511F36F
            DDBAD5B871633CC7E14D13169073512BE172850A159274DA38E012C1C1056434
            FBF7EFAF56AD9AB884057203125BC3E9A868487C68841F49FE8DFE6F419A40C4
            2E58B0A06413664034941B070F1E34EFEF1F7FFCC1A6CBD304EC41171204F96C
            920201521082A01209B08AD45CF0110313B15C410859901A90B4138BA86F2977
            DBB56B479DBC79F3E6870F1FBAF0409C6AD3A64D7DFBF675E7AE213CE7CA952B
            9415F08BFA165980080E2E002F5EBC20E7AF57AF9E4ACE01BE973973664E27B7
            FA60E16840DC069DDC76F433B3E4FF3B76ECA852A50AAEA8988504A154A952AB
            56ADB2BFF8CFC2A103EA0ED207111640918D1A35C233C5AD20D972B627979332
            787B7B07C89B9A0B348212781A818BBCF7D2A54B64B358AD3B173248F5110E30
            890578D7B367CFCE9C39F3F4E953F72F91BC0317ECDBB76FF2E4C9543D93264D
            C2E18D563B407FC78F1F9F306142AB56AD6AD7AE5DBF7E7D4864D9B265376EDC
            10DF4360F7EEDDB6DB23AAAD5DBBD6D947DD92658C1A350A9AAB5BB76EB366CD
            860D1B868F511D1812FEC1B0478F1EE5BC5DBA74818C40FBF6ED49AC4E9C38A1
            7C8ABC80A39CB7458B16CC471A5D801A8D01035C326015AC71E4C891084F9D3A
            D57C2BB43D3417688422BC0317B80F0624B0E36CF8A13D4991C8DCBB77EF900D
            50A46BFEC2F309B9E45630A333D650E0BC0C4ECE450D026052CBAD47E48CF014
            E76556EE3B5A90E373E10236038DBB59B56A841482950B345CE373E182EBD7AF
            EFDDBBD761E10A4150E901F3851F8D1081E68210C4C7C70598082916958F19B7
            6EDDBA7DFB36391E052D2980216A0333A79D15162C5870F5EAD58F1F3FB66407
            B4F8D840B2C76B46BB7FFFBEFB25EE07002445D9C92A5826FFBE7CF9D2B204DE
            4273381220BFB5BF4E494E4B518A8AEEDEBDFBDCF6CB1FC6011B181FBD91BBD2
            9D5436C00F3EC9B449B011663EC8B31D6679B90E870E39CAE9D0AAFBE918636A
            2E08297C7C5C8021525C45F58F983163264E9C384F9E3C1D3B76A4245366845D
            6EDAB4A94C9932112244F8F2CB2F63C58AD5B06143CCD49C02401079F3E62D55
            AA14336FDAB469B468D14A9428E1CE259C0F03D6823BCD9E3DBB80ED975D98EA
            D4A953F16AB5461C1BFE6ADCB8718A142992274F5EB366CDEDDBB7AB3B5E00BE
            BA62C50A16952041821C39720C1F3E9C2AD7AC22FCB953A74E193264A07B850A
            151C5E1257C0B14F9E3CD9CAF6AB4DF1E2C5AB5CB93234AAD887617163ACCAC3
            C323468C18D9B265C3B72105B3C25D40734108E2A3E482C3870FE3D816FCC7F6
            CBB9F26D458C4F62117581A7A7E737DF7C83C017B65B4DA2448952AB562DF397
            20A64C999232654AE67CF5EAD5BA75EB320E5E772D287E61314880A38E183182
            75B13A59233ED6A3470FD6C85196896367CD9A357CF8F01C0561C2848113172F
            5E2CBE4412018FC48E1D1B2570F42BDB9732A13C7A71545CB7489122912347E6
            10028865CC9871E2C489CEBC77CF9E3DE5CA950B1B36ACED6C7EA74B972E1DEC
            2374C068D3A64D83B3E49E05C66462AD5BB7B6FFB8DE21341784203E562EF0FB
            94D6F66DD98A152BD6A851A352A54AF9F2E593CF9909ECFDFAF593CF78BA74E9
            4223C68D7B10C7E4B356048E1D3B26919382A26FDFBE499224E9D5AB17B90033
            47207FFEFCA1840B88F9DEDEDE047CBC2E77EEDC4463A2377E88F3CB73F2C871
            860C198243D258BF7E7DF440ACE67583060DAE5CB902535CBA74297DFAF474CF
            92250B14C0203827CE265FD78713715DD88111AA55AB8626490D788DB7935ED9
            A6E00F1420FDFBF78F1429121956F5EAD54946E4FE45463E77EE1C02BB76ED22
            01A19153A07CD2102643D60637B9C83514341784203E6E2EA022D8BF7F3F3107
            433C7AF4E8A851A3A2478F8EF111E83026FC9C0C562C15578708C68D1B470E8C
            C55365C8E73A14B4CD9B37CF9429D38C193302C50584CD0F60AC8F1F3FA62260
            09C4EDAD5BB792B9CC9A350B22A0E4E9D0A1036B3C7BF62C8B2508E399478E1C
            410F1441F876CE9C39713F92022A20BA83850B175EBC7871D9DBDF776383C838
            A092F2E5CBD39D1269E7CE9D68B26BD7AE241169D2A471F8252536B76AD5AA24
            29A811E1F3E7CF433ACC0DB6A216837AA64F9FCE16402813264CA072212F8382
            C90EDAB66DEB4E6AA0B92004F17173C1B061C3EED97ECA02603A581ED10FCB26
            783E7DFA146F9707194219ACB074E9D2983B0E0311606A5244F0B64A952A14B7
            DBB66DB3700103920F939F1309972E5DFACAF6204328C0CBCBAB4F9F3E30C8E0
            C1830F1C38B07BF76EDEE2B1CF9F3FA70BEE871BD082987C65ED7D70FDFAF5EE
            DDBBB3A2B469D33E79F284F16FDFBE4D2AC4A248014E9C38C1FC13244840241F
            3B762C8BA20B719EE5E3CFD411847179D063FCF8F1E5EE3A5A9A356B464BC182
            05F7EDDB47A1417D44D60057CA1D442B57AE2487A29222CBB04DC11F30170A28
            CED8B3674FDE92B6AC5AB58AC19900DC01B1A21306271D902F23B159CC963C02
            22DEB163876D0C57D05C1082F874B800DFC6FD0868D825F582783B2900311057
            27FA91BBFAD87D1B94F5E315D00151CBC20567CE9C69D2A449B264C90A152A44
            34A61E26CB25072E53A60C75076970A2448964A5BCF5F4F4947BDA1F3C7880B7
            D0327CF8705A8CD3BC2BC8F029B65951AE5CB9E41A07C98E4C927460F3E6CD68
            1B4F638DF3E7CF1781356BD6C837E149109800E512AE4E70964C073AE8D6AD1B
            819AE40282836BC8F6196DE4C891A40908C80211405D429766C8F39D09FB6231
            8C463A260F14A4D43A7DFA74EFDEBD799D376F5EB99C01204D6A8474E9D2C132
            D2E2029A0B42101F371750AFAE58B18280835760A66DDAB4217D2565EDDCB9B3
            8471C25452DBAFB9478B168D4280886D49FE896694D3D82B8E64E6024C9CD84E
            DFB871E3B66FDF9EDA1BD38477C89071338C1B57214FA6FC260233132221768C
            0CEE27DF54C52B68314EF3AE60B624ED9217C857FDC83BE4E11C44EFE5CB9793
            17C48B178F2951FE485E801E200E04E0411C92BC86D7846EC88EE9C1686449B0
            03CE4906411A0FD9F196D94A5E4025225FA781223997DF244C8068E059F202F2
            08DE421624177022F2D42CE4297832A7431BEA7243BD7AF5503E5DE402876B68
            2E08417CDC5C407E4BD026FFC440C908C86CC3870F8F271F3C7850EE3240B276
            EDDAD822C2F21103C92DD9811CC5DAC8C08972044F5E2B2EC0CD860E1D0A7740
            22389EB7B737C224055404B420402339C8B163C788B10913266470C505782CB5
            3194814F3ABCB5295078FCF8F1942953A8F6A3468D0AE59174F0AF3C3653BE69
            ABAE173025C23273C04BE5915B24E7847DB95E00592C59B284A368464A0C560D
            4DA8EB051450FBF7EF870EC68C1923CF7723B60B3B98417772289450B972E5AB
            57FD7EF115D78519912787A22E983E7D7A8C1831189C69B3FC8B172FB235A42D
            6C0D878C519C43734108E2E3E6028C4CBE72CB6B821B46894D2F5CB890DC5584
            7941CA001D10BB10408CDC9E908E9310D3C81DA88AA9AEC54C1517905193F722
            49CAB068D122B933E7E9D3A70452391163CAE714F88FB89670012D5830AC41F8
            856EDEDF9A198453C8E5379646F0C709C94498A43C4C1D6F84B6D00364D1A347
            0F1C899920CC94CA952BC794F046488D160A254AAABA75EB425E7427E5216922
            1B62ED7025EEDDAA55AB21438640AC7007DD49792C3914808C060C1880633308
            F9853C6558E4D1E4C9932729314A962C192142849C397342072D5AB490AFF4B1
            4DBC3546710ECD0521888F9B0B3267CE8CEDE215D40584BE52A54A1DB7FD50B2
            21FA16E4F624FC58307689E1E2183366CC78F6EC1969330EC3081B376E444CB8
            4046167068CB962D32205E871BD088DBC8E76780D8486142A3E2822007EEC7F6
            50D5E3F0AC91A82B9F9590E39075C368972E5D92AB7D2C0D97A3A8411B4C09D6
            78FEFC39DE3E73E64C32050ED11DCAA03BAFE197B163C7C295701CE4088D7214
            FA836810A03BE9D52347BF92BE67CF1E8A234EC1E9908753E888B7B76CD912B5
            301ABA1526458059311F04187FD6AC59C610CEA1B92004F17173815C3BC40429
            4AC90EF093468D1A49C4061813B68EB7F0EFDCB97349ADA905A89309ECCC9004
            183F2F50A040AD5AB56010E4CD5C005F2086CF103C6540E48984183DC6AD1E6B
            4B63972E5D900F3E2E00D4ED04550A78822D59000508911C5F5DBB762D47495B
            98390BA76A285BB66CDFBE7DD951E6493624F911028B172F26ADC8952B17B943
            83060DE2C58B0781A2138EA225B9EF9025787A7A2250AD5A355644E981AAFD4E
            EF1F8C49FC27E0733A4864DDBA755225516D916D21801BAF59B386A1380544D9
            A143079232AA06E62023B880E68210C4A7C005783BCBC03770006C8EB8249294
            EE54F81C22FE63F7640DD828AE8218792CFE83835105B46FDF9E988FBC990B2A
            55AA844512D0F02EF25E8EE230A4D01C22269F3973462C95984C3CA43158B980
            73FDF1C71F3002A0FA909F5D2E5EBCB87A3405FEC906910250F56CD8B0817406
            166BD6AC991C05288D43D29D1489A3D08A7A2409E3D3CE516408FB2414B27039
            6A0F142EA703E7CF9F4F66FBD50994430AC35146A3B461288E22264F528438D8
            08E9EE029A0B42109F0217D0F8E4C9135E478C181123A6D0C528718F13274E50
            0210943844654B60C4FA897B047C7201CCAE5BB76EA4B8C3DFFE228070014C41
            8ABB6FDFBE112346A44D9B969C79E0C08108609D73E6CCE1A4082C5CB8901283
            2E9B376FC6F1680C262EF8FDF7DF4F9F3E8D9B115DEFDEBD8B1352C3972F5F9E
            3954AF5E1D3F84EF56AC58D1AB572F0A0199D2A449939836B19A8A866913AB59
            48DBB66DC99E501D833469D284EE4CFBE8D1A3A43CEBD7AF275D82164593CB96
            2D832648E9E138DB14FC01C5928CC0A753A74E159F5FBA7429590649997CECEA
            EBEB3B7AF4689217F9190564C81DA01E8878AFE9A7479C41734108E213E1023C
            7FFFFEFDD4B15839E52EED5839919CF84FB69F376F5E52D67CF9F21112715A5A
            F02E8ED6A85103B7C1C36564C505E4D257AE5CA110A858B1221118DFE38C9C97
            528232040106C47928D771482A70C505982F464CB64CCDB26AD52AF914F07DC0
            49C94AE0A6F8F1E3336792738829458A1491224582C858E3EDDBB72952122448
            80036FDDBA75F7EEDD44F50811229025B1B5540767CF9E255782D1BA76ED7AE8
            D0213891104D31CF0C9F3F7FCE6C191642CC9429132C800E1B376E4C919F2143
            06510BF9089C422602D7B0C09B376FC23B9CAE70E1C2F0206C2BAE4EF76DDBB6
            B10B9B366D826570E6E6CD9B4355F3E7CF4F9C3831E4CBD9A582700DCD052188
            4F840B008E87BDE2ABC4A874E9D2E1C90455AA7D32583C078FE5509A34692247
            8E8C6B1D397204CF2F56AC58A14285E4C221505C8023117E7103C6C74F000E43
            4C7EFCF831268E2301BC2573E6CC941844453317301F5E73169CD6FE33B9C002
            EF8280B266CDCAAC52A54A05A3A54C9912DFA340C01539DDD3A74F59354B664A
            056DC0ED89EA1D3B76240540E0D6AD5B2C07FA6315AC9709933D417654EF1C85
            4D28F8E5CA2B8D78380905BAAA5BB7AEB82EFB5EA44811066CD1A205990569BF
            DCE84D1761588803EA2153407BC8B335302CF3812FC805501123F32FD9045983
            6D4DAEA0B92004F1E97001A673EAD4290C91766C1193C54F28ECDBB56B27A109
            77923A992C1A1FF0F6F6E635C502A3C908162EA08544975C236CD8B0D41A172E
            5CE0D4C78E1D6369F815FE808B420DF2992243DDBF7F9F3904EDBD46E0D1A347
            13274EE48C2C8161F179022F2909C4C451B274C26FB56AD5F070660EC8209A35
            6BC62EC0230850B72F5AB408E622C1A13B9E99274F1E34C03C390AC1316DC23E
            DE2E2A8A152B160BDCB16307871060DFA9B9E8850C29060B24B9404B5000A321
            0FC3524D9020C8F73B6064E626E485001C943D7B760A0AB54DAEA1B92004F1F1
            7101364AACEB64C3CE9D3BCDF7FCF39A16398445624FF803DE4B054B20851148
            8C89872F6DBF50EEE3E3831855AE8ADED83147699C306182DC26441824D5A765
            DCB871B81C89069E49228D0019073EB67DFB764A718C1E87A15C6758E6307CF8
            70BA6CD9B2450AF8F704EBC5913863D3A64DEBD7AF4FB24D2263FEB48F59C159
            5298C00223468C2095907B22001A601AE40EAD5AB5A27B870E1D962F5F2E4420
            40004FA61068D0A04193264D58172C09EBC9515EB0769CB37DFBF6F2E909E482
            40CF9E3D391D53421E961422103038CA8725EBD4A9C3E95029B375D3B1351784
            203E3E2E780760D08426D6B9CFF4B3F658DBD5AB573153B970182010431E5AC1
            D0F13DE1206A0D320BA21FB1DAEC0F410E1C83A9425B78BED1640247698722A1
            33C502662000BBD11D4F76E8634C1E3F44C6A20D392FB5C3C89123559A4323F6
            70FBF66DE41D8E067FA15EAA0C66E550C019341784203E0B2E00C4524A68B25C
            E37DE08159130FA917C8A5F1FC65CB969159A0388AE168D1A291421B729F16A0
            065227F2FC75EBD6515819ADC106CD052188CF850BF06422B9C398E926304DE2
            6ACE9C39A103A993A9B179FDB5ED173B172E5C68C87D5AF8EDB7DF4A962C4905
            A192826085E68210C4E7C20541021269AA836CD9B2458E1C191600E1C2854B93
            26CD902143DCD7CFC7051CF2FE077C12ACE6821084E682C001AF78F6ECD9E9D3
            A7D7AE5DBB68D1A22D5BB65CB97225B055F1C705F93CE2C340734108427341A0
            818D5245533CBF7CF912B57CB098F93940734108427381462882E6821084E602
            8D5004CD05218860E182EAD5AB67C890A19B864620D1A2458B82050B468F1EBD
            5DBB765DBB76355A353E082A55AA943265CAE1C3871B9EEC0481E3826AD5AA25
            4C98B0A48686C6C7836CD9B2C58B176FD8B06186273B41E0B88002C1D3D3739F
            8686C6C783C18307E7CE9D3B88F3027DBD4043E3A383BE76A8A1A1E107CD051A
            1A1A7ED05CA0A1A1E107CD051A1A1A7ED05CA0E1167EFEF9E77DFBF64D9E3CB9
            5BB76E4D9A34A95BB76EBD7AF55AB56AD5AF5FBFC58B175FBC7831C04798FDFE
            FBEF67CF9E5DB870E1800103E8D8A04183DAB56B3314034E9932E5C081039CC2
            107582376FDEDCBA756BF5EAD5C3860D6BD3A64DC3860DB1B4C68D1B77EAD469
            ECD8B1DBB66D93E759BBC03FFFFCF3EAD5AB5DBB76B190AE5DBB366BD68C8530
            93D6AD5BF7EDDB77C18205C78F1F97073ABD0FFEB43D6672E9D2A583060D6264
            C6AF53A70EF3ECD0A1C3B871E398E7C3870F5D7FCB8379DEBE7D7BE3C68DA346
            8D6ADFBE7DA3468DD015FFB26AD68E06AE5CB912E437BF6B2ED070058CF2F5EB
            D7CB972F6FDAB469E1C285D3A64D1B3F7EFC68D1A2458E1C394A94283163C64C
            9C3871D6AC59CB9429D3BF7FFF63C78E591E852260101F1F1F5803B12C59B224
            4992848E748F64FB9D4B0664580F0F0F3C73C58A15BFD87E15D20246B870E1C2
            9831632A57AE9C3367CEE4C993C78A152B6AD4A83242DCB87153A54A953F7F7E
            5C6EE6CC99CEEE59A47DEDDAB57854C182056521F2E04666C268891225CA9C39
            B3A7A767C78E1D8F1E3DEABEC15B70FAF469C8AE5CB972D9B2654B9A34A9799E
            71E2C4499D3A75BE7CF920A0458B16397B1C267C3763C68C5AB56AE5C9932765
            CA94B163C76684881123F22FA3B1F61C3972A087912347BECFF338ECA1B940C3
            29F028A23D2114E7C19ABF708E2FBFFC125F62DF097AEAF9680ADBB76F278948
            9830A13CB2D119F049FC1913373F824D8073E2A238D257B69F87738670E1C2C1
            357DFAF421F05AC2FBBD7BF766CF9ECD429031A41D8185E0B455AA54F1F2F27A
            69F7D3B2AE41A0669EF5EBD767A55FDB7ED7CF19C2870F9F2B572E62BE3C30D6
            8C6BD7AEC1AAB092EB797EF3CD372952A4204D909FF90912682ED0700A8860C7
            8E1D8450D796AD005FB0EF961FB6BF7AF52A210E0733845C02B220C2E3241414
            467FDB8F53F5ECD993306E08B90423103C478F1E6D7ED82475C19A356B703F43
            28203048CD9A354973DCAF17E4B19410816BD25480743265CA3475EA54B367A1
            F0E1C387930BC8936303040951BB76ED02ACADDC84E6020DC72029C0B8AB55AB
            260F507613782C7E6B7E1A1A953C458171D80D10F93364C870F8F061E5875428
            64CBC661378027734628493D81925CBA79F3E66E3A9800979E3469D2D3A74F65
            8400411241192F4FA336860808ACB47CF9F2D414C610FFFE7BE2C489DCB973BB
            C9BC8073411CEA273FDF139A0B341C83541F87A49CB6376ED2574ADF18316218
            EFFD037B3A79F2A40C82D9F09694D838F616B82BD52F61CDA1DD9344B46FDF5E
            3C997FC9841DA615343282FDE08221A6DF745BB66C19FC621C30218CEDB76A99
            09F3319A4CC086C9F96DEB08183FFDF413A9847D09C3C8D00AEAE25C46930969
            D2A49930618231C4BFFF0E1A34487E6EC30CF41F366C584836428408F6F364F2
            8D1A357AFFEB9D40738186633C79F264CA942986C599803966CC98B14B972EF5
            EAD573E842E9D2A523F56584BFFFFEDBD7D73769D2A4C60113A098EAD5AB77EB
            D62D71E2C4F6FE432692356B5631B9EBD7AF972E5DDA38E01F356AD460846CD9
            B2392494E2C58B9F3F7F9E1148BCE10587171A986AC3860D2B57AE1C33664CA3
            C9048A2342BD9F2E02027443EA81C3DBF366F4E8D17130A88DD1EC8F42139415
            F2990283142B56CC9EDA2082CC9933F7E9D3A760C182E41D46EB5BB02EAA2AD6
            F8FEA981E6020DC7B875EB16B5A8617126448912857604AE5EBD4A50B5B76F5C
            A243870E08BC79F386806C1FE840EAD4A9E547139A366DEAD00F7121F9BD895D
            BB76E5CB97CF6835011F3873E60CF1102771788AD8B1631F39724416426661B4
            FA0771F8EEDDBB7BF6EC2953A68CD164027178FAF4E9EE3CE2EDF7DF7F679E46
            37FF285CB8308720567CCC211F797A7ACA0F76E062C99225B3D76782040966CE
            9CC934D6AF5F4F4560B49A800283E42346CD051A8E71F1E2C50A152A18E66602
            A5B87CAD95AC386FDEBCF6F64DCCAF53A70E02A4F7389B7D2941B69C3F7F7E89
            63585EA244898C0326C038B76FDFC6D5E7CF9F9F295326A3F52DC847E875F3E6
            4D4620077198FFE354FBF6EDC385C8F3C9DE8D56FF98376F1E6E7CEAD429D26C
            A3C90446183A74E8AB57AF388B6BFCF2CB2F0C6574F30F7478EDDA350659B162
            85C3FC05559C3B774E6E4970486AF8FFFEFDFB5117F3B45705A056DABC79B3F9
            6AEBBB4173818663609A456D3F216D01B16BC4881108DCB973A750A142F65C40
            4E5BB1624504B0CE4E9D3A51D01A07DE0201A2A5ED24FF8E1933C6E19545B8E0
            C68D1B70C1A4499328AA8DD6B7800B92274F4EC0678459B36691421B07FC030F
            79FDFAB5FCE8AED1E41F8B162D227921BF68D6AC99D1E41F241DF25B75AE418E
            43D96FF4F10F0A10480D2EC0D31C7241EEDCB97D7C7C98C681030748A98C5613
            280110800BA00C875C80AE962C59E2BE873A83E6020DC7387DFA34666A989B09
            662EC0A5EDB9808AB75AB56A08C005CD9B37C7528D036F0117787878D84E1230
            178C1C3932458A1446EB5BB8C30544F51D3B76106FBDBCBC4A952A65B4FA4780
            5CD0B56B57FB9B1DEC71EFDE3D7225A38F7F04C805D9B367DFBD7B379CB575EB
            56EA1AA3D504B8E0F0E1C370C1F9F3E71D7201891845C4FBFF928DE682D00236
            9BBAF1C58B17417E6FE9BBE1E4C99359B36635CCCD04C505CE6A044A7D280081
            DF7EFBAD41830658AA71E02D02C50564E99CD1687D0B331738AB1138EFC18307
            D1EA962D5B3071A3D53F02E4828E1D3BCA595C035A1C306080D1C73F02E40294
            BC6DDB36EAA9F5EBD7C78A15CB6835C11D2E207B72A796718D8F800B082F3FFF
            FCF3B367CFD836A3E9530476BF6CD9B2B973E712648CA610C58913271CC65BC5
            05D7AF5FC78DED3F4AA092EFDBB72F027041BD7AF5DE930B860C1962FF498499
            0B200B8723E0422C01012A85E2C58B1BADFE11201774E8D041AE4AB8065CD0BF
            7F7FA38F7F04C80559B26481ADE082B56BD7BE331750A17C645C402274FCF8F1
            29CE41D9E3EBEB2BC22C9E9215F7204BECDDBB77BF7EFD20BF9D3B779AEB37EA
            A8F9F3E71B9D1DE1F2E5CB1266E512112DD3A74FDFB06183E53E590CE2D2A54B
            58C6AA55ABD839772E1D0788A3478F5AE6460423A15DB1620587CC3F0FCD64F0
            AB3973E69072E7CA956BF0E0C1C78E1D7BFFAD7D4FB8E602F4B967CF1EBCDAFE
            BA37F6CAC219E10370015A6ADAB4A9C35BFD2A54A8C09E720ACD056EE2837201
            39307B1FC139B265CB86AF22897BB0FED6AD5BA74E9D1AD361C1D85CB468D13C
            3D3DF128542F030E1C38104D199D1D61E5CA95582D92EC07C2B4448D1A357FFE
            FCF281960C0298186681CDE5C89163FBF6ED419280A053CBDC3059363B5DBA74
            B56BD7868FE44B3898FBB56BD77AF6EC9920410289B13163C6AC5FBFBEB7B777
            C8E641AEB980E4C56156CC3695285142EEA5FB005C00AB162D5AD49E8F00FA7F
            F8F021A7D05CE0263E281730DDC9932763F4207EFCF8ECB7EC22D62F8D980849
            32911C462F57AE1C464339CA51EC8FCC933523CF0B0C486EAEC028B367CF2E7D
            E57A35F2BC9016B06EDD3AE1025CAB6CD9B2083042B870E14828CCA901511A8A
            E168ECD8B1E962C91ADE0D847726C0F6B34C994CDCB871A9A5A5C066327BF7EE
            450C46208A860F1F1EB28861831047E7CE9D29C865A810C1850B17B0E38C7628
            59B2E48C19330E1D3AE4F0CA62C488119B376F8E6533823B5C4036C46BCCDD02
            A2020E4682C6B92017E3DC6F0149952A550A2E40C9F65713D862F4B96FDF3ED9
            7ACD056EE28372010B3E70E0005A0344424E2C3766D6A953471AA9025836417B
            F8F0E1B40BFDB34F13274E1C366C18EC802FD148243972E40894B16BD7AED1A3
            47D351BE0F4B1788003793D100DB8C18E1855D8744B012BAE38D8C6FBED53CF8
            B8800993CB301366D8A54B97060D1A244E9C189B60FFC68E1D8B215213B17CDC
            236FDEBC152B5664F2F9F2E54B983061A54A95589D315648E0C58B17070F1EDC
            6687FDFBF7D33E6AD428C9622C489F3E3D9A9411DCE18273E7CEAD5EBD7A811D
            962E5D8A71E300244D78B571EEB7207783DC29FA0A162C687FF192164A2D953C
            6A2E70131F940BCC202DC7215906FE892E8C56DB6502324C2880451224311424
            E5D0952B5788969820C1A771E3C6AA1DD04B9C194F53B6A8F0E4C9134968A11E
            B20CCE58AC58314A74E3707072418A1429468E1C6934D93074E85026C9B9A006
            580F75152E5C98598D1F3FBE6DDBB654BFCC64D0A041D01F368A3C4B633EE85F
            522119240441ACDEBA75ABB3DB7B6AD6AC79F6ED97EA03E402381A1F404C56C7
            6BF73F43A16FA74E9D1C7E204F56455081CB445273819B08755CF0EBAFBFAE59
            B30687A71DC7408FCA01B04242259187A3444E3C5CDA816B2E20A195EFDBA549
            9386DD458C1C924665791F920BD87271A476EDDA6143C4D842850A913E604CAD
            5BB766C9982696C11CE41226452F344100C4CD54AC0B4150BEA143874981946F
            EACAAB6B2E40F9AC9D74A96AD5AAD41D75EBD68525D95F7A49771780084E9C38
            816E311263D0B7C0DF701E48564D4373819B08755C805A870C19C20AB136B463
            0EFEE0E2C58B780B4789F004766C42DA5D730105390C122F5EBC162D5A6CDCB8
            11314E8A83C9B525F021B980D5314926D0B76F5F56471224DF6F83DDC86C511D
            85BA216AC34F3FFD4436142E5C389640C26CB48610F09CB973E73AFCBA116021
            58AD21EA9C0B70094668DEBC39A53EA91F591ED41C2952249223ECBE49932624
            80C6104E80DD57AF5EDDFE8B3A8041C801CD3BA8B9C04D843A2EC0DC2574C305
            274F9E64AB8C0336E01892ED739413A1416977C105241ABD7BF7C6DA3267CE4C
            157AF5EA555C94EE55AA5451D96CF07101B65EAE5CB9D1A3478F18318218D8B2
            654B72130263DAB46931446217D9CDB469D3E0028071A74C9992053231B5342C
            A97DFBF66889434C5E1A430A3E3E3EB56AD572F84483B871E352D7982DD21917
            B0163420C59AD1F4162881711A366C4886CF9E1A03F9071B2A6E639F9B30B11C
            39725CBE7CD9DC5773819B08755C40546CDCB8312BC42CD80695E9091E3C7830
            6EDC388E620738AD5ABF0B2E20F062BE9C8575E24BF81E21055B240E7B797949
            66117C5C807562F4B83109022934AF5957FCF8F1E105716C5265F6986048A6C3
            24F917492A1A36465687E9E381F3E6CD5BBD7AB5AA814304CF9E3D23A9615128
            CA02668EDB5B9EB7E58C0B5C839D4D9E3CF9CA952B1D5E3B60BF70F512254AA0
            46A38309EC3E4665891F9A0BDC44A8E302CA51327956884DE02DAA0A10DCBF7F
            7FD4A8517274D3A64DEA1E6C175CB078F1E29C397346891285FD46E374993973
            26E7C598886372E752F07101DB1FCDF6D04BF9C404A0EEB163C74279CA64F199
            53A74E0D1C38305DBA74224616037F1D387040045002C2F88639DC7D60706A8C
            B570E1C2F6D11830F3E5CB975BCCF1DDB800B059C403F944D00282013597C3EA
            802AA352A54AF6A993E6023711EAB8E0D6AD5B14D2AC109B231EAA5459C0C6F4
            EAD54B8E1E3D7A5439AD332E60A77BF4E84134C621CB9429337DFAF4C9932777
            EAD42942840808D7AD5B1727442CF8B880DDAD58B1222BC5B8A3478FCE6299C6
            FEFDFBF11343CE06D29FA74F9FA2B7AC59B366CC9891D926499264FCF8F1C6E1
            50006A781CDBFE4B8700FE42C9E6CF6504EFCC050C98274F1E8B8A00E64E0070
            780714C0A9E6CF9F6F4F979A0BDC44A8E30202F514DBE374F0F6B973E79A9F60
            097C7D7DC9F0E98233A362554138E30298857C1B79B200822D3E06D43D4EE9D3
            A7DFB061038304F7B543423AF1AA76EDDAD4264CA373E7CE727B2CD3C6E2EFDD
            BB27B7D3CA0D08E4E1B973E7C61F786B2991420A582AAB70F8200D80DF1E3C78
            50A5390A2EB800FD533DB189B21116B0F5D4536C8AD9B1794DB9D7A85123875D
            A0FB366DDAA88BC166682E7013A18E0BC8E1D7AF5F8FCFD05EA54A1572695526
            605BD4CC044C749A214306F3E35F9D7101FAC5522102FC9F2A5D01A53308E638
            6EDC388AF0E0E602DEB2D9EC286F392F860ECDB1794C9BEA77F4E8D183060D82
            E648589A366DEAEDED0DDFE10FEDDAB5B377B010C18913270A1428606FCAEC11
            8A25DB72F88C50175C000B142952A4468D1AF1E2C573E8210C4B3D68A642B69B
            2081CF1B12263042A952A5B66FDF6E88FA87E6023711EAB880359F3D7B56D62C
            378D909DFEF2CB2F4F9E3C21B5AE5FBF3EED184AD7AE5DCD8B77C80534F6EEDD
            3B61C28418109939A58742AB56AD44EFC419A28DE20224172E5C8815723A0572
            937760070B1700B2836EDDBA8935E3ED870E1D628624BD1010D90AB382081A36
            6CB872E5CAD2A54BA3195AA4179E76E3C68D9F7EFA2944A801976ED1A2854327
            844CA9809C7DC3DF1917B0E3D837DB0ACB53A6B176E380096CB17C1F4186E2C5
            8E1D3B4A962C691CF60FC2039C8E3B89B0059A0BDC44A8E302409940A814C541
            07B80D923D7BF6CC972F1FC20479B473F1E245F37566875C8076CA972FCF3805
            0B16649DD228C04C198D43B972E55AB3668DE2021278921192F3EE26108ED4A7
            8FEEC39E0B9824FE9C3D7B7696C0C269671A6CB3A7A72759002E410A030B405B
            F017BB3E67CE1C7A51413014F979B162C5282564A80F069C70D7AE5D68D5CFE8
            FC8339C78D1B9794C119513AE302D44E11843690A12062B1C601132C5CF0E8D1
            230C405D7F350365B66EDDDAC52D099A0BDC4468E402964D64AE50A182540A68
            9017D801BBCECA93264D2A8F8234A46D70C8057BF6ECC99123078D6413E8511A
            15C8C0E3C48983F38F183182E02FDD01A7E35C66787878503818DDDC863D1700
            E689AE8963AC0B9EDABB772FA9EFECD9B3F12BA139CE0E88B754BF72350E4BC2
            2239943A756AFB8BE4C10D4A3638C8E16FF8405EA43938BC216A07675CC06EA2
            529109F07B8A22B664C912D94A7BC0AD18B18B0B2B9A0BDC4468E40240CC2706
            F6E8D12359B2644A83D8072174F9F2E5F61FB33BE402B9C30FCBA31AB7FF808A
            543C63C68C9C9D32C1C7C74771813DF2E7CF8F9A8C6E6EC32117005203725D28
            868D1F3060000E83AD30555C8BC9703A180A1324DE4A45C0D190BAD788B95184
            CBC71FA20A0536052386AD5C3861507101792291DF211F4191F22C6319CD2134
            17B88910E302B6191D1D387060DFBE7D0E7F048AC5E33678294E3B63C68CB973
            E7B2A9E7CE9DB37CB2A0402ECD50C8ABE702614CBCF5F6F6E6448C268D0A14E1
            C78F1FA7CB850B17A811A4BB439C3C7992C4C1E8E636E032CE7EE4C811566134
            D9C0C2A93898156B175FC21C393B594CD9B265B1DAA54B97D257911756020530
            0D8672118483030F1E3CA85DBB36498A617426244A9408FE329769F6082A2EC0
            460B1428601CF08F42850A51C2B89E86E6023711625CE026500169AA3CE30C7D
            19AD9F22A8BA295B1A3468605FCE8408709263C78EC58E1DDB3E29C0994B9428
            71F9F26543D40982840B40E7CE9D1D5EB9641C7CC0E1E78866682E7013A19D0B
            3E1F9020ECD8B163E3C68DEF908304077EF9E5177231C3DCFC2375EAD4E3C68D
            93A0ED0241C2056455152A54F88FA39B1D8B162D4A66E73A29009A0BDC84E682
            50040C82D2C04505FE21810FB46DDBD630371370CB3265CA58BE4CE9107041C3
            860DDF990B7021B8C0CBCBCBE1EF2681F1E3C7CB2DE4AEB175EB564CDCE8E31F
            017241A74E9DDCF9ECE6EEDDBB03070E34FAF847805CA09E83BC61C38677E682
            C993276B2ED0082E60790E7FC8102F6DD3A60D2E64C83907BCD6B2654BFBDB96
            DDE402927F6871D6AC59F6CF4DA16C891831221EE2CE7D1FEFF3FB08DDBA7593
            0B93ACE5DAB56B7BEC4019C53CEFDFBF8F0B197DFC23402EC89E3D3BE3B090ED
            DBB7539119AD26B8C30568497D37E79DA1B940C3314E9D3A952B572EC3DC4C48
            9932E5E8D1A30D2197C07FBA76ED1A3D7A74A3E75B840913A660C18218373223
            478EB4BF7901578F1123867C6D19811476BF95F2D5575FA54D9B161F9313B986
            B7B777A54A958C9EFE317FFE7C02F2E9D3A7E5ABB1F6E8D7AF9F946CF7EEDD1B
            3B766C1E3B346FDE7CFFFEFD8F1E3D9A346992D1C73F2A56AC48B1F3F2E5CB55
            AB5639E482DCB9731F3972044A3A78F060DCB8718D561350388750059C953163
            46A3D504D876F9F2E5EF7F5D597381866310F152A74E6D989B09446992733CC4
            059EDB9EF88E9B0D1F3EDCFEB21F9E2C3FA38C7DF7ECD9D3FE470411C0FFC5E4
            FAF6ED9BC8EE071771AAFCF9F3E31BC6F99C8009708A13274ED4AE5DDBE8E91F
            13274EFCE5975F0E1D3A54A3460DA3C904AA211C43E2EDC58B17ED0781B36894
            CFB6162E5C68B4FA47C992254F9E3C89C0F4E9D31D7201B478E9D2A53FFFFC93
            53C48F1FDF68352169D2A4EBD6AD63217BF7EE85018D5613A2458B46EEC362FD
            B6ED3DA0B940C3318E1E3D2A4F9DB4204E9C3865CB96C5875D8094553E2B5DBD
            7AB5C3DF0B2517D865FBF5E13265CAD87F01397CF8F064F512E8182D81DD1313
            F0522A8BB66DDBCAE99C0127C4437EFAE9A7768E7E301A346DDA94652E5DBA94
            44DD683281783B7BF66CD1064351D71807DE8262A777EFDE9C820C7FDFBE7DF6
            1FB880CC9933A38D2B57AE346CD8108E335ADF82855088092D9246C180F68340
            A65DBA74815E4991EC550162C58A75F3E6CD002FE50608CD051A8EE18C0B3056
            E29BED864CA7F0F4F4C434A103629DFD33CB018350E5421308DB5B3F6545E7CE
            9DE55A002EEDD001F0A26FBEF9464EE70C38398506E3909E388CC9C8E069C455
            46339A4CA0385FBB76AD6803ABB62F554891E45761C0850B1788EAF66B6164C8
            8EE4DFE16D1A51A24469D2A409442083A0B708B66FD39BC198900E4A70F8B54E
            D6952E5D3A772EDF0408CD051A8EE18C0BDC41912245244C61A3C43D7BFB0698
            B5430F041405EA9153CEB8C01D2C5EBC582E3A50AB3BFC6D48C034EC1D4C4024
            97C75B3002598CFD2AAA56AD4A25EFA72CDB4709F5EBD7B78FFCC0C54AA9FFC9
            1A6404E02CF2036723C4881183AC27483E7BD25CA0E11841C20560C68C19811A
            87280A7D90124BB47C7F2E60100A720A0A673EEF10E42673E6CC91EE542B2B57
            AEB474E72D0582BAD3E9D75F7FDDBC7973A44891DC3F0B9942B56AD5CCDFAA3A
            7FFE7CDEBC791DA6300E01419014787B7BABCCE27DA0B940C331828A0B0898A4
            C10E3F39B707EE9133674EF337C182840B70661CB570E1C2C68180C0345AB66C
            79EEDC3989B78F1F3FB6FF98808A60AEED37BE6CD3F4BB55ECD1A347308EFDFD
            140E0165E4CB978F199AAFF9F19A13A54D9BD64D42499C3871FFFEFD5FFA7F56
            F83B43738186630415178043870E91C7A64A95CA75C4A36E2F59B22415B87C0C
            2108122E00F8F38A152BCA962DEB3A741369391D4470F8F06165F3376EDC2005
            3024DEA278F1E2140E222060C967CF9EEDD8B163CA9429C338FA7AB5027CE1E9
            E90995DCBF7FDFE8FC163FFDF4D3D8B163A10987CF745408172E1C55CF800103
            E401594102CD051A8E81510E1F3EBCDB3B61FAF4E9E60A960CD6D7D777F2E4C9
            54E01E1E1EE9D3A74F9428519C387162C68C4974857172E5CA55A95225DC7EEB
            D6ADCA7B05B40C1932C41837903871E2C4EFA6EFA74231782F5E5DB162C5DCB9
            73E3B1B83D090B3321C0926C33374C77CC9831172F5E3487EB3367CED8DF80D0
            A95327870F4DB87CF9F2D4A9531B356A54AC58B18C193332B2AC345EBC78C992
            2523EB295FBE7CF7EEDD59D71327379B4310AB56ADEAD0A103B552B66CD99226
            4D1A376EDC183162F06F9224493267CE5CA24409D86AE1C2859094D12728A0B9
            40E303E1F5EBD7D7AE5DDBB87123AE827BE393B86BBF7EFD468D1AB564C912D2
            10F9E1E96005AC043B10F3972E5D8ACF13577BF4E8C14C980F54C5DC08B3F6D7
            E1C86B48280C0EB0217CF8F073E6CC7176DB2F23B052BC1D4E9495E2FCAC74C4
            8811A42A8CC64A5D57F81C7DF8F0E1BE7DFBC89260E4BE7DFB76EDDA957F870D
            1B366BD6AC9D3B77DEB1FDF0AC211D44D05CA0A11100BCBCBC72F87F920AA9CD
            EEDDBB8DC39F0A341768680480B56BD75A1EC4D6A0418373E7CE19873F15682E
            D0D0700552712A73F3B5C02FBFFC9232C79DAF487E5CD05CA0A1E10A2F5EBC90
            9FED53881225CA810307CC1F947C1AD05CA0A1E10A3FFDF493FC549742891225
            2E5EBC681CFE84A0B94043C315AE5EBDDAAF5FBF54268C1D3BF6D1A347C6E14F
            089A0B34345CE1E5CB97E7CE9DDB61C2CD9B37E57B539F1882850B6AD5AA55A4
            4891ED1A1A1A1F0F487F72E6CC19945C70F8F0E13A75EAA44E9DBA8A8686C6C7
            8342850AA54D9B960AC8F06427080417DCB87163E6CC99ED3534343E3674EDDA
            D5CBCBCBF064270804176868687CC2D05CA0A1A1E107CD051A1A1A7ED05CA0A1
            A1E107CD051A1A1A7E085E2EF0F5F5EDD0A143D9B26567CF9E7DE7CE9D71E3C6
            152E5CD8C3C363D7AE5DEAD76056AE5C59BE7C79DA051CEDDBB7EF83070FE6CE
            9D5BAD5A355A468D1A257780FC6D7BDA945918B46BD7EEF0E1C3CF9E3D5BBE7C
            B9B42C5CB8501E26410BA7F6F4F4ECDDBBB7ED54FFC3E6CD9B1B356A24F216B4
            6FDF7EC3860D83070FE675DDBA759134FAD8EE60E7742226A855ABD68E1D3B8C
            C3B68755F4ECD993F6860D1B2E58B060D1A245BC2E56ACD892254BE4491E376F
            DE1C306080ADAB036CDFBE1D999D3B77CA7D1CF5EBD7FFE38F3FAA57AF8E4E68
            F1F1F1B19DC40F686FF7EEDDD20BFDC84F006DDAB4E9FBEFBFA7A575EBD66FDE
            BC41695DBA7461F97457D790E9C859A4A33D7AF5EA258F1EA2EFE4C993CB9429
            43E3B265CB983C4A6ED3A68D8859D0B469537910D0EDDBB7D93B693C7EFC3893
            A723D393167BB0F508FCFEFBEF6BD7AEE56DA952A5860F1F2E4FFEE5D077DF7D
            276216B0A85BB76E31CF1F7EF881B76806F5D2EBFCF9F3DF7EFB2D2D6CF7E5CB
            97D7AC5953B3664DDE76EAD4C96FE51A012178B9E0C08103C58B178F1E3D3A26
            72E5CA156CF40BDBB7C1F052F10D0041989F99C7512880CDEEDFBFBFFCF04EB3
            66CDE421367FD97E90D3F2803D7C66DBB66D8F1F3F1E3D7AB4B40C1D3A547E9D
            9D96183162448810A172E5CAB653FD0F108DB3E7E7E2BA3367CEC4A9789D3E7D
            FA3973E6187D6CBFE6CEE9444C9022458AC58B171B876D1FBB56AC5891F62C59
            B2C026C3860DE3F537DF7C83D5CACFCF63AFD8AEADAB03C01DC8E07B2953A6FC
            EAABAF3265CAF4DB6FBF254992E43FFFF90F2D5BB66CB19DC40F686FC58A15D2
            AB79F3E6D7AE5DA311C24D972E1D2D850A15C20F511ADE153E7C78BA2F5DBA54
            75E42CD2D11E952A55121AA52F2E142D5A341A7166168E92F12B11B32057AE5C
            6C28BD2E5EBCC8DE4923ECC0E45935D393167BB0F508404F53A74EE56D942851
            E05079EE108752A54A256216B0A80B172E304F7924115B3062C4087AC156E1C2
            85A385ED3E71E2C4A44993E4516E254A94F05BB94640D05C6085E602C434177C
            86D05C6085E602C434177C86D05C6085E602C434177C86D05C6085E602C43417
            7C86D05C6085E602C434177C86D05C6085E602C434177C86D05C6085E602C434
            177C86D05C6085E602C434177C86D05C6085E602C434177C86D05C6085E602C4
            34177C86D05C6085E602C434177C86D05C6085E602C434177C86D05C6085E602
            C434177C86D05C6085E602C434177C86D05C6085E602C434177C86D05C6085E6
            02C43417BC1BFEF9E79FBF6D30DE7F54D05C6085E602C43417BC03208267CF9E
            DDBC79F3FEFDFBB28A8F0B9A0BACD05C80D867CE052C16032850A040BF7EFD8C
            261B4E9F3EDDA041836CD9B20D1C38F0C18307D20805A02E6CA664C992A953A7
            C66839AF8787077A133B54E8D5AB17BAA2BB207BF6ECBCC5DE1A356AB47EFD7A
            B11033FEFCF34FCE8807215CB76EDD83070F1A0782079A0BACD05C80D867CE05
            E8365FBE7CD82D5E6A34D970E8D0219CFCEBAFBFC6266FDFBE4D0BE500CA69DB
            B66D9A3469B034AC9733F22F3349962C195684D94316D2BD5EBD7AC8D05D01DB
            409213B171B366CDC28C4552806F62C33163C64412B3C714E56190C104CD0556
            682E40EC33E70296933B77EEC891239305184D36FCF8E38F050B1664CC264D9A
            0817FCF2CB2F3366CC88172F1EFBC5FC49256AD4A8F1EDB7DF264C9810B5C78E
            1D9BE5E36242071855983061D02AB6C7AC700DE4D9595C1DB3675DFBF7EFB79D
            C700832313366C58CEC868F2D057E35830407381159A0B10D35CE00E176090E7
            CE9D63F9182DD1BB73E7CE1B376E641AAC7DC89021D8009B982851A29D3B77CA
            A2840B3266CC4889B17BF76EDAB76EDDCA76330233C7B0172E5CA892085280B3
            67CF322CDB071D30140BA78B1C0D0E682EB0427301629A0BDCE10294B972E54A
            768A16D2015F5F5F2A7C91C480070C1880E7A3FF76EDDA11E169142E201758B3
            668D88019C1F01F1F92953A6A8CF209E3F7F8E95323823E4CD9B17B3C71D10C0
            0B4420C8A1B9C00ACD0588692E102EA0C27F6D02393C9ECC98C20558698F1E3D
            788BD1E2DE2F5FBE34FADB6C75CF9E3DEC1ABB8F273F7CF89046875C80F39350
            60D504FFE9D3A72B5767FC3A75EAB0779801B684B9524AB46FDFFED1A3472210
            E4D05C6085E602C43417C005A80E63586702FB281A162EA04060BD582C92D7AF
            5F57E9BD800C9F99A0FCF8F1E3DFB9738716E182ECD9B34F9830014B40E0E4C9
            93DEDEDEEC1723B0DED5AB574B5F4C9D4349932665F0962D5BE247A54B97C624
            CA9429B377EF5E910972682EB0427301629A0BE002BF93398170C1A953A73C3D
            3D516FA24489E4A7ABCCB87CF972D3A64D11269EB341C47FE102CA817CF9F255
            AD5AB542850A1E1E1ECC1F81881123A228AA0CE9ABF6177758B26409F502BEC3
            76A449938675594827A8A0B9C00ACD0588692E102EC04B51A002693CCAA45DB8
            E0D8B16324FCC8B053F7EFDF373ABF05C6D0A14307840141FECD9B37C2055838
            83C8380288A07CF9F23FFEF8A3BADCC086B66DDB16490EC12958FEAC59B3380B
            13C01D50AC88052D341758A1B90031CD0570018E473E3FC404D6C27630A670C1
            993367CA952B877A13244820558019972E5D6AD4A811C218805410C205912347
            4E962C19F93FED1C854AD8380CD87CE7326BE1D4089377C8058223478E5020C8
            728E1E3D2A62410BCD0556682E404C73015C102952A4DAB56B939F2BECD8B123
            6FDEBC8C295C80494B1580D3B20596D49D849F68CF3EB28352410817A02E823C
            BAC2CC5832068F297A7B7BCBC2017A5BB972256B61E3282872E4C891274F9ECC
            9933E3479C8B2D465D2219B4D05C6085E602C43417C005017EA6482E8095F216
            A35DB870E1B367CF0C39DBEDC31007F902BBCF76D87F8E8031932C5008B03B24
            206410E7CE9D93BEB4F7ECD993610166C008F4E25F24696156684955134108CD
            0556682E404C73813B5CF0F2E5CBD5AB57B353729663C78EA97B8429F23B77EE
            4CFE8FF975EFDE5D68C2CC05BC65CE64FBCC1FB178F1E26169721BC2FEFDFB29
            0D18364E9C38DF9A903F7F7EC885DDC408D180DF69821481E382176F7EED7672
            7CCA0D15D41F6F69340EDB417301AF3517488B3D3E762EC02009E6540D182D93
            4718DDEEDDBB77DDBA75684F363169D2A4070F1E944559B800BC7AF56AD0A041
            51A346654C94CFF8B00983C48D1B97C63A75EAECDCB9134D0A366CD8F0DD77DF
            B19B69D3A6C5806584204420B8C0C202963F43C83F3417F05A7381B4D8E363E7
            025A08F8A83D7EFCF8EC17F2A8A25CB972288A162C3976ECD86407B8985C4AB0
            E7024CFAEAD5ABF9F2E563E618F6D8B163CF9C39D3AF5F3FB68C7DC712CC1714
            A189091326902CE050D414E643410277B9C03511F067C8F987E6025E6B2E9016
            7B7C025C8043A21CCAFB6CD9B2458C1811EBE528602669D2A469D1A2C5A54B97
            D435457B2E1060A8891225A257850A15860C19C2FCD932ECD3FEFEA54D9B36B1
            0BD806D313230F42B8C505EBEFEC35BBFDA517378D03FFFECB6B6934DEFB87E6
            025E6B2E90167B845A2E20CF6FD3A60D5BC9DA8D261BD8BE8E1D3B3220015CDD
            0B8CBB92EAA37C7616155132E0EDCC61CC9831376FFECF53006650A64C990E1D
            3A787B7B1B4D36DCB973A765CB960C4B51D0A54B175E23C60BFBC88F13B15824
            EBD7AFEFEBEB6B618AF7845B5CA058803FFBAB037FFDF3375983F1C63F3417F0
            5A7381B4D823D472C1BB8139902C9C3B778E786EFE6EC2C78280B900E75744E0
            CCE79D417301AF3517488B3D3E312EF8D8113017A82A803F7375E00E3417F05A
            7381B4D8437341A842C05C60BE58E0E2E34387D05CC06BCD05D2620FCD05A10A
            9A0BACD05C8098E682CF10BA46B0427301629A0B3E43E86B8756682E404C73C1
            678880B9E0AF7FFE565CC09FFE4C51C4049A0B80E6824F03017301D0F71A0934
            178898059A0B3E0DB8C505401181B33F43CE3F3417F05A7381B4D8E3E3E282BF
            FFFE9B6177EEDC8925CB2405FFFCF30F2B3D7BF6ACB7B7F7A14387AE5EBDFAEA
            D52BE39813BC79F3E6FEFDFB4C78CF9E3D070F1E6440B17085D7AF5FDFBD7B57
            048E1F3F8EFE317EE358B0C15D2E9042C0E2FFEA4FD70802CD059F3017E0BDD8
            469830617AF6EC69FE01353C88C5A2BA040912A44E9D9AF5EEDEBD9BB58B803D
            30637C61E4C8919933678E1C3972D2A4491B356A74E4C811D505A6409383060D
            42206AD4A8F9F2E5C30831E920FF329205EE7281E085DD7796291FA009E3B01D
            3417F05A7381B4D8E363E1021C1E85A08784091332A0990B08E0274F9EE4445F
            7FFD356767AFD9382640822002F660E6D803FB8224C649176C1ECD13FFE5FB05
            376FDEECD7AF1F030204D83ECC98CD7D667A564A7020705C1058682EE0B5E602
            69B1C7C7C2052C64C68C1971E3C6C53819D0CC058F1E3DE2AD386DCB962D4B97
            2E1D33664C24070C182002F6601F3D3C3CC2860D4BD8C742D02AAF1961D6AC59
            E2149B366DCA9831236BC9962D1B560401610C55AB56F5F1F1911182099A0BAC
            D05C8098E602012677F9F2658C2176ECD8EC88DFE9FD73C1D5AB5771698CB65E
            BD7A67CE9C610EF28CC39A356BDA3F0D55307DFAF478F1E2B1BA2953A6FCF2CB
            2FA403BC65D85EBD7A91113C7FFE7CCC983154224C7EE3C68DE402140BF1E3C7
            8711D8C4A0FD62A2059A0BACD05C8098E602C1AB57AF704879EE50810205E485
            E2020A7B62B59C74C2840918216B69D1A2057B879DC88F9A30428F1E3D581726
            276679F7EE5DB672F5EAD5580BBE8D06E4E105180C02504FBB76EDF002288601
            91DFBA756BEAD4A9491C468E1C19AC5F7FD45C6085E602C434170850174E8B15
            61846C74DAB469195071010B442DB480952B57228C6F77EFDE1D93CB9D3BF77F
            FFFB5F6488FCBCA67068DFBE3D7E4E0B327424FEF32FB903248283B0F6254B96
            D0429A50B76E5D3C3F5FBE7C183CF2A74E9DA264E01438913C433598A0B9C00A
            CD0588692E10B004327F9279FE65EF28E0195071817917D81D164263BF7EFDD0
            1B06B060C102DEB2403605DFC68CD18FDFA036C008B76FDF6ED0A041860C1990
            6FD3A60D47693C78F060D5AA55A911B04391A40C61344EC18E581E8E12B40834
            17FCF1F7EB5D0F0E8F3C3FBFC3F151350F74F7D8D924FBD6EF0A7935AA7EA05B
            FBE3A3069F9DB5F5DEC1FFFBD3CF7581E6025E6B2E90167B847E2EC0E45805E0
            353E69E102268FCE69013B77EE1431CA7B4C948D8041788B7FA1409205F20BF3
            CFA23232F505BB4CDF48912261B4D836EDE8AD74E9D22C84658A249421E7A5FA
            30B34990C35D2EC0BD57DDF66A79745886CD55CD9F293AFC4BB7A94AE3C30317
            DFDCE2E5BD4B7381E60269B147E8E70233ECB980394C9F3E9D16A0EE29183264
            48ECD8B1A92648FE794BA87FFDFA35D3FBF3CF3F79ED37900D6FDEBCF1F5F525
            052859B2A4DC44800ED1869797171366D7CA962D2B9277EFDE95F3E208D88F34
            060702E682BFFEF96BF18DCDB9B77F6F717877FE326FAC9EAB4BC9E8B163682E
            D05C608F8F9D0B9E3D7BB670E1425AC0F6EDDBA546183060005647853F6BD62C
            5B3FC7F8FBEFBF713DFCFCE4C993F21C64A67DE8D0A17DFBF655A850216CD8B0
            6ADAD4055223B46DDB963948637020002EF07E74E2DBDD2D2C1E1E98BFF22936
            944F36C7B3E198769A0B10D05C60C6C7CE05CC7CFDFAF5B48075EBD6C945FE5E
            BD7A458E1C39478E1CECA3AD9F15640724054C58A5097DFAF4891B372E1B8D1A
            8F1C39F2DD77DF7DFDF5D76CA208B0582C8153F4E8D1437E8B2D98E08A0BA65E
            59996AA3C5B7FDFE8AEC6C3AF4ECEC8D77F71F7D7AEED6AFF75FBEF93FFE3DF2
            F41C2DC3CECDF1CF1D7E5C90627D795E0C3C34557381E602333E762EE0A48471
            2C96C6050B16902660A21D3B760C13264CFEFCF9376FDE2C1DCDC0BD59F2A953
            A7F079C923C098316312264C4829CD2067CE9C69DAB4295B9633674E51858F8F
            0F76C859B028F961A56082632E78FDF79B0EC747995CDAEF2FFDA6AA23CFCFBF
            FAD2EF0A876BDC787577C2A5A599B654575CC0BF8C506066CD2FC3FC477381AD
            AB03682EF8B8B800C7C675B1311A89ED58DDC3870FEBD5ABC75B2649F22F1DCD
            78F5EA15862D64C184A591E43F66CC98AC77F5EAD5447E320B46489B362DFAE4
            149421C9922563696829387E4651C10117BCF9FBCFAADE5DCC2C4076D0F9C4D8
            07BFF95989FB78FAC7F326DBFBA65CF73F2EE0DF44133DFE13EE6BCD050EA1B9
            E0E3E2028041D6AC59130DA3F9952B57A2ABCC9933478C189114588C96C20176
            285EBC3887B06A7C9BC5C68B170FCBAC5DBBF6F1E3C7D7AC59C33CD9EE3265CA
            787B7B63E45854ECD8B16107388285942C593252A44870075B20270D2638E082
            4E27C6988920CB969AFB1F9D308E0512070E1C2858DB33D9C2928A0BE08578BD
            722D3371C1EEDDBBBB77EF8EEE046DDAB4C1A63111522CB89616EC98FA0A49F4
            488E641606E3C78FC7C1A0DB9D3B774A0B2A7BFEFC39F2B474EBD68D9C0DDFB6
            9DEA7F3874E8108E2AF2164C98308169CF9F3F9FD7F8F38F3FFE68F4B1D5879C
            4EC40403060C20D9330EDBC862C68C19B433F8D6AD5BB76FDFCEEB76EDDA7979
            79494278FFFE7D68C8D6D501642877B8003BC34AA417F2E2C04C75D0A041B4E0
            480410943679F264968F49A95FEC6740CE221DED81A2E4FBB6F4C546BB76ED4A
            236A64F228996145CC8291234762D3F4C243D83B69BC74E91283D091E9498B3D
            D87ACCEFF5EBD7FBF7EFE76DE7CE9DE129097D1C1A3870A088593065CA144EC4
            C8F80C6FD902D41B525C80ABC3839C376CD8B09057A24489784D7A2FB40EB058
            A20ECECC54D1092D723711FB0BD5B2C5F4225A448E1C198E9080C142AA56ADFA
            F5D75FC308087088D73D7AF4B87EFDBA6DC8E082950B665E5D632602CFDD2D6E
            FD7ADF381678C8FD053193C5CDB3B496E202FE1AAFE9A9B8006511D62E9B4054
            C720F02B16CF5BF22E58408469B70843CC98056CCA38D28242C59E64E42B57AE
            489A60066787A445DE823B77EE40256C36AFE5FE70A3CFDBC444C40424026A21
            00EBE75CB43338F36726BC6602BCA02F02D83D7460EBEA0032943B5CF0F7DF7F
            6385D20BFD08573255264C0B93446380B57076A0EE5DA52367918EF660F2324F
            FA926A61FD34A2461A51B265ED0AB76DBF384C2F5627CB07D81583D091E9498B
            3D6464A644A5CD5B4E87DAE9C5501C92B5D8832C9A13A991D902D41B525CC034
            5872BF7EFDE42715D929760DD25426C7DC4819CCF71AC1B6842B5230E883D100
            5B0CF1313EAA40807DDCB871238EC3801C25B3AB5FBF3ED14B128DE0833F2E38
            F0F894F9626189DDADD45D43EF0675AF51EF7E7DCA7AB5515C907243F90DD7F7
            18421AFEE10E176858F001B80017A52E23D5C22DCD5E031D405B54F5F833C520
            F9146F8D63B60C6EC99225C4FC3D7BF64070D208F7E11A64A0BD7AF51A326408
            02040F21740192A46363C78E45803C88E5C0C5C6B160C3FFB8E0AF7FFEF2D8D9
            441141D6AD357FFA3F83FCDE198A0BFAF6ED7BE4C289F4AB2A292EC8B7BDDE9B
            BF83F142C8C70BCD05EF800FC005AE4148271324E6430D46934B90FE3067521B
            2846D2010B448004048E905C29B8F13F2E587C63B32202FEC811A4DD05A037D2
            F8D3A74FA37AEA4992376CD7386683990BC854BFEFD534F9DA72C2059C62D655
            BF2F6FB04E324CC661104AD9B367CF52FDBA5628F224FFC81F3B768CF33E7AF4
            C8A136051C628748C0A8D3289BCF9D3BC79E4911E10C64D14A9EF1A51A0F10CC
            196182063047060B980FAC8F36D01BF3BF70E1027A33C704F7B900D591C97352
            C63975EA143A34172C16303DF255CE8B24F2E4ABE4B1E6F3DA83FDA5C44518F0
            82EE2E8C92F1316BC4501A605DF2199B71D80E0CC58024F9E859C65761D321D8
            323CE7CC99330CEEEBEB4B20C50CD47C429C0B3E01185C402D90636B6D45041D
            8EFBFB79590BD800BC0B539E3B776E8F1E3D2866BEFBEEBB162D5A0C1B366CED
            DAB558A4B2000B17B46EDD3A66E30C8A0B326FA9F1F4FFFC0AC5E5CB9777EFDE
            9D41AA54A9D2A44913761177C2ACED2D8F16E4972E5DDAB56B57E46BD4A8D1B2
            654BE42111B9E86501BE843CDED5B973E79A356B56AD5A95B28DA40BBBC1520D
            211330388C78F1E2C58C5FAB56AD6AD5AA313E6921F687A2ECE76306F4D4A953
            A772E5CA952F5FDED93D67D00A539D3D7B36F3A957AF1EF3472743870EDDBE7D
            3BD538653032EE70011AC6737EFCF1C7891327A2F9EAD5ABD7AD5B171D32739C
            4AC63103BA44A53366CC60864872DE366DDA0C1F3EDCCBCBCBC244025AF0BA39
            73E6B46FDF1EBD21DFAE5D3B1675F2E44987552BCAC73FB107C4501A605D74C7
            481CEE0BAECB21F4D0A14307C60774E42D83D887413685F993638F1933A651A3
            460CDEB061432C0AB381D1643E9A0BDE1F0617ACB8B55D1141DA4D955D7C7C28
            44B069D3A63265CA448C18115D2B60B2F1E3C76777717B09BCF65CF09F085F27
            5B5E5AB880BF1F0ECE6CDBB66DECD8B18D21DEC2C3C3835358A21C0E70FBF66D
            C8423EEB5288102142E1C285B76EDD6A89F65815B6CBF851A24431446DF8FAEB
            AF4B952AB561C306FB1A8C188B9D59E613366CD802050A608B2A87B2073AA1F0
            930F4171E38E1D3B1A074C200CCE9F3FBF68D1A24C58465648962CD9A04183A0
            2D96102017A00722246E9F254B160E1943D8C0CC1B376E8C9B99DD09029A3973
            66C18205C555CC605818011633077021824A952A59F61735C274070F1EB46461
            F8A1B7B7F7F7DF7F6F191FBDC1D77BF7EEB5D00773C36F195F1E07A0C0E9189F
            C99BB90C61D86ADAB469F271A91971E2C481D9198A096B2E787F185C50FF505F
            C505C3CEFDEF13757BB0AF6C7C8C1831C40AF12B2C3B52A4486CBCB4840F1F1E
            0B20776517EDB900816855522A2EC8B5A07AE4C89169A42F1B893530206F01EE
            4DD45266C768D874F3E6CD195FC973EA6FBEF986B7F44A9F3E3D89BDD9A649D4
            BB74E92202C8D351C6971BC5E0B29D3B779A7D06C723171003C515657C990F5D
            703CEA17F3F8024640876BD6AC4991228568C02117B090A953A78A41331AC332
            19D19BCC274C983003070EC4EE03E4026A1C3805ADD20B3002E3B03ABAF016A2
            24F293AE8B30131E3B766CEAD4A939C489D0863AAFADB75FF7112346402E22CF
            7220DC0A152AC8C219939181BC45B850A1424469B3DE08E60D1A349055305594
            06643234D6A953473E7114D0918C064214BF55E38B3C67F9F6DB6FE573789187
            AF4937707B8E0259AC1A1F793885544873C1FBC38F0B7EFFEB75EA8D9514175C
            7E79CB38E808EC13BBEBB72D3664CF9E9DD494E4AD76EDDA3163C69446F649EE
            2672C8055F45092B5CE0F7B1C2BAF25F86F3DB54120A6A0D9C010710B3C38C7A
            F6EC49E62CE7C52B88CC388CDF09BEF822418204044032ED3C79F28815622244
            09F5E11920E7141FC040E5CE8DFEFDFB67C89041DC00FB238551F2F8EA8A152B
            24B0030235F64DA5C002A585B310BAF1559157202310631522002CDF9E0BE429
            BA22C30472E6CC3978F0E0F1E3C793DECB7C006CB270E142D75C809340619933
            67962ECC8A047BDCB87124F369D2A491465EB016392FFB454620E7C555F2E6CD
            4BFE023BE042C292009D28794AA7254B96A8B5705EAA09364E1EA701D0247A50
            A11BBDFDF0C30F71E3C6E5101B8702515AAF5EBD92264D2AFB48D8E08C846E91
            C76939BBBA610C72A40AA340509367456C1C3994C853075114C821769FC552B2
            6172ECACEC3B96D3AD5B37CD05EF0F3F2ED871FF902282BCDBEB19479C80EC91
            6DF6DB992FBEC0223150AC078F2208135E84ADD9244C13EB77C8051C2DBCAEBE
            C105EBCB472C885F27E8D1A307E18EA188BD091326145BC479C8FCE5BC77EEDC
            C1F3FDCE6A73360C8216E457AF5E8D7DD3489778F1E211D324952031610E628E
            8C8F39128E8896DBB66D934F89990656B26FDF3E191F63A52A9624054BC5BE19
            018BA492C71B6904F0CEB163C7441EC86858A7CA92040EB960F3E6CDF8B60894
            2E5D9ACC19AE446F6809D2912A86D9324F98C5051740469088CA86203814CB38
            4C95BEF2E43CDCB555AB56725EF4234FE301152B56C4B5E4BC8CC37AC91168C7
            C7468F1E2DEE4A9D425A27F21C85D3C902501DFE29EE8A70D6AC5915877276AA
            03597EAA54A966CD9AC5A6A019484D1131D9166623F25027FB25F407F7CD9831
            839993F14146AAF4232B21D48BFC82050BE0651AD91AE20DEA62044E81B1C98D
            89A8A26CD9B2346A2E784FF871C1E0B3B31417F4F59D6A1C71040A841D3B7688
            01017C1B539043E4A218ABD8226EC6F6DCB871038BB970E102FE4378A72F2D3E
            368C39BD407141ACD699F3E7CFBF7EFD7A198780C35E12E41987602B0F840054
            F2C452DB69BFC0C8F025F1F98B172F1255A41DB358B76E9D5C05A090A1F89476
            629AF2618C869028F9054E3271E2441A190A7384E3C4A6294F366DDA24692A75
            0726681BC6EFC204E31382641CFC04F7501723282EC4451D7201CE261C4A3ED2
            A9532729CDC09F7FFE89B913DC6C637C017F51309F3A750ACB26F76662274F9E
            E4352D3800F2D0ABDCE68C9239F5912347643E00197804EF429950AA34421CF2
            383D7C89700DB9483B9E4FCDA2726F222D3E4F3BBB23F2A04081029C5DF4C01C
            E4EE69CE8BD31E3D7A545203148298C8E7CB974FE5718C463BC2B4C3A1E88A46
            4E0A29101BA4BD4A952A725B27A760F2840DDB307E5C4C3B6BA79DF31248D802
            843997AAD1540C00541C100A3B8236983F74860D3C78F080C9F3160B942E1AAE
            E1C705CD8E0C515CB0F6A7DDC61147602720E6B56BD7C2FA78111BA6E203A0BC
            97AB6EEC34D192ECD4386087234FCF51264004FCC5EB9B1BA765DBE41016806F
            13691987B8871D3043B109E57530BD92673E72DB3FC009870E1D4A7E41FBD2A5
            4B73E7CE4D2393C116CD9721292E64286C8E5C8316CC1AE3567109CBC3AA4498
            F849A922ED807C04D6A01DCF24F2D0C2F88C860FD34B5CCB2117C059A406D4F9
            F82AFE6CB4DAB8809C9CCCC536FC17A4BB32BE33E003E9D3A74712DE2171C007
            500EE0108AA22FCBC713D465D473E7CE6DDCB871DEBC793367CEC431A411E096
            C470C9ED5942BF7EFD5011B482B0245380AA0D2A147902356B9476E86CD1A245
            B2F513264C90F80FBD962F5F5E9D977D241E083912D809E33432B1356BD648F4
            06D468F8ADC8F382D3493B8C8C98D025672184C020847A96262BE55FCC4FF21D
            46AB5AB5AA22448D77861F1794DFD75E71C18F4F4E1B479C839D20C89337D297
            2D9746DE4E9B364D723F6CAB77EFDEEA72943D6EFFFA40DD839868A287993818
            90AA5E5DC9A758C51B391D8E24411B90942AB2C719300B6947A069D3A672FB27
            A5B8CA213D3D3DD53C018E2AE363BE0C05C1B190952B574A8100C877D4F8AC02
            3B96764068C5346967BDF0026C82C58F1933065727024B35E1900B0073202C93
            3F8B950BA021F27CA1217C6CE4C891AA14B7079A874AE4EA26490AA7C649C805
            D0364516A907599B50A1199C97335ACE8B4A1B356A244BE65F5C1A3746991004
            2D0288899A4BE479C1DAA59D5D1E387020C2B4D3280C0821D6ABE7AFC0248F60
            921C6275C2B910289394A40CC8B5521146AB2ABF03F0ACE42966B07C088B9407
            A2976FEC6069247DE8C490D0780FF871418E6DFFBBB3E0C6AB77795802268E15
            4A4ECEF6B0498417C9D51DE2CDDF7F2A2E48B6B454DDBA755530C470C78E1D2B
            B506A096C6CDB00082A7B480162D5AA8DA84B3CC993347DAE102EA0B315F3C53
            126F1C8CA45A8405E41AF20338807A010D107C2846A430015DBA74B9FEF67B20
            B8161C27ED803A5C6882F352860C1F3E7CE7CE9DB819660A65B8E6027BA03792
            29E2BCC4CF6CD9B211F68D638E4030C79784135997878707DC97254B16D881C2
            2D71E2C4A54B97C6AB95729C8125530451AE4B0A40B2CD7ED14E92356AD4285A
            0483060D52F7D5C389E45CD28E33C3D18F6D4FEC8637456FA4722D5BB6146181
            FAF41779E6490BBB4C31A2B88073C92080E2A24F9F3ED20E38B52A3714583EEA
            6ADEBC79AE5CB9A01E9496214306245D64A01AEEC38F0BD26CFADF87087FFCED
            34283903E919492F4E2B3641CE46AE880D9943B13D1417F0D7B06143DC49DA71
            2A7C5B95AC24DE549238A4395E114094AF12CD56AC580101D18E93503E48DC26
            54CAC56A9CA45AB56A222CC0697103DB485FC05FC437B88646751D84A240C543
            2646149276402CA58CA79D6C82D00A440C04960B60933D7BF694295346888010
            DAB56B57D76E4C17E5909C850C1F67C609392F4538AFD10019FB902143943EED
            01F16DDFBEFDDB6FBF152260D72047511AEE876BC9F88015A92FE13020A996B4
            3361B64CF23E0A2EF16D522DF645840594009232302B5206EC81500F89C87A01
            03925E89302722279276C016A82D56803AE529C32283C62A54A8C05AE0084342
            E33DE0C70585BD1A2B2EF8F9B5531B7208B681D21ACB906C936D4E972E1DE4ED
            22D105CF5EBF545C907C6D391C4C5D77800B962F5F2E4E05281F8E1F3F4E3C51
            0F99041899D950D6AD5B27A112462852A4881CC298E4A203B65EA3460D911410
            39D52758B822368DA1E36392D002784405A557AF5EA9E758015218B8490E5910
            282EC0ABF7EDDB57A54A151996F9172C589014435D1B7308E6495E2D5D00EBE5
            8C78238D045EF20BDC9BC64C993239FBAE3BCBE12C14173202532D56AC18090E
            6AE7280196024D0E01E2B6E202EC446D01BB5CA74E1D39C4D68B6FE3F6EC8B08
            0B281FD47510389DA5C105E40E8A0B28EEE482282041A0E69276406AA62E5528
            C005A415D9B3674F9932257901FB953973668AA3A3478FAAEB141AEF0C3F2EA8
            75B087E28273CFFD9E8AE126D800EA55285F2EC56188C45B8C490CCB052EBCB8
            A1B820C9DC6F194155B9162EF8EEBBEF4E9E3C89C52C7CFB9049803D990DC5CC
            05843B0971B887141AF63582990BC80B201A9888469517109F15D758B880F447
            F2027BB8CF05D834EE2797E501D3C6B859A07DA96F01F98B396EE354944252B7
            B38461C38689EFC1CBD09FFD2EB0D7BB6CBF082CDD511A7A20AB520E4936F7C3
            0F3FC851C0E0AA46B07041FDFAF5850BD80BE150F3079902C5052CF0FBEFBF27
            2F40D5EAEE2F40BDA36A430B1738FCBA3E0166D5AA55286AEAD4A955AB5655D7
            2958AC2E13DE1F7E5CD0F9C458C505BB1FFEEFC91CAEC1D6B25BF8AA10018695
            2C59324A3E7712B6DD0F8F2A2E4830A280F9DA2116BC60C10275CF0F3677FEFC
            799C67C3860DD202084AEADA1ED3A0C69676E640D228438D1D3B560A01188AD0
            27C202C29D5C5604D004211A5008A8EB05D834271561DC0F6F9176D0A2450B75
            C80237B900FD1C3C789025CB80F809B5CCE2C58B55B6EC029424665F45F3E65A
            4C1EA14B3B7AA090B6A4669C9792A472E5CAD21719B872CD9A35E66A025A315F
            1CE9D6AD9BCA8FE01A758D16678602E4DA1E815A6A3108C872EDB073E7CE42C7
            C893FAD1C2F868C9E1B543B2B33163C6483B183060802AD31CE2E6CD9B9C4ECA
            1CD4CE9E1A0734DE157E5C30E2FC7CC505A32E2C348E0404360FCB53FEC37E50
            CB99EB6717187F7189FA4C314EE7EC44AA73E7CEC921B860C68C19EADA5EF3E6
            CDD975CC9D402A2D80F3AAE08CC5ABCB8AD837DC21E6356BD62C756F4FDEBC79
            CD3924E5B4DCBE82D3E2930CCEB4A96B84D400839C38613CCA89980937493B20
            65B0CF5D056E72014450AD5A35280049FEE5A4708D2A915C83A9E29012577103
            A2BAB92324D5A44913BF59DA3EC683A9154D0088A07CF9F2725E144518B7FF46
            066F49CA6404D0AC5933159C7163C2B8B4E3CCC47CC962A8AD84B8C3860D0BD1
            88B0A04D9B368A26E45202C43A7BF66C759F25CABC667B3A1B307F360CE00555
            9E38047602DD8BC249E82CA99FC63BC08F0BF63E3CA6B8A0C46E7F97821D020B
            C332D07EB468D1C4B608B3C42B8CC33E2F7588D27BDAF871818D0EA2944A5ABA
            7469F5793E83536548FAC7E0D81C593AEDC78E1D53BC53A44811E5AB845315AF
            7042FACAA5696C3A4F9E3CD29E33674E73FA8DA3CA678ACC5F6C94984925A22E
            4A55AF5EFDD0DBDFCF27FAE1E4D20EC68D1B27D7CCECE10E17FCF8E38F24B492
            5423863C448087B8A937B068D122B9B08A3F9381D3D73860BB8501EFF59BE517
            5F244D9AF4F2E5CB8A0BF6EEDD8BA3522E7188F3B25F143E78BEE5BC30E6B6B7
            3F100848FAD4E7FFE6CF14C3850B874BCBA951BE7CCECF7C2C9FDD520449D905
            59C0BFB4606C1474EAFE0273FE05E3ABFB1700DB2734C780180094C10659986B
            E6CC99F2FD0EB8A940810246ABC6BBC28F0BDEFCFD67FA4DFFFB35A4009F714A
            A884F2D58DB7EC070C0DAFBB69D08FFFF8454E245CF05554BFAFBBA82FDEB0F7
            940012A2A3478F3E7EFC78312F1201752F2D2F88AE224FE0A2B6947642E5B265
            CBC48676ECD881694A7BE6CC99D53DB0983BDE28E6481141ACA3915310852020
            A1B6E2C58B6FDFBE5DE4B151F5F44E0232F588B3DC27402EC0A089DB2C4A6432
            66CC88C5078A080013435DB6E9F8C543D6A58AB2C3870F4BE9C12A50917028B8
            74E912E9B4DC95808AB265CBF6DFFFFE97A3F6E7A5E5C081033243E0E1E1A1F4
            76EAD4A9860D1B4A3B5C06A9891ED43D5D0087543705307ED1A245C542B267CF
            4E6E452349DCF1E3C7D5355A66CB9C451E52900207904750EFB0294F9E3C9930
            6102E367C99285428FD4468C0130D5E1C387CBBD52C85B3E2AD27807F87101FF
            35393C5071C194CBC6D7541C427266F640B6997C0FD7C5B68E1E3D4AE856A09E
            77E633B3AEFE577141E2C9451984B8413CC7A6FFFAEBAF1B376E402E5207E6CB
            978F3022BDF0C9BA75EBD2083026EA0872130C82DC5E9E4DCC7CC87B898D520E
            300E35AAF8361587AA273162F205993C1D95CF335B28402267FCF8F1E120A290
            D4F6D4DE34023885EECE5CD73517FCF1C71F7DFBF6255CCB94E01D2A919D3B77
            1AFA7A0B96E94C6F0216D8B66D5BDB74FCB80952A6A4C743181F9DC82D89AC42
            8568F697B25FD55C2CAD69D3A6BB76ED32CEF716847DB975EFECD9B3DF7EFBAD
            0893E10B6BB02FAB56AD9227477352CE82CFCBF8F8B6BA18993A75EAC56F9F0A
            4D0122930108700A1AE94247B5BF1016F228F9B7DF7EDBB469939A246E2F3523
            ED23478E94E482F0F0FDF7DF93DFC9794924AB54A922971E5854EFDEBDFDCEAA
            F11E30B860D56D2FC5051937577FF6C671F9CA36C0DFE6E782B3A97808497E59
            FFC019D42568335EFDF97F59B7D6545C90AA553E068150B0335250F20B98451C
            929119447DDE4EFC248A12CFC597F2E7CFDFB3674F8A550C42E2180451BB766D
            75250CCBC69FC539E9C5F803070EA40AC52ED5678DAD5BB7269D1179CC7DF2E4
            C972AD8B534343981791C7FC3D429CCAC5F56AD75C00A73067F101402823D619
            CA32813078E7CE1DA38F23E0998462F96A03AAA04C68D9B225BD060D1A54B870
            61511D45042E24F2BB77EFA644624AB6D3FA791451DA38990953A74E95FA1C5F
            456F22CFF870CA80010318BC54A952E29368BB7BF7EE421C0085C371725D0095
            92B3A034CE0EB1B2461A216804D4BEC0747497728C7D8177D897C18307634272
            52689A424CE5171B376E446FB473140265CBD826EC847D91CD820E58381C2DF2
            1AEF0C830B2CCF35EAEF3B4D0E5BC08E52DFAA1CCF0588BD0E6F9B197E6EAE3A
            4BDA8D95EBB66A289E8C93F02279F2E4BC106F273324295041125FC50F557A8F
            C560195883583F06012561F7E68BE7C4225203B9CA802561AFF8AA4412DE9200
            13F424C800A23DE546D5AA55552E8D3C4E25F24C0936A1EA265289BC3D5C7301
            CCA2BE80E4028D1B3726F21B7D9C00C576E9D2455DDD60812953A644153255D4
            0827AA4198895C7C710D7C4C2E1312A529C77051F14CFE65DAA4813238DAC6F1
            28DDD90E191FBD91BAC3C8C298E80D7922BCB01E4944C58A15D917954CD1F1F4
            E9D3447EB122866570184DE4F9977D313FCE04668459E4F224BB40AF3469D240
            85B2EF4C8F520BF2729D4C69B803830BC0C21B9B9497A6DE58F1D42FC69746CD
            C05CBA76EDCA1E0408875C70F1C54DF33D8EA3CE2F204527F367A7C5F2046C33
            4440C66BC92CB08F43870E5119626D623A00FB20FE103A88F95407E6041EFBA0
            82A028C5D4845F04C853D9CE9C3953DD00ABB065CB965AB56A29D30474241EB2
            1CE4D5E7F00EE1820B7030AC5F58CC35DCE102F480B7B468D12295EDD1FA464F
            9B5FD14209C0AA4512E622C11137760DC505009320632F59B224215DED0BE40B
            CB9026CC9D3BD75225BD7CF9125625B950DF221188BC5C1C35446DA03BA90DF2
            B0AD146B8017B01B5A6228CB3542144266417623FE2F605FC8EF200EF6DDFE6E
            658D77C0FFB8E0AF7FFE32DF8098677BDD47BF5B3FF1263263F165DC40870E1D
            2C9EFCECF5CB825E0DD5F8A421242378EFD1A347D96952D0BC79F34201050B16
            C41BA94E1DDE788319E1063D7AF420A51479AC81C21BDB520B318354F6C48913
            5413043AFC19799258E4313875978B198CEFE3E383BC9A0FE353A6329F00230F
            328CCCDACB952B077118AD3630375C5734E31A8438772C1BBD11307103A22E1A
            6369CCB372E5CAA3468D5257FE590BE405B91843BB84FC0089740444EF03070E
            B469D346F4068A162DCA12C8D8E13543C804BC77FFFEFDEDDAB5430CA589DE9A
            376F0E2B598840403AC621E4D5F8B040B366CD880D2AE3506021B03615E277DF
            7D47E9C1BE40E5254A9468D5AA159CA52E916ABC27FEC705608FE9C345FE2AED
            EF18548F2D8768CC7737F2F75FD397A3B16C361BA725EC1304887B6CBF71CC09
            305CE40F1F3E7CF5EA55872C60868C4FC9C0F8642B2EF27C0196AAC647DE5C77
            842AA0259CF0C2850BF0E9CD9B37035C5760811E2026F476E4C811C60F500F08
            DCBD7B17A5A167C24680F2C26832FE8D1B3754BDE60C083C7AF4887D61C9D05C
            80F21A81823F2E00132E2D357B6CF503DD9EFE11B86F28D8E397D72F6A1CE866
            1EB6FF99E9C6310D0D8DD0012B17FCF3EF3FAD8F0E37FB6DBE1DF5CF3E737CA7
            9D3B38F7FC5AFE1D0DCC03D6FDB1CF5FFF6846D7D0085DB07201F8FDAFD7E5F6
            B6337B6F9A4D95069F9DE5EC83466778F5A7DFDDCDE93655310F556C57B3976F
            0248E935DC47B793E3CDEA557FB4BF78E3F4F9111A1AF670C005003A6873EC07
            8B7965DD5A73FA95D5EEFCF2FA933F9ECDBDB6CEFC8814F9FBEE60CFC0128A86
            6B38E302F9BBF4E2A621A7A111101C7301A05898786999F9A756E58F96F2FBDA
            8FBFB864EFC363E79F5F97AB0978F89597B7F73F3A31F5CACA2ADE9D536FAC68
            E9C55F5FDFA9BA340872B8E602FE0C390D8D80E0940B045BEF1DB454FBEFF097
            7BFBF7AB6E1B9F786B042DCC5C202D10AE6AE14FF3AF869B08800BC01F7FBFA6
            34C8BCA586D9C2DCFCCBB8B9DAD88B8BDFF387DB355CC09E0B80C3460D0DD708
            980B04CF5EBF9C75F5BFDF1DECE130FFB7FC2153E340B71957D73CFE23E0E773
            68BC0FECDDFEC59B5F55CBFA3B7BA551432340B8CB050ABFBC7EF1DF9F76F738
            35B191CF80D27BDA64DFFA1D3697654BCD927B5A35F4E9DFEBF464CA81F7BF25
            41C34DB8B85EA08940235008341768842AB8E002FEF4C78A1AEE4373C1C70DD7
            5CC09FFE5851C34D682EF8B8E1F032A1F99281B95D43C30534177CDC70C805C0
            DCAE3F56D470079A0B3E6E682ED0082A7C61FCFFA170EA974B95F677CCBEF53B
            FDE7FE5FD9BD6D8F3C359E196F81432EB8F4E2A66A34B76B68B8C087E602F36F
            3AEB3FF7FF8AEEF2FB6D527B98B9C0E19FBE76A8E1263E341758BE01A9FFDCFC
            CBBFA381A141FF70CD051C35E4343402C287E682A34FCF11E22C26ABFF5CFF15
            F26AE4ECB7ED9C7101EDFAE6028D40E143738186C6C702F36597CF21C3D25CA0
            A1E118969CEB93FF3846738186860358BEFACDDF277F15567381868603583E97
            E5EF932F13341768683880C38BB29F7699A0B94043C30A7381B0FECE5EF5FAD3
            2E13341768685861FE7217BCA072844FFB91109A0B3434AC50B9805C2330A706
            22F049427381868615CAF3A52830A7099FF01D5C9A0B3434FCC1522048A36AF9
            84CB84407381FEA2A1FEFB58FE5C7CBFD305CC1581C33F43EE9343A0B9407FD1
            50FF7D447FCEBEDFE9029611ECFF3ED53221D05CA0BF68A8FF3EA23F67DFEF74
            067381E0ECEF532D1302CD05FA8B86FAEF63F973F1FD4E67301708963B8BCC77
            1F194D9F16F4B5430D8DFF4179BBFD1DC7669AF824CB04CD051A1AFF83F276FB
            5B0CCDE5C3277903A2E6020D0D0D3F682ED0D0D0F083E6020D0D0D3F682ED0D0
            F8DCF1D75F7FDDBC79F3FF01F77CB887065B10EF0000000049454E44AE426082}
          Proportional = True
          Stretch = True
        end
        object Label155: TLabel
          Left = 11
          Top = 162
          Width = 102
          Height = 13
          Caption = 'Exemplo de etiqueta:'
        end
        object edBalancaLarguraCodigoBarras: TSpinEdit
          Tag = 1
          Left = 11
          Top = 40
          Width = 126
          Height = 22
          MaxValue = 150
          MinValue = 12
          TabOrder = 0
          Value = 13
        end
        object edBalancaCodigoBarrasDigitoInicial: TSpinEdit
          Tag = 1
          Left = 11
          Top = 134
          Width = 126
          Height = 22
          MaxValue = 9
          MinValue = 0
          TabOrder = 2
          Value = 2
        end
        object edBalancaLarguraCodigoProduto: TSpinEdit
          Tag = 1
          Left = 11
          Top = 87
          Width = 126
          Height = 22
          MaxValue = 6
          MinValue = 4
          TabOrder = 1
          Value = 6
        end
      end
    end
    object pgCasaNoturna: TTabSheet
      Caption = 'Casa Noturna'
      ImageIndex = 14
      TabVisible = False
      object rgDocClienteCNoturna: TRadioGroup
        Left = 3
        Top = 3
        Width = 150
        Height = 54
        Caption = 'Identificar cliente por:'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'CPF'
          'RG')
        ParentFont = False
        TabOrder = 0
        OnClick = rgDocClienteCNoturnaClick
      end
    end
    object pgTEF: TTabSheet
      Caption = 'TEF'
      ImageIndex = 15
      object Label170: TLabel
        Left = 3
        Top = 24
        Width = 82
        Height = 13
        Caption = 'Selecionar o G.P.'
        Color = clBtnFace
        ParentColor = False
      end
      object cbxGP: TComboBox
        Tag = 1
        Left = 91
        Top = 21
        Width = 133
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbxGPChange
      end
      object bADM: TButton
        Left = 256
        Top = 82
        Width = 133
        Height = 25
        Caption = 'Administrativo TEF (ADM)'
        TabOrder = 1
        OnClick = bADMClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 556
        Width = 864
        Height = 27
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        object sECF: TShape
          Left = 8
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object lECFName: TLabel
          Left = 31
          Top = 8
          Width = 48
          Height = 13
          Caption = 'lECFName'
          Color = clBtnFace
          ParentColor = False
        end
        object sTEFDial: TShape
          Left = 97
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object sTEFDisc: TShape
          Left = 193
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object sHiperTEF: TShape
          Left = 289
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object sCliSiTef: TShape
          Left = 393
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object sVSPague: TShape
          Left = 481
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object sAuttar: TShape
          Left = 579
          Top = 7
          Width = 17
          Height = 16
          Brush.Color = clRed
          Shape = stCircle
        end
        object ckTEFDIAL: TCheckBox
          Left = 121
          Top = 5
          Width = 69
          Height = 19
          Caption = 'TEF_DIAL'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object ckTEFDISC: TCheckBox
          Left = 217
          Top = 6
          Width = 69
          Height = 19
          Caption = 'TEF_DISC'
          TabOrder = 1
        end
        object ckHIPERTEF: TCheckBox
          Left = 313
          Top = 7
          Width = 76
          Height = 19
          Caption = 'HIPER_TEF'
          TabOrder = 2
        end
        object ckCliSiTef: TCheckBox
          Left = 417
          Top = 6
          Width = 60
          Height = 19
          Caption = 'CliSiTef'
          TabOrder = 3
        end
        object bCancelarResp: TButton
          Left = 650
          Top = 3
          Width = 88
          Height = 23
          Caption = 'CancelarResp'
          TabOrder = 4
          Visible = False
        end
        object ckVSPague: TCheckBox
          Left = 505
          Top = 5
          Width = 72
          Height = 19
          Caption = 'VeSPague'
          TabOrder = 5
        end
        object ckAuttar: TCheckBox
          Left = 603
          Top = 6
          Width = 53
          Height = 19
          Caption = 'Auttar'
          TabOrder = 6
        end
      end
      object bInicializar: TButton
        Left = 256
        Top = 21
        Width = 133
        Height = 25
        Caption = 'Inicializar'
        TabOrder = 3
        OnClick = bInicializarClick
      end
      object bAtivarGP: TButton
        Left = 256
        Top = 52
        Width = 133
        Height = 25
        Caption = 'Ativar GP'
        TabOrder = 4
        OnClick = bAtivarGPClick
      end
      object GroupBox33: TGroupBox
        Left = 0
        Top = 303
        Width = 864
        Height = 253
        Align = alBottom
        Caption = 'Testes'
        TabOrder = 5
        object MemoCupomTEF: TMemo
          Left = 2
          Top = 15
          Width = 428
          Height = 236
          Align = alLeft
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object pMensagem: TPanel
          Left = 490
          Top = 15
          Width = 372
          Height = 236
          Align = alRight
          BevelInner = bvLowered
          BevelWidth = 2
          BorderStyle = bsSingle
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          object pMensagemOperador: TPanel
            Left = 4
            Top = 4
            Width = 360
            Height = 90
            Align = alClient
            TabOrder = 0
            Visible = False
            object lMensagemOperador: TLabel
              Left = 1
              Top = 1
              Width = 358
              Height = 88
              Align = alClient
              Alignment = taCenter
              Caption = 'lMensagemOperador'
              Color = clBtnFace
              ParentColor = False
              Layout = tlCenter
              WordWrap = True
              ExplicitWidth = 168
              ExplicitHeight = 19
            end
            object Label171: TLabel
              Left = 0
              Top = 0
              Width = 118
              Height = 13
              Caption = 'Mensagem Operador'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object pMensagemCliente: TPanel
            Left = 4
            Top = 94
            Width = 360
            Height = 134
            Align = alBottom
            TabOrder = 1
            Visible = False
            object Label172: TLabel
              Left = 0
              Top = 0
              Width = 104
              Height = 13
              Caption = 'Mensagem Cliente'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object lMensagemCliente: TLabel
              Left = 1
              Top = 1
              Width = 358
              Height = 132
              Align = alClient
              Alignment = taCenter
              Caption = 'lMensagemCliente'
              Color = clBtnFace
              ParentColor = False
              Layout = tlCenter
              WordWrap = True
              ExplicitWidth = 150
              ExplicitHeight = 19
            end
          end
        end
      end
      object GroupBox34: TGroupBox
        Left = 3
        Top = 59
        Width = 201
        Height = 65
        Caption = 'Comprovante'
        TabOrder = 6
        object TEfVias: TLabeledEdit
          Tag = 1
          Left = 11
          Top = 32
          Width = 54
          Height = 21
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = 'Vias'
          TabOrder = 0
          Text = '02'
        end
      end
      object GroupBox35: TGroupBox
        Left = 2
        Top = 130
        Width = 202
        Height = 65
        Caption = 'Transmis'#227'o dos Arquivos'
        TabOrder = 7
        object TEFTransmissao: TLabeledEdit
          Tag = 1
          Left = 14
          Top = 32
          Width = 174
          Height = 21
          EditLabel.Width = 41
          EditLabel.Height = 13
          EditLabel.Caption = 'Diret'#243'rio'
          TabOrder = 0
        end
      end
      object GroupBox36: TGroupBox
        Left = 3
        Top = 201
        Width = 201
        Height = 65
        Caption = 'Recep'#231#227'o dos Arquivos'
        TabOrder = 8
        object TEFRecepcao: TLabeledEdit
          Tag = 1
          Left = 11
          Top = 32
          Width = 174
          Height = 21
          EditLabel.Width = 41
          EditLabel.Height = 13
          EditLabel.Caption = 'Diret'#243'rio'
          TabOrder = 0
        end
      end
    end
    object pgFinanceiro: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 16
      object GroupBox37: TGroupBox
        Left = 3
        Top = 3
        Width = 318
        Height = 126
        TabOrder = 0
        object Label184: TLabel
          Left = 10
          Top = 41
          Width = 88
          Height = 13
          Caption = 'Taxa de juros (%)'
        end
        object Label12: TLabel
          Left = 10
          Top = 68
          Width = 77
          Height = 13
          Caption = 'Mora di'#225'ria (R$)'
        end
        object Label186: TLabel
          Left = 10
          Top = 95
          Width = 75
          Height = 13
          Caption = 'Mora di'#225'ria (%)'
        end
        object Label187: TLabel
          Left = 10
          Top = 14
          Width = 112
          Height = 13
          Caption = 'Tipo de c'#225'lculo de juros'
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 130
          Top = 38
          DataBinding.DataField = 'taxa_juros'
          DataBinding.DataSource = dsEmpresa
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 0
          OnKeyPress = edJurosMoraValorKeyPress
          Width = 98
        end
        object cbTipoCalculoJuros: TJvDBComboBox
          Left = 130
          Top = 11
          Width = 175
          Height = 21
          DataField = 'tipo_calculo_juros'
          DataSource = dsEmpresa
          Items.Strings = (
            'Juros simples'
            'Juros composto'
            'Juros com mora (valor fixo)'
            'Juros com mora (percentual)')
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = cbTipoCalculoJurosChange
          OnClick = cbTipoCalculoJurosChange
        end
        object edJurosMoraValor: TcxDBCurrencyEdit
          Left = 130
          Top = 65
          DataBinding.DataField = 'juros_mora_valor'
          DataBinding.DataSource = dsEmpresa
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 2
          OnKeyPress = edJurosMoraValorKeyPress
          Width = 98
        end
        object edJurosMoraPercent: TcxDBCurrencyEdit
          Left = 130
          Top = 92
          DataBinding.DataField = 'juros_mora_percent'
          DataBinding.DataSource = dsEmpresa
          Properties.DisplayFormat = '0.00;-0.00'
          TabOrder = 3
          OnKeyPress = edJurosMoraValorKeyPress
          Width = 98
        end
      end
    end
    object tsBackup: TTabSheet
      Caption = 'Backup'
      ImageIndex = 17
      DesignSize = (
        864
        583)
      object grp1: TGroupBox
        Left = -4
        Top = 18
        Width = 856
        Height = 223
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Backup'
        TabOrder = 0
        object lbl1: TLabel
          Left = 389
          Top = 22
          Width = 110
          Height = 13
          Caption = 'Caminho pg_dump.exe'
        end
        object lbl2: TLabel
          Left = 13
          Top = 22
          Width = 93
          Height = 13
          Caption = 'Diret'#243'rio de backup'
        end
        object lbl3: TLabel
          Left = 13
          Top = 68
          Width = 141
          Height = 13
          Caption = 'Diret'#243'rio de backup DropBox)'
        end
        object lbl10: TLabel
          Left = 13
          Top = 117
          Width = 80
          Height = 13
          Caption = 'Us'#250'ario DropBox'
          FocusControl = cxDBTextEdit10
        end
        object lbl11: TLabel
          Left = 389
          Top = 120
          Width = 30
          Height = 13
          Caption = 'Senha'
          FocusControl = cxDBTextEdit11
        end
        object edCaminhoPgDump: TJvFilenameEdit
          Tag = 1
          Left = 389
          Top = 41
          Width = 351
          Height = 21
          AddQuotes = False
          Filter = 'pg_dump.exe|pg_dump.exe'
          TabOrder = 1
          Text = ''
        end
        object edRepositorioBkp: TJvDirectoryEdit
          Tag = 1
          Left = 13
          Top = 41
          Width = 358
          Height = 21
          DialogKind = dkWin32
          TabOrder = 0
          Text = ''
        end
        object edRepositorioBkp2: TJvDirectoryEdit
          Tag = 1
          Left = 12
          Top = 87
          Width = 358
          Height = 21
          DialogKind = dkWin32
          TabOrder = 2
          Text = ''
        end
        object ckBackupAutomatico: TCheckBox
          Tag = 1
          Left = 389
          Top = 68
          Width = 351
          Height = 17
          Caption = 'Executar backup automaticamente neste computador'
          TabOrder = 3
          OnClick = ckBackupAutomaticoClick
        end
        object ckBackupAutomaticoExcluirAntigos: TCheckBox
          Tag = 1
          Left = 389
          Top = 91
          Width = 351
          Height = 17
          Caption = 'Excluir arquivos de backup antigos (mant'#233'm os 4 mais novos)'
          TabOrder = 4
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 13
          Top = 136
          DataBinding.DataField = 'usuario_dropbox'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 5
          Width = 357
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 389
          Top = 136
          DataBinding.DataField = 'senha_dropbox'
          DataBinding.DataSource = dsEmpresa
          TabOrder = 6
          Width = 351
        end
      end
    end
  end
  object Button2: TButton [3]
    Left = 781
    Top = 568
    Width = 75
    Height = 25
    Caption = 'Ativar'
    TabOrder = 2
    OnClick = Button2Click
  end
  inherited ActionList1: TActionList
    Left = 800
    Top = 112
    object acBuscaCEP: TAction
      Caption = 'acBuscaCEP'
      OnExecute = acBuscaCEPExecute
    end
    object acBuscaCidade: TAction
      Caption = 'acBuscaCidade'
      OnExecute = acBuscaCidadeExecute
    end
    object acBuscaNFeCFOP: TAction
      Caption = 'acBuscaNFeCFOP'
      OnExecute = acBuscaNFeCFOPExecute
    end
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 680
    Top = 560
  end
  inherited cdsCFG: TClientDataSet
    Left = 796
    Top = 230
  end
  object qrEmpresa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO empresas'
      
        '  (emp_001, emp_002, emp_003, emp_004, emp_005, emp_006, emp_007' +
        ', emp_008, cep_004, cep_003, '
      
        '   cid_001, cep_002, emp_011, emp_012, usu_001_1, usu_001_2, dat' +
        '_001_1, dat_001_2, emp_013, '
      
        '   emp_014, crt_codigo, taxadeliverypadrao, b_pdv_coletivo, b_pe' +
        'rmite_fechamento_caixa_venda_aberta,'
      
        '   numero_comanda_inicio, numero_comanda_fim , numero_nfce, seri' +
        'e_nfce, '
      
        '   b_utiliza_controle_cliente, b_permite_fechamento_caixa_outro_' +
        'usuario, taxa_juros, numero_nfe, serie_nfe, b_utiliza_controle_a' +
        'mbiente,'
      
        '   ramo_atividade, b_permite_fechamento_caixa_venda_pag_antecipa' +
        'do, id_conta_padrao_cpagar_nfe, campo_doc_cliente_cnoturna,marge' +
        'm_preco_prazo,'
      
        '   b_atualiza_custo_material_composicao, b_permite_troco_todas_f' +
        'ormas, b_considera_rendimento_entrada_composicao, '
      
        '   tempo_espera_delivery, tipo_calculo_juros, juros_mora_valor, ' +
        'juros_mora_percent,inserir_custos_impostos_importacao_nfe,'
      
        '   b_buscar_valores_fechamento_caixa,b_pdv_nao_coletivo,utiliza_' +
        'ifood,cliente_id_ifood,cliente_secret_ifood,username_ifood,passw' +
        'ord_ifood,usuario_dropbox,celular'
      '   senha_dropbox)'
      'VALUES'
      
        '  (:emp_001, :emp_002, :emp_003, :emp_004, :emp_005, :emp_006, :' +
        'emp_007, :emp_008, :cep_004, '
      
        '   :cep_003, :cid_001, :cep_002, :emp_011, :emp_012, :usu_001_1,' +
        ' :usu_001_2, :dat_001_1, '
      
        '   :dat_001_2, :emp_013, :emp_014, :crt_codigo, :taxadeliverypad' +
        'rao, :b_pdv_coletivo, :b_permite_fechamento_caixa_venda_aberta,'
      
        '   :numero_comanda_inicio, :numero_comanda_fim, :numero_nfce, :s' +
        'erie_nfce,:b_utiliza_controle_cliente, :b_permite_fechamento_cai' +
        'xa_outro_usuario, '
      
        '   :taxa_juros, :numero_nfe, :serie_nfe,:b_utiliza_controle_ambi' +
        'ente,'
      
        '   :b_permite_fechamento_caixa_venda_pag_antecipado, :id_conta_p' +
        'adrao_cpagar_nfe, :campo_doc_cliente_cnoturna,:margem_preco_praz' +
        'o,'
      
        '   :b_atualiza_custo_material_composicao, :b_permite_troco_todas' +
        '_formas, :b_considera_rendimento_entrada_composicao,'
      
        '   :tempo_espera_delivery, :tipo_calculo_juros, :juros_mora_valo' +
        'r, :juros_mora_percent,:inserir_custos_impostos_importacao_nfe,'
      
        '   :b_buscar_valores_fechamento_caixa,:b_pdv_nao_coletivo,:utili' +
        'za_ifood,:cliente_id_ifood,:cliente_secret_ifood,:username_ifood' +
        ',:password_ifood, :usuario_dropbox,'
      '   :senha_dropbox, :celular)')
    SQLDelete.Strings = (
      'DELETE FROM empresas'
      'WHERE'
      '  emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE empresas'
      'SET'
      
        '  emp_001 = :emp_001, emp_002 = :emp_002, emp_003 = :emp_003, em' +
        'p_004 = :emp_004, emp_005 = :emp_005, '
      
        '  emp_006 = :emp_006, emp_007 = :emp_007, emp_008 = :emp_008, ce' +
        'p_004 = :cep_004, cep_003 = :cep_003, '
      
        '  cid_001 = :cid_001, cep_002 = :cep_002, emp_011 = :emp_011, em' +
        'p_012 = :emp_012, '
      
        '  usu_001_1 = :usu_001_1, usu_001_2 = :usu_001_2, dat_001_1 = :d' +
        'at_001_1, dat_001_2 = :dat_001_2, '
      
        '  emp_013 = :emp_013, emp_014 = :emp_014, crt_codigo = :crt_codi' +
        'go, '
      
        '  taxadeliverypadrao = :taxadeliverypadrao, b_pdv_coletivo =:b_p' +
        'dv_coletivo, '
      
        '  b_permite_fechamento_caixa_venda_aberta =:b_permite_fechamento' +
        '_caixa_venda_aberta,'
      
        '  numero_comanda_inicio = :numero_comanda_inicio , numero_comand' +
        'a_fim = :numero_comanda_fim,'
      
        '  numero_nfce = :numero_nfce, serie_nfce = :serie_nfce, b_utiliz' +
        'a_controle_cliente = :b_utiliza_controle_cliente , '
      
        '  b_permite_fechamento_caixa_outro_usuario =:b_permite_fechament' +
        'o_caixa_outro_usuario, '
      
        '  taxa_juros = :taxa_juros, numero_nfe = :numero_nfe, serie_nfe ' +
        '= :serie_nfe, b_utiliza_controle_ambiente=:b_utiliza_controle_am' +
        'biente,'
      
        '  b_permite_fechamento_caixa_venda_pag_antecipado = :b_permite_f' +
        'echamento_caixa_venda_pag_antecipado,'
      
        '  id_conta_padrao_cpagar_nfe = :id_conta_padrao_cpagar_nfe, camp' +
        'o_doc_cliente_cnoturna = :campo_doc_cliente_cnoturna,margem_prec' +
        'o_prazo=:margem_preco_prazo,'
      
        '  b_atualiza_custo_material_composicao = :b_atualiza_custo_mater' +
        'ial_composicao,'
      
        '  b_permite_troco_todas_formas = :b_permite_troco_todas_formas, ' +
        'b_considera_rendimento_entrada_composicao = :b_considera_rendime' +
        'nto_entrada_composicao, '
      '  tempo_espera_delivery=:tempo_espera_delivery,'
      '  tipo_calculo_juros = :tipo_calculo_juros, '
      '  juros_mora_valor = :juros_mora_valor, '
      
        '  juros_mora_percent = :juros_mora_percent,inserir_custos_impost' +
        'os_importacao_nfe=:inserir_custos_impostos_importacao_nfe,'
      
        '  b_buscar_valores_fechamento_caixa =:b_buscar_valores_fechament' +
        'o_caixa,b_pdv_nao_coletivo =:b_pdv_nao_coletivo,'
      
        '  utiliza_ifood = :utiliza_ifood, cliente_id_ifood = :cliente_id' +
        '_ifood, cliente_secret_ifood = :cliente_secret_ifood,'
      
        '  username_ifood = :username_ifood, password_ifood = :password_i' +
        'food, usuario_dropbox = :usuario_dropbox,'
      '  senha_dropbox = :senha_dropbox, celular =:celular'
      'WHERE'
      '  emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM empresas'
      'WHERE'
      '  emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, emp_002, emp_003, emp_004, emp_005, emp_006, emp' +
        '_007, emp_008, cep_004, cep_003, cid_001, cep_002, emp_011, emp_' +
        '012, usu_001_1, usu_001_2, dat_001_1, dat_001_2, emp_013, emp_01' +
        '4 FROM empresas'
      'WHERE'
      '  emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT '
      'EMP.EMP_001,'
      'EMP.EMP_002,'
      'EMP.EMP_003,'
      'EMP.EMP_004,'
      'EMP.EMP_005,'
      'EMP.EMP_006,'
      'EMP.EMP_007,'
      'EMP.EMP_008,'
      'EMP.CEP_004,'
      'EMP.CEP_003,'
      'EMP.EMP_011,'
      'EMP.DAT_001_1,'
      'EMP.DAT_001_2,'
      'EMP.USU_001_1,'
      'EMP.USU_001_2,'
      'USU_1.USU_002 AS INCLUSAO,'
      'USU_2.USU_002 AS EDICAO,'
      'EMP.CID_001,'
      'CID.CID_002,'
      'CID.CID_003 as cod_ibge,'
      'EST.EST_003,'
      'PAI.PAI_002,'
      'EMP.CEP_002,'
      'CAST(FN_SITUACOES(EMP.SIT_001)  AS VARCHAR(40)) AS SITUACAO,'
      'EMP.EMP_012,'
      'EMP.EMP_013,'
      'EMP.EMP_014,'
      'EMP.CRT_CODIGO,'
      'emp.taxadeliverypadrao,'
      'emp.b_pdv_coletivo,'
      'emp.b_permite_fechamento_caixa_venda_aberta,'
      'emp.numero_comanda_inicio,'
      'emp.numero_comanda_fim, '
      'emp.numero_nfce,'
      'emp.serie_nfce,'
      'emp.b_utiliza_controle_cliente,'
      'emp.b_permite_fechamento_caixa_outro_usuario,'
      'emp.taxa_juros,'
      'emp.numero_nfe,'
      'emp.serie_nfe ,'
      'emp.b_utiliza_controle_ambiente,'
      'emp.b_permite_fechamento_caixa_venda_pag_antecipado,'
      'emp.id_conta_padrao_cpagar_nfe,'
      'emp.campo_doc_cliente_cnoturna,'
      'emp.margem_preco_prazo,'
      'emp.b_atualiza_custo_material_composicao,'
      'emp.b_permite_troco_todas_formas,'
      'emp.b_considera_rendimento_entrada_composicao,'
      'emp.tempo_espera_delivery,'
      'emp.tipo_calculo_juros,'
      'emp.juros_mora_valor,'
      'emp.juros_mora_percent,'
      'emp.inserir_custos_impostos_importacao_nfe,'
      'emp.b_buscar_valores_fechamento_caixa,'
      'emp.b_pdv_nao_coletivo,'
      'emp.utiliza_ifood,'
      'emp.cliente_id_ifood,'
      'emp.cliente_secret_ifood,'
      'emp.username_ifood,'
      'emp.password_ifood,'
      'emp.usuario_dropbox,'
      'emp.senha_dropbox,'
      'emp.celular'
      ''
      'FROM EMPRESAS EMP'
      'LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = EMP.CID_001)'
      'LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001)'
      'LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = EMP.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = EMP.USU_001_2' +
        ')'
      ''
      'WHERE EMP_001 = :ID')
    AfterOpen = qrEmpresaAfterOpen
    Left = 672
    Top = 450
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object qrEmpresaemp_001: TIntegerField
      DisplayLabel = 'ID Empresa'
      FieldName = 'emp_001'
      Required = True
    end
    object qrEmpresaemp_002: TWideStringField
      FieldName = 'emp_002'
      Required = True
      Size = 80
    end
    object qrEmpresaemp_003: TWideStringField
      FieldName = 'emp_003'
      Size = 80
    end
    object qrEmpresaemp_004: TWideStringField
      FieldName = 'emp_004'
      Required = True
    end
    object qrEmpresaemp_005: TWideStringField
      FieldName = 'emp_005'
    end
    object qrEmpresaemp_006: TWideStringField
      FieldName = 'emp_006'
    end
    object qrEmpresaemp_008: TWideStringField
      FieldName = 'emp_008'
      Size = 10
    end
    object qrEmpresadat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrEmpresadat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrEmpresausu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrEmpresausu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrEmpresainclusao: TWideStringField
      FieldName = 'inclusao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrEmpresaedicao: TWideStringField
      FieldName = 'edicao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrEmpresacid_001: TIntegerField
      FieldName = 'cid_001'
      OnChange = qrEmpresacid_001Change
    end
    object qrEmpresaest_003: TWideStringField
      FieldName = 'est_003'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object qrEmpresapai_002: TWideStringField
      FieldName = 'pai_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrEmpresacid_002: TWideStringField
      FieldName = 'cid_002'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrEmpresacep_002: TWideStringField
      FieldName = 'cep_002'
      OnChange = qrEmpresacep_002Change
      Size = 9
    end
    object qrEmpresaemp_007: TWideStringField
      FieldName = 'emp_007'
      Size = 10
    end
    object qrEmpresaemp_011: TBlobField
      FieldName = 'emp_011'
    end
    object qrEmpresaemp_012: TIntegerField
      FieldName = 'emp_012'
      Required = True
    end
    object qrEmpresacep_004: TWideStringField
      FieldName = 'cep_004'
      Size = 125
    end
    object qrEmpresacep_003: TWideStringField
      FieldName = 'cep_003'
      Size = 50
    end
    object qrEmpresasituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 40
    end
    object qrEmpresaemp_013: TWideStringField
      FieldName = 'emp_013'
      Size = 15
    end
    object qrEmpresaemp_014: TWideStringField
      FieldName = 'emp_014'
      Size = 80
    end
    object qrEmpresacrt_codigo: TIntegerField
      DisplayLabel = 'Regime Tribut'#225'rio'
      FieldName = 'crt_codigo'
    end
    object qrEmpresataxadeliverypadrao: TFloatField
      DisplayLabel = 'Taxa delivery padr'#227'o'
      FieldName = 'taxadeliverypadrao'
      currency = True
    end
    object qrEmpresab_pdv_coletivo: TBooleanField
      FieldName = 'b_pdv_coletivo'
    end
    object qrEmpresab_permite_fechamento_caixa_venda_aberta: TBooleanField
      FieldName = 'b_permite_fechamento_caixa_venda_aberta'
    end
    object qrEmpresanumero_comanda_inicio: TIntegerField
      FieldName = 'numero_comanda_inicio'
    end
    object qrEmpresanumero_comanda_fim: TIntegerField
      FieldName = 'numero_comanda_fim'
    end
    object qrEmpresanumero_nfce: TIntegerField
      DisplayLabel = #218'ltima nota'
      FieldName = 'numero_nfce'
      Required = True
    end
    object qrEmpresaserie_nfce: TIntegerField
      FieldName = 'serie_nfce'
      Required = True
    end
    object qrEmpresacod_ibge: TWideStringField
      FieldName = 'cod_ibge'
      Size = 10
    end
    object qrEmpresab_utiliza_controle_cliente: TBooleanField
      FieldName = 'b_utiliza_controle_cliente'
      Required = True
    end
    object qrEmpresab_permite_fechamento_caixa_outro_usuario: TBooleanField
      FieldName = 'b_permite_fechamento_caixa_outro_usuario'
      Required = True
    end
    object qrEmpresataxa_juros: TFloatField
      FieldName = 'taxa_juros'
      Required = True
      DisplayFormat = '0.00'
    end
    object qrEmpresanumero_nfe: TIntegerField
      FieldName = 'numero_nfe'
      Required = True
    end
    object qrEmpresaserie_nfe: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie_nfe'
      Required = True
    end
    object qrEmpresab_utiliza_controle_ambiente: TBooleanField
      FieldName = 'b_utiliza_controle_ambiente'
      Required = True
    end
    object qrEmpresab_permite_fechamento_caixa_venda_pag_antecipado: TBooleanField
      FieldName = 'b_permite_fechamento_caixa_venda_pag_antecipado'
      Required = True
    end
    object qrEmpresaid_conta_padrao_cpagar_nfe: TIntegerField
      FieldName = 'id_conta_padrao_cpagar_nfe'
      OnChange = qrEmpresaid_conta_padrao_cpagar_nfeChange
    end
    object qrEmpresacampo_doc_cliente_cnoturna: TWideStringField
      FieldName = 'campo_doc_cliente_cnoturna'
      OnChange = qrEmpresacampo_doc_cliente_cnoturnaChange
      Size = 1
    end
    object qrEmpresamargem_preco_prazo: TFloatField
      FieldName = 'margem_preco_prazo'
      Required = True
    end
    object qrEmpresab_atualiza_custo_material_composicao: TBooleanField
      FieldName = 'b_atualiza_custo_material_composicao'
      Required = True
    end
    object qrEmpresab_permite_troco_todas_formas: TBooleanField
      FieldName = 'b_permite_troco_todas_formas'
      Required = True
    end
    object qrEmpresab_considera_rendimento_entrada_composicao: TBooleanField
      FieldName = 'b_considera_rendimento_entrada_composicao'
      Required = True
    end
    object qrEmpresatempo_espera_delivery: TIntegerField
      FieldName = 'tempo_espera_delivery'
    end
    object qrEmpresatipo_calculo_juros: TIntegerField
      FieldName = 'tipo_calculo_juros'
      Required = True
      OnChange = qrEmpresatipo_calculo_jurosChange
    end
    object qrEmpresajuros_mora_valor: TFloatField
      FieldName = 'juros_mora_valor'
      Required = True
    end
    object qrEmpresajuros_mora_percent: TFloatField
      FieldName = 'juros_mora_percent'
      Required = True
    end
    object qrEmpresainserir_custos_impostos_importacao_nfe: TBooleanField
      FieldName = 'inserir_custos_impostos_importacao_nfe'
    end
    object qrEmpresab_buscar_valores_fechamento_caixa: TBooleanField
      FieldName = 'b_buscar_valores_fechamento_caixa'
      Required = True
    end
    object qrEmpresab_pdv_nao_coletivo: TBooleanField
      FieldName = 'b_pdv_nao_coletivo'
      Required = True
    end
    object qrEmpresautiliza_ifood: TBooleanField
      FieldName = 'utiliza_ifood'
      Required = True
    end
    object qrEmpresacliente_id_ifood: TWideStringField
      FieldName = 'cliente_id_ifood'
      Size = 50
    end
    object qrEmpresacliente_secret_ifood: TWideStringField
      FieldName = 'cliente_secret_ifood'
      Size = 50
    end
    object qrEmpresausername_ifood: TWideStringField
      FieldName = 'username_ifood'
      Size = 50
    end
    object qrEmpresapassword_ifood: TWideStringField
      FieldName = 'password_ifood'
      Size = 50
    end
    object qrEmpresausuario_dropbox: TWideStringField
      FieldName = 'usuario_dropbox'
      Size = 100
    end
    object qrEmpresasenha_dropbox: TWideStringField
      FieldName = 'senha_dropbox'
      Size = 100
    end
    object qrEmpresacelular: TWideStringField
      FieldName = 'celular'
    end
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = qrEmpresa
    Left = 712
    Top = 418
  end
  object qrListaRegimeTributario: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select distinct crt_codigo, crt_descricao from regime_tributario')
    Left = 696
    Top = 368
    object qrListaRegimeTributariocrt_codigo: TIntegerField
      FieldName = 'crt_codigo'
      Required = True
    end
    object qrListaRegimeTributariocrt_descricao: TWideStringField
      FieldName = 'crt_descricao'
      Size = 255
    end
  end
  object dsListaRegimeTributario: TDataSource
    AutoEdit = False
    DataSet = qrListaRegimeTributario
    Left = 464
    Top = 560
  end
  object repTesteImpressao: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41784.595344467600000000
    ReportOptions.LastChange = 42713.451345659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 794
    Top = 284
    Datasets = <>
    Variables = <>
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
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 85.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 264.567100000000000000
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 70.472480000000000000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 11.338590000000000000
          Top = 6.779530000000001000
          Width = 234.330860000000000000
          Height = 60.472480000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TESTE DE IMPRESS'#195'O'
            'Impressora: [sImpressora]'
            'Local: [sImpressoraLocal]'
            'Modo Gr'#225'fico')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line2: TfrxLineView
          Left = 11.338590000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 377
    Top = 439
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.WebServices.SSLType = LT_TLSv1_2
    Configuracoes.RespTec.IdCSRT = 0
    Left = 792
    Top = 344
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbFive
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 332
    Top = 584
  end
  object ACBrSAT: TACBrSAT
    Config.infCFe_versaoDadosEnt = 0.070000000000000010
    Config.ide_numeroCaixa = 0
    Config.ide_tpAmb = taProducao
    Config.emit_cRegTrib = RTSimplesNacional
    Config.emit_cRegTribISSQN = RTISSNenhum
    Config.emit_indRatISSQN = irNao
    Config.EhUTF8 = False
    Config.PaginaDeCodigo = 0
    Config.XmlSignLib = xsNone
    ConfigArquivos.PrefixoArqCFe = 'AD'
    ConfigArquivos.PrefixoArqCFeCanc = 'ADC'
    Rede.tipoInter = infETHE
    Rede.seg = segNONE
    Rede.tipoLan = lanDHCP
    Rede.proxy = 0
    Rede.proxy_porta = 0
    OnGetcodigoDeAtivacao = ACBrSATGetcodigoDeAtivacao
    OnGetsignAC = ACBrSATGetsignAC
    Left = 284
    Top = 576
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 796
    Top = 176
  end
  object ACBrSATExtratoESCPOS: TACBrSATExtratoESCPOS
    Sistema = 'OSFood'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    MsgAppQRCode = 
      'Consulte o QR Code pelo aplicativo  "De olho na nota", dispon'#237've' +
      'l na AppStore (Apple) e PlayStore (Android)'
    PosPrinter = ACBrPosPrinter
    Left = 684
    Top = 504
  end
  object ACBrSATExtratoFortes: TACBrSATExtratoFortes
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 4.000000000000000000
    MargemSuperior = 2.000000000000000000
    MargemEsquerda = 2.000000000000000000
    MargemDireita = 2.000000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    MsgAppQRCode = 
      'Consulte o QR Code pelo aplicativo  "De olho na nota", dispon'#237've' +
      'l na AppStore (Apple) e PlayStore (Android)'
    EspacoFinal = 5
    Left = 636
    Top = 592
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'COM1'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 568
    Top = 576
  end
  object ACBrTEFD1: TACBrTEFD
    EsperaSTS = 7
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFCliDTEF.ArqResp = ''
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    OnExibeMsg = ACBrTEFD1ExibeMsg
    OnComandaECF = ACBrTEFD1ComandaECF
    OnComandaECFSubtotaliza = ACBrTEFD1ComandaECFSubtotaliza
    OnComandaECFAbreVinculado = ACBrTEFD1ComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFD1ComandaECFImprimeVia
    OnInfoECF = ACBrTEFD1InfoECF
    Left = 604
    Top = 432
  end
  object JvFoto: TJvOpenDialog
    Filter = 
      'PNG Image File (*.png) |*.png|JPG Image File (*.jpg) |*.jpg|JPEG' +
      ' Image File (*.jpeg)|*.jpeg|BMP Image File (*.bmp) |*.bmp'
    Height = 0
    Width = 0
    Left = 576
    Top = 120
  end
end
