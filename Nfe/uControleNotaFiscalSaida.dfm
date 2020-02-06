inherited frmControleNotaFiscalSaida: TfrmControleNotaFiscalSaida
  BorderStyle = bsSizeable
  Caption = 'LECHEFF'
  ClientHeight = 492
  ClientWidth = 984
  Constraints.MinHeight = 530
  Constraints.MinWidth = 965
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1000
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 984
    Height = 443
    ExplicitWidth = 984
    ExplicitHeight = 443
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 4
      Top = 8
      Width = 975
      Height = 113
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        975
        113)
      object Label3: TLabel
        Left = 843
        Top = 7
        Width = 61
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Situa'#231#227'o:'
        ExplicitLeft = 835
      end
      object Label4: TLabel
        Left = 361
        Top = 7
        Width = 49
        Height = 16
        Caption = 'Cliente:'
      end
      object lbCliente: TLabel
        Left = 461
        Top = 32
        Width = 233
        Height = 16
        AutoSize = False
        Caption = 'Cliente'
      end
      object Label1: TLabel
        Left = 11
        Top = 7
        Width = 36
        Height = 16
        Caption = 'Data:'
      end
      object lbCFOP: TLabel
        Left = 111
        Top = 84
        Width = 285
        Height = 16
        AutoSize = False
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 59
        Width = 36
        Height = 16
        Caption = 'CFOP:'
      end
      object Label25: TLabel
        Left = 696
        Top = 7
        Width = 68
        Height = 16
        Caption = 'Finalidade:'
      end
      object dtpDataInicial: TDateTimePicker
        Left = 139
        Top = 29
        Width = 105
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dtpDataFinal: TDateTimePicker
        Left = 250
        Top = 29
        Width = 105
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object btPesquisar: TAdvGlowButton
        AlignWithMargins = True
        Left = 843
        Top = 64
        Width = 124
        Height = 41
        Margins.Left = 0
        Anchors = [akRight, akBottom]
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 6
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btPesquisarClick
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
        Layout = blGlyphRight
        MinButtonSizeState = bsLabel
      end
      object cbFiltroData: TComboBox
        Left = 11
        Top = 29
        Width = 122
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          'Emiss'#227'o'
          'Sa'#237'da'
          'Cancelamento')
      end
      object cbFiltroSituacao: TComboBox
        Left = 843
        Top = 29
        Width = 124
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Items.Strings = (
          'Todas'
          'Em digita'#231#227'o'
          'Autorizada'
          'Cancelada')
      end
      object edCodCliente: TcxButtonEdit
        Left = 361
        Top = 29
        Properties.Buttons = <
          item
            Action = acBuscaCliente
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = frmMenu.ImgList16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 4
        OnExit = edCodClienteExit
        Width = 94
      end
      object edCFOP: TcxButtonEdit
        Left = 11
        Top = 81
        Properties.Buttons = <
          item
            Action = acBuscaCFOP
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 6
        OnExit = edCFOPExit
        Width = 94
      end
      object cbFiltroFinalidade: TJvDBComboBox
        Left = 696
        Top = 29
        Width = 141
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Anchors = [akTop, akRight]
        Items.Strings = (
          'Todas'
          'Normal (Sa'#237'da)'
          'Devolu'#231#227'o (Sa'#237'da)'
          'Devolu'#231#227'o (Entrada)'
          'Normal (Entrada)'
          'Garantia (Sa'#237'da)')
        ParentFont = False
        TabOrder = 7
        Values.Strings = (
          '99'
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
    end
    object cxGrid1: TcxGrid
      Left = 4
      Top = 127
      Width = 975
      Height = 313
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dsNotaSaida
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1numero: TcxGridDBColumn
          DataBinding.FieldName = 'numero'
          Width = 67
        end
        object cxGrid1DBTableView1serie: TcxGridDBColumn
          DataBinding.FieldName = 'serie'
          Width = 42
        end
        object cxGrid1DBTableView1data_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'data_emissao'
          Width = 86
        end
        object cxGrid1DBTableView1nome_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nome_cliente'
          Width = 253
        end
        object cxGrid1DBTableView1cfop: TcxGridDBColumn
          DataBinding.FieldName = 'cfop'
          Width = 45
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total'
          Width = 82
        end
        object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Width = 81
        end
        object cxGrid1DBTableView1valor_base_icms: TcxGridDBColumn
          DataBinding.FieldName = 'valor_base_icms'
          Width = 83
        end
        object cxGrid1DBTableView1valor_icms: TcxGridDBColumn
          DataBinding.FieldName = 'valor_icms'
          Width = 82
        end
        object cxGrid1DBTableView1id_situacao: TcxGridDBColumn
          DataBinding.FieldName = 'id_situacao'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              Description = 'EM DIGITA'#199#195'O'
              ImageIndex = 8
              Value = 0
            end
            item
              Description = 'CANCELADA'
              ImageIndex = 9
              Value = 2
            end
            item
              Description = 'AUTORIZADA'
              ImageIndex = 5
              Value = 11
            end>
          Width = 110
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 443
    Width = 984
    ExplicitTop = 443
    ExplicitWidth = 984
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 876
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Sair'
      ImageIndex = 18
      Images = frmMenu.ImgList24
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
    object btIncluirNF: TAdvGlowButton
      AlignWithMargins = True
      Left = 768
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Incluir'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btIncluirNFClick
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
    object btCancelarNF: TAdvGlowButton
      AlignWithMargins = True
      Left = 660
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      ImageIndex = 44
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btCancelarNFClick
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
    object btExcluirNF: TAdvGlowButton
      AlignWithMargins = True
      Left = 552
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Excluir'
      ImageIndex = 7
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btExcluirNFClick
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
    object btEditarNF: TAdvGlowButton
      AlignWithMargins = True
      Left = 444
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Alterar'
      ImageIndex = 15
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btEditarNFClick
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
    object btEnviarNFE: TAdvGlowButton
      AlignWithMargins = True
      Left = 336
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Enviar'
      ImageIndex = 53
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btEnviarNFEClick
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
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 228
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Imprimir'
      ImageIndex = 14
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = btImprimirClick
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
    object btRelatorio: TAdvGlowButton
      AlignWithMargins = True
      Left = 120
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Relat'#243'rio'
      ImageIndex = 54
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 7
      OnClick = btRelatorioClick
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
    object btOpcoes: TAdvGlowButton
      AlignWithMargins = True
      Left = 12
      Top = 3
      Width = 105
      Height = 41
      Margins.Left = 0
      Caption = 'Op'#231#245'es'
      ImageIndex = 20
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 8
      OnClick = btOpcoesClick
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
      DropDownButton = True
      DropDownMenu = pmOpcoes
    end
    object btEnviaremail: TAdvGlowButton
      AlignWithMargins = True
      Left = 879
      Top = 50
      Width = 102
      Height = 41
      Margins.Left = 0
      Caption = 'Envio e-mail'
      ImageIndex = 32
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 9
      Visible = False
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
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'ns.id_nota_saida,'
      'ns.id_cliente, '
      'ns.serie, '
      'ns.cfop, '
      'ns.valor_total, '
      'ns.valor_desconto, '
      'ns.valor_base_icms, '
      'ns.valor_icms, '
      'ns.valor_base_icms_sub, '
      'ns.valor_icms_sub, '
      'ns.valor_frete,'
      'ns.valor_seguro,'
      'ns.valor_ipi,'
      'ns.valor_pis,'
      'ns.valor_cofins,'
      'ns.valor_despesas,'
      'ns.id_situacao,'
      'ns.valor_produtos,'
      'ns.data_saida,'
      'ns.data_emissao,'
      'ns.numero,'
      'ns.chave_autorizacao,'
      'ns.chave_cancelamento,'
      'ns.finalidade,'
      'ns.chave_nf_devolvida,'
      'c.cli_002 as nome_cliente, '
      'c.cli_004 AS CpfCnpj_cliente,'
      'c.cli_005 AS ie,'
      'c.cep_004 AS logradouro_cliente  ,'
      'c.cli_008 AS numero_end_cliente ,'
      'c.cli_009 AS complemento_end_cliente ,'
      'c.cep_003 AS bairro_cliente ,'
      'c.cidade_desc AS municipio_cliente ,'
      'replace(CLI_CID.CID_003,'#39'.'#39' ,'#39#39' ) AS codmunicip_ibge_cliente,'
      'c.uf AS estado_cliente,'
      'c.tipo_pessoa,'
      'c.situacao_ie,'
      'c.cep_002 as cep_cliente,'
      'c.email as email_cliente,'
      'c.cli_012 as telefone_cliente,'
      'cfop.cfop_descricao,'
      'ns.info_complementar,'
      'ns.numero_fatura,'
      'ns.tipo_pagamento,'
      
        'coalesce(ns.carta_correcao_sequencial,0) as carta_correcao_seque' +
        'ncial,'
      'ns.transp_numero_volumes,'
      'ns.transp_quantidade_volumes,'
      'ns.transp_especie,'
      'ns.transp_marca,'
      'ns.transp_peso_liquido,'
      'ns.transp_peso_bruto,'
      'ns.transp_modalidade,'
      't.nome_fantasia as transp_nome,'
      't.cnpj as transp_cnpj,'
      't.inscricao_estadual as transp_ie,'
      
        'trim(concat(t.endereco_logradouro, '#39' '#39', t.endereco_numero)) as t' +
        'ransp_endereco, '
      't.endereco_uf as transp_uf,'
      't.endereco_cidade as transp_cidade,'
      'ns.transp_placa_numero,'
      'ns.transp_placa_uf,'
      'ns.transp_rntc,'
      'ns.id_orcamento,'
      'ns.baixou_estoque,'
      'ns.indpres'
      ''
      'from nota_saida ns'
      
        'join clientes c on c.cli_001=ns.id_cliente and c.emp_001=ns.id_e' +
        'mpresa'
      'left join cidades cli_cid ON cli_cid.CID_001 = c.CID_001'
      'left join cfop on cfop.cfop_codigo = ns.cfop '
      
        'left join fornecedor t on t.id_fornecedor=ns.id_transportador an' +
        'd t.id_empresa=ns.id_empresa'
      
        'where true -- Linha reservada para aplicar o filtro where n'#227'o re' +
        'mover'
      'order by ns.data_emissao, ns.numero')
    Left = 616
    Top = 144
    object qrNotaSaidadata_emissao: TDateField
      DisplayLabel = 'Data emiss'#227'o'
      FieldName = 'data_emissao'
    end
    object qrNotaSaidaid_nota_saida: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_nota_saida'
    end
    object qrNotaSaidaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qrNotaSaidacfop: TWideStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object qrNotaSaidavalor_total: TFloatField
      DisplayLabel = 'Valor Nota'
      FieldName = 'valor_total'
      currency = True
    end
    object qrNotaSaidavalor_desconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'valor_desconto'
      currency = True
    end
    object qrNotaSaidavalor_base_icms: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'valor_base_icms'
      currency = True
    end
    object qrNotaSaidavalor_icms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'valor_icms'
      currency = True
    end
    object qrNotaSaidaid_situacao: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaSaidanome_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object qrNotaSaidaserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
    end
    object qrNotaSaidanumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Required = True
    end
    object qrNotaSaidacfop_descricao: TWideStringField
      FieldName = 'cfop_descricao'
      ReadOnly = True
      Size = 250
    end
    object qrNotaSaidalogradouro_cliente: TWideStringField
      FieldName = 'logradouro_cliente'
      ReadOnly = True
      Size = 125
    end
    object qrNotaSaidanumero_end_cliente: TWideStringField
      FieldName = 'numero_end_cliente'
      ReadOnly = True
      Size = 100
    end
    object qrNotaSaidacomplemento_end_cliente: TWideStringField
      FieldName = 'complemento_end_cliente'
      ReadOnly = True
      Size = 100
    end
    object qrNotaSaidabairro_cliente: TWideStringField
      FieldName = 'bairro_cliente'
      ReadOnly = True
      Size = 50
    end
    object qrNotaSaidamunicipio_cliente: TWideStringField
      FieldName = 'municipio_cliente'
      ReadOnly = True
      Size = 100
    end
    object qrNotaSaidacodmunicip_ibge_cliente: TWideMemoField
      FieldName = 'codmunicip_ibge_cliente'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrNotaSaidaestado_cliente: TWideStringField
      FieldName = 'estado_cliente'
      ReadOnly = True
      Size = 2
    end
    object qrNotaSaidacpfcnpj_cliente: TWideStringField
      FieldName = 'cpfcnpj_cliente'
      ReadOnly = True
    end
    object qrNotaSaidaie: TWideStringField
      FieldName = 'ie'
      ReadOnly = True
    end
    object qrNotaSaidavalor_base_icms_sub: TFloatField
      FieldName = 'valor_base_icms_sub'
    end
    object qrNotaSaidavalor_icms_sub: TFloatField
      FieldName = 'valor_icms_sub'
    end
    object qrNotaSaidavalor_frete: TFloatField
      FieldName = 'valor_frete'
    end
    object qrNotaSaidavalor_seguro: TFloatField
      FieldName = 'valor_seguro'
    end
    object qrNotaSaidavalor_ipi: TFloatField
      FieldName = 'valor_ipi'
    end
    object qrNotaSaidavalor_pis: TFloatField
      FieldName = 'valor_pis'
    end
    object qrNotaSaidavalor_cofins: TFloatField
      FieldName = 'valor_cofins'
    end
    object qrNotaSaidavalor_despesas: TFloatField
      FieldName = 'valor_despesas'
    end
    object qrNotaSaidavalor_produtos: TFloatField
      FieldName = 'valor_produtos'
    end
    object qrNotaSaidatipo_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qrNotaSaidasituacao_ie: TWideStringField
      FieldName = 'situacao_ie'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qrNotaSaidadata_saida: TDateField
      FieldName = 'data_saida'
    end
    object qrNotaSaidachave_autorizacao: TWideStringField
      FieldName = 'chave_autorizacao'
      Size = 100
    end
    object qrNotaSaidachave_cancelamento: TWideStringField
      FieldName = 'chave_cancelamento'
      Size = 100
    end
    object qrNotaSaidafinalidade: TIntegerField
      FieldName = 'finalidade'
      Required = True
    end
    object qrNotaSaidachave_nf_devolvida: TWideStringField
      FieldName = 'chave_nf_devolvida'
      Size = 100
    end
    object qrNotaSaidainfo_complementar: TWideMemoField
      FieldName = 'info_complementar'
      BlobType = ftWideMemo
    end
    object qrNotaSaidanumero_fatura: TWideStringField
      FieldName = 'numero_fatura'
      Size = 50
    end
    object qrNotaSaidatipo_pagamento: TIntegerField
      FieldName = 'tipo_pagamento'
      Required = True
    end
    object qrNotaSaidacarta_correcao_sequencial: TIntegerField
      FieldName = 'carta_correcao_sequencial'
      ReadOnly = True
    end
    object qrNotaSaidatransp_numero_volumes: TWideStringField
      FieldName = 'transp_numero_volumes'
      Size = 50
    end
    object qrNotaSaidatransp_quantidade_volumes: TIntegerField
      FieldName = 'transp_quantidade_volumes'
    end
    object qrNotaSaidatransp_especie: TWideStringField
      FieldName = 'transp_especie'
      Size = 50
    end
    object qrNotaSaidatransp_marca: TWideStringField
      FieldName = 'transp_marca'
      Size = 50
    end
    object qrNotaSaidatransp_peso_liquido: TFloatField
      FieldName = 'transp_peso_liquido'
    end
    object qrNotaSaidatransp_peso_bruto: TFloatField
      FieldName = 'transp_peso_bruto'
    end
    object qrNotaSaidatransp_modalidade: TIntegerField
      FieldName = 'transp_modalidade'
      Required = True
    end
    object qrNotaSaidatransp_nome: TWideStringField
      FieldName = 'transp_nome'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrNotaSaidatransp_cnpj: TWideStringField
      FieldName = 'transp_cnpj'
      ReadOnly = True
      Size = 14
    end
    object qrNotaSaidatransp_ie: TWideStringField
      FieldName = 'transp_ie'
      ReadOnly = True
    end
    object qrNotaSaidatransp_endereco: TWideMemoField
      FieldName = 'transp_endereco'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrNotaSaidatransp_uf: TWideStringField
      FieldName = 'transp_uf'
      ReadOnly = True
      Size = 2
    end
    object qrNotaSaidatransp_cidade: TWideStringField
      FieldName = 'transp_cidade'
      ReadOnly = True
      Size = 100
    end
    object qrNotaSaidatransp_placa_numero: TWideStringField
      FieldName = 'transp_placa_numero'
      Size = 8
    end
    object qrNotaSaidatransp_placa_uf: TWideStringField
      FieldName = 'transp_placa_uf'
      Size = 2
    end
    object qrNotaSaidatransp_rntc: TWideStringField
      FieldName = 'transp_rntc'
    end
    object qrNotaSaidacep_cliente: TWideStringField
      FieldName = 'cep_cliente'
      ReadOnly = True
      Size = 9
    end
    object qrNotaSaidaid_orcamento: TIntegerField
      FieldName = 'id_orcamento'
    end
    object qrNotaSaidaemail_cliente: TWideStringField
      FieldName = 'email_cliente'
      ReadOnly = True
      Size = 100
    end
    object qrNotaSaidatelefone_cliente: TWideStringField
      FieldName = 'telefone_cliente'
      ReadOnly = True
    end
    object qrNotaSaidabaixou_estoque: TBooleanField
      FieldName = 'baixou_estoque'
    end
    object qrNotaSaidaindpres: TIntegerField
      FieldName = 'indpres'
    end
  end
  object dsNotaSaida: TDataSource
    AutoEdit = False
    DataSet = qrNotaSaida
    Left = 688
    Top = 144
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 336
    Top = 88
    object acBuscaCliente: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
    end
    object acBuscaCFOP: TAction
      Caption = 'acBuscaCFOP'
      ImageIndex = 0
      OnExecute = acBuscaCFOPExecute
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoDF = ve400
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.Salvar = False
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFeRL1
    Left = 152
    Top = 176
  end
  object qrDadosEmpresa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'em.emp_004 as cnpj,'
      'em.emp_005 as ie ,'
      'em.emp_002 as razao_social ,'
      'em.emp_003 as nome_fantasia ,'
      'em.emp_013 as telefone ,'
      'em.emp_006 as inscmun ,'
      'est.est_003 as emit_uf ,'
      
        'cast(replace(replace(replace(em.cep_002,'#39'-'#39' ,'#39#39' ), '#39'.'#39','#39#39'),'#39' '#39','#39 +
        #39') as varchar(9))as emit_cep ,'
      'em.cep_004 as emit_logradouro ,'
      'em.emp_007 as emit_end_numero ,'
      'em.emp_008 as emit_end_complemento ,'
      'em.cep_003 as emit_bairro ,'
      'cid.cid_002 as emit_cidade ,'
      'replace(cid.cid_003,'#39'.'#39' ,'#39#39' ) as emit_codmunicip_ibge ,'
      'coalesce(em.crt_codigo, 0) as regime '
      ''
      'from empresas em '
      'join cidades cid on '
      '  (cid.cid_001 = em.cid_001) '
      'join estados est on '
      '  (est.est_001 = cid.est_001) '
      'where em.emp_001 = :id_empresa')
    Left = 616
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrDadosEmpresacnpj: TWideStringField
      FieldName = 'cnpj'
      Required = True
    end
    object qrDadosEmpresarazao_social: TWideStringField
      FieldName = 'razao_social'
      Required = True
      Size = 80
    end
    object qrDadosEmpresanome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Size = 80
    end
    object qrDadosEmpresatelefone: TWideStringField
      FieldName = 'telefone'
      Size = 15
    end
    object qrDadosEmpresainscmun: TWideStringField
      FieldName = 'inscmun'
    end
    object qrDadosEmpresaemit_uf: TWideStringField
      FieldName = 'emit_uf'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object qrDadosEmpresaemit_cep: TWideStringField
      FieldName = 'emit_cep'
      Size = 9
    end
    object qrDadosEmpresaemit_logradouro: TWideStringField
      FieldName = 'emit_logradouro'
      Size = 125
    end
    object qrDadosEmpresaemit_end_numero: TWideStringField
      FieldName = 'emit_end_numero'
      Size = 10
    end
    object qrDadosEmpresaemit_end_complemento: TWideStringField
      FieldName = 'emit_end_complemento'
      Size = 10
    end
    object qrDadosEmpresaemit_bairro: TWideStringField
      FieldName = 'emit_bairro'
      Size = 50
    end
    object qrDadosEmpresaemit_cidade: TWideStringField
      FieldName = 'emit_cidade'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qrDadosEmpresaemit_codmunicip_ibge: TWideMemoField
      FieldName = 'emit_codmunicip_ibge'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrDadosEmpresaregime: TIntegerField
      FieldName = 'regime'
      ReadOnly = True
    end
    object qrDadosEmpresaie: TWideStringField
      FieldName = 'ie'
    end
  end
  object qrNotaSaidaItem: TUniQuery
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
      'cofins_aliq, pis_aliq, cst_pis, cst_cofins)'
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
      ':cofins_aliq, :pis_aliq, :cst_pis, :cst_cofins)')
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
      'cst_pis = :cst_pis, cst_cofins = :cst_cofins'
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
    Connection = frmMenu.conexao
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
      'nsi.mvast,'
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
      'nsi.csosn,'
      'csosn.cso_descricao,'
      'nsi.valor_desconto,'
      'case when (nsi.valor_unitario * nsi.quantidade) <=0 then 0.0'
      
        'else (nsi.valor_desconto/ ((nsi.valor_unitario * nsi.quantidade)' +
        '+nsi.valor_despesas))*100 end'
      'as valor_desconto_perc,'
      'nsi.valor_base_pis_cofins,'
      'nsi.cofins_aliq,'
      'nsi.pis_aliq,'
      'cast(to_char(nsi.cst_pis, '#39'00S'#39') as varchar(2)) as  cst_pis,'
      
        'cast(to_char(nsi.cst_cofins, '#39'00S'#39') as varchar(2)) as  cst_cofin' +
        's,'
      'nsi.cest,'
      'm.orm_codigo as icms_origem,'
      
        'coalesce((select t.aliqmunicipal from ibpt t where t.ncm = m.ncm' +
        ' limit 1),e.aliqmunicipalpadrao ,0)*(nsi.valor_unitario * nsi.qu' +
        'antidade)* 0.01 as aliqmunicipal, '
      
        'coalesce((select t.aliqestadual from ibpt t where t.ncm = m.ncm ' +
        'limit 1),e.aliqestadualpadrao ,0)*(nsi.valor_unitario * nsi.quan' +
        'tidade) * 0.01 as aliqestadual, '
      
        'coalesce((select t.aliqfednacional from ibpt t where t.ncm = m.n' +
        'cm limit 1),e.aliqfednacionalpadrao ,0)*(nsi.valor_unitario * ns' +
        'i.quantidade) * 0.01 as aliqfederal,'
      'nsi.codigo_anp,'
      'm.id_setor, m.utiliza_combo, m.nao_relevante, m.cnpj_fabricante'
      'from nota_saida_item nsi'
      'join empresas e on e.emp_001=nsi.id_empresa'
      
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
        'nd cst_cofins.emp_001=nsi.id_empresa'
      
        'left join setor_estoque_material stm on stm.id_material=m.mat_00' +
        '1 and stm.id_empresa=m.emp_001 and stm.id_setor=m.id_setor '
      
        'where nsi.id_nota_saida = :id_nota_saida and nsi.id_empresa = :i' +
        'd_empresa '
      'order by nsi.item')
    Options.DefaultValues = True
    Left = 560
    Top = 224
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
    object qrNotaSaidaItemid_nota_saida: TIntegerField
      DisplayLabel = 'ID Nota Sa'#237'da'
      FieldName = 'id_nota_saida'
      Required = True
    end
    object qrNotaSaidaItemid_empresa: TIntegerField
      DisplayLabel = 'ID Empresa'
      FieldName = 'id_empresa'
      Required = True
    end
    object qrNotaSaidaItemitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'item'
      Required = True
    end
    object qrNotaSaidaItemid_material: TIntegerField
      DisplayLabel = 'ID Material'
      FieldName = 'id_material'
      Required = True
    end
    object qrNotaSaidaItemcst: TIntegerField
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Required = True
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object qrNotaSaidaItemcfop: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object qrNotaSaidaItemquantidade: TFloatField
      DefaultExpression = '1'
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Required = True
    end
    object qrNotaSaidaItemvalor_unitario: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valor_unitario'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_total: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_frete: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Frete'
      FieldName = 'valor_frete'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_seguro: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Seguro'
      FieldName = 'valor_seguro'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_despesas: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Despesas'
      FieldName = 'valor_despesas'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemb_icms_retido: TBooleanField
      DefaultExpression = 'false'
      DisplayLabel = 'Icms Retido'
      FieldName = 'b_icms_retido'
    end
    object qrNotaSaidaItemicms_aliq: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota de ICMS'
      FieldName = 'icms_aliq'
      Required = True
    end
    object qrNotaSaidaItemicms_aliq_reducao: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota de ICMS Redu'#231#227'o'
      FieldName = 'icms_aliq_reducao'
      Required = True
    end
    object qrNotaSaidaItemvalor_base_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base ICMS'
      FieldName = 'valor_base_icms'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_icms: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS'
      FieldName = 'valor_icms'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemicms_aliq_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota ICMS Sub.'
      FieldName = 'icms_aliq_sub'
      Required = True
    end
    object qrNotaSaidaItemvalor_base_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Balor Base ICMS Sub.'
      FieldName = 'valor_base_icms_sub'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_icms_sub: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Sub.'
      FieldName = 'valor_icms_sub'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_icms_isento: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS Isento'
      FieldName = 'valor_icms_isento'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_icms_nao_trib: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor ICMS N'#227'o Trib.'
      FieldName = 'valor_icms_nao_trib'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemtipo_ipi: TIntegerField
      DefaultExpression = '0'
      DisplayLabel = 'Tipo IPI'
      FieldName = 'tipo_ipi'
      Required = True
    end
    object qrNotaSaidaItemipi_aliq: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Al'#237'quota IPI'
      FieldName = 'ipi_aliq'
      Required = True
    end
    object qrNotaSaidaItemvalor_base_ipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Base IPI'
      FieldName = 'valor_base_ipi'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemvalor_ipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor IPI'
      FieldName = 'valor_ipi'
      Required = True
      currency = True
    end
    object qrNotaSaidaItemid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaSaidaItemncm: TWideStringField
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
      Required = True
      Size = 10
    end
    object qrNotaSaidaItemvalor_pis: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor PIS'
      FieldName = 'valor_pis'
      currency = True
    end
    object qrNotaSaidaItemvalor_cofins: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Valor COFINS'
      FieldName = 'valor_cofins'
      currency = True
    end
    object qrNotaSaidaItemunidade: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Required = True
      Size = 3
    end
    object qrNotaSaidaItemserial: TWideStringField
      DisplayLabel = 'Serial'
      FieldName = 'serial'
      Size = 100
    end
    object qrNotaSaidaItemnumeracao: TWideStringField
      DisplayLabel = 'Numera'#231#227'o'
      FieldName = 'numeracao'
      Size = 100
    end
    object qrNotaSaidaItemcomplemento_descricao: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento_descricao'
      Size = 200
    end
    object qrNotaSaidaItemdescricao_material: TWideStringField
      FieldName = 'descricao_material'
      Size = 60
    end
    object qrNotaSaidaItemcodigo_material: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo_material'
      Size = 50
    end
    object qrNotaSaidaItemestoque: TFloatField
      DefaultExpression = '0.0'
      DisplayLabel = 'Estoque'
      FieldName = 'estoque'
      DisplayFormat = '0.000'
    end
    object qrNotaSaidaItemcst_descricao: TWideStringField
      FieldName = 'cst_descricao'
      Size = 255
    end
    object qrNotaSaidaItemcfop_descricao: TWideStringField
      FieldName = 'cfop_descricao'
      Size = 250
    end
    object qrNotaSaidaItemcsosn: TIntegerField
      FieldName = 'csosn'
      Required = True
    end
    object qrNotaSaidaItemcso_descricao: TWideStringField
      FieldName = 'cso_descricao'
      Size = 255
    end
    object qrNotaSaidaItemvalor_desconto: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_desconto'
      Required = True
    end
    object qrNotaSaidaItemvalor_subtotal: TFloatField
      DisplayLabel = 'Subtotal'
      FieldKind = fkCalculated
      FieldName = 'valor_subtotal'
      currency = True
      Calculated = True
    end
    object qrNotaSaidaItemvalor_desconto_perc: TFloatField
      FieldName = 'valor_desconto_perc'
    end
    object qrNotaSaidaItempeso_unitario_liquido: TFloatField
      DefaultExpression = '0'
      FieldName = 'peso_unitario_liquido'
      Required = True
      EditFormat = '0.000'
    end
    object qrNotaSaidaItempeso_unitario_bruto: TFloatField
      DefaultExpression = '0'
      FieldName = 'peso_unitario_bruto'
      Required = True
      EditFormat = '0.000'
    end
    object qrNotaSaidaItemvalor_base_pis_cofins: TFloatField
      DefaultExpression = '0'
      FieldName = 'valor_base_pis_cofins'
      Required = True
    end
    object qrNotaSaidaItemcofins_aliq: TFloatField
      DefaultExpression = '0'
      FieldName = 'cofins_aliq'
      Required = True
    end
    object qrNotaSaidaItempis_aliq: TFloatField
      DefaultExpression = '0'
      FieldName = 'pis_aliq'
      Required = True
    end
    object qrNotaSaidaItemcst_pis_descricao: TWideStringField
      FieldName = 'cst_pis_descricao'
      Size = 255
    end
    object qrNotaSaidaItemcst_cofins_descricao: TWideStringField
      FieldName = 'cst_cofins_descricao'
      Size = 255
    end
    object qrNotaSaidaItemcest: TWideStringField
      FieldName = 'cest'
      Size = 7
    end
    object qrNotaSaidaItemicms_origem: TIntegerField
      FieldName = 'icms_origem'
      ReadOnly = True
    end
    object qrNotaSaidaItemcst_pis: TWideStringField
      FieldName = 'cst_pis'
      ReadOnly = True
      Size = 2
    end
    object qrNotaSaidaItemcst_cofins: TWideStringField
      FieldName = 'cst_cofins'
      ReadOnly = True
      Size = 2
    end
    object qrNotaSaidaItemaliqmunicipal: TFloatField
      FieldName = 'aliqmunicipal'
      ReadOnly = True
    end
    object qrNotaSaidaItemaliqestadual: TFloatField
      FieldName = 'aliqestadual'
      ReadOnly = True
    end
    object qrNotaSaidaItemaliqfederal: TFloatField
      FieldName = 'aliqfederal'
      ReadOnly = True
    end
    object qrNotaSaidaItemmvast: TFloatField
      DefaultExpression = '0'
      FieldName = 'mvast'
      Required = True
    end
    object qrNotaSaidaItemcodigo_anp: TWideStringField
      FieldName = 'codigo_anp'
      ReadOnly = True
    end
    object qrNotaSaidaItemid_setor: TIntegerField
      FieldName = 'id_setor'
      ReadOnly = True
      Required = True
    end
    object qrNotaSaidaItemutiliza_combo: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'utiliza_combo'
      ProviderFlags = []
    end
    object qrNotaSaidaItemnao_relevante: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'nao_relevante'
    end
    object qrNotaSaidaItemcnpj_fabricante: TWideStringField
      FieldName = 'cnpj_fabricante'
      Size = 14
    end
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    Sistema = 'Onix System'
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    ExibeCampoFatura = False
    Left = 248
    Top = 184
  end
  object qrNotaSaidaDocRef: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_nota_saida, id_empresa, item, tipo_doc, chave_nfe, num' +
        'ero_ecf, numero_cupom_ecf, id_situacao '
      'from nota_saida_doc_referenciado'
      'where id_nota_saida=:id_nota_saida and id_empresa=:id_empresa'
      'order by item')
    Left = 692
    Top = 219
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
  object qrNotaSaidaDuplicata: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select id_nota_saida, id_empresa, item, numero_duplicata, valor,' +
        ' data_vencimento, id_situacao '
      'from nota_saida_duplicata'
      'where id_nota_saida=:id_nota_saida and id_empresa=:id_empresa'
      'order by item')
    Left = 708
    Top = 291
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
  object pmOpcoes: TPopupMenu
    Left = 360
    Top = 240
    object Inutilizao1: TMenuItem
      Caption = 'Inutiliza'#231#227'o'
      OnClick = Inutilizao1Click
    end
    object Enviarporemail1: TMenuItem
      Caption = 'Enviar por email'
      OnClick = Enviarporemail1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cartadecorreo1: TMenuItem
      Caption = 'Carta de corre'#231#227'o'
      OnClick = Cartadecorreo1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Editarcliente1: TMenuItem
      Caption = 'Editar cliente'
      OnClick = Editarcliente1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ImportarOramento1: TMenuItem
      Caption = 'Importar Or'#231'amento'
    end
    object C1: TMenuItem
      Caption = 'Consulta Chave'
      OnClick = C1Click
    end
  end
  object qrNotaSaidaPagamentos: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select n.id_nota_saida, n.id_empresa, n.item, n.id_forma, n.valo' +
        'r, f.for_002 as forma, cnpjCred,'
      'bandeira_cartao,'
      'sfi_codigo, autorizacao, f.tipo_integracao'
      'from nota_saida_pagamentos n'
      'left join formapgto f on f.for_001 = n.id_forma '
      
        'where n.id_nota_saida=:id_nota_saida and n.id_empresa=:id_empres' +
        'a'
      'order by n.item')
    Left = 100
    Top = 267
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
    end
    object qrNotaSaidaPagamentosforma: TWideStringField
      FieldName = 'forma'
      Size = 40
    end
    object qrNotaSaidaPagamentoscnpjcred: TWideStringField
      FieldName = 'cnpjcred'
      ReadOnly = True
      Size = 14
    end
    object qrNotaSaidaPagamentosbandeira_cartao: TWideStringField
      FieldName = 'bandeira_cartao'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qrNotaSaidaPagamentossfi_codigo: TIntegerField
      FieldName = 'sfi_codigo'
    end
    object qrNotaSaidaPagamentosautorizacao: TWideStringField
      FieldName = 'autorizacao'
    end
    object qrNotaSaidaPagamentostipo_integracao: TIntegerField
      FieldName = 'tipo_integracao'
    end
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 906
    Top = 260
  end
end
