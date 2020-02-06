inherited frmPDVCliente: TfrmPDVCliente
  Caption = 'Venda - Cliente'
  ClientHeight = 299
  ClientWidth = 399
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 405
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 399
    Height = 250
    TabStop = True
    ExplicitWidth = 399
    ExplicitHeight = 250
    FullHeight = 200
    object Label2: TLabel
      Left = 11
      Top = 9
      Width = 39
      Height = 16
      Caption = 'Cliente'
    end
    object Label10: TLabel
      Left = 11
      Top = 102
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
      FocusControl = cxDBTextEdit2
    end
    object Label12: TLabel
      Left = 293
      Top = 102
      Width = 45
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = cxDBTextEdit3
    end
    object Label17: TLabel
      Left = 243
      Top = 197
      Width = 79
      Height = 16
      Caption = 'Complemento'
      FocusControl = cxDBTextEdit3
    end
    object Label28: TLabel
      Left = 11
      Top = 149
      Width = 34
      Height = 16
      Caption = 'Bairro'
      FocusControl = cxDBTextEdit4
    end
    object Label15: TLabel
      Left = 138
      Top = 149
      Width = 39
      Height = 16
      Caption = 'Cidade'
      FocusControl = cxDBTextEdit6
    end
    object Label14: TLabel
      Left = 293
      Top = 149
      Width = 22
      Height = 16
      Caption = 'CEP'
      FocusControl = cxDBTextEdit5
    end
    object Label18: TLabel
      Left = 11
      Top = 197
      Width = 105
      Height = 16
      Caption = 'Ponto de refr'#234'ncia'
      FocusControl = cxDBTextEdit5
    end
    object Label1: TLabel
      Left = 11
      Top = 54
      Width = 63
      Height = 16
      Caption = 'CPF / CNPJ'
      FocusControl = cxDBTextEdit2
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 11
      Top = 119
      TabStop = False
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 276
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 293
      Top = 119
      TabStop = False
      DataBinding.DataField = 'endereco_numero'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 93
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 243
      Top = 215
      TabStop = False
      DataBinding.DataField = 'endereco_complemento'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 143
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 11
      Top = 166
      TabStop = False
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 138
      Top = 166
      TabStop = False
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 6
      Width = 149
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 293
      Top = 166
      TabStop = False
      DataBinding.DataField = 'cep'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 7
      Width = 93
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 11
      Top = 215
      TabStop = False
      DataBinding.DataField = 'endereco_referencia'
      DataBinding.DataSource = dsCliente
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Width = 226
    end
    object edIDCliente: TcxButtonEdit
      Left = 11
      Top = 26
      Properties.Buttons = <
        item
          Action = acBuscaCliente
          Default = True
          Kind = bkGlyph
        end>
      Properties.ClickKey = 0
      Properties.Images = frmMenu.ImgList16
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnExit = edIdClienteExit
      Width = 62
    end
    object edCPF: TEdit
      Left = 11
      Top = 72
      Width = 276
      Height = 24
      TabOrder = 1
      OnExit = edCPFExit
    end
    object edNomeCliente: TEdit
      Left = 79
      Top = 26
      Width = 307
      Height = 24
      TabOrder = 9
      OnExit = edCPFExit
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 250
    Width = 399
    TabStop = True
    ExplicitTop = 250
    ExplicitWidth = 399
    object btConfirma: TAdvGlowButton
      AlignWithMargins = True
      Left = 280
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Anchors = [akRight, akBottom]
      Caption = 'Confirma'
      ImageIndex = 1
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      TabStop = True
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
    object btCancela: TAdvGlowButton
      AlignWithMargins = True
      Left = 161
      Top = 3
      Width = 116
      Height = 41
      Margins.Left = 0
      Anchors = [akRight, akBottom]
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
    object btCadastraCliente: TAdvGlowButton
      AlignWithMargins = True
      Left = 11
      Top = 3
      Width = 147
      Height = 41
      Margins.Left = 0
      Anchors = [akRight, akBottom]
      Caption = 'Cadastra Cliente'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btCadastraClienteClick
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
  object qrCliente: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'c.cli_001 as id_cliente, '
      'c.emp_001 as id_empresa, '
      'c.cli_002 as nome,'
      'c.cli_012 as telefone1,'
      'c.cli_013 as telefone2,'
      'c.cli_004 as cpf,'
      'c.celular1,'
      'c.celular2,'
      'c.cli_014 as celular3,'
      'c.cep_004 as endereco,'
      'c.cli_008 as endereco_numero,'
      'c.cli_009 as endereco_complemento,'
      'c.cep_003 as bairro,'
      'c.cidade_desc as cidade,'
      'c.cep_002 as cep,'
      'c.cli_007 as endereco_referencia,'
      'c.pontos_atuais,'
      'coalesce(sv.nro_vendas,0)+1 as nro_vendas,'
      
        'coalesce(b.bai_003, e.taxadeliverypadrao, 0.00) as taxa_delivery' +
        ','
      'c.cli_004'
      'from clientes c'
      'join empresas e on e.emp_001=c.emp_001'
      
        'left join bairro b on c.bai_001=b.bai_001 and c.emp_001=b.emp_00' +
        '1'
      
        'left join (select count(1) as nro_vendas, cli_001, emp_001 from ' +
        'venda where sit_001=1 group by cli_001, emp_001) sv on sv.cli_00' +
        '1=c.cli_001 and sv.emp_001=c.emp_001'
      'where c.cli_001 = :id_cliente and c.emp_001 = :id_empresa')
    BeforeOpen = qrClienteBeforeOpen
    AfterOpen = qrClienteAfterOpen
    Left = 272
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        Value = nil
      end>
    object qrClientenome: TWideStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object qrClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object qrClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object qrClientecelular1: TWideStringField
      FieldName = 'celular1'
    end
    object qrClientecelular2: TWideStringField
      FieldName = 'celular2'
    end
    object qrClientecelular3: TWideStringField
      FieldName = 'celular3'
    end
    object qrClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 125
    end
    object qrClienteendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      Size = 10
    end
    object qrClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object qrClientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object qrClientecep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object qrClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qrClienteid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Required = True
    end
    object qrClienteendereco_complemento: TWideStringField
      FieldName = 'endereco_complemento'
      Size = 10
    end
    object qrClienteendereco_referencia: TWideStringField
      FieldName = 'endereco_referencia'
      Size = 80
    end
    object qrClientetaxa_delivery: TFloatField
      FieldName = 'taxa_delivery'
      ReadOnly = True
      currency = True
    end
    object qrClientenro_vendas: TLargeintField
      FieldName = 'nro_vendas'
      ReadOnly = True
    end
    object qrClientepontos_atuais: TIntegerField
      FieldName = 'pontos_atuais'
    end
    object qrClientecli_004: TWideStringField
      FieldName = 'cli_004'
    end
    object qrClientecpf: TWideStringField
      FieldName = 'cpf'
    end
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = qrCliente
    Left = 320
    Top = 64
  end
  object ActionList1: TActionList
    Images = frmMenu.ImgList16
    Left = 216
    Top = 56
    object acBuscaCliente: TAction
      Caption = 'acBuscaCliente'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = acBuscaClienteExecute
    end
  end
end
