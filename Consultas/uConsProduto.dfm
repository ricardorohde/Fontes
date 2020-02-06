object frmConsProduto: TfrmConsProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de produtos'
  ClientHeight = 446
  ClientWidth = 896
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
    Width = 896
    Height = 397
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
      896
      397)
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 98
      Height = 16
      Caption = 'Termo de busca:'
    end
    object Label2: TLabel
      Left = 628
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
      Width = 454
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object cbCampoFiltro: TComboBox
      Left = 628
      Top = 27
      Width = 139
      Height = 24
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 3
      TabStop = False
      Text = 'Descri'#231#227'o'
      Items.Strings = (
        'Descri'#231#227'o'
        'C'#243'digo'
        'Categoria')
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 57
      Width = 881
      Height = 337
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
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
        Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
        object cxGrid1DBTableView1mat_004: TcxGridDBColumn
          DataBinding.FieldName = 'mat_004'
          Width = 116
        end
        object cxGrid1DBTableView1mat_003: TcxGridDBColumn
          DataBinding.FieldName = 'mat_003'
          SortIndex = 0
          SortOrder = soAscending
          Width = 303
        end
        object cxGrid1DBTableView1categoria: TcxGridDBColumn
          DataBinding.FieldName = 'categoria'
          Width = 101
        end
        object cxGrid1DBTableView1unidade: TcxGridDBColumn
          DataBinding.FieldName = 'unidade'
          Width = 105
        end
        object cxGrid1DBTableView1quantidade: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'quantidade'
        end
        object cxGrid1DBTableView1mat_008: TcxGridDBColumn
          DataBinding.FieldName = 'mat_008'
          Width = 90
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Width = 123
        end
        object cxGrid1DBTableView1id_situacao: TcxGridDBColumn
          DataBinding.FieldName = 'id_situacao'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 770
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
      Left = 463
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
    Top = 397
    Width = 896
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 1
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 787
      Top = 3
      Width = 104
      Height = 41
      Margins.Right = 5
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Left = 677
      Top = 3
      Width = 104
      Height = 41
      Hint = 'Abrir registro'
      Caption = 'Abrir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 25
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
    object btDuplicar: TAdvGlowButton
      AlignWithMargins = True
      Left = 567
      Top = 3
      Width = 104
      Height = 41
      Caption = 'Duplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 17
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btDuplicarClick
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
    object btReajustarPreco: TAdvGlowButton
      AlignWithMargins = True
      Left = 400
      Top = 3
      Width = 161
      Height = 41
      Caption = 'Reajuste de Pre'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 52
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btReajustarPrecoClick
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
    object btEtiqueta: TAdvGlowButton
      AlignWithMargins = True
      Left = 290
      Top = 3
      Width = 104
      Height = 41
      Caption = 'Etiqueta'
      ImageIndex = 10
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btEtiquetaClick
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
      'select '
      'm.mat_001, m.emp_001, m.mat_004, m.mat_003, '
      ' c.cat_002 as categoria,'
      
        'cast(concat(u.uni_003, '#39' - '#39', u.uni_002) as varchar(100)) as uni' +
        'dade,'
      'm.mat_008,'
      'm.sit_001 as id_situacao,'
      'm.mat_008,sm.quantidade,'
      'cast(fn_situacoes(m.sit_001) as varchar(100)) as status'
      'from materiais m'
      
        'left join categoria c on c.cat_001=m.cat_001 and c.emp_001=m.emp' +
        '_001'
      
        'left join unidades u on u.uni_001=m.uni_001 and u.emp_001=m.emp_' +
        '001'
      'left join setor_estoque_material sm on sm.id_material=m.mat_001'
      'where m.emp_001 = :emp')
    ReadOnly = True
    AfterOpen = qrConsultaAfterOpen
    Left = 216
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end>
    object qrConsultamat_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mat_001'
      Required = True
    end
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultamat_004: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mat_004'
      Size = 50
    end
    object qrConsultamat_003: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mat_003'
      Required = True
      Size = 50
    end
    object qrConsultacategoria: TWideStringField
      DisplayLabel = 'Categoria'
      FieldName = 'categoria'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrConsultaunidade: TWideStringField
      DisplayLabel = 'Un. Medida'
      FieldName = 'unidade'
      ReadOnly = True
      Size = 100
    end
    object qrConsultamat_008: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'mat_008'
      Required = True
      currency = True
    end
    object qrConsultastatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      ReadOnly = True
      Size = 100
    end
    object qrConsultaid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
    object qrConsultamat_008_1: TFloatField
      FieldName = 'mat_008_1'
      Required = True
    end
    object qrConsultaquantidade: TFloatField
      FieldName = 'quantidade'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = qrConsulta
    Left = 288
    Top = 184
  end
end
