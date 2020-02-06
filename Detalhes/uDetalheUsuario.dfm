object frmDetalheUsuario: TfrmDetalheUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 577
  ClientWidth = 766
  Color = clBtnFace
  Constraints.MinHeight = 245
  Constraints.MinWidth = 545
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object pnBotoes: TFlowPanel
    Left = 0
    Top = 528
    Width = 766
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 12691076
    FlowStyle = fsRightLeftTopBottom
    ParentBackground = False
    TabOrder = 0
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 659
      Top = 3
      Width = 104
      Height = 46
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
      Left = 552
      Top = 3
      Width = 104
      Height = 46
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
      Left = 445
      Top = 3
      Width = 104
      Height = 46
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
    object btEditar: TAdvGlowButton
      AlignWithMargins = True
      Left = 338
      Top = 3
      Width = 104
      Height = 46
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 231
      Top = 3
      Width = 104
      Height = 46
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
    object btCopiarPermissoes: TAdvGlowButton
      AlignWithMargins = True
      Left = 64
      Top = 3
      Width = 164
      Height = 46
      Margins.Left = 0
      Caption = 'Copiar permiss'#245'es de outro usu'#225'rio'
      ImageIndex = 41
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = btCopiarPermissoesClick
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
    Width = 766
    Height = 528
    Align = alClient
    BevelOuter = bvNone
    Color = 14997705
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
    FullHeight = 200
    object AdvGroupBox1: TAdvGroupBox
      Left = 10
      Top = 6
      Width = 351
      Height = 132
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 17
        Width = 14
        Height = 16
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 102
        Top = 17
        Width = 35
        Height = 16
        Caption = 'Nome'
        FocusControl = edNome
      end
      object Label3: TLabel
        Left = 12
        Top = 69
        Width = 34
        Height = 16
        Caption = 'Login'
        FocusControl = edLogin
      end
      object Label4: TLabel
        Left = 181
        Top = 69
        Width = 40
        Height = 16
        Caption = 'Senha'
        FocusControl = edSenha
      end
      object edNome: TcxDBTextEdit
        Left = 102
        Top = 39
        DataBinding.DataField = 'usu_002'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 234
      end
      object edLogin: TcxDBTextEdit
        Left = 12
        Top = 91
        DataBinding.DataField = 'usu_003'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 163
      end
      object edSenha: TcxDBTextEdit
        Left = 181
        Top = 91
        DataBinding.DataField = 'usu_004'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Properties.EchoMode = eemPassword
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
        Width = 155
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 39
        Width = 84
        Height = 22
        TabStop = False
        DataField = 'usu_001'
        DataSource = dsUsuario
        Enabled = False
        ParentColor = True
        TabOrder = 3
      end
    end
    object AdvGroupBox3: TAdvGroupBox
      Left = 374
      Top = 6
      Width = 257
      Height = 132
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Acesso '#224's Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 3
        Top = 17
        Caption = 'Balc'#227'o'
        DataBinding.DataField = 'b_acesso_venda_balcao'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBCheckBox12: TcxDBCheckBox
        Left = 3
        Top = 39
        Caption = 'Comanda'
        DataBinding.DataField = 'b_acesso_venda_comanda'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBCheckBox13: TcxDBCheckBox
        Left = 3
        Top = 61
        Caption = 'Delivery'
        DataBinding.DataField = 'b_acesso_venda_delivery'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBCheckBox14: TcxDBCheckBox
        Left = 3
        Top = 83
        Caption = 'Mesa'
        DataBinding.DataField = 'b_acesso_venda_mesa'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBCheckBox15: TcxDBCheckBox
        Left = 3
        Top = 105
        Caption = 'Vendas PDV'
        DataBinding.DataField = 'b_acesso_venda_pdv'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxDBCheckBox24: TcxDBCheckBox
        Left = 106
        Top = 17
        Caption = 'Vendas Touch'
        DataBinding.DataField = 'b_acesso_venda_touch'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxDBCheckBox38: TcxDBCheckBox
        Left = 106
        Top = 39
        Caption = 'M'#243'dulo Casa Noturna'
        DataBinding.DataField = 'b_acesso_venda_cnoturna'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
    end
    object AdvGroupBox4: TAdvGroupBox
      Left = 646
      Top = 6
      Width = 111
      Height = 88
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Fun'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object cxDBCheckBox16: TcxDBCheckBox
        Left = 3
        Top = 17
        Caption = 'Gar'#231'om'
        DataBinding.DataField = 'b_funcao_garcom'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBCheckBox17: TcxDBCheckBox
        Left = 3
        Top = 39
        Caption = 'Entregador'
        DataBinding.DataField = 'b_funcao_entregador'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
    end
    object AdvGroupBox7: TAdvGroupBox
      Left = 10
      Top = 145
      Width = 351
      Height = 372
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 3
        Top = 14
        Caption = 'Permite acesso ao caixa'
        DataBinding.DataField = 'b_acesso_caixa'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 3
        Top = 35
        Caption = 'Permite movimenta'#231#227'o de estoque'
        DataBinding.DataField = 'b_alteracao_estoque'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 3
        Top = 56
        Caption = 'Permite acesso ao cadastro de Produtos'
        DataBinding.DataField = 'b_acesso_produtos'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 3
        Top = 77
        Caption = 'Permite acesso ao cadastro de Clientes'
        DataBinding.DataField = 'b_acesso_clientes'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBCheckBox18: TcxDBCheckBox
        Left = 3
        Top = 120
        Caption = 'Permite acesso ao cadastro de Usu'#225'rios'
        DataBinding.DataField = 'b_acesso_usuarios'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object cxDBCheckBox19: TcxDBCheckBox
        Left = 3
        Top = 98
        Caption = 'Permite acesso '#224's configura'#231#245'es do sistema'
        DataBinding.DataField = 'b_acesso_configuracao'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 3
        Top = 141
        Caption = 'Permite acesso ao Contas a Pagar/Receber'
        DataBinding.DataField = 'b_acesso_cpagar_creceber'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 3
        Top = 162
        Caption = 'Permite movimenta'#231#227'o de caixa (sangria/suprimento)'
        DataBinding.DataField = 'b_acesso_mov_caixa'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 7
      end
      object cxDBCheckBox10: TcxDBCheckBox
        Left = 3
        Top = 183
        Caption = 'Permite abertura/fechamento de caixa'
        DataBinding.DataField = 'b_acesso_abertura_caixa'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
      object cxDBCheckBox25: TcxDBCheckBox
        Left = 3
        Top = 204
        Caption = 'Permite acesso '#224' devolu'#231#227'o de venda'
        DataBinding.DataField = 'b_acesso_devolucao'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
      object cxDBCheckBox27: TcxDBCheckBox
        Left = 3
        Top = 224
        Caption = 'Permite acesso '#224's promo'#231#245'es de venda'
        DataBinding.DataField = 'b_acesso_promocao'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
      end
      object cxDBCheckBox30: TcxDBCheckBox
        Left = 3
        Top = 244
        Caption = 'Permite acesso '#224' NFe'
        DataBinding.DataField = 'b_acesso_nfe'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 11
      end
      object cxDBCheckBox39: TcxDBCheckBox
        Left = 3
        Top = 263
        Caption = 'Permite transfer'#234'ncia de estoque/Ajuste de estoque'
        DataBinding.DataField = 'b_permite_transferencia_estoque'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 12
      end
      object cxDBCheckBox26: TcxDBCheckBox
        Left = 3
        Top = 283
        Caption = 'Permite visualizar todos os caixas'
        DataBinding.DataField = 'b_permite_visualizar_todos_caixas'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        TabOrder = 13
      end
    end
    object AdvGroupBox5: TAdvGroupBox
      Left = 374
      Top = 145
      Width = 383
      Height = 248
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Mesa / Comanda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object cxDBCheckBox23: TcxDBCheckBox
        Left = 3
        Top = 35
        Caption = 'Permite reabrir mesa/comanda'
        DataBinding.DataField = 'b_reabrir_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 3
        Top = 56
        Caption = 'Permite transfer'#234'ncia de mesa'
        DataBinding.DataField = 'b_transferencia_mesa'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBCheckBox29: TcxDBCheckBox
        Left = 3
        Top = 77
        Caption = 'Permite transfer'#234'ncia de item na mesa'
        DataBinding.DataField = 'b_permite_transferencia_item'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBCheckBox32: TcxDBCheckBox
        Left = 3
        Top = 98
        Caption = 'Permite acesso ao fechamento do caixa na mesa/comanda'
        DataBinding.DataField = 'b_permite_fechamento_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 4
      end
      object cxDBCheckBox33: TcxDBCheckBox
        Left = 3
        Top = 120
        Caption = 'Permite acesso ao pr'#233' - fechamento do caixa mesa/comanda'
        DataBinding.DataField = 'b_permite_prefechamento_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 5
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 3
        Top = 14
        Caption = 'Permite cancelamento de mesa/comanda'
        DataBinding.DataField = 'b_cancelamento_mesa'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBCheckBox34: TcxDBCheckBox
        Left = 3
        Top = 141
        Caption = 'Permite juntar mesa/comanda'
        DataBinding.DataField = 'b_permite_juntar_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 6
      end
      object cxDBCheckBox35: TcxDBCheckBox
        Left = 3
        Top = 162
        Caption = 'Permite acesso ao pagamento antecipado'
        DataBinding.DataField = 'b_permite_pag_antecipado_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 7
      end
      object cxDBCheckBox36: TcxDBCheckBox
        Left = 3
        Top = 204
        Caption = 'Permite alterar quantidade de itens lan'#231'ados'
        DataBinding.DataField = 'b_permite_quantidade_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 8
      end
      object cxDBCheckBox37: TcxDBCheckBox
        Left = 3
        Top = 183
        Caption = 'Permite aplicar desconto nos itens'
        DataBinding.DataField = 'b_permite_desconto_item_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 9
      end
      object cxDBCheckBox31: TcxDBCheckBox
        Left = 3
        Top = 224
        Caption = 'Permite acesso '#224' reimpress'#227'o mesa/comanda'
        DataBinding.DataField = 'b_permite_reimpressao_mesa_comanda'
        DataBinding.DataSource = dsUsuario
        Style.TextColor = clWindowText
        Style.TextStyle = []
        TabOrder = 10
      end
    end
    object AdvGroupBox6: TAdvGroupBox
      Left = 374
      Top = 394
      Width = 383
      Height = 123
      BorderColor = clNavy
      CaptionPosition = cpTopCenter
      RoundEdges = True
      Caption = 'Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object cxDBCheckBox20: TcxDBCheckBox
        Left = 3
        Top = 14
        Caption = 'Permite cancelamento de delivery'
        DataBinding.DataField = 'b_cancelamento_delivery'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBCheckBox21: TcxDBCheckBox
        Left = 3
        Top = 34
        Caption = 'Permite cancelamento de vendas PDV'
        DataBinding.DataField = 'b_cancelamento_pdv'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object cxDBCheckBox22: TcxDBCheckBox
        Left = 3
        Top = 55
        Caption = 'Permite cancelamento de vendas Balc'#227'o'
        DataBinding.DataField = 'b_cancelamento_balcao'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 3
        Top = 76
        Caption = 'Permite alterar pre'#231'o unit'#225'rio (mesa/venda)'
        DataBinding.DataField = 'b_alteracao_precou_venda'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object cxDBCheckBox28: TcxDBCheckBox
        Left = 3
        Top = 96
        Caption = 'Permite liberar vendas para cliente em atraso'
        DataBinding.DataField = 'b_libera_venda_conta_atraso'
        DataBinding.DataSource = dsUsuario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
    end
  end
  object qrUsuario: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO usuarios'
      
        '  (usu_001, usu_002, usu_003, usu_004, usu_005, sit_001, usu_001' +
        '_1, usu_001_2, usu_001_3, dat_001_1, dat_001_2, dat_001_3, '
      
        '   b_acesso_caixa, b_alteracao_estoque, b_cancelamento_mesa, b_t' +
        'ransferencia_mesa, b_acesso_produtos, b_acesso_clientes, '
      
        '   b_acesso_cpagar_creceber, b_acesso_mov_caixa, b_acesso_abertu' +
        'ra_caixa, b_alteracao_precou_venda, '
      
        '   b_acesso_venda_balcao, b_acesso_venda_mesa, b_acesso_venda_co' +
        'manda, b_acesso_venda_delivery, '
      
        '   b_acesso_venda_touch, b_funcao_entregador, b_funcao_garcom, b' +
        '_acesso_usuarios, b_acesso_configuracao,'
      
        '   b_cancelamento_delivery, b_acesso_venda_pdv, b_cancelamento_p' +
        'dv,  b_cancelamento_balcao,'
      
        '   b_reabrir_mesa_comanda, b_acesso_devolucao,b_acesso_promocao,' +
        ' b_libera_venda_conta_atraso, b_permite_transferencia_item, '
      
        '   b_permite_fechamento_mesa_comanda, b_permite_prefechamento_me' +
        'sa_comanda, b_acesso_nfe, b_permite_pag_antecipado_mesa_comanda,'
      
        '   b_permite_juntar_mesa_comanda,b_permite_quantidade_mesa_coman' +
        'da, b_permite_desconto_item_mesa_comanda,'
      
        '   b_acesso_venda_cnoturna,b_permite_transferencia_estoque, b_pe' +
        'rmite_visualizar_todos_caixas,'
      '   b_permite_reimpressao_mesa_comanda)'
      ''
      'VALUES'
      
        '  ((select coalesce(max(usu_001),0)+1 from usuarios), :usu_002, ' +
        ':usu_003, :usu_004, :usu_005, 4, :usu_001_1, :usu_001_2, :usu_00' +
        '1_3, :dat_001_1, :dat_001_2, :dat_001_3, :b_acesso_caixa, :b_alt' +
        'eracao_estoque, :b_cancelamento_mesa, :b_transferencia_mesa, :b_' +
        'acesso_produtos, :b_acesso_clientes, :b_acesso_cpagar_creceber, ' +
        ':b_acesso_mov_caixa, :b_acesso_abertura_caixa, :b_alteracao_prec' +
        'ou_venda, :b_acesso_venda_balcao, :b_acesso_venda_mesa, :b_acess' +
        'o_venda_comanda, :b_acesso_venda_delivery, '
      
        '   :b_acesso_venda_touch, :b_funcao_entregador, :b_funcao_garcom' +
        ', :b_acesso_usuarios, :b_acesso_configuracao,'
      
        '   :b_cancelamento_delivery, :b_acesso_venda_pdv, :b_cancelament' +
        'o_pdv, :b_cancelamento_balcao,'
      
        '   :b_reabrir_mesa_comanda, :b_acesso_devolucao,:b_acesso_promoc' +
        'ao, :b_libera_venda_conta_atraso, :b_permite_transferencia_item,'
      
        '   :b_permite_fechamento_mesa_comanda, :b_permite_prefechamento_' +
        'mesa_comanda, :b_acesso_nfe, :b_permite_pag_antecipado_mesa_coma' +
        'nda,'
      
        '   :b_permite_juntar_mesa_comanda, :b_permite_quantidade_mesa_co' +
        'manda, :b_permite_desconto_item_mesa_comanda,'
      
        '   :b_acesso_venda_cnoturna,:b_permite_transferencia_estoque, :b' +
        '_permite_visualizar_todos_caixas,'
      '   :b_permite_reimpressao_mesa_comanda) ')
    SQLDelete.Strings = (
      'DELETE FROM usuarios'
      'WHERE'
      '  usu_001 = :Old_usu_001')
    SQLUpdate.Strings = (
      'UPDATE usuarios'
      'SET'
      
        '  usu_001 = :usu_001, usu_002 = :usu_002, usu_003 = :usu_003, us' +
        'u_004 = :usu_004, usu_005 = :usu_005, sit_001 = :sit_001, usu_00' +
        '1_1 = :usu_001_1, usu_001_2 = :usu_001_2, usu_001_3 = :usu_001_3' +
        ', dat_001_1 = :dat_001_1, dat_001_2 = :dat_001_2, dat_001_3 = :d' +
        'at_001_3, b_acesso_caixa = :b_acesso_caixa, b_alteracao_estoque ' +
        '= :b_alteracao_estoque, b_cancelamento_mesa = :b_cancelamento_me' +
        'sa, b_transferencia_mesa = :b_transferencia_mesa, b_acesso_produ' +
        'tos = :b_acesso_produtos, b_acesso_clientes = :b_acesso_clientes' +
        ', b_acesso_cpagar_creceber = :b_acesso_cpagar_creceber, b_acesso' +
        '_mov_caixa = :b_acesso_mov_caixa, b_acesso_abertura_caixa = :b_a' +
        'cesso_abertura_caixa, b_alteracao_precou_venda = :b_alteracao_pr' +
        'ecou_venda, b_acesso_venda_balcao = :b_acesso_venda_balcao, b_ac' +
        'esso_venda_mesa = :b_acesso_venda_mesa, b_acesso_venda_comanda =' +
        ' :b_acesso_venda_comanda, b_acesso_venda_delivery = :b_acesso_ve' +
        'nda_delivery, '
      
        '  b_acesso_venda_touch = :b_acesso_venda_touch, b_acesso_usuario' +
        's = :b_acesso_usuarios,'
      
        '  b_funcao_entregador = :b_funcao_entregador  , b_funcao_garcom ' +
        '= :b_funcao_garcom ,'
      
        '  b_acesso_configuracao = :b_acesso_configuracao, b_cancelamento' +
        '_delivery = :b_cancelamento_delivery,'
      
        '  b_acesso_venda_pdv =:b_acesso_venda_pdv, b_cancelamento_pdv = ' +
        ':b_cancelamento_pdv,'
      
        '  b_cancelamento_balcao = :b_cancelamento_balcao, b_reabrir_mesa' +
        '_comanda = :b_reabrir_mesa_comanda,'
      
        '  b_acesso_devolucao = :b_acesso_devolucao, b_acesso_promocao = ' +
        ':b_acesso_promocao, b_libera_venda_conta_atraso =:b_libera_venda' +
        '_conta_atraso,'
      '  b_permite_transferencia_item = :b_permite_transferencia_item,'
      
        '  b_permite_fechamento_mesa_comanda = :b_permite_fechamento_mesa' +
        '_comanda,'
      
        '  b_permite_prefechamento_mesa_comanda = :b_permite_prefechament' +
        'o_mesa_comanda,'
      
        '  b_acesso_nfe = :b_acesso_nfe, b_permite_pag_antecipado_mesa_co' +
        'manda = :b_permite_pag_antecipado_mesa_comanda,'
      
        '  b_permite_juntar_mesa_comanda = :b_permite_juntar_mesa_comanda' +
        ' , b_permite_quantidade_mesa_comanda = :b_permite_quantidade_mes' +
        'a_comanda, '
      
        '  b_permite_desconto_item_mesa_comanda = :b_permite_desconto_ite' +
        'm_mesa_comanda,'
      
        '  b_acesso_venda_cnoturna = :b_acesso_venda_cnoturna,b_permite_t' +
        'ransferencia_estoque=:b_permite_transferencia_estoque, b_permite' +
        '_visualizar_todos_caixas =:b_permite_visualizar_todos_caixas,'
      
        '  b_permite_reimpressao_mesa_comanda = :b_permite_reimpressao_me' +
        'sa_comanda'
      ''
      ''
      'WHERE'
      '  usu_001 = :Old_usu_001')
    SQLLock.Strings = (
      'SELECT * FROM usuarios'
      'WHERE'
      '  usu_001 = :Old_usu_001'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT usu_001, usu_002, usu_003, usu_004, usu_005, sit_001, usu' +
        '_001_1, usu_001_2, usu_001_3, dat_001_1, dat_001_2, dat_001_3, b' +
        '_acesso_caixa, b_alteracao_estoque, b_cancelamento_mesa, b_trans' +
        'ferencia_mesa, b_acesso_produtos, b_acesso_clientes, b_acesso_cp' +
        'agar_creceber, b_acesso_mov_caixa, b_acesso_abertura_caixa, b_al' +
        'teracao_precou_venda, b_acesso_venda_balcao, b_acesso_venda_mesa' +
        ', b_acesso_venda_comanda, b_acesso_venda_delivery, b_acesso_vend' +
        'a_touch, b_permite_reimpressao_mesa_comanda FROM usuarios'
      'WHERE'
      '  usu_001 = :usu_001')
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select '
      'usu_001,'
      'usu_002 , -- nome'
      'usu_003 , -- login'
      'usu_004 , -- senha'
      'usu_005 ,'
      'sit_001 ,'
      'usu_001_1 ,'
      'usu_001_2 ,'
      'usu_001_3 ,'
      'dat_001_1 ,'
      'dat_001_2 ,'
      'dat_001_3 ,'
      'b_acesso_caixa,'
      'b_alteracao_estoque,'
      'b_cancelamento_mesa,'
      'b_transferencia_mesa,'
      'b_acesso_produtos,'
      'b_acesso_clientes,'
      'b_acesso_cpagar_creceber,'
      'b_acesso_mov_caixa,'
      'b_acesso_abertura_caixa,'
      'b_alteracao_precou_venda,'
      'b_acesso_venda_balcao,'
      'b_acesso_venda_mesa,'
      'b_acesso_venda_comanda,'
      'b_acesso_venda_delivery,'
      'b_acesso_venda_touch,'
      'b_funcao_entregador,'
      'b_funcao_garcom,'
      'b_acesso_usuarios,'
      'b_acesso_configuracao,'
      'b_cancelamento_delivery,'
      'b_acesso_venda_pdv,'
      'b_cancelamento_pdv,'
      'b_cancelamento_balcao,'
      'b_reabrir_mesa_comanda,'
      'b_acesso_devolucao,'
      'b_acesso_promocao,'
      'b_libera_venda_conta_atraso,'
      'b_permite_transferencia_item,'
      'b_permite_fechamento_mesa_comanda,'
      'b_permite_prefechamento_mesa_comanda,'
      'b_acesso_nfe,'
      'b_permite_pag_antecipado_mesa_comanda,'
      'b_permite_juntar_mesa_comanda,'
      'b_permite_quantidade_mesa_comanda,'
      'b_permite_desconto_item_mesa_comanda,'
      'b_acesso_venda_cnoturna,'
      'b_permite_transferencia_estoque,'
      'b_permite_visualizar_todos_caixas,'
      'b_permite_reimpressao_mesa_comanda'
      ''
      'from usuarios'
      'where usu_001=:id_usuario')
    BeforePost = qrUsuarioBeforePost
    AfterPost = qrUsuarioAfterPost
    OnNewRecord = qrUsuarioNewRecord
    Left = 472
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_usuario'
        Value = nil
      end>
    object qrUsuariousu_001: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'usu_001'
    end
    object qrUsuariousu_002: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'usu_002'
      Required = True
      Size = 30
    end
    object qrUsuariousu_003: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'usu_003'
      Size = 30
    end
    object qrUsuariousu_004: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'usu_004'
      Size = 30
    end
    object qrUsuariousu_005: TBlobField
      FieldName = 'usu_005'
    end
    object qrUsuariosit_001: TIntegerField
      FieldName = 'sit_001'
    end
    object qrUsuariousu_001_1: TIntegerField
      FieldName = 'usu_001_1'
    end
    object qrUsuariousu_001_2: TIntegerField
      FieldName = 'usu_001_2'
    end
    object qrUsuariousu_001_3: TIntegerField
      FieldName = 'usu_001_3'
    end
    object qrUsuariodat_001_1: TDateTimeField
      FieldName = 'dat_001_1'
    end
    object qrUsuariodat_001_2: TDateTimeField
      FieldName = 'dat_001_2'
    end
    object qrUsuariodat_001_3: TDateTimeField
      FieldName = 'dat_001_3'
    end
    object qrUsuariob_acesso_caixa: TBooleanField
      FieldName = 'b_acesso_caixa'
    end
    object qrUsuariob_alteracao_estoque: TBooleanField
      FieldName = 'b_alteracao_estoque'
    end
    object qrUsuariob_cancelamento_mesa: TBooleanField
      FieldName = 'b_cancelamento_mesa'
    end
    object qrUsuariob_transferencia_mesa: TBooleanField
      FieldName = 'b_transferencia_mesa'
    end
    object qrUsuariob_acesso_produtos: TBooleanField
      FieldName = 'b_acesso_produtos'
    end
    object qrUsuariob_acesso_clientes: TBooleanField
      FieldName = 'b_acesso_clientes'
    end
    object qrUsuariob_acesso_cpagar_creceber: TBooleanField
      FieldName = 'b_acesso_cpagar_creceber'
    end
    object qrUsuariob_acesso_mov_caixa: TBooleanField
      FieldName = 'b_acesso_mov_caixa'
    end
    object qrUsuariob_acesso_abertura_caixa: TBooleanField
      FieldName = 'b_acesso_abertura_caixa'
    end
    object qrUsuariob_alteracao_precou_venda: TBooleanField
      FieldName = 'b_alteracao_precou_venda'
    end
    object qrUsuariob_acesso_venda_touch: TBooleanField
      FieldName = 'b_acesso_venda_touch'
    end
    object qrUsuariob_acesso_venda_balcao: TBooleanField
      FieldName = 'b_acesso_venda_balcao'
    end
    object qrUsuariob_acesso_venda_mesa: TBooleanField
      FieldName = 'b_acesso_venda_mesa'
    end
    object qrUsuariob_acesso_venda_comanda: TBooleanField
      FieldName = 'b_acesso_venda_comanda'
    end
    object qrUsuariob_acesso_venda_delivery: TBooleanField
      FieldName = 'b_acesso_venda_delivery'
    end
    object qrUsuariob_funcao_entregador: TBooleanField
      FieldName = 'b_funcao_entregador'
    end
    object qrUsuariob_funcao_garcom: TBooleanField
      FieldName = 'b_funcao_garcom'
    end
    object qrUsuariob_acesso_usuarios: TBooleanField
      FieldName = 'b_acesso_usuarios'
    end
    object qrUsuariob_acesso_configuracao: TBooleanField
      FieldName = 'b_acesso_configuracao'
    end
    object qrUsuariob_cancelamento_delivery: TBooleanField
      FieldName = 'b_cancelamento_delivery'
    end
    object qrUsuariob_acesso_venda_pdv: TBooleanField
      FieldName = 'b_acesso_venda_pdv'
    end
    object qrUsuariob_cancelamento_pdv: TBooleanField
      FieldName = 'b_cancelamento_pdv'
    end
    object qrUsuariob_cancelamento_balcao: TBooleanField
      FieldName = 'b_cancelamento_balcao'
    end
    object qrUsuariob_reabrir_mesa_comanda: TBooleanField
      FieldName = 'b_reabrir_mesa_comanda'
      Required = True
    end
    object qrUsuariob_acesso_devolucao: TBooleanField
      FieldName = 'b_acesso_devolucao'
    end
    object qrUsuariob_acesso_promocao: TBooleanField
      FieldName = 'b_acesso_promocao'
      Required = True
    end
    object qrUsuariob_libera_venda_conta_atraso: TBooleanField
      FieldName = 'b_libera_venda_conta_atraso'
      Required = True
    end
    object qrUsuariob_permite_transferencia_item: TBooleanField
      FieldName = 'b_permite_transferencia_item'
      Required = True
    end
    object qrUsuariob_permite_fechamento_mesa_comanda: TBooleanField
      FieldName = 'b_permite_fechamento_mesa_comanda'
      Required = True
    end
    object qrUsuariob_permite_prefechamento_mesa_comanda: TBooleanField
      FieldName = 'b_permite_prefechamento_mesa_comanda'
      Required = True
    end
    object qrUsuariob_acesso_nfe: TBooleanField
      FieldName = 'b_acesso_nfe'
      Required = True
    end
    object qrUsuariob_permite_pag_antecipado_mesa_comanda: TBooleanField
      FieldName = 'b_permite_pag_antecipado_mesa_comanda'
      Required = True
    end
    object qrUsuariob_permite_juntar_mesa_comanda: TBooleanField
      FieldName = 'b_permite_juntar_mesa_comanda'
      Required = True
    end
    object qrUsuariob_permite_quantidade_mesa_comanda: TBooleanField
      FieldName = 'b_permite_quantidade_mesa_comanda'
      Required = True
    end
    object qrUsuariob_permite_desconto_item_mesa_comanda: TBooleanField
      FieldName = 'b_permite_desconto_item_mesa_comanda'
      Required = True
    end
    object qrUsuariob_acesso_venda_cnoturna: TBooleanField
      FieldName = 'b_acesso_venda_cnoturna'
      Required = True
    end
    object qrUsuariob_permite_transferencia_estoque: TBooleanField
      FieldName = 'b_permite_transferencia_estoque'
      Required = True
    end
    object qrUsuariob_permite_visualizar_todos_caixas: TBooleanField
      FieldName = 'b_permite_visualizar_todos_caixas'
      Required = True
    end
    object qrUsuariob_permite_reimpressao_mesa_comanda: TBooleanField
      FieldName = 'b_permite_reimpressao_mesa_comanda'
    end
  end
  object dsUsuario: TDataSource
    AutoEdit = False
    DataSet = qrUsuario
    OnStateChange = dsUsuarioStateChange
    Left = 656
    Top = 200
  end
end
