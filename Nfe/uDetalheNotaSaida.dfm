inherited frmDetalheNotaSaida: TfrmDetalheNotaSaida
  Caption = 'Nota Fiscal de Sa'#237'da'
  ClientHeight = 673
  ClientWidth = 938
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 944
  ExplicitHeight = 701
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 938
    Height = 624
    ExplicitWidth = 938
    ExplicitHeight = 624
    FullHeight = 200
    object Label2: TLabel
      Left = 387
      Top = 45
      Width = 77
      Height = 16
      Caption = 'Data Emiss'#227'o'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 514
      Top = 45
      Width = 62
      Height = 16
      Caption = 'Data Sa'#237'da'
      FocusControl = cxDBDateEdit2
    end
    object Label4: TLabel
      Left = 609
      Top = 2
      Width = 30
      Height = 16
      Caption = 'S'#233'rie'
      FocusControl = cxDBSpinEdit2
    end
    object Label20: TLabel
      Left = 387
      Top = 130
      Width = 31
      Height = 16
      Caption = 'CFOP'
    end
    object Label1: TLabel
      Left = 387
      Top = 2
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
    end
    object Label24: TLabel
      Left = 514
      Top = 2
      Width = 89
      Height = 16
      Caption = 'Modelo/Esp'#233'cie'
    end
    object Label19: TLabel
      Left = 4
      Top = 130
      Width = 123
      Height = 16
      Caption = 'Chave de autoriza'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label25: TLabel
      Left = 652
      Top = 2
      Width = 58
      Height = 16
      Caption = 'Finalidade'
    end
    object Label26: TLabel
      Left = 387
      Top = 88
      Width = 207
      Height = 16
      Caption = 'Chave de autoriza'#231#227'o NFe Devolvida'
      FocusControl = edChaveNFDevolvida
      Visible = False
    end
    object Label47: TLabel
      Left = 652
      Top = 45
      Width = 109
      Height = 16
      Caption = 'Indicador Presen'#231'a'
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 387
      Top = 62
      TabStop = False
      DataBinding.DataField = 'data_emissao'
      DataBinding.DataSource = DSNotaSaida
      Properties.ReadOnly = False
      Properties.ValidationOptions = [evoShowErrorIcon]
      TabOrder = 5
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 514
      Top = 62
      TabStop = False
      DataBinding.DataField = 'data_saida'
      DataBinding.DataSource = DSNotaSaida
      TabOrder = 6
      Width = 132
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 609
      Top = 19
      TabStop = False
      DataBinding.DataField = 'serie'
      DataBinding.DataSource = DSNotaSaida
      Properties.SpinButtons.Visible = False
      TabOrder = 3
      Width = 37
    end
    object edCFOP: TcxDBButtonEdit
      Left = 387
      Top = 148
      DataBinding.DataField = 'cfop'
      DataBinding.DataSource = DSNotaSaida
      Properties.Buttons = <
        item
          Action = acBuscaCFOP
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      TabOrder = 9
      Width = 89
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 4
      Top = 9
      Width = 368
      Height = 96
      BorderColor = clNavy
      Caption = 'Cliente'
      TabOrder = 0
      object Label21: TLabel
        Left = 10
        Top = 51
        Width = 60
        Height = 16
        Caption = 'CPF/CNPJ:'
      end
      object DBText1: TDBText
        Left = 74
        Top = 51
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'cpf_cnpj_cliente'
        DataSource = DSNotaSaida
      end
      object Label22: TLabel
        Left = 10
        Top = 73
        Width = 58
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object DBText2: TDBText
        Left = 74
        Top = 73
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'endereco_cliente'
        DataSource = DSNotaSaida
      end
      object Label23: TLabel
        Left = 207
        Top = 51
        Width = 37
        Height = 16
        Caption = 'RG/IE:'
      end
      object DBText3: TDBText
        Left = 250
        Top = 51
        Width = 47
        Height = 16
        AutoSize = True
        DataField = 'rg_ie_cliente'
        DataSource = DSNotaSaida
      end
      object edCodCliente: TcxDBButtonEdit
        Left = 10
        Top = 21
        DataBinding.DataField = 'id_cliente'
        DataBinding.DataSource = DSNotaSaida
        Properties.Buttons = <
          item
            Action = acBuscaCliente
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 0
        Width = 111
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 127
        Top = 21
        TabStop = False
        DataBinding.DataField = 'nome_cliente'
        DataBinding.DataSource = DSNotaSaida
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 1
        Width = 234
      end
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 387
      Top = 19
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = DSNotaSaida
      Properties.SpinButtons.Visible = False
      TabOrder = 1
      Width = 121
    end
    object JvDBComboBox1: TJvDBComboBox
      Left = 514
      Top = 19
      Width = 89
      Height = 24
      DataField = 'modelo_especie'
      DataSource = DSNotaSaida
      Items.Strings = (
        'NFE')
      TabOrder = 2
      Values.Strings = (
        '6')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 4
      Top = 148
      TabStop = False
      DataBinding.DataField = 'chave_autorizacao'
      DataBinding.DataSource = DSNotaSaida
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 8
      Width = 368
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 4
      Top = 485
      Width = 928
      Height = 133
      BorderColor = clNavy
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Valores'
      TabOrder = 12
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 11
        Width = 121
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 138
        Top = 98
        DataBinding.DataField = 'valor_seguro'
        DataBinding.DataSource = DSNotaSaida
        Properties.ReadOnly = False
        Style.Color = clWindow
        TabOrder = 8
        Width = 121
      end
      object cxDBCurrencyEdit5: TcxDBCurrencyEdit
        Left = 11
        Top = 98
        DataBinding.DataField = 'valor_frete'
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
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
        DataBinding.DataSource = DSNotaSaida
        Properties.ReadOnly = True
        Style.Color = 14997705
        TabOrder = 1
        Width = 121
      end
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 482
      Top = 148
      TabStop = False
      DataBinding.DataField = 'cfop_descricao'
      DataBinding.DataSource = DSNotaSaida
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 10
      Width = 445
    end
    object cbFinalidade: TJvDBComboBox
      Left = 652
      Top = 19
      Width = 275
      Height = 24
      DataField = 'finalidade'
      DataSource = DSNotaSaida
      Items.Strings = (
        'Normal (Sa'#237'da)'
        'Devolu'#231#227'o (Sa'#237'da)'
        'Devolu'#231#227'o (Entrada)'
        'Normal (Entrada)'
        'Garantia (Sa'#237'da)')
      TabOrder = 4
      Values.Strings = (
        '0'
        '3'
        '7'
        '8'
        '9')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object edChaveNFDevolvida: TcxDBTextEdit
      Left = 387
      Top = 105
      TabStop = False
      DataBinding.DataField = 'chave_nf_devolvida'
      DataBinding.DataSource = DSNotaSaida
      Properties.ReadOnly = True
      Style.Color = 14997705
      TabOrder = 7
      Visible = False
      Width = 540
    end
    object PageControlNFE: TAdvPageControl
      Left = 4
      Top = 178
      Width = 928
      Height = 301
      ActivePage = pgInfoComplementares
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
      Version = '2.0.0.10'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 11
      object pgItens: TAdvTabSheet
        Caption = 'Itens'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          920
          270)
        object cxGrid1: TcxGrid
          Left = 3
          Top = 3
          Width = 916
          Height = 223
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaSaidaItem
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
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object btAdicionarItem: TAdvGlowButton
          Left = 3
          Top = 232
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
          Top = 232
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
          Top = 232
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
          920
          270)
        object cxGrid2: TcxGrid
          Left = 3
          Top = 3
          Width = 916
          Height = 223
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaSaidaDocRef
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
          Top = 232
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
          Top = 232
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
          Top = 232
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
          920
          270)
        object Label27: TLabel
          Left = 153
          Top = 3
          Width = 104
          Height = 16
          Caption = 'Numero da Fatura'
          FocusControl = cxDBTextEdit4
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
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 153
          Top = 25
          DataBinding.DataField = 'numero_fatura'
          DataBinding.DataSource = DSNotaSaida
          TabOrder = 2
          Width = 144
        end
        object JvDBComboBox3: TJvDBComboBox
          Left = 3
          Top = 25
          Width = 144
          Height = 24
          DataField = 'tipo_pagamento'
          DataSource = DSNotaSaida
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
          Width = 916
          Height = 149
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 3
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaSaidaDuplicata
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
          Top = 232
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
          Top = 232
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
          Top = 232
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
          920
          270)
        object meObservacoes: TcxDBMemo
          Left = 0
          Top = 3
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'info_complementar'
          DataBinding.DataSource = DSNotaSaida
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 264
          Width = 917
        end
      end
      object pgCartaCorrecao: TAdvTabSheet
        Caption = 'Carta de Corre'#231#227'o'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          920
          270)
        object Label29: TLabel
          Left = 3
          Top = 3
          Width = 236
          Height = 16
          Caption = 'N'#250'mero sequencial da Carta de Corre'#231#227'o'
          FocusControl = cxDBSpinEdit3
        end
        object Label31: TLabel
          Left = 3
          Top = 55
          Width = 52
          Height = 16
          Caption = 'Corre'#231#227'o'
          FocusControl = cxDBSpinEdit3
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 3
          Top = 25
          DataBinding.DataField = 'carta_correcao_sequencial'
          DataBinding.DataSource = DSNotaSaida
          Properties.ReadOnly = True
          Properties.SpinButtons.Visible = False
          TabOrder = 0
          Width = 121
        end
        object cxDBMemo2: TcxDBMemo
          Left = 3
          Top = 77
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'carta_correcao'
          DataBinding.DataSource = DSNotaSaida
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          TabOrder = 1
          Height = 190
          Width = 917
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
          FocusControl = cxDBTextEdit6
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
          FocusControl = cxDBTextEdit7
        end
        object Label39: TLabel
          Left = 509
          Top = 107
          Width = 110
          Height = 16
          Caption = 'Marca dos volumes'
          FocusControl = cxDBTextEdit8
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
          FocusControl = cxDBTextEdit11
        end
        object Label44: TLabel
          Left = 168
          Top = 159
          Width = 15
          Height = 16
          Caption = 'UF'
          FocusControl = cxDBTextEdit12
        end
        object Label45: TLabel
          Left = 225
          Top = 159
          Width = 78
          Height = 16
          Caption = 'RNTC (ANTT)'
          FocusControl = cxDBTextEdit13
        end
        object edCodTransportador: TcxDBButtonEdit
          Left = 3
          Top = 25
          DataBinding.DataField = 'id_transportador'
          DataBinding.DataSource = DSNotaSaida
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
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 120
          Top = 25
          TabStop = False
          DataBinding.DataField = 'nome_transportador'
          DataBinding.DataSource = DSNotaSaida
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 1
          Width = 383
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 3
          Top = 129
          DataBinding.DataField = 'transp_numero_volumes'
          DataBinding.DataSource = DSNotaSaida
          TabOrder = 8
          Width = 216
        end
        object cxDBSpinEdit4: TcxDBSpinEdit
          Left = 225
          Top = 129
          DataBinding.DataField = 'transp_quantidade_volumes'
          DataBinding.DataSource = DSNotaSaida
          Properties.MaxValue = 9999999.000000000000000000
          Properties.ValidationOptions = [evoShowErrorIcon]
          TabOrder = 9
          Width = 136
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 367
          Top = 129
          DataBinding.DataField = 'transp_especie'
          DataBinding.DataSource = DSNotaSaida
          TabOrder = 10
          Width = 136
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 509
          Top = 129
          DataBinding.DataField = 'transp_marca'
          DataBinding.DataSource = DSNotaSaida
          TabOrder = 11
          Width = 136
        end
        object cxDBCurrencyEdit15: TcxDBCurrencyEdit
          Left = 225
          Top = 77
          DataBinding.DataField = 'transp_peso_liquido'
          DataBinding.DataSource = DSNotaSaida
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.MaxValue = 9999999.000000000000000000
          Properties.ReadOnly = False
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = clWindow
          TabOrder = 5
          Width = 136
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 367
          Top = 77
          DataBinding.DataField = 'transp_peso_bruto'
          DataBinding.DataSource = DSNotaSaida
          Properties.DisplayFormat = '0.000;-0.000'
          Properties.MaxValue = 9999999.000000000000000000
          Properties.ReadOnly = False
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = clWindow
          TabOrder = 6
          Width = 136
        end
        object cxDBCurrencyEdit17: TcxDBCurrencyEdit
          Left = 509
          Top = 77
          DataBinding.DataField = 'valor_frete'
          DataBinding.DataSource = DSNotaSaida
          Properties.MaxValue = 9999999.000000000000000000
          Properties.ReadOnly = False
          Properties.ValidationOptions = [evoShowErrorIcon]
          Style.Color = clWindow
          TabOrder = 7
          Width = 136
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 509
          Top = 25
          TabStop = False
          DataBinding.DataField = 'cnpj_transportador'
          DataBinding.DataSource = DSNotaSaida
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 2
          Width = 193
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 708
          Top = 25
          TabStop = False
          DataBinding.DataField = 'ie_transportador'
          DataBinding.DataSource = DSNotaSaida
          Properties.ReadOnly = True
          Style.Color = 14997705
          TabOrder = 3
          Width = 193
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 3
          Top = 181
          DataBinding.DataField = 'transp_placa_numero'
          DataBinding.DataSource = DSNotaSaida
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 159
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 168
          Top = 181
          DataBinding.DataField = 'transp_placa_uf'
          DataBinding.DataSource = DSNotaSaida
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 51
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 225
          Top = 181
          DataBinding.DataField = 'transp_rntc'
          DataBinding.DataSource = DSNotaSaida
          TabOrder = 14
          Width = 136
        end
        object JvDBComboBox4: TJvDBComboBox
          Left = 3
          Top = 77
          Width = 216
          Height = 24
          DataField = 'transp_modalidade'
          DataSource = DSNotaSaida
          Items.Strings = (
            'Por conta do emitente'
            'Por conta do destinat'#225'rio/remetente'
            'Por conta de terceiros'
            'Pr'#243'prio remetente'
            'Pr'#243'prio destinat'#225'rio'
            'Sem frete')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '9')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object AdvTabSheet1: TAdvTabSheet
        Caption = 'Pagamentos'
        Color = 14997705
        ColorTo = clNone
        TabColor = 14997705
        TabColorTo = clNone
        DesignSize = (
          920
          270)
        object Label46: TLabel
          Left = 4
          Top = 3
          Width = 129
          Height = 16
          Caption = 'Formas de Pagamento'
        end
        object cxGrid4: TcxGrid
          Left = 3
          Top = 20
          Width = 911
          Height = 200
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsNotaSaidaPagamentos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView3item: TcxGridDBColumn
              Caption = 'Item'
              DataBinding.FieldName = 'item'
              Options.AutoWidthSizable = False
              Width = 74
            end
            object cxGridDBTableView3forma: TcxGridDBColumn
              Caption = 'Forma de Pagamento'
              DataBinding.FieldName = 'forma'
              Width = 631
            end
            object cxGridDBTableView3valor: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'valor'
              HeaderAlignmentHorz = taCenter
              Width = 122
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
        object btAdicionarPagamento: TAdvGlowButton
          Left = 3
          Top = 225
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
          TabOrder = 1
          OnClick = btAdicionarPagamentoClick
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
        object btRemoverPagamento: TAdvGlowButton
          Left = 109
          Top = 225
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
          OnClick = btRemoverPagamentoClick
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
        object btEditarPagamento: TAdvGlowButton
          Left = 215
          Top = 225
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
          OnClick = btEditarPagamentoClick
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
    object cbPresenca: TJvDBComboBox
      Left = 652
      Top = 62
      Width = 275
      Height = 24
      DataField = 'indpres'
      DataSource = DSNotaSaida
      Items.Strings = (
        'Opera'#231#227'o presencial'
        'Opera'#231#227'o n'#227'o presencial, pela Internet'
        'Opera'#231#227'o n'#227'o presencial, Teleatendimento'
        'Opera'#231#227'o n'#227'o presencial, outros')
      TabOrder = 13
      Values.Strings = (
        '1'
        '2'
        '3'
        '9')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 624
    Width = 938
    ExplicitTop = 624
    ExplicitWidth = 938
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 831
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
      Left = 724
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
  object qrNotaSaida: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO nota_saida'
      
        '  (id_nota_saida, id_empresa, id_cliente, id_usuario, numero, mo' +
        'delo_especie, data_emissao, data_saida, cfop, serie, '
      
        '   valor_icms, valor_base_icms, valor_icms_sub, valor_base_icms_' +
        'sub, valor_frete, valor_seguro, valor_ipi, valor_despesas, '
      
        '   valor_desconto, valor_total, valor_produtos, valor_icms_retid' +
        'o, valor_pis, valor_cofins, chave_autorizacao, finalidade,'
      
        '   chave_nf_devolvida, info_complementar, numero_fatura, tipo_pa' +
        'gamento, carta_correcao, carta_correcao_sequencial,'
      
        '   id_transportador, transp_numero_volumes, transp_quantidade_vo' +
        'lumes, transp_especie, transp_marca, transp_peso_liquido,'
      
        '   transp_peso_bruto, transp_modalidade, transp_placa_numero, tr' +
        'ansp_placa_uf, transp_rntc, indpres  )'
      'VALUES'
      
        '  (:id_nota_saida, :id_empresa, :id_cliente, :id_usuario, :numer' +
        'o, :modelo_especie, :data_emissao, :data_saida, :cfop, :serie, '
      
        '   :valor_icms, :valor_base_icms, :valor_icms_sub, :valor_base_i' +
        'cms_sub, :valor_frete, :valor_seguro, :valor_ipi, :valor_despesa' +
        's, '
      
        '   :valor_desconto, :valor_total, :valor_produtos, :valor_icms_r' +
        'etido, :valor_pis, :valor_cofins, :chave_autorizacao, :finalidad' +
        'e,'
      
        '   :chave_nf_devolvida, :info_complementar, :numero_fatura, :tip' +
        'o_pagamento, :carta_correcao, :carta_correcao_sequencial,'
      
        '   :id_transportador, :transp_numero_volumes, :transp_quantidade' +
        '_volumes, :transp_especie, :transp_marca, :transp_peso_liquido,'
      
        '   :transp_peso_bruto, :transp_modalidade, :transp_placa_numero,' +
        ' :transp_placa_uf, :transp_rntc, :indpres )'
      ''
      '')
    SQLDelete.Strings = (
      'DELETE FROM nota_saida'
      'WHERE'
      '  id_nota_saida = :Old_id_nota_saida')
    SQLUpdate.Strings = (
      'UPDATE nota_saida'
      'SET'
      
        '  id_nota_saida = :id_nota_saida, id_empresa = :id_empresa, id_c' +
        'liente = :id_cliente, id_usuario = :id_usuario, '
      
        '  numero = :numero, modelo_especie = :modelo_especie, data_emiss' +
        'ao = :data_emissao, data_saida = :data_saida, cfop = :cfop, '
      
        '  serie = :serie, valor_icms = :valor_icms, valor_base_icms = :v' +
        'alor_base_icms, valor_icms_sub = :valor_icms_sub, '
      
        '  valor_base_icms_sub = :valor_base_icms_sub, valor_frete = :val' +
        'or_frete, valor_seguro = :valor_seguro, valor_ipi = :valor_ipi, '
      
        '  valor_despesas = :valor_despesas, valor_desconto = :valor_desc' +
        'onto, valor_total = :valor_total, valor_produtos = :valor_produt' +
        'os, '
      
        '  valor_icms_retido = :valor_icms_retido, valor_pis = :valor_pis' +
        ', valor_cofins = :valor_cofins, '
      
        '  chave_autorizacao = :chave_autorizacao, id_situacao = :id_situ' +
        'acao, finalidade = :finalidade, '
      '  chave_nf_devolvida = :chave_nf_devolvida,'
      
        '  info_complementar = :info_complementar,  numero_fatura = :nume' +
        'ro_fatura, '
      '  tipo_pagamento = :tipo_pagamento,'
      '  carta_correcao = :carta_correcao, '
      '  carta_correcao_sequencial = :carta_correcao_sequencial,'
      '  id_transportador = :id_transportador,'
      '  transp_numero_volumes = :transp_numero_volumes,'
      '  transp_quantidade_volumes = :transp_quantidade_volumes,'
      '  transp_especie = :transp_especie,'
      '  transp_marca = :transp_marca,'
      '  transp_peso_liquido = :transp_peso_liquido,'
      '  transp_peso_bruto = :transp_peso_bruto,'
      '  transp_modalidade = :transp_modalidade,'
      '  transp_placa_numero = :transp_placa_numero,'
      '  transp_placa_uf = :transp_placa_uf,'
      '  transp_rntc = :transp_rntc,'
      '  indpres = :indpres  '
      ''
      ''
      'WHERE'
      '  id_nota_saida = :Old_id_nota_saida')
    SQLLock.Strings = (
      'SELECT * FROM nota_saida'
      'WHERE'
      '  id_nota_saida = :Old_id_nota_saida'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_nota_saida, id_empresa, id_cliente, id_usuario, numero' +
        ', modelo_especie, data_emissao, data_saida, cfop, serie, valor_i' +
        'cms, valor_base_icms, valor_icms_sub, valor_base_icms_sub, valor' +
        '_frete, valor_seguro, valor_ipi, valor_despesas, valor_desconto,' +
        ' valor_total, valor_produtos, valor_icms_retido, valor_pis, valo' +
        'r_cofins FROM nota_saida'
      'WHERE'
      '  id_nota_saida = :id_nota_saida')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM nota_saida'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select ns.id_nota_saida,'
      'ns.id_empresa,'
      'ns.id_cliente,'
      'ns.id_usuario,'
      'ns.numero,'
      'ns.modelo_especie,'
      'ns.data_emissao,'
      'ns.data_saida,'
      'ns.cfop,'
      'ns.serie,'
      'ns.valor_icms,'
      'ns.valor_base_icms,'
      'ns.valor_icms_sub,'
      'ns.valor_base_icms_sub,'
      'ns.valor_frete,'
      'ns.valor_seguro,'
      'ns.valor_ipi,'
      'ns.valor_despesas,'
      'ns.valor_desconto,'
      'ns.valor_total,'
      'ns.valor_produtos,'
      'ns.valor_icms_retido,'
      'ns.valor_pis,'
      'ns.valor_cofins,'
      'ns.chave_autorizacao,'
      'ns.id_situacao,'
      'c.cli_002 as nome_cliente,'
      
        'cast(concat(c.cep_004, '#39' '#39', c.cli_008, '#39' '#39', c.cidade_desc) as va' +
        'rchar(100))  as endereco_cliente, --logradouro, nro, cidade'
      'c.cli_004 as cpf_cnpj_cliente,'
      'c.cli_005 as rg_ie_cliente,'
      'cfop.cfop_descricao,'
      'ns.finalidade,'
      'ns.chave_nf_devolvida,'
      'ns.info_complementar,'
      'ns.numero_fatura,'
      'ns.tipo_pagamento,'
      'ns.carta_correcao,'
      'ns.carta_correcao_sequencial,'
      'ns.id_transportador,'
      'ns.transp_numero_volumes,'
      'ns.transp_quantidade_volumes,'
      'ns.transp_especie,'
      'ns.transp_marca,'
      'ns.transp_peso_liquido,'
      'ns.transp_peso_bruto,'
      'ns.transp_modalidade,'
      't.nome_fantasia as nome_transportador,'
      't.cnpj as cnpj_transportador,'
      't.inscricao_estadual as ie_transportador,'
      'ns.transp_placa_numero,'
      'ns.transp_placa_uf,'
      'ns.transp_rntc,'
      'ns.indpres '
      ''
      'from nota_saida ns'
      
        'left join clientes c on ns.id_cliente=c.cli_001 and  ns.id_empre' +
        'sa=c.emp_001 '
      'left join cfop on cfop.cfop_codigo = ns.cfop '
      
        'left join fornecedor t on t.id_fornecedor=ns.id_transportador an' +
        'd t.id_empresa=ns.id_empresa'
      
        'where ns.id_nota_saida = :id_nota_saida and ns.id_empresa = :id_' +
        'empresa')
    Options.DefaultValues = True
    AfterOpen = qrNotaSaidaAfterOpen
    BeforePost = qrNotaSaidaBeforePost
    AfterPost = qrNotaSaidaAfterPost
    OnNewRecord = qrNotaSaidaNewRecord
    Left = 112
    Top = 368
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
      end>
    object qrNotaSaidaid_nota_saida: TIntegerField
      DefaultExpression = 'nextval('#39'nota_saida_id_nota_saida_seq'#39'::regclass)'
      DisplayLabel = 'Id Nota'
      FieldName = 'id_nota_saida'
      Required = True
    end
    object qrNotaSaidaid_empresa: TIntegerField
      DisplayLabel = 'Id Empresa'
      FieldName = 'id_empresa'
      Required = True
    end
    object qrNotaSaidaid_cliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'id_cliente'
      Required = True
      OnChange = qrNotaSaidaid_clienteChange
    end
    object qrNotaSaidaid_usuario: TIntegerField
      DisplayLabel = 'ID Usu'#225'rio'
      FieldName = 'id_usuario'
      Required = True
    end
    object qrNotaSaidanumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Required = True
    end
    object qrNotaSaidamodelo_especie: TIntegerField
      DisplayLabel = 'Modelo/Esp'#233'cie'
      FieldName = 'modelo_especie'
      Required = True
    end
    object qrNotaSaidadata_emissao: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'data_emissao'
    end
    object qrNotaSaidadata_saida: TDateField
      DisplayLabel = 'Data Sa'#237'da'
      FieldName = 'data_saida'
    end
    object qrNotaSaidacfop: TWideStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Required = True
      OnChange = qrNotaSaidacfopChange
      Size = 4
    end
    object qrNotaSaidacfop_descricao: TWideStringField
      FieldName = 'cfop_descricao'
      Size = 250
    end
    object qrNotaSaidaserie: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object qrNotaSaidavalor_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS'
      FieldName = 'valor_icms'
      currency = True
    end
    object qrNotaSaidavalor_base_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base ICMS'
      FieldName = 'valor_base_icms'
      currency = True
    end
    object qrNotaSaidavalor_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Sub'
      FieldName = 'valor_icms_sub'
      currency = True
    end
    object qrNotaSaidavalor_base_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base ICMS Sub'
      FieldName = 'valor_base_icms_sub'
      currency = True
    end
    object qrNotaSaidavalor_frete: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Frete'
      FieldName = 'valor_frete'
      OnChange = qrNotaSaidavalor_freteChange
      currency = True
    end
    object qrNotaSaidavalor_seguro: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Seguro'
      FieldName = 'valor_seguro'
      OnChange = qrNotaSaidavalor_seguroChange
      currency = True
    end
    object qrNotaSaidavalor_ipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor IPI'
      FieldName = 'valor_ipi'
      currency = True
    end
    object qrNotaSaidavalor_despesas: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Despesas'
      FieldName = 'valor_despesas'
      currency = True
    end
    object qrNotaSaidavalor_desconto: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Desconto'
      FieldName = 'valor_desconto'
      currency = True
    end
    object qrNotaSaidavalor_total: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrNotaSaidavalor_produtos: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Produtos'
      FieldName = 'valor_produtos'
      currency = True
    end
    object qrNotaSaidavalor_icms_retido: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Retido'
      FieldName = 'valor_icms_retido'
      currency = True
    end
    object qrNotaSaidavalor_pis: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor PIS'
      FieldName = 'valor_pis'
      currency = True
    end
    object qrNotaSaidavalor_cofins: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Cofins'
      FieldName = 'valor_cofins'
      currency = True
    end
    object qrNotaSaidanome_cliente: TWideStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'nome_cliente'
      Size = 90
    end
    object qrNotaSaidacpf_cnpj_cliente: TWideStringField
      FieldName = 'cpf_cnpj_cliente'
    end
    object qrNotaSaidarg_ie_cliente: TWideStringField
      FieldName = 'rg_ie_cliente'
    end
    object qrNotaSaidachave_autorizacao: TWideStringField
      DisplayLabel = 'Chave de autoriza'#231#227'o'
      FieldName = 'chave_autorizacao'
      Size = 100
    end
    object qrNotaSaidaendereco_cliente: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco_cliente'
      Size = 100
    end
    object qrNotaSaidaid_situacao: TIntegerField
      DefaultExpression = '0'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaSaidafinalidade: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Finalidade'
      FieldName = 'finalidade'
      Required = True
      OnChange = qrNotaSaidafinalidadeChange
    end
    object qrNotaSaidachave_nf_devolvida: TWideStringField
      DisplayLabel = 'Chave de autoriza'#231#227'o (NFe Devolvida)'
      FieldName = 'chave_nf_devolvida'
      Size = 100
    end
    object qrNotaSaidainfo_complementar: TWideMemoField
      FieldName = 'info_complementar'
      BlobType = ftWideMemo
    end
    object qrNotaSaidanumero_fatura: TWideStringField
      DisplayLabel = 'Numero da Fatura'
      FieldName = 'numero_fatura'
      Size = 50
    end
    object qrNotaSaidatipo_pagamento: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Tipo Pagamento'
      FieldName = 'tipo_pagamento'
      Required = True
    end
    object qrNotaSaidacarta_correcao: TWideMemoField
      FieldName = 'carta_correcao'
      BlobType = ftWideMemo
    end
    object qrNotaSaidacarta_correcao_sequencial: TIntegerField
      DisplayLabel = 'N'#250'mero sequencial da Carta de Corre'#231#227'o'
      FieldName = 'carta_correcao_sequencial'
    end
    object qrNotaSaidaid_transportador: TIntegerField
      FieldName = 'id_transportador'
      OnChange = qrNotaSaidaid_transportadorChange
    end
    object qrNotaSaidatransp_numero_volumes: TWideStringField
      DisplayLabel = 'N'#250'mero(s) dos volumes'
      FieldName = 'transp_numero_volumes'
      Size = 50
    end
    object qrNotaSaidatransp_quantidade_volumes: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'Quantidade de volumes'
      FieldName = 'transp_quantidade_volumes'
    end
    object qrNotaSaidatransp_especie: TWideStringField
      DisplayLabel = 'Esp'#233'cie dos volumes'
      FieldName = 'transp_especie'
      Size = 50
    end
    object qrNotaSaidatransp_marca: TWideStringField
      DisplayLabel = 'Marca dos volumes'
      FieldName = 'transp_marca'
      Size = 50
    end
    object qrNotaSaidatransp_peso_liquido: TFloatField
      DisplayLabel = 'Peso l'#237'quido'
      FieldName = 'transp_peso_liquido'
    end
    object qrNotaSaidatransp_peso_bruto: TFloatField
      DisplayLabel = 'Peso bruto'
      FieldName = 'transp_peso_bruto'
    end
    object qrNotaSaidatransp_modalidade: TIntegerField
      DefaultExpression = '1'
      DisplayLabel = 'Modalidade do frete'
      FieldName = 'transp_modalidade'
      Required = True
    end
    object qrNotaSaidanome_transportador: TWideStringField
      DisplayLabel = 'Nome do transportador'
      FieldName = 'nome_transportador'
      Size = 100
    end
    object qrNotaSaidacnpj_transportador: TWideStringField
      DisplayLabel = 'CNPJ do transportador'
      FieldName = 'cnpj_transportador'
      Size = 14
    end
    object qrNotaSaidaie_transportador: TWideStringField
      DisplayLabel = 'IE do transportador'
      FieldName = 'ie_transportador'
    end
    object qrNotaSaidatransp_placa_numero: TWideStringField
      DisplayLabel = 'Placa Ve'#237'culo'
      FieldName = 'transp_placa_numero'
      Size = 8
    end
    object qrNotaSaidatransp_placa_uf: TWideStringField
      DisplayLabel = 'UF Ve'#237'culo'
      FieldName = 'transp_placa_uf'
      Size = 2
    end
    object qrNotaSaidatransp_rntc: TWideStringField
      DisplayLabel = 'RNTC (ANTT)'
      FieldName = 'transp_rntc'
    end
    object qrNotaSaidaindpres: TIntegerField
      FieldName = 'indpres'
    end
  end
  object DSNotaSaida: TDataSource
    AutoEdit = False
    DataSet = qrNotaSaida
    OnStateChange = DSNotaSaidaStateChange
    Left = 184
    Top = 368
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 888
    Top = 112
    object acBuscaCliente: TAction
      Caption = 'acBuscaCliente'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
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
  object qrNotaSaidaItem: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select nsi.item, mat_004 as codigo_produto, m.mat_003 as descric' +
        'ao_produto, '
      
        'nsi.cst, nsi.cfop, nsi.quantidade, nsi.peso_unitario_liquido * n' +
        'si.quantidade as peso, '
      
        'nsi.valor_unitario, nsi.valor_unitario * nsi.quantidade as subto' +
        'tal,'
      
        'nsi.valor_desconto, nsi.valor_total, nsi.valor_icms, nsi.valor_i' +
        'pi, nsi.efetuar_calculos'
      'from nota_saida_item nsi'
      
        'join materiais m on m.mat_001 = nsi.id_material and m.emp_001=ns' +
        'i.id_empresa'
      
        'where id_nota_saida = :id_nota_saida and id_empresa = :id_empres' +
        'a'
      'order by nsi.item')
    Left = 348
    Top = 299
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
      end>
    object qrNotaSaidaItemitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrNotaSaidaItemcodigo_produto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo_produto'
      ReadOnly = True
      Size = 50
    end
    object qrNotaSaidaItemdescricao_produto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao_produto'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrNotaSaidaItemcst: TIntegerField
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Required = True
    end
    object qrNotaSaidaItemcfop: TWideStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object qrNotaSaidaItemquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Required = True
      DisplayFormat = '0.000'
    end
    object qrNotaSaidaItempeso: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'peso'
      ReadOnly = True
      DisplayFormat = '0.000'
    end
    object qrNotaSaidaItemvalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemsubtotal: TFloatField
      DisplayLabel = 'Subtotal'
      FieldName = 'subtotal'
      ReadOnly = True
      currency = True
    end
    object qrNotaSaidaItemvalor_desconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'valor_desconto'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'valor_total'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_icms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'valor_icms'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_ipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'valor_ipi'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemefetuar_calculos: TBooleanField
      FieldName = 'efetuar_calculos'
      Required = True
    end
  end
  object dsNotaSaidaItem: TDataSource
    AutoEdit = False
    DataSet = qrNotaSaidaItem
    Left = 444
    Top = 299
  end
  object qrNotaSaidaDocRef: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_nota_saida, id_empresa, item, tipo_doc, chave_nfe, num' +
        'ero_ecf, numero_cupom_ecf, id_situacao '
      'from nota_saida_doc_referenciado'
      'where id_nota_saida=:id_nota_saida and id_empresa=:id_empresa'
      'order by item')
    Left = 108
    Top = 299
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
      end>
    object qrNotaSaidaDocRefid_nota_saida: TIntegerField
      FieldName = 'id_nota_saida'
      Required = True
    end
    object qrNotaSaidaDocRefid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrNotaSaidaDocRefitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrNotaSaidaDocReftipo_doc: TWideStringField
      DisplayLabel = 'Tipo de documento'
      FieldName = 'tipo_doc'
      Required = True
      Size = 3
    end
    object qrNotaSaidaDocRefchave_nfe: TWideStringField
      DisplayLabel = 'Chave SAT / NFe / NFCe'
      FieldName = 'chave_nfe'
      Size = 100
    end
    object qrNotaSaidaDocRefnumero_ecf: TIntegerField
      DisplayLabel = 'N'#250'mero ECF'
      FieldName = 'numero_ecf'
    end
    object qrNotaSaidaDocRefnumero_cupom_ecf: TIntegerField
      DisplayLabel = 'N'#250'mero do Cupom'
      FieldName = 'numero_cupom_ecf'
    end
    object qrNotaSaidaDocRefid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
  end
  object dsNotaSaidaDocRef: TDataSource
    AutoEdit = False
    DataSet = qrNotaSaidaDocRef
    Left = 220
    Top = 299
  end
  object qrNotaSaidaDuplicata: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_nota_saida, id_empresa, item, numero_duplicata, valor,' +
        ' data_vencimento, id_situacao '
      'from nota_saida_duplicata'
      'where id_nota_saida=:id_nota_saida and id_empresa=:id_empresa'
      'order by item')
    Left = 108
    Top = 235
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
      end>
    object IntegerField1: TIntegerField
      FieldName = 'id_nota_saida'
      Required = True
    end
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
    object qrNotaSaidaDuplicatanumero_duplicata: TWideStringField
      DisplayLabel = 'N'#250'mero Duplicata'
      FieldName = 'numero_duplicata'
      Required = True
      Size = 50
    end
    object qrNotaSaidaDuplicatavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrNotaSaidaDuplicatadata_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'data_vencimento'
      Required = True
    end
  end
  object dsNotaSaidaDuplicata: TDataSource
    AutoEdit = False
    DataSet = qrNotaSaidaDuplicata
    Left = 220
    Top = 235
  end
  object qrNotaSaidaPagamentos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select n.id_nota_saida, n.id_empresa, n.item, n.id_forma, n.valo' +
        'r, f.for_002 as forma'
      'from nota_saida_pagamentos n'
      'left join formapgto f on f.for_001 = n.id_forma '
      
        'where n.id_nota_saida=:id_nota_saida and n.id_empresa=:id_empres' +
        'a'
      'order by n.item')
    Left = 380
    Top = 195
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
      end>
    object qrNotaSaidaPagamentosid_nota_saida: TIntegerField
      FieldName = 'id_nota_saida'
      Required = True
    end
    object qrNotaSaidaPagamentosid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrNotaSaidaPagamentositem: TIntegerField
      FieldName = 'item'
      Required = True
    end
    object qrNotaSaidaPagamentosid_forma: TIntegerField
      FieldName = 'id_forma'
      Required = True
    end
    object qrNotaSaidaPagamentosvalor: TFloatField
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrNotaSaidaPagamentosforma: TWideStringField
      FieldName = 'forma'
      Size = 40
    end
  end
  object dsNotaSaidaPagamentos: TDataSource
    AutoEdit = False
    DataSet = qrNotaSaidaPagamentos
    Left = 452
    Top = 203
  end
end
