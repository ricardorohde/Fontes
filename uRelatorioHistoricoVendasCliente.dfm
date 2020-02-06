inherited frmRelatorioHistoricoVendasCliente: TfrmRelatorioHistoricoVendasCliente
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Hist'#243'rico  de Vendas'
  ClientHeight = 495
  ClientWidth = 1008
  Constraints.MinHeight = 485
  Constraints.MinWidth = 1024
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1024
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 16
  object Label4: TLabel [0]
    AlignWithMargins = True
    Left = 460
    Top = 15
    Width = 89
    Height = 19
    Margins.Top = 15
    Alignment = taRightJustify
    Caption = 'Valor Total: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBText3: TDBText [1]
    AlignWithMargins = True
    Left = 555
    Top = 15
    Width = 71
    Height = 19
    Margins.Top = 15
    Margins.Right = 20
    AutoSize = True
    DataField = 'total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnPrincipal: TAdvPanel
    Width = 1008
    Height = 446
    ExplicitWidth = 1008
    ExplicitHeight = 446
    FullHeight = 200
    object cxGrid1: TcxGrid
      Left = 4
      Top = 144
      Width = 1001
      Height = 296
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsVenda
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1nro_venda: TcxGridDBColumn
          DataBinding.FieldName = 'nro_venda'
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1nome_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nome_cliente'
          Width = 88
        end
        object cxGrid1DBTableView1telefone1: TcxGridDBColumn
          DataBinding.FieldName = 'telefone1'
          Options.AutoWidthSizable = False
          Width = 100
        end
        object cxGrid1DBTableView1telefone2: TcxGridDBColumn
          DataBinding.FieldName = 'telefone2'
          Visible = False
          Options.AutoWidthSizable = False
          Width = 100
        end
        object cxGrid1DBTableView1nome_vendedor: TcxGridDBColumn
          DataBinding.FieldName = 'nome_vendedor'
          Width = 99
        end
        object cxGrid1DBTableView1nome_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'nome_usuario'
          Options.AutoWidthSizable = False
          Width = 110
        end
        object cxGrid1DBTableView1tipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Options.AutoWidthSizable = False
          Width = 85
        end
        object cxGrid1DBTableView1data_venda: TcxGridDBColumn
          DataBinding.FieldName = 'data_venda'
          Options.AutoWidthSizable = False
          Width = 114
        end
        object cxGrid1DBTableView1desconto: TcxGridDBColumn
          DataBinding.FieldName = 'desconto'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1acrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'acrescimo'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1sit_001: TcxGridDBColumn
          DataBinding.FieldName = 'sit_001'
          Visible = False
        end
        object cxGrid1DBTableView1total_venda: TcxGridDBColumn
          DataBinding.FieldName = 'total_venda'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1desc_status: TcxGridDBColumn
          DataBinding.FieldName = 'desc_status'
          Width = 89
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 3
      Top = 4
      Width = 383
      Height = 70
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Tipo de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        383
        70)
      object rgFiltroVenda: TcxRadioGroup
        Left = 7
        Top = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Todos'
          end
          item
            Caption = 'Mesa'
          end
          item
            Caption = 'Delivery'
          end
          item
            Caption = 'Balc'#227'o'
          end
          item
            Caption = 'Comanda'
          end
          item
            Caption = 'PDV'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 69
        Width = 373
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 760
      Top = 4
      Width = 111
      Height = 79
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        111
        79)
      object rgFiltroSituacao: TcxRadioGroup
        Left = 3
        Top = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'Todas'
          end
          item
            Caption = 'Em aberto'
          end
          item
            Caption = 'Encerradas'
          end>
        ItemIndex = 0
        Style.BorderColor = clNavy
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        ExplicitWidth = 92
        ExplicitHeight = 131
        Height = 76
        Width = 98
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 396
      Top = 3
      Width = 358
      Height = 135
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 12
        Top = 24
        Width = 34
        Height = 16
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 12
        Top = 79
        Width = 20
        Height = 16
        Caption = 'Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtpDataInicial: TDateTimePicker
        Left = 12
        Top = 46
        Width = 110
        Height = 24
        Date = 42614.000000000000000000
        Time = 42614.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dtpDataFinal: TDateTimePicker
        Left = 12
        Top = 101
        Width = 110
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
      object btDataHoje: TAdvGlowButton
        Left = 136
        Top = 45
        Width = 100
        Height = 35
        Caption = 'Hoje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btDataHojeClick
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
      object btDataOntem: TAdvGlowButton
        Left = 247
        Top = 45
        Width = 100
        Height = 35
        Caption = 'Ontem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btDataOntemClick
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
      object btDataMesAtual: TAdvGlowButton
        Left = 136
        Top = 90
        Width = 100
        Height = 35
        Caption = 'M'#234's atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btDataMesAtualClick
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
      object btDataMesAnterior: TAdvGlowButton
        Left = 247
        Top = 90
        Width = 100
        Height = 35
        Caption = 'M'#234's anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btDataMesAnteriorClick
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
    object AdvGroupBox4: TAdvGroupBox
      Left = 3
      Top = 79
      Width = 383
      Height = 59
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbCliente: TLabel
        Left = 95
        Top = 28
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object edCodCliente: TcxButtonEdit
        Left = 11
        Top = 25
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
        TabOrder = 0
        OnExit = edCodClienteExit
        Width = 78
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 877
      Top = 12
      Width = 124
      Height = 41
      Margins.Left = 0
      Anchors = [akTop, akRight]
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
      TabOrder = 4
      OnClick = btPesquisarClick
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
    object AdvGroupBox5: TAdvGroupBox
      Left = 760
      Top = 86
      Width = 111
      Height = 52
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object cbRelatorio: TComboBox
        Left = 5
        Top = 22
        Width = 99
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Resumido'
        Items.Strings = (
          'Resumido'
          'Detalhado')
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 446
    Width = 1008
    ExplicitTop = 446
    ExplicitWidth = 1008
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 901
      Top = 3
      Width = 104
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
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 794
      Top = 3
      Width = 104
      Height = 41
      Margins.Left = 0
      Caption = 'Imprimir'
      ImageIndex = 10
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btConfirmaClick
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
    object DBText4: TDBText
      AlignWithMargins = True
      Left = 703
      Top = 15
      Width = 71
      Height = 19
      Margins.Top = 15
      Margins.Right = 20
      AutoSize = True
      DataField = 'total'
      DataSource = dsSomatoria
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 608
      Top = 15
      Width = 89
      Height = 19
      Margins.Top = 15
      Alignment = taRightJustify
      Caption = 'Valor Total: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      AlignWithMargins = True
      Left = 514
      Top = 15
      Width = 71
      Height = 19
      Margins.Top = 15
      Margins.Right = 20
      AutoSize = True
      DataField = 'total_acrescimo'
      DataSource = dsSomatoria
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 383
      Top = 15
      Width = 125
      Height = 19
      Margins.Top = 15
      Alignment = taRightJustify
      Caption = 'Total Acr'#233'scimo: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      AlignWithMargins = True
      Left = 289
      Top = 15
      Width = 71
      Height = 19
      Margins.Top = 15
      Margins.Right = 20
      AutoSize = True
      DataField = 'total_desconto'
      DataSource = dsSomatoria
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 166
      Top = 15
      Width = 117
      Height = 19
      Margins.Top = 15
      Alignment = taRightJustify
      Caption = 'Total Desconto: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lnNroVendas: TLabel
      AlignWithMargins = True
      Left = 150
      Top = 15
      Width = 10
      Height = 19
      Margins.Top = 15
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 48
      Top = 15
      Width = 96
      Height = 19
      Margins.Top = 15
      Alignment = taRightJustify
      Caption = 'Nro. vendas: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object qrVenda: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001,'
      'v.emp_001,'
      'v.Ven_029 as nro_venda, '
      'cli_002 as nome_cliente, '
      'cli_012 as telefone1, '
      'cli_013 as telefone2, '
      'u.usu_002 as nome_usuario,'
      
        'cast(case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o'#39 +
        ' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39'  when '#39'P'#39' then' +
        ' '#39'PDV'#39' else '#39'Outro'#39' end as varchar(100)) as tipo_venda,'
      'v.ven_004 as data_venda, ven_009 as total_venda, '
      'coalesce(ven_007, 0.00) as desconto, '
      'coalesce(ven_008, 0.00) as acrescimo, v.sit_001,'
      'cast(fn_situacoes(v.sit_001)  as varchar(100)) as desc_status,'
      'uv.usu_002 as nome_vendedor'
      'from venda v'
      'join usuarios u on v.usu_001_1=u.usu_001'
      'left join usuarios uv on v.id_vendedor=uv.usu_001'
      
        'left join clientes c on c.cli_001=v.cli_001 and c.emp_001=v.emp_' +
        '001'
      'where v.emp_001 = :id_empresa '
      'and v.ven_004 >=:data_inicio'
      'and v.ven_004 <=:data_fim'
      'and true -- Linha reservada para aplica'#231#227'o do filtro '
      'order by v.ven_004'
      '')
    Active = True
    AfterOpen = qrVendaAfterOpen
    Left = 216
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'data_inicio'
        Value = 42856.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'data_fim'
        Value = 42860.000000000000000000
      end>
    object qrVendanro_venda: TIntegerField
      DisplayLabel = 'Nro. Venda'
      FieldName = 'nro_venda'
    end
    object qrVendanome_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendatelefone1: TWideStringField
      DisplayLabel = 'Telefone 1'
      FieldName = 'telefone1'
      ReadOnly = True
    end
    object qrVendatelefone2: TWideStringField
      DisplayLabel = 'Telefone 2'
      FieldName = 'telefone2'
      ReadOnly = True
    end
    object qrVendanome_usuario: TWideStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'nome_usuario'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendatipo_venda: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_venda'
      ReadOnly = True
      Size = 100
    end
    object qrVendadata_venda: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'data_venda'
    end
    object qrVendatotal_venda: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'total_venda'
      currency = True
    end
    object qrVendadesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      currency = True
    end
    object qrVendaacrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'acrescimo'
      currency = True
    end
    object qrVendasit_001: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendadesc_status: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrVendanome_vendedor: TWideStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'nome_vendedor'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    Left = 272
    Top = 88
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 336
    Top = 88
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
    object acBuscaCliente: TAction
      Caption = 'acBuscaFornecedor'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
    end
  end
  object qrSomatoria: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select sum(total_venda) as total,'
      'sum(desconto) as total_desconto,  '
      'sum(acrescimo) as total_acrescimo '
      'from ('
      
        'select v.Ven_029 as nro_venda, cli_002 as nome_cliente, cli_012 ' +
        'as telefone1, cli_013 as telefone2, usu_002 as nome_usuario,'
      
        'cast(case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o'#39 +
        ' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39'  when '#39'P'#39' then' +
        ' '#39'PDV'#39' else '#39'Outro'#39' end as varchar(100)) as tipo_venda,'
      'v.ven_004 as data_venda, ven_009 as total_venda, '
      'coalesce(ven_007, 0.00) as desconto, '
      'coalesce(ven_008,0.00) as acrescimo, v.sit_001,'
      'cast(fn_situacoes(v.sit_001)  as varchar(100)) as desc_status'
      'from venda v'
      'join usuarios u on v.usu_001_1=u.usu_001'
      
        'left join clientes c on c.cli_001=v.cli_001 and c.emp_001=v.emp_' +
        '001'
      'where v.emp_001 = :id_empresa '
      'and v.ven_004 >=:data_inicio'
      'and v.ven_004 <=:data_fim'
      ') soma'
      '')
    Left = 192
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_inicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data_fim'
        Value = nil
      end>
    object qrSomatoriatotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      currency = True
    end
    object qrSomatoriatotal_desconto: TFloatField
      FieldName = 'total_desconto'
      ReadOnly = True
      currency = True
    end
    object qrSomatoriatotal_acrescimo: TFloatField
      FieldName = 'total_acrescimo'
      ReadOnly = True
      currency = True
    end
  end
  object dsSomatoria: TDataSource
    AutoEdit = False
    DataSet = qrSomatoria
    Left = 272
    Top = 216
  end
  object RelHistoricoVendas: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41788.339387870400000000
    ReportOptions.LastChange = 42710.628515798600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 210
    Datasets = <
      item
        DataSet = dbHistoricoVendas
        DataSetName = 'dbHistoricoVendas'
      end
      item
        DataSet = dbHistoricoVendasItens
        DataSetName = 'dbHistoricoVendasItens'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'sTituloRep'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 338.267935000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'HIST'#211'RICO DE VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        object Line6: TfrxLineView
          Top = 26.456709999999990000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 706.772110000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 789.158010000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[SUM(<dbHistoricoVendas."desconto">,MasterData1)]')
        end
        object Memo15: TfrxMemoView
          Left = 875.189550000000000000
          Top = 3.779529999999994000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[SUM(<dbHistoricoVendas."acrescimo">,MasterData1)]')
        end
        object Memo16: TfrxMemoView
          Left = 963.780150000000000000
          Top = 3.779529999999994000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[SUM(<dbHistoricoVendas."total_venda">,MasterData1)]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        DataSet = dbHistoricoVendas
        DataSetName = 'dbHistoricoVendas'
        PrintIfDetailEmpty = True
        RowCount = 0
        object dbHistoricoVendasnro_venda: TfrxMemoView
          Left = 7.559060000000000000
          Top = 2.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'nro_venda'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."nro_venda"]')
        end
        object dbHistoricoVendasnome_cliente: TfrxMemoView
          Left = 159.299320000000000000
          Top = 2.000000000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'nome_cliente'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."nome_cliente"]')
        end
        object dbHistoricoVendastelefone1: TfrxMemoView
          Left = 384.291590000000000000
          Top = 2.000000000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'telefone1'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."telefone1"]')
        end
        object Memo7: TfrxMemoView
          Left = 472.000310000000000000
          Top = 2.000000000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'telefone1'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."telefone1"]')
        end
        object dbHistoricoVendasnome_usuario: TfrxMemoView
          Left = 557.929500000000000000
          Top = 2.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'nome_usuario'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."nome_usuario"]')
        end
        object dbHistoricoVendastipo_venda: TfrxMemoView
          Left = 695.551640000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tipo_venda'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."tipo_venda"]')
        end
        object dbHistoricoVendasdata_venda: TfrxMemoView
          Left = 83.149660000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'data_venda'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."data_venda"]')
        end
        object dbHistoricoVendastotal_venda: TfrxMemoView
          Left = 963.780150000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'total_venda'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."total_venda"]')
        end
        object dbHistoricoVendasdesconto: TfrxMemoView
          Left = 779.158010000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'desconto'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."desconto"]')
        end
        object dbHistoricoVendasacrescimo: TfrxMemoView
          Left = 875.189550000000000000
          Top = 2.000000000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          DataField = 'acrescimo'
          DataSet = dbHistoricoVendas
          DataSetName = 'dbHistoricoVendas'
          Memo.UTF8W = (
            '[dbHistoricoVendas."acrescimo"]')
        end
        object Line2: TfrxLineView
          Top = 22.543290000000010000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 1046.929810000000000000
        object Line4: TfrxLineView
          Top = 20.677180000000010000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nro. Venda')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 159.299320000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 384.291590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone 1')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 472.000310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone 2')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 557.929500000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usu'#225'rio respons'#225'vel')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 695.551640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 963.780150000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 875.189550000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 779.158010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 427.086890000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999966000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 827.717070000000000000
          Top = 11.338590000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        DataSet = dbHistoricoVendasItens
        DataSetName = 'dbHistoricoVendasItens'
        RowCount = 0
        object dbHistoricoVendasItensdescricao_item: TfrxMemoView
          Left = 309.921460000000100000
          Top = 3.779530000000022000
          Width = 366.614410000000000000
          Height = 15.118120000000000000
          DataField = 'descricao_item'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."descricao_item"]')
          ParentFont = False
        end
        object dbHistoricoVendasItensquantidade: TfrxMemoView
          Left = 684.094930000002000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'quantidade'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."quantidade"]')
          ParentFont = False
        end
        object dbHistoricoVendasItensvalor_unitario: TfrxMemoView
          Left = 737.008350000001100000
          Top = 3.779530000000022000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DataField = 'valor_unitario'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."valor_unitario"]')
          ParentFont = False
        end
        object dbHistoricoVendasItensvalor_total: TfrxMemoView
          Left = 952.441560000002000000
          Top = 3.779530000000022000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DataField = 'valor_total'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."valor_total"]')
          ParentFont = False
        end
        object dbHistoricoVendasItensdesconto: TfrxMemoView
          Left = 808.819420000002100000
          Top = 3.779530000000022000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DataField = 'desconto'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."desconto"]')
          ParentFont = False
        end
        object dbHistoricoVendasItensacrescimo: TfrxMemoView
          Left = 880.630490000002100000
          Top = 3.779530000000022000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          DataField = 'acrescimo'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."acrescimo"]')
          ParentFont = False
        end
        object dbHistoricoVendasItenscod_material: TfrxMemoView
          Left = 204.094619999999800000
          Top = 3.779530000000022000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'cod_material'
          DataSet = dbHistoricoVendasItens
          DataSetName = 'dbHistoricoVendasItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbHistoricoVendasItens."cod_material"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 192.756029999999800000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 1031.811690000001000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 351.496290000000000000
        Width = 1046.929810000000000000
        object Line8: TfrxLineView
          Left = 192.756029999999800000
          Top = 3.559059999999988000
          Width = 839.055660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line11: TfrxLineView
          Left = 192.756029999999800000
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 1031.811690000004000000
          Top = -0.000000000000056843
          Height = 3.779530000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Top = 11.338590000000010000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        object Memo17: TfrxMemoView
          Left = 204.094619999999800000
          Top = 1.889763779527527000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 684.094930000001000000
          Top = 2.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 737.008350000001100000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'V. Unit.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 808.819420000002100000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 880.630490000002100000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Acr'#233'scimo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 952.441560000002000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 192.756029999999800000
          Width = 839.055660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Left = 192.756022677165200000
          Top = 20.897650000000110000
          Width = 839.055660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line9: TfrxLineView
          Left = 192.756029999999800000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 1031.811690000004000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object dbHistoricoVendas: TfrxDBDataset
    UserName = 'dbHistoricoVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nro_venda=nro_venda'
      'nome_cliente=nome_cliente'
      'telefone1=telefone1'
      'telefone2=telefone2'
      'nome_usuario=nome_usuario'
      'tipo_venda=tipo_venda'
      'data_venda=data_venda'
      'total_venda=total_venda'
      'desconto=desconto'
      'acrescimo=acrescimo'
      'sit_001=sit_001'
      'desc_status=desc_status'
      'nome_vendedor=nome_vendedor'
      'ven_001=ven_001'
      'emp_001=emp_001')
    DataSet = qrVenda
    BCDToCurrency = False
    Left = 536
    Top = 208
  end
  object qrVendaItem: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO vendaitem'
      '  (emp_001, ven_001, ite_001, mat_001, '
      '   ite_002, ite_003, ite_005, ite_006, '
      '   ite_008, data_hora_lancamento, sit_001, ite_011, '
      '   ite_012, ite_013, gar_001, desconto, '
      '   tamanho, b_venda_tamanho, item_fracionado, '
      '   quantidade_impressao, acrescimo)'
      'VALUES'
      '  (:id_empresa, :id_venda, :nro_item, :id_material, '
      '   :QTDEVENDA, :VLRVENDA, :valor_total, :observacao, '
      '   :ite_008, :data_hora_lancamento, :cod_status, :ite_011, '
      '   :ite_012, :ite_013, :gar_001, :desconto, '
      '   :tamanho, :b_venda_tamanho, :item_fracionado, '
      '   :quantidade_impressao, :acrescimo)')
    SQLDelete.Strings = (
      'DELETE FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001')
    SQLUpdate.Strings = (
      'UPDATE vendaitem'
      'SET'
      
        '  emp_001 = :id_empresa, ven_001 = :id_venda, ite_001 = :nro_ite' +
        'm, mat_001 = :id_material, '
      
        #9'ite_002 = :QTDEVENDA, ite_003 = :VLRVENDA, ite_005 = :valor_tot' +
        'al, ite_006 = :observacao, '
      
        #9'ite_008 = :ite_008, data_hora_lancamento = :data_hora_lancament' +
        'o, sit_001 = :cod_status, ite_011 = :ite_011, '
      
        #9'ite_012 = :ite_012, ite_013 = :ite_013, gar_001 = :gar_001, des' +
        'conto = :desconto, '
      
        #9'tamanho = :tamanho, b_venda_tamanho = :b_venda_tamanho, item_fr' +
        'acionado = :item_fracionado,'
      '        quantidade_impressao =:quantidade_impressao'
      'WHERE'
      
        '  emp_001 = :Old_id_empresa AND ven_001 = :Old_id_venda AND ite_' +
        '001 = :Old_nro_item')
    SQLLock.Strings = (
      'SELECT * FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :Old_emp_001 AND ven_001 = :Old_ven_001 AND ite_001 ' +
        '= :Old_ite_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT emp_001, ven_001, ite_001, mat_001, ite_002, ite_003, ite' +
        '_005, ite_006, ite_008, ite_009, sit_001, ite_011, ite_012, ite_' +
        '013, gar_001, desconto, tamanho, b_venda_tamanho, item_fracionad' +
        'o FROM vendaitem'
      'WHERE'
      
        '  emp_001 = :emp_001 AND ven_001 = :ven_001 AND ite_001 = :ite_0' +
        '01')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM vendaitem'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select ite.emp_001,'
      '       ite.ven_001,'
      '       ite.ite_001 as nro_item,    '
      '       ite.ite_002 as quantidade,'
      '       ite.ite_003 as valor_unitario,'
      '       mat.mat_004 as cod_material,'
      'cast(( '
      'case when ite.b_venda_tamanho then'
      '  case ite.tamanho'
      '    when '#39'P'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_p,'#39')'#39')'
      '    when '#39'M'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_m,'#39')'#39') '
      '    when '#39'G'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_g,'#39')'#39') '
      '    when '#39'GG'#39' then concat(mat.mat_003,'#39' ('#39',dm.tamanho_gg,'#39')'#39')  '
      
        '    when '#39'E'#39' then  concat(mat.mat_003,'#39' ('#39',dm.tamanho_extra,'#39')'#39')' +
        ' '
      '  else MAT.MAT_003 end'
      'else '
      '  mat.mat_003'
      'end) as varchar(100)) as descricao_item,'
      '      ite.ite_006 as observacao,'
      '      data_hora_lancamento,'
      '      fn_situacoes(ite.sit_001) as status,'
      '      ite.desconto,'
      '      coalesce(ite.acrescimo,0.0) as acrescimo,'
      '      ite.ite_005 as valor_total,'
      
        '      (row_number() over( order by ite.ite_001 nulls last )) as ' +
        'ordem_item,'
      '      ite.mat_001 as id_material,'
      '      ite.item_fracionado,'
      '      ite.gar_001,'
      '      ite.sit_001,  -- id_situacao'
      
        '      ((ite.desconto / ((ite.ite_002 * ite.ite_003)+ coalesce(it' +
        'e.acrescimo,0.0))) * 100) as desconto_perc ,'
      
        '      cast ((case when ite.item_fracionado is not null then '#39'S'#39' ' +
        'else '#39'N'#39' end ) as varchar(1))as  fracionado '
      'from vendaitem ite'
      
        'join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_0' +
        '01 = ite.mat_001)'
      'join desc_tamanho_material dm on dm.id_empresa=ite.emp_001'
      'where ite.emp_001 = :id_empresa'
      
        'and ite.ven_001 in (select ven_001 from venda where emp_001 = :i' +
        'd_empresa and (ven_004>=:data_inicio) and (ven_004<=:data_fim))'
      'and not ite.sit_001 in (0,1,2,3)'
      'and :flag_exibe_itens'
      'order by ite.ite_001')
    MasterSource = dsVenda
    MasterFields = 'ven_001'
    DetailFields = 'ven_001'
    ReadOnly = True
    Active = True
    Left = 264
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'data_inicio'
        Value = 42856.000000000000000000
      end
      item
        DataType = ftDate
        Name = 'data_fim'
        Value = 43070.000000000000000000
      end
      item
        DataType = ftBoolean
        Name = 'flag_exibe_itens'
        Value = True
      end
      item
        DataType = ftInteger
        Name = 'ven_001'
        ParamType = ptInput
        Value = 1045
      end>
    object qrVendaItemnro_item: TIntegerField
      FieldName = 'nro_item'
      Required = True
    end
    object qrVendaItemquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qrVendaItemvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      Required = True
    end
    object qrVendaItemdescricao_item: TWideStringField
      FieldName = 'descricao_item'
      ReadOnly = True
      Size = 100
    end
    object qrVendaItemobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaItemdata_hora_lancamento: TDateTimeField
      FieldName = 'data_hora_lancamento'
      Required = True
    end
    object qrVendaItemstatus: TWideMemoField
      FieldName = 'status'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrVendaItemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qrVendaItemacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object qrVendaItemvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object qrVendaItemordem_item: TLargeintField
      FieldName = 'ordem_item'
      ReadOnly = True
    end
    object qrVendaItemid_material: TIntegerField
      FieldName = 'id_material'
      Required = True
    end
    object qrVendaItemitem_fracionado: TIntegerField
      FieldName = 'item_fracionado'
    end
    object qrVendaItemgar_001: TIntegerField
      FieldName = 'gar_001'
    end
    object qrVendaItemsit_001: TIntegerField
      FieldName = 'sit_001'
    end
    object qrVendaItemdesconto_perc: TFloatField
      FieldName = 'desconto_perc'
      ReadOnly = True
    end
    object qrVendaItemfracionado: TWideStringField
      FieldName = 'fracionado'
      ReadOnly = True
      Size = 1
    end
    object qrVendaItememp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaItemven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaItemcod_material: TWideStringField
      FieldName = 'cod_material'
      ReadOnly = True
      Size = 50
    end
  end
  object dbHistoricoVendasItens: TfrxDBDataset
    UserName = 'dbHistoricoVendasItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nro_item=nro_item'
      'quantidade=quantidade'
      'valor_unitario=valor_unitario'
      'descricao_item=descricao_item'
      'observacao=observacao'
      'data_hora_lancamento=data_hora_lancamento'
      'status=status'
      'desconto=desconto'
      'acrescimo=acrescimo'
      'valor_total=valor_total'
      'ordem_item=ordem_item'
      'id_material=id_material'
      'item_fracionado=item_fracionado'
      'gar_001=gar_001'
      'sit_001=sit_001'
      'desconto_perc=desconto_perc'
      'fracionado=fracionado'
      'emp_001=emp_001'
      'ven_001=ven_001'
      'cod_material=cod_material')
    DataSet = qrVendaItem
    BCDToCurrency = False
    Left = 544
    Top = 288
  end
end
