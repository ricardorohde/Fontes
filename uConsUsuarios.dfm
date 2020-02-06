object frmConsUsuarios: TfrmConsUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de usuarios'
  ClientHeight = 390
  ClientWidth = 731
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 341
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
      731
      341)
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 98
      Height = 16
      Caption = 'Termo de busca:'
    end
    object Label2: TLabel
      Left = 463
      Top = 8
      Width = 82
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Buscando por:'
      ExplicitLeft = 434
    end
    object edBusca: TEdit
      Left = 8
      Top = 27
      Width = 289
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object cbCampoFiltro: TComboBox
      Left = 463
      Top = 27
      Width = 139
      Height = 24
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 3
      TabStop = False
      Text = 'Nome'
      Items.Strings = (
        'Nome'
        'Login')
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 57
      Width = 716
      Height = 275
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 2
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
        object cxGrid1DBTableView1usu_001: TcxGridDBColumn
          DataBinding.FieldName = 'usu_001'
          Width = 83
        end
        object cxGrid1DBTableView1usu_002: TcxGridDBColumn
          DataBinding.FieldName = 'usu_002'
          Width = 216
        end
        object cxGrid1DBTableView1usu_003: TcxGridDBColumn
          DataBinding.FieldName = 'usu_003'
          Width = 149
        end
        object cxGrid1DBTableView1funcao_garcom: TcxGridDBColumn
          DataBinding.FieldName = 'funcao_garcom'
          Width = 61
        end
        object cxGrid1DBTableView1funcao_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'funcao_entregador'
          Width = 72
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Width = 133
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 605
      Top = 10
      Width = 119
      Height = 41
      Margins.Left = 0
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      ImageIndex = 6
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
    object chkTermoParcialBusca: TcxCheckBox
      Left = 301
      Top = 27
      TabStop = False
      Anchors = [akTop, akRight]
      Caption = 'Busca por termo parcial'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Transparent = True
    end
  end
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 341
    Width = 731
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 622
      Top = 3
      Width = 104
      Height = 41
      Margins.Right = 5
      Caption = 'Novo'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btNovoClick
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
      Left = 510
      Top = 3
      Width = 104
      Height = 41
      Hint = 'Abrir registro'
      Margins.Right = 5
      Caption = 'Abrir'
      ImageIndex = 25
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
  end
  object qrConsulta: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select usu_001, '
      'usu_002, '
      'usu_003,'
      
        'cast(case when b_funcao_garcom then '#39'SIM'#39' else '#39'N'#195'O'#39' end as varc' +
        'har(3)) as funcao_garcom,'
      
        'cast(case when b_funcao_entregador then '#39'SIM'#39' else '#39'N'#195'O'#39' end as ' +
        'varchar(3)) as funcao_entregador,'
      'cast(fn_situacoes(sit_001) as varchar(100)) as status '
      'from usuarios'
      'where true')
    ReadOnly = True
    AfterOpen = qrConsultaAfterOpen
    Left = 208
    Top = 192
    object qrConsultausu_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usu_001'
      Required = True
    end
    object qrConsultausu_002: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'usu_002'
      Required = True
      Size = 30
    end
    object qrConsultausu_003: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'usu_003'
      Required = True
      Size = 30
    end
    object qrConsultafuncao_garcom: TWideStringField
      DisplayLabel = 'Gar'#231'om'
      FieldName = 'funcao_garcom'
      ReadOnly = True
      Size = 3
    end
    object qrConsultafuncao_entregador: TWideStringField
      DisplayLabel = 'Entregador'
      FieldName = 'funcao_entregador'
      ReadOnly = True
      Size = 3
    end
    object qrConsultastatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      ReadOnly = True
      Size = 100
    end
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = qrConsulta
    Left = 288
    Top = 184
  end
end
