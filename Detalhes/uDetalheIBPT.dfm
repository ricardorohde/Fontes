inherited frmDetalheIBPT: TfrmDetalheIBPT
  Caption = 'Cadastro de NCM'
  ClientHeight = 201
  ClientWidth = 543
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 549
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 543
    Height = 152
    ExplicitTop = -3
    ExplicitWidth = 547
    ExplicitHeight = 344
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 26
      Height = 16
      Caption = 'NCM'
    end
    object Label2: TLabel
      Left = 135
      Top = 7
      Width = 68
      Height = 16
      Caption = 'DESCRI'#199#195'O'
      FocusControl = dbDescricao
    end
    object dbDescricao: TcxDBTextEdit
      Left = 135
      Top = 23
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 405
    end
    object dbCodigo: TcxDBTextEdit
      Left = 8
      Top = 23
      DataBinding.DataField = 'ncm'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 121
    end
    object grp1: TAdvGroupBox
      Left = 8
      Top = 60
      Width = 532
      Height = 78
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Al'#237'quotas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 10
        Top = 20
        Width = 104
        Height = 16
        Caption = 'Federal Nacional'
      end
      object Label4: TLabel
        Left = 131
        Top = 20
        Width = 99
        Height = 16
        Caption = 'Federal Import.'
      end
      object Label5: TLabel
        Left = 252
        Top = 20
        Width = 55
        Height = 16
        Caption = 'Estadual'
      end
      object Label6: TLabel
        Left = 374
        Top = 20
        Width = 59
        Height = 16
        Caption = 'Municipal'
      end
      object dbFedNac: TcxDBCurrencyEdit
        Left = 10
        Top = 37
        DataBinding.DataField = 'aliqfednacional'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Properties.EditFormat = '0.00'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 104
      end
      object dbFedImp: TcxDBCurrencyEdit
        Left = 131
        Top = 37
        DataBinding.DataField = 'aliqfedimportado'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Properties.EditFormat = '0.00'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 104
      end
      object dbEstadual: TcxDBCurrencyEdit
        Left = 252
        Top = 37
        DataBinding.DataField = 'aliqestadual'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Properties.EditFormat = '0.00'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 104
      end
      object dbMunicipal: TcxDBCurrencyEdit
        Left = 374
        Top = 37
        DataBinding.DataField = 'aliqmunicipal'
        DataBinding.DataSource = dsCadastro
        ParentFont = False
        Properties.EditFormat = '0.00'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
        Width = 104
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 152
    Width = 543
    inherited btCancelar: TAdvGlowButton
      Left = 436
      Appearance.BorderColor = clNavy
      ExplicitLeft = 436
    end
    inherited btSalvar: TAdvGlowButton
      Left = 329
      Appearance.BorderColor = clNavy
      ExplicitLeft = 329
    end
    inherited btExcluir: TAdvGlowButton
      Left = 222
      Appearance.BorderColor = clNavy
      ExplicitLeft = 222
    end
    inherited btEditar: TAdvGlowButton
      Left = 115
      Appearance.BorderColor = clNavy
      ExplicitLeft = 115
    end
    inherited btNovo: TAdvGlowButton
      Left = 8
      Appearance.BorderColor = clNavy
      ExplicitLeft = 8
    end
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ibpt'
      
        '  (ncm, descricao, ex, tabela, aliqfednacional, aliqfedimportado' +
        ', aliqestadual, aliqmunicipal, ibpt_001)'
      'VALUES'
      
        '  (:ncm, :descricao, :ex, :tabela, :aliqfednacional, :aliqfedimp' +
        'ortado, :aliqestadual, :aliqmunicipal, :ibpt_001)')
    SQLDelete.Strings = (
      'DELETE FROM ibpt'
      'WHERE'
      '  ibpt_001 = :Old_ibpt_001')
    SQLUpdate.Strings = (
      'UPDATE ibpt'
      'SET'
      
        '  ncm = :ncm, descricao = :descricao, ex = :ex, tabela = :tabela' +
        ', aliqfednacional = :aliqfednacional, aliqfedimportado = :aliqfe' +
        'dimportado, aliqestadual = :aliqestadual, aliqmunicipal = :aliqm' +
        'unicipal, ibpt_001 = :ibpt_001'
      'WHERE'
      '  ibpt_001 = :Old_ibpt_001')
    SQLLock.Strings = (
      'SELECT * FROM ibpt'
      'WHERE'
      '  ibpt_001 = :Old_ibpt_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT ncm, descricao, ex, tabela, aliqfednacional, aliqfedimpor' +
        'tado, aliqestadual, aliqmunicipal, ibpt_001 FROM ibpt'
      'WHERE'
      '  ibpt_001 = :ibpt_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM ibpt'
      ''
      ') t')
    SQL.Strings = (
      
        'SELECT ibpt_001, ncm, descricao, ex, tabela, aliqfednacional, al' +
        'iqfedimportado, aliqestadual, aliqmunicipal FROM IBPT'
      'where ibpt_001 = :ibpt_001'
      
        '--aparentemente in'#250'til, mas o modelo de tela de cadastro prev'#234' t' +
        'abelas que contenham o campo id_empresa, que n'#227'o '#233' o caso desta'
      'and :id_empresa = :id_empresa')
    OnNewRecord = qrCadastroNewRecord
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ibpt_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroibpt_001: TIntegerField
      FieldName = 'ibpt_001'
      Required = True
    end
    object qrCadastroncm: TWideStringField
      FieldName = 'ncm'
    end
    object qrCadastrodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 500
    end
    object qrCadastroex: TWideStringField
      FieldName = 'ex'
    end
    object qrCadastrotabela: TIntegerField
      FieldName = 'tabela'
    end
    object qrCadastroaliqfednacional: TFloatField
      FieldName = 'aliqfednacional'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrCadastroaliqfedimportado: TFloatField
      FieldName = 'aliqfedimportado'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrCadastroaliqestadual: TFloatField
      FieldName = 'aliqestadual'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrCadastroaliqmunicipal: TFloatField
      FieldName = 'aliqmunicipal'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
  end
end
