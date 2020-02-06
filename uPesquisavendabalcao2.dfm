inherited frmPesquisavendabalcao2: TfrmPesquisavendabalcao2
  Caption = 'Pesquisa Vendas'
  ClientHeight = 438
  ClientWidth = 675
  Position = poDesktopCenter
  OnShow = FormShow
  ExplicitTop = -5
  ExplicitWidth = 681
  ExplicitHeight = 467
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 675
    Height = 389
    ExplicitWidth = 901
    ExplicitHeight = 389
    FullHeight = 200
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 675
      Height = 389
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      ExplicitWidth = 179
      ExplicitHeight = 383
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsPesquisavendapdv
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ven_001: TcxGridDBColumn
          Caption = 'Venda'
          DataBinding.FieldName = 'ven_001'
          Width = 77
        end
        object cxGrid1DBTableView1nome_cliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'nome_cliente'
          Width = 453
        end
        object cxGrid1DBTableView1ven_009: TcxGridDBColumn
          Caption = 'Valor R$'
          DataBinding.FieldName = 'ven_009'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 143
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 389
    Width = 675
    ExplicitTop = 389
    ExplicitWidth = 901
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 556
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
      Left = 394
      Top = 3
      Width = 159
      Height = 41
      Margins.Left = 0
      Caption = 'Finalizar Venda'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
  object dsPesquisavendapdv: TDataSource
    AutoEdit = False
    DataSet = qrPesquisavendapdv
    Left = 352
    Top = 232
  end
  object qrPesquisavendapdv: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'SELECT * FROM VENDA WHERE SIT_001=21 and emp_001=:emp_001 and ve' +
        'n_024 = '#39'P'#39' order by ven_001')
    Left = 560
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_001'
        Value = nil
      end>
    object qrPesquisavendapdvven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrPesquisavendapdvven_009: TFloatField
      FieldName = 'ven_009'
    end
    object qrPesquisavendapdvnome_cliente: TWideStringField
      FieldName = 'nome_cliente'
      Size = 90
    end
    object qrPesquisavendapdvemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
  end
end
