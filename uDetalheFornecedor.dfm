inherited frmDetalheFornecedor: TfrmDetalheFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 556
  ClientWidth = 698
  ExplicitWidth = 704
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 698
    Height = 507
    ExplicitWidth = 698
    ExplicitHeight = 507
    FullHeight = 200
    object Label2: TLabel
      Left = 85
      Top = 8
      Width = 65
      Height = 16
      Caption = 'Fornecedor'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 8
      Top = 63
      Width = 71
      Height = 16
      Caption = 'Raz'#227'o social'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 148
      Top = 175
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 468
      Top = 175
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = cxDBTextEdit4
    end
    object Label6: TLabel
      Left = 8
      Top = 231
      Width = 34
      Height = 16
      Caption = 'Bairro'
      FocusControl = cxDBTextEdit5
    end
    object Label7: TLabel
      Left = 148
      Top = 231
      Width = 39
      Height = 16
      Caption = 'Cidade'
      FocusControl = cxDBTextEdit6
    end
    object Label8: TLabel
      Left = 398
      Top = 231
      Width = 15
      Height = 16
      Caption = 'UF'
      FocusControl = cxDBTextEdit7
    end
    object Label9: TLabel
      Left = 8
      Top = 175
      Width = 22
      Height = 16
      Caption = 'CEP'
    end
    object Label10: TLabel
      Left = 559
      Top = 175
      Width = 79
      Height = 16
      Caption = 'Complemento'
      FocusControl = cxDBTextEdit9
    end
    object Label11: TLabel
      Left = 434
      Top = 231
      Width = 61
      Height = 16
      Caption = 'Telefone 1'
      FocusControl = DBEdit1
    end
    object Label12: TLabel
      Left = 561
      Top = 231
      Width = 61
      Height = 16
      Caption = 'Telefone 2'
      FocusControl = DBEdit2
    end
    object Label13: TLabel
      Left = 263
      Top = 287
      Width = 51
      Height = 16
      Caption = 'Celular 1'
      FocusControl = DBEdit3
    end
    object Label14: TLabel
      Left = 263
      Top = 343
      Width = 51
      Height = 16
      Caption = 'Celular 2'
      FocusControl = DBEdit4
    end
    object Label15: TLabel
      Left = 8
      Top = 287
      Width = 90
      Height = 16
      Caption = 'Nome contato 1'
      FocusControl = DBEdit5
    end
    object Label16: TLabel
      Left = 8
      Top = 343
      Width = 90
      Height = 16
      Caption = 'Nome contato 2'
      FocusControl = DBEdit6
    end
    object Label17: TLabel
      Left = 398
      Top = 287
      Width = 31
      Height = 16
      Caption = 'Email'
      FocusControl = DBEdit7
    end
    object Label18: TLabel
      Left = 398
      Top = 343
      Width = 22
      Height = 16
      Caption = 'Site'
      FocusControl = DBEdit8
    end
    object JvLabel5: TJvLabel
      Left = 536
      Top = 8
      Width = 99
      Height = 16
      Caption = 'Data de cadastro'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = 14997705
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = [fsBold]
    end
    object Label19: TLabel
      Left = 8
      Top = 119
      Width = 28
      Height = 16
      Caption = 'CNPJ'
      FocusControl = edCNPJ
    end
    object Label20: TLabel
      Left = 148
      Top = 119
      Width = 22
      Height = 16
      Caption = 'CPF'
      FocusControl = edCPF
    end
    object Label21: TLabel
      Left = 8
      Top = 399
      Width = 34
      Height = 16
      Caption = 'Banco'
      FocusControl = DBEdit11
    end
    object Label22: TLabel
      Left = 186
      Top = 399
      Width = 45
      Height = 16
      Caption = 'Ag'#234'ncia'
      FocusControl = DBEdit12
    end
    object Label23: TLabel
      Left = 292
      Top = 399
      Width = 33
      Height = 16
      Caption = 'Conta'
      FocusControl = DBEdit13
    end
    object Label24: TLabel
      Left = 8
      Top = 455
      Width = 115
      Height = 16
      Caption = 'C'#243'digo do munic'#237'pio'
      FocusControl = DBEdit14
    end
    object Label25: TLabel
      Left = 186
      Top = 455
      Width = 69
      Height = 16
      Caption = 'C'#243'digo IBGE'
      FocusControl = DBEdit15
    end
    object Label26: TLabel
      Left = 292
      Top = 455
      Width = 31
      Height = 16
      Caption = 'CNAE'
      FocusControl = DBEdit16
    end
    object Label27: TLabel
      Left = 398
      Top = 399
      Width = 73
      Height = 16
      Caption = 'Observa'#231#245'es'
      FocusControl = DBMemo1
    end
    object Label28: TLabel
      Left = 278
      Top = 119
      Width = 103
      Height = 16
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEdit17
    end
    object Label29: TLabel
      Left = 468
      Top = 119
      Width = 109
      Height = 16
      Caption = 'Inscri'#231#227'o municipal'
      FocusControl = DBEdit18
    end
    object Label30: TLabel
      Left = 8
      Top = 8
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 85
      Top = 30
      DataBinding.DataField = 'nome_fantasia'
      DataBinding.DataSource = dsCadastro
      TabOrder = 0
      Width = 445
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 8
      Top = 85
      DataBinding.DataField = 'razao_social'
      DataBinding.DataSource = dsCadastro
      TabOrder = 1
      Width = 522
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 148
      Top = 197
      DataBinding.DataField = 'endereco_logradouro'
      DataBinding.DataSource = dsCadastro
      TabOrder = 8
      Width = 314
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 468
      Top = 197
      DataBinding.DataField = 'endereco_numero'
      DataBinding.DataSource = dsCadastro
      TabOrder = 9
      Width = 85
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 8
      Top = 253
      DataBinding.DataField = 'endereco_bairro'
      DataBinding.DataSource = dsCadastro
      TabOrder = 11
      Width = 134
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 178
      Top = 253
      DataBinding.DataField = 'endereco_cidade'
      DataBinding.DataSource = dsCadastro
      TabOrder = 13
      Width = 214
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 398
      Top = 253
      DataBinding.DataField = 'endereco_uf'
      DataBinding.DataSource = dsCadastro
      TabOrder = 14
      Width = 30
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 559
      Top = 197
      DataBinding.DataField = 'endereco_complemento'
      DataBinding.DataSource = dsCadastro
      TabOrder = 10
      Width = 129
    end
    object edIdCep: TcxDBButtonEdit
      Tag = -1
      Left = 8
      Top = 197
      DataBinding.DataField = 'endereco_cep'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaCEP
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Width = 134
    end
    object DBEdit1: TDBEdit
      Left = 434
      Top = 253
      Width = 121
      Height = 24
      DataField = 'telefone1'
      DataSource = dsCadastro
      TabOrder = 15
    end
    object DBEdit2: TDBEdit
      Left = 561
      Top = 253
      Width = 127
      Height = 24
      DataField = 'telefone2'
      DataSource = dsCadastro
      TabOrder = 16
    end
    object DBEdit3: TDBEdit
      Left = 263
      Top = 309
      Width = 129
      Height = 24
      DataField = 'celular1'
      DataSource = dsCadastro
      TabOrder = 18
    end
    object DBEdit4: TDBEdit
      Left = 263
      Top = 365
      Width = 129
      Height = 24
      DataField = 'celular2'
      DataSource = dsCadastro
      TabOrder = 21
    end
    object edIDCidade: TcxDBButtonEdit
      Tag = -1
      Left = 148
      Top = 253
      TabStop = False
      DataBinding.DataField = 'id_cidade'
      DataBinding.DataSource = dsCadastro
      ParentFont = False
      Properties.Buttons = <
        item
          Action = acBuscaCidade
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = frmMenu.ImgList16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 12
      Width = 24
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 309
      Width = 249
      Height = 24
      DataField = 'nome_contato1'
      DataSource = dsCadastro
      TabOrder = 17
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 365
      Width = 249
      Height = 24
      DataField = 'nome_contato2'
      DataSource = dsCadastro
      TabOrder = 20
    end
    object DBEdit7: TDBEdit
      Left = 398
      Top = 309
      Width = 290
      Height = 24
      DataField = 'email'
      DataSource = dsCadastro
      TabOrder = 19
    end
    object DBEdit8: TDBEdit
      Left = 398
      Top = 365
      Width = 290
      Height = 24
      DataField = 'site'
      DataSource = dsCadastro
      TabOrder = 22
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 536
      Top = 30
      TabStop = False
      DataBinding.DataField = 'data_cadastro'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 30
      Width = 152
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 536
      Top = 67
      Width = 152
      Height = 46
      BorderColor = clNavy
      RoundEdges = True
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 1
        Top = -5
        DataBinding.DataField = 'tipo_pessoa'
        DataBinding.DataSource = dsCadastro
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Jur'#237'dica'
            Value = 'J'
          end
          item
            Caption = 'F'#237'sica'
            Value = 'F'
          end>
        Properties.OnChange = cxDBRadioGroup1Click
        Style.BorderColor = clSkyBlue
        Style.BorderStyle = ebsNone
        Style.Color = clFuchsia
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        OnClick = cxDBRadioGroup1Click
        Height = 48
        Width = 144
      end
    end
    object edCNPJ: TDBEdit
      Left = 8
      Top = 141
      Width = 134
      Height = 24
      DataField = 'cnpj'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object edCPF: TDBEdit
      Left = 148
      Top = 141
      Width = 124
      Height = 24
      DataField = 'cpf'
      DataSource = dsCadastro
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 8
      Top = 421
      Width = 172
      Height = 24
      DataField = 'banco'
      DataSource = dsCadastro
      TabOrder = 23
    end
    object DBEdit12: TDBEdit
      Left = 186
      Top = 421
      Width = 100
      Height = 24
      DataField = 'agencia'
      DataSource = dsCadastro
      TabOrder = 24
    end
    object DBEdit13: TDBEdit
      Left = 292
      Top = 421
      Width = 100
      Height = 24
      DataField = 'conta'
      DataSource = dsCadastro
      TabOrder = 25
    end
    object DBEdit14: TDBEdit
      Left = 8
      Top = 477
      Width = 172
      Height = 24
      DataField = 'codigo_municipio'
      DataSource = dsCadastro
      TabOrder = 26
    end
    object DBEdit15: TDBEdit
      Left = 186
      Top = 477
      Width = 100
      Height = 24
      DataField = 'codigo_ibge'
      DataSource = dsCadastro
      TabOrder = 27
    end
    object DBEdit16: TDBEdit
      Left = 292
      Top = 477
      Width = 100
      Height = 24
      DataField = 'cnae'
      DataSource = dsCadastro
      TabOrder = 28
    end
    object DBMemo1: TDBMemo
      Left = 398
      Top = 421
      Width = 290
      Height = 80
      DataField = 'observacoes'
      DataSource = dsCadastro
      ScrollBars = ssVertical
      TabOrder = 29
    end
    object DBEdit17: TDBEdit
      Left = 278
      Top = 141
      Width = 184
      Height = 24
      DataField = 'inscricao_estadual'
      DataSource = dsCadastro
      TabOrder = 5
    end
    object DBEdit18: TDBEdit
      Left = 468
      Top = 141
      Width = 220
      Height = 24
      DataField = 'inscricao_municipal'
      DataSource = dsCadastro
      TabOrder = 6
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 8
      Top = 30
      DataBinding.DataField = 'id_fornecedor'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.Color = 14997705
      TabOrder = 31
      Width = 71
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 507
    Width = 698
    ExplicitTop = 507
    ExplicitWidth = 698
    inherited btCancelar: TAdvGlowButton
      Left = 591
      ExplicitLeft = 591
    end
    inherited btSalvar: TAdvGlowButton
      Left = 484
      ExplicitLeft = 484
    end
    inherited btExcluir: TAdvGlowButton
      Left = 377
      ExplicitLeft = 377
    end
    inherited btEditar: TAdvGlowButton
      Left = 270
      ExplicitLeft = 270
    end
    inherited btNovo: TAdvGlowButton
      Left = 163
      ExplicitLeft = 163
    end
  end
  inherited dsCadastro: TDataSource
    Left = 432
    Top = 16
  end
  inherited qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO fornecedor'
      
        '  (nome_fantasia, id_cidade, razao_social, id_usuario_cadastro, ' +
        'id_empresa, endereco_logradouro, '
      
        '   endereco_numero, endereco_bairro, endereco_cidade, endereco_u' +
        'f, endereco_cep, id_situacao,'
      
        '   endereco_complemento, telefone1, telefone2, celular1, celular' +
        '2, email, site, cnpj, '
      
        '   nome_contato1, nome_contato2, banco, agencia, conta, data_cad' +
        'astro, cpf, tipo_pessoa, '
      
        '   codigo_municipio, codigo_ibge, cnae, inscricao_estadual, insc' +
        'ricao_municipal, observacoes)'
      'VALUES'
      
        '  (:nome_fantasia, :id_cidade, :razao_social, :id_usuario_cadast' +
        'ro, :id_empresa, :endereco_logradouro, '
      
        '   :endereco_numero, :endereco_bairro, :endereco_cidade, :endere' +
        'co_uf, :endereco_cep, :id_situacao, '
      
        '   :endereco_complemento, :telefone1, :telefone2, :celular1, :ce' +
        'lular2, :email, :site, :cnpj, '
      
        '   :nome_contato1, :nome_contato2, :banco, :agencia, :conta, :da' +
        'ta_cadastro, :cpf, :tipo_pessoa, '
      
        '   :codigo_municipio, :codigo_ibge, :cnae, :inscricao_estadual, ' +
        ':inscricao_municipal, :observacoes)'
      '')
    SQLDelete.Strings = (
      'DELETE FROM fornecedor'
      'WHERE'
      
        '  id_fornecedor = :Old_id_fornecedor AND id_empresa = :Old_id_em' +
        'presa')
    SQLUpdate.Strings = (
      'UPDATE fornecedor'
      'SET'
      
        '  id_fornecedor = :id_fornecedor, nome_fantasia = :nome_fantasia' +
        ', razao_social = :razao_social, '
      
        '  id_cidade = :id_cidade, id_usuario_cadastro = :id_usuario_cada' +
        'stro, id_empresa = :id_empresa, '
      
        '  endereco_logradouro = :endereco_logradouro, endereco_numero = ' +
        ':endereco_numero, '
      
        '  endereco_bairro = :endereco_bairro, endereco_cidade = :enderec' +
        'o_cidade, endereco_uf = :endereco_uf, '
      
        '  endereco_cep = :endereco_cep, endereco_complemento = :endereco' +
        '_complemento, telefone1 = :telefone1, '
      
        '  telefone2 = :telefone2, celular1 = :celular1, celular2 = :celu' +
        'lar2, email = :email, site = :site, '
      
        '  cnpj = :cnpj, nome_contato1 = :nome_contato1, nome_contato2 = ' +
        ':nome_contato2, banco = :banco, '
      
        '  agencia = :agencia, conta = :conta, data_cadastro = :data_cada' +
        'stro, cpf = :cpf, '
      
        '  tipo_pessoa = :tipo_pessoa, codigo_municipio = :codigo_municip' +
        'io, codigo_ibge = :codigo_ibge, '
      
        '  cnae = :cnae, inscricao_estadual = :inscricao_estadual, inscri' +
        'cao_municipal = :inscricao_municipal, '
      '  observacoes = :observacoes, id_situacao = :id_situacao'
      'WHERE'
      
        '  id_fornecedor = :Old_id_fornecedor AND id_empresa = :Old_id_em' +
        'presa')
    SQLLock.Strings = (
      'SELECT * FROM fornecedor'
      'WHERE'
      
        '  id_fornecedor = :Old_id_fornecedor AND id_empresa = :Old_id_em' +
        'presa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_fornecedor, nome_fantasia, razao_social, id_usuario_ca' +
        'dastro, id_empresa, endereco_logradouro, endereco_numero, endere' +
        'co_bairro, endereco_cidade, endereco_uf, endereco_cep, endereco_' +
        'complemento, telefone1, telefone2, celular1, celular2, email, si' +
        'te, cnpj, nome_contato1, nome_contato2, banco, agencia, conta, d' +
        'ata_cadastro, cpf, tipo_pessoa, codigo_municipio, codigo_ibge, c' +
        'nae, inscricao_estadual, inscricao_municipal, observacoes FROM f' +
        'ornecedor'
      'WHERE'
      '  id_fornecedor = :id_fornecedor AND id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM fornecedor'
      ''
      ') t')
    SQL.Strings = (
      'select '
      'id_fornecedor, '
      'nome_fantasia, '
      'razao_social, '
      'id_usuario_cadastro, '
      'id_empresa, '
      'endereco_logradouro, '
      'endereco_numero, '
      'endereco_bairro, '
      'endereco_cidade, '
      'endereco_uf, '
      'endereco_cep, '
      'endereco_complemento, '
      'id_cidade,'
      'telefone1, '
      'telefone2, '
      'celular1, '
      'celular2, '
      'email, '
      'site, '
      'cnpj, '
      'nome_contato1, '
      'nome_contato2, '
      'banco, '
      'agencia, '
      'conta, '
      'data_cadastro, '
      'cpf, '
      'tipo_pessoa, '
      'codigo_municipio, '
      'codigo_ibge, '
      'cnae, '
      'inscricao_estadual, '
      'inscricao_municipal,'
      'observacoes,'
      'id_situacao '
      'from fornecedor'
      'where '
      'id_fornecedor = :id_fornecedor  and id_empresa=:id_empresa')
    IndexFieldNames = 'id_fornecedor'
    OnNewRecord = qrCadastroNewRecord
    Left = 512
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_fornecedor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastroid_fornecedor: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_fornecedor'
    end
    object qrCadastronome_fantasia: TWideStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nome_fantasia'
      Required = True
      Size = 100
    end
    object qrCadastrorazao_social: TWideStringField
      DisplayLabel = 'Raz'#227'o social'
      FieldName = 'razao_social'
      Required = True
      Size = 100
    end
    object qrCadastroid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      Required = True
    end
    object qrCadastroid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrCadastroendereco_logradouro: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco_logradouro'
      Size = 100
    end
    object qrCadastroendereco_numero: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'endereco_numero'
    end
    object qrCadastroendereco_bairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'endereco_bairro'
      Size = 100
    end
    object qrCadastroendereco_cidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'endereco_cidade'
      Size = 100
    end
    object qrCadastroendereco_uf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'endereco_uf'
      Size = 2
    end
    object qrCadastroendereco_cep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'endereco_cep'
      OnChange = qrCadastroendereco_cepChange
      Size = 9
    end
    object qrCadastroendereco_complemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'endereco_complemento'
      Size = 100
    end
    object qrCadastrotelefone1: TWideStringField
      DisplayLabel = 'Telefone 1'
      FieldName = 'telefone1'
    end
    object qrCadastrotelefone2: TWideStringField
      DisplayLabel = 'Telefone 2'
      FieldName = 'telefone2'
    end
    object qrCadastrocelular1: TWideStringField
      DisplayLabel = 'Celular 1'
      FieldName = 'celular1'
    end
    object qrCadastrocelular2: TWideStringField
      DisplayLabel = 'Celular 2'
      FieldName = 'celular2'
    end
    object qrCadastroemail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object qrCadastrosite: TWideStringField
      DisplayLabel = 'Site'
      FieldName = 'site'
      Size = 100
    end
    object qrCadastrocnpj: TWideStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      OnChange = qrCadastrocnpjChange
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object qrCadastronome_contato1: TWideStringField
      DisplayLabel = 'Nome contato 1'
      FieldName = 'nome_contato1'
      Size = 100
    end
    object qrCadastronome_contato2: TWideStringField
      DisplayLabel = 'Nome contato 2'
      FieldName = 'nome_contato2'
      Size = 100
    end
    object qrCadastrobanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
      Size = 100
    end
    object qrCadastroagencia: TWideStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'agencia'
    end
    object qrCadastroconta: TWideStringField
      DisplayLabel = 'Conta'
      FieldName = 'conta'
    end
    object qrCadastrodata_cadastro: TDateTimeField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'data_cadastro'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrCadastrocpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      OnChange = qrCadastrocpfChange
      EditMask = '999.999.999-99;0;_'
      Size = 11
    end
    object qrCadastrotipo_pessoa: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_pessoa'
      Required = True
      OnChange = qrCadastrotipo_pessoaChange
      FixedChar = True
      Size = 1
    end
    object qrCadastrocodigo_municipio: TWideStringField
      DisplayLabel = 'C'#243'digo do munic'#237'pio'
      FieldName = 'codigo_municipio'
    end
    object qrCadastrocodigo_ibge: TWideStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'codigo_ibge'
    end
    object qrCadastrocnae: TWideStringField
      DisplayLabel = 'CNAE'
      FieldName = 'cnae'
    end
    object qrCadastroinscricao_estadual: TWideStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'inscricao_estadual'
    end
    object qrCadastroinscricao_municipal: TWideStringField
      DisplayLabel = 'Inscri'#231#227'o municipal'
      FieldName = 'inscricao_municipal'
    end
    object qrCadastroobservacoes: TWideMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacoes'
      BlobType = ftWideMemo
    end
    object qrCadastroid_cidade: TIntegerField
      FieldName = 'id_cidade'
      OnChange = qrCadastroid_cidadeChange
    end
    object qrCadastroid_situacao: TIntegerField
      FieldName = 'id_situacao'
      Required = True
    end
  end
  inherited jvdsCadastro: TJvDataSource
    Left = 592
    Top = 16
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 312
    Top = 24
    object DataSetFirst1: TDataSetFirst
      Category = 'Dados'
      Caption = 'DataSetFirst1'
      Enabled = False
      Hint = 'Primeiro|Move para o primeiro registro'
      ImageIndex = 3
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dados'
      Caption = 'DataSetPrior1'
      Enabled = False
      Hint = 'Anterior|Move para o registro anterior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dados'
      Caption = 'DataSetNext1'
      Enabled = False
      Hint = 'Pr'#243'ximo|Move para o pr'#243'ximo registro'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dados'
      Caption = 'DataSetLast1'
      Enabled = False
      Hint = #218'ltimo|Move para o pr'#243'ximo registro'
      ImageIndex = 4
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dados'
      Caption = 'DataSetInsert1'
      Enabled = False
      Hint = 'Incluir|Permite a inclus'#227'o de um novo registro'
      ImageIndex = 15
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dados'
      Caption = 'DataSetDelete1'
      Enabled = False
      Hint = 'Excluir|Permite a exclus'#227'o do registro atual'
      ImageIndex = 0
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dados'
      Caption = 'DataSetEdit1'
      Enabled = False
      Hint = 'Editar|Permite a altera'#231#227'o do registro atual'
      ImageIndex = 17
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dados'
      Caption = 'DataSetRefresh1'
      Enabled = False
      Hint = 
        'Atualizar|Atualiza o registro com os dados gravados no banco de ' +
        'dados'
      ImageIndex = 16
      ShortCut = 116
    end
    object act_confirmar: TAction
      Category = 'padrao'
      Caption = 'act_confirmar'
      Hint = 'Confirmar'
      ImageIndex = 5
    end
    object act_cancelar: TAction
      Category = 'padrao'
      Caption = 'act_cancelar'
      Hint = 'Cancelar'
      ImageIndex = 6
    end
    object acBuscaCEP: TAction
      Caption = 'acBuscaCEP'
      ImageIndex = 0
      OnExecute = acBuscaCEPExecute
    end
    object acBuscaCidade: TAction
      Caption = 'acBuscaCidade'
      ImageIndex = 0
      OnExecute = acBuscaCidadeExecute
    end
  end
end
