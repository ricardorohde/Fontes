inherited frmVendaSelecaoTamanho: TfrmVendaSelecaoTamanho
  Caption = 'Sele'#231#227'o de Tamanho'
  ClientHeight = 251
  ClientWidth = 458
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 464
  ExplicitHeight = 280
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 458
    Height = 202
    ExplicitWidth = 458
    ExplicitHeight = 202
    FullHeight = 200
    object cxgrTamnhoMaterial: TcxGrid
      Left = 12
      Top = 45
      Width = 432
      Height = 153
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
        DataController.DataSource = dsTamanhoMaterial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1tamanho: TcxGridDBColumn
          DataBinding.FieldName = 'tamanho'
          Visible = False
        end
        object cxGridDBTableView1desc_tamanho: TcxGridDBColumn
          DataBinding.FieldName = 'desc_tamanho'
          Width = 333
        end
        object cxGridDBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Width = 151
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object pnTopo: TPanel
      Left = 0
      Top = 0
      Width = 458
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Color = 5263440
      ParentBackground = False
      TabOrder = 1
      object DBText1: TDBText
        Left = 16
        Top = 7
        Width = 156
        Height = 23
        AutoSize = True
        DataField = 'desc'
        DataSource = dsTamanhoMaterial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 202
    Width = 458
    ExplicitTop = 202
    ExplicitWidth = 458
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 339
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
      Left = 220
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
  object qrTamanhoMaterial: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select  mat_003 as desc, tamanho_padrao='#39'P'#39' as padrao, '#39'P'#39' as ta' +
        'manho, dt.tamanho_p as desc_tamanho, m.valor_tam_p as valor'
      'from materiais m '
      'join desc_tamanho_material dt on dt.id_empresa = m.emp_001'
      'where m.mat_001=:id_material and m.emp_001=:id_empresa'
      'union all'
      
        'select  mat_003 as desc, tamanho_padrao='#39'M'#39' as padrao, '#39'M'#39' as ta' +
        'manho, dt.tamanho_m, m.valor_tam_m'
      'from materiais m '
      'join desc_tamanho_material dt on dt.id_empresa = m.emp_001'
      'where m.mat_001=:id_material and m.emp_001=:id_empresa'
      'union all'
      
        'select  mat_003 as desc, tamanho_padrao='#39'G'#39' as padrao, '#39'G'#39' as ta' +
        'manho, dt.tamanho_g, m.valor_tam_g'
      'from materiais m '
      'join desc_tamanho_material dt on dt.id_empresa = m.emp_001'
      'where m.mat_001=:id_material and m.emp_001=:id_empresa'
      'union all'
      
        'select  mat_003 as desc, tamanho_padrao='#39'GG'#39' as padrao, '#39'GG'#39' as ' +
        'tamanho, dt.tamanho_gg, m.valor_tam_gg'
      'from materiais m '
      'join desc_tamanho_material dt on dt.id_empresa = m.emp_001'
      'where m.mat_001=:id_material and m.emp_001=:id_empresa'
      'union all'
      
        'select  mat_003 as desc, tamanho_padrao='#39'E'#39' as padrao, '#39'E'#39' as ta' +
        'manho, dt.tamanho_extra, m.valor_tam_extra'
      'from materiais m '
      'join desc_tamanho_material dt on dt.id_empresa = m.emp_001'
      'where m.mat_001=:id_material and m.emp_001=:id_empresa')
    Active = True
    Left = 40
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_material'
        Value = 2
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrTamanhoMaterialtamanho: TWideMemoField
      FieldName = 'tamanho'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrTamanhoMaterialdesc_tamanho: TWideStringField
      DisplayLabel = 'Tamanho'
      FieldName = 'desc_tamanho'
      ReadOnly = True
      Size = 100
    end
    object qrTamanhoMaterialvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      ReadOnly = True
      currency = True
    end
    object qrTamanhoMaterialdesc: TWideStringField
      FieldName = 'desc'
      ReadOnly = True
      Size = 50
    end
    object qrTamanhoMaterialpadrao: TBooleanField
      FieldName = 'padrao'
      ReadOnly = True
    end
  end
  object dsTamanhoMaterial: TDataSource
    AutoEdit = False
    DataSet = qrTamanhoMaterial
    Left = 144
    Top = 192
  end
end
