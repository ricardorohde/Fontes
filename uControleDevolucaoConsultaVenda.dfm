inherited frmControleDevolucaoConsultaVenda: TfrmControleDevolucaoConsultaVenda
  Caption = 'Sele'#231#227'o de venda - Devolu'#231#227'o'
  ClientHeight = 481
  ClientWidth = 904
  OnShow = FormShow
  ExplicitLeft = -123
  ExplicitTop = -18
  ExplicitWidth = 910
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 904
    Height = 432
    ExplicitWidth = 904
    ExplicitHeight = 432
    FullHeight = 200
    object Label2: TLabel
      Left = 542
      Top = 8
      Width = 39
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'In'#237'cio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 459
    end
    object Label5: TLabel
      Left = 658
      Top = 8
      Width = 25
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 575
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 107
      Height = 16
      Caption = 'Termo de busca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 397
      Top = 8
      Width = 93
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Buscando por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 314
    end
    object edTermoBusca: TEdit
      Left = 8
      Top = 30
      Width = 383
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edTermoBuscaKeyDown
    end
    object dtpDataInicial: TDateTimePicker
      Left = 542
      Top = 30
      Width = 110
      Height = 26
      Anchors = [akTop, akRight]
      Date = 42614.000000000000000000
      Time = 42614.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dtpDataFinal: TDateTimePicker
      Left = 658
      Top = 30
      Width = 110
      Height = 26
      Anchors = [akTop, akRight]
      Date = 42614.000000000000000000
      Time = 42614.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 774
      Top = 15
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
      TabOrder = 3
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
    object cbCampoFiltro: TComboBox
      Left = 397
      Top = 30
      Width = 139
      Height = 26
      Style = csDropDownList
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      TabStop = False
      Text = 'Cliente'
      Items.Strings = (
        'Cliente'
        'N'#250'mero da venda'
        'Cupom')
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 62
      Width = 890
      Height = 367
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dsVendasCliente
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1nro_venda: TcxGridDBColumn
          DataBinding.FieldName = 'nro_venda'
          Options.AutoWidthSizable = False
        end
        object cxGrid1DBTableView1numero_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'numero_cupom'
          Options.AutoWidthSizable = False
          Width = 63
        end
        object cxGrid1DBTableView1data_venda: TcxGridDBColumn
          DataBinding.FieldName = 'data_venda'
          Options.AutoWidthSizable = False
          SortIndex = 0
          SortOrder = soDescending
          Width = 115
        end
        object cxGrid1DBTableView1nome_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nome_cliente'
          Width = 306
        end
        object cxGrid1DBTableView1id_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'id_cliente'
          Visible = False
        end
        object cxGrid1DBTableView1valor_venda: TcxGridDBColumn
          DataBinding.FieldName = 'valor_venda'
          Options.AutoWidthSizable = False
          Width = 84
        end
        object cxGrid1DBTableView1tipo_venda: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_venda'
          Options.AutoWidthSizable = False
          Width = 115
        end
        object cxGrid1DBTableView1id_venda: TcxGridDBColumn
          DataBinding.FieldName = 'id_venda'
          Visible = False
        end
        object cxGrid1DBTableView1responsavel: TcxGridDBColumn
          DataBinding.FieldName = 'responsavel'
          Width = 133
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 432
    Width = 904
    ExplicitTop = 432
    ExplicitWidth = 904
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 785
      Top = 3
      Width = 116
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
      OnClick = btCancelaClick
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
      Left = 666
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirma'
      ImageIndex = 1
      Images = frmMenu.ImgList32
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
  end
  object dsVendasCliente: TDataSource
    DataSet = qrVendasCliente
    Left = 320
    Top = 168
  end
  object qrVendasCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001 as id_venda,'
      'v.ven_029 as nro_venda,'
      'v.numero_cupom,'
      'v.ven_004 as data_venda,'
      'c.cli_002 as nome_cliente, '
      'c.cli_001 as id_cliente,'
      'v.ven_009 as valor_venda,'
      
        'cast(case v.ven_024 when '#39'M'#39'  then '#39'Mesa'#39' when '#39'B'#39' then '#39'Balc'#227'o'#39 +
        ' when '#39'C'#39' then '#39'Comanda'#39' when '#39'D'#39' then '#39'Delivery'#39' when '#39'P'#39' then ' +
        #39'PDV'#39' else '#39'Outro'#39' end as varchar(20)) as tipo_venda,'
      'u.usu_002 as responsavel'
      'from venda v '
      
        'left join clientes c on v.cli_001=c.cli_001 and c.emp_001=v.emp_' +
        '001'
      
        'join  vendaitem  vi on vi.ven_001=v.ven_001 and vi.emp_001= v.em' +
        'p_001 '
      'join usuarios u on v.usu_001_1=u.usu_001'
      
        'left join (select sum(quantidade) as quantidade, id_venda, id_ve' +
        'ndaitem, id_empresa from devolucaoitem group by  id_venda, id_ve' +
        'ndaitem, id_empresa ) di on di.id_venda=vi.ven_001 and di.id_ven' +
        'daitem=vi.ite_001 '
      'where v.emp_001 = :id_empresa'
      'and  v.sit_001=1'
      'and v.ven_004 >= :data_1 and v.ven_004 <= :data_2'
      'and vi.ite_002 - coalesce(di.quantidade, 0.0) >0.0'
      '--aqui vem o filtro'
      
        'group by v.ven_001, v.ven_029, v.numero_cupom, v.ven_004, c.cli_' +
        '002, c.cli_001,v.ven_009, v.ven_024, u.usu_002 '
      'order by v.ven_004 desc')
    ReadOnly = True
    Left = 408
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'data_1'
        Value = 42736d
      end
      item
        DataType = ftDateTime
        Name = 'data_2'
        Value = 43101d
      end>
    object qrVendasClientenro_venda: TIntegerField
      DisplayLabel = 'Nro. Venda'
      FieldName = 'nro_venda'
    end
    object qrVendasClientenumero_cupom: TIntegerField
      DisplayLabel = 'Cupom'
      FieldName = 'numero_cupom'
    end
    object qrVendasClientedata_venda: TDateTimeField
      DisplayLabel = 'Data / Hora'
      FieldName = 'data_venda'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrVendasClientenome_cliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 80
    end
    object qrVendasClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      ReadOnly = True
      Required = True
    end
    object qrVendasClientevalor_venda: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'valor_venda'
      currency = True
    end
    object qrVendasClientetipo_venda: TWideStringField
      DisplayLabel = 'Tipo Venda'
      FieldName = 'tipo_venda'
      ReadOnly = True
    end
    object qrVendasClienteid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendasClienteresponsavel: TWideStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'responsavel'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
end
