inherited frmVisualizarArq: TfrmVisualizarArq
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Visualizar Arquivo'
  ClientHeight = 605
  ClientWidth = 821
  ExplicitWidth = 827
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited CoolBar1: TCoolBar
    Width = 821
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 821
      end>
    inherited pnPadrao: TPanel
      Width = 821
      ExplicitWidth = 821
      inherited tBarPadrao: TToolBar
        Width = 821
        Images = frmMenu.cxImageList1
        ExplicitWidth = 821
        object btnFechar: TToolButton
          Left = 0
          Top = 0
          Hint = 'Fechar'
          ImageIndex = 18
          OnClick = btnFecharClick
        end
      end
    end
  end
  object cxImage1: TcxImage [1]
    Left = 0
    Top = 38
    Align = alClient
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.ReadOnly = True
    TabOrder = 1
    Height = 567
    Width = 821
  end
  inherited ActionList1: TActionList
    Left = 40
    Top = 64
  end
  inherited cxLookAndFeelController1: TcxLookAndFeelController
    Top = 64
  end
end
