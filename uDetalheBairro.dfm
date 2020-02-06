inherited frmDetalheBairro: TfrmDetalheBairro
  Caption = 'Cadastro de Bairros'
  ClientHeight = 141
  ClientWidth = 540
  ExplicitWidth = 546
  ExplicitHeight = 170
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 540
    Height = 92
    ExplicitWidth = 540
    ExplicitHeight = 92
    FullHeight = 200
    object Label1: TLabel
      Left = 18
      Top = 14
      Width = 39
      Height = 16
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 82
      Top = 14
      Width = 34
      Height = 16
      Caption = 'Bairro'
      FocusControl = edBairro
    end
    object Label4: TLabel
      Left = 409
      Top = 14
      Width = 28
      Height = 16
      Caption = 'Taxa'
    end
    object edBairro: TcxDBTextEdit
      Left = 82
      Top = 36
      DataBinding.DataField = 'bai_002'
      DataBinding.DataSource = dsBairro
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 321
    end
    object DBEdit1: TDBEdit
      Left = 18
      Top = 36
      Width = 57
      Height = 24
      TabStop = False
      Color = 14997705
      DataField = 'bai_001'
      DataSource = dsBairro
      Enabled = False
      TabOrder = 2
    end
    object edTaxa: TcxDBCurrencyEdit
      Left = 409
      Top = 36
      DataBinding.DataField = 'bai_003'
      DataBinding.DataSource = dsBairro
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnKeyPress = edTaxaKeyPress
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 92
    Width = 540
    ExplicitTop = 92
    ExplicitWidth = 540
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 433
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
      OnClick = btCancelarClick
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
      Left = 326
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
      TabOrder = 1
      OnClick = btSalvarClick
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
      Left = 219
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
      TabOrder = 2
      OnClick = btExcluirClick
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
      Left = 112
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
      TabOrder = 3
      OnClick = btEditarClick
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
      Left = 5
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
  object qrBairro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO bairro'
      
        '  (bai_001, emp_001, bai_002, bai_003, sit_001, usu_001_1, usu_0' +
        '01_2, usu_001_3, dat_001_1, dat_001_2, dat_001_3)'
      'VALUES'
      
        '  ((select coalesce(max(bai_001),0)+1 from bairro where emp_001=' +
        ':emp_001 ), '
      
        '   :emp_001, :bai_002, :bai_003, 4, :usu_001_1, :usu_001_2, :usu' +
        '_001_3, :dat_001_1, :dat_001_2, :dat_001_3)')
    SQLDelete.Strings = (
      'DELETE FROM bairro'
      'WHERE'
      '  bai_001 = :Old_bai_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE bairro'
      'SET'
      
        '  bai_001 = :bai_001, emp_001 = :emp_001, bai_002 = :bai_002, ba' +
        'i_003 = :bai_003, sit_001 = :sit_001, usu_001_1 = :usu_001_1, us' +
        'u_001_2 = :usu_001_2, usu_001_3 = :usu_001_3, dat_001_1 = :dat_0' +
        '01_1, dat_001_2 = :dat_001_2, dat_001_3 = :dat_001_3'
      'WHERE'
      '  bai_001 = :Old_bai_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM bairro'
      'WHERE'
      '  bai_001 = :Old_bai_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT bai_001, emp_001, bai_002, bai_003, sit_001, usu_001_1, u' +
        'su_001_2, usu_001_3, dat_001_1, dat_001_2, dat_001_3 FROM bairro'
      'WHERE'
      '  bai_001 = :bai_001 AND emp_001 = :emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select bai_001,'
      'emp_001,'
      'bai_002 ,'
      'bai_003 ,'
      'sit_001,'
      'usu_001_1 ,'
      'usu_001_2 ,'
      'usu_001_3 ,'
      'dat_001_1,'
      'dat_001_2,'
      'dat_001_3,'
      'cast(fn_situacoes(sit_001) as varchar(100)) as status_desc'
      'from bairro'
      'where bai_001 = :id_bairro and emp_001=:id_empresa')
    BeforePost = qrBairroBeforePost
    OnNewRecord = qrBairroNewRecord
    Left = 240
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_bairro'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrBairrobai_001: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bai_001'
      Required = True
    end
    object qrBairroemp_001: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'emp_001'
      Required = True
    end
    object qrBairrobai_002: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bai_002'
      Required = True
      Size = 60
    end
    object qrBairrobai_003: TFloatField
      DisplayLabel = 'Taxa'
      FieldName = 'bai_003'
      Required = True
    end
    object qrBairrosit_001: TIntegerField
      FieldName = 'sit_001'
    end
    object qrBairrousu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrBairrousu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrBairrousu_001_3: TIntegerField
      FieldName = 'usu_001_3'
    end
    object qrBairrodat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrBairrodat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrBairrodat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
    object qrBairrostatus_desc: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status_desc'
      ReadOnly = True
      Size = 100
    end
  end
  object dsBairro: TDataSource
    AutoEdit = False
    DataSet = qrBairro
    OnDataChange = dsBairroDataChange
    Left = 192
    Top = 8
  end
end
