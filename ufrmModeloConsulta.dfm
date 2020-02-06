inherited frmModeloConsulta: TfrmModeloConsulta
  Caption = 'frmModeloConsulta'
  ClientHeight = 415
  ClientWidth = 667
  ExplicitWidth = 673
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 667
    Height = 366
    ExplicitWidth = 667
    ExplicitHeight = 366
    DesignSize = (
      667
      366)
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 98
      Height = 16
      Caption = 'Termo de busca:'
    end
    object Label2: TLabel
      Left = 395
      Top = 8
      Width = 82
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Buscando por:'
      ExplicitLeft = 383
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 57
      Width = 653
      Height = 299
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object edBusca: TEdit
      Left = 8
      Top = 27
      Width = 381
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object cbCampoFiltro: TComboBox
      Left = 395
      Top = 27
      Width = 139
      Height = 24
      Style = csDropDownList
      Anchors = [akTop, akRight]
      TabOrder = 2
      TabStop = False
      Items.Strings = (
        'Descri'#231#227'o')
    end
    object btPesquisar: TAdvGlowButton
      AlignWithMargins = True
      Left = 542
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
      TabOrder = 3
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
  end
  inherited pnBotoes: TFlowPanel
    Top = 366
    Width = 667
    ExplicitTop = 366
    ExplicitWidth = 667
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 558
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Left = 446
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
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = qrConsulta
    Left = 448
    Top = 104
  end
  object qrConsulta: TUniQuery
    Connection = frmMenu.conexao
    FetchRows = 50
    ReadOnly = True
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False')
    Left = 376
    Top = 104
  end
end
