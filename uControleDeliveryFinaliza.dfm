object frmControleDeliveryFinaliza: TfrmControleDeliveryFinaliza
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle Delivery - Finalizar'
  ClientHeight = 354
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 661
    Height = 305
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
    DesignSize = (
      661
      305)
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 12
      Top = 13
      Width = 357
      Height = 281
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akBottom]
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      DesignSize = (
        357
        281)
      object Label1: TLabel
        Left = 11
        Top = 11
        Width = 89
        Height = 19
        Caption = 'Observa'#231#245'es'
      end
      object Label9: TLabel
        Left = 11
        Top = 247
        Width = 136
        Height = 19
        Anchors = [akLeft, akBottom]
        Caption = 'Alterar entregador:'
      end
      object DBMemo1: TDBMemo
        Left = 11
        Top = 36
        Width = 334
        Height = 157
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'observacao'
        DataSource = dsVenda
        TabOrder = 0
      end
      object btAlterarForma: TAdvGlowButton
        Left = 11
        Top = 199
        Width = 334
        Height = 34
        Anchors = [akLeft, akBottom]
        Caption = 'Alterar forma de pagamento'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btAlterarFormaClick
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
      object cbEntregador: TDBLookupComboBox
        Left = 153
        Top = 244
        Width = 192
        Height = 25
        Anchors = [akLeft, akBottom]
        DataField = 'id_entregador'
        DataSource = dsVenda
        KeyField = 'id_usuario'
        ListField = 'nome'
        ListSource = dsEntregador
        NullValueKey = 46
        TabOrder = 2
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 375
      Top = 13
      Width = 275
      Height = 281
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 14074285
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label2: TLabel
        Left = 43
        Top = 11
        Width = 84
        Height = 19
        Alignment = taRightJustify
        Caption = 'Entregador:'
      end
      object Label3: TLabel
        Left = 46
        Top = 50
        Width = 81
        Height = 19
        Alignment = taRightJustify
        Caption = 'Data Sa'#237'da:'
      end
      object Label4: TLabel
        Left = 44
        Top = 90
        Width = 83
        Height = 19
        Alignment = taRightJustify
        Caption = 'Hora Sa'#237'da:'
      end
      object Label5: TLabel
        Left = 63
        Top = 130
        Width = 64
        Height = 19
        Alignment = taRightJustify
        Caption = 'Subtotal:'
      end
      object Label6: TLabel
        Left = 56
        Top = 169
        Width = 71
        Height = 19
        Alignment = taRightJustify
        Caption = 'Desconto:'
      end
      object Label7: TLabel
        Left = 80
        Top = 209
        Width = 47
        Height = 19
        Alignment = taRightJustify
        Caption = 'Troco:'
      end
      object Label8: TLabel
        Left = 11
        Top = 249
        Width = 116
        Height = 19
        Alignment = taRightJustify
        Caption = 'Total a Receber:'
      end
      object DBText1: TDBText
        Left = 144
        Top = 11
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'nome_entregador'
        DataSource = dsVenda
      end
      object DBText2: TDBText
        Left = 144
        Top = 50
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'data_saida'
        DataSource = dsVenda
      end
      object DBText3: TDBText
        Left = 144
        Top = 90
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'hora_saida'
        DataSource = dsVenda
      end
      object DBText4: TDBText
        Left = 144
        Top = 130
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'subtotal_venda'
        DataSource = dsVenda
      end
      object DBText5: TDBText
        Left = 144
        Top = 169
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'desconto'
        DataSource = dsVenda
      end
      object lbTroco: TLabel
        Left = 144
        Top = 209
        Width = 28
        Height = 19
        Caption = 'R$0'
      end
      object lbReceber: TLabel
        Left = 144
        Top = 249
        Width = 32
        Height = 19
        Caption = 'R$0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MemoCupomTEF: TMemo
        Left = 0
        Top = 0
        Width = 276
        Height = 281
        BorderStyle = bsNone
        Color = 13434623
        Lines.Strings = (
          '')
        ReadOnly = True
        TabOrder = 0
        Visible = False
      end
      object pAguardeTef: TPanel
        Left = 0
        Top = 0
        Width = 275
        Height = 281
        BevelOuter = bvNone
        Caption = 'Por favor aguarde...'
        Color = 13434623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 305
    Width = 661
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
      Left = 542
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
      TabStop = True
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
      Left = 423
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
      TabOrder = 0
      TabStop = True
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
  object MemoCupomTEF1: TMemo
    Left = 659
    Top = 14
    Width = 206
    Height = 474
    BorderStyle = bsNone
    Color = 13434623
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 2
    Visible = False
  end
  object MemoCupomTEF3: TMemo
    Left = 659
    Top = 14
    Width = 206
    Height = 474
    BorderStyle = bsNone
    Color = 33023
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 3
    Visible = False
  end
  object MemoCupomTEF2: TMemo
    Left = 659
    Top = 14
    Width = 206
    Height = 474
    BorderStyle = bsNone
    Color = clAqua
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object btn1: TBitBtn
    Left = 0
    Top = 328
    Width = 62
    Height = 25
    Caption = 'Editar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF1742592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C6F890C8F840
      84C8266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3F3F3C5C5C54288A9DFF1FE5399D71979BD4897C43D83BCA7B5C2F4F4F4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5A8A8A8CDCDCD9BB9CD79B5D48FB6D054
      C8E35ADEF477CFEC4A96D688939DE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF
      DDDDDDF2F2F2DADADA95B7C874B8D5C1F5FC62DEF65CE1F778D2EF4796D98892
      9CFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2EFEFEFDDDDDDD3D3D3D1D1D198BDCE76
      CAE6C6F6FC5DDBF459E0F67AD3F04694D7D6E7F7FFFFFFFFFFFFFFFFFFB4B4B4
      F1F1F1E1E1E1D7D7D7D4D4D4DBDBDBA3CBD878D2EDC6F6FC5EDBF45AE1F679D5
      F150A1E1DCE9F5FFFFFFFFFFFFB6B6B6F2F2F2E6E6E6DCDCDCD8D8D8DFDFDFDA
      DADA96BFCC7BD3EDC3F5FC6BDCF56CC9EC62A2D668A2D4E5EFF7FFFFFFB7B7B7
      F3F3F3E9E9E9E0E0E0DCDCDCE2E2E2DDDDDDC8C8C888B9C87FD3ECB1E2F88ABF
      E6ADD2F5C3DFFB6AA1D3FFFFFFB9B9B9F4F4F4EDEDEDE5E5E5E1E1E1E5E5E5E0
      E0E0CCCCCCC1C1C188BDCD76BDE6B3D1EFE4F2FEABD1EE5895CBFFFFFFBABABA
      F5F5F5EAEAEADDDDDDD5D5D5D4D4D4D0D0D0C2C2C2BBBBBBBFBFBFAAD3E257A4
      D784B0DA459CCFB0D8EEFFFFFFBCBCBCF6F6F6E6E6E6EEEEEEF5F5F5FAFAFAF9
      F9F9EFEFEFDDDDDDC2C2C2E5E5E5ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE
      F7F7F7FDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAE9E9E9ADAD
      ADFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE0E0E0FDFDFDFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFAFAFACECECEC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
      C6C6C6CFCFCFE7E7E7F2F2F2FCFCFCFBFBFBECECECDFDFDFC1C1C1C0C0C0F6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7
      B7B7C2C2C2CCCCCCE9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 5
  end
  object qrVenda: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO venda'
      
        '  (ven_001, ven_029, ven_004, emp_001, ven_002, cli_001, sit_001' +
        ','
      
        '   usu_001_1, dat_001_1, ven_009, ven_024, ven_008, id_caixa_abe' +
        'rtura, ven_027)'
      'VALUES'
      
        '  ( :ven_001, :ven_001, LOCALTIMESTAMP, :emp_001, :venda_orcamen' +
        'to, :id_cliente, :sit_001, '
      
        '    :usu_001_1, :data_cadastro, :total_venda, :tipo_venda, :acre' +
        'scimo, :id_caixa_abertura, :observacao)')
    SQLDelete.Strings = (
      'DELETE FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE venda'
      'SET'
      
        '  ven_027 = :observacao, id_entregador = :id_entregador, data_en' +
        'trega = :data_entrega, data_saida = :data_saida'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ven_001, emp_001, ven_002, cli_001, sit_001, usu_001_1, d' +
        'at_001_1, ven_009, ven_024 FROM venda'
      'WHERE'
      '  ven_001 = :ven_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'v.ven_001, '
      'v.emp_001, '
      'v.cli_001 as id_cliente,'
      'v.dat_001_1 data_cadastro, '
      'v.ven_024 as tipo_venda, '
      'v.ven_002 as venda_orcamento,'
      'coalesce(v.ven_007,0.00) as desconto,'
      'coalesce(v.ven_008, 0.00) as acrescimo,'
      'coalesce(v.ven_009, 0.00) as total_venda,'
      
        '(coalesce(v.ven_009, 0.00)-coalesce(v.ven_007,0.00)) as subtotal' +
        '_venda,'
      
        'coalesce(case when v.ven_009=0.00 then 0.00 else ven_007/ven_009' +
        '/0.01  end,0.00) as desconto_percent,'
      'v.sit_001,'
      'v.usu_001_1,'
      'cast(fn_situacoes(v.sit_001) as varchar(100)) as status_desc,'
      'v.id_caixa_abertura,'
      'v.ven_027 as observacao,'
      'v.id_entregador,'
      'v.data_saida,'
      'v.data_saida as hora_saida,'
      'u.usu_002 as nome_entregador,'
      'v.data_entrega, v.b_taxa_entrega'
      'from venda v '
      'left join usuarios u on u.usu_001=v.id_entregador'
      'where v.ven_001=:id_venda and emp_001=:id_empresa')
    Left = 160
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qrVendadata_cadastro: TDateTimeField
      FieldName = 'data_cadastro'
    end
    object qrVendatipo_venda: TWideStringField
      FieldName = 'tipo_venda'
      Size = 1
    end
    object qrVendavenda_orcamento: TIntegerField
      FieldName = 'venda_orcamento'
    end
    object qrVendadesconto: TFloatField
      FieldName = 'desconto'
      ReadOnly = True
      currency = True
    end
    object qrVendaacrescimo: TFloatField
      FieldName = 'acrescimo'
      ReadOnly = True
      currency = True
    end
    object qrVendatotal_venda: TFloatField
      FieldName = 'total_venda'
      ReadOnly = True
      currency = True
    end
    object qrVendadesconto_percent: TFloatField
      FieldName = 'desconto_percent'
      ReadOnly = True
    end
    object qrVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendausu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrVendastatus_desc: TWideStringField
      FieldName = 'status_desc'
      ReadOnly = True
      Size = 100
    end
    object qrVendaid_caixa_abertura: TIntegerField
      FieldName = 'id_caixa_abertura'
    end
    object qrVendaobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 200
    end
    object qrVendaid_entregador: TIntegerField
      FieldName = 'id_entregador'
    end
    object qrVendadata_saida: TDateTimeField
      FieldName = 'data_saida'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qrVendahora_saida: TDateTimeField
      FieldName = 'hora_saida'
      DisplayFormat = 'hh:nn'
    end
    object qrVendanome_entregador: TWideStringField
      FieldName = 'nome_entregador'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendasubtotal_venda: TFloatField
      FieldName = 'subtotal_venda'
      ReadOnly = True
      currency = True
    end
    object qrVendadata_entrega: TDateTimeField
      FieldName = 'data_entrega'
    end
    object qrVendab_taxa_entrega: TBooleanField
      FieldName = 'b_taxa_entrega'
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    Left = 112
    Top = 304
  end
  object qrEntregador: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'usu_001 as id_usuario, '
      'usu_002 as nome '
      'from usuarios '
      'where sit_001 = 4 '
      'and b_funcao_entregador')
    Left = 224
    Top = 304
    object qrEntregadorid_usuario: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_usuario'
      Required = True
    end
    object qrEntregadornome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 30
    end
  end
  object dsEntregador: TDataSource
    AutoEdit = False
    DataSet = qrEntregador
    Left = 304
    Top = 304
  end
end
