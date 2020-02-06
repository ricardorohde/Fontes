inherited frmVendaSelecaoVendedor: TfrmVendaSelecaoVendedor
  Caption = 'Sele'#231#227'o de Vendedor'
  ClientHeight = 333
  ClientWidth = 652
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 658
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 652
    Height = 284
    ExplicitWidth = 652
    ExplicitHeight = 284
    FullHeight = 200
    object cxgrVendedor: TcxGrid
      Left = 12
      Top = 16
      Width = 626
      Height = 264
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGridDBTableView1CellDblClick
        DataController.DataSource = dsVendedor
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1id_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'id_usuario'
          Width = 84
        end
        object cxGridDBTableView1nome: TcxGridDBColumn
          DataBinding.FieldName = 'nome'
          Width = 540
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 284
    Width = 652
    ExplicitTop = 284
    ExplicitWidth = 652
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 533
      Top = 3
      Width = 116
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
      OnClick = btCancelaClick
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
      Left = 414
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Confirmar'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btConfirmaClick
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
  object qrVendedor: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select usu_001 as id_usuario, usu_002 as nome from usuarios wher' +
        'e sit_001=4 and b_funcao_vendedor')
    Left = 48
    Top = 192
    object qrVendedorid_usuario: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_usuario'
      Required = True
    end
    object qrVendedornome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 30
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = qrVendedor
    Left = 144
    Top = 192
  end
end
