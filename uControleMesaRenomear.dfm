object frmControleMesaRenomear: TfrmControleMesaRenomear
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Controle de mesa - Renomear'
  ClientHeight = 191
  ClientWidth = 394
  Color = clBtnFace
  Constraints.MinHeight = 220
  Constraints.MinWidth = 400
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
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 142
    Width = 394
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 275
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
      Left = 156
      Top = 3
      Width = 116
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 142
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.4.1.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 10
      Top = 10
      Width = 373
      Height = 124
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 0
      object DBText3: TDBText
        Left = 297
        Top = 37
        Width = 60
        Height = 19
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'valor_venda'
        DataSource = dsVendaMesa
      end
      object Label4: TLabel
        Left = 12
        Top = 14
        Width = 42
        Height = 19
        Caption = 'Mesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 314
        Top = 14
        Width = 43
        Height = 19
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 142
        Top = 37
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'desc_status'
        DataSource = dsVendaMesa
      end
      object Label6: TLabel
        Left = 142
        Top = 14
        Width = 52
        Height = 19
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 12
        Top = 37
        Width = 65
        Height = 17
        DataField = 'nro_mesa'
        DataSource = dsVendaMesa
      end
      object edNomeMesa: TEdit
        Left = 12
        Top = 76
        Width = 345
        Height = 25
        TabOrder = 0
      end
    end
  end
  object qrVendaMesa: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'm.mes_003 as nro_mesa, '
      'v.ven_001 as id_venda, '
      'coalesce(v.ven_009,0) as valor_venda, '
      'cast(fn_situacoes(v.sit_001) as varchar(100)) as desc_status,'
      'v.ven_027 as obs_mesa'
      'from  venda v'
      
        'join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_02' +
        '5)'
      'where v.ven_001=:id_venda and v.emp_001=:id_empresa')
    Left = 114
    Top = 26
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_venda'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrVendaMesanro_mesa: TIntegerField
      FieldName = 'nro_mesa'
      ReadOnly = True
      Required = True
    end
    object qrVendaMesaid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrVendaMesavalor_venda: TFloatField
      FieldName = 'valor_venda'
      ReadOnly = True
      currency = True
    end
    object qrVendaMesadesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrVendaMesaobs_mesa: TWideStringField
      FieldName = 'obs_mesa'
      Size = 200
    end
  end
  object dsVendaMesa: TDataSource
    AutoEdit = False
    DataSet = qrVendaMesa
    Left = 272
    Top = 24
  end
end
