object FImpressaoCupom: TFImpressaoCupom
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o TEF'
  ClientHeight = 371
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 361
    Height = 371
    Align = alClient
    Color = 13434623
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Zoom = 100
  end
  object Button2: TButton
    Left = 234
    Top = 367
    Width = 118
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 168
    Top = 232
  end
end
