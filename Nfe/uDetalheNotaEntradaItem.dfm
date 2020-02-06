inherited frmDetalheNotaEntradaItem: TfrmDetalheNotaEntradaItem
  Caption = 'Nota Fiscal de Entrada - Item'
  ClientHeight = 682
  ClientWidth = 739
  ExplicitWidth = 745
  ExplicitHeight = 711
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 739
    Height = 633
    ExplicitWidth = 739
    ExplicitHeight = 633
    FullHeight = 200
    object Label1: TLabel
      Left = 548
      Top = 56
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBTextEdit2
    end
    object Label2: TLabel
      Left = 664
      Top = 56
      Width = 45
      Height = 16
      Caption = 'Estoque'
    end
    object Label3: TLabel
      Left = 284
      Top = 11
      Width = 44
      Height = 16
      Caption = 'Produto'
    end
    object Label4: TLabel
      Left = 284
      Top = 102
      Width = 46
      Height = 16
      Caption = 'Unidade'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 119
      Top = 102
      Width = 33
      Height = 16
      Caption = 'Serial'
      FocusControl = cxDBTextEdit4
    end
    object Label6: TLabel
      Left = 9
      Top = 102
      Width = 65
      Height = 16
      Caption = 'Numera'#231#227'o'
      FocusControl = cxDBTextEdit5
    end
    object Label8: TLabel
      Left = 336
      Top = 102
      Width = 26
      Height = 16
      Caption = 'NCM'
      FocusControl = cxDBTextEdit7
    end
    object Label9: TLabel
      Left = 458
      Top = 102
      Width = 79
      Height = 16
      Caption = 'Complemento'
      FocusControl = cxDBTextEdit8
    end
    object Label40: TLabel
      Left = 284
      Top = 56
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
    end
    object Label41: TLabel
      Left = 392
      Top = 11
      Width = 80
      Height = 16
      Caption = 'Mat'#233'ria prima'
    end
    object edIdMaterial: TcxDBButtonEdit
      Left = 284
      Top = 30
      DataBinding.DataField = 'codigo_material'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaMaterial
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 102
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 284
      Top = 76
      TabStop = False
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 1
      Width = 258
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 548
      Top = 76
      TabStop = False
      DataBinding.DataField = 'codigo_material'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 2
      Width = 110
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 664
      Top = 76
      TabStop = False
      DataBinding.DataField = 'estoque'
      DataBinding.DataSource = dsCadastro
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 3
      Width = 66
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 284
      Top = 124
      DataBinding.DataField = 'unidade'
      DataBinding.DataSource = dsCadastro
      TabOrder = 6
      Width = 46
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 119
      Top = 124
      DataBinding.DataField = 'serial'
      DataBinding.DataSource = dsCadastro
      TabOrder = 5
      Width = 159
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 9
      Top = 124
      DataBinding.DataField = 'numeracao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 4
      Width = 104
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 336
      Top = 124
      DataBinding.DataField = 'ncm'
      DataBinding.DataSource = dsCadastro
      TabOrder = 7
      Width = 116
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 458
      Top = 124
      DataBinding.DataField = 'complemento_descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 8
      Width = 272
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 9
      Top = 276
      Width = 272
      Height = 204
      BorderColor = clNavy
      Caption = 'Valores'
      TabOrder = 10
      object Label10: TLabel
        Left = 8
        Top = 28
        Width = 65
        Height = 16
        Caption = 'Quantidade'
      end
      object Label7: TLabel
        Left = 8
        Top = 55
        Width = 77
        Height = 16
        Caption = 'Valor unit'#225'rio'
      end
      object Label11: TLabel
        Left = 8
        Top = 174
        Width = 29
        Height = 16
        Caption = 'Total'
      end
      object Label15: TLabel
        Left = 8
        Top = 111
        Width = 52
        Height = 16
        Caption = 'Desconto'
      end
      object Label16: TLabel
        Left = 8
        Top = 83
        Width = 47
        Height = 16
        Caption = 'Subtotal'
      end
      object Label25: TLabel
        Left = 8
        Top = 139
        Width = 96
        Height = 16
        Caption = 'Outras Despesas'
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 104
        Top = 24
        DataBinding.DataField = 'quantidade'
        DataBinding.DataSource = dsCadastro
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.000;-0.000'
        Properties.EditFormat = '0.000'
        TabOrder = 0
        Width = 156
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 104
        Top = 52
        DataBinding.DataField = 'valor_unitario'
        DataBinding.DataSource = dsCadastro
        TabOrder = 1
        Width = 156
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 139
        Top = 164
        DataBinding.DataField = 'valor_total'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 121
      end
      object edDesconto: TcxDBCurrencyEdit
        Left = 180
        Top = 108
        DataBinding.DataField = 'valor_desconto'
        DataBinding.DataSource = dsCadastro
        TabOrder = 4
        Width = 80
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 104
        Top = 80
        DataBinding.DataField = 'valor_subtotal'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.TransparentBorder = True
        TabOrder = 2
        Width = 156
      end
      object edDespesas: TcxDBCurrencyEdit
        Left = 104
        Top = 136
        DataBinding.DataField = 'valor_despesas'
        DataBinding.DataSource = dsCadastro
        TabOrder = 5
        Width = 156
      end
      object JvValidateEdit1: TJvValidateEdit
        Left = 104
        Top = 108
        Width = 70
        Height = 22
        Color = 14997705
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        EditText = '0,00'
        MaxValue = 100.000000000000000000
        ReadOnly = True
        TabOrder = 3
        DataConnector.DataSource = jvdsCadastro
        DataConnector.DataField = 'valor_desconto_perc'
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 287
      Top = 276
      Width = 443
      Height = 82
      BorderColor = clNavy
      Caption = 'ICMS'
      TabOrder = 13
      object Label17: TLabel
        Left = 8
        Top = 27
        Width = 80
        Height = 16
        Caption = 'Al'#237'quota ICMS'
      end
      object Label18: TLabel
        Left = 8
        Top = 55
        Width = 90
        Height = 16
        Caption = 'Base de C'#225'lculo'
      end
      object Label19: TLabel
        Left = 205
        Top = 27
        Width = 49
        Height = 16
        Caption = 'Redu'#231#227'o'
      end
      object Label20: TLabel
        Left = 205
        Top = 55
        Width = 82
        Height = 16
        Caption = 'Valor do ICMS'
      end
      object cxDBCurrencyEdit8: TcxDBCurrencyEdit
        Left = 104
        Top = 24
        DataBinding.DataField = 'icms_aliq'
        DataBinding.DataSource = dsCadastro
        Properties.DisplayFormat = '0.00;-0.00'
        TabOrder = 0
        Width = 95
      end
      object cxDBCurrencyEdit9: TcxDBCurrencyEdit
        Left = 104
        Top = 52
        DataBinding.DataField = 'valor_base_icms'
        DataBinding.DataSource = dsCadastro
        TabOrder = 1
        Width = 95
      end
      object cxDBCurrencyEdit10: TcxDBCurrencyEdit
        Left = 293
        Top = 52
        DataBinding.DataField = 'valor_icms'
        DataBinding.DataSource = dsCadastro
        TabOrder = 3
        Width = 95
      end
      object cxDBCurrencyEdit11: TcxDBCurrencyEdit
        Left = 293
        Top = 24
        DataBinding.DataField = 'icms_aliq_reducao'
        DataBinding.DataSource = dsCadastro
        TabOrder = 2
        Width = 95
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 154
      Width = 721
      Height = 116
      BorderColor = clNavy
      Caption = 'Classifica'#231#227'o'
      TabOrder = 9
      object Label12: TLabel
        Left = 8
        Top = 27
        Width = 24
        Height = 16
        Caption = 'CST'
      end
      object Label13: TLabel
        Left = 8
        Top = 57
        Width = 31
        Height = 16
        Caption = 'CFOP'
      end
      object Label14: TLabel
        Left = 8
        Top = 87
        Width = 41
        Height = 16
        Caption = 'CSOSN'
      end
      object Label37: TLabel
        Left = 359
        Top = 27
        Width = 47
        Height = 16
        Caption = 'CST PIS'
      end
      object Label38: TLabel
        Left = 359
        Top = 57
        Width = 72
        Height = 16
        Caption = 'CST COFINS'
      end
      object Label39: TLabel
        Left = 359
        Top = 87
        Width = 31
        Height = 16
        Caption = 'CEST'
      end
      object edCST: TcxDBButtonEdit
        Left = 55
        Top = 24
        DataBinding.DataField = 'cst'
        DataBinding.DataSource = dsCadastro
        Properties.Buttons = <
          item
            Action = acBuscaCST
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 0
        Width = 78
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 139
        Top = 24
        TabStop = False
        DataBinding.DataField = 'cst_descricao'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 1
        Width = 212
      end
      object edCFOP: TcxDBButtonEdit
        Left = 55
        Top = 54
        DataBinding.DataField = 'cfop'
        DataBinding.DataSource = dsCadastro
        Properties.Buttons = <
          item
            Action = acBuscaCFOP
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 2
        Width = 78
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 139
        Top = 56
        TabStop = False
        DataBinding.DataField = 'cfop_descricao'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 3
        Width = 212
      end
      object edCSOSN: TcxDBButtonEdit
        Left = 55
        Top = 84
        DataBinding.DataField = 'csosn'
        DataBinding.DataSource = dsCadastro
        Properties.Buttons = <
          item
            Action = acBuscaCSOSN
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 4
        Width = 78
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 139
        Top = 84
        TabStop = False
        DataBinding.DataField = 'cso_descricao'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 5
        Width = 212
      end
      object edCSTPIS: TcxDBButtonEdit
        Left = 432
        Top = 24
        DataBinding.DataField = 'cst_pis'
        DataBinding.DataSource = dsCadastro
        Properties.Buttons = <
          item
            Action = acBuscaCSTPIS
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 6
        Width = 78
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 516
        Top = 24
        TabStop = False
        DataBinding.DataField = 'cst_pis_descricao'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 7
        Width = 194
      end
      object edCSTCofins: TcxDBButtonEdit
        Left = 432
        Top = 54
        DataBinding.DataField = 'cst_cofins'
        DataBinding.DataSource = dsCadastro
        Properties.Buttons = <
          item
            Action = acBuscaCSTCOFINS
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 8
        Width = 78
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 516
        Top = 54
        TabStop = False
        DataBinding.DataField = 'cst_cofins_descricao'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 9
        Width = 194
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 432
        Top = 84
        DataBinding.DataField = 'cest'
        DataBinding.DataSource = dsCadastro
        Properties.Buttons = <
          item
            Action = acBuscaCEST
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 10
        Width = 78
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 516
        Top = 84
        TabStop = False
        DataBinding.DataField = 'cest_descricao'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 11
        Width = 194
      end
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 287
      Top = 364
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'Substitui'#231#227'o Tribut'#225'ria'
      TabOrder = 14
      object Label21: TLabel
        Left = 8
        Top = 27
        Width = 26
        Height = 16
        Caption = 'MVA'
      end
      object Label22: TLabel
        Left = 104
        Top = 27
        Width = 90
        Height = 16
        Caption = 'Base de C'#225'lculo'
      end
      object Label24: TLabel
        Left = 301
        Top = 27
        Width = 30
        Height = 16
        Caption = 'Valor'
      end
      object cxDBCurrencyEdit12: TcxDBCurrencyEdit
        Left = 40
        Top = 24
        DataBinding.DataField = 'mvast'
        DataBinding.DataSource = dsCadastro
        Properties.DisplayFormat = '0.00;-0.00'
        TabOrder = 0
        Width = 58
      end
      object cxDBCurrencyEdit13: TcxDBCurrencyEdit
        Left = 200
        Top = 24
        DataBinding.DataField = 'valor_base_icms_sub'
        DataBinding.DataSource = dsCadastro
        TabOrder = 1
        Width = 95
      end
      object cxDBCurrencyEdit14: TcxDBCurrencyEdit
        Left = 337
        Top = 24
        DataBinding.DataField = 'valor_icms_sub'
        DataBinding.DataSource = dsCadastro
        TabOrder = 2
        Width = 95
      end
    end
    object AdvGroupBox7: TAdvGroupBox
      Left = 287
      Top = 424
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'IPI'
      TabOrder = 15
      object Label26: TLabel
        Left = 203
        Top = 27
        Width = 46
        Height = 16
        Caption = 'Al'#237'quota'
      end
      object Label27: TLabel
        Left = 317
        Top = 28
        Width = 30
        Height = 16
        Caption = 'Valor'
      end
      object Label36: TLabel
        Left = 8
        Top = 27
        Width = 88
        Height = 16
        Caption = 'Base de c'#225'lculo'
      end
      object cxDBCurrencyEdit17: TcxDBCurrencyEdit
        Left = 255
        Top = 24
        DataBinding.DataField = 'ipi_aliq'
        DataBinding.DataSource = dsCadastro
        Properties.DisplayFormat = '0.00;-0.00'
        TabOrder = 1
        Width = 56
      end
      object cxDBCurrencyEdit18: TcxDBCurrencyEdit
        Left = 353
        Top = 25
        DataBinding.DataField = 'valor_ipi'
        DataBinding.DataSource = dsCadastro
        TabOrder = 2
        Width = 79
      end
      object cxDBCurrencyEdit27: TcxDBCurrencyEdit
        Left = 102
        Top = 24
        DataBinding.DataField = 'valor_base_ipi'
        DataBinding.DataSource = dsCadastro
        TabOrder = 0
        Width = 95
      end
    end
    object AdvGroupBox8: TAdvGroupBox
      Left = 9
      Top = 486
      Width = 272
      Height = 85
      BorderColor = clNavy
      Caption = 'Peso Unit'#225'rio'
      TabOrder = 11
      object Label28: TLabel
        Left = 8
        Top = 27
        Width = 61
        Height = 16
        Caption = 'Peso Bruto'
      end
      object Label29: TLabel
        Left = 8
        Top = 55
        Width = 71
        Height = 16
        Caption = 'Peso Liqu'#237'do'
      end
      object edPesoBruto: TcxDBCurrencyEdit
        Left = 104
        Top = 24
        DataBinding.DataField = 'peso_unitario_bruto'
        DataBinding.DataSource = dsCadastro
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.000;-0.000'
        TabOrder = 0
        Width = 95
      end
      object edPesoLiquido: TcxDBCurrencyEdit
        Left = 104
        Top = 52
        DataBinding.DataField = 'peso_unitario_liquido'
        DataBinding.DataSource = dsCadastro
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.000;-0.000'
        TabOrder = 1
        Width = 95
      end
    end
    object AdvGroupBox9: TAdvGroupBox
      Left = 287
      Top = 488
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'PIS'
      TabOrder = 16
      object Label30: TLabel
        Left = 7
        Top = 27
        Width = 88
        Height = 16
        Caption = 'Base de c'#225'lculo'
      end
      object Label31: TLabel
        Left = 202
        Top = 27
        Width = 46
        Height = 16
        Caption = 'Al'#237'quota'
      end
      object Label32: TLabel
        Left = 316
        Top = 27
        Width = 30
        Height = 16
        Caption = 'Valor'
      end
      object cxDBCurrencyEdit21: TcxDBCurrencyEdit
        Left = 101
        Top = 24
        DataBinding.DataField = 'valor_base_pis_cofins'
        DataBinding.DataSource = dsCadastro
        TabOrder = 0
        Width = 95
      end
      object cxDBCurrencyEdit22: TcxDBCurrencyEdit
        Left = 254
        Top = 24
        DataBinding.DataField = 'pis_aliq'
        DataBinding.DataSource = dsCadastro
        Properties.DisplayFormat = '0.00;-0.00'
        TabOrder = 1
        Width = 56
      end
      object cxDBCurrencyEdit23: TcxDBCurrencyEdit
        Left = 353
        Top = 24
        DataBinding.DataField = 'valor_pis'
        DataBinding.DataSource = dsCadastro
        TabOrder = 2
        Width = 79
      end
    end
    object AdvGroupBox5: TAdvGroupBox
      Left = 9
      Top = 577
      Width = 272
      Height = 55
      BorderColor = clNavy
      Caption = 'Isentas'
      TabOrder = 12
      object Label23: TLabel
        Left = 8
        Top = 27
        Width = 41
        Height = 16
        Caption = 'Isentas'
      end
      object cxDBCurrencyEdit15: TcxDBCurrencyEdit
        Left = 104
        Top = 24
        DataBinding.DataField = 'valor_icms_isento'
        DataBinding.DataSource = dsCadastro
        TabOrder = 0
        Width = 95
      end
    end
    object AdvGroupBox10: TAdvGroupBox
      Left = 287
      Top = 554
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'COFINS'
      TabOrder = 17
      object Label33: TLabel
        Left = 8
        Top = 27
        Width = 88
        Height = 16
        Caption = 'Base de c'#225'lculo'
      end
      object Label34: TLabel
        Left = 203
        Top = 27
        Width = 46
        Height = 16
        Caption = 'Al'#237'quota'
      end
      object Label35: TLabel
        Left = 317
        Top = 27
        Width = 30
        Height = 16
        Caption = 'Valor'
      end
      object cxDBCurrencyEdit24: TcxDBCurrencyEdit
        Left = 102
        Top = 24
        DataBinding.DataField = 'valor_base_pis_cofins'
        DataBinding.DataSource = dsCadastro
        TabOrder = 0
        Width = 95
      end
      object cxDBCurrencyEdit25: TcxDBCurrencyEdit
        Left = 255
        Top = 24
        DataBinding.DataField = 'cofins_aliq'
        DataBinding.DataSource = dsCadastro
        Properties.DisplayFormat = '0.00;-0.00'
        TabOrder = 1
        Width = 56
      end
      object cxDBCurrencyEdit26: TcxDBCurrencyEdit
        Left = 353
        Top = 24
        DataBinding.DataField = 'valor_cofins'
        DataBinding.DataSource = dsCadastro
        TabOrder = 2
        Width = 79
      end
    end
    object edIdComposicao: TcxDBButtonEdit
      Left = 392
      Top = 30
      DataBinding.DataField = 'id_composicao'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaComposicao
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 104
    end
    object rgTipoItem: TcxDBRadioGroup
      Left = 9
      Top = 8
      Caption = 'Tipo de Item'
      DataBinding.DataField = 'tipo_item'
      DataBinding.DataSource = dsCadastro
      Properties.Items = <
        item
          Caption = 'Produto'
          Value = 'M'
        end
        item
          Caption = 'Mat'#233'ria prima (Composi'#231#227'o / Ingrediente)'
          Value = 'C'
        end>
      Style.BorderColor = clNavy
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      TabOrder = 19
      OnClick = rgTipoItemClick
      Height = 73
      Width = 269
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 633
    Width = 739
    ExplicitTop = 633
    ExplicitWidth = 739
    inherited btCancelar: TAdvGlowButton
      Left = 632
      Appearance.BorderColor = clNavy
      ExplicitLeft = 632
    end
    inherited btSalvar: TAdvGlowButton
      Left = 525
      Appearance.BorderColor = clNavy
      ExplicitLeft = 525
    end
    inherited btExcluir: TAdvGlowButton
      Left = 418
      Appearance.BorderColor = clNavy
      ExplicitLeft = 418
    end
    inherited btEditar: TAdvGlowButton
      Left = 311
      Appearance.BorderColor = clNavy
      ExplicitLeft = 311
    end
    inherited btNovo: TAdvGlowButton
      Left = 204
      Appearance.BorderColor = clNavy
      ExplicitLeft = 204
    end
    object btCadastrarProduto: TAdvGlowButton
      AlignWithMargins = True
      Left = 50
      Top = 3
      Width = 151
      Height = 41
      Margins.Left = 0
      Caption = 'Cadastrar Produto'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btCadastrarProdutoClick
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
  inherited dsCadastro: TDataSource
    Left = 688
    Top = 352
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO nota_entrada_item'
      
        '  (id_nota_entrada, id_empresa, item, id_material, codigo_fornec' +
        'edor, descricao_fornecedor, codigo_ean, cst, cfop, '
      
        '   quantidade, peso_unitario_liquido, peso_unitario_bruto, valor' +
        '_unitario, valor_total, valor_frete, '
      
        '   valor_seguro, valor_despesas, icms_aliq, icms_aliq_reducao, v' +
        'alor_base_icms, valor_icms, '
      
        '   icms_aliq_sub, valor_base_icms_sub, valor_icms_sub, valor_icm' +
        's_isento, valor_icms_nao_trib, valor_desconto, '
      
        '   tipo_ipi, ipi_aliq, pis_aliq, cofins_aliq, valor_base_ipi, va' +
        'lor_base_pis_cofins, valor_ipi, id_situacao, ncm, '
      
        '   valor_pis, valor_cofins, unidade, serial, numeracao, compleme' +
        'nto_descricao, cest, csosn, cst_pis, cst_cofins, '
      '   mvast, id_composicao, tipo_item)'
      'VALUES'
      
        '  (:id_nota_entrada, :id_empresa, :item, :id_material, :codigo_f' +
        'ornecedor, :descricao, :codigo_ean, :cst, :cfop, '
      
        '   :quantidade, :peso_unitario_liquido, :peso_unitario_bruto, :v' +
        'alor_unitario, :valor_total, :valor_frete, '
      
        '   :valor_seguro, :valor_despesas, :icms_aliq, :icms_aliq_reduca' +
        'o, :valor_base_icms, :valor_icms, '
      
        '   :icms_aliq_sub, :valor_base_icms_sub, :valor_icms_sub, :valor' +
        '_icms_isento, :valor_icms_nao_trib, :valor_desconto, '
      
        '   :tipo_ipi, :ipi_aliq, :pis_aliq, :cofins_aliq, :valor_base_ip' +
        'i, :valor_base_pis_cofins, :valor_ipi, :id_situacao, :ncm, '
      
        '   :valor_pis, :valor_cofins, :unidade, :serial, :numeracao, :co' +
        'mplemento_descricao, :cest, :csosn, :cst_pis, :cst_cofins, '
      '   :mvast, :id_composicao, :tipo_item)')
    SQLDelete.Strings = (
      'DELETE FROM nota_entrada_item'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item')
    SQLUpdate.Strings = (
      'UPDATE nota_entrada_item'
      'SET'
      
        '  id_nota_entrada = :id_nota_entrada, id_empresa = :id_empresa, ' +
        'item = :item, id_material = :id_material, codigo_fornecedor = :c' +
        'odigo_fornecedor,'
      
        '  descricao_fornecedor = :descricao, codigo_ean = :codigo_ean, c' +
        'st = :cst, cfop = :cfop, quantidade = :quantidade, '
      
        '  peso_unitario_liquido = :peso_unitario_liquido, peso_unitario_' +
        'bruto = :peso_unitario_bruto, valor_unitario = :valor_unitario, '
      
        '  valor_total = :valor_total, valor_frete = :valor_frete, valor_' +
        'seguro = :valor_seguro, valor_despesas = :valor_despesas, '
      
        '  icms_aliq = :icms_aliq, icms_aliq_reducao = :icms_aliq_reducao' +
        ', valor_base_icms = :valor_base_icms, valor_icms = :valor_icms, '
      
        '  icms_aliq_sub = :icms_aliq_sub, valor_base_icms_sub = :valor_b' +
        'ase_icms_sub, valor_icms_sub = :valor_icms_sub, '
      
        '  valor_icms_isento = :valor_icms_isento, valor_icms_nao_trib = ' +
        ':valor_icms_nao_trib, valor_desconto = :valor_desconto, '
      
        '  tipo_ipi = :tipo_ipi, ipi_aliq = :ipi_aliq, pis_aliq = :pis_al' +
        'iq, cofins_aliq = :cofins_aliq, valor_base_ipi = :valor_base_ipi' +
        ', '
      
        '  valor_base_pis_cofins = :valor_base_pis_cofins, valor_ipi = :v' +
        'alor_ipi, id_situacao = :id_situacao, ncm = :ncm, '
      
        '  valor_pis = :valor_pis, valor_cofins = :valor_cofins, unidade ' +
        '= :unidade, serial = :serial, numeracao = :numeracao, '
      
        '  complemento_descricao = :complemento_descricao, cest = :cest, ' +
        'csosn = :csosn, cst_pis = :cst_pis, cst_cofins = :cst_cofins, '
      
        '  mvast = :mvast, id_composicao = :id_composicao , tipo_item = :' +
        'tipo_item'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item')
    SQLLock.Strings = (
      'SELECT * FROM nota_entrada_item'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada AND item = :Old_item'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_entrada, id_empresa, item, id_material, codigo_fo' +
        'rnecedor, descricao_fornecedor, codigo_ean, cst, cfop, quantidad' +
        'e, peso_unitario_liquido, peso_unitario_bruto, valor_unitario, v' +
        'alor_total, valor_frete, valor_seguro, valor_despesas, icms_aliq' +
        ', icms_aliq_reducao, valor_base_icms, valor_icms, icms_aliq_sub,' +
        ' valor_base_icms_sub, valor_icms_sub, valor_icms_isento, valor_i' +
        'cms_nao_trib, valor_desconto, tipo_ipi, ipi_aliq, pis_aliq, cofi' +
        'ns_aliq, valor_base_ipi, valor_base_pis_cofins, valor_ipi, id_si' +
        'tuacao, ncm, valor_pis, valor_cofins, unidade, serial, numeracao' +
        ', complemento_descricao, cest, csosn, cst_pis, cst_cofins, mvast' +
        ' FROM nota_entrada_item'
      'WHERE'
      '  id_nota_entrada = :id_nota_entrada AND item = :item')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM nota_entrada_item'
      ''
      ') t')
    SQL.Strings = (
      'select'
      'nei.id_nota_entrada,'
      'nei.id_empresa,'
      'nei.item,'
      'nei.id_material,'
      'nei.cst,'
      'nei.cfop,'
      'nei.quantidade,'
      'nei.peso_unitario_liquido,'
      'nei.peso_unitario_bruto,'
      'nei.valor_unitario,'
      'nei.valor_total,'
      'nei.valor_frete,'
      'nei.valor_seguro,'
      'nei.valor_despesas,'
      'nei.icms_aliq,'
      'nei.icms_aliq_reducao,'
      'nei.valor_base_icms,'
      'nei.valor_icms,'
      'nei.icms_aliq_sub,'
      'nei.valor_base_icms_sub,'
      'nei.valor_icms_sub,'
      'nei.valor_icms_isento,'
      'nei.valor_icms_nao_trib,'
      'nei.tipo_ipi,'
      'nei.ipi_aliq,'
      'nei.valor_base_ipi,'
      'nei.valor_ipi,'
      'nei.id_situacao,'
      'coalesce(nei.ncm, m.ncm) as ncm,'
      'nei.valor_pis,'
      'nei.valor_cofins,'
      'coalesce(nei.unidade, u.uni_003) as unidade,'
      'nei.serial,'
      'nei.numeracao,'
      'nei.complemento_descricao,'
      
        'cast(coalesce(nei.descricao_fornecedor, m.mat_003) as varchar(20' +
        '0))as descricao, '
      'm.mat_004 as codigo_material,'
      'stm.quantidade as estoque,'
      'cst.icm_descricao as cst_descricao,'
      'cfop.cfop_descricao,'
      'cst_pis.pis_descricao as cst_pis_descricao, '
      'cst_cofins.cof_descricao as cst_cofins_descricao, '
      'nei.codigo_fornecedor,'
      'nei.codigo_ean,'
      'nei.csosn,'
      'csosn.cso_descricao,'
      'nei.valor_desconto,'
      'cest.cest_descricao,'
      ''
      'case when (nei.valor_unitario * nei.quantidade) <=0 then 0.0'
      
        'else (nei.valor_desconto/ ((nei.valor_unitario * nei.quantidade)' +
        '+nei.valor_despesas))*100 end'
      'as valor_desconto_perc,'
      'nei.valor_base_pis_cofins,'
      'nei.cofins_aliq,'
      'nei.pis_aliq,'
      'nei.cst_pis,'
      'nei.cst_cofins,'
      'nei.cest,'
      'nei.mvast,'
      'nei.id_composicao, '
      'nei.tipo_item'
      ''
      'from nota_entrada_item nei'
      
        'left join materiais m on nei.id_material = m.mat_001 and nei.id_' +
        'empresa = m.emp_001'
      
        'left join unidades u on m.uni_001=u.uni_001 and m.emp_001=u.emp_' +
        '001'
      'left join cst_icms cst on nei.cst=cst.icm_codigo'
      'left join cfop on cfop.cfop_codigo = nei.cfop'
      'left join csosn_icms csosn on csosn.cso_codigo=nei.csosn'
      
        'left join cst_pis on cst_pis.pis_codigo = nei.cst_pis and cst_pi' +
        's.emp_001=nei.id_empresa '
      
        'left join cst_cofins on cst_cofins.cof_codigo = nei.cst_cofins a' +
        'nd cst_cofins.emp_001=nei.id_empresa '
      'left join cest on cest.cest_codigo=nei.cest'
      
        'left join setor_estoque_material stm on stm.id_material=m.mat_00' +
        '1 and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor '
      ''
      
        'where nei.id_nota_entrada = :id_nota_entrada and nei.id_empresa ' +
        '= :id_empresa and  nei.item = :item')
    Options.DefaultValues = True
    OnCalcFields = qrCadastroCalcFields
    OnNewRecord = qrCadastroNewRecord
    Left = 688
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_entrada'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item'
        Value = nil
      end>
    object qrCadastroid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrCadastroid_material: TIntegerField
      FieldName = 'id_material'
      OnChange = qrCadastroid_materialChange
    end
    object qrCadastrocst: TIntegerField
      FieldName = 'cst'
      OnChange = qrCadastrocstChange
    end
    object qrCadastrocfop: TWideStringField
      FieldName = 'cfop'
      OnChange = qrCadastrocfopChange
      Size = 4
    end
    object qrCadastroquantidade: TFloatField
      DefaultExpression = '1'
      FieldName = 'quantidade'
      Required = True
    end
    object qrCadastropeso_unitario_liquido: TFloatField
      DefaultExpression = '0'
      FieldName = 'peso_unitario_liquido'
      Required = True
    end
    object qrCadastropeso_unitario_bruto: TFloatField
      DefaultExpression = '0'
      FieldName = 'peso_unitario_bruto'
      Required = True
    end
    object qrCadastrovalor_unitario: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_unitario'
      Required = True
      OnChange = qrCadastrovalor_unitarioChange
    end
    object qrCadastrovalor_total: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_total'
      Required = True
    end
    object qrCadastrovalor_frete: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_frete'
      Required = True
    end
    object qrCadastrovalor_seguro: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_seguro'
      Required = True
    end
    object qrCadastrovalor_despesas: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_despesas'
      Required = True
    end
    object qrCadastroicms_aliq: TFloatField
      DefaultExpression = '0'
      FieldName = 'icms_aliq'
      Required = True
    end
    object qrCadastroicms_aliq_reducao: TFloatField
      DefaultExpression = '0'
      FieldName = 'icms_aliq_reducao'
      Required = True
    end
    object qrCadastrovalor_base_icms: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_base_icms'
      Required = True
      OnChange = qrCadastrovalor_base_icmsChange
    end
    object qrCadastrovalor_icms: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_icms'
      Required = True
    end
    object qrCadastroicms_aliq_sub: TFloatField
      DefaultExpression = '0'
      FieldName = 'icms_aliq_sub'
      Required = True
    end
    object qrCadastrovalor_base_icms_sub: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_base_icms_sub'
      Required = True
      OnChange = qrCadastrovalor_base_icms_subChange
    end
    object qrCadastrovalor_icms_sub: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_icms_sub'
      Required = True
    end
    object qrCadastrovalor_icms_isento: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_icms_isento'
      Required = True
    end
    object qrCadastrovalor_icms_nao_trib: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_icms_nao_trib'
      Required = True
    end
    object qrCadastrotipo_ipi: TIntegerField
      DefaultExpression = '0'
      FieldName = 'tipo_ipi'
      Required = True
    end
    object qrCadastroipi_aliq: TFloatField
      DefaultExpression = '0'
      FieldName = 'ipi_aliq'
      Required = True
    end
    object qrCadastrovalor_base_ipi: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_base_ipi'
      Required = True
      OnChange = qrCadastrovalor_base_ipiChange
    end
    object qrCadastrovalor_ipi: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_ipi'
      Required = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastroncm: TWideStringField
      FieldName = 'ncm'
      Size = 10
    end
    object qrCadastrovalor_pis: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_pis'
      Required = True
    end
    object qrCadastrovalor_cofins: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_cofins'
      Required = True
    end
    object qrCadastrounidade: TWideStringField
      FieldName = 'unidade'
      Required = True
      Size = 3
    end
    object qrCadastroserial: TWideStringField
      FieldName = 'serial'
      Size = 100
    end
    object qrCadastronumeracao: TWideStringField
      FieldName = 'numeracao'
      Size = 100
    end
    object qrCadastrocomplemento_descricao: TWideStringField
      FieldName = 'complemento_descricao'
      Size = 200
    end
    object qrCadastrodescricao_material: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 200
    end
    object qrCadastrocodigo_material: TWideStringField
      FieldName = 'codigo_material'
      OnChange = qrCadastrocodigo_materialChange
      Size = 50
    end
    object qrCadastroestoque: TFloatField
      FieldName = 'estoque'
      DisplayFormat = '0.000'
    end
    object qrCadastrocst_descricao: TWideStringField
      FieldName = 'cst_descricao'
      Size = 255
    end
    object qrCadastrocfop_descricao: TWideStringField
      FieldName = 'cfop_descricao'
      Size = 250
    end
    object qrCadastrocst_pis_descricao: TWideStringField
      FieldName = 'cst_pis_descricao'
      Size = 255
    end
    object qrCadastrocst_cofins_descricao: TWideStringField
      FieldName = 'cst_cofins_descricao'
      Size = 255
    end
    object qrCadastrocsosn: TIntegerField
      FieldName = 'csosn'
      OnChange = qrCadastrocsosnChange
    end
    object qrCadastrocso_descricao: TWideStringField
      FieldName = 'cso_descricao'
      Size = 255
    end
    object qrCadastrovalor_desconto: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_desconto'
      Required = True
    end
    object qrCadastrocest_descricao: TWideStringField
      FieldName = 'cest_descricao'
      Size = 1000
    end
    object qrCadastrovalor_desconto_perc: TFloatField
      FieldName = 'valor_desconto_perc'
    end
    object qrCadastrovalor_base_pis_cofins: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_base_pis_cofins'
      Required = True
      OnChange = qrCadastrovalor_base_pis_cofinsChange
    end
    object qrCadastrocofins_aliq: TFloatField
      DefaultExpression = '0'
      FieldName = 'cofins_aliq'
      Required = True
    end
    object qrCadastropis_aliq: TFloatField
      DefaultExpression = '0'
      FieldName = 'pis_aliq'
      Required = True
    end
    object qrCadastrocst_pis: TIntegerField
      FieldName = 'cst_pis'
      OnChange = qrCadastrocst_pisChange
    end
    object qrCadastrocst_cofins: TIntegerField
      FieldName = 'cst_cofins'
      OnChange = qrCadastrocst_cofinsChange
    end
    object qrCadastrocest: TWideStringField
      FieldName = 'cest'
      OnChange = qrCadastrocestChange
      Size = 7
    end
    object qrCadastromvast: TFloatField
      DefaultExpression = '0'
      FieldName = 'mvast'
    end
    object qrCadastrovalor_subtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_subtotal'
      Calculated = True
    end
    object qrCadastroid_composicao: TIntegerField
      FieldName = 'id_composicao'
      OnChange = qrCadastroid_composicaoChange
    end
    object qrCadastrotipo_item: TWideStringField
      DefaultExpression = #39'M'#39'::character varying'
      FieldName = 'tipo_item'
      Required = True
      OnChange = qrCadastrotipo_itemChange
      Size = 1
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 688
    Top = 296
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 688
    Top = 200
    object acBuscaMaterial: TAction
      Caption = 'acBuscaMaterial'
      ImageIndex = 0
      OnExecute = acBuscaMaterialExecute
    end
    object acBuscaCST: TAction
      Caption = 'acBuscaCST'
      ImageIndex = 0
      OnExecute = acBuscaCSTExecute
    end
    object acBuscaCFOP: TAction
      Caption = 'acBuscaCFOP'
      ImageIndex = 0
      OnExecute = acBuscaCFOPExecute
    end
    object acBuscaCSOSN: TAction
      Caption = 'acBuscaCSOSN'
      ImageIndex = 0
      OnExecute = acBuscaCSOSNExecute
    end
    object acBuscaCSTPIS: TAction
      Caption = 'acBuscaCSTPIS'
      ImageIndex = 0
      OnExecute = acBuscaCSTPISExecute
    end
    object acBuscaCSTCOFINS: TAction
      Caption = 'acBuscaCSTCOFINS'
      ImageIndex = 0
      OnExecute = acBuscaCSTCOFINSExecute
    end
    object acBuscaCEST: TAction
      Caption = 'acBuscaCest'
      ImageIndex = 0
      OnExecute = acBuscaCESTExecute
    end
    object acBuscaComposicao: TAction
      Caption = 'acBuscaComposicao'
      ImageIndex = 0
      OnExecute = acBuscaComposicaoExecute
    end
  end
end
