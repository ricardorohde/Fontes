inherited frmVendaSelecaoPreco: TfrmVendaSelecaoPreco
  Caption = 'Sele'#231#227'o de pre'#231'o de venda'
  ClientHeight = 203
  ClientWidth = 458
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 464
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 458
    Height = 154
    ExplicitWidth = 458
    ExplicitHeight = 154
    FullHeight = 200
    object cxgrTamnhoMaterial: TcxGrid
      Left = 12
      Top = 45
      Width = 432
      Height = 105
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      ExplicitHeight = 75
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
          DataBinding.FieldName = 'descricao'
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
        Width = 81
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
    Top = 154
    Width = 458
    ExplicitTop = 156
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
  object qrTamanhoMaterial: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select  mat_003 as desc, cast('#39'A vista'#39' as varchar(100)) as desc' +
        'ricao, coalesce(mat_008, 0.00) as valor'
      'from materiais m '
      
        'where m.mat_001=:id_material and m.emp_001=:id_empresa and mat_0' +
        '08 > 0'
      'union all'
      
        'select  mat_003 as desc, cast('#39'A prazo'#39' as varchar(100)) as desc' +
        'ricao, coalesce(valor_tabela2, 0.00) as valor'
      'from materiais m '
      
        'where m.mat_001=:id_material and m.emp_001=:id_empresa and valor' +
        '_tabela2 > 0'
      'union all'
      
        'select  mat_003 as desc, cast('#39'Atacado'#39' as varchar(100)) as desc' +
        'ricao, coalesce(valor_atacado, 0.00) as valor'
      'from materiais m '
      
        'where m.mat_001=:id_material and m.emp_001=:id_empresa and valor' +
        '_atacado > 0')
    Left = 232
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_material'
        Value = 6
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrTamanhoMaterialdesc: TWideStringField
      FieldName = 'desc'
      ReadOnly = True
      Size = 50
    end
    object qrTamanhoMaterialdescricao: TWideStringField
      DisplayLabel = 'Op'#231#227'o'
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
    object qrTamanhoMaterialvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      ReadOnly = True
      currency = True
    end
  end
  object dsTamanhoMaterial: TDataSource
    AutoEdit = False
    DataSet = qrTamanhoMaterial
    Left = 328
    Top = 8
  end
end
