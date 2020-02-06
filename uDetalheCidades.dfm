inherited frmDetalheCidades: TfrmDetalheCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 156
  ClientWidth = 552
  ExplicitWidth = 558
  ExplicitHeight = 184
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = cxDBTextEdit4
  end
  object Label2: TLabel [1]
    Left = 109
    Top = 47
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [2]
    Left = 413
    Top = 47
    Width = 94
    Height = 13
    Caption = 'C'#243'digo do Munic'#237'pio'
    FocusControl = cxDBTextEdit2
  end
  object Label9: TLabel [3]
    Left = 16
    Top = 93
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = edEstado
  end
  object Label10: TLabel [4]
    Left = 328
    Top = 93
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
    FocusControl = cxDBTextEdit5
  end
  inherited CoolBar1: TCoolBar
    Width = 552
    Bands = <
      item
        Break = False
        Control = pnPadrao
        FixedSize = True
        ImageIndex = -1
        MinHeight = 34
        Width = 553
      end>
    ExplicitWidth = 552
    inherited pnPadrao: TPanel
      Width = 552
      ExplicitWidth = 552
      inherited tBarPadrao: TToolBar
        Width = 552
        ExplicitWidth = 552
      end
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [6]
    Left = 109
    Top = 63
    AutoSize = False
    DataBinding.DataField = 'cid_002'
    DataBinding.DataSource = dsDetalhe
    Properties.CharCase = ecUpperCase
    TabOrder = 0
    Height = 22
    Width = 284
  end
  object cxDBTextEdit2: TcxDBTextEdit [7]
    Left = 413
    Top = 63
    AutoSize = False
    DataBinding.DataField = 'cid_003'
    DataBinding.DataSource = dsDetalhe
    Properties.CharCase = ecUpperCase
    TabOrder = 1
    Height = 22
    Width = 121
  end
  object cxDBTextEdit3: TcxDBTextEdit [8]
    Left = 94
    Top = 108
    AutoSize = False
    DataBinding.DataField = 'est_002'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 4
    Height = 22
    Width = 228
  end
  object cxDBTextEdit4: TcxDBTextEdit [9]
    Left = 16
    Top = 63
    AutoSize = False
    DataBinding.DataField = 'cid_001'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 5
    Height = 22
    Width = 78
  end
  object cxDBTextEdit5: TcxDBTextEdit [10]
    Left = 328
    Top = 108
    AutoSize = False
    DataBinding.DataField = 'pai_002'
    DataBinding.DataSource = dsDetalhe
    ParentColor = True
    Style.BorderStyle = ebsNone
    Style.Shadow = False
    TabOrder = 6
    Height = 22
    Width = 206
  end
  object edEstado: TcxDBButtonEdit [11]
    Tag = 4
    Left = 16
    Top = 108
    Margins.Left = 4
    Margins.Top = 1
    AutoSize = False
    DataBinding.DataField = 'est_001'
    DataBinding.DataSource = dsDetalhe
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.CharCase = ecUpperCase
    Properties.Images = frmMenu.cxImageList1
    TabOrder = 2
    Height = 22
    Width = 72
  end
  inherited qrDetalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CIDADES(CID_001, CID_002, CID_003, EST_001)'
      'VALUES(:CID_001, :CID_002, :CID_003, :EST_001)')
    SQLUpdate.Strings = (
      'UPDATE CIDADES SET'
      '  CID_002 = :CID_002, '
      '  CID_003 = :CID_003, '
      '  EST_001 = :EST_001'
      ''
      'WHERE CID_001 = :CID_001')
    SQL.Strings = (
      'SELECT CID.CID_001,'
      '       CID.CID_002,'
      '       CID.CID_003,'
      '       CID.EST_001,'
      '       EST.EST_002,'
      '       PAI.PAI_002'
      ''
      'FROM CIDADES CID '
      'LEFT OUTER JOIN ESTADOS EST ON (EST.EST_001 = CID.EST_001)'
      'LEFT OUTER JOIN PAISES PAI ON (PAI.PAI_001 = EST.PAI_001)'
      ''
      'WHERE CID.CID_001 = :ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object qrDetalhecid_001: TIntegerField
      FieldName = 'cid_001'
      Required = True
      OnGetText = qrDetalhecid_001GetText
    end
    object qrDetalhecid_002: TWideStringField
      FieldName = 'cid_002'
      Required = True
      Size = 60
    end
    object qrDetalhecid_003: TWideStringField
      FieldName = 'cid_003'
      Size = 10
    end
    object qrDetalheest_001: TIntegerField
      FieldName = 'est_001'
      Required = True
    end
    object qrDetalhepai_002: TWideStringField
      FieldName = 'pai_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrDetalheest_002: TWideStringField
      FieldName = 'est_002'
      ReadOnly = True
      Required = True
      Size = 40
    end
  end
end
