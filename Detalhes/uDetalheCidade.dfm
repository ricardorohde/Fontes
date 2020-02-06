inherited frmDetalheCidade: TfrmDetalheCidade
  Caption = 'Cadastro de Cidade'
  ClientHeight = 113
  ClientWidth = 539
  ExplicitWidth = 545
  ExplicitHeight = 142
  PixelsPerInch = 96
  TextHeight = 16
  object SpeedButton1: TSpeedButton [0]
    Left = 264
    Top = 112
    Width = 23
    Height = 22
  end
  inherited pnPrincipal: TAdvPanel
    Width = 539
    Height = 64
    ExplicitWidth = 539
    ExplicitHeight = 59
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 87
      Top = 10
      Width = 39
      Height = 16
      Caption = 'Cidade'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 432
      Top = 10
      Width = 69
      Height = 16
      Caption = 'C'#243'digo IBGE'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 369
      Top = 10
      Width = 15
      Height = 16
      Caption = 'UF'
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 32
      DataBinding.DataField = 'cid_001'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 65
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 87
      Top = 32
      DataBinding.DataField = 'cid_002'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 276
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 432
      Top = 32
      DataBinding.DataField = 'cid_003'
      DataBinding.DataSource = dsCadastro
      TabOrder = 3
      Width = 97
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 369
      Top = 32
      Width = 57
      Height = 24
      DataField = 'est_001'
      DataSource = dsCadastro
      KeyField = 'id_estado'
      ListField = 'uf'
      ListSource = dsListaEstados
      TabOrder = 2
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 64
    Width = 539
    ExplicitTop = 59
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
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cidades'
      '  (cid_001, cid_002, cid_003, est_001)'
      'VALUES'
      '  (:cid_001, :cid_002, :cid_003, :est_001)')
    SQLDelete.Strings = (
      'DELETE FROM cidades'
      'WHERE'
      '  cid_001 = :Old_cid_001')
    SQLUpdate.Strings = (
      'UPDATE cidades'
      'SET'
      
        '  cid_001 = :cid_001, cid_002 = :cid_002, cid_003 = :cid_003, es' +
        't_001 = :est_001'
      'WHERE'
      '  cid_001 = :Old_cid_001')
    SQLLock.Strings = (
      'SELECT * FROM cidades'
      'WHERE'
      '  cid_001 = :Old_cid_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT cid_001, cid_002, cid_003, est_001 FROM cidades'
      'WHERE'
      '  cid_001 = :cid_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cidades'
      ''
      ') t')
    SQL.Strings = (
      'select cid_001, cid_002, cid_003, est_001 from cidades'
      'where cid_001 = :cid_001 '
      
        '--aparentemente in'#250'til, mas o modelo de tela de cadastro prev'#234' t' +
        'abelas que contenham o campo id_empresa, que n'#227'o '#233' o caso desta'
      'and :id_empresa = :id_empresa ')
    AfterOpen = qrCadastroAfterOpen
    OnNewRecord = qrCadastroNewRecord
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cid_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastrocid_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cid_001'
      Required = True
    end
    object qrCadastrocid_002: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_002'
      Required = True
      Size = 75
    end
    object qrCadastrocid_003: TWideStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'cid_003'
      Size = 10
    end
    object qrCadastroest_001: TIntegerField
      DisplayLabel = 'UF'
      FieldName = 'est_001'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 56
    Top = 9
  end
  object qrListaEstados: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select est_001 as id_estado, est_003 as uf from estados order by' +
        ' est_003 ')
    Left = 120
    Top = 8
    object qrListaEstadosid_estado: TIntegerField
      FieldName = 'id_estado'
      Required = True
    end
    object qrListaEstadosuf: TWideStringField
      FieldName = 'uf'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object dsListaEstados: TDataSource
    AutoEdit = False
    DataSet = qrListaEstados
    Left = 320
    Top = 8
  end
end
