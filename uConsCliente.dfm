inherited frmConsCliente: TfrmConsCliente
  BorderStyle = bsSizeable
  Caption = 'Clientes'
  ClientHeight = 485
  ClientWidth = 896
  ExplicitWidth = 912
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 896
    Height = 436
    ExplicitWidth = 896
    ExplicitHeight = 436
    FullHeight = 200
    inherited Label2: TLabel
      Left = 624
      ExplicitLeft = 624
    end
    inherited cxGrid1: TcxGrid
      Width = 882
      Height = 369
      ExplicitWidth = 882
      ExplicitHeight = 369
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1cli_001: TcxGridDBColumn
          DataBinding.FieldName = 'cli_001'
          Width = 74
        end
        object cxGrid1DBTableView1cli_002: TcxGridDBColumn
          DataBinding.FieldName = 'cli_002'
          Width = 271
        end
        object cxGrid1DBTableView1cli_012: TcxGridDBColumn
          DataBinding.FieldName = 'cli_012'
          Width = 102
        end
        object cxGrid1DBTableView1cli_012_1: TcxGridDBColumn
          DataBinding.FieldName = 'cli_013'
          Width = 93
        end
        object cxGrid1DBTableView1codigo_fidelidade: TcxGridDBColumn
          DataBinding.FieldName = 'codigo_fidelidade'
          Width = 121
        end
        object cxGrid1DBTableView1cidade_desc: TcxGridDBColumn
          DataBinding.FieldName = 'cidade_desc'
          Width = 127
        end
        object cxGrid1DBTableView1situacao: TcxGridDBColumn
          DataBinding.FieldName = 'situacao'
          Width = 130
        end
      end
    end
    inherited edBusca: TEdit
      Width = 610
      ExplicitWidth = 610
    end
    inherited cbCampoFiltro: TComboBox
      Left = 624
      ExplicitLeft = 624
    end
    inherited btPesquisar: TAdvGlowButton
      Left = 766
      Appearance.BorderColor = clNavy
      ExplicitLeft = 766
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 436
    Width = 896
    ExplicitTop = 436
    ExplicitWidth = 896
    inherited btNovo: TAdvGlowButton
      Left = 787
      OnClick = btNovoClick
      Appearance.BorderColor = clNavy
      ExplicitLeft = 787
    end
    inherited btAbrirRegistro: TAdvGlowButton
      Left = 675
      OnClick = btAbrirRegistroClick
      Appearance.BorderColor = clNavy
      ExplicitLeft = 675
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      
        'select cli_001, emp_001, Cli_002, CLI_012, CLI_013, codigo_fidel' +
        'idade, cidade_desc, cast(fn_situacoes(SIT_001) as varchar(100)) ' +
        'as situacao from clientes')
    object qrConsultacli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrConsultaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrConsultacli_002: TWideStringField
      FieldName = 'cli_002'
      Required = True
      Size = 80
    end
    object qrConsultacli_012: TWideStringField
      FieldName = 'cli_012'
    end
    object qrConsultacli_013: TWideStringField
      FieldName = 'cli_013'
    end
    object qrConsultacodigo_fidelidade: TWideStringField
      FieldName = 'codigo_fidelidade'
      Size = 100
    end
    object qrConsultacidade_desc: TWideStringField
      FieldName = 'cidade_desc'
      Size = 100
    end
    object qrConsultasituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 100
    end
  end
end
