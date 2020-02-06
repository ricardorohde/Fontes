inherited frmConsPerfilConsumo: TfrmConsPerfilConsumo
  Caption = 'Perfil de Consumo'
  ClientWidth = 813
  ExplicitWidth = 819
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 813
    FullHeight = 200
    inherited Label2: TLabel
      Left = 541
    end
    inherited cxGrid1: TcxGrid
      Width = 799
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_perfil_consumo: TcxGridDBColumn
          DataBinding.FieldName = 'id_perfil_consumo'
          Width = 49
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 226
        end
        object cxGrid1DBTableView1valor_consumacao: TcxGridDBColumn
          DataBinding.FieldName = 'valor_consumacao'
          Width = 92
        end
        object cxGrid1DBTableView1valor_entrada: TcxGridDBColumn
          DataBinding.FieldName = 'valor_entrada'
          Width = 83
        end
        object cxGrid1DBTableView1valor_limite: TcxGridDBColumn
          DataBinding.FieldName = 'valor_limite'
          Width = 89
        end
        object cxGrid1DBTableView1desc_situacao: TcxGridDBColumn
          DataBinding.FieldName = 'desc_situacao'
          Width = 129
        end
      end
    end
    inherited edBusca: TEdit
      Width = 527
    end
    inherited cbCampoFiltro: TComboBox
      Left = 541
    end
    inherited btPesquisar: TAdvGlowButton
      Left = 688
    end
  end
  inherited pnBotoes: TFlowPanel
    Width = 813
    inherited btNovo: TAdvGlowButton
      Left = 704
      OnClick = btNovoClick
      ExplicitLeft = 704
    end
    inherited btAbrirRegistro: TAdvGlowButton
      Left = 592
      OnClick = btAbrirRegistroClick
      ExplicitLeft = 592
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      
        'select id_perfil_consumo, descricao, valor_consumacao, valor_ent' +
        'rada, valor_limite, '
      'cast(fn_situacoes(id_situacao) as varchar(50)) as desc_situacao'
      'from perfil_consumo')
    object qrConsultaid_perfil_consumo: TIntegerField
      FieldName = 'id_perfil_consumo'
    end
    object qrConsultadescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrConsultavalor_consumacao: TFloatField
      FieldName = 'valor_consumacao'
      Required = True
    end
    object qrConsultavalor_entrada: TFloatField
      FieldName = 'valor_entrada'
      Required = True
    end
    object qrConsultavalor_limite: TFloatField
      FieldName = 'valor_limite'
      Required = True
    end
    object qrConsultadesc_situacao: TWideStringField
      FieldName = 'desc_situacao'
      ReadOnly = True
      Size = 50
    end
  end
end
