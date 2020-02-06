inherited frmReimpressaoCupom: TfrmReimpressaoCupom
  Caption = 'Reimprimir Cupom / Cancelar Venda'
  ClientHeight = 483
  ClientWidth = 874
  ExplicitWidth = 880
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 874
    Height = 432
    ExplicitWidth = 874
    ExplicitHeight = 432
    FullHeight = 200
    object Label4: TLabel
      Left = 31
      Top = 416
      Width = 97
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'Venda cancelada'
      ExplicitTop = 377
    end
    object Shape2: TShape
      Left = 5
      Top = 413
      Width = 20
      Height = 19
      Anchors = [akLeft, akBottom]
      Brush.Color = 6579455
      Pen.Color = clNavy
      ExplicitTop = 374
    end
    object Label1: TLabel
      Left = 392
      Top = 14
      Width = 63
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 522
      Top = 14
      Width = 57
      Height = 16
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid2: TcxGrid
      Left = 3
      Top = 87
      Width = 868
      Height = 323
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsVendas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
        Styles.OnGetContentStyle = cxGrid2DBTableView1StylesGetContentStyle
        object cxGrid2DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Width = 87
        end
        object cxGrid2DBTableView1id_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'id_empresa'
          Visible = False
        end
        object cxGrid2DBTableView1data_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'data_emissao'
          Options.ShowEditButtons = isebNever
          Width = 112
        end
        object cxGrid2DBTableView1hora_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'hora_emissao'
          Options.ShowEditButtons = isebNever
          Width = 102
        end
        object cxGrid2DBTableView1nro_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'numero_cupom'
          Width = 99
        end
        object cxGrid2DBTableView1nome_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nome_cliente'
          Visible = False
          Width = 327
        end
        object cxGrid2DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Width = 165
        end
        object cxGrid2DBTableView1venda_cancelada: TcxGridDBColumn
          DataBinding.FieldName = 'venda_cancelada'
          Visible = False
        end
        object cxGrid2DBTableView1tipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Width = 137
        end
        object cxGrid2DBTableView1descricao_mesa_comanda: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_mesa_comanda'
          Width = 164
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
    object AdvGroupBox1: TAdvGroupBox
      Left = 3
      Top = 3
      Width = 109
      Height = 78
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        109
        78)
      object rgFiltroSituacao: TcxRadioGroup
        Left = 7
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
        Height = 75
        Width = 96
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 118
      Top = 3
      Width = 268
      Height = 78
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Tipo de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        268
        78)
      object rgFiltroTipo: TcxRadioGroup
        Left = 0
        Top = 3
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
        TabOrder = 0
        Transparent = True
        Height = 75
        Width = 265
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 755
      Top = 40
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
      TabOrder = 3
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
    object dtpDataInicial: TDateTimePicker
      Left = 392
      Top = 36
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
      TabOrder = 4
    end
    object dtpDataFinal: TDateTimePicker
      Left = 522
      Top = 36
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
      TabOrder = 5
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 432
    Width = 874
    Height = 51
    ExplicitTop = 432
    ExplicitWidth = 874
    ExplicitHeight = 51
    object btSair: TAdvGlowButton
      AlignWithMargins = True
      Left = 767
      Top = 3
      Width = 104
      Height = 43
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
    object btImprimir: TAdvGlowButton
      AlignWithMargins = True
      Left = 660
      Top = 3
      Width = 104
      Height = 43
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
    object btCancelarVenda: TAdvGlowButton
      AlignWithMargins = True
      Left = 507
      Top = 3
      Width = 150
      Height = 43
      Margins.Left = 0
      Caption = 'Cancelar Venda'
      ImageIndex = 31
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btCancelarVendaClick
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
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = qrVendas
    Left = 96
    Top = 128
  end
  object qrVendas: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select distinct v.ven_001 as id_venda, v.emp_001 as id_empresa ,' +
        ' '
      'e.enc_002 as data_emissao, e.enc_002  as hora_emissao,'
      
        'v.numero_cupom, v.ven_009 as valor, (v.sit_001=2) as venda_cance' +
        'lada,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' the' +
        'n '#39'PDV'#39' else '#39'Outro'#39' end) as varchar(20)) as tipo_venda,'
      'c.cli_002 as nome_cliente,'
      'v.Ven_038 as chave_acesso,'
      'v.Ven_034 as chave_cancelamento,'
      'v.ven_024,'
      'cx.id_situacao as situacao_caixa,'
      'v.tipofiscal,'
      
        'cast(case v.ven_024 when '#39'M'#39' then m.mes_002 when '#39'C'#39' then concat' +
        '('#39'COMANDA'#39', '#39' '#39',  v.ven_026 ) else '#39#39' end as varchar(40)) as des' +
        'cricao_mesa_comanda'
      'from venda v'
      
        'join caixaitem ci on v.ven_001 = ci.id_venda and v.emp_001=ci.id' +
        '_empresa'
      
        'join caixa cx on cx.id_caixa=ci.id_caixa and cx.id_empresa=ci.id' +
        '_empresa '
      
        'join encerravenda e on e.ven_001=v.ven_001 and e.emp_001=v.emp_0' +
        '01'
      
        'left join  clientes c on c.cli_001 = v.cli_001 and c.emp_001=v.e' +
        'mp_001'
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      'where v.Ven_004 is not null and v.tipofiscal is null '
      
        'and Ven_004>=:data1 and Ven_004<=:data2 and v.emp_001=:id_empres' +
        'a'
      'and true -- linha reservada para filtro, n'#227'o remover'
      'order by v.ven_001')
    Left = 32
    Top = 128
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
    object qrVendasid_venda: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendasid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrVendasdata_emissao: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'data_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrVendasvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrVendastipo_venda: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrVendasnome_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendaschave_acesso: TWideStringField
      FieldName = 'chave_acesso'
      Size = 50
    end
    object qrVendaschave_cancelamento: TWideStringField
      FieldName = 'chave_cancelamento'
      Size = 50
    end
    object qrVendashora_emissao: TDateTimeField
      Alignment = taRightJustify
      DisplayLabel = 'H. Emiss'#227'o'
      FieldName = 'hora_emissao'
      DisplayFormat = 'hh:nn'
    end
    object qrVendasven_024: TWideStringField
      FieldName = 'ven_024'
      Size = 1
    end
    object qrVendassituacao_caixa: TIntegerField
      FieldName = 'situacao_caixa'
      ReadOnly = True
    end
    object qrVendasnumero_cupom: TIntegerField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'numero_cupom'
    end
    object qrVendasvenda_cancelada: TBooleanField
      FieldName = 'venda_cancelada'
      ReadOnly = True
    end
    object qrVendastipofiscal: TWideStringField
      FieldName = 'tipofiscal'
      Size = 10
    end
    object qrVendasdescricao_mesa_comanda: TWideStringField
      DisplayLabel = 'Mesa / Comanda'
      FieldName = 'descricao_mesa_comanda'
      ReadOnly = True
      Size = 40
    end
  end
end
