inherited frmDetalheUnidade: TfrmDetalheUnidade
  Caption = 'Cadastro de Unidade'
  ClientHeight = 117
  ClientWidth = 559
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 565
  ExplicitHeight = 146
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 559
    Height = 68
    ExplicitWidth = 559
    ExplicitHeight = 68
    FullHeight = 200
    object Label1: TLabel
      Left = 24
      Top = 10
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 90
      Top = 10
      Width = 46
      Height = 16
      Caption = 'Unidade'
      FocusControl = edDescricao
    end
    object Label3: TLabel
      Left = 221
      Top = 10
      Width = 28
      Height = 16
      Caption = 'Sigla'
      FocusControl = cxDBTextEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'uni_001'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 57
    end
    object edDescricao: TcxDBTextEdit
      Left = 90
      Top = 32
      DataBinding.DataField = 'uni_002'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 221
      Top = 32
      DataBinding.DataField = 'uni_003'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      OnKeyDown = cxDBTextEdit2KeyDown
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 68
    Width = 559
    ExplicitTop = 68
    ExplicitWidth = 559
    inherited btCancelar: TAdvGlowButton
      Left = 452
      Appearance.BorderColor = clNavy
      ExplicitLeft = 452
    end
    inherited btSalvar: TAdvGlowButton
      Left = 345
      Appearance.BorderColor = clNavy
      ExplicitLeft = 345
    end
    inherited btExcluir: TAdvGlowButton
      Left = 238
      Appearance.BorderColor = clNavy
      ExplicitLeft = 238
    end
    inherited btEditar: TAdvGlowButton
      Left = 131
      Appearance.BorderColor = clNavy
      ExplicitLeft = 131
    end
    inherited btNovo: TAdvGlowButton
      Left = 24
      Appearance.BorderColor = clNavy
      ExplicitLeft = 24
    end
  end
  inherited dsCadastro: TDataSource
    Left = 416
    Top = 65528
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO unidades'
      
        '  (uni_001, emp_001, uni_002, uni_003, sit_001, usu_001_1, usu_0' +
        '01_2, usu_001_3, dat_001_1, dat_001_2, dat_001_3)'
      'VALUES'
      
        '  (:uni_001, :id_empresa, :uni_002, :uni_003, :sit_001, :usu_001' +
        '_1, :usu_001_2, :usu_001_3, :dat_001_1, :dat_001_2, :dat_001_3)')
    SQLDelete.Strings = (
      'DELETE FROM unidades'
      'WHERE'
      '  uni_001 = :Old_uni_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE unidades'
      'SET'
      
        '  uni_001 = :uni_001, emp_001 = :id_empresa, uni_002 = :uni_002,' +
        ' uni_003 = :uni_003, sit_001 = :sit_001, usu_001_1 = :usu_001_1,' +
        ' usu_001_2 = :usu_001_2, usu_001_3 = :usu_001_3, dat_001_1 = :da' +
        't_001_1, dat_001_2 = :dat_001_2, dat_001_3 = :dat_001_3'
      'WHERE'
      '  uni_001 = :Old_uni_001 AND emp_001 = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM unidades'
      'WHERE'
      '  uni_001 = :Old_uni_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT uni_001, emp_001, uni_002, uni_003, sit_001, usu_001_1, u' +
        'su_001_2, usu_001_3, dat_001_1, dat_001_2, dat_001_3 FROM unidad' +
        'es'
      'WHERE'
      '  uni_001 = :uni_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM unidades'
      ''
      ') t')
    SQL.Strings = (
      
        'select uni_001,emp_001 as id_empresa,uni_002,uni_003,sit_001,usu' +
        '_001_1,usu_001_2,usu_001_3,dat_001_1,dat_001_2,dat_001_3 from un' +
        'idades'
      'where uni_001 = :uni_001 and emp_001 = :id_empresa')
    OnNewRecord = qrCadastroNewRecord
    Left = 376
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'uni_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastrouni_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'uni_001'
      Required = True
    end
    object qrCadastrouni_002: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'uni_002'
      Required = True
      Size = 15
    end
    object qrCadastrouni_003: TWideStringField
      DisplayLabel = 'Sigla'
      FieldName = 'uni_003'
      Required = True
      Size = 3
    end
    object qrCadastrosit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrCadastrousu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrCadastrousu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrCadastrousu_001_3: TIntegerField
      FieldName = 'usu_001_3'
    end
    object qrCadastrodat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrCadastrodat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrCadastrodat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 456
    Top = 65528
  end
end
