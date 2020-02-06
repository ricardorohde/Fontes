inherited frmConsPromocao: TfrmConsPromocao
  Caption = 'Promo'#231#245'es'
  ClientHeight = 503
  ClientWidth = 857
  ExplicitWidth = 863
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 857
    Height = 454
    FullHeight = 200
    inherited Label2: TLabel
      Left = 585
    end
    inherited cxGrid1: TcxGrid
      Width = 843
      Height = 394
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1id_promocao: TcxGridDBColumn
          DataBinding.FieldName = 'id_promocao'
          Options.AutoWidthSizable = False
          Width = 67
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 387
        end
        object cxGrid1DBTableView1cat_002: TcxGridDBColumn
          DataBinding.FieldName = 'cat_002'
          Options.AutoWidthSizable = False
          Width = 193
        end
        object cxGrid1DBTableView1desconto: TcxGridDBColumn
          DataBinding.FieldName = 'desconto'
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGrid1DBTableView1desc_situacao: TcxGridDBColumn
          DataBinding.FieldName = 'desc_situacao'
          Options.AutoWidthSizable = False
          Width = 114
        end
      end
    end
    inherited edBusca: TEdit
      Width = 571
    end
    inherited cbCampoFiltro: TComboBox
      Left = 585
    end
    inherited btPesquisar: TAdvGlowButton
      Left = 732
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 454
    Width = 857
    inherited btNovo: TAdvGlowButton
      Left = 748
      OnClick = btNovoClick
      ExplicitLeft = 748
    end
    inherited btAbrirRegistro: TAdvGlowButton
      Left = 636
      OnClick = btAbrirRegistroClick
      ExplicitLeft = 636
    end
  end
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      
        'select p.id_promocao, p.descricao, p.desconto, fn_situacoes(p.id' +
        '_situacao) as desc_situacao, c.cat_002 '
      'from promocao p '
      
        'join categoria c on c.cat_001=p.id_categoria and c.emp_001=p.id_' +
        'empresa')
    object qrConsultaid_promocao: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_promocao'
    end
    object qrConsultadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qrConsultadesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'desconto'
      Required = True
      DisplayFormat = '##0.00'
    end
    object qrConsultadesc_situacao: TWideMemoField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'desc_situacao'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrConsultacat_002: TWideStringField
      DisplayLabel = 'Categoria'
      FieldName = 'cat_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
end
