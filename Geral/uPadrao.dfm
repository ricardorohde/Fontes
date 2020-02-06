object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  Caption = 'Padrao'
  ClientHeight = 243
  ClientWidth = 527
  Color = 14997705
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 527
    Height = 38
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 522
      end>
    Images = frmMenu.ImgList24
    object pnPadrao: TPanel
      Left = 2
      Top = 0
      Width = 521
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object tBarPadrao: TToolBar
        Left = 0
        Top = 0
        Width = 521
        Height = 34
        Align = alClient
        ButtonHeight = 34
        ButtonWidth = 31
        Caption = 'tBarPadrao'
        GradientEndColor = 11319229
        GradientStartColor = clNavy
        Images = frmMenu.ImgList24
        List = True
        TabOrder = 0
      end
    end
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList24
    Left = 336
    Top = 88
    object DataSetFirst1: TDataSetFirst
      Category = 'Dados'
      Caption = 'DataSetFirst1'
      Enabled = False
      Hint = 'Primeiro|Move para o primeiro registro'
      ImageIndex = 3
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dados'
      Caption = 'DataSetPrior1'
      Enabled = False
      Hint = 'Anterior|Move para o registro anterior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dados'
      Caption = 'DataSetNext1'
      Enabled = False
      Hint = 'Pr'#243'ximo|Move para o pr'#243'ximo registro'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dados'
      Caption = 'DataSetLast1'
      Enabled = False
      Hint = #218'ltimo|Move para o pr'#243'ximo registro'
      ImageIndex = 4
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dados'
      Caption = 'DataSetInsert1'
      Enabled = False
      Hint = 'Incluir|Permite a inclus'#227'o de um novo registro'
      ImageIndex = 15
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dados'
      Caption = 'DataSetDelete1'
      Enabled = False
      Hint = 'Excluir|Permite a exclus'#227'o do registro atual'
      ImageIndex = 0
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dados'
      Caption = 'DataSetEdit1'
      Enabled = False
      Hint = 'Editar|Permite a altera'#231#227'o do registro atual'
      ImageIndex = 17
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dados'
      Caption = 'DataSetRefresh1'
      Enabled = False
      Hint = 
        'Atualizar|Atualiza o registro com os dados gravados no banco de ' +
        'dados'
      ImageIndex = 16
      ShortCut = 116
    end
    object act_confirmar: TAction
      Category = 'padrao'
      Hint = 'Confirmar'
      ImageIndex = 5
    end
    object act_cancelar: TAction
      Category = 'padrao'
      Caption = 'act_cancelar'
      Hint = 'Cancelar'
      ImageIndex = 6
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfStandard
    Left = 272
    Top = 8
  end
  object cdsCFG: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsCFGAfterPost
    Left = 372
    Top = 14
    object cdsCFGNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFGNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object cdsCFGTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 500
    end
    object cdsCFGLOGICO: TBooleanField
      FieldName = 'LOGICO'
    end
    object cdsCFGDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
end
