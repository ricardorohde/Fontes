inherited frmDetalheMesa: TfrmDetalheMesa
  Caption = 'Cadastro de Mesa'
  ClientHeight = 118
  ClientWidth = 542
  OnCreate = FormCreate
  ExplicitWidth = 548
  ExplicitHeight = 147
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 542
    Height = 69
    ExplicitLeft = 56
    ExplicitTop = 8
    ExplicitWidth = 542
    ExplicitHeight = 69
    FullHeight = 200
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 81
      Top = 11
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 215
      Top = 11
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 290
      Top = 11
      Width = 54
      Height = 16
      Caption = 'Ambiente'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 30
      Width = 57
      Height = 24
      TabStop = False
      Color = 14997705
      DataField = 'mes_001'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 79
      Top = 30
      DataBinding.DataField = 'mes_002'
      DataBinding.DataSource = dsCadastro
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 130
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 215
      Top = 30
      DataBinding.DataField = 'mes_003'
      DataBinding.DataSource = dsCadastro
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 66
    end
    object cbAmbiente: TJvDBComboBox
      Left = 287
      Top = 30
      Width = 145
      Height = 24
      DataField = 'ambiente'
      DataSource = dsCadastro
      TabOrder = 3
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 69
    Width = 542
    ExplicitTop = 69
    ExplicitWidth = 542
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
    Left = 184
    Top = 48
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO mesa'
      
        '  (mes_001, emp_001, mes_002, mes_003, sit_001, dat_001_1, nome_' +
        'reserva, telefone_reserva, data_reserva, hora_reserva, ambiente)'
      'VALUES'
      
        '  (:mes_001, :emp_001, :mes_002, :mes_003, :sit_001, :dat_001_1,' +
        ' :nome_reserva, :telefone_reserva, :data_reserva, :hora_reserva,' +
        ' :ambiente)')
    SQLDelete.Strings = (
      'DELETE FROM mesa'
      'WHERE'
      '  mes_001 = :Old_mes_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE mesa'
      'SET'
      
        '  mes_001 = :mes_001, emp_001 = :emp_001, mes_002 = :mes_002, me' +
        's_003 = :mes_003, sit_001 = :sit_001, dat_001_1 = :dat_001_1,'
      
        '  nome_reserva = :nome_reserva,  telefone_reserva = :telefone_re' +
        'serva, data_reserva = :data_reserva, hora_reserva = :hora_reserv' +
        'a,'
      '  ambiente =:ambiente'
      'WHERE'
      '  mes_001 = :Old_mes_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM mesa'
      'WHERE'
      '  mes_001 = :Old_mes_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT mes_001, emp_001, mes_002, mes_003, sit_001, dat_001_1, n' +
        'ome_reserva, telefone_reserva, data_reserva, hora_reserva FROM m' +
        'esa'
      'WHERE'
      '  mes_001 = :mes_001 AND emp_001 = :emp_001')
    SQL.Strings = (
      'select mes_001, '
      'emp_001, '
      'mes_002, '
      'mes_003, '
      'sit_001, '
      'dat_001_1, '
      'nome_reserva, '
      'telefone_reserva, '
      'data_reserva, '
      'hora_reserva ,'
      'ambiente '
      'from mesa'
      'where emp_001 = :id_empresa'
      'and mes_001 = :mes_001')
    OnNewRecord = qrCadastroNewRecord
    Left = 456
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mes_001'
        Value = nil
      end>
    object qrCadastromes_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mes_001'
      Required = True
    end
    object qrCadastroemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrCadastromes_002: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mes_002'
      Required = True
      Size = 40
    end
    object qrCadastromes_003: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mes_003'
      Required = True
      OnChange = qrCadastromes_003Change
    end
    object qrCadastrosit_001: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'sit_001'
      Required = True
    end
    object qrCadastrodat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrCadastronome_reserva: TWideStringField
      DisplayLabel = 'Nome Reserva'
      FieldName = 'nome_reserva'
      Size = 100
    end
    object qrCadastrotelefone_reserva: TWideStringField
      DisplayLabel = 'Telefone reserva'
      FieldName = 'telefone_reserva'
    end
    object qrCadastrodata_reserva: TDateField
      DisplayLabel = 'Data de Reserva'
      FieldName = 'data_reserva'
    end
    object qrCadastrohora_reserva: TTimeField
      DisplayLabel = 'Hora Reserva'
      FieldName = 'hora_reserva'
    end
    object qrCadastroambiente: TIntegerField
      FieldName = 'ambiente'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 488
    Top = 8
  end
end
