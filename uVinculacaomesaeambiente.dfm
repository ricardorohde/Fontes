inherited frmVinculacaomesaeambiente: TfrmVinculacaomesaeambiente
  Caption = 'Vincula'#231#227'o mesa e ambiente'
  ClientHeight = 276
  ClientWidth = 575
  OnCreate = FormCreate
  ExplicitWidth = 581
  ExplicitHeight = 305
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 575
    Height = 227
    ExplicitWidth = 575
    ExplicitHeight = 227
    FullHeight = 200
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 65
      Height = 16
      Caption = 'Ambiente 1'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 62
      Width = 65
      Height = 16
      Caption = 'Ambiente 2'
      FocusControl = cxDBTextEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 116
      Width = 65
      Height = 16
      Caption = 'Ambiente 3'
      FocusControl = cxDBTextEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 170
      Width = 65
      Height = 16
      Caption = 'Ambiente 4'
      FocusControl = cxDBTextEdit4
    end
    object Label5: TLabel
      Left = 225
      Top = 8
      Width = 88
      Height = 16
      Caption = 'Faixa de Mesas'
      FocusControl = cxDBTextEdit1
    end
    object Label6: TLabel
      Left = 204
      Top = 35
      Width = 15
      Height = 16
      Caption = 'De'
    end
    object Label7: TLabel
      Left = 331
      Top = 35
      Width = 7
      Height = 16
      Caption = 'a'
    end
    object Label8: TLabel
      Left = 204
      Top = 89
      Width = 15
      Height = 16
      Caption = 'De'
    end
    object Label9: TLabel
      Left = 331
      Top = 89
      Width = 7
      Height = 16
      Caption = 'a'
    end
    object Label10: TLabel
      Left = 204
      Top = 143
      Width = 15
      Height = 16
      Caption = 'De'
    end
    object Label11: TLabel
      Left = 331
      Top = 143
      Width = 7
      Height = 16
      Caption = 'a'
    end
    object Label12: TLabel
      Left = 204
      Top = 197
      Width = 15
      Height = 16
      Caption = 'De'
    end
    object Label13: TLabel
      Left = 331
      Top = 197
      Width = 7
      Height = 16
      Caption = 'a'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 8
      Top = 30
      DataBinding.DataField = 'ambiente1'
      DataBinding.DataSource = dsAmbiente
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 190
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 8
      Top = 84
      DataBinding.DataField = 'ambiente2'
      DataBinding.DataSource = dsAmbiente
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 190
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 8
      Top = 138
      DataBinding.DataField = 'ambiente3'
      DataBinding.DataSource = dsAmbiente
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 190
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 8
      Top = 192
      DataBinding.DataField = 'ambiente4'
      DataBinding.DataSource = dsAmbiente
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 190
    end
    object edamb1inicial: TSpinEdit
      Left = 225
      Top = 30
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object edamb1final: TSpinEdit
      Left = 344
      Top = 30
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object edamb3final: TSpinEdit
      Left = 344
      Top = 138
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 9
      Value = 0
    end
    object edamb2final: TSpinEdit
      Left = 344
      Top = 84
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object edamb3inicial: TSpinEdit
      Left = 225
      Top = 138
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 8
      Value = 0
    end
    object edamb2inicial: TSpinEdit
      Left = 225
      Top = 84
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object edamb4inicial: TSpinEdit
      Left = 225
      Top = 192
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 12
      Value = 0
    end
    object edamb4final: TSpinEdit
      Left = 344
      Top = 192
      Width = 100
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 13
      Value = 0
    end
    object btNaoUtilizarAmb2: TAdvGlowButton
      AlignWithMargins = True
      Left = 447
      Top = 84
      Width = 122
      Height = 26
      Margins.Left = 0
      Caption = 'N'#227'o Utilizar'
      ImageIndex = 4
      Images = frmMenu.ImgList16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = btNaoUtilizarAmb2Click
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
    object btNaoUtilizarAmb3: TAdvGlowButton
      AlignWithMargins = True
      Left = 447
      Top = 138
      Width = 122
      Height = 26
      Margins.Left = 0
      Caption = 'N'#227'o Utilizar'
      ImageIndex = 4
      Images = frmMenu.ImgList16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 10
      OnClick = btNaoUtilizarAmb3Click
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
    object btNaoUtilizarAmb4: TAdvGlowButton
      AlignWithMargins = True
      Left = 447
      Top = 192
      Width = 122
      Height = 26
      Margins.Left = 0
      Caption = 'N'#227'o Utilizar'
      ImageIndex = 4
      Images = frmMenu.ImgList16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 14
      OnClick = btNaoUtilizarAmb4Click
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
  inherited pnBotoes: TFlowPanel
    Top = 227
    Width = 575
    ExplicitTop = 227
    ExplicitWidth = 575
    object btSalvar: TAdvGlowButton
      AlignWithMargins = True
      Left = 468
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
      TabOrder = 0
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
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 361
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
      TabOrder = 1
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
  end
  object qrAmbiente: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ambiente'
      '  (id_empresa, ambiente1, ambiente2, ambiente3, ambiente4)'
      'VALUES'
      '  (:id_empresa, :ambiente1, :ambiente2, :ambiente3, :ambiente4)')
    SQLDelete.Strings = (
      'DELETE FROM ambiente'
      'WHERE'
      '  id_empresa = :Old_id_empresa')
    SQLUpdate.Strings = (
      'UPDATE ambiente'
      'SET'
      
        '  id_empresa = :id_empresa, ambiente1 = :ambiente1, ambiente2 = ' +
        ':ambiente2, ambiente3 = :ambiente3, ambiente4 = :ambiente4'
      'WHERE'
      '  id_empresa = :Old_id_empresa')
    SQLLock.Strings = (
      'SELECT * FROM ambiente'
      'WHERE'
      '  id_empresa = :Old_id_empresa'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id_empresa, ambiente1, ambiente2, ambiente3, ambiente4 FR' +
        'OM ambiente'
      'WHERE'
      '  id_empresa = :id_empresa')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM ambiente'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      
        'select ambiente1, ambiente2, ambiente3, ambiente4, id_empresa fr' +
        'om ambiente where id_empresa=:id_empresa')
    OnNewRecord = qrAmbienteNewRecord
    Left = 544
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrAmbienteambiente1: TWideStringField
      DisplayLabel = 'Ambiente 1'
      FieldName = 'ambiente1'
      Size = 50
    end
    object qrAmbienteambiente2: TWideStringField
      DisplayLabel = 'Ambiente 2'
      FieldName = 'ambiente2'
      Size = 50
    end
    object qrAmbienteambiente3: TWideStringField
      DisplayLabel = 'Ambiente 3'
      FieldName = 'ambiente3'
      Size = 50
    end
    object qrAmbienteambiente4: TWideStringField
      DisplayLabel = 'Ambiente 4'
      FieldName = 'ambiente4'
      Size = 50
    end
    object qrAmbienteid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
  end
  object dsAmbiente: TDataSource
    DataSet = qrAmbiente
    Left = 488
    Top = 40
  end
end
