inherited frmConsVendaSAT: TfrmConsVendaSAT
  Caption = 'Consulta de vendas Fiscais'
  ClientHeight = 508
  ClientWidth = 961
  OnShow = FormShow
  ExplicitWidth = 967
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 961
    Height = 459
    ExplicitWidth = 961
    ExplicitHeight = 459
    FullHeight = 200
    object Label4: TLabel
      Left = 31
      Top = 437
      Width = 101
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'Cupom cancelado'
    end
    object Shape2: TShape
      Left = 5
      Top = 434
      Width = 20
      Height = 19
      Anchors = [akLeft, akBottom]
      Brush.Color = 6579455
      Pen.Color = clNavy
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 5
      Top = 8
      Width = 951
      Height = 121
      BorderColor = clNavy
      RoundEdges = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        951
        121)
      object Label1: TLabel
        Left = 16
        Top = 18
        Width = 85
        Height = 16
        Caption = 'Data da nota'
      end
      object Label2: TLabel
        Left = 16
        Top = 45
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object Label3: TLabel
        Left = 16
        Top = 73
        Width = 43
        Height = 16
        Caption = 'Cupom'
      end
      object dtpDataInicial: TDateTimePicker
        Left = 109
        Top = 13
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
        Left = 225
        Top = 13
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
      object edNomeCliente: TEdit
        Left = 109
        Top = 43
        Width = 226
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object edCupom: TEdit
        Left = 109
        Top = 71
        Width = 110
        Height = 22
        NumbersOnly = True
        TabOrder = 3
      end
      object AdvGroupBox1: TAdvGroupBox
        Left = 341
        Top = 3
        Width = 187
        Height = 107
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Anchors = [akTop, akRight]
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        DesignSize = (
          187
          107)
        object rgFiltroSituacao: TcxRadioGroup
          Left = 1
          Top = 0
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'Todas'
            end
            item
              Caption = 'Emitidas'
            end
            item
              Caption = 'Canceladas'
            end
            item
              Caption = 'Em conting'#234'ncia'
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
          TabOrder = 0
          Transparent = True
          Height = 104
          Width = 178
        end
      end
      object AdvGroupBox2: TAdvGroupBox
        Left = 534
        Top = 3
        Width = 200
        Height = 107
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Anchors = [akTop, akRight]
        Caption = 'Tipo de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        DesignSize = (
          200
          107)
        object rgFiltroTipo: TcxRadioGroup
          Left = 0
          Top = 0
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          Properties.Columns = 2
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
          TabOrder = 0
          Transparent = True
          Height = 104
          Width = 197
        end
      end
      object btPesquisar: TAdvGlowButton
        AlignWithMargins = True
        Left = 829
        Top = 69
        Width = 116
        Height = 41
        Margins.Left = 0
        Anchors = [akTop, akRight]
        Caption = 'Pesquisar'
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
        TabOrder = 6
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
      object AdvGroupBox5: TAdvGroupBox
        Left = 740
        Top = 3
        Width = 86
        Height = 107
        BorderColor = clNavy
        CaptionPosition = cpTopCenter
        RoundEdges = True
        Anchors = [akTop, akRight]
        Caption = 'Tipo Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        DesignSize = (
          86
          107)
        object rgFiltroTipoFiscal: TcxRadioGroup
          Left = 0
          Top = 0
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'SAT'
            end
            item
              Caption = 'NFCe'
            end
            item
              Caption = 'ECF'
            end
            item
              Caption = 'MFE'
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
          TabOrder = 0
          Transparent = True
          OnClick = rgFiltroTipoFiscalClick
          Height = 104
          Width = 83
        end
      end
    end
    object cxGrid2: TcxGrid
      Left = 5
      Top = 135
      Width = 951
      Height = 216
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsVendasSAT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
        Styles.OnGetContentStyle = cxGrid2DBTableView1StylesGetContentStyle
        object cxGrid2DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Width = 73
        end
        object cxGrid2DBTableView1id_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'id_empresa'
          Visible = False
        end
        object cxGrid2DBTableView1data_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'data_emissao'
          Options.ShowEditButtons = isebNever
          Width = 72
        end
        object cxGrid2DBTableView1hora_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'hora_emissao'
          Options.ShowEditButtons = isebNever
          Width = 68
        end
        object cxGrid2DBTableView1nro_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'nro_cupom'
          Width = 64
        end
        object cxGrid2DBTableView1sat_cancelado: TcxGridDBColumn
          DataBinding.FieldName = 'sat_cancelado'
          Visible = False
        end
        object cxGrid2DBTableView1nome_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nome_cliente'
          Width = 267
        end
        object cxGrid2DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Width = 85
        end
        object cxGrid2DBTableView1tipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Width = 103
        end
        object cxGrid2DBTableView1tipofiscal: TcxGridDBColumn
          DataBinding.FieldName = 'tipofiscal'
          Width = 83
        end
        object cxGrid2DBTableView1status_envio_sefaz: TcxGridDBColumn
          DataBinding.FieldName = 'status_envio_sefaz'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = frmMenu.ImgList16
          Properties.Items = <
            item
              Description = 'N'#195'O SE APLICA'
              ImageIndex = 11
              Value = 1
            end
            item
              Description = 'ENVIADA'
              ImageIndex = 12
              Value = 2
            end
            item
              Description = 'N'#195'O ENVIADA'
              ImageIndex = 13
              Value = 3
            end
            item
              Description = 'PRAZO VENCIDO'
              ImageIndex = 14
              Value = 4
            end
            item
              Description = 'CANCELADA'
              ImageIndex = 9
              Value = 5
            end>
          Width = 130
        end
      end
      object cxGrid2DBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DetailKeyFieldNames = 'nro_item'
        DataController.KeyFieldNames = 'id_venda'
        DataController.MasterKeyFieldNames = 'nro_item'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardBorderWidth = 1
        OptionsView.CardIndent = 0
        OptionsView.CardWidth = 715
        OptionsView.EmptyRows = False
        OptionsView.SeparatorWidth = 0
        object cxGrid2DBCardView1observacao: TcxGridDBCardViewRow
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'observacao'
          Options.Filtering = False
          Position.BeginsLayer = True
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 5
      Top = 357
      Width = 951
      Height = 71
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Dados do cupom'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 16
        Top = 21
        Width = 109
        Height = 16
        Caption = 'Chave de acesso'
      end
      object Label9: TLabel
        Left = 381
        Top = 21
        Width = 214
        Height = 16
        Caption = 'Chave de acesso - Cancelamento'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 43
        DataBinding.DataField = 'chave_acesso'
        DataBinding.DataSource = dsVendasSAT
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = 12691076
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 359
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 381
        Top = 43
        DataBinding.DataField = 'chave_cancelamento'
        DataBinding.DataSource = dsVendasSAT
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = 12691076
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 396
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 459
    Width = 961
    ExplicitTop = 459
    ExplicitWidth = 961
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 854
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
      Left = 747
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
    object btExcluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 594
      Top = 3
      Width = 150
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar Cupom'
      ImageIndex = 31
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btExcluirClick
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
    object btInutilizacaoNFCe: TAdvGlowButton
      AlignWithMargins = True
      Left = 441
      Top = 3
      Width = 150
      Height = 41
      Margins.Left = 0
      Caption = 'Inutiliza'#231#227'o de NFCe'
      ImageIndex = 20
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btInutilizacaoNFCeClick
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
    object btEnviarEmail: TAdvGlowButton
      AlignWithMargins = True
      Left = 288
      Top = 3
      Width = 150
      Height = 41
      Margins.Left = 0
      Caption = 'Enviar por email'
      ImageIndex = 32
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btEnviarEmailClick
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
    object btEnviarNFCEContingencia: TAdvGlowButton
      AlignWithMargins = True
      Left = 114
      Top = 3
      Width = 171
      Height = 41
      Margins.Left = 0
      Caption = 'Enviar notas em conting'#234'ncia '#224' SEFAZ'
      ImageIndex = 53
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btEnviarNFCEContingenciaClick
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
  object qrVendasSAT: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select distinct v.ven_001 as id_venda, v.emp_001 as id_empresa ,' +
        ' v.Ven_037 as data_emissao,  v.Ven_037 as hora_emissao,'
      'v.numero_cupom as nro_cupom, v.ven_009 as valor, '
      '((v.VEN_034 is not null) or (v.sit_001=2) )as sat_cancelado,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' else '#39'Outro'#39 +
        ' end) as varchar(20)) as tipo_venda,'
      'c.cli_002 as nome_cliente,'
      'v.Ven_038 as chave_acesso,'
      'v.Ven_034 as chave_cancelamento,'
      'v.ven_024,'
      'cx.id_situacao as situacao_caixa,'
      'v.tipofiscal,'
      'case when (v.sit_001=2) then 5'
      '     when (v.tipofiscal='#39'ECF'#39') then 1'
      '     when (v.tipofiscal='#39'SAT'#39') then 2'
      '     when (v.tipofiscal='#39'MFE'#39') then 2'
      '     when (v.tipofiscal='#39'NFCE'#39' and not nfce_contingencia) then 2'
      
        '     when (v.tipofiscal='#39'NFCE'#39' and v.nfce_contingencia and v.nfc' +
        'e_contingencia_enviada) then 2'
      
        '     when (v.tipofiscal='#39'NFCE'#39' and v.nfce_contingencia and not v' +
        '.nfce_contingencia_enviada and ((EXTRACT(EPOCH FROM current_time' +
        'stamp - v.VEN_037 )/3600)<24.0 )) then 3'
      
        '     when (v.tipofiscal='#39'NFCE'#39' and v.nfce_contingencia and not v' +
        '.nfce_contingencia_enviada and ((EXTRACT(EPOCH FROM current_time' +
        'stamp - v.VEN_037 )/3600)>24.0 )) then 4'
      'end as status_envio_sefaz,'
      'v.nfce_contingencia,'
      'v.nfce_contingencia_enviada'
      'from venda v'
      
        'join caixaitem ci on v.ven_001 = ci.id_venda and v.emp_001=ci.id' +
        '_empresa'
      
        'join caixa cx on cx.id_caixa=ci.id_caixa and cx.id_empresa=ci.id' +
        '_empresa '
      
        'left join  clientes c on c.cli_001 = v.cli_001 and c.emp_001=v.e' +
        'mp_001'
      
        'where v.Ven_038 is not null and Ven_037>=:data1 and Ven_037<=:da' +
        'ta2 and v.emp_001=:id_empresa'
      'and true -- linha reservada para filtro, n'#227'o remover')
    Left = 248
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrVendasSATid_venda: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendasSATid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendasSATdata_emissao: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'data_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrVendasSATnro_cupom: TIntegerField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'nro_cupom'
    end
    object qrVendasSATvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrVendasSATsat_cancelado: TBooleanField
      FieldName = 'sat_cancelado'
      ReadOnly = True
    end
    object qrVendasSATtipo_venda: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrVendasSATnome_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendasSATchave_acesso: TWideStringField
      FieldName = 'chave_acesso'
      Size = 50
    end
    object qrVendasSATchave_cancelamento: TWideStringField
      FieldName = 'chave_cancelamento'
      Size = 50
    end
    object qrVendasSAThora_emissao: TDateTimeField
      Alignment = taRightJustify
      DisplayLabel = 'H. Emiss'#227'o'
      FieldName = 'hora_emissao'
      DisplayFormat = 'hh:nn'
    end
    object qrVendasSATven_024: TWideStringField
      FieldName = 'ven_024'
      Size = 1
    end
    object qrVendasSATsituacao_caixa: TIntegerField
      FieldName = 'situacao_caixa'
      ReadOnly = True
    end
    object qrVendasSATtipofiscal: TWideStringField
      DisplayLabel = 'Tipo Fiscal'
      FieldName = 'tipofiscal'
      Size = 10
    end
    object qrVendasSATstatus_envio_sefaz: TIntegerField
      DisplayLabel = 'Envio '#224' SEFAZ'
      FieldName = 'status_envio_sefaz'
    end
    object qrVendasSATnfce_contingencia: TBooleanField
      FieldName = 'nfce_contingencia'
      Required = True
    end
    object qrVendasSATnfce_contingencia_enviada: TBooleanField
      FieldName = 'nfce_contingencia_enviada'
      Required = True
    end
  end
  object dsVendasSAT: TDataSource
    AutoEdit = False
    DataSet = qrVendasSAT
    Left = 184
    Top = 224
  end
end
