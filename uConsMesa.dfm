inherited frmConsMesa: TfrmConsMesa
  Caption = 'Consulta de Mesa'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnPrincipal: TAdvPanel
    FullHeight = 200
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsConsulta
        object cxGrid1DBTableView1mes_001: TcxGridDBColumn
          DataBinding.FieldName = 'mes_001'
          Width = 98
        end
        object cxGrid1DBTableView1mes_002: TcxGridDBColumn
          DataBinding.FieldName = 'mes_002'
          Width = 340
        end
        object cxGrid1DBTableView1mes_003: TcxGridDBColumn
          DataBinding.FieldName = 'mes_003'
          Width = 94
        end
        object cxGrid1DBTableView1ambiente_desc: TcxGridDBColumn
          DataBinding.FieldName = 'ambiente_desc'
        end
        object cxGrid1DBTableView1situacao_desc: TcxGridDBColumn
          DataBinding.FieldName = 'situacao_desc'
          Width = 136
        end
      end
    end
  end
  inherited pnBotoes: TFlowPanel
    inherited btNovo: TAdvGlowButton
      OnClick = btNovoClick
    end
    inherited btAbrirRegistro: TAdvGlowButton
      OnClick = btAbrirRegistroClick
    end
    object btVinculacaoMesaAmbiente: TAdvGlowButton
      AlignWithMargins = True
      Left = 240
      Top = 3
      Width = 215
      Height = 41
      Hint = 'Definir ambientes'
      Margins.Right = 5
      Caption = 'Vincular mesas a ambientes'
      ImageIndex = 43
      Images = frmMenu.ImgList32
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btVinculacaoMesaAmbienteClick
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
  inherited qrConsulta: TUniQuery
    SQL.Strings = (
      'select m.mes_001,  '
      'm.mes_002, '
      'm.mes_003,'
      'cast('
      'case m.ambiente '
      ' when 1 then a.ambiente1 '
      ' when 2 then a.ambiente2 '
      ' when 3 then a.ambiente3 '
      ' when 4 then a.ambiente4 '
      ' else '#39#39' end as varchar(50)) as ambiente_desc,'
      'cast(fn_situacoes(m.sit_001) as varchar(200)) as situacao_desc'
      'from mesa m'
      'left join ambiente a on a.id_empresa=m.emp_001')
    object qrConsultames_001: TIntegerField
      FieldName = 'mes_001'
      Required = True
    end
    object qrConsultames_002: TWideStringField
      FieldName = 'mes_002'
      Required = True
      Size = 40
    end
    object qrConsultames_003: TIntegerField
      FieldName = 'mes_003'
      Required = True
    end
    object qrConsultaambiente_desc: TWideStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'ambiente_desc'
      ReadOnly = True
      Size = 50
    end
    object qrConsultasituacao_desc: TWideStringField
      FieldName = 'situacao_desc'
      ReadOnly = True
      Size = 200
    end
  end
end
