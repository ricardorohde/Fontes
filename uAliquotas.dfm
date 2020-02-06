inherited frmAliquotas: TfrmAliquotas
  Caption = 'TABELA DE AL'#205'QUOTAS INTERESTADUAIS'
  ClientHeight = 638
  ClientWidth = 1360
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1366
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 1360
    Height = 589
    ExplicitWidth = 1360
    ExplicitHeight = 589
    FullHeight = 200
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 1360
      Height = 589
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      ExplicitHeight = 522
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsAliquotas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnAddValueItems = False
        Filtering.ColumnMRUItemsList = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = frmMenu.cxZebra1
        Styles.ContentOdd = frmMenu.cxZebra2
        object cxGrid1DBTableView1uf: TcxGridDBColumn
          Caption = 'ORIGEM'
          DataBinding.FieldName = 'uf'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 57
        end
        object cxGrid1DBTableView1c_ac: TcxGridDBColumn
          Caption = 'AC'
          DataBinding.FieldName = 'c_ac'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_al: TcxGridDBColumn
          Caption = 'AL'
          DataBinding.FieldName = 'c_al'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_am: TcxGridDBColumn
          Caption = 'AM'
          DataBinding.FieldName = 'c_am'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_ap: TcxGridDBColumn
          Caption = 'AP'
          DataBinding.FieldName = 'c_ap'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 47
        end
        object cxGrid1DBTableView1c_ba: TcxGridDBColumn
          Caption = 'BA'
          DataBinding.FieldName = 'c_ba'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 50
        end
        object cxGrid1DBTableView1c_ce: TcxGridDBColumn
          Caption = 'CE'
          DataBinding.FieldName = 'c_ce'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 47
        end
        object cxGrid1DBTableView1c_df: TcxGridDBColumn
          Caption = 'DF'
          DataBinding.FieldName = 'c_df'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_es: TcxGridDBColumn
          Caption = 'ES'
          DataBinding.FieldName = 'c_es'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_go: TcxGridDBColumn
          Caption = 'GO'
          DataBinding.FieldName = 'c_go'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_ma: TcxGridDBColumn
          Caption = 'MA'
          DataBinding.FieldName = 'c_ma'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_mt: TcxGridDBColumn
          Caption = 'MT'
          DataBinding.FieldName = 'c_mt'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_ms: TcxGridDBColumn
          Caption = 'MS'
          DataBinding.FieldName = 'c_ms'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_mg: TcxGridDBColumn
          Caption = 'MG'
          DataBinding.FieldName = 'c_mg'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 47
        end
        object cxGrid1DBTableView1c_pa: TcxGridDBColumn
          Caption = 'PA'
          DataBinding.FieldName = 'c_pa'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_pb: TcxGridDBColumn
          Caption = 'PB'
          DataBinding.FieldName = 'c_pb'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 47
        end
        object cxGrid1DBTableView1c_pr: TcxGridDBColumn
          Caption = 'PR'
          DataBinding.FieldName = 'c_pr'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_pe: TcxGridDBColumn
          Caption = 'PE'
          DataBinding.FieldName = 'c_pe'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_pi: TcxGridDBColumn
          Caption = 'PI'
          DataBinding.FieldName = 'c_pi'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_rn: TcxGridDBColumn
          Caption = 'RN'
          DataBinding.FieldName = 'c_rn'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_rs: TcxGridDBColumn
          Caption = 'RS'
          DataBinding.FieldName = 'c_rs'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_rj: TcxGridDBColumn
          Caption = 'RJ'
          DataBinding.FieldName = 'c_rj'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_ro: TcxGridDBColumn
          Caption = 'RO'
          DataBinding.FieldName = 'c_ro'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 47
        end
        object cxGrid1DBTableView1c_rr: TcxGridDBColumn
          Caption = 'RR'
          DataBinding.FieldName = 'c_rr'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 50
        end
        object cxGrid1DBTableView1c_sc: TcxGridDBColumn
          Caption = 'SC'
          DataBinding.FieldName = 'c_sc'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 47
        end
        object cxGrid1DBTableView1c_sp: TcxGridDBColumn
          Caption = 'SP'
          DataBinding.FieldName = 'c_sp'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
        object cxGrid1DBTableView1c_se: TcxGridDBColumn
          Caption = 'SE'
          DataBinding.FieldName = 'c_se'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 49
        end
        object cxGrid1DBTableView1c_to: TcxGridDBColumn
          Caption = 'TO'
          DataBinding.FieldName = 'c_to'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.FilteringWithFindPanel = False
          Options.FilteringAddValueItems = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Styles.Header = cxStyle1
          Width = 48
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 589
    Width = 1360
    ExplicitTop = 522
    ExplicitWidth = 1360
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 1253
      Top = 3
      Width = 104
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
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 1146
      Top = 3
      Width = 104
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
      TabOrder = 1
      OnClick = btSalvarClick
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
    SQLInsert.Strings = (
      ' ')
    SQLDelete.Strings = (
      ' ')
    SQLUpdate.Strings = (
      ' ')
    SQLLock.Strings = (
      ' ')
    SQLRefresh.Strings = (
      ' ')
    SQLRecCount.Strings = (
      ' ')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'SELECT * FROM ALIQUOTAS ORDER BY ID')
    FetchRows = 50
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    SpecificOptions.Strings = (
      'PostgreSQL.FetchAll=False')
    Left = 376
    Top = 104
    object qrConsultaid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
      Required = True
    end
    object qrConsultauf: TWideStringField
      Alignment = taCenter
      FieldName = 'uf'
      ReadOnly = True
      Size = 2
    end
    object qrConsultac_ac: TFloatField
      Alignment = taCenter
      FieldName = 'c_ac'
    end
    object qrConsultac_al: TFloatField
      Alignment = taCenter
      FieldName = 'c_al'
    end
    object qrConsultac_am: TFloatField
      Alignment = taCenter
      FieldName = 'c_am'
    end
    object qrConsultac_ap: TFloatField
      Alignment = taCenter
      FieldName = 'c_ap'
    end
    object qrConsultac_ba: TFloatField
      Alignment = taCenter
      FieldName = 'c_ba'
    end
    object qrConsultac_ce: TFloatField
      Alignment = taCenter
      FieldName = 'c_ce'
    end
    object qrConsultac_df: TFloatField
      Alignment = taCenter
      FieldName = 'c_df'
    end
    object qrConsultac_es: TFloatField
      Alignment = taCenter
      FieldName = 'c_es'
    end
    object qrConsultac_go: TFloatField
      Alignment = taCenter
      FieldName = 'c_go'
    end
    object qrConsultac_ma: TFloatField
      Alignment = taCenter
      FieldName = 'c_ma'
    end
    object qrConsultac_mt: TFloatField
      Alignment = taCenter
      FieldName = 'c_mt'
    end
    object qrConsultac_ms: TFloatField
      Alignment = taCenter
      FieldName = 'c_ms'
    end
    object qrConsultac_mg: TFloatField
      Alignment = taCenter
      FieldName = 'c_mg'
    end
    object qrConsultac_pa: TFloatField
      Alignment = taCenter
      FieldName = 'c_pa'
    end
    object qrConsultac_pb: TFloatField
      Alignment = taCenter
      FieldName = 'c_pb'
    end
    object qrConsultac_pr: TFloatField
      Alignment = taCenter
      FieldName = 'c_pr'
    end
    object qrConsultac_pe: TFloatField
      Alignment = taCenter
      FieldName = 'c_pe'
    end
    object qrConsultac_pi: TFloatField
      Alignment = taCenter
      FieldName = 'c_pi'
    end
    object qrConsultac_rn: TFloatField
      Alignment = taCenter
      FieldName = 'c_rn'
    end
    object qrConsultac_rs: TFloatField
      Alignment = taCenter
      FieldName = 'c_rs'
    end
    object qrConsultac_rj: TFloatField
      Alignment = taCenter
      FieldName = 'c_rj'
    end
    object qrConsultac_ro: TFloatField
      Alignment = taCenter
      FieldName = 'c_ro'
    end
    object qrConsultac_rr: TFloatField
      Alignment = taCenter
      FieldName = 'c_rr'
    end
    object qrConsultac_sc: TFloatField
      Alignment = taCenter
      FieldName = 'c_sc'
    end
    object qrConsultac_sp: TFloatField
      Alignment = taCenter
      FieldName = 'c_sp'
    end
    object qrConsultac_se: TFloatField
      Alignment = taCenter
      FieldName = 'c_se'
    end
    object qrConsultac_to: TFloatField
      Alignment = taCenter
      FieldName = 'c_to'
    end
  end
  object dsAliquotas: TDataSource
    DataSet = cdsAliquotas
    Left = 440
    Top = 160
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
  end
  object cdsAliquotas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id'
    Params = <>
    Left = 376
    Top = 160
    object cdsAliquotasid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
      Required = True
    end
    object cdsAliquotasuf: TWideStringField
      Alignment = taCenter
      FieldName = 'uf'
      Size = 2
    end
    object cdsAliquotasc_ac: TFloatField
      Alignment = taCenter
      FieldName = 'c_ac'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_al: TFloatField
      Alignment = taCenter
      FieldName = 'c_al'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_am: TFloatField
      Alignment = taCenter
      FieldName = 'c_am'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_ap: TFloatField
      Alignment = taCenter
      FieldName = 'c_ap'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_ba: TFloatField
      Alignment = taCenter
      FieldName = 'c_ba'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_ce: TFloatField
      Alignment = taCenter
      FieldName = 'c_ce'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_df: TFloatField
      Alignment = taCenter
      FieldName = 'c_df'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_es: TFloatField
      Alignment = taCenter
      FieldName = 'c_es'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_go: TFloatField
      Alignment = taCenter
      FieldName = 'c_go'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_ma: TFloatField
      Alignment = taCenter
      FieldName = 'c_ma'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_mt: TFloatField
      Alignment = taCenter
      FieldName = 'c_mt'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_ms: TFloatField
      Alignment = taCenter
      FieldName = 'c_ms'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_mg: TFloatField
      Alignment = taCenter
      FieldName = 'c_mg'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_pa: TFloatField
      Alignment = taCenter
      FieldName = 'c_pa'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_pb: TFloatField
      Alignment = taCenter
      FieldName = 'c_pb'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_pr: TFloatField
      Alignment = taCenter
      FieldName = 'c_pr'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_pe: TFloatField
      Alignment = taCenter
      FieldName = 'c_pe'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_pi: TFloatField
      Alignment = taCenter
      FieldName = 'c_pi'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_rn: TFloatField
      Alignment = taCenter
      FieldName = 'c_rn'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_rs: TFloatField
      Alignment = taCenter
      FieldName = 'c_rs'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_rj: TFloatField
      Alignment = taCenter
      FieldName = 'c_rj'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_ro: TFloatField
      Alignment = taCenter
      FieldName = 'c_ro'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_rr: TFloatField
      Alignment = taCenter
      FieldName = 'c_rr'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_sc: TFloatField
      Alignment = taCenter
      FieldName = 'c_sc'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_sp: TFloatField
      Alignment = taCenter
      FieldName = 'c_sp'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_se: TFloatField
      Alignment = taCenter
      FieldName = 'c_se'
      OnChange = cdsAliquotasc_acChange
    end
    object cdsAliquotasc_to: TFloatField
      Alignment = taCenter
      FieldName = 'c_to'
      OnChange = cdsAliquotasc_acChange
    end
  end
  object qraux1: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'UPDATE aliquotas'
      'SET'
      
        '  c_ac = :c_ac, c_al = :c_al, c_am = :c_am, c_ap = :c_ap, c_ba =' +
        ' :c_ba, c_ce = :c_ce, c_df = :c_df, c_es = :c_es, c_go = :c_go, ' +
        'c_ma = :c_ma, c_mt = :c_mt, c_ms = :c_ms, c_mg = :c_mg, c_pa = :' +
        'c_pa, c_pb = :c_pb, c_pr = :c_pr, c_pe = :c_pe, c_pi = :c_pi, c_' +
        'rn = :c_rn, c_rs = :c_rs, c_rj = :c_rj, c_ro = :c_ro, c_rr = :c_' +
        'rr, c_sc = :c_sc, c_sp = :c_sp, c_se = :c_se, c_to = :c_to'
      'WHERE'
      '  id = :id')
    Left = 552
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'c_ac'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_al'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_am'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_ap'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_ba'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_ce'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_df'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_es'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_go'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_ma'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_mt'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_ms'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_mg'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_pa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_pb'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_pr'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_pe'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_pi'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_rn'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_rs'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_rj'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_ro'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_rr'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_sc'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_sp'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_se'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'c_to'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
end
