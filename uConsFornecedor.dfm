inherited frmConsFornecedor: TfrmConsFornecedor
  Caption = 'Fornecedores'
  ClientHeight = 428
  ClientWidth = 853
  ExplicitWidth = 859
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 853
    Height = 379
    ExplicitWidth = 853
    ExplicitHeight = 379
    FullHeight = 200
    inherited Label2: TLabel
      Left = 581
      ExplicitLeft = 581
    end
    inherited cxGrid1: TcxGrid
      Width = 839
      Height = 316
      ExplicitWidth = 839
      ExplicitHeight = 316
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        OptionsView.ColumnAutoWidth = False
        object cxGrid1DBTableView1id_fornecedor: TcxGridDBColumn
          DataBinding.FieldName = 'id_fornecedor'
          Width = 48
        end
        object cxGrid1DBTableView1nome_fantasia: TcxGridDBColumn
          DataBinding.FieldName = 'nome_fantasia'
          Width = 218
        end
        object cxGrid1DBTableView1razao_social: TcxGridDBColumn
          DataBinding.FieldName = 'razao_social'
          Width = 194
        end
        object cxGrid1DBTableView1tipo_p: TcxGridDBColumn
          DataBinding.FieldName = 'tipo_p'
          Width = 48
        end
        object cxGrid1DBTableView1cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'cnpj'
          Width = 146
        end
        object cxGrid1DBTableView1cpf: TcxGridDBColumn
          DataBinding.FieldName = 'cpf'
          Width = 147
        end
        object cxGrid1DBTableView1nome_contato1: TcxGridDBColumn
          DataBinding.FieldName = 'nome_contato1'
          Width = 192
        end
        object cxGrid1DBTableView1telefone1: TcxGridDBColumn
          DataBinding.FieldName = 'telefone1'
          Width = 100
        end
        object cxGrid1DBTableView1telefone2: TcxGridDBColumn
          DataBinding.FieldName = 'telefone2'
          Width = 100
        end
        object cxGrid1DBTableView1celular1: TcxGridDBColumn
          DataBinding.FieldName = 'celular1'
          Width = 100
        end
        object cxGrid1DBTableView1situacao: TcxGridDBColumn
          DataBinding.FieldName = 'situacao'
          Width = 112
        end
      end
    end
    inherited edBusca: TEdit
      Width = 567
      ExplicitWidth = 567
    end
    inherited cbCampoFiltro: TComboBox
      Left = 581
      ExplicitLeft = 581
    end
    inherited btPesquisar: TAdvGlowButton
      Left = 728
      ExplicitLeft = 728
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 379
    Width = 853
    ExplicitTop = 379
    ExplicitWidth = 853
    inherited btNovo: TAdvGlowButton
      Left = 744
      OnClick = btNovoClick
      ExplicitLeft = 744
    end
    inherited btAbrirRegistro: TAdvGlowButton
      Left = 632
      OnClick = btAbrirRegistroClick
      ExplicitLeft = 632
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'select id_fornecedor, nome_fantasia, razao_social, '
      
        'cast(case when tipo_pessoa='#39'J'#39' then '#39'Jur'#237'dica'#39' else '#39'F'#237'sica'#39' end' +
        ' as varchar(10)) as tipo_p, '
      'cnpj, cpf, nome_contato1, telefone1, telefone2, celular1, '
      'cast(fn_situacoes(id_situacao) as varchar(100)) as situacao '
      'from fornecedor'
      'where id_empresa=1')
    object qrConsultaid_fornecedor: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_fornecedor'
    end
    object qrConsultanome_fantasia: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nome_fantasia'
      Required = True
      Size = 100
    end
    object qrConsultarazao_social: TWideStringField
      DisplayLabel = 'Raz'#227'o social'
      FieldName = 'razao_social'
      Required = True
      Size = 100
    end
    object qrConsultatipo_p: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_p'
      ReadOnly = True
      Size = 10
    end
    object qrConsultacnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Size = 14
    end
    object qrConsultacpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Size = 11
    end
    object qrConsultanome_contato1: TWideStringField
      DisplayLabel = 'Contato 1'
      FieldName = 'nome_contato1'
      Size = 100
    end
    object qrConsultatelefone1: TWideStringField
      DisplayLabel = 'Telefone 1'
      FieldName = 'telefone1'
    end
    object qrConsultatelefone2: TWideStringField
      DisplayLabel = 'Telefone 2'
      FieldName = 'telefone2'
    end
    object qrConsultacelular1: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular1'
    end
    object qrConsultasituacao: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'situacao'
      ReadOnly = True
      Size = 100
    end
  end
end
