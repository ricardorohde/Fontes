inherited frmDetalheComandaNovo: TfrmDetalheComandaNovo
  Caption = 'Cadastro de Comandas'
  ClientHeight = 149
  ClientWidth = 546
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 552
  ExplicitHeight = 178
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 546
    Height = 100
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
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = edDescricao
    end
    object Label3: TLabel
      Left = 369
      Top = 10
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = edDescricao
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 16
      Top = 32
      DataBinding.DataField = 'com_001'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 65
    end
    object edDescricao: TcxDBTextEdit
      Left = 87
      Top = 32
      DataBinding.DataField = 'com_002'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 276
    end
    object edComanda: TcxDBTextEdit
      Left = 369
      Top = 32
      DataBinding.DataField = 'com_003'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      OnKeyDown = edComandaKeyDown
      Width = 114
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 100
    Width = 546
    inherited btCancelar: TAdvGlowButton
      Left = 439
      Appearance.BorderColor = clNavy
      ExplicitLeft = 439
    end
    inherited btSalvar: TAdvGlowButton
      Left = 332
      Appearance.BorderColor = clNavy
      ExplicitLeft = 332
    end
    inherited btExcluir: TAdvGlowButton
      Left = 225
      Appearance.BorderColor = clNavy
      ExplicitLeft = 225
    end
    inherited btEditar: TAdvGlowButton
      Left = 118
      Appearance.BorderColor = clNavy
      ExplicitLeft = 118
    end
    inherited btNovo: TAdvGlowButton
      Left = 11
      Appearance.BorderColor = clNavy
      ExplicitLeft = 11
    end
  end
  inherited qrCadastro: TUniQuery
    SQL.Strings = (
      
        'select com_001, emp_001, com_002, com_003, sit_001, usu_001_1, d' +
        'at_001_1 from comanda'
      'where com_001 = :com_001 '
      
        '--aparentemente in'#250'til, mas o modelo de tela de cadastro prev'#234' t' +
        'abelas que contenham o campo id_empresa, que n'#227'o '#233' o caso desta'
      'and :emp_001 = :id_empresa')
    OnNewRecord = qrCadastroNewRecord
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'com_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'emp_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastrocom_001: TIntegerField
      FieldName = 'com_001'
      Required = True
    end
    object qrCadastroemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrCadastrocom_002: TWideStringField
      FieldName = 'com_002'
      Required = True
      Size = 40
    end
    object qrCadastrocom_003: TIntegerField
      FieldName = 'com_003'
      Required = True
    end
    object qrCadastrosit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrCadastrousu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrCadastrodat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 312
    Top = 65528
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 471
    Top = 22
  end
end
