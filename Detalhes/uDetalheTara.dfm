inherited frmDetalheTara: TfrmDetalheTara
  Caption = 'Cadastro de Taras'
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
      Width = 55
      Height = 16
      Caption = 'Descricao'
      FocusControl = edDescricao
    end
    object Label4: TLabel
      Left = 409
      Top = 14
      Width = 54
      Height = 16
      Caption = 'Tara (kg)'
    end
    object edDescricao: TcxDBTextEdit
      Left = 82
      Top = 36
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dsTara
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
      Enabled = False
      TabOrder = 1
    end
    object edPeso: TcxDBCurrencyEdit
      Left = 409
      Top = 36
      DataBinding.DataField = 'peso'
      DataBinding.DataSource = dsTara
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.000;-0.000'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      OnKeyPress = edPesoKeyPress
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 92
    Width = 540
    ExplicitTop = 92
    ExplicitWidth = 540
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 433
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
      TabOrder = 0
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 326
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
      TabOrder = 1
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
      Left = 112
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
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 5
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
      TabOrder = 4
      OnClick = btCancelarClick
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
  object dsTara: TDataSource
    AutoEdit = False
    DataSet = qrTara
    OnDataChange = dsTaraDataChange
    Left = 192
    Top = 8
  end
  object qrTara: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO tara'
      '  (tar_001, emp_001, descricao, peso, sit_001)'
      'VALUES'
      '  (:tar_001, :emp_001, :descricao, :peso, :sit_001)')
    SQLDelete.Strings = (
      'DELETE FROM tara'
      'WHERE'
      '  tar_001 = :Old_tar_001 AND emp_001 = :Old_emp_001')
    SQLUpdate.Strings = (
      'UPDATE tara'
      'SET'
      
        '  tar_001 = :tar_001, emp_001 = :emp_001, descricao = :descricao' +
        ', peso = :peso, sit_001 = :sit_001'
      'WHERE'
      '  tar_001 = :Old_tar_001 AND emp_001 = :Old_emp_001')
    SQLLock.Strings = (
      'SELECT * FROM tara'
      'WHERE'
      '  tar_001 = :Old_tar_001 AND emp_001 = :Old_emp_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT tar_001, emp_001, descricao, peso, sit_001 FROM tara'
      'WHERE'
      '  tar_001 = :tar_001 AND emp_001 = :emp_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM tara'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select tar_001,'
      'emp_001,'
      'descricao,'
      'peso, '
      'sit_001'
      'from tara'
      'where tar_001 = :id_tara and emp_001=:id_empresa')
    BeforePost = qrTaraBeforePost
    OnNewRecord = qrTaraNewRecord
    Left = 240
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tara'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrTaratar_001: TIntegerField
      FieldName = 'tar_001'
      Required = True
    end
    object qrTaraemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrTaradescricao: TWideStringField
      FieldName = 'descricao'
      Required = True
    end
    object qrTarapeso: TFloatField
      FieldName = 'peso'
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
    end
    object qrTarasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
  end
end
