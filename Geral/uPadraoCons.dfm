inherited frmPadraoCons: TfrmPadraoCons
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Padrao Consulta'
  ClientHeight = 398
  ClientWidth = 852
  FormStyle = fsMDIChild
  Position = poDefaultPosOnly
  Visible = True
  ExplicitWidth = 868
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TcxGrid [0]
    Left = 0
    Top = 38
    Width = 852
    Height = 360
    Hint = 
      'Para visualizar um registro, clique duas vezes sobre ele ou aper' +
      'te enter.'
    Align = alClient
    TabOrder = 0
    object GradeConsulta: TcxGridDBTableView
      PopupMenu = PpMarca
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvAlways
      OnCellClick = GradeConsultaCellClick
      OnCellDblClick = GradeConsultaCellDblClick
      OnEditing = GradeConsultaEditing
      OnFocusedRecordChanged = GradeConsultaFocusedRecordChanged
      DataController.DataSource = dsConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnDataChanged = GradeConsultaDataControllerDataChanged
      OptionsBehavior.CellHints = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      Styles.ContentEven = frmMenu.cxZebra1
      Styles.ContentOdd = frmMenu.cxZebra2
      Styles.IncSearch = frmMenu.cxIncSearch
      object GradeConsultaMarcar: TcxGridDBColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Options.IncSearch = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        IsCaptionAssigned = True
      end
    end
    object GradeLevel1: TcxGridLevel
      GridView = GradeConsulta
    end
  end
  inherited CoolBar1: TCoolBar
    Width = 852
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 846
      end>
    ExplicitWidth = 852
    inherited pnPadrao: TPanel
      Width = 846
      ExplicitWidth = 846
      inherited tBarPadrao: TToolBar
        Width = 846
        ExplicitWidth = 846
        object btnSair: TToolButton
          Left = 0
          Top = 0
          Hint = 'Fechar Janela'
          ImageIndex = 18
          OnClick = btnSairClick
        end
        object btnSeparar1: TToolButton
          Left = 31
          Top = 0
          Width = 8
          ImageIndex = 8
          Style = tbsSeparator
        end
        object btnFirst: TToolButton
          Left = 39
          Top = 0
          Action = act_First
        end
        object btnPrior: TToolButton
          Left = 70
          Top = 0
          Action = act_Prior
        end
        object btnNext: TToolButton
          Left = 101
          Top = 0
          Action = act_Next
        end
        object btnLast: TToolButton
          Left = 132
          Top = 0
          Action = act_Last
        end
        object btnSeparar2: TToolButton
          Left = 163
          Top = 0
          Width = 8
          ImageIndex = 15
          Style = tbsSeparator
        end
        object btnInsert: TToolButton
          Left = 171
          Top = 0
          Action = act_Incluir
        end
        object btnEditar: TToolButton
          Left = 202
          Top = 0
          Action = act_Editar
        end
        object btnExcluir: TToolButton
          Left = 233
          Top = 0
          Action = act_Excluir
        end
        object btDescancela: TToolButton
          Left = 264
          Top = 0
          Hint = 'Desfazer cancelamento'
          Caption = 'btDescancela'
          ImageIndex = 68
          Visible = False
        end
        object btnSeparar4: TToolButton
          Left = 295
          Top = 0
          Width = 8
          ImageIndex = 8
          Style = tbsSeparator
        end
        object btnRefresh: TToolButton
          Left = 303
          Top = 0
          Action = DataSetRefresh1
        end
        object btnSeparar3: TToolButton
          Left = 334
          Top = 0
          Width = 8
          ImageIndex = 16
          Style = tbsSeparator
        end
        object btnVisualizacao: TToolButton
          Left = 342
          Top = 0
          Action = act_Visualizar
        end
        object btnImprimir: TToolButton
          Left = 373
          Top = 0
          Hint = 'Impress'#245'es e Exporta'#231#245'es'
          DropdownMenu = popImpressao
          ImageIndex = 10
        end
        object btnFiltro: TToolButton
          Left = 404
          Top = 0
          Action = act_Filtro
          ImageIndex = 64
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 468
    Top = 50
    object act_Visualizar: TAction [0]
      Hint = 'Visualizar'
      ImageIndex = 14
      ShortCut = 16470
      OnExecute = act_VisualizarExecute
    end
    object act_ImprGrade: TAction
      Category = 'Impirmir'
      Caption = 'Imprimir Grade'
      Hint = 'Imprimir Grade'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = act_ImprGradeExecute
    end
    object act_XLS: TAction
      Category = 'Impirmir'
      Caption = 'Exportar para o Excel'
      Hint = 'Exportar para o Excel'
      ImageIndex = 23
      OnExecute = act_XLSExecute
    end
    object act_Filtro: TAction
      Hint = 'Filtros para Pesquisa'
      ImageIndex = 7
      ShortCut = 115
      OnExecute = act_FiltroExecute
    end
    object act_Editar: TAction
      Category = 'padrao'
      Hint = 'Editar (Ctrl + E)'
      ImageIndex = 17
      OnExecute = act_EditarExecute
    end
    object act_Incluir: TAction
      Category = 'padrao'
      Hint = 'Incluir (Ctrl + I)'
      ImageIndex = 15
      OnExecute = act_IncluirExecute
    end
    object act_Excluir: TAction
      Category = 'padrao'
      Hint = 'Excluir (Del)'
      ImageIndex = 0
      OnExecute = act_ExcluirExecute
    end
    object act_First: TAction
      Category = 'padrao'
      Hint = 'Primeiro Registro'
      ImageIndex = 3
      OnExecute = act_FirstExecute
    end
    object act_Prior: TAction
      Category = 'padrao'
      Hint = 'Registro Anterior'
      ImageIndex = 1
      OnExecute = act_PriorExecute
    end
    object act_Next: TAction
      Category = 'padrao'
      Hint = 'Proximo Registro'
      ImageIndex = 2
      OnExecute = act_NextExecute
    end
    object act_Last: TAction
      Category = 'padrao'
      Hint = #218'ltimo Registro'
      ImageIndex = 4
      OnExecute = act_LastExecute
    end
  end
  object qrConsulta: TUniQuery [3]
    Connection = frmMenu.conexao
    BeforeOpen = qrConsultaBeforeOpen
    AfterOpen = qrConsultaAfterOpen
    BeforeInsert = qrConsultaBeforeInsert
    BeforeEdit = qrConsultaBeforeEdit
    BeforeDelete = qrConsultaBeforeDelete
    AfterDelete = qrConsultaAfterDelete
    AfterRefresh = qrConsultaAfterRefresh
    Left = 72
    Top = 40
  end
  object dsConsulta: TDataSource [4]
    DataSet = qrConsulta
    Left = 104
    Top = 40
  end
  object PpMarca: TPopupMenu [5]
    Left = 136
    Top = 40
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
    end
  end
  object cdsConf: TClientDataSet [6]
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 40
    object cdsConfNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsConfTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 30
    end
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 278
    Top = 38
  end
  object GradePrint: TdxComponentPrinter
    CurrentLink = GradePrintLink
    Version = 0
    Left = 168
    Top = 40
    object GradePrintLink: TdxGridReportLink
      Component = Grade
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 10000
      PrinterPage.Margins.Left = 10000
      PrinterPage.Margins.Right = 10000
      PrinterPage.Margins.Top = 10000
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object popImpressao: TPopupMenu
    Images = frmMenu.ImgList24
    Left = 200
    Top = 40
    object ImprimirGrade1: TMenuItem
      Action = act_ImprGrade
      ImageIndex = 32
    end
    object ExportarparaoExcel1: TMenuItem
      Action = act_XLS
    end
  end
end
