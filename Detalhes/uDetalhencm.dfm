inherited frmDetalhencm: TfrmDetalhencm
  Caption = 'CADASTRO DE NCM'
  ClientHeight = 137
  ClientWidth = 539
  OnShow = FormShow
  ExplicitWidth = 545
  ExplicitHeight = 166
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 539
    Height = 88
    ExplicitWidth = 539
    ExplicitHeight = 88
    FullHeight = 200
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 46
      Height = 16
      Caption = 'C'#211'DIGO'
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 68
      Height = 16
      Caption = 'DESCRI'#199#195'O'
      FocusControl = dbDescricao
    end
    object dbDescricao: TcxDBTextEdit
      Left = 176
      Top = 32
      DataBinding.DataField = 'ncm_descricao'
      DataBinding.DataSource = dsNcm
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 200
    end
    object dbCodigo: TcxDBTextEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'ncm_codigo'
      DataBinding.DataSource = dsNcm
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = dbCodigoKeyPress
      Width = 121
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 88
    Width = 539
    ExplicitTop = 88
    ExplicitWidth = 539
  end
  object btNovo: TAdvGlowButton
    AlignWithMargins = True
    Left = 428
    Top = 90
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
    TabOrder = 2
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
    Left = 321
    Top = 90
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
    Left = 214
    Top = 90
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
    TabOrder = 4
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
    Left = 107
    Top = 90
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
    TabOrder = 5
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
    Left = 0
    Top = 90
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
    TabOrder = 6
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
  object qrNcm: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ncm'
      '  (ncm_codigo, ncm_descricao)'
      'VALUES'
      '  (:ncm_codigo, :ncm_descricao)')
    SQLDelete.Strings = (
      '  DELETE FROM ncm'
      'WHERE'
      ' ncm_codigo=:ncm_codigo')
    SQLUpdate.Strings = (
      ' UPDATE ncm'
      'SET'
      '  ncm_codigo = :ncm_codigo, ncm_descricao = :ncm_descricao'
      'WHERE'
      ' ncm_codigo=:ncm_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM ncm'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select ncm_codigo,ncm_descricao from ncm where ncm_codigo=:ncm_c' +
        'odigo')
    Left = 488
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncm_codigo'
        Value = nil
      end>
    object qrNcmncm_codigo: TWideStringField
      FieldName = 'ncm_codigo'
      Required = True
      Size = 10
    end
    object qrNcmncm_descricao: TWideStringField
      FieldName = 'ncm_descricao'
      Size = 500
    end
  end
  object dsNcm: TDataSource
    DataSet = qrNcm
    Left = 456
    Top = 32
  end
  object qrAux1: TUniQuery
    Connection = frmMenu.conexao
    Left = 391
    Top = 6
  end
end
