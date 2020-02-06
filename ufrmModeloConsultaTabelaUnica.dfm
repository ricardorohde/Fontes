inherited frmModeloConsultaTabelaUnica: TfrmModeloConsultaTabelaUnica
  Caption = 'frmModeloConsultaTabelaUnica'
  ClientHeight = 382
  ClientWidth = 684
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 690
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 684
    Height = 333
    ExplicitWidth = 684
    ExplicitHeight = 333
    DesignSize = (
      684
      333)
    FullHeight = 200
    inherited Label2: TLabel
      Left = 412
      ExplicitLeft = 412
    end
    inherited cxGrid1: TcxGrid
      Width = 670
      Height = 273
      ExplicitWidth = 670
      ExplicitHeight = 273
    end
    inherited edBusca: TEdit
      Width = 398
      ExplicitWidth = 398
    end
    inherited cbCampoFiltro: TComboBox
      Left = 412
      ExplicitLeft = 412
    end
    inherited btPesquisar: TAdvGlowButton
      Left = 559
      OnClick = btPesquisarClick
      ExplicitLeft = 559
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 333
    Width = 684
    ExplicitTop = 333
    ExplicitWidth = 684
    inherited btNovo: TAdvGlowButton
      Left = 575
      ExplicitLeft = 575
    end
    inherited btAbrirRegistro: TAdvGlowButton
      Left = 463
      ExplicitLeft = 463
    end
  end
  inherited qrConsulta: TUniQuery
    AfterOpen = qrConsultaAfterOpen
  end
end
