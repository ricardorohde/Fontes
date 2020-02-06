object frmControleMesaPessoas: TfrmControleMesaPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Mesa - Pessoas'
  ClientHeight = 300
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 251
    Width = 396
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 277
      Top = 3
      Width = 116
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
      OnClick = btCancelaClick
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
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 158
      Top = 3
      Width = 116
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
      OnClick = btConfirmaClick
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
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 396
    Height = 251
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
    object AdvGroupBox3: TAdvGroupBox
      Left = 10
      Top = 10
      Width = 373
      Height = 132
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 60
        Width = 138
        Height = 19
        Caption = 'Qtde. de pessoas'
        FocusControl = edQtdePessoas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 203
        Top = 60
        Width = 116
        Height = 19
        Caption = 'CPF do cliente'
        FocusControl = cxDBTextEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCliente: TLabel
        Left = 89
        Top = 19
        Width = 48
        Height = 19
        Caption = 'Cliente'
      end
      object edQtdePessoas: TcxDBSpinEdit
        Left = 14
        Top = 93
        DataBinding.DataField = 'nro_pessoas'
        DataBinding.DataSource = dsVenda
        Properties.MaxValue = 99.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 68
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 203
        Top = 93
        DataBinding.DataField = 'cpf_cliente'
        DataBinding.DataSource = dsVenda
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 153
      end
      object edCodCliente: TcxDBButtonEdit
        Left = 14
        Top = 16
        DataBinding.DataField = 'cli_001'
        DataBinding.DataSource = dsVenda
        Properties.Buttons = <
          item
            Action = acBuscaCliente
            Default = True
            Kind = bkGlyph
          end>
        Properties.Images = frmMenu.ImgList16
        TabOrder = 2
        Width = 69
      end
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 10
      Top = 148
      Width = 373
      Height = 95
      BorderColor = clNavy
      RoundEdges = True
      TabOrder = 1
      object Label2: TLabel
        Left = 112
        Top = 37
        Width = 69
        Height = 19
        Caption = 'Masculino'
        FocusControl = cxDBSpinEdit2
      end
      object Label3: TLabel
        Left = 14
        Top = 37
        Width = 65
        Height = 19
        Caption = 'Feminino'
        FocusControl = cxDBSpinEdit3
      end
      object Label5: TLabel
        Left = 14
        Top = 10
        Width = 64
        Height = 19
        Caption = 'Couvert'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 112
        Top = 57
        DataBinding.DataField = 'nro_couvert_m'
        DataBinding.DataSource = dsVenda
        Properties.AssignedValues.MinValue = True
        Properties.MaxValue = 100.000000000000000000
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 69
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 14
        Top = 57
        DataBinding.DataField = 'nro_couvert_f'
        DataBinding.DataSource = dsVenda
        Properties.AssignedValues.MinValue = True
        Properties.MaxValue = 100.000000000000000000
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 69
      end
    end
  end
  object qrVenda: TUniQuery
    SQLUpdate.Strings = (
      'UPDATE venda'
      'SET'
      '  nro_pessoas = :nro_pessoas, nro_couvert_m = :nro_couvert_m, '
      '  nro_couvert_f = :nro_couvert_f, cpf_cliente = :cpf_cliente,'
      '  cli_001 = :cli_001'
      'WHERE'
      '  ven_001 = :Old_ven_001 AND emp_001 = :Old_emp_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select'
      'ven_001,'
      'emp_001, '
      'nro_pessoas, '
      'nro_couvert_m, '
      'nro_couvert_f, '
      'cpf_cliente,'
      'cli_001'
      'from venda '
      'where emp_001=:emp and ven_001=:id_venda')
    Left = 250
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'emp'
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 1
      end>
    object qrVendanro_pessoas: TIntegerField
      DisplayLabel = 'Qtde. de Clientes'
      FieldName = 'nro_pessoas'
    end
    object qrVendanro_couvert_m: TIntegerField
      DisplayLabel = 'Masculino'
      FieldName = 'nro_couvert_m'
    end
    object qrVendanro_couvert_f: TIntegerField
      DisplayLabel = 'Feminino'
      FieldName = 'nro_couvert_f'
    end
    object qrVendacpf_cliente: TWideStringField
      DisplayLabel = 'CPF do cliente'
      FieldName = 'cpf_cliente'
      Size = 11
    end
    object qrVendaven_001: TIntegerField
      FieldName = 'ven_001'
      Required = True
    end
    object qrVendaemp_001: TIntegerField
      FieldName = 'emp_001'
      Required = True
    end
    object qrVendacli_001: TIntegerField
      FieldName = 'cli_001'
      OnChange = qrVendacli_001Change
    end
  end
  object dsVenda: TDataSource
    DataSet = qrVenda
    Left = 320
    Top = 160
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 184
    Top = 152
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
    object acBuscaCliente: TAction
      Caption = 'acBuscaCliente'
      ImageIndex = 0
      OnExecute = acBuscaClienteExecute
    end
  end
end
