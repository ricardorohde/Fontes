inherited frmDetalheSetor: TfrmDetalheSetor
  Caption = 'Setor'
  ClientHeight = 125
  ClientWidth = 539
  ExplicitWidth = 545
  ExplicitHeight = 154
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 539
    Height = 76
    ExplicitWidth = 539
    ExplicitHeight = 76
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 95
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 30
      DataBinding.DataField = 'id_setor'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 81
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 95
      Top = 30
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 434
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 76
    Width = 539
    ExplicitTop = 76
    ExplicitWidth = 539
    inherited btCancelar: TAdvGlowButton
      Left = 432
      ExplicitLeft = 432
    end
    inherited btSalvar: TAdvGlowButton
      Left = 325
      ExplicitLeft = 325
    end
    inherited btExcluir: TAdvGlowButton
      Left = 218
      ExplicitLeft = 218
    end
    inherited btEditar: TAdvGlowButton
      Left = 111
      ExplicitLeft = 111
    end
    inherited btNovo: TAdvGlowButton
      Left = 4
      ExplicitLeft = 4
    end
  end
  inherited dsCadastro: TDataSource
    Left = 288
    Top = 0
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO setor_estoque'
      '  (id_setor, id_empresa, descricao, id_situacao)'
      'VALUES'
      '  (:id_setor, :id_empresa, :descricao, :id_situacao)')
    SQLDelete.Strings = (
      'DELETE FROM setor_estoque'
      'WHERE'
      '  id_setor = :Old_id_setor AND id_empresa = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE setor_estoque'
      'SET'
      
        '  id_setor = :id_setor, id_empresa = :id_empresa, descricao = :d' +
        'escricao, id_situacao = :id_situacao'
      'WHERE'
      '  id_setor = :Old_id_setor AND id_empresa = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM setor_estoque'
      'WHERE'
      '  id_setor = :Old_id_setor AND id_empresa = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_setor, id_empresa, descricao, id_situacao FROM setor_e' +
        'stoque'
      'WHERE'
      '  id_setor = :id_setor AND id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM setor_estoque'
      ''
      ') t')
    SQL.Strings = (
      
        'select id_setor, id_empresa, descricao, id_situacao from setor_e' +
        'stoque where id_setor = :id_setor and id_empresa =:id_empresa ')
    OnNewRecord = qrCadastroNewRecord
    Left = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_setor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_setor: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_setor'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrCadastroid_situacao: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'id_situacao'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 448
    Top = 8
  end
end
