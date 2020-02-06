inherited frmControleCNoturnaItensAcoes: TfrmControleCNoturnaItensAcoes
  Caption = 'frmControleCNoturnaItensAcoes'
  ClientHeight = 369
  ExplicitWidth = 661
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Height = 309
    ExplicitTop = -3
    ExplicitHeight = 382
    FullHeight = 200
    object pcPrincipal: TAdvPageControl
      Left = 0
      Top = 0
      Width = 655
      Height = 309
      ActivePage = pgJustificativaCancelamento
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Align = alClient
      DoubleBuffered = True
      TabBorderColor = 12691076
      TabSheetBorderColor = 12691076
      TabBackGroundColor = clBtnFace
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '2.0.0.6'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 0
      ExplicitTop = -3
      object pgObservacoes: TAdvTabSheet
        Caption = 'pgObservacoes'
        Color = 14997705
        ColorTo = 12691076
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitHeight = 351
      end
      object pgJustificativaCancelamento: TAdvTabSheet
        Caption = 'pgJustificativaCancelamento'
        Color = 14997705
        ColorTo = 12691076
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 5
        ExplicitTop = 25
        ExplicitHeight = 351
        DesignSize = (
          647
          278)
        object cxGrid1: TcxGrid
          Left = 0
          Top = 3
          Width = 644
          Height = 273
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.DataRowHeight = 40
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1descricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 309
    Height = 60
    ExplicitTop = 382
    ExplicitHeight = 60
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 520
      Top = 3
      Width = 132
      Height = 53
      Margins.Left = 0
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
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
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 385
      Top = 3
      Width = 132
      Height = 53
      Margins.Left = 0
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 4
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
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
    end
  end
  object qrJustificativa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select descricao '
      
        'from justificativa where id_situacao = 4 and id_empresa=:id_empr' +
        'esa'
      'order by descricao')
    Active = True
    Left = 340
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrJustificativadescricao: TWideStringField
      DisplayLabel = 'Selecione uma justificativa'
      FieldName = 'descricao'
      Required = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = qrJustificativa
    Left = 320
    Top = 224
  end
end
