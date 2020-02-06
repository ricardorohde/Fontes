inherited frmConsComposicao: TfrmConsComposicao
  Caption = 'Consulta Ingrediente/Item de Composi'#231#227'o'
  ClientHeight = 346
  ClientWidth = 687
  ExplicitWidth = 693
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 687
    Height = 297
    ExplicitWidth = 687
    ExplicitHeight = 297
    FullHeight = 200
    inherited Label2: TLabel
      Left = 415
      ExplicitLeft = 415
    end
    inherited cxGrid1: TcxGrid
      Width = 673
      Height = 230
      ExplicitWidth = 673
      ExplicitHeight = 230
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_composicao: TcxGridDBColumn
          DataBinding.FieldName = 'id_composicao'
          Width = 55
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 270
        end
        object cxGrid1DBTableView1valor_custo: TcxGridDBColumn
          DataBinding.FieldName = 'valor_custo'
          Width = 89
        end
        object cxGrid1DBTableView1estoque_minimo: TcxGridDBColumn
          DataBinding.FieldName = 'estoque_minimo'
          Width = 86
        end
        object cxGrid1DBTableView1staus_desc: TcxGridDBColumn
          DataBinding.FieldName = 'staus_desc'
          Width = 97
        end
      end
    end
    inherited edBusca: TEdit
      Width = 401
      ExplicitWidth = 401
    end
    inherited cbCampoFiltro: TComboBox
      Left = 415
      ExplicitLeft = 415
    end
    inherited btPesquisar: TAdvGlowButton
      Left = 562
      Appearance.BorderColor = clNavy
      ExplicitLeft = 562
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 297
    Width = 687
    ExplicitTop = 297
    ExplicitWidth = 687
    inherited btNovo: TAdvGlowButton
      Left = 578
      OnClick = btNovoClick
      Appearance.BorderColor = clNavy
      ExplicitLeft = 578
    end
    inherited btAbrirRegistro: TAdvGlowButton
      Left = 466
      OnClick = btAbrirRegistroClick
      Appearance.BorderColor = clNavy
      ExplicitLeft = 466
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'SELECT id_composicao, descricao, valor_custo, estoque_minimo, '
      
        '       cast(fn_situacoes(id_situacao) as varchar(200)) as staus_' +
        'desc'
      'FROM composicao')
    object qrConsultaid_composicao: TIntegerField
      FieldName = 'id_composicao'
      Required = True
    end
    object qrConsultadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object qrConsultavalor_custo: TFloatField
      FieldName = 'valor_custo'
    end
    object qrConsultaestoque_minimo: TFloatField
      FieldName = 'estoque_minimo'
    end
    object qrConsultastaus_desc: TWideStringField
      FieldName = 'staus_desc'
      ReadOnly = True
      Size = 200
    end
  end
end
