inherited frmControleMesaJuntar: TfrmControleMesaJuntar
  Caption = 'Juntar Mesas / Comandas'
  ClientHeight = 412
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Height = 363
    ExplicitHeight = 363
    FullHeight = 200
    object grDestino: TAdvGroupBox
      Left = 10
      Top = 84
      Width = 636
      Height = 276
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Mesa destino'
      TabOrder = 0
      DesignSize = (
        636
        276)
      object cxGrid1: TcxGrid
        Left = 9
        Top = 28
        Width = 619
        Height = 240
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsVenda
          DataController.KeyFieldNames = 'id_venda'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Selecao: TcxGridDBColumn
            DataBinding.ValueType = 'Boolean'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayGrayed = 'False'
            Properties.NullStyle = nssUnchecked
            Properties.ValueGrayed = 'False'
            Width = 34
          end
          object cxGrid1DBTableView1nro_nome_mesa: TcxGridDBColumn
            DataBinding.FieldName = 'nro_nome_mesa'
            Options.Editing = False
            Width = 206
          end
          object cxGrid1DBTableView1cod_venda: TcxGridDBColumn
            DataBinding.FieldName = 'cod_venda'
            Options.Editing = False
            Width = 82
          end
          object cxGrid1DBTableView1data_abertura: TcxGridDBColumn
            DataBinding.FieldName = 'data_abertura'
            Options.Editing = False
            Width = 117
          end
          object cxGrid1DBTableView1valor_venda: TcxGridDBColumn
            DataBinding.FieldName = 'valor_venda'
            Options.Editing = False
            Width = 112
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object grOrigem: TAdvGroupBox
      Left = 10
      Top = 10
      Width = 636
      Height = 68
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Mesa de origem'
      TabOrder = 1
      object lbMesaComanda: TLabel
        Left = 13
        Top = 21
        Width = 34
        Height = 16
        Caption = 'Mesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 13
        Top = 43
        Width = 34
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbValorOrigem: TLabel
        Left = 80
        Top = 43
        Width = 82
        Height = 16
        Caption = 'lbValorOrigem'
      end
      object lbMesaComandaOrigem: TLabel
        Left = 80
        Top = 21
        Width = 136
        Height = 16
        Caption = 'lbMesaComandaOrigem'
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 363
    ExplicitTop = 363
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 536
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
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 417
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
  object qrVenda: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mes_001 as id_mesa,'
      'v.ven_001 as id_venda, '
      'coalesce(v.ven_009,0.00) as valor_venda, '
      'v.sit_001 as status,'
      'coalesce(v.ven_029, -1) as cod_venda,'
      'case when v.ven_024='#39'M'#39
      
        '  then cast(trim(concat(cast(m.mes_002 as varchar(50)), '#39' '#39', v.v' +
        'en_027))  as varchar(100)) '
      
        'else cast(trim(concat('#39'COMANDA '#39', cast(v.ven_026 as varchar), '#39' ' +
        #39', v.ven_027))  as varchar(100)) end'
      'as nro_nome_mesa,'
      'v.dat_001_1 as data_abertura,'
      'v.ven_024 as tipo_venda'
      'from venda v '
      
        'left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.v' +
        'en_025) '
      '--mesas ativas e reservadas'
      'where v.sit_001 = 8'
      'and v.emp_001=:id_empresa and v.ven_024 = :tipo_venda'
      'and v.ven_001<>:id_venda'
      'order by m.mes_003, v.ven_026 ')
    Left = 112
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end
      item
        DataType = ftString
        Name = 'tipo_venda'
        Value = 'M'
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 0
      end>
    object qrVendaid_mesa: TIntegerField
      DisplayLabel = 'ID Mesa'
      FieldName = 'id_mesa'
      ReadOnly = True
      Required = True
    end
    object qrVendaid_venda: TIntegerField
      DisplayLabel = 'ID Venda'
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendavalor_venda: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrVendastatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
    end
    object qrVendacod_venda: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'cod_venda'
      ReadOnly = True
    end
    object qrVendanro_nome_mesa: TWideStringField
      DisplayLabel = 'Mesa / Comanda'
      FieldName = 'nro_nome_mesa'
      ReadOnly = True
      Size = 100
    end
    object qrVendadata_abertura: TDateTimeField
      FieldName = 'data_abertura'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrVendatipo_venda: TWideStringField
      DisplayLabel = 'Tipo Venda'
      FieldName = 'tipo_venda'
      Size = 1
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = qrVenda
    Left = 168
    Top = 80
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVenda'
    Left = 232
    Top = 80
    object cdsVendaid_mesa: TIntegerField
      FieldName = 'id_mesa'
      ReadOnly = True
      Required = True
    end
    object cdsVendaid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object cdsVendavalor_venda: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object cdsVendastatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object cdsVendacod_venda: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'cod_venda'
      ReadOnly = True
    end
    object cdsVendanro_nome_mesa: TWideStringField
      DisplayLabel = 'Mesa / Comanda'
      FieldName = 'nro_nome_mesa'
      ReadOnly = True
      Size = 100
    end
    object cdsVendadata_abertura: TDateTimeField
      DisplayLabel = 'Data Abertura'
      FieldName = 'data_abertura'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
  end
  object dsVenda: TDataSource
    DataSet = cdsVenda
    Left = 320
    Top = 224
  end
end
