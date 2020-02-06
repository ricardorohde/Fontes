inherited frmControleMesaPagamentoAntecipado: TfrmControleMesaPagamentoAntecipado
  Caption = 'Controle Mesa - Pagamento Antecipado'
  ClientHeight = 319
  ClientWidth = 736
  ExplicitWidth = 742
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    Width = 736
    Height = 270
    ExplicitWidth = 736
    ExplicitHeight = 270
    FullHeight = 200
    object Label1: TLabel
      Left = 499
      Top = 248
      Width = 131
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'Total Antecipado: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 413
      ExplicitTop = 197
    end
    object Label2: TLabel
      Left = 305
      Top = 248
      Width = 97
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'Valor Venda: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 219
      ExplicitTop = 197
    end
    object lbTotalVenda: TLabel
      Left = 408
      Top = 248
      Width = 82
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'R$ 999,99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 322
      ExplicitTop = 197
    end
    object lbTotalAntecipado: TLabel
      Left = 636
      Top = 248
      Width = 82
      Height = 19
      Anchors = [akRight, akBottom]
      Caption = 'R$ 999,99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 550
      ExplicitTop = 197
    end
    object lbMesa: TLabel
      Left = 8
      Top = 248
      Width = 41
      Height = 19
      Anchors = [akLeft, akBottom]
      Caption = 'MESA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 10
      Width = 719
      Height = 232
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPagamentoAntecipado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1descricao_forma_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'descricao_forma_pagamento'
          Width = 155
        end
        object cxGrid1DBTableView1valor: TcxGridDBColumn
          DataBinding.FieldName = 'valor'
          Width = 96
        end
        object cxGrid1DBTableView1data_hora: TcxGridDBColumn
          DataBinding.FieldName = 'data_hora'
          Width = 110
        end
        object cxGrid1DBTableView1observacao: TcxGridDBColumn
          DataBinding.FieldName = 'observacao'
          Width = 165
        end
        object cxGrid1DBTableView1responsavel: TcxGridDBColumn
          DataBinding.FieldName = 'responsavel'
          Width = 105
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    Top = 270
    Width = 736
    ExplicitTop = 270
    ExplicitWidth = 736
    object btCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 623
      Top = 3
      Width = 110
      Height = 41
      Margins.Left = 0
      Caption = 'Sair'
      ImageIndex = 18
      Images = frmMenu.ImgList24
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
    object btNovo: TAdvGlowButton
      AlignWithMargins = True
      Left = 448
      Top = 3
      Width = 172
      Height = 41
      Margins.Left = 0
      Caption = 'Novo Pagamento'
      ImageIndex = 16
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
    object btExcluir: TAdvGlowButton
      AlignWithMargins = True
      Left = 335
      Top = 3
      Width = 110
      Height = 41
      Margins.Left = 0
      Caption = 'Excluir'
      ImageIndex = 31
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
  end
  object qrPagamentoAntecipado: TUniQuery
    Connection = frmMenu.conexao
    SQL.Strings = (
      'select vpa.id_venda_pag_antecipado, '
      'vpa.id_venda, '
      'vpa.id_formapgto, '
      'vpa.valor, '
      'cast(vpa.observacao as varchar(100)) as observacao,  '
      'vpa.data_hora,'
      'f.for_002 as descricao_forma_pagamento,'
      'u.usu_002 as responsavel'
      'from venda_pag_antecipado vpa'
      
        'join formapgto f on f.for_001 = vpa.id_formapgto and f.emp_001=v' +
        'pa.id_empresa'
      
        'join venda v on v.ven_001=vpa.id_venda and v.emp_001=vpa.id_empr' +
        'esa'
      
        'left join mesa m on m.emp_001 = v.emp_001 and m.mes_001 = v.ven_' +
        '025'
      'left join usuarios u on vpa.id_usuario=u.usu_001'
      
        'where vpa.id_venda=:id_venda and vpa.id_empresa=:id_empresa and ' +
        'vpa.id_situacao=4'
      'order by vpa.id_venda_pag_antecipado')
    Left = 224
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_venda'
        Value = 1983
      end
      item
        DataType = ftInteger
        Name = 'id_empresa'
        Value = 1
      end>
    object qrPagamentoAntecipadoid_venda_pag_antecipado: TIntegerField
      FieldName = 'id_venda_pag_antecipado'
    end
    object qrPagamentoAntecipadoid_venda: TIntegerField
      FieldName = 'id_venda'
      Required = True
    end
    object qrPagamentoAntecipadoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
      Required = True
    end
    object qrPagamentoAntecipadovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qrPagamentoAntecipadodata_hora: TDateTimeField
      DisplayLabel = 'Data / Hora'
      FieldName = 'data_hora'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qrPagamentoAntecipadodescricao_forma_pagamento: TWideStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'descricao_forma_pagamento'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qrPagamentoAntecipadoobservacao: TWideStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      ReadOnly = True
      Size = 100
    end
    object qrPagamentoAntecipadoresponsavel: TWideStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'responsavel'
      ReadOnly = True
      Required = True
      Size = 30
    end
  end
  object dsPagamentoAntecipado: TDataSource
    AutoEdit = False
    DataSet = qrPagamentoAntecipado
    Left = 88
    Top = 48
  end
end
