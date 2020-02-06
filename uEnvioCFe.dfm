object frmEnvioCFe: TfrmEnvioCFe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Utilit'#225'rio de envio de arquivos CFe'
  ClientHeight = 393
  ClientWidth = 517
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object pnPrincipal: TAdvPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 393
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.4.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    DesignSize = (
      517
      393)
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 103
      Height = 16
      Caption = 'M'#234's de refer'#234'ncia'
    end
    object Label2: TLabel
      Left = 8
      Top = 60
      Width = 475
      Height = 16
      Caption = 
        'Email do destinat'#225'rio (para m'#250'ltiplos destinat'#225'rios, separe cada' +
        ' email com v'#237'rgula)'
    end
    object Label3: TLabel
      Left = 8
      Top = 164
      Width = 123
      Height = 16
      Caption = 'Mensagem (opcional)'
    end
    object Label4: TLabel
      Left = 8
      Top = 112
      Width = 45
      Height = 16
      Caption = 'Assunto'
    end
    object Label5: TLabel
      Left = 255
      Top = 8
      Width = 58
      Height = 16
      Caption = 'Tipo fiscal'
    end
    object btCancelar: TAdvGlowButton
      Left = 271
      Top = 344
      Width = 116
      Height = 41
      Anchors = [akRight, akBottom]
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
    object btEnviar: TAdvGlowButton
      Left = 393
      Top = 344
      Width = 116
      Height = 41
      Anchors = [akRight, akBottom]
      Caption = 'Enviar'
      ImageIndex = 32
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btEnviarClick
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
    object cbAno: TComboBox
      Left = 159
      Top = 30
      Width = 90
      Height = 24
      Style = csDropDownList
      TabOrder = 2
      OnChange = cbMesChange
    end
    object cbMes: TComboBox
      Left = 8
      Top = 30
      Width = 145
      Height = 24
      Style = csDropDownList
      TabOrder = 3
      OnChange = cbMesChange
      Items.Strings = (
        '01 - Janeiro'
        '02 - Fevereiro'
        '03 - Mar'#231'o'
        '04 - Abril'
        '05 - Maio'
        '06 - Junho'
        '07 - Julho'
        '08 - Agosto'
        '09 - Setembro'
        '10 - Outubro'
        '11 - Novembro'
        '12 - Dezembro')
    end
    object edAssunto: TEdit
      Left = 8
      Top = 134
      Width = 501
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object edDestinatario: TEdit
      Left = 8
      Top = 82
      Width = 501
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
    end
    object meMensagem: TMemo
      Left = 8
      Top = 186
      Width = 501
      Height = 152
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 6
    end
    object cbTipoFiscal: TComboBox
      Left = 255
      Top = 30
      Width = 82
      Height = 24
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = 'SAT'
      OnChange = cbMesChange
      Items.Strings = (
        'SAT'
        'NFCE'
        'NFE'
        'MFE')
    end
  end
end
