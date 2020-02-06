object frmCasanoturnacadastroclientes: TfrmCasanoturnacadastroclientes
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 575
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TAdvPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 575
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.4.1'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 200
    object pnBotoes: TFlowPanel
      Left = 0
      Top = 526
      Width = 877
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      Color = 12691076
      FlowStyle = fsRightLeftTopBottom
      ParentBackground = False
      TabOrder = 0
      object btCancelar: TAdvGlowButton
        AlignWithMargins = True
        Left = 770
        Top = 3
        Width = 104
        Height = 41
        Margins.Left = 0
        Caption = 'Cancelar'
        ImageIndex = 4
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        Appearance.BorderColor = clNavy
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
        MinButtonSizeState = bsLabel
      end
      object btSalvar: TAdvGlowButton
        AlignWithMargins = True
        Left = 663
        Top = 3
        Width = 104
        Height = 41
        Margins.Left = 0
        Caption = 'Salvar'
        ImageIndex = 1
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        TabStop = True
        OnClick = btSalvarClick
        Appearance.BorderColor = clNavy
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
        MinButtonSizeState = bsLabel
      end
      object btExcluir: TAdvGlowButton
        AlignWithMargins = True
        Left = 556
        Top = 3
        Width = 104
        Height = 41
        Margins.Left = 0
        Caption = 'Excluir'
        ImageIndex = 7
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btExcluirClick
        Appearance.BorderColor = clNavy
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
        MinButtonSizeState = bsLabel
      end
      object btEditar: TAdvGlowButton
        AlignWithMargins = True
        Left = 449
        Top = 3
        Width = 104
        Height = 41
        Margins.Left = 0
        Caption = 'Editar'
        ImageIndex = 15
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = btEditarClick
        Appearance.BorderColor = clNavy
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
        MinButtonSizeState = bsLabel
      end
      object btNovo: TAdvGlowButton
        AlignWithMargins = True
        Left = 342
        Top = 3
        Width = 104
        Height = 41
        Margins.Left = 0
        Caption = 'Novo'
        ImageIndex = 16
        Images = frmMenu.ImgList32
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btNovoClick
        Appearance.BorderColor = clNavy
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
        MinButtonSizeState = bsLabel
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 8
      Width = 876
      Height = 513
      ActivePage = pgDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object pgDados: TTabSheet
        Caption = 'Dados do Cliente'
        ExplicitLeft = 5
        ExplicitTop = 32
        object Label10: TLabel
          Left = 72
          Top = 48
          Width = 26
          Height = 18
          Caption = 'foto'
        end
        object AdvGroupBox1: TAdvGroupBox
          Left = 1
          Top = 0
          Width = 169
          Height = 249
          BorderColor = clNavy
          CaptionPosition = cpTopCenter
          Caption = 'Webcam'
          TabOrder = 0
          object cxDBImage1: TcxDBImage
            Left = 6
            Top = 19
            DataBinding.DataField = 'foto'
            DataBinding.DataSource = dsCadastro
            Properties.GraphicClassName = 'TJPEGImage'
            TabOrder = 0
            OnClick = cxDBImage1Click
            Height = 225
            Width = 159
          end
        end
        object AdvGroupBox2: TAdvGroupBox
          Left = 192
          Top = 19
          Width = 657
          Height = 249
          BorderColor = clNavy
          Caption = 'Dados Pessoais'
          TabOrder = 1
          object Label2: TLabel
            Left = 3
            Top = 25
            Width = 39
            Height = 18
            Caption = 'Nome'
          end
          object Label3: TLabel
            Left = 160
            Top = 81
            Width = 25
            Height = 18
            Caption = 'CPF'
            FocusControl = edCPF
          end
          object Label4: TLabel
            Left = 332
            Top = 82
            Width = 19
            Height = 18
            Caption = 'RG'
            FocusControl = edRG
          end
          object Label5: TLabel
            Left = 3
            Top = 81
            Width = 36
            Height = 18
            Caption = 'SEXO'
          end
          object Label1: TLabel
            Left = 426
            Top = 26
            Width = 110
            Height = 18
            Caption = 'Data nascimento'
            FocusControl = cxDBDateEdit1
          end
          object Label6: TLabel
            Left = 493
            Top = 81
            Width = 57
            Height = 18
            Caption = 'Telefone'
            FocusControl = cxDBTextEdit4
          end
          object Label7: TLabel
            Left = 3
            Top = 136
            Width = 38
            Height = 18
            Caption = 'E-mail'
            FocusControl = cxDBTextEdit5
          end
          object edCPF: TcxDBTextEdit
            Left = 154
            Top = 97
            DataBinding.DataField = 'cpf'
            DataBinding.DataSource = dsCadastro
            TabOrder = 3
            Width = 153
          end
          object edRG: TcxDBTextEdit
            Left = 332
            Top = 97
            DataBinding.DataField = 'rg'
            DataBinding.DataSource = dsCadastro
            TabOrder = 4
            Width = 145
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 424
            Top = 44
            DataBinding.DataField = 'data_nascimento'
            DataBinding.DataSource = dsCadastro
            TabOrder = 1
            Width = 153
          end
          object edSexo: TDBComboBox
            Left = 3
            Top = 97
            Width = 145
            Height = 26
            DataField = 'sexo'
            DataSource = dsCadastro
            Items.Strings = (
              'MASCULINO'
              'FEMININO')
            TabOrder = 2
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 493
            Top = 97
            DataBinding.DataField = 'celular1'
            DataBinding.DataSource = dsCadastro
            TabOrder = 5
            Width = 140
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 3
            Top = 152
            DataBinding.DataField = 'email'
            DataBinding.DataSource = dsCadastro
            TabOrder = 6
            Width = 478
          end
          object edNome: TcxDBTextEdit
            Left = 5
            Top = 44
            DataBinding.DataField = 'nome1'
            DataBinding.DataSource = dsCadastro
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 401
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Observa'#231#245'es'
        ImageIndex = 1
        object Label8: TLabel
          Left = 4
          Top = 7
          Width = 99
          Height = 18
          Caption = 'OBSERVA'#199#213'ES'
        end
        object DBMemo1: TDBMemo
          Left = 2
          Top = 28
          Width = 574
          Height = 185
          DataField = 'observacao'
          DataSource = dsCadastro
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Bloqueio de Cliente'
        ImageIndex = 2
        object Label9: TLabel
          Left = 3
          Top = 6
          Width = 154
          Height = 18
          Caption = 'STATUS DO CLIENTE: '
        end
        object btDesbloquear: TAdvGlowButton
          Left = 409
          Top = 220
          Width = 167
          Height = 51
          Caption = 'Desbloquear cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 0
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btDesbloquearClick
          Appearance.BorderColor = clNavy
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
        object btBloquear: TAdvGlowButton
          Left = 2
          Top = 220
          Width = 150
          Height = 51
          Caption = 'Bloquear cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 44
          Images = frmMenu.ImgList32
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btBloquearClick
          Appearance.BorderColor = clNavy
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
        object DBMemo2: TDBMemo
          Left = 2
          Top = 29
          Width = 574
          Height = 185
          DataField = 'obs_bloqueio'
          DataSource = dsCadastro
          TabOrder = 2
        end
      end
    end
  end
  object jvdsCadastro: TJvDataSource
    AutoEdit = False
    DataSet = qrCadastro
    Left = 280
    Top = 312
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = qrCadastro
    OnStateChange = dsCadastroStateChange
    Left = 216
    Top = 304
  end
  object qrCadastro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clientes'
      
        '  (cli_001, emp_001, cli_002, cli_004, cli_005, sit_001, observa' +
        'cao, celular1, data_nascimento, email, obs_bloqueio, sexo, foto)'
      'VALUES'
      
        '  (:cli_001, :emp_001, :cli_002, :cli_004, :cli_005, :sit_001, :' +
        'observacao, :celular1, :data_nascimento, :email, :obs_bloqueio, ' +
        ':sexo, :foto)')
    SQLDelete.Strings = (
      'DELETE FROM clientes'
      'WHERE'
      '  cli_001 = :Old_cli_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE clientes'
      'SET'
      
        '  cli_001 = :cli_001, emp_001 = :emp_001, cli_002 = :cli_002, cl' +
        'i_004 = :cli_004, cli_005 = :cli_005, sit_001 = :sit_001, observ' +
        'acao = :observacao, celular1 = :celular1, data_nascimento = :dat' +
        'a_nascimento, email = :email, obs_bloqueio = :obs_bloqueio, sexo' +
        ' = :sexo, foto = :foto'
      'WHERE'
      '  cli_001 = :Old_cli_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM clientes'
      'WHERE'
      '  cli_001 = :Old_cli_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT cli_001, emp_001, cli_002, cli_004, cli_005, sit_001, obs' +
        'ervacao, celular1, data_nascimento, email, obs_bloqueio, sexo, f' +
        'oto FROM clientes'
      'WHERE'
      '  cli_001 = :cli_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM clientes'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'SELECT CLI_001 , emp_001 ,cli_002 as nome1, CLI_004 AS CPF, CLI_' +
        '005 AS RG,SIT_001 ,'
      
        'SEXO, data_nascimento,celular1,email,observacao, obs_bloqueio,fo' +
        'to from clientes'
      'where cli_001=:cli_001 and emp_001=:id_empresa')
    OnNewRecord = qrCadastroNewRecord
    Left = 144
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cli_001'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrCadastrocpf: TWideStringField
      FieldName = 'cpf'
      Required = True
      OnChange = qrCadastrocpfChange
    end
    object qrCadastrorg: TWideStringField
      FieldName = 'rg'
      Required = True
    end
    object qrCadastrosexo: TWideStringField
      FieldName = 'sexo'
      Required = True
      Size = 1
    end
    object qrCadastrodata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object qrCadastrocelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrCadastroemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qrCadastrocli_001: TIntegerField
      FieldName = 'cli_001'
      Required = True
    end
    object qrCadastrosit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrCadastroemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrCadastroobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object qrCadastronome1: TWideStringField
      FieldName = 'nome1'
      Required = True
      Size = 90
    end
    object qrCadastroobs_bloqueio: TWideStringField
      FieldName = 'obs_bloqueio'
      Size = 200
    end
    object qrCadastrofoto: TBlobField
      FieldName = 'foto'
      BlobType = ftGraphic
    end
  end
end
