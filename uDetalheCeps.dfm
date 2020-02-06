inherited frmDetalheCeps: TfrmDetalheCeps
  Caption = 'Cadastro de CEPs'
  ClientHeight = 196
  ClientWidth = 667
  ExplicitWidth = 673
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 50
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = cxDBTextEdit6
  end
  object Label2: TLabel [1]
    Left = 102
    Top = 49
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [2]
    Left = 199
    Top = 49
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = cxDBTextEdit2
  end
  object Label4: TLabel [3]
    Left = 18
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = cxDBTextEdit3
  end
  object Label20: TLabel [4]
    Left = 18
    Top = 147
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = edCidade
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel [5]
    Left = 338
    Top = 147
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = cxDBTextEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label28: TLabel [6]
    Left = 378
    Top = 147
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
    FocusControl = cxDBTextEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited CoolBar1: TCoolBar
    Width = 667
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 667
      end>
    ExplicitWidth = 667
    inherited pnPadrao: TPanel
      Width = 667
      ExplicitWidth = 667
      inherited tBarPadrao: TToolBar
        Width = 667
        ExplicitWidth = 667
      end
    end
  end
  object cxDBTextEdit6: TcxDBTextEdit [8]
    Left = 18
    Top = 65
    AutoSize = False
    DataBinding.DataField = 'cep_001'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 7
    Height = 22
    Width = 78
  end
  object cxDBTextEdit2: TcxDBTextEdit [9]
    Left = 199
    Top = 65
    AutoSize = False
    DataBinding.DataField = 'cep_003'
    DataBinding.DataSource = dsDetalhe
    Properties.CharCase = ecUpperCase
    TabOrder = 1
    Height = 22
    Width = 314
  end
  object cxDBTextEdit3: TcxDBTextEdit [10]
    Left = 18
    Top = 112
    AutoSize = False
    DataBinding.DataField = 'cep_004'
    DataBinding.DataSource = dsDetalhe
    Properties.CharCase = ecUpperCase
    TabOrder = 2
    Height = 22
    Width = 455
  end
  object cxDBTextEdit7: TcxDBTextEdit [11]
    Left = 90
    Top = 162
    AutoSize = False
    DataBinding.DataField = 'cid_002'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 4
    Height = 22
    Width = 238
  end
  object cxDBTextEdit8: TcxDBTextEdit [12]
    Left = 338
    Top = 162
    AutoSize = False
    DataBinding.DataField = 'est_003'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 5
    Height = 22
    Width = 28
  end
  object cxDBTextEdit9: TcxDBTextEdit [13]
    Left = 378
    Top = 162
    AutoSize = False
    DataBinding.DataField = 'pai_002'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 6
    Height = 22
    Width = 272
  end
  object cxDBTextEdit1: TDBEdit [14]
    Left = 102
    Top = 65
    Width = 88
    Height = 22
    AutoSize = False
    CharCase = ecUpperCase
    DataField = 'cep_002'
    DataSource = dsDetalhe
    TabOrder = 0
  end
  object edCidade: TcxDBButtonEdit [15]
    Tag = 20
    Left = 18
    Top = 162
    Margins.Left = 4
    Margins.Top = 1
    AutoSize = False
    DataBinding.DataField = 'cid_001'
    DataBinding.DataSource = dsDetalhe
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.CharCase = ecUpperCase
    Properties.Images = frmMenu.cxImageList1
    TabOrder = 3
    Height = 22
    Width = 70
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CEPS(CEP_001, CEP_002, CEP_003, CEP_004, CID_001)'
      'VALUES(:CEP_001, :CEP_002, :CEP_003, :CEP_004, :CID_001)')
    SQLUpdate.Strings = (
      'UPDATE CEPS SET'
      '  CEP_002 = :CEP_002,'
      '  CEP_003 = :CEP_003,'
      '  CEP_004 = :CEP_004'
      ''
      'WHERE CEP_001 = :CEP_001')
    SQL.Strings = (
      'SELECT CEP.CEP_001,'
      '       CEP.CEP_002,'
      '       CEP.CEP_003,'
      '       CEP.CEP_004,'
      '       CEP.CID_001,'
      '       CID.CID_002,'
      '       EST.EST_003,'
      '       PAI.PAI_002'
      ''
      'FROM CEPS CEP'
      'LEFT OUTER JOIN CIDADES CID ON (CID.CID_001 = CEP.CID_001)'
      'LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001)'
      'LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)'
      ''
      'WHERE CEP.CEP_001 = :ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object qrDetalhecep_001: TIntegerField
      FieldName = 'cep_001'
      Required = True
      OnGetText = qrDetalhecep_001GetText
    end
    object qrDetalhecep_002: TWideStringField
      FieldName = 'cep_002'
      Required = True
      Size = 9
    end
    object qrDetalhecep_003: TWideStringField
      FieldName = 'cep_003'
      Required = True
      Size = 50
    end
    object qrDetalhecep_004: TWideStringField
      FieldName = 'cep_004'
      Required = True
      Size = 80
    end
    object qrDetalhecid_001: TIntegerField
      FieldName = 'cid_001'
      Required = True
    end
    object qrDetalhecid_002: TWideStringField
      FieldName = 'cid_002'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrDetalheest_003: TWideStringField
      FieldName = 'est_003'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 2
    end
    object qrDetalhepai_002: TWideStringField
      FieldName = 'pai_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
end
