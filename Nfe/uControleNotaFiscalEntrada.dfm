inherited frmControleNotaFiscalEntrada: TfrmControleNotaFiscalEntrada
  Caption = 'Nota Fiscal de Entrada'
  ClientHeight = 518
  ClientWidth = 966
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 972
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 966
    Height = 469
    ExplicitWidth = 966
    ExplicitHeight = 469
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 4
      Top = 8
      Width = 957
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
        957
        113)
      object Label3: TLabel
        Left = 822
        Top = 7
        Width = 61
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Situa'#231#227'o:'
      end
      object Label4: TLabel
        Left = 361
        Top = 7
        Width = 78
        Height = 16
        Caption = 'Fornecedor:'
      end
      object lbFornecedor: TLabel
        Left = 461
        Top = 32
        Width = 358
        Height = 16
        AutoSize = False
        Caption = 'Fornecedor'
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
        Left = 822
        Top = 59
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
          'Entrada'
          'Emiss'#227'o')
      end
      object cbFiltroSituacao: TComboBox
        Left = 822
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
          'Lan'#231'ada')
      end
      object edCodFornecedor: TcxButtonEdit
        Left = 361
        Top = 29
        Properties.Buttons = <
          item
            Action = acBuscaFornecedor
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
        OnExit = edCodFornecedorExit
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
    end
    object cxGrid1: TcxGrid
      Left = 4
      Top = 127
      Width = 957
      Height = 339
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dsNotaEntrada
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1numero: TcxGridDBColumn
          DataBinding.FieldName = 'numero'
          Width = 53
        end
        object cxGrid1DBTableView1serie: TcxGridDBColumn
          DataBinding.FieldName = 'serie'
          Width = 53
        end
        object cxGrid1DBTableView1data_entrada: TcxGridDBColumn
          DataBinding.FieldName = 'data_entrada'
          Width = 99
        end
        object cxGrid1DBTableView1nome_fornecedor: TcxGridDBColumn
          DataBinding.FieldName = 'nome_fornecedor'
          Width = 244
        end
        object cxGrid1DBTableView1cfop: TcxGridDBColumn
          DataBinding.FieldName = 'cfop'
          Width = 54
        end
        object cxGrid1DBTableView1valor_total: TcxGridDBColumn
          DataBinding.FieldName = 'valor_total'
          Width = 92
        end
        object cxGrid1DBTableView1valor_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'valor_desconto'
          Width = 96
        end
        object cxGrid1DBTableView1valor_base_icms: TcxGridDBColumn
          DataBinding.FieldName = 'valor_base_icms'
          Width = 88
        end
        object cxGrid1DBTableView1valor_icms: TcxGridDBColumn
          DataBinding.FieldName = 'valor_icms'
          Width = 68
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
              Description = 'LAN'#199'ADA'
              ImageIndex = 5
              Value = 1
            end>
          Width = 112
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 469
    Width = 966
    ExplicitTop = 469
    ExplicitWidth = 966
    object btSair: TAdvGlowButton
      AlignWithMargins = True
      Left = 858
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
      OnClick = btSairClick
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
      Left = 750
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
    object btExcluirNF: TAdvGlowButton
      AlignWithMargins = True
      Left = 642
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
      TabOrder = 2
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
      Left = 534
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
      TabOrder = 3
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
    object btLancarNF: TAdvGlowButton
      AlignWithMargins = True
      Left = 381
      Top = 3
      Width = 150
      Height = 41
      Margins.Left = 0
      Caption = 'Lan'#231'ar Nota'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btLancarNFClick
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
    object btImportarXml: TAdvGlowButton
      AlignWithMargins = True
      Left = 228
      Top = 3
      Width = 150
      Height = 41
      Margins.Left = 0
      Caption = 'Importar XML'
      ImageIndex = 24
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btImportarXmlClick
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
  object dsNotaEntrada: TDataSource
    AutoEdit = False
    DataSet = qrNotaEntrada
    Left = 696
    Top = 208
  end
  object qrNotaEntrada: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'ne.id_nota_entrada,'
      'ne.id_fornecedor, '
      'f.razao_social  as nome_fornecedor,'
      'ne.serie,'
      'ne.numero, '
      'ne.cfop, '
      'ne.valor_total, '
      'ne.valor_desconto, '
      'ne.valor_base_icms, '
      'ne.valor_icms, '
      'ne.id_situacao,'
      'ne.data_entrada'
      'from nota_entrada ne'
      
        'left join fornecedor f on f.id_fornecedor=ne.id_fornecedor and f' +
        '.id_empresa=ne.id_empresa'
      'left join cfop on cfop.cfop_codigo = ne.cfop '
      
        'where true -- Linha reservada para aplicar o filtro where n'#227'o re' +
        'mover'
      'order by ne.data_entrada, ne.numero')
    Left = 616
    Top = 176
    object qrNotaEntradaid_nota_entrada: TIntegerField
      FieldName = 'id_nota_entrada'
    end
    object qrNotaEntradaid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Required = True
    end
    object qrNotaEntradanome_fornecedor: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nome_fornecedor'
      ReadOnly = True
      Size = 100
    end
    object qrNotaEntradaserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
    end
    object qrNotaEntradanumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Required = True
    end
    object qrNotaEntradacfop: TWideStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Size = 4
    end
    object qrNotaEntradavalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      currency = True
    end
    object qrNotaEntradavalor_desconto: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'valor_desconto'
      currency = True
    end
    object qrNotaEntradavalor_base_icms: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'valor_base_icms'
      currency = True
    end
    object qrNotaEntradavalor_icms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'valor_icms'
      currency = True
    end
    object qrNotaEntradaid_situacao: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrNotaEntradadata_entrada: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'data_entrada'
    end
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 416
    Top = 240
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
  end
end
