inherited frmControleNotaFiscalEntradaImportacao: TfrmControleNotaFiscalEntradaImportacao
  Caption = 'Controle de Nota de Fiscal de Entrada - Importa'#231#227'o XML'
  ClientHeight = 602
  ClientWidth = 1015
  ExplicitTop = -196
  ExplicitWidth = 1021
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1015
    Height = 553
    ExplicitWidth = 1015
    ExplicitHeight = 553
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 155
      Height = 16
      Caption = 'Arquivo XML da Nota Fiscal'
    end
    object Label2: TLabel
      Left = 221
      Top = 60
      Width = 126
      Height = 16
      Caption = 'Natureza da opera'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 8
      Top = 112
      Width = 65
      Height = 16
      Caption = 'Fornecedor'
    end
    object Label6: TLabel
      Left = 344
      Top = 112
      Width = 28
      Height = 16
      Caption = 'CNPJ'
    end
    object Label7: TLabel
      Left = 567
      Top = 112
      Width = 15
      Height = 16
      Caption = 'UF'
      FocusControl = cxDBTextEdit4
    end
    object Label8: TLabel
      Left = 8
      Top = 60
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = cxDBSpinEdit1
    end
    object Label9: TLabel
      Left = 79
      Top = 60
      Width = 30
      Height = 16
      Caption = 'S'#233'rie'
      FocusControl = cxDBSpinEdit2
    end
    object Label10: TLabel
      Left = 150
      Top = 60
      Width = 31
      Height = 16
      Caption = 'CFOP'
      FocusControl = cxDBTextEdit5
    end
    object Label11: TLabel
      Left = 567
      Top = 60
      Width = 77
      Height = 16
      Caption = 'Data Emiss'#227'o'
      FocusControl = cxDBDateEdit1
    end
    object Label26: TLabel
      Left = 608
      Top = 112
      Width = 124
      Height = 16
      Caption = 'Chave de Autoriza'#231#227'o'
      FocusControl = cxDBTextEdit7
    end
    object btAdicionarItem: TAdvGlowButton
      Left = 909
      Top = 30
      Width = 100
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = -2
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btAdicionarItemClick
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
    object edCaminhoXML: TEdit
      Left = 8
      Top = 30
      Width = 895
      Height = 24
      Color = 14997705
      ReadOnly = True
      TabOrder = 1
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 221
      Top = 82
      DataBinding.DataField = 'natureza_operacao'
      DataBinding.DataSource = dsNotaEntrada
      TabOrder = 2
      Width = 340
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 344
      Top = 134
      DataBinding.DataField = 'fornecedor_cnpj'
      DataBinding.DataSource = dsNotaEntrada
      TabOrder = 3
      Width = 217
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 567
      Top = 134
      DataBinding.DataField = 'fornecedor_uf'
      DataBinding.DataSource = dsNotaEntrada
      TabOrder = 4
      Width = 35
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 82
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = dsNotaEntrada
      Properties.SpinButtons.Visible = False
      TabOrder = 5
      Width = 65
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 79
      Top = 82
      DataBinding.DataField = 'serie'
      DataBinding.DataSource = dsNotaEntrada
      Properties.SpinButtons.Visible = False
      TabOrder = 6
      Width = 65
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 150
      Top = 82
      DataBinding.DataField = 'cfop'
      DataBinding.DataSource = dsNotaEntrada
      TabOrder = 7
      Width = 65
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 567
      Top = 82
      DataBinding.DataField = 'data_emissao'
      DataBinding.DataSource = dsNotaEntrada
      TabOrder = 8
      Width = 121
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 8
      Top = 166
      Width = 1001
      Height = 133
      BorderColor = clNavy
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Valores'
      TabOrder = 9
      object Label12: TLabel
        Left = 11
        Top = 24
        Width = 95
        Height = 16
        Caption = 'Valor Base ICMS'
      end
      object Label18: TLabel
        Left = 646
        Top = 24
        Width = 69
        Height = 16
        Caption = 'Valor Cofins'
      end
      object Label17: TLabel
        Left = 519
        Top = 24
        Width = 53
        Height = 16
        Caption = 'Valor PIS'
      end
      object Label15: TLabel
        Left = 519
        Top = 76
        Width = 84
        Height = 16
        Caption = 'Valor Produtos'
      end
      object Label14: TLabel
        Left = 646
        Top = 76
        Width = 63
        Height = 16
        Caption = 'Valor Total'
      end
      object Label13: TLabel
        Left = 265
        Top = 76
        Width = 86
        Height = 16
        Caption = 'Valor Desconto'
      end
      object Label19: TLabel
        Left = 392
        Top = 76
        Width = 88
        Height = 16
        Caption = 'Valor Despesas'
      end
      object Label20: TLabel
        Left = 138
        Top = 76
        Width = 75
        Height = 16
        Caption = 'Valor Seguro'
      end
      object Label21: TLabel
        Left = 265
        Top = 24
        Width = 121
        Height = 16
        Caption = 'Valor Base ICMS Sub'
      end
      object Label22: TLabel
        Left = 392
        Top = 24
        Width = 90
        Height = 16
        Caption = 'Valor ICMS Sub'
      end
      object Label23: TLabel
        Left = 138
        Top = 24
        Width = 64
        Height = 16
        Caption = 'Valor ICMS'
      end
      object Label24: TLabel
        Left = 11
        Top = 76
        Width = 64
        Height = 16
        Caption = 'Valor Frete'
      end
      object Label25: TLabel
        Left = 773
        Top = 24
        Width = 49
        Height = 16
        Caption = 'Valor IPI'
      end
      object cxDBCurrencyEdit14: TcxDBCurrencyEdit
        Left = 646
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_cofins'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 5
        Width = 121
      end
      object cxDBCurrencyEdit13: TcxDBCurrencyEdit
        Left = 519
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_pis'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 4
        Width = 121
      end
      object cxDBCurrencyEdit11: TcxDBCurrencyEdit
        Left = 519
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_produtos'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 6
        Width = 121
      end
      object cxDBCurrencyEdit10: TcxDBCurrencyEdit
        Left = 646
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_total'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 12
        Width = 121
      end
      object cxDBCurrencyEdit9: TcxDBCurrencyEdit
        Left = 265
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_desconto'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 9
        Width = 121
      end
      object cxDBCurrencyEdit8: TcxDBCurrencyEdit
        Left = 392
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_despesas'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 10
        Width = 121
      end
      object cxDBCurrencyEdit7: TcxDBCurrencyEdit
        Left = 773
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_ipi'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 11
        Width = 121
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 138
        Top = 98
        DataBinding.DataField = 'valor_seguro'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 8
        Width = 121
      end
      object cxDBCurrencyEdit5: TcxDBCurrencyEdit
        Left = 11
        Top = 98
        DataBinding.DataField = 'valor_frete'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 7
        Width = 121
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 265
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_base_icms_sub'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 2
        Width = 121
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 392
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_icms_sub'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 3
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 11
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_base_icms'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 0
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 138
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_icms'
        DataBinding.DataSource = dsNotaEntrada
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 1
        Width = 121
      end
    end
    object PageControlNFE: TAdvPageControl
      Left = 8
      Top = 305
      Width = 1001
      Height = 245
      ActivePage = pgItens
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -13
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = [fsBold]
      Anchors = [akLeft, akTop, akRight, akBottom]
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      DefaultTabColor = 14997705
      ActiveColor = 14997705
      TabBackGroundColor = 13679778
      TabMargin.RightMargin = 0
      TabOverlap = 0
      LowerActive = 1
      Version = '2.0.0.10'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 10
      object pgItens: TAdvTabSheet
        Caption = 'Itens'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          993
          214)
        object Label4: TLabel
          Left = 3
          Top = 165
          Width = 73
          Height = 16
          Caption = 'Margem (%)'
        end
        object Label5: TLabel
          Left = 130
          Top = 165
          Width = 70
          Height = 16
          Caption = 'Valor Venda'
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 3
          Width = 987
          Height = 156
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaEntradaItem
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              DataBinding.FieldName = 'flag_encontrado'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = frmMenu.ImgList16
              Properties.Items = <
                item
                  ImageIndex = 5
                  Value = True
                end
                item
                  ImageIndex = 4
                  Value = False
                end>
              Options.Editing = False
              Options.AutoWidthSizable = False
              Width = 25
              IsCaptionAssigned = True
            end
            object cxGrid1DBTableView1item: TcxGridDBColumn
              DataBinding.FieldName = 'item'
              Options.Editing = False
              Width = 35
            end
            object cxGrid1DBTableView1codigo_produto: TcxGridDBColumn
              DataBinding.FieldName = 'codigo'
              Options.Editing = False
              Width = 109
            end
            object cxGrid1DBTableView1descricao_produto: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 165
            end
            object cxGrid1DBTableView1cfop: TcxGridDBColumn
              DataBinding.FieldName = 'cfop'
              Options.Editing = False
              Width = 49
            end
            object cxGrid1DBTableView1quantidade: TcxGridDBColumn
              DataBinding.FieldName = 'quantidade'
              Width = 74
            end
            object cxGrid1DBTableView1valor_unitario: TcxGridDBColumn
              DataBinding.FieldName = 'valor_unitario'
              Options.Editing = False
              Width = 67
            end
            object cxGrid1DBTableView1valor_total: TcxGridDBColumn
              DataBinding.FieldName = 'valor_total'
              Options.Editing = False
              Width = 95
            end
            object cxGrid1DBTableView1Column5: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_item'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Produto'
                  ImageIndex = 0
                  Value = 'M'
                end
                item
                  Description = 'Mat'#233'ria Prima'
                  Value = 'C'
                end>
              Styles.Content = frmMenu.cxFundoAmarelo
              Width = 68
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'cod_ref_interno'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Action = acBuscaMaterial
                  Default = True
                  Kind = bkGlyph
                end>
              Properties.Images = frmMenu.ImgList16
              Options.ShowEditButtons = isebAlways
              Styles.Content = frmMenu.cxFundoAmarelo
              Width = 73
            end
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              DataBinding.FieldName = 'descricao_interna'
              Options.Editing = False
              Styles.Content = frmMenu.cxFundoAmarelo
              Width = 148
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = 'Categoria'
              DataBinding.FieldName = 'id_categoria'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Action = acBuscacategoria
                  Default = True
                  ImageIndex = 0
                  Kind = bkGlyph
                end>
              Properties.Images = frmMenu.ImgList16
              Options.ShowEditButtons = isebAlways
              Width = 77
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxDBMargem: TcxDBCurrencyEdit
          Left = 3
          Top = 187
          DataBinding.DataField = 'margem'
          DataBinding.DataSource = dsNotaEntradaItem
          Properties.DisplayFormat = '##0.00'
          Style.Color = clWindow
          TabOrder = 1
          Width = 121
        end
        object cxDBValorVenda: TcxDBCurrencyEdit
          Left = 130
          Top = 187
          DataBinding.DataField = 'valor_venda'
          DataBinding.DataSource = dsNotaEntradaItem
          Style.Color = clWindow
          TabOrder = 2
          Width = 121
        end
        object btnAplicarMargem: TAdvGlowButton
          AlignWithMargins = True
          Left = 260
          Top = 170
          Width = 180
          Height = 41
          Margins.Left = 0
          Caption = 'Aplicar Margem para todos os Itens'
          ImageIndex = 33
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btnAplicarMargemClick
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
      object pgDocReferenciado: TAdvTabSheet
        Caption = 'Doc. Referenciados'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          993
          214)
        object cxGrid2: TcxGrid
          Left = 3
          Top = 3
          Width = 987
          Height = 208
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDocRef
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1tipo_doc: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_doc'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Cupom fiscal (ECF)'
                  Value = 'ECF'
                end
                item
                  Description = 'SAT / NFe'
                  ImageIndex = 0
                  Value = 'NFE'
                end>
              Width = 148
            end
            object cxGridDBTableView1chave_nfe: TcxGridDBColumn
              DataBinding.FieldName = 'chave_nfe'
              Width = 446
            end
            object cxGridDBTableView1numero_ecf: TcxGridDBColumn
              DataBinding.FieldName = 'numero_ecf'
              Width = 123
            end
            object cxGridDBTableView1numero_cupom_ecf: TcxGridDBColumn
              DataBinding.FieldName = 'numero_cupom_ecf'
              Width = 126
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object pgFaturamento: TAdvTabSheet
        Caption = 'Faturamento'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          993
          214)
        object Label27: TLabel
          Left = 153
          Top = 3
          Width = 104
          Height = 16
          Caption = 'Numero da Fatura'
          FocusControl = cxDBTextEdit6
        end
        object Label30: TLabel
          Left = 3
          Top = 3
          Width = 111
          Height = 16
          Caption = 'Tipo de Pagamento'
        end
        object Label28: TLabel
          Left = 3
          Top = 55
          Width = 58
          Height = 16
          Caption = 'Duplicatas'
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 153
          Top = 25
          DataBinding.DataField = 'numero_fatura'
          DataBinding.DataSource = dsNotaEntrada
          TabOrder = 1
          Width = 144
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 3
          Top = 25
          Width = 144
          Height = 24
          DataField = 'tipo_pagamento'
          DataSource = dsNotaEntrada
          Items.Strings = (
            'A Vista'
            'A prazo')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cxGrid3: TcxGrid
          Left = 3
          Top = 77
          Width = 987
          Height = 134
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 2
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDuplicata
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView2numero_duplicata: TcxGridDBColumn
              DataBinding.FieldName = 'numero_duplicata'
              Width = 518
            end
            object cxGridDBTableView2valor: TcxGridDBColumn
              DataBinding.FieldName = 'valor'
              Width = 189
            end
            object cxGridDBTableView2DataVencimento: TcxGridDBColumn
              DataBinding.FieldName = 'data_vencimento'
              Width = 188
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object pgInfoComplementares: TAdvTabSheet
        Caption = 'Informa'#231#245'es Complementares'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          993
          214)
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 3
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'info_complementar'
          DataBinding.DataSource = dsNotaEntrada
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 208
          Width = 990
        end
      end
      object pgTransportador: TAdvTabSheet
        Caption = 'Transportador / Volumes'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        object Label32: TLabel
          Left = 3
          Top = 3
          Width = 82
          Height = 16
          Caption = 'Transportador'
        end
        object Label33: TLabel
          Left = 509
          Top = 3
          Width = 33
          Height = 16
          Caption = 'CNPJ:'
        end
        object Label35: TLabel
          Left = 3
          Top = 55
          Width = 114
          Height = 16
          Caption = 'Modalidade do frete'
        end
        object Label36: TLabel
          Left = 3
          Top = 107
          Width = 136
          Height = 16
          Caption = 'N'#250'mero(s) dos volumes'
          FocusControl = cxDBTextEdit8
        end
        object Label37: TLabel
          Left = 225
          Top = 107
          Width = 134
          Height = 16
          Caption = 'Quantidade de volumes'
          FocusControl = cxDBSpinEdit4
        end
        object Label38: TLabel
          Left = 367
          Top = 107
          Width = 118
          Height = 16
          Caption = 'Esp'#233'cie dos volumes'
          FocusControl = cxDBTextEdit9
        end
        object Label39: TLabel
          Left = 509
          Top = 107
          Width = 110
          Height = 16
          Caption = 'Marca dos volumes'
          FocusControl = cxDBTextEdit10
        end
        object Label40: TLabel
          Left = 225
          Top = 55
          Width = 68
          Height = 16
          Caption = 'Peso l'#237'quido'
        end
        object Label41: TLabel
          Left = 367
          Top = 55
          Width = 61
          Height = 16
          Caption = 'Peso bruto'
        end
        object Label42: TLabel
          Left = 509
          Top = 55
          Width = 64
          Height = 16
          Caption = 'Valor Frete'
        end
        object Label43: TLabel
          Left = 3
          Top = 159
          Width = 75
          Height = 16
          Caption = 'Placa Ve'#237'culo'
          FocusControl = cxDBTextEdit13
        end
        object Label44: TLabel
          Left = 168
          Top = 159
          Width = 15
          Height = 16
          Caption = 'UF'
          FocusControl = cxDBTextEdit14
        end
        object Label45: TLabel
          Left = 225
          Top = 159
          Width = 78
          Height = 16
          Caption = 'RNTC (ANTT)'
          FocusControl = cxDBTextEdit15
        end
        object Label16: TLabel
          Left = 708
          Top = 3
          Width = 16
          Height = 16
          Caption = 'IE:'
        end
        object JvDBComboBox4: TJvDBComboBox
          Left = 3
          Top = 77
          Width = 216
          Height = 24
          DataField = 'transp_modalidade'
          DataSource = dsNotaEntrada
          Items.Strings = (
            'Por conta do emitente'
            'Por conta do destinat'#225'rio/remetente'
            'Por conta de terceiros'
            'Sem frete')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 3
          Top = 129
          DataBinding.DataField = 'transp_numero_volumes'
          DataBinding.DataSource = dsNotaEntrada
          TabOrder = 5
          Width = 216
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 225
          Top = 129
          DataBinding.DataField = 'transp_quantidade_volumes'
          DataBinding.DataSource = dsNotaEntrada
          TabOrder = 6
          Width = 136
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 367
          Top = 129
          DataBinding.DataField = 'transp_especie'
          DataBinding.DataSource = dsNotaEntrada
          TabOrder = 7
          Width = 136
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 509
          Top = 129
          DataBinding.DataField = 'transp_marca'
          DataBinding.DataSource = dsNotaEntrada
          TabOrder = 8
          Width = 136
        end
        object cxDBCurrencyEdit15: TcxDBCurrencyEdit
          Left = 225
          Top = 77
          DataBinding.DataField = 'transp_peso_liquido'
          DataBinding.DataSource = dsNotaEntrada
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 2
          Width = 136
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 367
          Top = 77
          DataBinding.DataField = 'transp_peso_bruto'
          DataBinding.DataSource = dsNotaEntrada
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 3
          Width = 136
        end
        object cxDBCurrencyEdit17: TcxDBCurrencyEdit
          Left = 509
          Top = 77
          DataBinding.DataField = 'valor_frete'
          DataBinding.DataSource = dsNotaEntrada
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 4
          Width = 136
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 509
          Top = 25
          TabStop = False
          DataBinding.DataField = 'transportador_cnpj'
          DataBinding.DataSource = dsNotaEntrada
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 0
          Width = 193
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 3
          Top = 181
          DataBinding.DataField = 'transp_placa'
          DataBinding.DataSource = dsNotaEntrada
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 159
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 168
          Top = 181
          DataBinding.DataField = 'transp_placa_uf'
          DataBinding.DataSource = dsNotaEntrada
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 51
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 225
          Top = 181
          DataBinding.DataField = 'transp_rntc'
          DataBinding.DataSource = dsNotaEntrada
          TabOrder = 11
          Width = 136
        end
        object edTransportadorRazao: TcxDBButtonEdit
          Left = 3
          Top = 25
          DataBinding.DataField = 'transportador_razao'
          DataBinding.DataSource = dsNotaEntrada
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 4
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          TabOrder = 12
          Width = 500
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 708
          Top = 25
          TabStop = False
          DataBinding.DataField = 'transportador_ie'
          DataBinding.DataSource = dsNotaEntrada
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 13
          Width = 157
        end
      end
    end
    object edFornecedorRazao: TcxDBButtonEdit
      Left = 8
      Top = 134
      DataBinding.DataField = 'fornecedor_razao'
      DataBinding.DataSource = dsNotaEntrada
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 4
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      TabOrder = 11
      Width = 330
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 608
      Top = 134
      DataBinding.DataField = 'chave_autorizacao'
      DataBinding.DataSource = dsNotaEntrada
      TabOrder = 12
      Width = 401
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 553
    Width = 1015
    ExplicitTop = 553
    ExplicitWidth = 1015
    object btnImportarNFe: TAdvGlowButton
      AlignWithMargins = True
      Left = 874
      Top = 3
      Width = 138
      Height = 41
      Margins.Left = 0
      Caption = 'Importar NFe'
      ImageIndex = 24
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnImportarNFeClick
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
    object btImportarCadastros: TAdvGlowButton
      AlignWithMargins = True
      Left = 632
      Top = 3
      Width = 239
      Height = 41
      Margins.Left = 0
      Caption = 'Verificar e Importar Cadastros'
      ImageIndex = 45
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btImportarCadastrosClick
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
  object cdsNotaEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 216
    object cdsNotaEntradanumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
    end
    object cdsNotaEntradaserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
    end
    object cdsNotaEntradacnpj_fornecedor: TStringField
      DisplayWidth = 20
      FieldName = 'fornecedor_cnpj'
      Size = 50
    end
    object cdsNotaEntradarazao_fornecedor: TStringField
      FieldName = 'fornecedor_razao'
      Size = 100
    end
    object cdsNotaEntradanome_fantasia_fornecedor: TStringField
      FieldName = 'fornecedor_nome_fantasia'
      Size = 100
    end
    object cdsNotaEntradadata_emissao: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'data_emissao'
    end
    object cdsNotaEntradacfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object cdsNotaEntradavalor_icms: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'valor_icms'
      currency = True
    end
    object cdsNotaEntradavalor_base_icms: TFloatField
      DisplayLabel = 'Valor Base ICMS'
      FieldName = 'valor_base_icms'
      currency = True
    end
    object cdsNotaEntradavalor_icms_sub: TFloatField
      DisplayLabel = 'Valor ICMS Sub'
      FieldName = 'valor_icms_sub'
      currency = True
    end
    object cdsNotaEntradavalor_base_icms_sub: TFloatField
      DisplayLabel = 'Valor Base ICMS Sub'
      FieldName = 'valor_base_icms_sub'
      currency = True
    end
    object cdsNotaEntradavalor_frete: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'valor_frete'
      currency = True
    end
    object cdsNotaEntradavalor_seguro: TFloatField
      DisplayLabel = 'Valor Seguro'
      FieldName = 'valor_seguro'
      currency = True
    end
    object cdsNotaEntradavalor_ipi: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'valor_ipi'
      currency = True
    end
    object cdsNotaEntradavalor_despesas: TFloatField
      DisplayLabel = 'Valor Despesas'
      FieldName = 'valor_despesas'
      currency = True
    end
    object cdsNotaEntradavalor_desconto: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'valor_desconto'
      currency = True
    end
    object cdsNotaEntradavalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object cdsNotaEntradavalor_produtos: TFloatField
      DisplayLabel = 'Valor Produtos'
      FieldName = 'valor_produtos'
      currency = True
    end
    object cdsNotaEntradavalor_pis: TFloatField
      DisplayLabel = 'Valor PIS'
      FieldName = 'valor_pis'
      currency = True
    end
    object cdsNotaEntradavalor_cofins: TFloatField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'valor_cofins'
      currency = True
    end
    object cdsNotaEntradachave_autorizacao: TStringField
      DisplayLabel = 'Chave de Autoriza'#231#227'o'
      FieldName = 'chave_autorizacao'
      Size = 50
    end
    object cdsNotaEntradainfo_complementar: TMemoField
      FieldName = 'info_complementar'
      BlobType = ftMemo
    end
    object cdsNotaEntradacnpj_transportador: TStringField
      FieldName = 'transportador_cnpj'
      Size = 50
    end
    object cdsNotaEntradarazao_transportador: TStringField
      FieldName = 'transportador_razao'
      Size = 100
    end
    object cdsNotaEntradaquantidade_volumes: TIntegerField
      FieldName = 'transp_quantidade_volumes'
    end
    object cdsNotaEntradanumero_volumes: TStringField
      FieldName = 'transp_numero_volumes'
      Size = 50
    end
    object cdsNotaEntradatransp_especie: TStringField
      FieldName = 'transp_especie'
      Size = 50
    end
    object cdsNotaEntradapeso_liquido: TFloatField
      FieldName = 'transp_peso_liquido'
    end
    object cdsNotaEntradapeso_bruto: TFloatField
      FieldName = 'transp_peso_bruto'
    end
    object cdsNotaEntradatransp_modalidade: TIntegerField
      FieldName = 'transp_modalidade'
    end
    object cdsNotaEntradatransp_placa: TStringField
      FieldName = 'transp_placa'
      Size = 8
    end
    object cdsNotaEntradatransp_placa_uf: TStringField
      FieldName = 'transp_placa_uf'
      Size = 2
    end
    object cdsNotaEntradatransp_rntc: TStringField
      FieldName = 'transp_rntc'
    end
    object cdsNotaEntradafornecedor_ie: TStringField
      FieldName = 'fornecedor_ie'
      Size = 50
    end
    object cdsNotaEntradafornecedor_telefone: TStringField
      FieldName = 'fornecedor_telefone'
      Size = 50
    end
    object cdsNotaEntradafornecedor_cep: TStringField
      FieldName = 'fornecedor_cep'
    end
    object cdsNotaEntradafornecedor_logradouro: TStringField
      FieldName = 'fornecedor_logradouro'
      Size = 100
    end
    object cdsNotaEntradafornecedor_end_numero: TStringField
      FieldName = 'fornecedor_end_numero'
    end
    object cdsNotaEntradafornecedor_end_complemento: TStringField
      FieldName = 'fornecedor_end_complemento'
      Size = 50
    end
    object cdsNotaEntradafornecedor_bairro: TStringField
      FieldName = 'fornecedor_bairro'
      Size = 50
    end
    object cdsNotaEntradafornecedor_cod_ibge: TIntegerField
      FieldName = 'fornecedor_cod_ibge'
    end
    object cdsNotaEntradafornecedor_cidade: TStringField
      FieldName = 'fornecedor_cidade'
      Size = 50
    end
    object cdsNotaEntradafornecedor_uf: TStringField
      FieldName = 'fornecedor_uf'
      Size = 2
    end
    object cdsNotaEntradacnpj_destinatario: TStringField
      FieldName = 'cnpj_destinatario'
    end
    object cdsNotaEntradanumero_fatura: TStringField
      FieldName = 'numero_fatura'
      Size = 50
    end
    object cdsNotaEntradatipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
    end
    object cdsNotaEntradatransp_marca: TStringField
      FieldName = 'transp_marca'
      Size = 50
    end
    object cdsNotaEntradanatureza_operacao: TStringField
      FieldName = 'natureza_operacao'
      Size = 500
    end
    object cdsNotaEntradaid_fornecedor_interno: TIntegerField
      FieldName = 'id_fornecedor_interno'
    end
    object cdsNotaEntradaid_transportador_interno: TIntegerField
      FieldName = 'id_transportador_interno'
    end
    object cdsNotaEntradatransportador_ie: TStringField
      FieldName = 'transportador_ie'
      Size = 50
    end
    object cdsNotaEntradatransportador_endereco: TStringField
      FieldName = 'transportador_endereco'
      Size = 50
    end
    object cdsNotaEntradatransportador_cidade: TStringField
      FieldName = 'transportador_cidade'
      Size = 50
    end
    object cdsNotaEntradatransportador_uf: TStringField
      FieldName = 'transportador_uf'
      Size = 2
    end
  end
  object dsNotaEntrada: TDataSource
    AutoEdit = False
    DataSet = cdsNotaEntrada
    Left = 752
    Top = 216
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 760
    Top = 64
  end
  object cdsNotaEntradaItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 272
    object cdsNotaEntradaItemitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
    end
    object cdsNotaEntradaItemcodigo: TStringField
      DisplayLabel = 'C'#243'd. Produto NFe'
      FieldName = 'codigo'
      Size = 50
    end
    object cdsNotaEntradaItemcodigo_ean: TStringField
      FieldName = 'codigo_ean'
      Size = 50
    end
    object cdsNotaEntradaItemdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsNotaEntradaItemncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
    end
    object cdsNotaEntradaItemcfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object cdsNotaEntradaItemunidade: TStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsNotaEntradaItemquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsNotaEntradaItemvalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unitario'
      currency = True
    end
    object cdsNotaEntradaItemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object cdsNotaEntradaItemvalor_despesas: TFloatField
      FieldName = 'valor_despesas'
      currency = True
    end
    object cdsNotaEntradaItemvalor_seguro: TFloatField
      FieldName = 'valor_seguro'
      currency = True
    end
    object cdsNotaEntradaItemvalor_desconto: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'valor_desconto'
      currency = True
    end
    object cdsNotaEntradaItemvalor_frete: TFloatField
      FieldName = 'valor_frete'
      currency = True
    end
    object cdsNotaEntradaItemcest: TStringField
      FieldName = 'cest'
    end
    object cdsNotaEntradaItemcomplemento_descricao: TStringField
      FieldName = 'complemento_descricao'
      Size = 100
    end
    object cdsNotaEntradaItemicms_origem: TIntegerField
      FieldName = 'icms_origem'
    end
    object cdsNotaEntradaItemcst_icms: TIntegerField
      FieldName = 'cst_icms'
    end
    object cdsNotaEntradaItemicms_aliq: TFloatField
      FieldName = 'icms_aliq'
    end
    object cdsNotaEntradaItemvalor_icms: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'valor_icms'
      currency = True
    end
    object cdsNotaEntradaItemcst_pis: TIntegerField
      FieldName = 'cst_pis'
    end
    object cdsNotaEntradaItemvalor_base_pis_cofins: TFloatField
      FieldName = 'valor_base_pis_cofins'
    end
    object cdsNotaEntradaItempis_aliq: TFloatField
      FieldName = 'pis_aliq'
    end
    object cdsNotaEntradaItemvalor_pis: TFloatField
      FieldName = 'valor_pis'
    end
    object cdsNotaEntradaItemcst_cofins: TIntegerField
      FieldName = 'cst_cofins'
    end
    object cdsNotaEntradaItemcofins_aliq: TFloatField
      FieldName = 'cofins_aliq'
    end
    object cdsNotaEntradaItemvalor_cofins: TFloatField
      FieldName = 'valor_cofins'
    end
    object cdsNotaEntradaItemvalor_base_icms: TFloatField
      FieldName = 'valor_base_icms'
    end
    object cdsNotaEntradaItemmvast: TFloatField
      FieldName = 'mvast'
    end
    object cdsNotaEntradaItemvalor_base_icms_sub: TFloatField
      FieldName = 'valor_base_icms_sub'
    end
    object cdsNotaEntradaItemicms_aliq_sub: TFloatField
      FieldName = 'icms_aliq_sub'
    end
    object cdsNotaEntradaItemvalor_icms_sub: TFloatField
      FieldName = 'valor_icms_sub'
    end
    object cdsNotaEntradaItemicms_aliq_reducao: TFloatField
      FieldName = 'icms_aliq_reducao'
    end
    object cdsNotaEntradaItemcsosn: TIntegerField
      FieldName = 'csosn'
    end
    object cdsNotaEntradaItemcod_fer_interno: TStringField
      DisplayLabel = 'C'#243'd. Interno'
      FieldName = 'cod_ref_interno'
      OnChange = cdsNotaEntradaItemcod_fer_internoChange
      Size = 40
    end
    object cdsNotaEntradaItemid_produto_interno: TIntegerField
      FieldName = 'id_produto_interno'
    end
    object cdsNotaEntradaItemflag_encontrado: TBooleanField
      FieldName = 'flag_encontrado'
    end
    object cdsNotaEntradaItemdescricao_interna: TStringField
      DisplayLabel = 'Produto Correspondente'
      FieldName = 'descricao_interna'
      Size = 100
    end
    object cdsNotaEntradaItemvalor_ipi: TFloatField
      FieldName = 'valor_ipi'
    end
    object cdsNotaEntradaItemvalor_base_ipi: TFloatField
      FieldName = 'valor_base_ipi'
    end
    object cdsNotaEntradaItemipi_aliq: TFloatField
      FieldName = 'ipi_aliq'
    end
    object cdsNotaEntradaItemmargem: TFloatField
      FieldName = 'margem'
      OnChange = cdsNotaEntradaItemmargemChange
      EditFormat = '###,###,##0.00'
    end
    object cdsNotaEntradaItemvalor_venda: TFloatField
      FieldName = 'valor_venda'
      OnChange = cdsNotaEntradaItemvalor_vendaChange
    end
    object cdsNotaEntradaItemtipo_item: TStringField
      DisplayLabel = 'Tipo Item'
      FieldName = 'tipo_item'
      OnChange = cdsNotaEntradaItemtipo_itemChange
      Size = 1
    end
    object cdsNotaEntradaItemid_categoria: TIntegerField
      FieldName = 'id_categoria'
      OnChange = cdsNotaEntradaItemid_categoriaChange
    end
  end
  object dsNotaEntradaItem: TDataSource
    DataSet = cdsNotaEntradaItem
    Left = 760
    Top = 272
  end
  object cdsDocRef: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 360
    object cdsDocReftipo_doc: TStringField
      DisplayLabel = 'Tipo de documento'
      FieldName = 'tipo_doc'
      Size = 3
    end
    object cdsDocRefchave_nfe: TStringField
      DisplayLabel = 'Chave SAT / NFe / NFCe'
      FieldName = 'chave_nfe'
      Size = 100
    end
    object cdsDocRefnumero_ecf: TIntegerField
      DisplayLabel = 'N'#250'mero do ECF'
      FieldName = 'numero_ecf'
    end
    object cdsDocRefnumero_cupom_ecf: TIntegerField
      DisplayLabel = 'N'#250'mero do cupom'
      FieldName = 'numero_cupom_ecf'
    end
  end
  object dsDocRef: TDataSource
    AutoEdit = False
    DataSet = cdsDocRef
    Left = 136
    Top = 360
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 360
    object cdsDuplicatanumero_duplicata: TStringField
      DisplayLabel = 'N'#250'mero da Duplicata'
      FieldName = 'numero_duplicata'
      Size = 50
    end
    object cdsDuplicatadata_vencimento: TDateField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'data_vencimento'
    end
    object cdsDuplicatavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
  end
  object dsDuplicata: TDataSource
    AutoEdit = False
    DataSet = cdsDuplicata
    Left = 280
    Top = 360
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 416
    Top = 112
    object acBuscaMaterial: TAction
      Caption = 'acBuscaMaterial'
      ImageIndex = 0
      OnExecute = acBuscaMaterialExecute
    end
    object acBuscacategoria: TAction
      Caption = 'acBuscacategoria'
      OnExecute = acBuscacategoriaExecute
    end
  end
end
