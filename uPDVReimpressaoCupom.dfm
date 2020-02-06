inherited frmPDVReimpressaoCupom: TfrmPDVReimpressaoCupom
  Caption = 'frmPDVReimpressaoCupom'
  ExplicitWidth = 661
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    object cxGrid2: TcxGrid
      Left = 10
      Top = 9
      Width = 642
      Height = 378
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
        object cxGrid2DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Width = 74
        end
        object cxGrid2DBTableView1id_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'id_empresa'
          Visible = False
        end
        object cxGrid2DBTableView1data_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'data_emissao'
          Options.ShowEditButtons = isebNever
          Width = 76
        end
        object cxGrid2DBTableView1hora_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'hora_emissao'
          Options.ShowEditButtons = isebNever
          Width = 69
        end
        object cxGrid2DBTableView1nro_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'nro_cupom'
          Width = 67
        end
        object cxGrid2DBTableView1sat_cancelado: TcxGridDBColumn
          DataBinding.FieldName = 'sat_cancelado'
          Visible = False
        end
        object cxGrid2DBTableView1nome_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nome_cliente'
          Visible = False
          Width = 327
        end
        object cxGrid2DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Width = 77
        end
        object cxGrid2DBTableView1tipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Width = 91
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
  end
  inherited pnBotoes: TFlowPanel
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 548
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
      TabOrder = 0
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
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 441
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
      TabOrder = 1
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
    Left = 184
    Top = 224
  end
  object qrVendas: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select distinct v.ven_001 as id_venda, v.emp_001 as id_empresa ,' +
        ' v.Ven_037 as data_emissao,  v.Ven_037 as hora_emissao,'
      
        'v.VEN_035 as nro_cupom, v.ven_009 as valor, (v.VEN_034 is not nu' +
        'll) as sat_cancelado,'
      
        'cast(( case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227 +
        'o'#39' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' else '#39'Outro'#39 +
        ' end) as varchar(20)) as tipo_venda,'
      'c.cli_002 as nome_cliente,'
      'v.Ven_038 as chave_acesso,'
      'v.Ven_034 as chave_cancelamento,'
      'v.ven_024,'
      '--(v.Ven_038 is not null) as venda_sat'
      'cx.id_situacao as situacao_caixa'
      'from venda v'
      
        'join caixaitem ci on v.ven_001 = ci.id_venda and v.emp_001=ci.id' +
        '_empresa'
      
        'join caixa cx on cx.id_caixa=ci.id_caixa and cx.id_empresa=ci.id' +
        '_empresa '
      
        'left join  clientes c on c.cli_001 = v.cli_001 and c.emp_001=v.e' +
        'mp_001'
      'where v.Ven_038 is not null')
    Left = 248
    Top = 240
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
    object qrVendasnro_cupom: TIntegerField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'nro_cupom'
    end
    object qrVendasvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
    object qrVendassat_cancelado: TBooleanField
      FieldName = 'sat_cancelado'
      ReadOnly = True
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
  end
end
