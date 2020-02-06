inherited frmPadraoDetalhe: TfrmPadraoDetalhe
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PadraoDetalhe'
  ClientHeight = 402
  ClientWidth = 687
  Position = poDesktopCenter
  ExplicitWidth = 693
  ExplicitHeight = 430
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 687
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 830
      end>
    ExplicitWidth = 687
    inherited pnPadrao: TPanel
      Width = 830
      ExplicitWidth = 830
      inherited tBarPadrao: TToolBar
        Width = 830
        ExplicitWidth = 830
        object btnConf: TToolButton
          Left = 0
          Top = 0
          Hint = 'Confirmar (Ctrl+S) |Confirma os dados digitados'
          Action = DataSetPost1
        end
        object btnCanc: TToolButton
          Left = 31
          Top = 0
          Hint = 'Cancelar (Ctrl+C) |Cancela as altera'#231#245'es digitadas'
          Action = DataSetCancel1
        end
        object btnSep1: TToolButton
          Left = 62
          Top = 0
          Width = 8
          ImageIndex = 7
          Style = tbsSeparator
          Visible = False
        end
        object btnIncluir: TToolButton
          Left = 70
          Top = 0
          Action = DataSetInsert1
          Visible = False
        end
        object btnEditar: TToolButton
          Left = 101
          Top = 0
          Action = DataSetEdit1
          Visible = False
        end
        object btnExcluir: TToolButton
          Left = 132
          Top = 0
          Action = DataSetDelete1
          Visible = False
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 296
    Top = 0
    object DataSetPost1: TDataSetPost [0]
      Category = 'Dados'
      Enabled = False
      Hint = 'Confirmar|Confirma os dados digitados'
      ImageIndex = 5
    end
    object DataSetCancel1: TDataSetCancel [1]
      Category = 'Dados'
      Enabled = False
      Hint = 'Cancelar|Cancela as altera'#231#245'es digitadas'
      ImageIndex = 6
    end
    inherited DataSetFirst1: TDataSetFirst
      Caption = ''
    end
    inherited DataSetPrior1: TDataSetPrior
      Caption = ''
    end
    inherited DataSetNext1: TDataSetNext
      Caption = ''
    end
    inherited DataSetLast1: TDataSetLast
      Caption = ''
    end
    inherited DataSetInsert1: TDataSetInsert
      Caption = ''
    end
    inherited DataSetDelete1: TDataSetDelete
      Caption = ''
    end
    inherited DataSetEdit1: TDataSetEdit
      Caption = ''
    end
    inherited DataSetRefresh1: TDataSetRefresh
      Caption = ''
    end
  end
  object qrDetalhe: TUniQuery [2]
    Connection = frmMenu.conexao
    BeforePost = qrDetalheBeforePost
    AfterPost = qrDetalheAfterPost
    OnNewRecord = qrDetalheNewRecord
    Left = 330
    Top = 2
  end
  object dsDetalhe: TDataSource [3]
    DataSet = qrDetalhe
    Left = 360
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Left = 392
    Top = 0
  end
end
