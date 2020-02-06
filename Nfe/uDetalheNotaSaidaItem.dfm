inherited frmDetalheNotaSaidaItem: TfrmDetalheNotaSaidaItem
  Caption = 'Nota Fiscal de Saida - Item'
  ClientHeight = 690
  ClientWidth = 739
  KeyPreview = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  ExplicitWidth = 745
  ExplicitHeight = 719
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 739
    Height = 641
    Font.Height = -12
    ExplicitWidth = 739
    ExplicitHeight = 641
    FullHeight = 200
    object Label1: TLabel
      Left = 447
      Top = 10
      Width = 37
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = cxDBTextEdit2
    end
    object Label2: TLabel
      Left = 574
      Top = 10
      Width = 45
      Height = 14
      Caption = 'Estoque'
    end
    object Label3: TLabel
      Left = 9
      Top = 10
      Width = 44
      Height = 14
      Caption = 'Produto'
    end
    object Label4: TLabel
      Left = 502
      Top = 58
      Width = 44
      Height = 14
      Caption = 'Unidade'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 171
      Top = 58
      Width = 28
      Height = 14
      Caption = 'Serial'
      FocusControl = cxDBTextEdit4
    end
    object Label6: TLabel
      Left = 9
      Top = 60
      Width = 61
      Height = 14
      Caption = 'Numera'#231#227'o'
      FocusControl = cxDBTextEdit5
    end
    object Label8: TLabel
      Left = 574
      Top = 58
      Width = 24
      Height = 14
      Caption = 'NCM'
      FocusControl = cxDBTextEdit7
    end
    object Label9: TLabel
      Left = 9
      Top = 106
      Width = 76
      Height = 14
      Caption = 'Complemento'
      FocusControl = cxDBTextEdit8
    end
    object Label40: TLabel
      Left = 574
      Top = 106
      Width = 64
      Height = 14
      Caption = 'C'#243'digo ANP'
      FocusControl = cxDBTextEdit14
    end
    object edIdMaterial: TcxDBButtonEdit
      Left = 9
      Top = 30
      DataBinding.DataField = 'id_material'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaMaterial
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Properties.OnValidate = edIdMaterialPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 104
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 119
      Top = 30
      TabStop = False
      DataBinding.DataField = 'descricao_material'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 1
      Width = 322
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 447
      Top = 30
      TabStop = False
      DataBinding.DataField = 'codigo_material'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 2
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 574
      Top = 30
      TabStop = False
      DataBinding.DataField = 'estoque'
      DataBinding.DataSource = dsCadastro
      Properties.DisplayFormat = '0.00;-0.00'
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 502
      Top = 78
      DataBinding.DataField = 'unidade'
      DataBinding.DataSource = dsCadastro
      TabOrder = 6
      Width = 66
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 171
      Top = 78
      DataBinding.DataField = 'serial'
      DataBinding.DataSource = dsCadastro
      TabOrder = 5
      Width = 325
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 9
      Top = 78
      DataBinding.DataField = 'numeracao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 4
      Width = 156
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 574
      Top = 78
      DataBinding.DataField = 'ncm'
      DataBinding.DataSource = dsCadastro
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 9
      Top = 126
      DataBinding.DataField = 'complemento_descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 8
      Width = 559
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
        Width = 63
        Height = 14
        Caption = 'Quantidade'
      end
      object Label7: TLabel
        Left = 8
        Top = 55
        Width = 71
        Height = 14
        Caption = 'Valor unit'#225'rio'
      end
      object Label11: TLabel
        Left = 8
        Top = 174
        Width = 28
        Height = 14
        Caption = 'Total'
      end
      object Label15: TLabel
        Left = 8
        Top = 111
        Width = 52
        Height = 14
        Caption = 'Desconto'
      end
      object Label16: TLabel
        Left = 8
        Top = 83
        Width = 46
        Height = 14
        Caption = 'Subtotal'
      end
      object Label25: TLabel
        Left = 8
        Top = 139
        Width = 90
        Height = 14
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
        TabOrder = 2
        Width = 121
      end
      object edDesconto: TcxDBCurrencyEdit
        Left = 180
        Top = 108
        DataBinding.DataField = 'valor_desconto'
        DataBinding.DataSource = dsCadastro
        TabOrder = 3
        OnExit = edDescontoExit
        Width = 80
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 104
        Top = 80
        DataBinding.DataField = 'valor_subtotal'
        DataBinding.DataSource = dsCadastro
        Properties.ReadOnly = True
        Style.TransparentBorder = True
        TabOrder = 4
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
        Height = 20
        Color = 14997705
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloatFixed
        DecimalPlaces = 2
        EditText = '0,00'
        MaxValue = 100.000000000000000000
        ReadOnly = True
        TabOrder = 6
        OnExit = JvValidateEdit1Exit
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
        Width = 75
        Height = 14
        Caption = 'Al'#237'quota ICMS'
      end
      object Label18: TLabel
        Left = 8
        Top = 55
        Width = 84
        Height = 14
        Caption = 'Base de C'#225'lculo'
      end
      object Label19: TLabel
        Left = 205
        Top = 27
        Width = 47
        Height = 14
        Caption = 'Redu'#231#227'o'
      end
      object Label20: TLabel
        Left = 205
        Top = 55
        Width = 76
        Height = 14
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
        Properties.DisplayFormat = '0.00%;-0.00%'
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
        Width = 22
        Height = 14
        Caption = 'CST'
      end
      object Label13: TLabel
        Left = 8
        Top = 57
        Width = 29
        Height = 14
        Caption = 'CFOP'
      end
      object Label14: TLabel
        Left = 8
        Top = 87
        Width = 38
        Height = 14
        Caption = 'CSOSN'
      end
      object Label37: TLabel
        Left = 359
        Top = 27
        Width = 44
        Height = 14
        Caption = 'CST PIS'
      end
      object Label38: TLabel
        Left = 359
        Top = 57
        Width = 67
        Height = 14
        Caption = 'CST COFINS'
      end
      object Label39: TLabel
        Left = 359
        Top = 87
        Width = 29
        Height = 14
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
      Top = 363
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'Substitui'#231#227'o Tribut'#225'ria'
      TabOrder = 14
      object Label21: TLabel
        Left = 8
        Top = 27
        Width = 25
        Height = 14
        Caption = 'MVA'
      end
      object Label22: TLabel
        Left = 104
        Top = 27
        Width = 84
        Height = 14
        Caption = 'Base de C'#225'lculo'
      end
      object Label24: TLabel
        Left = 301
        Top = 27
        Width = 27
        Height = 14
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
    object AdvGroupBox5: TAdvGroupBox
      Left = 9
      Top = 577
      Width = 272
      Height = 61
      BorderColor = clNavy
      Caption = 'Isentas'
      TabOrder = 12
      object Label23: TLabel
        Left = 8
        Top = 27
        Width = 39
        Height = 14
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
        Width = 44
        Height = 14
        Caption = 'Al'#237'quota'
      end
      object Label27: TLabel
        Left = 317
        Top = 28
        Width = 27
        Height = 14
        Caption = 'Valor'
      end
      object Label36: TLabel
        Left = 8
        Top = 27
        Width = 83
        Height = 14
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
        Width = 60
        Height = 14
        Caption = 'Peso Bruto'
      end
      object Label29: TLabel
        Left = 8
        Top = 55
        Width = 68
        Height = 14
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
      Top = 486
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'PIS'
      TabOrder = 16
      object Label30: TLabel
        Left = 7
        Top = 27
        Width = 83
        Height = 14
        Caption = 'Base de c'#225'lculo'
      end
      object Label31: TLabel
        Left = 202
        Top = 27
        Width = 44
        Height = 14
        Caption = 'Al'#237'quota'
      end
      object Label32: TLabel
        Left = 316
        Top = 27
        Width = 27
        Height = 14
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
    object AdvGroupBox10: TAdvGroupBox
      Left = 287
      Top = 549
      Width = 443
      Height = 56
      BorderColor = clNavy
      Caption = 'COFINS'
      TabOrder = 17
      object Label33: TLabel
        Left = 8
        Top = 27
        Width = 83
        Height = 14
        Caption = 'Base de c'#225'lculo'
      end
      object Label34: TLabel
        Left = 203
        Top = 27
        Width = 44
        Height = 14
        Caption = 'Al'#237'quota'
      end
      object Label35: TLabel
        Left = 317
        Top = 27
        Width = 27
        Height = 14
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
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 574
      Top = 126
      DataBinding.DataField = 'codigo_anp'
      DataBinding.DataSource = dsCadastro
      TabOrder = 18
      Width = 121
    end
    object ckEfetuar: TcxDBCheckBox
      Left = 287
      Top = 615
      Caption = 'Efetuar c'#225'lculos de bases e impostos automaticamente'
      DataBinding.DataField = 'efetuar_calculos'
      DataBinding.DataSource = dsCadastro
      TabOrder = 19
      OnClick = ckEfetuarClick
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 641
    Width = 739
    ExplicitTop = 641
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
  end
  inherited dsCadastro: TDataSource
    Left = 368
    Top = 144
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO nota_saida_item'
      
        '  (id_nota_saida, id_empresa, item, id_material, cst, cfop, quan' +
        'tidade, valor_unitario, valor_total, valor_frete, '
      
        'valor_seguro, valor_despesas, b_icms_retido, icms_aliq, icms_ali' +
        'q_reducao, valor_base_icms, valor_icms, '
      
        'icms_aliq_sub, valor_base_icms_sub, valor_icms_sub, valor_icms_i' +
        'sento, valor_icms_nao_trib, tipo_ipi, ipi_aliq, '
      
        'valor_base_ipi, valor_ipi, id_situacao, ncm, valor_cofins, valor' +
        '_pis, unidade, serial, numeracao, '
      
        'complemento_descricao, valor_desconto, csosn, peso_unitario_liqu' +
        'ido, peso_unitario_bruto, valor_base_pis_cofins, '
      
        'cofins_aliq, pis_aliq, cst_pis, cst_cofins, cest, mvast, codigo_' +
        'anp, efetuar_calculos)'
      'VALUES'
      
        '  (:id_nota_saida, :id_empresa, :item, :id_material, :cst, :cfop' +
        ', :quantidade, :valor_unitario, :valor_total, :valor_frete, '
      
        ':valor_seguro, :valor_despesas, :b_icms_retido, :icms_aliq, :icm' +
        's_aliq_reducao, :valor_base_icms, :valor_icms, '
      
        ':icms_aliq_sub, :valor_base_icms_sub, :valor_icms_sub, :valor_ic' +
        'ms_isento, :valor_icms_nao_trib, :tipo_ipi, :ipi_aliq, '
      
        ':valor_base_ipi, :valor_ipi, :id_situacao, :ncm, :valor_cofins, ' +
        ':valor_pis, :unidade, :serial, :numeracao, '
      
        ':complemento_descricao, :valor_desconto, :csosn, :peso_unitario_' +
        'liquido, :peso_unitario_bruto, :valor_base_pis_cofins, '
      
        ':cofins_aliq, :pis_aliq, :cst_pis, :cst_cofins, :cest, :mvast, :' +
        'codigo_anp, :efetuar_calculos)')
    SQLDelete.Strings = (
      'DELETE FROM nota_saida_item'
      'WHERE'
      '  id_nota_saida = :Old_id_nota_saida AND item = :Old_item')
    SQLUpdate.Strings = (
      'UPDATE nota_saida_item'
      'SET'
      
        '  id_nota_saida = :id_nota_saida, id_empresa = :id_empresa, item' +
        ' = :item, id_material = :id_material, cst = :cst, '
      
        'cfop = :cfop, quantidade = :quantidade, valor_unitario = :valor_' +
        'unitario, valor_total = :valor_total, '
      
        'valor_frete = :valor_frete, valor_seguro = :valor_seguro, valor_' +
        'despesas = :valor_despesas, b_icms_retido = :b_icms_retido, '
      
        'icms_aliq = :icms_aliq, icms_aliq_reducao = :icms_aliq_reducao, ' +
        'valor_base_icms = :valor_base_icms, valor_icms = :valor_icms, '
      
        'icms_aliq_sub = :icms_aliq_sub, valor_base_icms_sub = :valor_bas' +
        'e_icms_sub, valor_icms_sub = :valor_icms_sub, '
      
        'valor_icms_isento = :valor_icms_isento, valor_icms_nao_trib = :v' +
        'alor_icms_nao_trib, tipo_ipi = :tipo_ipi, '
      
        'ipi_aliq = :ipi_aliq, valor_base_ipi = :valor_base_ipi, valor_ip' +
        'i = :valor_ipi, id_situacao = :id_situacao, ncm = :ncm, '
      
        'valor_cofins = :valor_cofins, valor_pis = :valor_pis, unidade = ' +
        ':unidade, serial = :serial, numeracao = :numeracao, '
      
        'complemento_descricao = :complemento_descricao, valor_desconto =' +
        ' :valor_desconto, csosn = :csosn, '
      
        'peso_unitario_liquido = :peso_unitario_liquido, peso_unitario_br' +
        'uto = :peso_unitario_bruto, '
      
        'valor_base_pis_cofins = :valor_base_pis_cofins, cofins_aliq = :c' +
        'ofins_aliq, pis_aliq = :pis_aliq,'
      
        'cst_pis = :cst_pis, cst_cofins = :cst_cofins, cest = :cest, mvas' +
        't = :mvast, codigo_anp = :codigo_anp,'
      'efetuar_calculos = :efetuar_calculos'
      'WHERE'
      '  id_nota_saida = :Old_id_nota_saida AND item = :Old_item')
    SQLLock.Strings = (
      'SELECT * FROM nota_saida_item'
      'WHERE'
      '  id_nota_saida = :Old_id_nota_saida AND item = :Old_item'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_saida, id_empresa, item, id_material, cst, cfop, ' +
        'quantidade, valor_unitario, valor_total, valor_frete, valor_segu' +
        'ro, valor_despesas, b_icms_retido, icms_aliq, icms_aliq_reducao,' +
        ' valor_base_icms, valor_icms, icms_aliq_sub, valor_base_icms_sub' +
        ', valor_icms_sub, valor_icms_isento, valor_icms_nao_trib, tipo_i' +
        'pi, ipi_aliq, valor_base_ipi, valor_ipi, id_situacao, ncm, valor' +
        '_cofins, valor_pis, unidade, serial, numeracao, complemento_desc' +
        'ricao, valor_desconto, csosn, peso_unitario_liquido, peso_unitar' +
        'io_bruto, valor_base_pis_cofins, cofins_aliq, pis_aliq FROM nota' +
        '_saida_item'
      'WHERE'
      '  id_nota_saida = :id_nota_saida AND item = :item')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM nota_saida_item'
      ''
      ') t')
    SQL.Strings = (
      'select'
      'nsi.id_nota_saida,'
      'nsi.id_empresa,'
      'nsi.item,'
      'nsi.id_material,'
      'nsi.cst,'
      'nsi.cfop,'
      'nsi.quantidade,'
      'nsi.peso_unitario_liquido,'
      'nsi.peso_unitario_bruto,'
      'nsi.valor_unitario,'
      'nsi.valor_total,'
      'nsi.valor_frete,'
      'nsi.valor_seguro,'
      'nsi.valor_despesas,'
      'nsi.b_icms_retido,'
      'nsi.icms_aliq,'
      'nsi.icms_aliq_reducao,'
      'nsi.valor_base_icms,'
      'nsi.valor_icms,'
      'nsi.icms_aliq_sub,'
      'nsi.valor_base_icms_sub,'
      'nsi.valor_icms_sub,'
      'nsi.valor_icms_isento,'
      'nsi.valor_icms_nao_trib,'
      'nsi.tipo_ipi,'
      'nsi.ipi_aliq,'
      'nsi.valor_base_ipi,'
      'nsi.valor_ipi,'
      'nsi.id_situacao,'
      'coalesce(nsi.ncm, m.ncm) as ncm,'
      'nsi.valor_pis,'
      'nsi.valor_cofins,'
      'u.uni_003 as unidade,'
      'nsi.serial,'
      'nsi.numeracao,'
      'nsi.complemento_descricao,'
      'm.mat_003 as descricao_material, '
      'm.mat_004 as codigo_material,'
      'stm.quantidade as estoque,'
      'cst.icm_descricao as cst_descricao,'
      'cfop.cfop_descricao,'
      'cst_pis.pis_descricao as cst_pis_descricao, '
      'cst_cofins.cof_descricao as cst_cofins_descricao, '
      ''
      'nsi.csosn,'
      'csosn.cso_descricao,'
      'nsi.valor_desconto,'
      'cest.cest_descricao,'
      ''
      'case when (nsi.valor_unitario * nsi.quantidade) <=0 then 0.0'
      
        'else (nsi.valor_desconto/ ((nsi.valor_unitario * nsi.quantidade)' +
        '+nsi.valor_despesas))*100 end'
      'as valor_desconto_perc,'
      'nsi.valor_base_pis_cofins,'
      'nsi.cofins_aliq,'
      'nsi.pis_aliq,'
      'nsi.cst_pis,'
      'nsi.cst_cofins,'
      'nsi.cest,'
      'nsi.mvast,'
      'nsi.codigo_anp,'
      'nsi.efetuar_calculos'
      ''
      'from nota_saida_item nsi'
      
        'left join materiais m on nsi.id_material = m.mat_001 and nsi.id_' +
        'empresa = m.emp_001'
      
        'left join unidades u on m.uni_001=u.uni_001 and m.emp_001=u.emp_' +
        '001'
      'left join cst_icms cst on nsi.cst=cst.icm_codigo'
      'left join cfop on cfop.cfop_codigo = nsi.cfop'
      'left join csosn_icms csosn on csosn.cso_codigo=nsi.csosn'
      
        'left join cst_pis on cst_pis.pis_codigo = nsi.cst_pis and cst_pi' +
        's.emp_001=nsi.id_empresa '
      
        'left join cst_cofins on cst_cofins.cof_codigo = nsi.cst_cofins a' +
        'nd cst_cofins.emp_001=nsi.id_empresa '
      'left join cest on cest.cest_codigo=nsi.cest'
      
        'left join setor_estoque_material stm on stm.id_material=m.mat_00' +
        '1 and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor '
      ''
      
        'where nsi.id_nota_saida = :id_nota_saida and nsi.id_empresa = :i' +
        'd_empresa and  nsi.item = :item')
    Options.DefaultValues = True
    OnCalcFields = qrCadastroCalcFields
    OnNewRecord = qrCadastroNewRecord
    Left = 288
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_nota_saida'
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
    object qrCadastroid_nota_saida: TIntegerField
      DisplayLabel = 'ID Nota Sa'#237'da'
      FieldName = 'id_nota_saida'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      DisplayLabel = 'ID Empresa'
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrCadastroid_material: TIntegerField
      DisplayLabel = 'ID Material'
      FieldName = 'id_material'
      Required = True
      OnChange = qrCadastroid_materialChange
    end
    object qrCadastrocst: TIntegerField
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Required = True
      OnChange = qrCadastrocstChange
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object qrCadastrocfop: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      OnChange = qrCadastrocfopChange
      Size = 4
    end
    object qrCadastroquantidade: TFloatField
      DefaultExpression = '1'
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Required = True
    end
    object qrCadastrovalor_unitario: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrCadastrovalor_total: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      Required = True
      currency = True
    end
    object qrCadastrovalor_frete: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Frete'
      FieldName = 'valor_frete'
      Required = True
      currency = True
    end
    object qrCadastrovalor_seguro: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Seguro'
      FieldName = 'valor_seguro'
      Required = True
      currency = True
    end
    object qrCadastrovalor_despesas: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Despesas'
      FieldName = 'valor_despesas'
      Required = True
      currency = True
    end
    object qrCadastrob_icms_retido: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Icms Retido'
      FieldName = 'b_icms_retido'
    end
    object qrCadastroicms_aliq: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota de ICMS'
      FieldName = 'icms_aliq'
      Required = True
    end
    object qrCadastroicms_aliq_reducao: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota de ICMS Redu'#231#227'o'
      FieldName = 'icms_aliq_reducao'
      Required = True
    end
    object qrCadastrovalor_base_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base ICMS'
      FieldName = 'valor_base_icms'
      Required = True
      currency = True
    end
    object qrCadastrovalor_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS'
      FieldName = 'valor_icms'
      Required = True
      currency = True
    end
    object qrCadastroicms_aliq_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota ICMS Sub.'
      FieldName = 'icms_aliq_sub'
      Required = True
    end
    object qrCadastrovalor_base_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Balor Base ICMS Sub.'
      FieldName = 'valor_base_icms_sub'
      Required = True
      currency = True
    end
    object qrCadastrovalor_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Sub.'
      FieldName = 'valor_icms_sub'
      Required = True
      currency = True
    end
    object qrCadastrovalor_icms_isento: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Isento'
      FieldName = 'valor_icms_isento'
      Required = True
      currency = True
    end
    object qrCadastrovalor_icms_nao_trib: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS N'#227'o Trib.'
      FieldName = 'valor_icms_nao_trib'
      Required = True
      currency = True
    end
    object qrCadastrotipo_ipi: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Tipo IPI'
      FieldName = 'tipo_ipi'
      Required = True
    end
    object qrCadastroipi_aliq: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota IPI'
      FieldName = 'ipi_aliq'
      Required = True
    end
    object qrCadastrovalor_base_ipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base IPI'
      FieldName = 'valor_base_ipi'
      Required = True
      currency = True
    end
    object qrCadastrovalor_ipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor IPI'
      FieldName = 'valor_ipi'
      Required = True
      currency = True
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastroncm: TWideStringField
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
      Required = True
      Size = 10
    end
    object qrCadastrovalor_pis: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor PIS'
      FieldName = 'valor_pis'
      currency = True
    end
    object qrCadastrovalor_cofins: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor COFINS'
      FieldName = 'valor_cofins'
      currency = True
    end
    object qrCadastrounidade: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Required = True
      Size = 3
    end
    object qrCadastroserial: TWideStringField
      DisplayLabel = 'Serial'
      FieldName = 'serial'
      Size = 100
    end
    object qrCadastronumeracao: TWideStringField
      DisplayLabel = 'Numera'#231#227'o'
      FieldName = 'numeracao'
      Size = 100
    end
    object qrCadastrocomplemento_descricao: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento_descricao'
      Size = 200
    end
    object qrCadastrodescricao_material: TWideStringField
      FieldName = 'descricao_material'
      Size = 60
    end
    object qrCadastrocodigo_material: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo_material'
      Size = 50
    end
    object qrCadastroestoque: TFloatField
      DisplayLabel = 'Estoque'
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
    object qrCadastrocsosn: TIntegerField
      FieldName = 'csosn'
      Required = True
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
    object qrCadastrovalor_subtotal: TFloatField
      DisplayLabel = 'Subtotal'
      FieldKind = fkCalculated
      FieldName = 'valor_subtotal'
      currency = True
      Calculated = True
    end
    object qrCadastrovalor_desconto_perc: TFloatField
      FieldName = 'valor_desconto_perc'
    end
    object qrCadastropeso_unitario_liquido: TFloatField
      DefaultExpression = '0'
      FieldName = 'peso_unitario_liquido'
      Required = True
      EditFormat = '0.000'
    end
    object qrCadastropeso_unitario_bruto: TFloatField
      DefaultExpression = '0'
      FieldName = 'peso_unitario_bruto'
      Required = True
      EditFormat = '0.000'
    end
    object qrCadastrovalor_base_pis_cofins: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_base_pis_cofins'
      Required = True
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
    object qrCadastrocst_pis_descricao: TWideStringField
      FieldName = 'cst_pis_descricao'
      Size = 255
    end
    object qrCadastrocst_cofins_descricao: TWideStringField
      FieldName = 'cst_cofins_descricao'
      Size = 255
    end
    object qrCadastrocst_pis: TIntegerField
      DisplayLabel = 'CST PIS'
      FieldName = 'cst_pis'
      Required = True
      OnChange = qrCadastrocst_pisChange
    end
    object qrCadastrocst_cofins: TIntegerField
      DisplayLabel = 'CST COFINS'
      FieldName = 'cst_cofins'
      Required = True
      OnChange = qrCadastrocst_cofinsChange
    end
    object qrCadastrocest: TWideStringField
      FieldName = 'cest'
      OnChange = qrCadastrocestChange
      Size = 7
    end
    object qrCadastrocest_descricao: TWideStringField
      FieldName = 'cest_descricao'
      Size = 1000
    end
    object qrCadastromvast: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'MVA ST'
      FieldName = 'mvast'
      Required = True
    end
    object qrCadastrocodigo_anp: TWideStringField
      DisplayLabel = 'C'#243'digo ANP'
      FieldName = 'codigo_anp'
    end
    object qrCadastroefetuar_calculos: TBooleanField
      DefaultExpression = 'true'
      DisplayLabel = 'Efetuar c'#225'lculos de bases e impostos automaticamente'
      FieldName = 'efetuar_calculos'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 296
    Top = 64
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 344
    Top = 96
    object acBuscaMaterial: TAction
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
  end
end
