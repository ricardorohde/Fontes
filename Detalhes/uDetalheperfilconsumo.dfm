inherited frmDetalhePerfilConsumo: TfrmDetalhePerfilConsumo
  Caption = 'Perfil de Consumo'
  ClientHeight = 277
  ClientWidth = 542
  ExplicitWidth = 548
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 542
    Height = 228
    FullHeight = 200
    object Label1: TLabel
      Left = 7
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 80
      Top = 8
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 7
      Top = 60
      Width = 105
      Height = 16
      Caption = 'Valor consuma'#231#227'o'
    end
    object Label4: TLabel
      Left = 134
      Top = 60
      Width = 78
      Height = 16
      Caption = 'Valor entrada'
    end
    object Label5: TLabel
      Left = 261
      Top = 60
      Width = 65
      Height = 16
      Caption = 'Valor limite'
    end
    object Label7: TLabel
      Left = 7
      Top = 112
      Width = 67
      Height = 16
      Caption = 'Observa'#231#227'o'
      FocusControl = cxDBMemo1
    end
    object Label6: TLabel
      Left = 388
      Top = 8
      Width = 36
      Height = 16
      Caption = 'Status'
      FocusControl = cxDBSpinEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 7
      Top = 30
      TabStop = False
      DataBinding.DataField = 'id_perfil_consumo'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 0
      Width = 67
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 80
      Top = 30
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 302
    end
    object cxDBMemo1: TcxDBMemo
      Left = 7
      Top = 134
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 2
      Height = 89
      Width = 375
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 7
      Top = 82
      DataBinding.DataField = 'valor_consumacao'
      DataBinding.DataSource = dsCadastro
      TabOrder = 3
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 134
      Top = 82
      DataBinding.DataField = 'valor_entrada'
      DataBinding.DataSource = dsCadastro
      TabOrder = 4
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 261
      Top = 82
      DataBinding.DataField = 'valor_limite'
      DataBinding.DataSource = dsCadastro
      TabOrder = 5
      Width = 121
    end
    object btAtivar: TAdvGlowButton
      Left = 388
      Top = 181
      Width = 148
      Height = 41
      Caption = 'Ativar Perfil'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = btAtivarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 388
      Top = 30
      TabStop = False
      DataBinding.DataField = 'desc_situacao'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 7
      Width = 148
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 228
    Width = 542
    inherited btCancelar: TAdvGlowButton
      Left = 435
      ExplicitLeft = 435
    end
    inherited btSalvar: TAdvGlowButton
      Left = 328
      ExplicitLeft = 328
    end
    inherited btExcluir: TAdvGlowButton
      Left = 221
      ExplicitLeft = 221
    end
    inherited btEditar: TAdvGlowButton
      Left = 114
      ExplicitLeft = 114
    end
    inherited btNovo: TAdvGlowButton
      Left = 7
      ExplicitLeft = 7
    end
  end
  inherited dsCadastro: TDataSource
    Left = 56
    Top = 176
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO perfil_consumo'
      
        '  (id_perfil_consumo, descricao, valor_consumacao, valor_entrada' +
        ', valor_limite, id_situacao, observacao, id_empresa)'
      'VALUES'
      
        '  (:id_perfil_consumo, :descricao, :valor_consumacao, :valor_ent' +
        'rada, :valor_limite, :id_situacao, :observacao, :id_empresa)')
    SQLDelete.Strings = (
      'DELETE FROM perfil_consumo'
      'WHERE'
      '  id_perfil_consumo = :Old_id_perfil_consumo')
    SQLUpdate.Strings = (
      'UPDATE perfil_consumo'
      'SET'
      
        '  id_perfil_consumo = :id_perfil_consumo, descricao = :descricao' +
        ', valor_consumacao = :valor_consumacao, valor_entrada = :valor_e' +
        'ntrada, valor_limite = :valor_limite, id_situacao = :id_situacao' +
        ', observacao = :observacao, id_empresa = :id_empresa'
      'WHERE'
      '  id_perfil_consumo = :Old_id_perfil_consumo')
    SQLLock.Strings = (
      'SELECT * FROM perfil_consumo'
      'WHERE'
      '  id_perfil_consumo = :Old_id_perfil_consumo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_perfil_consumo, descricao, valor_consumacao, valor_ent' +
        'rada, valor_limite, id_situacao, observacao, id_empresa FROM per' +
        'fil_consumo'
      'WHERE'
      '  id_perfil_consumo = :id_perfil_consumo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM perfil_consumo'
      ''
      ') t')
    SQL.Strings = (
      'select '
      'id_perfil_consumo, '
      'descricao, '
      'valor_consumacao, '
      'valor_entrada, '
      'valor_limite, '
      'id_situacao, '
      'observacao, '
      'id_empresa,'
      'cast(fn_situacoes(id_situacao) as varchar(50)) as desc_situacao'
      'from perfil_consumo'
      
        'where id_perfil_consumo = :id_perfil_consumo and id_empresa =:id' +
        '_empresa ')
    Options.DefaultValues = True
    OnNewRecord = qrCadastroNewRecord
    Left = 136
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_perfil_consumo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_perfil_consumo: TIntegerField
      DefaultExpression = 'nextval('#39'perfil_consumo_id_perfil_consumo_seq'#39'::regclass)'
      DisplayLabel = 'ID perfil consumo'
      FieldName = 'id_perfil_consumo'
    end
    object qrCadastrodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object qrCadastrovalor_consumacao: TFloatField
      DefaultExpression = '0.0'
      DisplayLabel = 'Valor consuma'#231#227'o'
      FieldName = 'valor_consumacao'
      Required = True
    end
    object qrCadastrovalor_entrada: TFloatField
      DefaultExpression = '0.0'
      DisplayLabel = 'Valor entrada'
      FieldName = 'valor_entrada'
      Required = True
    end
    object qrCadastrovalor_limite: TFloatField
      DefaultExpression = '0.0'
      DisplayLabel = 'Valor limite'
      FieldName = 'valor_limite'
      Required = True
    end
    object qrCadastroid_situacao: TIntegerField
      DefaultExpression = '4'
      DisplayLabel = 'ID Situa'#231#227'o'
      FieldName = 'id_situacao'
      Required = True
    end
    object qrCadastroobservacao: TWideMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object qrCadastroid_empresa: TIntegerField
      DisplayLabel = 'ID Empresa'
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastrodesc_situacao: TWideStringField
      FieldName = 'desc_situacao'
      Size = 50
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 208
    Top = 168
  end
end
