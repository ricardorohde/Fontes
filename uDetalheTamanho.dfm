inherited frmDetalheTamanho: TfrmDetalheTamanho
  Caption = 'Cadastro de Tamanho'
  ClientHeight = 219
  ClientWidth = 603
  Position = poScreenCenter
  ExplicitWidth = 609
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 16
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = cxDBTextEdit2
  end
  object Label1: TLabel [1]
    Left = 104
    Top = 47
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  inherited CoolBar1: TCoolBar
    Width = 603
    ExplicitWidth = 603
  end
  object cxDBTextEdit2: TcxDBTextEdit [3]
    Left = 16
    Top = 63
    AutoSize = False
    DataBinding.DataField = 'tam_001'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Properties.CharCase = ecUpperCase
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Height = 22
    Width = 73
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 104
    Top = 63
    AutoSize = False
    DataBinding.DataField = 'tam_002'
    DataBinding.DataSource = dsDetalhe
    Properties.CharCase = ecUpperCase
    TabOrder = 2
    Height = 22
    Width = 233
  end
  object gbusuarios: TGroupBox [5]
    Left = 378
    Top = 42
    Width = 214
    Height = 110
    Enabled = False
    TabOrder = 3
    object Label5: TLabel
      Left = -421
      Top = -95
      Width = 36
      Height = 13
      Caption = 'Edi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 4
      Top = 42
      Width = 71
      Height = 11
      Alignment = taRightJustify
      Caption = #218'ltima Altera'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object edDataUltimaAtualiz: TDBText
      Left = 77
      Top = 41
      Width = 133
      Height = 13
      DataField = 'dat_001_2'
      DataSource = dsDetalhe
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object edUsuUltimaAtualiz: TDBText
      Left = 77
      Top = 58
      Width = 133
      Height = 13
      DataField = 'edicao'
      DataSource = dsDetalhe
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 21
      Top = 59
      Width = 54
      Height = 11
      Alignment = taRightJustify
      Caption = 'Alterado por:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 12
      Top = 8
      Width = 63
      Height = 11
      Alignment = taRightJustify
      Caption = 'Data Cadastro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object edDataCadastro: TDBText
      Left = 77
      Top = 8
      Width = 133
      Height = 13
      DataField = 'dat_001_1'
      DataSource = dsDetalhe
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 24
      Width = 67
      Height = 11
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Cadastrado por:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object edUsuCadastrado: TDBText
      Left = 77
      Top = 24
      Width = 133
      Height = 13
      DataField = 'inclusao'
      DataSource = dsDetalhe
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 3
      Top = 83
      Width = 208
      Height = 13
      Alignment = taCenter
      DataField = 'situacao'
      DataSource = dsDetalhe
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Small Fonts'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tamanho'
      '  (tam_001, tam_002, usu_001_1, usu_001_2, dat_001_1, dat_001_2)'
      'VALUES'
      
        '  (:tam_001, :tam_002, :usu_001_1, :usu_001_2, :dat_001_1, :dat_' +
        '001_2)')
    SQLDelete.Strings = (
      'DELETE FROM tamanho'
      'WHERE'
      '  tam_001 = :Old_tam_001')
    SQLUpdate.Strings = (
      'UPDATE tamanho'
      'SET'
      
        '  tam_001 = :tam_001, tam_002 = :tam_002, usu_001_1 = :usu_001_1' +
        ', usu_001_2 = :usu_001_2, dat_001_1 = :dat_001_1, dat_001_2 = :d' +
        'at_001_2'
      'WHERE'
      '  tam_001 = :Old_tam_001')
    SQLLock.Strings = (
      'SELECT * FROM tamanho'
      'WHERE'
      '  tam_001 = :Old_tam_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT tam_001, tam_002, usu_001_1, usu_001_2, dat_001_1, dat_00' +
        '1_2 FROM tamanho'
      'WHERE'
      '  tam_001 = :tam_001')
    SQL.Strings = (
      'SELECT TAM.TAM_001,'
      '       TAM.TAM_002,'
      '       USU_1.USU_002 AS INCLUSAO,'
      '       USU_2.USU_002 AS EDICAO,'
      '       TAM.DAT_001_1,'
      '       TAM.DAT_001_2,'
      '       TAM.USU_001_1,'
      '       TAM.USU_001_2,'
      
        '       CAST(FN_SITUACOES(TAM.SIT_001) AS VARCHAR(40)) AS SITUACA' +
        'O'
      ''
      'FROM TAMANHO TAM'
      
        'LEFT OUTER JOIN USUARIOS USU_1 ON (USU_1.USU_001 = TAM.USU_001_1' +
        ')'
      
        'LEFT OUTER JOIN USUARIOS USU_2 ON (USU_2.USU_001 = TAM.USU_001_2' +
        ')'
      ''
      'WHERE TAM.TAM_001 = :ID')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    object qrDetalhetam_001: TIntegerField
      FieldName = 'tam_001'
      Required = True
      OnGetText = qrDetalhetam_001GetText
    end
    object qrDetalhetam_002: TWideStringField
      FieldName = 'tam_002'
      Required = True
      Size = 40
    end
    object qrDetalheinclusao: TWideStringField
      FieldName = 'inclusao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrDetalheedicao: TWideStringField
      FieldName = 'edicao'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qrDetalhedat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrDetalhedat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrDetalheusu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrDetalheusu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrDetalhesituacao: TWideStringField
      FieldName = 'situacao'
      ReadOnly = True
      Size = 40
    end
  end
end
