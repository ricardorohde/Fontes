object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'MANUTEN'#199#195'O DE CF-E SAT'
  ClientHeight = 612
  ClientWidth = 767
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 200
    Align = alTop
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.1.1.2'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    ColorTo = 12691076
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    ExplicitLeft = -1
    ExplicitTop = -2
    ExplicitWidth = 774
    FullHeight = 200
    object JvLabel2: TJvLabel
      Left = 4
      Top = 20
      Width = 81
      Height = 16
      Caption = 'DATA NOTA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel1: TJvLabel
      Left = 224
      Top = 20
      Width = 20
      Height = 17
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 4
      Top = 60
      Width = 69
      Height = 16
      Caption = 'N'#186'. CUPOM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Edit1: TEdit
      Left = 89
      Top = 19
      Width = 127
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 247
      Top = 18
      Width = 124
      Height = 21
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 88
      Top = 60
      Width = 128
      Height = 21
      TabOrder = 2
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 416
      Top = 0
      Caption = '             SITUA'#199#195'O'
      Properties.Items = <
        item
          Caption = 'TODAS'
        end
        item
          Caption = 'EMITIDAS'
        end
        item
          Caption = 'N'#195'O EMITIDAS'
        end
        item
          Caption = 'CANCELADAS'
        end>
      TabOrder = 3
      Height = 105
      Width = 185
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 656
      Top = 152
      Width = 100
      Height = 41
      Caption = 'LIMPAR'
      ImageIndex = 24
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 550
      Top = 152
      Width = 100
      Height = 41
      Caption = 'FILTRAR'
      ImageIndex = 64
      Images = frmMenu.ImgList24
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
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
    end
  end
  object cxGrid1: TcxGrid
    Left = 1
    Top = 196
    Width = 766
    Height = 200
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object AdvPageControl1: TAdvPageControl
    Left = 0
    Top = 395
    Width = 767
    Height = 162
    ActivePage = AdvTabSheet1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.3'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 2
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'AdvTabSheet1'
      Color = clWindow
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      ExplicitLeft = 12
      ExplicitTop = 64
      ExplicitHeight = 115
    end
  end
  object AdvGlowButton3: TAdvGlowButton
    Left = 102
    Top = 563
    Width = 100
    Height = 41
    Caption = 'INCLUIR'
    ImageIndex = 15
    Images = frmMenu.ImgList24
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 3
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
  end
  object AdvGlowButton4: TAdvGlowButton
    Left = 208
    Top = 563
    Width = 100
    Height = 41
    Caption = 'ALTERAR'
    ImageIndex = 17
    Images = frmMenu.ImgList24
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 4
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
  end
  object AdvGlowButton5: TAdvGlowButton
    Left = 314
    Top = 563
    Width = 100
    Height = 41
    Caption = 'EXCLUIR'
    ImageIndex = 0
    Images = frmMenu.ImgList24
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 5
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
  end
  object AdvGlowButton6: TAdvGlowButton
    Left = 420
    Top = 563
    Width = 100
    Height = 41
    Caption = 'CONSULTAR'
    ImageIndex = 65
    Images = frmMenu.ImgList24
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 6
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
  end
  object AdvGlowButton7: TAdvGlowButton
    Left = 526
    Top = 563
    Width = 100
    Height = 41
    Caption = 'MENU'
    ImageIndex = 65
    Images = frmMenu.ImgList24
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 7
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
    DropDownButton = True
    DropDownMenu = pmacoes
  end
  object pmacoes: TPopupMenu
    Left = 656
    Top = 544
    object RANSMITIRCUPOM1: TMenuItem
      Caption = 'TRANSMITIR CUPOM'
    end
    object CONSULTARPROTOCOLOCUPOM1: TMenuItem
      Caption = 'CONSULTAR PROTOCOLO CUPOM'
    end
    object CANCELARCUPOMLIMPARNUMERO1: TMenuItem
      Caption = 'CANCELAR CUPOM / LIMPAR NUMERO'
    end
    object IMPRIMIRCUPOM1: TMenuItem
      Caption = 'IMPRIMIR CUPOM'
    end
    object ENVIAREMAILDOCUPOM1: TMenuItem
      Caption = 'ENVIAR E-MAIL DO CUPOM'
    end
    object MANUTENOCUPOM1: TMenuItem
      Caption = 'MANUTEN'#199#195'O CUPOM'
    end
    object GERARNOBLOCODENOTA1: TMenuItem
      Caption = 'GERAR NO BLOCO DE NOTA'
    end
  end
end
