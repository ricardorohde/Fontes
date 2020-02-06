inherited frmGraficosVendas: TfrmGraficosVendas
  Caption = 'frmGraficosVendas'
  ExplicitWidth = 661
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 0
      Width = 264
      Height = 129
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Gr'#225'fico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 63
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
        Left = 144
        Top = 63
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
        Left = 16
        Top = 85
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
        Left = 144
        Top = 85
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
      object cbRelatorio: TComboBox
        Left = 16
        Top = 33
        Width = 238
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Produtos mais vendidos'
        Items.Strings = (
          'Produtos mais vendidos'
          'Produtos menos vendidos'
          'Clientes mais frequentes')
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 9
      Top = 135
      Width = 264
      Height = 90
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Filtrar por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rgFiltro: TcxRadioGroup
        Left = 3
        Top = 15
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
        Height = 72
        Width = 251
      end
    end
  end
  object qrItensVenda: TUniQuery
    DataTypeMap = <>
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select mat.mat_004, '
      'mat.mat_003, '
      'sum(vi.ite_002 )  as QTDEVENDA, '
      'sum(vi.ite_005 )  as VLRVENDA, '
      'null as ven_004 , '
      '0.00 as totgeral, '
      '0.00 as taxa, '
      '0.00 as taxagarcon '
      'from (select id_caixa, id_venda, id_empresa from caixaitem '
      'group by  id_caixa, id_venda, id_empresa '
      'order by 1) civ '
      
        'join vendaitem vi on vi.ven_001=civ.id_venda and vi.emp_001=civ.' +
        'id_empresa and not vi.sit_001  in (0,1,2,3) '
      
        'join materiais mat on (mat.emp_001 = vi.emp_001) and (mat.mat_00' +
        '1 = vi.mat_001) '
      
        'join caixa c on c.id_caixa=civ.id_caixa and civ.id_empresa=c.id_' +
        'empresa '
      
        'join venda v on v.ven_001=civ.id_venda and v.emp_001=civ.id_empr' +
        'esa '
      
        'where c.id_empresa=:EMP and c.data_abertura>=:DTINI and c.data_a' +
        'bertura<=:DTFIM'
      'group by  mat.mat_004, mat.mat_003  order by 3 desc, mat.mat_004')
    Left = 262
    Top = 318
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
      end>
    object qrItensVendamat_003: TWideStringField
      FieldName = 'mat_003'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrItensVendamat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrItensVendaqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      ReadOnly = True
    end
    object qrItensVendavlrvenda: TFloatField
      FieldName = 'vlrvenda'
      ReadOnly = True
    end
    object qrItensVendaven_004: TWideMemoField
      FieldName = 'ven_004'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrItensVendatotgeral: TFloatField
      FieldName = 'totgeral'
      ReadOnly = True
    end
    object qrItensVendataxa: TFloatField
      FieldName = 'taxa'
      ReadOnly = True
    end
    object qrItensVendataxagarcon: TFloatField
      FieldName = 'taxagarcon'
      ReadOnly = True
    end
  end
end
