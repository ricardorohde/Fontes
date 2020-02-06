inherited frmDetalheNotaFiscalEntrada: TfrmDetalheNotaFiscalEntrada
  Caption = 'Nota Fiscal de Entrada'
  ClientHeight = 599
  ClientWidth = 920
  ExplicitTop = -66
  ExplicitWidth = 926
  ExplicitHeight = 628
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 920
    Height = 550
    ExplicitWidth = 920
    ExplicitHeight = 550
    FullHeight = 200
    object Label19: TLabel
      Left = 4
      Top = 111
      Width = 123
      Height = 16
      Caption = 'Chave de autoriza'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label20: TLabel
      Left = 378
      Top = 111
      Width = 31
      Height = 16
      Caption = 'CFOP'
    end
    object Label1: TLabel
      Left = 378
      Top = 7
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
    end
    object Label2: TLabel
      Left = 378
      Top = 59
      Width = 77
      Height = 16
      Caption = 'Data Emiss'#227'o'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 505
      Top = 59
      Width = 74
      Height = 16
      Caption = 'Data Entrada'
      FocusControl = cxDBDateEdit2
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 4
      Top = 414
      Width = 909
      Height = 133
      BorderColor = clNavy
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Valores'
      TabOrder = 0
      object Label6: TLabel
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
      object Label16: TLabel
        Left = 646
        Top = 76
        Width = 104
        Height = 16
        Caption = 'Valor ICMS Retido'
      end
      object Label15: TLabel
        Left = 773
        Top = 24
        Width = 84
        Height = 16
        Caption = 'Valor Produtos'
      end
      object Label14: TLabel
        Left = 773
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
      object Label12: TLabel
        Left = 392
        Top = 76
        Width = 88
        Height = 16
        Caption = 'Valor Despesas'
      end
      object Label10: TLabel
        Left = 138
        Top = 76
        Width = 75
        Height = 16
        Caption = 'Valor Seguro'
      end
      object Label8: TLabel
        Left = 265
        Top = 24
        Width = 121
        Height = 16
        Caption = 'Valor Base ICMS Sub'
      end
      object Label7: TLabel
        Left = 392
        Top = 24
        Width = 90
        Height = 16
        Caption = 'Valor ICMS Sub'
      end
      object Label5: TLabel
        Left = 138
        Top = 24
        Width = 64
        Height = 16
        Caption = 'Valor ICMS'
      end
      object Label9: TLabel
        Left = 11
        Top = 76
        Width = 64
        Height = 16
        Caption = 'Valor Frete'
      end
      object Label11: TLabel
        Left = 519
        Top = 76
        Width = 49
        Height = 16
        Caption = 'Valor IPI'
      end
      object cxDBCurrencyEdit14: TcxDBCurrencyEdit
        Left = 646
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_cofins'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 5
        Width = 121
      end
      object cxDBCurrencyEdit13: TcxDBCurrencyEdit
        Left = 519
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_pis'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 4
        Width = 121
      end
      object cxDBCurrencyEdit12: TcxDBCurrencyEdit
        Left = 646
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_icms_retido'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 12
        Width = 121
      end
      object cxDBCurrencyEdit11: TcxDBCurrencyEdit
        Left = 773
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_produtos'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 6
        Width = 121
      end
      object cxDBCurrencyEdit10: TcxDBCurrencyEdit
        Left = 773
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_total'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 13
        Width = 121
      end
      object cxDBCurrencyEdit9: TcxDBCurrencyEdit
        Left = 265
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_desconto'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 9
        Width = 121
      end
      object cxDBCurrencyEdit8: TcxDBCurrencyEdit
        Left = 392
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_despesas'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 10
        Width = 121
      end
      object cxDBCurrencyEdit7: TcxDBCurrencyEdit
        Left = 519
        Top = 98
        TabStop = False
        DataBinding.DataField = 'valor_ipi'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 11
        Width = 121
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 138
        Top = 98
        DataBinding.DataField = 'valor_seguro'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 8
        Width = 121
      end
      object cxDBCurrencyEdit5: TcxDBCurrencyEdit
        Left = 11
        Top = 98
        DataBinding.DataField = 'valor_frete'
        DataBinding.DataSource = DSNotaEntrada
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
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 2
        Width = 121
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 392
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_icms_sub'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 3
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 11
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_base_icms'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 0
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 138
        Top = 46
        TabStop = False
        DataBinding.DataField = 'valor_icms'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 1
        Width = 121
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 4
      Top = 9
      Width = 368
      Height = 96
      BorderColor = clNavy
      Caption = 'Fornecedor'
      TabOrder = 1
      object Label21: TLabel
        Left = 11
        Top = 51
        Width = 33
        Height = 16
        Caption = 'CNPJ:'
      end
      object Label22: TLabel
        Left = 11
        Top = 73
        Width = 58
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object DBText2: TDBText
        Left = 75
        Top = 73
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'endereco_fornecedor'
        DataSource = DSNotaEntrada
      end
      object DBText1: TDBText
        Left = 50
        Top = 51
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'cnpj_fornecedor'
        DataSource = DSNotaEntrada
      end
      object edCodFornecedor: TcxDBButtonEdit
        Left = 10
        Top = 21
        DataBinding.DataField = 'id_fornecedor'
        DataBinding.DataSource = DSNotaEntrada
        Properties.Buttons = <
          item
            Action = acBuscaFornecedor
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 0
        Width = 79
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 95
        Top = 21
        TabStop = False
        DataBinding.DataField = 'nome_fornecedor'
        DataBinding.DataSource = DSNotaEntrada
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 1
        Width = 266
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 4
      Top = 133
      TabStop = False
      DataBinding.DataField = 'chave_autorizacao'
      DataBinding.DataSource = DSNotaEntrada
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 2
      Width = 368
    end
    object edCFOP: TcxDBButtonEdit
      Left = 378
      Top = 133
      DataBinding.DataField = 'cfop'
      DataBinding.DataSource = DSNotaEntrada
      Properties.Buttons = <
        item
          Action = acBuscaCFOP
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      TabOrder = 3
      Width = 89
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 473
      Top = 133
      TabStop = False
      DataBinding.DataField = 'cfop_descricao'
      DataBinding.DataSource = DSNotaEntrada
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 4
      Width = 342
    end
    object edNumero: TcxDBSpinEdit
      Left = 378
      Top = 29
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = DSNotaEntrada
      Properties.SpinButtons.Visible = False
      TabOrder = 5
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 378
      Top = 81
      TabStop = False
      DataBinding.DataField = 'data_emissao'
      DataBinding.DataSource = DSNotaEntrada
      Properties.ReadOnly = False
      TabOrder = 6
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 505
      Top = 81
      TabStop = False
      DataBinding.DataField = 'data_entrada'
      DataBinding.DataSource = DSNotaEntrada
      TabOrder = 7
      Width = 121
    end
    object PageControlNFE: TAdvPageControl
      Left = 4
      Top = 163
      Width = 909
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
      TabBackGroundColor = 14404792
      TabMargin.RightMargin = 0
      TabOverlap = 0
      LowerActive = 1
      Version = '2.0.0.6'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 8
      object pgItens: TAdvTabSheet
        Caption = 'Itens'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          901
          214)
        object cxGrid1: TcxGrid
          Left = 3
          Top = 3
          Width = 897
          Height = 167
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaEntradaItem
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1item: TcxGridDBColumn
              DataBinding.FieldName = 'item'
              Width = 43
            end
            object cxGrid1DBTableView1codigo_produto: TcxGridDBColumn
              DataBinding.FieldName = 'codigo_produto'
              Width = 91
            end
            object cxGrid1DBTableView1descricao_produto: TcxGridDBColumn
              DataBinding.FieldName = 'descricao_produto'
              Width = 116
            end
            object cxGrid1DBTableView1cst: TcxGridDBColumn
              DataBinding.FieldName = 'cst'
              Options.AutoWidthSizable = False
              Width = 35
            end
            object cxGrid1DBTableView1cfop: TcxGridDBColumn
              DataBinding.FieldName = 'cfop'
              Width = 38
            end
            object cxGrid1DBTableView1quantidade: TcxGridDBColumn
              DataBinding.FieldName = 'quantidade'
              Width = 75
            end
            object cxGrid1DBTableView1peso: TcxGridDBColumn
              DataBinding.FieldName = 'peso'
              Width = 74
            end
            object cxGrid1DBTableView1valor_unitario: TcxGridDBColumn
              DataBinding.FieldName = 'valor_unitario'
              Width = 73
            end
            object cxGrid1DBTableView1subtotal: TcxGridDBColumn
              DataBinding.FieldName = 'subtotal'
              Width = 76
            end
            object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
              DataBinding.FieldName = 'valor_desconto'
              Width = 73
            end
            object cxGrid1DBTableView1valor_total: TcxGridDBColumn
              DataBinding.FieldName = 'valor_total'
              Width = 72
            end
            object cxGrid1DBTableView1valor_icms: TcxGridDBColumn
              DataBinding.FieldName = 'valor_icms'
              Width = 76
            end
            object cxGrid1DBTableView1valor_ipi: TcxGridDBColumn
              DataBinding.FieldName = 'valor_ipi'
              Width = 73
            end
            object cxGrid1DBTableView1tipo_item: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_item'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object btAdicionarItem: TAdvGlowButton
          Left = 3
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 69
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btAdicionarItemClick
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
        object btRemoverItem: TAdvGlowButton
          Left = 109
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Remover'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 80
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btRemoverItemClick
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
        object btEditarItem: TAdvGlowButton
          Left = 215
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 17
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btEditarItemClick
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
      object pgDocReferenciado: TAdvTabSheet
        Caption = 'Doc. Referenciados'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          901
          214)
        object cxGrid2: TcxGrid
          Left = 3
          Top = 3
          Width = 897
          Height = 167
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaEntradaDocRef
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1item: TcxGridDBColumn
              DataBinding.FieldName = 'item'
              Width = 71
            end
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
              Caption = 'N'#250'mero do ECF'
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
        object btAdicionarDoc: TAdvGlowButton
          Left = 3
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 69
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btAdicionarDocClick
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
        object btRemoverDoc: TAdvGlowButton
          Left = 109
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Remover'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 80
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btRemoverDocClick
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
        object btEditarDoc: TAdvGlowButton
          Left = 215
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 17
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btEditarDocClick
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
      object pgFaturamento: TAdvTabSheet
        Caption = 'Faturamento'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          901
          214)
        object Label27: TLabel
          Left = 153
          Top = 3
          Width = 104
          Height = 16
          Caption = 'Numero da Fatura'
          FocusControl = cxDBTextEdit5
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
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 153
          Top = 25
          DataBinding.DataField = 'numero_fatura'
          DataBinding.DataSource = DSNotaEntrada
          TabOrder = 2
          Width = 144
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 3
          Top = 25
          Width = 144
          Height = 24
          DataField = 'tipo_pagamento'
          DataSource = DSNotaEntrada
          Items.Strings = (
            'A Vista'
            'A prazo')
          TabOrder = 1
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
          Width = 897
          Height = 93
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 3
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaEntradaDuplicata
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView2item: TcxGridDBColumn
              DataBinding.FieldName = 'item'
            end
            object cxGridDBTableView2numero_duplicata: TcxGridDBColumn
              DataBinding.FieldName = 'numero_duplicata'
            end
            object cxGridDBTableView2valor: TcxGridDBColumn
              DataBinding.FieldName = 'valor'
            end
            object cxGridDBTableView2DataVencimento: TcxGridDBColumn
              DataBinding.FieldName = 'data_vencimento'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object btAdicionarDuplicata: TAdvGlowButton
          Left = 3
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 69
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btAdicionarDuplicataClick
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
        object btRemoverDuplicata: TAdvGlowButton
          Left = 109
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Remover'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 80
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btRemoverDuplicataClick
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
        object btEditarDuplicata: TAdvGlowButton
          Left = 215
          Top = 176
          Width = 100
          Height = 30
          Anchors = [akLeft, akBottom]
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 17
          Images = frmMenu.ImgList24
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btEditarDuplicataClick
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
      object pgInfoComplementares: TAdvTabSheet
        Caption = 'Informa'#231#245'es Complementares'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          901
          214)
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 3
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'info_complementar'
          DataBinding.DataSource = DSNotaEntrada
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 208
          Width = 898
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
        object Label34: TLabel
          Left = 708
          Top = 3
          Width = 16
          Height = 16
          Caption = 'IE:'
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
          FocusControl = cxDBTextEdit7
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
          FocusControl = cxDBTextEdit8
        end
        object Label39: TLabel
          Left = 509
          Top = 107
          Width = 110
          Height = 16
          Caption = 'Marca dos volumes'
          FocusControl = cxDBTextEdit9
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
          FocusControl = cxDBTextEdit12
        end
        object Label44: TLabel
          Left = 168
          Top = 159
          Width = 15
          Height = 16
          Caption = 'UF'
          FocusControl = cxDBTextEdit13
        end
        object Label45: TLabel
          Left = 225
          Top = 159
          Width = 78
          Height = 16
          Caption = 'RNTC (ANTT)'
          FocusControl = cxDBTextEdit14
        end
        object edCodTransportador: TcxDBButtonEdit
          Left = 3
          Top = 25
          DataBinding.DataField = 'id_transportador'
          DataBinding.DataSource = DSNotaEntrada
          Properties.Buttons = <
            item
              Action = acBuscaTransportador
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = frmMenu.ImgList16
          TabOrder = 0
          Width = 111
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 120
          Top = 25
          TabStop = False
          DataBinding.DataField = 'nome_transportador'
          DataBinding.DataSource = DSNotaEntrada
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 1
          Width = 383
        end
        object JvDBComboBox4: TJvDBComboBox
          Left = 3
          Top = 77
          Width = 216
          Height = 24
          DataField = 'transp_modalidade'
          DataSource = DSNotaEntrada
          Items.Strings = (
            'Por conta do emitente'
            'Por conta do destinat'#225'rio/remetente'
            'Por conta de terceiros'
            'Sem frete')
          TabOrder = 4
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
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 3
          Top = 129
          DataBinding.DataField = 'transp_numero_volumes'
          DataBinding.DataSource = DSNotaEntrada
          TabOrder = 8
          Width = 216
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 225
          Top = 129
          DataBinding.DataField = 'transp_quantidade_volumes'
          DataBinding.DataSource = DSNotaEntrada
          TabOrder = 9
          Width = 136
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 367
          Top = 129
          DataBinding.DataField = 'transp_especie'
          DataBinding.DataSource = DSNotaEntrada
          TabOrder = 10
          Width = 136
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 509
          Top = 129
          DataBinding.DataField = 'transp_marca'
          DataBinding.DataSource = DSNotaEntrada
          TabOrder = 11
          Width = 136
        end
        object cxDBCurrencyEdit15: TcxDBCurrencyEdit
          Left = 225
          Top = 77
          DataBinding.DataField = 'transp_peso_liquido'
          DataBinding.DataSource = DSNotaEntrada
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 5
          Width = 136
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 367
          Top = 77
          DataBinding.DataField = 'transp_peso_bruto'
          DataBinding.DataSource = DSNotaEntrada
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 6
          Width = 136
        end
        object cxDBCurrencyEdit17: TcxDBCurrencyEdit
          Left = 509
          Top = 77
          DataBinding.DataField = 'valor_frete'
          DataBinding.DataSource = DSNotaEntrada
          Properties.ReadOnly = False
          Style.Color = clWindow
          TabOrder = 7
          Width = 136
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 509
          Top = 25
          TabStop = False
          DataBinding.DataField = 'cnpj_transportador'
          DataBinding.DataSource = DSNotaEntrada
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 2
          Width = 193
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 708
          Top = 25
          TabStop = False
          DataBinding.DataField = 'ie_transportador'
          DataBinding.DataSource = DSNotaEntrada
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 3
          Width = 193
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 3
          Top = 181
          DataBinding.DataField = 'transp_placa_numero'
          DataBinding.DataSource = DSNotaEntrada
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 159
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 168
          Top = 181
          DataBinding.DataField = 'transp_placa_uf'
          DataBinding.DataSource = DSNotaEntrada
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 51
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 225
          Top = 181
          DataBinding.DataField = 'transp_rntc'
          DataBinding.DataSource = DSNotaEntrada
          TabOrder = 14
          Width = 136
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 550
    Width = 920
    ExplicitTop = 550
    ExplicitWidth = 920
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 813
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
      TabOrder = 0
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
      Left = 706
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Salvar'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
  end
  object qrNotaEntrada: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO nota_entrada'
      
        '  (id_nota_entrada, id_empresa, id_fornecedor, id_usuario, id_si' +
        'tuacao, numero, data_emissao, data_entrada, cfop, serie, '
      
        '   valor_icms, valor_base_icms, valor_icms_sub, valor_base_icms_' +
        'sub, valor_frete, valor_seguro, valor_ipi, valor_despesas, '
      
        '   valor_desconto, valor_total, valor_produtos, valor_icms_retid' +
        'o, valor_pis, valor_cofins, chave_autorizacao,'
      
        '   info_complementar, numero_fatura, tipo_pagamento, id_transpor' +
        'tador, transp_numero_volumes, transp_quantidade_volumes,'
      
        '   transp_especie, transp_marca, transp_peso_liquido, transp_pes' +
        'o_bruto, transp_modalidade, transp_placa_numero, transp_placa_uf' +
        ','
      '   transp_rntc'
      ' )'
      'VALUES'
      
        '  (:id_nota_entrada, :id_empresa, :id_fornecedor, :id_usuario, :' +
        'id_situacao, :numero, :data_emissao, :data_entrada, :cfop, :seri' +
        'e, '
      
        '   :valor_icms, :valor_base_icms, :valor_icms_sub, :valor_base_i' +
        'cms_sub, :valor_frete, :valor_seguro, :valor_ipi, :valor_despesa' +
        's, '
      
        '   :valor_desconto, :valor_total, :valor_produtos, :valor_icms_r' +
        'etido, :valor_pis, :valor_cofins, :chave_autorizacao,'
      
        '   :info_complementar, :numero_fatura, :tipo_pagamento, :id_tran' +
        'sportador, :transp_numero_volumes, :transp_quantidade_volumes,'
      
        '   :transp_especie, :transp_marca, :transp_peso_liquido, :transp' +
        '_peso_bruto, :transp_modalidade, :transp_placa_numero, :transp_p' +
        'laca_uf, '
      '   :transp_rntc'
      ')')
    SQLDelete.Strings = (
      'DELETE FROM nota_entrada'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada')
    SQLUpdate.Strings = (
      'UPDATE nota_entrada'
      'SET'
      
        'id_nota_entrada = :id_nota_entrada, id_empresa = :id_empresa, id' +
        '_fornecedor = :id_fornecedor, id_usuario = :id_usuario, '
      
        'id_situacao = :id_situacao, numero = :numero, data_emissao = :da' +
        'ta_emissao, data_entrada = :data_entrada, cfop = :cfop, '
      
        'serie = :serie, valor_icms = :valor_icms, valor_base_icms = :val' +
        'or_base_icms, valor_icms_sub = :valor_icms_sub, '
      
        'valor_base_icms_sub = :valor_base_icms_sub, valor_frete = :valor' +
        '_frete, valor_seguro = :valor_seguro, valor_ipi = :valor_ipi, '
      
        'valor_despesas = :valor_despesas, valor_desconto = :valor_descon' +
        'to, valor_total = :valor_total, valor_produtos = :valor_produtos' +
        ', '
      
        'valor_icms_retido = :valor_icms_retido, valor_pis = :valor_pis, ' +
        'valor_cofins = :valor_cofins, chave_autorizacao = :chave_autoriz' +
        'acao,'
      
        'info_complementar = :info_complementar , numero_fatura = :numero' +
        '_fatura, tipo_pagamento = :tipo_pagamento,'
      
        'id_transportador = :id_transportador, transp_numero_volumes = :t' +
        'ransp_numero_volumes,'
      
        'transp_quantidade_volumes = :transp_quantidade_volumes, transp_e' +
        'specie = :transp_especie, transp_marca = :transp_marca,'
      
        'transp_peso_liquido = :transp_peso_liquido, transp_peso_bruto = ' +
        ':transp_peso_bruto, transp_modalidade = :transp_modalidade,'
      
        'transp_placa_numero = :transp_placa_numero, transp_placa_uf = :t' +
        'ransp_placa_uf, transp_rntc =:transp_rntc'
      'WHERE'
      'id_nota_entrada = :Old_id_nota_entrada')
    SQLLock.Strings = (
      'SELECT * FROM nota_entrada'
      'WHERE'
      '  id_nota_entrada = :Old_id_nota_entrada'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_entrada, id_empresa, id_fornecedor, id_usuario, i' +
        'd_situacao, numero, data_emissao, data_entrada, cfop, serie, val' +
        'or_icms, valor_base_icms, valor_icms_sub, valor_base_icms_sub, v' +
        'alor_frete, valor_seguro, valor_ipi, valor_despesas, valor_desco' +
        'nto, valor_total, valor_produtos, valor_icms_retido, valor_pis, ' +
        'valor_cofins, chave_autorizacao, cnpj_fornecedor, nome_fornecedo' +
        'r FROM nota_entrada'
      'WHERE'
      '  id_nota_entrada = :id_nota_entrada')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM nota_entrada'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'ne.id_nota_entrada,'
      'ne.id_empresa,'
      'ne.id_fornecedor,'
      'f.razao_social as  nome_fornecedor,'
      'f.cnpj as cnpj_fornecedor,'
      
        'cast(concat(f.endereco_logradouro, '#39' '#39', f.endereco_numero, '#39' '#39', ' +
        'f.endereco_cidade) as varchar(100))  as endereco_fornecedor,'
      'ne.id_usuario,'
      'ne.id_situacao,'
      'ne.numero,'
      'ne.data_emissao,'
      'ne.data_entrada,'
      'ne.cfop,'
      'cfop.cfop_descricao,'
      'ne.serie,'
      'ne.valor_icms,'
      'ne.valor_base_icms,'
      'ne.valor_icms_sub,'
      'ne.valor_base_icms_sub,'
      'ne.valor_frete,'
      'ne.valor_seguro,'
      'ne.valor_ipi,'
      'ne.valor_despesas,'
      'ne.valor_desconto,'
      'ne.valor_total,'
      'ne.valor_produtos,'
      'ne.valor_icms_retido,'
      'ne.valor_pis,'
      'ne.valor_cofins,'
      'ne.chave_autorizacao,'
      'ne.info_complementar,'
      'ne.numero_fatura,'
      'ne.tipo_pagamento,'
      'ne.id_transportador,'
      'ne.transp_numero_volumes,'
      'ne.transp_quantidade_volumes,'
      'ne.transp_especie,'
      'ne.transp_marca,'
      'ne.transp_peso_liquido,'
      'ne.transp_peso_bruto,'
      'ne.transp_modalidade,'
      'ne.transp_placa_numero,'
      'ne.transp_placa_uf,'
      'ne.transp_rntc,'
      't.nome_fantasia as nome_transportador,'
      't.cnpj as cnpj_transportador,'
      't.inscricao_estadual as ie_transportador'
      'from nota_entrada ne'
      'left join cfop on cfop.cfop_codigo = ne.cfop '
      
        'left join fornecedor f on f.id_fornecedor=ne.id_fornecedor and f' +
        '.id_empresa=ne.id_empresa'
      
        'left join fornecedor t on t.id_fornecedor=ne.id_transportador an' +
        'd t.id_empresa=ne.id_empresa'
      
        'where ne.id_nota_entrada = :id_nota_entrada and ne.id_empresa = ' +
        ':id_empresa')
    Options.DefaultValues = True
    AfterOpen = qrNotaEntradaAfterOpen
    BeforePost = qrNotaEntradaBeforePost
    AfterPost = qrNotaEntradaAfterPost
    OnNewRecord = qrNotaEntradaNewRecord
    Left = 792
    Top = 80
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
      end>
    object qrNotaEntradaid_nota_entrada: TIntegerField
      DefaultExpression = 'nextval('#39'nota_entrada_id_nota_entrada_seq'#39'::regclass)'
      DisplayLabel = 'ID Nota Entrada'
      FieldName = 'id_nota_entrada'
    end
    object qrNotaEntradaid_empresa: TIntegerField
      DisplayLabel = 'ID Empresa'
      FieldName = 'id_empresa'
      Required = True
    end
    object qrNotaEntradaid_fornecedor: TIntegerField
      DisplayLabel = 'ID Fornecedor'
      FieldName = 'id_fornecedor'
      Required = True
      OnChange = qrNotaEntradaid_fornecedorChange
    end
    object qrNotaEntradacnpj_fornecedor: TWideStringField
      DisplayLabel = 'CNPJ Fornecedor'
      FieldName = 'cnpj_fornecedor'
    end
    object qrNotaEntradanome_fornecedor: TWideStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'nome_fornecedor'
      Size = 100
    end
    object qrNotaEntradaid_usuario: TIntegerField
      DisplayLabel = 'ID Usu'#225'rio'
      FieldName = 'id_usuario'
      Required = True
    end
    object qrNotaEntradaid_situacao: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Status'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaEntradanumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Required = True
      OnChange = qrNotaEntradanumeroChange
    end
    object qrNotaEntradadata_emissao: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'data_emissao'
      Required = True
    end
    object qrNotaEntradadata_entrada: TDateField
      DisplayLabel = 'Data Entrada'
      FieldName = 'data_entrada'
    end
    object qrNotaEntradacfop: TWideStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Required = True
      OnChange = qrNotaEntradacfopChange
      Size = 4
    end
    object qrNotaEntradaserie: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
    end
    object qrNotaEntradavalor_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS'
      FieldName = 'valor_icms'
      currency = True
    end
    object qrNotaEntradavalor_base_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base ICMS'
      FieldName = 'valor_base_icms'
      currency = True
    end
    object qrNotaEntradavalor_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Sub'
      FieldName = 'valor_icms_sub'
      currency = True
    end
    object qrNotaEntradavalor_base_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base ICMS Sub'
      FieldName = 'valor_base_icms_sub'
      currency = True
    end
    object qrNotaEntradavalor_frete: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Frete'
      FieldName = 'valor_frete'
      OnChange = qrNotaEntradavalor_freteChange
      currency = True
    end
    object qrNotaEntradavalor_seguro: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Seguro'
      FieldName = 'valor_seguro'
      OnChange = qrNotaEntradavalor_seguroChange
      currency = True
    end
    object qrNotaEntradavalor_ipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor IPI'
      FieldName = 'valor_ipi'
      currency = True
    end
    object qrNotaEntradavalor_despesas: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Despesas'
      FieldName = 'valor_despesas'
      currency = True
    end
    object qrNotaEntradavalor_desconto: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Desconto'
      FieldName = 'valor_desconto'
      currency = True
    end
    object qrNotaEntradavalor_total: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrNotaEntradavalor_produtos: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Produtos'
      FieldName = 'valor_produtos'
      currency = True
    end
    object qrNotaEntradavalor_icms_retido: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Retido'
      FieldName = 'valor_icms_retido'
      currency = True
    end
    object qrNotaEntradavalor_pis: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor PIS'
      FieldName = 'valor_pis'
      currency = True
    end
    object qrNotaEntradavalor_cofins: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Cofins'
      FieldName = 'valor_cofins'
      currency = True
    end
    object qrNotaEntradachave_autorizacao: TWideStringField
      DisplayLabel = 'Chave de Autoriza'#231#227'o'
      FieldName = 'chave_autorizacao'
      Size = 100
    end
    object qrNotaEntradaendereco_fornecedor: TWideStringField
      FieldName = 'endereco_fornecedor'
      Size = 100
    end
    object qrNotaEntradacfop_descricao: TWideStringField
      FieldName = 'cfop_descricao'
      Size = 250
    end
    object qrNotaEntradainfo_complementar: TWideMemoField
      FieldName = 'info_complementar'
      BlobType = ftWideMemo
    end
    object qrNotaEntradanumero_fatura: TWideStringField
      FieldName = 'numero_fatura'
      Size = 50
    end
    object qrNotaEntradatipo_pagamento: TIntegerField
      DefaultExpression = '0'
      FieldName = 'tipo_pagamento'
      Required = True
    end
    object qrNotaEntradaid_transportador: TIntegerField
      FieldName = 'id_transportador'
      OnChange = qrNotaEntradaid_transportadorChange
    end
    object qrNotaEntradatransp_numero_volumes: TWideStringField
      FieldName = 'transp_numero_volumes'
      Size = 50
    end
    object qrNotaEntradatransp_quantidade_volumes: TIntegerField
      DefaultExpression = '1'
      FieldName = 'transp_quantidade_volumes'
    end
    object qrNotaEntradatransp_especie: TWideStringField
      FieldName = 'transp_especie'
      Size = 50
    end
    object qrNotaEntradatransp_marca: TWideStringField
      FieldName = 'transp_marca'
      Size = 50
    end
    object qrNotaEntradatransp_peso_liquido: TFloatField
      FieldName = 'transp_peso_liquido'
    end
    object qrNotaEntradatransp_peso_bruto: TFloatField
      FieldName = 'transp_peso_bruto'
    end
    object qrNotaEntradatransp_modalidade: TIntegerField
      DefaultExpression = '1'
      FieldName = 'transp_modalidade'
      Required = True
    end
    object qrNotaEntradatransp_placa_numero: TWideStringField
      FieldName = 'transp_placa_numero'
      Size = 8
    end
    object qrNotaEntradatransp_placa_uf: TWideStringField
      FieldName = 'transp_placa_uf'
      Size = 2
    end
    object qrNotaEntradatransp_rntc: TWideStringField
      FieldName = 'transp_rntc'
    end
    object qrNotaEntradanome_transportador: TWideStringField
      FieldName = 'nome_transportador'
      Size = 100
    end
    object qrNotaEntradacnpj_transportador: TWideStringField
      FieldName = 'cnpj_transportador'
      Size = 14
    end
    object qrNotaEntradaie_transportador: TWideStringField
      FieldName = 'ie_transportador'
    end
  end
  object DSNotaEntrada: TDataSource
    AutoEdit = False
    DataSet = qrNotaEntrada
    OnStateChange = DSNotaEntradaStateChange
    Left = 734
    Top = 32
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 656
    Top = 16
    object acBuscaFornecedor: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaFornecedorExecute
    end
    object acBuscaCFOP: TAction
      Caption = 'acBuscaCFOP'
      ImageIndex = 0
      OnExecute = acBuscaCFOPExecute
    end
    object acBuscaTransportador: TAction
      Caption = 'acBuscaTransportador'
      ImageIndex = 0
      OnExecute = acBuscaTransportadorExecute
    end
  end
  object qrNotaEntradaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select nei.id_nota_entrada , nei.item, '
      
        'cast(coalesce(m.mat_004, cast(c.id_composicao as varchar)) as va' +
        'rchar(50)) as codigo_produto, '
      
        'cast(coalesce(m.mat_003, c.descricao) as varchar(60)) as descric' +
        'ao_produto, '
      
        'nei.cst, nei.cfop, nei.quantidade, nei.peso_unitario_liquido * n' +
        'ei.quantidade as peso, '
      
        'nei.valor_unitario, nei.valor_unitario * nei.quantidade as subto' +
        'tal,'
      
        'nei.valor_desconto, nei.valor_total, nei.valor_icms, nei.valor_i' +
        'pi,'
      
        'cast(case nei.tipo_item when '#39'M'#39' then '#39'Produto'#39' else '#39'M. Prima'#39' ' +
        'end as varchar(10)) as tipo_item'
      'from nota_entrada_item nei'
      
        'left join materiais m on m.mat_001 = nei.id_material and m.emp_0' +
        '01=nei.id_empresa'
      
        'left join composicao c on nei.id_composicao= c.id_composicao and' +
        ' nei.id_empresa=c.id_empresa'
      
        'where nei.id_nota_entrada = :id_nota_entrada and nei.id_empresa ' +
        '= :id_empresa'
      'order by nei.item')
    Left = 348
    Top = 299
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
      end>
    object qrNotaEntradaItemitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrNotaEntradaItemcodigo_produto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo_produto'
      ReadOnly = True
      Size = 50
    end
    object qrNotaEntradaItemdescricao_produto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_produto'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrNotaEntradaItemcst: TIntegerField
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Required = True
    end
    object qrNotaEntradaItemcfop: TWideStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object qrNotaEntradaItemquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrNotaEntradaItempeso: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'peso'
      ReadOnly = True
      DisplayFormat = '0.000'
    end
    object qrNotaEntradaItemvalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrNotaEntradaItemsubtotal: TFloatField
      DisplayLabel = 'Subtotal'
      FieldName = 'subtotal'
      ReadOnly = True
      currency = True
    end
    object qrNotaEntradaItemvalor_desconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'valor_desconto'
      Required = True
      currency = True
    end
    object qrNotaEntradaItemvalor_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'valor_total'
      Required = True
      currency = True
    end
    object qrNotaEntradaItemvalor_icms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'valor_icms'
      Required = True
      currency = True
    end
    object qrNotaEntradaItemvalor_ipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'valor_ipi'
      Required = True
      currency = True
    end
    object qrNotaEntradaItemid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
      Required = True
    end
    object qrNotaEntradaItemtipo_item: TWideStringField
      DisplayLabel = 'Tipo Item'
      FieldName = 'tipo_item'
      ReadOnly = True
      Size = 10
    end
  end
  object dsNotaEntradaItem: TDataSource
    AutoEdit = False
    DataSet = qrNotaEntradaItem
    Left = 444
    Top = 299
  end
  object qrNotaEntradaDocRef: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_nota_entrada, id_empresa, item, tipo_doc, chave_nfe, n' +
        'umero_ecf, numero_cupom_ecf, id_situacao '
      'from nota_entrada_doc_referenciado'
      
        'where id_nota_entrada=:id_nota_entrada and id_empresa=:id_empres' +
        'a'
      'order by item')
    Left = 108
    Top = 235
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
      end>
    object qrNotaEntradaDocRefid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrNotaEntradaDocRefitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrNotaEntradaDocReftipo_doc: TWideStringField
      DisplayLabel = 'Tipo de documento'
      FieldName = 'tipo_doc'
      Required = True
      Size = 3
    end
    object qrNotaEntradaDocRefchave_nfe: TWideStringField
      DisplayLabel = 'Chave SAT / NFe / NFCe'
      FieldName = 'chave_nfe'
      Size = 100
    end
    object qrNotaEntradaDocRefnumero_ecf: TIntegerField
      DisplayLabel = 'N'#250'mero ECF'
      FieldName = 'numero_ecf'
    end
    object qrNotaEntradaDocRefnumero_cupom_ecf: TIntegerField
      DisplayLabel = 'N'#250'mero do Cupom'
      FieldName = 'numero_cupom_ecf'
    end
    object qrNotaEntradaDocRefid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaEntradaDocRefid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
      Required = True
    end
  end
  object dsNotaEntradaDocRef: TDataSource
    AutoEdit = False
    DataSet = qrNotaEntradaDocRef
    Left = 220
    Top = 235
  end
  object qrNotaEntradaDuplicata: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_nota_entrada, id_empresa, item, numero_duplicata, valo' +
        'r, data_vencimento, id_situacao '
      'from nota_entrada_duplicata'
      
        'where id_nota_entrada=:id_nota_entrada and id_empresa=:id_empres' +
        'a'
      'order by item')
    Left = 356
    Top = 235
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
      end>
    object IntegerField2: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaEntradaDuplicatanumero_duplicata: TWideStringField
      DisplayLabel = 'N'#250'mero Duplicata'
      FieldName = 'numero_duplicata'
      Required = True
      Size = 50
    end
    object qrNotaEntradaDuplicatavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrNotaEntradaDuplicatadata_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
    object qrNotaEntradaDuplicataid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
      Required = True
    end
  end
  object dsNotaEntradaDuplicata: TDataSource
    AutoEdit = False
    DataSet = qrNotaEntradaDuplicata
    Left = 468
    Top = 235
  end
end
