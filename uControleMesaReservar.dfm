object frmControleMesaReservar: TfrmControleMesaReservar
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Controle de mesa - Reservar'
  ClientHeight = 188
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 139
    Width = 538
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 419
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
      TabOrder = 1
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
      Left = 300
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
      TabOrder = 0
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
    object btLimpar: TAdvGlowButton
      AlignWithMargins = True
      Left = 181
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Caption = 'Limpar'
      ImageIndex = 7
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btLimparClick
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
    Width = 538
    Height = 139
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
    Version = '2.4.1.0'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -13
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    ColorTo = 12691076
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    DesignSize = (
      538
      139)
    FullHeight = 200
    object AdvGroupBox3: TAdvGroupBox
      Left = 7
      Top = 9
      Width = 524
      Height = 126
      BorderColor = clNavy
      RoundEdges = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object Label4: TLabel
        Left = 11
        Top = 12
        Width = 34
        Height = 16
        Caption = 'Mesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 197
        Top = 37
        Width = 60
        Height = 19
        AutoSize = True
        DataField = 'desc_status'
        DataSource = dsListamesa
      end
      object Label6: TLabel
        Left = 197
        Top = 12
        Width = 43
        Height = 16
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 11
        Top = 69
        Width = 90
        Height = 16
        Caption = 'Nome reserva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 399
        Top = 69
        Width = 31
        Height = 16
        Caption = 'Data'
        FocusControl = edData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 324
        Top = 69
        Width = 48
        Height = 16
        Caption = 'Hor'#225'rio'
        FocusControl = edHora
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 197
        Top = 69
        Width = 55
        Height = 16
        Caption = 'Telefone'
        FocusControl = edTelefone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbMesas: TDBLookupComboBox
        Left = 11
        Top = 34
        Width = 180
        Height = 25
        KeyField = 'mes_002'
        ListField = 'mes_002'
        ListSource = dsListamesa
        TabOrder = 0
        TabStop = False
      end
      object edNomeReserva: TcxDBTextEdit
        Left = 11
        Top = 87
        DataBinding.DataField = 'nome_reserva'
        DataBinding.DataSource = dsListamesa
        Properties.MaxLength = 13
        TabOrder = 1
        Width = 180
      end
      object edData: TcxDBDateEdit
        Left = 399
        Top = 87
        DataBinding.DataField = 'data_reserva'
        DataBinding.DataSource = dsListamesa
        Properties.DateButtons = [btnToday]
        Properties.DateOnError = deToday
        Properties.ShowTime = False
        Properties.ValidationOptions = [evoShowErrorIcon]
        TabOrder = 4
        OnEnter = edDataEnter
        Width = 114
      end
      object edHora: TcxDBTimeEdit
        Left = 324
        Top = 87
        DataBinding.DataField = 'hora_reserva'
        DataBinding.DataSource = dsListamesa
        Properties.TimeFormat = tfHourMin
        TabOrder = 3
        OnEnter = edHoraEnter
        Width = 69
      end
      object edTelefone: TcxDBTextEdit
        Left = 197
        Top = 87
        DataBinding.DataField = 'telefone_reserva'
        DataBinding.DataSource = dsListamesa
        TabOrder = 2
        Width = 121
      end
    end
  end
  object qrListamesa: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO mesa'
      
        '  (mes_001, mes_002, sit_001, nome_reserva, telefone_reserva, da' +
        'ta_reserva, hora_reserva)'
      'VALUES'
      
        '  (:mes_001, :mes_002, :sit_001, :nome_reserva, :telefone_reserv' +
        'a, :data_reserva, :hora_reserva)')
    SQLDelete.Strings = (
      'DELETE FROM mesa'
      'WHERE'
      '  mes_001 = :Old_mes_001')
    SQLUpdate.Strings = (
      'UPDATE mesa'
      'SET'
      
        '  mes_001 = :mes_001, mes_002 = :mes_002, sit_001 = :sit_001, no' +
        'me_reserva = :nome_reserva, telefone_reserva = :telefone_reserva' +
        ', data_reserva = :data_reserva, hora_reserva = :hora_reserva'
      'WHERE'
      '  mes_001 = :Old_mes_001')
    SQLLock.Strings = (
      'SELECT * FROM mesa'
      'WHERE'
      '  mes_001 = :Old_mes_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT mes_001, mes_002, sit_001, nome_reserva, telefone_reserva' +
        ', data_reserva, hora_reserva FROM mesa'
      'WHERE'
      '  mes_001 = :mes_001')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM mesa'
      ''
      ') t')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select m.mes_001 , '
      'm.mes_002,'
      'm.mes_003,'
      'm.nome_reserva,'
      'm.data_reserva, '
      'm.hora_reserva, '
      'm.telefone_reserva,'
      'm.sit_001,'
      'cast(fn_situacoes(m.sit_001)as varchar (100)) as desc_status'
      'from mesa as m '
      'where (m.sit_001=4 or m.sit_001=19)'
      
        'and m.mes_001 not in (select v.ven_025 from venda as v where v.s' +
        'it_001 in (8,15,21) and v.ven_024='#39'M'#39' and v.emp_001=:id_empresa ' +
        ')'
      'and m.emp_001=:id_empresa'
      'order by m.mes_003')
    AfterOpen = qrListamesaAfterOpen
    BeforeScroll = qrListamesaBeforeScroll
    AfterScroll = qrListamesaAfterScroll
    Left = 418
    Top = 10
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrListamesames_001: TIntegerField
      FieldName = 'mes_001'
      Required = True
    end
    object qrListamesames_002: TWideStringField
      FieldName = 'mes_002'
      Required = True
      Size = 40
    end
    object qrListamesanome_reserva: TWideStringField
      FieldName = 'nome_reserva'
      Size = 100
    end
    object qrListamesadata_reserva: TDateField
      FieldName = 'data_reserva'
    end
    object qrListamesahora_reserva: TTimeField
      FieldName = 'hora_reserva'
    end
    object qrListamesatelefone_reserva: TWideStringField
      FieldName = 'telefone_reserva'
    end
    object qrListamesasit_001: TIntegerField
      FieldName = 'sit_001'
      Required = True
    end
    object qrListamesadesc_status: TWideStringField
      FieldName = 'desc_status'
      ReadOnly = True
      Size = 100
    end
    object qrListamesames_003: TIntegerField
      FieldName = 'mes_003'
      Required = True
    end
  end
  object dsListamesa: TDataSource
    DataSet = qrListamesa
    OnStateChange = dsListamesaStateChange
    Left = 474
    Top = 18
  end
end
