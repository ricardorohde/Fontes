inherited frmControleCNoturnaCheckin: TfrmControleCNoturnaCheckin
  Caption = 'frmControleCNoturnaCheckin'
  ClientHeight = 550
  ClientWidth = 1012
  ExplicitWidth = 1018
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1012
    Height = 501
    ExplicitTop = -6
    ExplicitWidth = 925
    ExplicitHeight = 403
    FullHeight = 200
    object AdvGroupBox1: TAdvGroupBox
      Left = 8
      Top = 0
      Width = 998
      Height = 101
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Dados do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 911
      DesignSize = (
        998
        101)
      object Label1: TLabel
        Left = 11
        Top = 32
        Width = 43
        Height = 21
        Caption = 'Nome'
        FocusControl = cxDBTextEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 67
        Width = 64
        Height = 21
        Caption = 'Telefone'
        FocusControl = cxDBTextEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 243
        Top = 67
        Width = 83
        Height = 21
        Caption = 'Anivers'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 499
        Top = 67
        Width = 35
        Height = 21
        Caption = 'Sexo'
        FocusControl = cxDBTextEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 499
        Top = 32
        Width = 22
        Height = 21
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 86
        Top = 29
        DataBinding.DataField = 'nome_cliente'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 401
      end
      object btSelecionarCliente: TAdvGlowButton
        AlignWithMargins = True
        Left = 799
        Top = 52
        Width = 191
        Height = 41
        Margins.Left = 0
        Anchors = [akRight, akBottom]
        Caption = 'Selecionar Cliente'
        ImageIndex = 6
        Images = frmMenu.ImgList32
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
        ExplicitLeft = 712
        ExplicitTop = 72
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 86
        Top = 64
        DataBinding.DataField = 'telefone1'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 150
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 540
        Top = 64
        DataBinding.DataField = 'sexo'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 48
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 332
        Top = 64
        DataBinding.DataField = 'data_nascimento'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 155
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 540
        Top = 29
        DataBinding.DataField = 'rg'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 152
      end
    end
    object AdvGroupBox2: TAdvGroupBox
      Left = 8
      Top = 107
      Width = 998
      Height = 105
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Dados da Comanda / Ficha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 911
      object Label6: TLabel
        Left = 11
        Top = 30
        Width = 69
        Height = 21
        Caption = 'Comanda'
        FocusControl = cxDBTextEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 65
        Width = 69
        Height = 21
        Caption = 'Operador'
        FocusControl = cxDBTextEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 635
        Top = 30
        Width = 65
        Height = 21
        Caption = 'Abertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 635
        Top = 65
        Width = 104
        Height = 21
        Caption = 'Encerramento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 279
        Top = 65
        Width = 47
        Height = 21
        Caption = 'Status'
        FocusControl = cxDBTextEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 196
        Top = 30
        Width = 130
        Height = 21
        Caption = 'Perfil Selecionado'
        FocusControl = cxDBTextEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 86
        Top = 27
        DataBinding.DataField = 'comanda'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 99
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 86
        Top = 62
        DataBinding.DataField = 'nome_operador'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 150
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 745
        Top = 27
        DataBinding.DataField = 'data_abertura'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ShowTime = False
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 120
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 745
        Top = 62
        DataBinding.DataField = 'data_fechamento'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ShowTime = False
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 120
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 332
        Top = 62
        DataBinding.DataField = 'desc_situacao'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 150
      end
      object cxDBTimeEdit1: TcxDBTimeEdit
        Left = 871
        Top = 27
        DataBinding.DataField = 'data_abertura'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 82
      end
      object cxDBTimeEdit2: TcxDBTimeEdit
        Left = 871
        Top = 62
        DataBinding.DataField = 'data_fechamento'
        DataBinding.DataSource = dsVenda
        ParentFont = False
        Properties.ReadOnly = True
        Properties.SpinButtons.Visible = False
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 82
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 332
        Top = 27
        DataBinding.DataField = 'cod_descricao'
        DataBinding.DataSource = dsPerfilConsumo
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = 14997705
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 287
      end
    end
    object Button1: TButton
      Left = 664
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 8
      Top = 218
      Width = 998
      Height = 228
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Perfil de Consumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ExplicitWidth = 906
      DesignSize = (
        998
        228)
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 11
        Top = 28
        Width = 979
        Height = 192
        Anchors = [akLeft, akTop, akRight, akBottom]
        ColCount = 5
        DataSource = dsPerfilConsumo
        PanelHeight = 96
        PanelWidth = 192
        TabOrder = 0
        RowCount = 2
        SelectedColor = clWhite
        ExplicitWidth = 887
        object DBText1: TDBText
          Left = 4
          Top = 8
          Width = 183
          Height = 17
          Alignment = taCenter
          DataField = 'cod_descricao'
          DataSource = dsPerfilConsumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label11: TLabel
          Left = 55
          Top = 34
          Width = 34
          Height = 16
          Alignment = taRightJustify
          Caption = 'Limite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 45
          Top = 53
          Width = 44
          Height = 16
          Alignment = taRightJustify
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 16
          Top = 72
          Width = 73
          Height = 16
          Alignment = taRightJustify
          Caption = 'Consuma'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 97
          Top = 34
          Width = 85
          Height = 17
          DataField = 'valor_limite'
          DataSource = dsPerfilConsumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 97
          Top = 53
          Width = 85
          Height = 17
          DataField = 'valor_entrada'
          DataSource = dsPerfilConsumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 97
          Top = 72
          Width = 85
          Height = 17
          DataField = 'valor_consumacao'
          DataSource = dsPerfilConsumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 501
    Width = 1012
    ExplicitTop = 393
  end
  object qrVenda: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO venda'
      
        '  (ven_001, emp_001, ven_002, ven_004, cli_001, sit_001, usu_001' +
        '_1, dat_001_1, ven_026, id_periodo, data_fechamento, id_perfil_c' +
        'onsumo, valor_consumacao, valor_entrada, valor_limite)'
      'VALUES'
      
        '  (:ven_001, :emp_001, :ven_002, :ven_004, :cli_001, :sit_001, :' +
        'usu_001_1, :dat_001_1, :ven_026, :id_periodo, :data_fechamento, ' +
        ':id_perfil_consumo, :valor_consumacao, :valor_entrada, :valor_li' +
        'mite)')
    SQLDelete.Strings = (
      'DELETE FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE venda'
      'SET'
      
        '  ven_001 = :ven_001, emp_001 = :emp_001, ven_002 = :ven_002, ve' +
        'n_004 = :ven_004, cli_001 = :cli_001, sit_001 = :sit_001, usu_00' +
        '1_1 = :usu_001_1, dat_001_1 = :dat_001_1, ven_026 = :ven_026, id' +
        '_periodo = :id_periodo, data_fechamento = :data_fechamento, id_p' +
        'erfil_consumo = :id_perfil_consumo, valor_consumacao = :valor_co' +
        'nsumacao, valor_entrada = :valor_entrada, valor_limite = :valor_' +
        'limite'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM venda'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ven_001, emp_001, ven_002, ven_004, cli_001, sit_001, usu' +
        '_001_1, dat_001_1, ven_026, id_periodo, data_fechamento, id_perf' +
        'il_consumo, valor_consumacao, valor_entrada, valor_limite FROM v' +
        'enda'
      'WHERE'
      '  ven_001 = :ven_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM venda'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select v.ven_001, v.emp_001, v.ven_002, v.ven_004 as data_abertu' +
        'ra , v.cli_001, v.sit_001, v.usu_001_1, v.dat_001_1, v.data_fech' +
        'amento,'
      
        'v.valor_consumacao, v.valor_entrada, v.valor_limite, v.id_period' +
        'o, v.id_perfil_consumo,'
      
        'c.cli_002  as nome_cliente, c.cli_004 as cpf, c.cli_005 as rg, c' +
        '.sexo, c.cli_012 as telefone1, c.data_nascimento,'
      
        'v.ven_026 as comanda, v.usu_001_1 as id_operador, u.usu_002 as n' +
        'ome_operador,'
      
        'cast (case v.sit_001 when 8 then '#39'ATIVA'#39' else fn_situacoes(v.sit' +
        '_001) end as varchar(50)) as desc_situacao'
      'from venda v'
      
        'left join clientes c on v.cli_001=c.cli_001 and v.emp_001 = c.em' +
        'p_001'
      'left join usuarios u on u.usu_001=v.usu_001_1'
      'where v.ven_001 = :id_venda and v.emp_001=:id_empresa')
    Active = True
    OnNewRecord = qrVendaNewRecord
    Left = 808
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 8
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrVendaven_001: TIntegerField
      DisplayLabel = 'ID Venda'
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaemp_001: TIntegerField
      DisplayLabel = 'ID Empresa'
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendaven_002: TIntegerField
      FieldName = 'ven_002'
    end
    object qrVendacli_001: TIntegerField
      FieldName = 'cli_001'
    end
    object qrVendasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrVendausu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrVendadat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrVendadata_fechamento: TDateTimeField
      FieldName = 'data_fechamento'
    end
    object qrVendavalor_consumacao: TFloatField
      FieldName = 'valor_consumacao'
      Required = True
    end
    object qrVendavalor_entrada: TFloatField
      FieldName = 'valor_entrada'
      Required = True
    end
    object qrVendavalor_limite: TFloatField
      FieldName = 'valor_limite'
      Required = True
    end
    object qrVendaid_periodo: TIntegerField
      FieldName = 'id_periodo'
    end
    object qrVendaid_perfil_consumo: TIntegerField
      FieldName = 'id_perfil_consumo'
    end
    object qrVendanome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      ReadOnly = True
      Required = True
      Size = 90
    end
    object qrVendacpf: TWideStringField
      FieldName = 'cpf'
      ReadOnly = True
    end
    object qrVendarg: TWideStringField
      FieldName = 'rg'
      ReadOnly = True
    end
    object qrVendasexo: TWideStringField
      FieldName = 'sexo'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qrVendatelefone1: TWideStringField
      FieldName = 'telefone1'
      ReadOnly = True
    end
    object qrVendadata_nascimento: TDateField
      FieldName = 'data_nascimento'
      ReadOnly = True
    end
    object qrVendacomanda: TIntegerField
      FieldName = 'comanda'
    end
    object qrVendaid_operador: TIntegerField
      FieldName = 'id_operador'
    end
    object qrVendanome_operador: TWideStringField
      FieldName = 'nome_operador'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrVendadata_abertura: TDateTimeField
      FieldName = 'data_abertura'
    end
    object qrVendadesc_situacao: TWideStringField
      FieldName = 'desc_situacao'
      ReadOnly = True
      Size = 50
    end
  end
  object dsVenda: TDataSource
    AutoEdit = False
    DataSet = qrVenda
    Left = 784
    Top = 296
  end
  object qrPerfilConsumo: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      
        'cast(concat(id_perfil_consumo,'#39' - '#39', descricao) as varchar(50)) ' +
        'as cod_descricao,'
      'id_perfil_consumo, '
      'descricao, '
      'valor_consumacao, '
      'valor_entrada, '
      'valor_limite, '
      'id_situacao, '
      'observacao, '
      'id_empresa '
      'from perfil_consumo'
      'where id_situacao = 4 and id_empresa=:id_empresa '
      'order by id_perfil_consumo')
    Active = True
    Left = 640
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrPerfilConsumoid_perfil_consumo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_perfil_consumo'
    end
    object qrPerfilConsumodescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrPerfilConsumovalor_consumacao: TFloatField
      FieldName = 'valor_consumacao'
      Required = True
      currency = True
    end
    object qrPerfilConsumovalor_entrada: TFloatField
      FieldName = 'valor_entrada'
      Required = True
      currency = True
    end
    object qrPerfilConsumovalor_limite: TFloatField
      FieldName = 'valor_limite'
      Required = True
      currency = True
    end
    object qrPerfilConsumoid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrPerfilConsumoobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object qrPerfilConsumoid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrPerfilConsumocod_descricao: TWideStringField
      FieldName = 'cod_descricao'
      ReadOnly = True
      Size = 50
    end
  end
  object dsPerfilConsumo: TDataSource
    AutoEdit = False
    DataSet = qrPerfilConsumo
    Left = 560
    Top = 306
  end
end
