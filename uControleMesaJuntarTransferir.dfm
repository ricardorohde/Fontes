object frmControleMesaJuntarTransferir: TfrmControleMesaJuntarTransferir
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Controle de mesa - Mover'
  ClientHeight = 268
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 219
    Width = 394
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    TabStop = True
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 275
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
      TabOrder = 1
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
      Left = 156
      Top = 3
      Width = 116
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
      TabOrder = 0
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 219
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.4.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 10
      Top = 10
      Width = 373
      Height = 95
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Mesa de origem'
      TabOrder = 0
      object DBText3: TDBText
        Left = 301
        Top = 55
        Width = 60
        Height = 19
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_venda'
        DataSource = dsMesaAtual
      end
      object Label4: TLabel
        Left = 16
        Top = 33
        Width = 34
        Height = 16
        Caption = 'Mesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 327
        Top = 34
        Width = 34
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 190
        Top = 55
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'desc_status'
        DataSource = dsMesaAtual
      end
      object Label6: TLabel
        Left = 190
        Top = 33
        Width = 43
        Height = 16
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 16
        Top = 55
        Width = 65
        Height = 17
        DataField = 'nro_mesa'
        DataSource = dsMesaAtual
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 12
      Top = 111
      Width = 371
      Height = 95
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Mesa destino'
      TabOrder = 1
      object DBText1: TDBText
        Left = 301
        Top = 53
        Width = 60
        Height = 19
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_venda'
        DataSource = dsListaNomeMesa
      end
      object Label1: TLabel
        Left = 16
        Top = 30
        Width = 34
        Height = 16
        Caption = 'Mesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 327
        Top = 31
        Width = 34
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 190
        Top = 53
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'desc_status'
        DataSource = dsListaNomeMesa
      end
      object Label3: TLabel
        Left = 190
        Top = 30
        Width = 43
        Height = 16
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 48
        Width = 161
        Height = 25
        DataField = 'id_mesa'
        DataSource = dsVendaMesaDestino
        KeyField = 'id_mesa'
        ListField = 'descricao_mesa'
        ListSource = dsListaNomeMesa
        TabOrder = 0
        OnClick = DBLookupComboBox1Click
      end
    end
  end
  object dsVendaMesaDestino: TDataSource
    DataSet = cdsVendaMesaDestino
    Left = 32
    Top = 24
  end
  object qrListaNomeMesa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select sub.* from ('
      'select '
      'm.mes_001 as id_mesa,'
      'v.ven_001 as id_venda, '
      'm.mes_003 as nro_mesa, '
      
        'cast(trim(concat(cast(m.mes_003  as varchar), '#39' '#39' , m.mes_002  )' +
        ') as varchar(100)) as descricao_mesa ,'
      'coalesce(v.ven_009,0) as valor_venda, '
      'coalesce(v.sit_001,  m.sit_001) as status,'
      'coalesce(v.ven_029, -1) as cod_venda, '
      'cast(case when coalesce(v.sit_001,  m.sit_001)=4 then '#39'LIVRE'#39
      
        '     else fn_situacoes(coalesce(v.sit_001,  m.sit_001)) end as v' +
        'archar(100)) as desc_status'
      'from mesa m'
      '-- uniao com as vendas em aberto e pre fechadas situacoes 8 e 21'
      
        'left join venda v on (m.emp_001 = v.emp_001) and (m.mes_001 = v.' +
        'ven_025) and v.sit_001 in (8,21)'
      '--mesas ativas e reservadas'
      
        'where ( m.sit_001 in (4, 19)) and coalesce(v.sit_001,  m.sit_001' +
        ') = :cod_status'
      'and m.emp_001 = :emp'
      'and m.mes_003<>:mesa_atual) sub'
      
        'where id_mesa not in (select coalesce(ven_025, 0) from venda whe' +
        're (ven_015 = 1))'
      'order by sub.nro_mesa')
    ReadOnly = True
    Left = 152
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_status'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mesa_atual'
        Value = nil
      end>
    object qrListaNomeMesaid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
      Required = True
    end
    object qrListaNomeMesaid_mesa: TIntegerField
      FieldName = 'id_mesa'
      Required = True
    end
    object qrListaNomeMesanro_mesa: TIntegerField
      FieldName = 'nro_mesa'
      Required = True
    end
    object qrListaNomeMesavalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrListaNomeMesastatus: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
    object qrListaNomeMesacod_venda: TIntegerField
      FieldName = 'cod_venda'
      ReadOnly = True
    end
    object qrListaNomeMesadescricao_mesa: TWideStringField
      FieldName = 'descricao_mesa'
      ReadOnly = True
      Size = 100
    end
    object qrListaNomeMesadesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
  end
  object dsListaNomeMesa: TDataSource
    AutoEdit = False
    DataSet = qrListaNomeMesa
    Left = 296
    Top = 16
  end
  object cdsVendaMesaDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 8
    object cdsVendaMesaDestinoid_mesa: TIntegerField
      FieldName = 'id_mesa'
    end
    object cdsVendaMesaDestinonro_mesa: TIntegerField
      FieldName = 'nro_mesa'
    end
  end
  object qrMesaAtual: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mes_003 as nro_mesa, '
      'm.mes_001 as id_mesa,'
      'v.ven_001 as id_venda, '
      'm.mes_002 as descricao_mesa, '
      'coalesce(v.ven_009,0) as valor_venda, '
      
        'cast(case when coalesce(v.sit_001,  m.sit_001)=4 then '#39'LIVRE'#39' el' +
        'se fn_situacoes(coalesce(v.sit_001,  m.sit_001)) end as varchar(' +
        '100)) as desc_status'
      'from mesa m'
      
        'join venda v on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_0' +
        '25) '
      'where v.ven_001=:id_venda and m.emp_001=:emp')
    ReadOnly = True
    Left = 136
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end>
    object qrMesaAtualnro_mesa: TIntegerField
      FieldName = 'nro_mesa'
      Required = True
    end
    object qrMesaAtualid_mesa: TIntegerField
      FieldName = 'id_mesa'
      Required = True
    end
    object qrMesaAtualid_venda: TIntegerField
      FieldName = 'id_venda'
      ReadOnly = True
      Required = True
    end
    object qrMesaAtualdescricao_mesa: TWideStringField
      FieldName = 'descricao_mesa'
      Required = True
      Size = 40
    end
    object qrMesaAtualvalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrMesaAtualdesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
  end
  object dsMesaAtual: TDataSource
    AutoEdit = False
    DataSet = qrMesaAtual
    Left = 248
    Top = 96
  end
end
