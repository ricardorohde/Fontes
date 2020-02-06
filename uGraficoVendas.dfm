inherited frmGraficoVendas: TfrmGraficoVendas
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Gr'#225'ficos'
  ClientHeight = 561
  ClientWidth = 984
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitTop = -45
  ExplicitWidth = 1000
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 984
    Height = 512
    ExplicitWidth = 984
    ExplicitHeight = 512
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 9
      Top = 0
      Width = 264
      Height = 115
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
      object lblInicio: TLabel
        Left = 12
        Top = 60
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
      object lblFim: TLabel
        Left = 140
        Top = 60
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
        Top = 79
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
        Left = 140
        Top = 79
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
        Left = 12
        Top = 27
        Width = 238
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = cbRelatorioChange
        Items.Strings = (
          'Produtos mais vendidos'
          'Produtos menos vendidos'
          'Clientes mais frequentes'
          'Lucro de produtos vendidos'
          'Taxas e servi'#231'os'
          'Financeiro Acumulado')
      end
    end
    object grFiltrar: TAdvGroupBox
      Left = 9
      Top = 118
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
        Top = 2
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
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Transparent = True
        Height = 84
        Width = 251
      end
    end
    object grAnalisar: TAdvGroupBox
      Left = 9
      Top = 211
      Width = 264
      Height = 90
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Analisar por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 16
        Top = 57
        Width = 132
        Height = 16
        Caption = 'N'#250'mero de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rgFiltroTipo: TcxRadioGroup
        Left = 3
        Top = 3
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Quantidade'
          end
          item
            Caption = 'Valor'
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
        Height = 46
        Width = 251
      end
      object edNroRec: TEdit
        Left = 154
        Top = 55
        Width = 55
        Height = 22
        TabOrder = 1
        Text = '20'
      end
      object UpDown1: TUpDown
        Left = 209
        Top = 55
        Width = 16
        Height = 22
        Associate = edNroRec
        Min = 1
        Position = 20
        TabOrder = 2
      end
    end
    object grGrafico: TAdvGroupBox
      Left = 279
      Top = 8
      Width = 701
      Height = 498
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 12691076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Label7: TLabel
        Left = 128
        Top = 120
        Width = 147
        Height = 16
        Align = alCustom
        Alignment = taCenter
        Caption = '<Sem dados para exibir>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBChart1: TDBChart
        Left = 2
        Top = 3
        Width = 697
        Height = 493
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        LeftAxis.AxisValuesFormat = 'R$#,##0.###'
        Legend.CheckBoxes = True
        Legend.CurrentPage = False
        Legend.LegendStyle = lsValues
        Legend.TextStyle = ltsRightValue
        Legend.Visible = False
        Pages.ScaleLastPage = False
        RightAxis.AxisValuesFormat = 'R$#,##0.###'
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.KeepAspectRatio = True
        Align = alClient
        BevelOuter = bvNone
        Color = 12691076
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TPieSeries
          Marks.Emboss.Color = 8618883
          Marks.Shadow.Color = 8882055
          Marks.Shadow.Visible = False
          Marks.Style = smsValue
          Marks.Arrow.Color = clBlack
          Marks.AutoPosition = False
          Marks.Callout.Arrow.Color = clBlack
          Marks.Clip = True
          Marks.Symbol.Visible = True
          DataSource = qrItensVenda
          ValueFormat = 'R$#.###.00'
          XLabelsSource = 'descricao'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = 'qtdevenda'
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          Shadow.Visible = False
          Gradient.Direction = gdTopBottom
          Gradient.EndColor = 6144242
          OtherSlice.Legend.Visible = False
        end
      end
      object DBChart2: TDBChart
        Left = 2
        Top = 3
        Width = 697
        Height = 493
        Title.Text.Strings = (
          'TDBChart')
        Title.Visible = False
        LeftAxis.AxisValuesFormat = 'R$#,##0.###'
        Legend.CheckBoxes = True
        Legend.CurrentPage = False
        Legend.LegendStyle = lsValues
        Legend.TextStyle = ltsRightValue
        Legend.Visible = False
        Pages.ScaleLastPage = False
        RightAxis.AxisValuesFormat = 'R$#,##0.###'
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.KeepAspectRatio = True
        Align = alClient
        BevelOuter = bvNone
        Color = 12691076
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object PieSeries1: TPieSeries
          Marks.Emboss.Color = 8618883
          Marks.Shadow.Color = 8882055
          Marks.Shadow.Visible = False
          Marks.Style = smsValue
          Marks.Arrow.Color = clBlack
          Marks.AutoPosition = False
          Marks.Callout.Arrow.Color = clBlack
          Marks.Clip = True
          Marks.Symbol.Visible = True
          DataSource = qrLista
          ValueFormat = 'R$#.###.00'
          XLabelsSource = 'emissao'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = 'saldo_acumulado'
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          Shadow.Visible = False
          Gradient.Direction = gdTopBottom
          Gradient.EndColor = 6144242
          OtherSlice.Legend.Visible = False
        end
      end
    end
    object grOpcoes: TAdvGroupBox
      Left = 9
      Top = 303
      Width = 264
      Height = 90
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Op'#231#245'es de gr'#225'fico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object rgFiltroGraficoTipoValor: TcxRadioGroup
        Left = 3
        Top = 33
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Porcentagem'
          end
          item
            Caption = 'Valor'
          end>
        ItemIndex = 1
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
        TabOrder = 1
        Transparent = True
        Height = 46
        Width = 251
      end
      object ckMostraLegenda: TcxCheckBox
        Left = 9
        Top = 23
        Caption = 'Mostrar legenda'
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
      end
    end
    object grPeriodo: TAdvGroupBox
      Left = 9
      Top = 398
      Width = 264
      Height = 108
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label4: TLabel
        Left = 8
        Top = 20
        Width = 60
        Height = 16
        Caption = 'M'#234's Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 62
        Width = 59
        Height = 16
        Caption = 'Ano Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 135
        Top = 20
        Width = 54
        Height = 16
        Caption = 'M'#234's Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 135
        Top = 62
        Width = 53
        Height = 16
        Caption = 'Ano Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbMesInicial: TComboBox
        Left = 8
        Top = 36
        Width = 120
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'cbMesInicial'
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object cbAnoInicial: TComboBox
        Left = 8
        Top = 78
        Width = 120
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'ComboBox1'
        Items.Strings = (
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030'
          '2031'
          '2032'
          '2033'
          '2034'
          '2035'
          '2036'
          '2037'
          '2038'
          '2039'
          '2040'
          '2041'
          '2042'
          '2043'
          '2044'
          '2045'
          '2046'
          '2047'
          '2048'
          '2049'
          '2050')
      end
      object cbMesFinal: TComboBox
        Left = 135
        Top = 36
        Width = 120
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'cbMesInicial'
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object cbAnoFinal: TComboBox
        Left = 135
        Top = 78
        Width = 120
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'ComboBox1'
        Items.Strings = (
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030'
          '2031'
          '2032'
          '2033'
          '2034'
          '2035'
          '2036'
          '2037'
          '2038'
          '2039'
          '2040'
          '2041'
          '2042'
          '2043'
          '2044'
          '2045'
          '2046'
          '2047'
          '2048'
          '2049'
          '2050')
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 512
    Width = 984
    ExplicitTop = 512
    ExplicitWidth = 984
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 881
      Top = 3
      Width = 100
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
    object btAbrirRegistro: TAdvGlowButton
      AlignWithMargins = True
      Left = 776
      Top = 3
      Width = 100
      Height = 41
      Hint = 'Abrir registro'
      Margins.Right = 5
      Caption = 'Abrir'
      ImageIndex = 28
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btAbrirRegistroClick
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
      Left = 666
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
      TabOrder = 2
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
  end
  object qrItensVenda: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select mat.mat_004, '
      'cast(mat.mat_003 as varchar(20)) as descricao, '
      'sum(vi.ite_002 )  as QTDEVENDA, '
      'sum(vi.ite_005 )  as VLRVENDA'
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
      
        'where c.id_empresa=:EMP and v.ven_004>=:DTINI and v.ven_004<=:DT' +
        'FIM'
      'group by  mat.mat_004, mat.mat_003  '
      'order by 3 desc, mat.mat_004'
      'limit 20')
    Left = 326
    Top = 254
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMP'
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'DTINI'
        Value = 42614d
      end
      item
        DataType = ftDateTime
        Name = 'DTFIM'
        Value = 42643d
      end>
    object qrItensVendamat_004: TWideStringField
      FieldName = 'mat_004'
      ReadOnly = True
      Size = 50
    end
    object qrItensVendadescricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
    end
    object qrItensVendaqtdevenda: TFloatField
      FieldName = 'qtdevenda'
      ReadOnly = True
      currency = True
    end
  end
  object dsItensVenda: TDataSource
    AutoEdit = False
    DataSet = qrItensVenda
    Left = 400
    Top = 256
  end
  object qrLista: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select cast(concat(date_part('#39'month'#39', data_emissao), '#39'/'#39', date_p' +
        'art('#39'year'#39', data_emissao)) as varchar(7)) as emissao, sum(receit' +
        'a-despesa) as saldo_acumulado from ('
      
        'select enc_002::date + 0 as data_emissao, sum(enc_003)as receita' +
        ', 0.00 as despesa '
      'from encerravenda '
      
        'where sit_001 = 1 and  emp_001 = :emp and enc_002::date + 0 betw' +
        'een :inicial and :final group by data_emissao'
      'union'
      
        'select data:: date + 0 as data_emissao, sum(valor)as receita, 0.' +
        '00 as despesa '
      'from creceber '
      
        'where id_situacao = 7 and id_empresa = :emp and data::date + 0 b' +
        'etween :inicial and :final group by data_emissao'
      'union'
      
        'select data::date + 0 as data_emissao,0.00 as receita,sum(valor)' +
        ' as despesa '
      'from cpagar '
      
        'where id_situacao = 7 and id_empresa = :emp and data::date + 0 b' +
        'etween :inicial and :final group by data_emissao'
      ')as valor_total'
      'group by emissao')
    IndexFieldNames = 'emissao'
    Left = 320
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'inicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'final'
        Value = nil
      end>
    object qrListasaldo_acumulado: TFloatField
      FieldName = 'saldo_acumulado'
      currency = True
    end
    object qrListaemissao: TWideStringField
      FieldName = 'emissao'
      Size = 7
    end
  end
end
