unit uControleMesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ActnList, Vcl.DBCtrls,
  Vcl.DBCGrids, Vcl.Menus, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Buttons,
  Data.DB, Datasnap.DBClient, dxGDIPlusClasses, MemDS, DBAccess, Uni,
  Vcl.ComCtrls, Datasnap.Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Vcl.Mask, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, Vcl.Grids,
  Vcl.DBGrids, System.math,
  frxClass, frxDBSet, AdvGlowButton, JvDataSource, JvExStdCtrls, JvEdit,
  JvValidateEdit, System.Actions, cxLabel, cxDBLabel, ACBrBase, ACBrBAL,
  ACBrDevice, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,
  cxGridChartView, cxGridDBChartView, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmControleMesa = class(TForm)
    pnMesas: TPanel;
    ActionList1: TActionList;
    acAberturaDeMesa: TAction;
    acTranferenciaMesa: TAction;
    acJuntarMesas: TAction;
    acPagamentoAntecipado: TAction;
    acReabrirMesa: TAction;
    acCancelaMesa: TAction;
    acReservarMesa: TAction;
    acAlterarTituloMesa: TAction;
    puPopupOpcoesMesa: TPopupMenu;
    ransferirmesaF81: TMenuItem;
    PagantecipadoF101: TMenuItem;
    acAlterarTituloMesa1: TMenuItem;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText10: TDBText;
    DBText12: TDBText;
    imgMesa: TImage;
    qrVendaMesa: TUniQuery;
    dsVendaMesa: TDataSource;
    qrVendaMesaid_mesa: TIntegerField;
    qrVendaMesaid_venda: TIntegerField;
    qrVendaMesanro_mesa: TIntegerField;
    qrVendaMesadescricao_mesa: TWideStringField;
    qrVendaMesavalor_venda: TFloatField;
    qrVendaMesastatus: TIntegerField;
    qrVendaItem: TUniQuery;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemvlrvenda: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    dsVendaItem: TDataSource;
    qrAux1: TUniQuery;
    qrVendaMesacod_venda: TIntegerField;
    qrVendaItemcod_status: TIntegerField;
    qrVendaItemstatus: TWideMemoField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaMesadesc_status: TWideStringField;
    qrVendaMesanro_nome_mesa: TWideStringField;
    qrVendaMesaobs_mesa: TWideStringField;
    qrVendaMesanome_reserva: TWideStringField;
    qrVendaMesatelefone_reserva: TWideStringField;
    qrVendaMesadata_reserva: TDateField;
    qrVendaMesahora_reserva: TTimeField;
    qrVendaItemvalor_taxa10: TFloatField;
    qrVendaItemvalor_total_taxa10: TFloatField;
    qrVendaMesadata_atual: TDateTimeField;
    qrVendaMesadata_abertura: TDateTimeField;
    qrVendaMesanro_pessoas: TIntegerField;
    qrVendaMesanro_couvert_m: TIntegerField;
    qrVendaMesanro_couvert_f: TIntegerField;
    qrVendaMesacpf_cliente: TWideStringField;
    acAlteraPessoas: TAction;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemvalor_desconto: TFloatField;
    qrVendaItemid_material: TIntegerField;
    qrVendaMesavalor_antecipado: TFloatField;
    Timer1: TTimer;
    qrVendaItemdescricao_item_sem_tamanho: TWideStringField;
    qrVendaItemdesc_tamanho: TWideStringField;
    qrVendaItemitem_fracionado: TIntegerField;
    dspVendaItemLanc: TDataSetProvider;
    qrVendaItemgar_001: TIntegerField;
    qrVendaItemite_013: TIntegerField;
    qrVendaItemb_venda_tamanho: TBooleanField;
    qrVendaItemtamanho: TWideStringField;
    qrVendaItemite_012: TWideStringField;
    qrVendaItemite_011: TWideStringField;
    qrVendaItemite_008: TWideStringField;
    qrVendaMesatipo_venda: TWideStringField;
    qrVendaMesavalor_pendente: TFloatField;
    acLimparMesa: TAction;
    acLimparMesa1: TMenuItem;
    qrVendaItemquantidade_impressao: TFloatField;
    qrVendaPagAntecipado: TUniQuery;
    qrVendaPagAntecipadoid_formapgto: TIntegerField;
    qrVendaPagAntecipadovalor: TFloatField;
    qrVendaPagAntecipadodesc_forma: TWideMemoField;
    dsVendaPagAntecipado: TDataSource;
    cxDBLabel1: TcxDBLabel;
    qrVendaItemacrescimo: TFloatField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaItemdesconto_perc: TFloatField;
    qrVendaItemtipo_venda: TWideStringField;
    qrVendaItemdescricao_mesa: TWideStringField;
    qrVendaItemnro_venda: TIntegerField;
    qrVendaItemfracionado: TWideStringField;
    acMenu: TAction;
    qrVendaItemb_70pc_valor_unit: TBooleanField;
    Panel1: TPanel;
    pnRodape: TPanel;
    pnDireita: TPanel;
    pnEsquerda: TPanel;
    imgLogoCliente: TImage;
    pnBotao1: TPanel;
    qrVendaItemqtdevenda_old: TFloatField;
    qrVendaItemnome_garcom: TWideStringField;
    qrVendaItemjustificativa_cancelamento: TWideStringField;
    pnPesquisaItem: TPanel;
    rbMesa: TRadioButton;
    rbComanda: TRadioButton;
    edMesa: TEdit;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    pnLegenda: TPanel;
    imgOcupada: TImage;
    imgFechada: TImage;
    imgReserva: TImage;
    imgComandaLimpeza: TImage;
    lbLegendaReservada: TLabel;
    imgLimpeza: TImage;
    imgComandaOcupada: TImage;
    imgOcupada1: TLabel;
    lbLegendaAgLimpeza: TLabel;
    Label14: TLabel;
    imgComandaFechada: TImage;
    imgLivre: TImage;
    lbLegendaLivre: TLabel;
    ActionList2: TActionList;
    acFecharMesa: TAction;
    acPrefechamento: TAction;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    acTransferirparacomanda: TAction;
    Reimpressao: TAction;
    Sair: TAction;
    qrSat: TUniQuery;
    qrApoio: TUniQuery;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure qrVendaMesaAfterScroll(DataSet: TDataSet);
    procedure ValidaAcoesStatusMesas;
    procedure edMesaExit(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure acAberturaDeMesaExecute(Sender: TObject); overload;
    procedure acPreFechamentoImprimirExecute(Sender: TObject);
    procedure acTranferenciaMesaExecute(Sender: TObject);
    procedure acJuntarMesasExecute(Sender: TObject);
    procedure acPagamentoAntecipadoExecute(Sender: TObject);
    procedure acReabrirMesaExecute(Sender: TObject);
    procedure acCancelaMesaExecute(Sender: TObject);
    procedure acReservarMesaExecute(Sender: TObject);
    procedure acAlterarTituloMesaExecute(Sender: TObject);
    procedure qrVendaMesaAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure AtualizaTotalMesa(iVenda: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrVendaMesaAfterRefresh(DataSet: TDataSet);
    procedure qrVendaMesaBeforeRefresh(DataSet: TDataSet);
    procedure qrVendaMesaCalcFields(DataSet: TDataSet);
    procedure CarregaParametrosConfig;
    procedure acAlteraPessoasExecute(Sender: TObject);
    procedure btConfiguracoesClick(Sender: TObject);
    constructor Create(Sender: tcomponent; tipo: string = 'M');
    procedure qrVendaItemBeforeOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure qrVendaPagAntecipadoBeforeOpen(DataSet: TDataSet);
    procedure rbMesaClick(Sender: TObject);
    procedure acLimparMesaExecute(Sender: TObject);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure acMenuExecute(Sender: TObject);
    procedure acFecharMesa1Execute(Sender: TObject);
    procedure acPrefechamentoExecute(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AjustaGrade;
    procedure ReimpressaoExecute(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    vendaSelecionada, nroMesaSelecionada, id_garcom_selecionado,
      iNroComandaInicio, iNroComandaFim: Integer;
    tipoVendaSelecionada, tipo_filtro: string;
    bTaxaAdicionalMesa, bTaxaAdicionalComanda, bExigeGarconLancarItemMesa,
      bExigeGarconLancarItemComanda, bExigeSenhaCancelamentoItemMesa,
      bExigeSenhaCancelamentoItemComanda, bExigePreFechamentoMesa,
      bExigeSenhaCancelamentoItem, bExigePreFechamentoComanda,
      bExigeSenhaCancelamentoComanda, bExigeSenhaTranferenciaMesa,
      bExigeSenhaReaberturaComanda, bExigeSenhaReaberturaMesa,
      bExigesenhaprefechamentomesa, bExigesenhafechamentomesa,
      bExigesenhaprefechamentocomanda, bExigesenhafechamentocomanda,
      bExigeSenhaJuntarMesa, bExigeSenhaJuntarComanda, acesso_mesa_usuario,
      acesso_comanda_usuario, bExigirnomeabrirmesa, bExigeGarconLancarItem,
      b_aguardar_liberacao_mesa: boolean;

    procedure acAberturaDeMesaExecute(Sender: TObject; tipo_venda: string;
      comanda, id_mesa: variant; status: Integer); overload;
  end;

var
  frmControleMesa: TfrmControleMesa;

implementation

{$R *.dfm}

uses uMenu, uPadrao, uFuncoes, Funcao_DB, uControleMesaItensAcoes,
  uControleMesaJuntarTransferir, uBuscaRegistro, uReimprimirCancelarCupom,
  uControleMesaRenomear, uControleMesaReservar, uControleMesaFechamento,
  uControleMesaPessoas, uConfiguracao, ufechamentomesacomanda,
  uVendaSelecaoTamanho, uVendaItemFracionado, uGeradorSAT,
  uControleMesaImpressaoCozinha, uControleMesaRelatorios, uTransferenciaiten,
  uControleDelivery, uVendaBalcao, uVendaBalcaoTouch, uPDV,
  uControleMesaUtilitarios, uControleMesaJuntar,
  uControleMesaPagamentoAntecipado, uVendaSelecaoPreco, uControlemesalancamento;

constructor TfrmControleMesa.Create(Sender: tcomponent; tipo: string = 'M');
begin
  inherited Create(Sender);

  buscacampo(acesso_mesa_usuario,
    'select b_acesso_venda_mesa from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  buscacampo(acesso_comanda_usuario,
    'select b_acesso_venda_comanda from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);

  frmmenu.VerificaPermissaoAcesso
    ((acesso_mesa_usuario or acesso_comanda_usuario));

  // verifica se existe caixa aberto para o usuário atual
  frmmenu.VerificaCaixaAberto;

  if tipo = 'M' then
    rbMesa.Checked := true
  else
  begin
    rbComanda.Checked := true;
    rbMesaClick(nil);
  end;

  qrVendaMesa.open;
  qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.AdvGlowButton10Click(Sender: TObject);
begin
  close;
end;

procedure TfrmControleMesa.AdvGlowButton7Click(Sender: TObject);
begin
  close;
end;

procedure TfrmControleMesa.AtualizaTotalMesa(iVenda: Integer);
begin
  ExecutaComandoSQL('select fn_calcula_total_venda(:idvenda,:idempresa);',
    vararrayof([iVenda, recproj.iEmp]));
end;

procedure TfrmControleMesa.acAberturaDeMesaExecute(Sender: TObject);
begin
  acAberturaDeMesaExecute(Sender, 'M', null, qrVendaMesa.FieldByName('id_mesa')
    .AsInteger, qrVendaMesa.FieldByName('status').AsInteger);
end;

procedure TfrmControleMesa.acAberturaDeMesaExecute(Sender: TObject;
  tipo_venda: string; comanda, id_mesa: variant; status: Integer);
var
  sql: string;
  liberada, ok: boolean;
  qr_aux: TUniQuery;
begin
  liberada := true;
  // se a mesa esta reservada pergunta se deseja abrir
  if tipo_venda = 'M' then
  begin
    if status = 19 then
      liberada := Application.MessageBox
        ('A mesa está reservada, gostaria de abrir mesmo assim?', 'Atenção',
        mB_ICONQUESTION + MB_yesno) = mrYes;
  end;

  if liberada then
  begin
    if tipo_venda = 'C' then
      id_mesa := null
    else
      comanda := null;

    qr_aux := TUniQuery.Create(self);
    qr_aux.Connection := frmmenu.conexao;

    // antes de lançar verifica se não existe venda vinculada a mesa...
    sql := ' select 1 from venda where ven_024=:tipo_venda and (ven_025=:id_mesa or ven_026=:comanda) and   '
      + ' sit_001 in (8, 15, 19, 21) and emp_001 = :id_empresa';
    PreparaQuerySQL(qr_aux, sql);
    qr_aux.ParamByName('id_mesa').Value := id_mesa;
    qr_aux.ParamByName('comanda').Value := comanda;
    qr_aux.ParamByName('id_empresa').Value := recproj.iEmp;
    qr_aux.ParamByName('tipo_venda').Value := tipo_venda;
    qr_aux.open;
    if qr_aux.RecordCount > 0 then
    begin
      Application.MessageBox
        ('Impossível abrir a venda. A venda já encontra-se ativa!', 'Atenção',
        MB_ICONINFORMATION + MB_OK);
      qrVendaMesa.Refresh;
      qr_aux.Free;
      exit;
    end;
    qr_aux.Free;

    // abre a venda para a mesa selecionada ou comanda
    sql := ' insert into venda (ven_001, ven_002, emp_001, dat_001_1, ven_025, cli_001, '
      + ' sit_001, usu_001_1, VEN_024, ven_029, ' +
      ' ven_004, ven_023, id_caixa_abertura, ven_026, terminal_abertura) ' +
      ' values ( (select coalesce(max(ven_001) ,0)+1 from  venda where emp_001 = :emp) , 0 , :emp, LOCALTIMESTAMP, :id_mesa, 0, '
      + ' 8, :id_usuario, :tipo_venda, (select coalesce(max(ven_001) ,0)+1 from  venda where emp_001 = :emp), '
      + ' LOCALTIMESTAMP, ''N'', :id_caixa_abertura, :comanda, :terminal_abertura)';
    ExecutaComandoSQL(sql, vararrayof([recproj.iEmp, id_mesa, recproj.iUsuario,
      tipo_venda, recproj.iIDCaixa, comanda, NomeDoTerminal]));
    // atualiza a mesa reservada
    if tipo_venda = 'M' then
    begin
      sql := format
        (' update mesa set sit_001=4, nome_reserva=null, telefone_reserva=null, '
        + ' data_reserva=null,  hora_reserva=null where mes_001=%s and emp_001=%d',
        [id_mesa, recproj.iEmp]);
      ExecutaComandoSQL(sql);
    end;

    qrVendaMesa.Refresh;

    // Define o foco para a mesa/comanda selecionada
    if tipo_venda = 'M' then
      qrVendaMesa.Locate('id_mesa', id_mesa, [])
    else
      qrVendaMesa.Locate('nro_mesa', comanda, []);

    if bExigirnomeabrirmesa then
      acAlterarTituloMesa.Execute;
  end
  else
  begin
    edMesa.Text := '';
    edMesa.SetFocus;
    Abort;
  end;
end;

procedure TfrmControleMesa.acAlteraPessoasExecute(Sender: TObject);
begin
  frmControleMesaPessoas := TfrmControleMesaPessoas.Create(self,
    qrVendaMesa.FieldByName('id_venda').AsInteger, recproj.iEmp);
  frmControleMesaPessoas.ShowModal;
  frmControleMesaPessoas.Free;
  qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.acAlterarTituloMesaExecute(Sender: TObject);
begin
  frmControleMesaRenomear := TfrmControleMesaRenomear.Create(self,
    qrVendaMesa.FieldByName('id_venda').AsInteger);
  frmControleMesaRenomear.ShowModal;
  frmControleMesaRenomear.Free;
  qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.acCancelaMesaExecute(Sender: TObject);
var
  str_sql, sJust: string;
  id_venda, cod_venda, nro_mesa, id_usuario_cancelamento: Integer;
  ok, bExigeSenhaCancelamentoItem, acesso_cancelamento: boolean;
begin
  buscacampo(acesso_cancelamento,
    'select b_cancelamento_mesa from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);

  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.FieldByName('status').AsInteger in [8, 21] then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemMesa
      else
        bExigeSenhaCancelamentoItem := bExigeSenhaCancelamentoItemComanda;

      id_venda := qrVendaMesa.FieldByName('id_venda').AsInteger;
      cod_venda := qrVendaMesa.FieldByName('cod_venda').AsInteger;
      nro_mesa := qrVendaMesa.FieldByName('nro_mesa').AsInteger;
      // verifica se existe pagamento antecipado para a mesa
      str_sql := ' select 1 from venda_pag_antecipado ' + ' where id_venda=' +
        inttostr(id_venda) + ' and id_situacao=4 and id_empresa=' +
        inttostr(recproj.iEmp);
      ExecutaConsultaSQL(qrAux1, str_sql);
      if qrAux1.RecordCount > 0 then
      begin
        Application.MessageBox
          ('A venda não pode ser cancelada pois já recebeu pagamento!',
          'Atenção', MB_ICONINFORMATION + MB_OK);
        exit;
      end;

      if Application.MessageBox('Deseja cancelar esta mesa?', 'Atenção',
        mB_ICONQUESTION + MB_yesno) = mrYes then
      begin
        // verifica se a venda não possui items
        str_sql :=
          'select 1 from vendaitem where ven_001=:id_venda and emp_001=:emp';
        PreparaQuerySQL(qrAux1, str_sql);
        qrAux1.ParamByName('id_venda').AsInteger := id_venda;
        qrAux1.ParamByName('emp').AsInteger := recproj.iEmp;
        qrAux1.open;
        if qrAux1.RecordCount < 1 then
        begin
          str_sql :=
            'delete from venda where ven_001=:id_venda and emp_001=:emp';
          PreparaQuerySQL(qrAux1, str_sql);
          qrAux1.ParamByName('id_venda').AsInteger := id_venda;
          qrAux1.ParamByName('emp').AsInteger := recproj.iEmp;
          qrAux1.Execute;
          Application.MessageBox('Venda cancelada com sucesso!', 'Atenção',
            MB_ICONINFORMATION + MB_OK);
          qrVendaMesa.Refresh;
        end
        else
        begin
          id_usuario_cancelamento := recproj.iUsuario;
          if bExigeSenhaCancelamentoItem then
            ok := frmmenu.ConfirmacaoSenha('b_cancelamento_mesa',
              id_usuario_cancelamento)
          else
          begin
            if not acesso_cancelamento then
              ok := frmmenu.ConfirmacaoSenha('b_cancelamento_mesa',
                id_usuario_cancelamento)
            else
              ok := true;
          end;
          if ok then
          begin
            if CancelaVenda(id_venda, id_usuario_cancelamento, '') then
            begin
              qrVendaMesa.Refresh;
            end;
          end;
        end;
      end;


    end;
  end;
end;

procedure TfrmControleMesa.acFecharMesa1Execute(Sender: TObject);
var
  venda, id_usuario: Integer;
  flag_valido, bExigePreFechamento, exigesenha: boolean;
begin

  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    exigesenha := bExigesenhafechamentomesa
  else
    exigesenha := bExigesenhafechamentocomanda;

  if exigesenha = true then
  begin
    if frmmenu.ConfirmacaoSenha('b_permite_fechamento_mesa_comanda', id_usuario)
      = false then
      Abort;
  end;

  frmFechamentoMesaComanda := TfrmFechamentoMesaComanda.Create(self,
    qrVendaMesa.FieldByName('nro_mesa').AsInteger,
    qrVendaMesa.FieldByName('tipo_venda').asstring);
  frmFechamentoMesaComanda.ShowModal;
  venda := frmFechamentoMesaComanda.venda_retorno;
  frmFechamentoMesaComanda.Free;

  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    bExigePreFechamento := bExigePreFechamentoMesa
  else
    bExigePreFechamento := bExigePreFechamentoComanda;

  if venda > 0 then
  begin
    if qrVendaMesa.Locate('id_venda', venda, []) then
    begin
      if not(qrVendaMesa.FieldByName('status').AsInteger in [8, 21]) then
        exit;

      if qrVendaItem.RecordCount < 1 then
      begin
        Application.MessageBox('Esta venda não possui itens!', 'Atenção',
          MB_ICONINFORMATION + MB_OK);
      end
      else
      begin
        if (bExigePreFechamento and (qrVendaMesa.FieldByName('status').AsInteger
          <> 21)) then
        begin
          frmControleMesaRelatorios.ImprimeVenda(venda);
          MudaStatusVendaImpresso(venda);
          qrVendaMesa.Refresh;
        end;

        AtualizaTotalMesa(venda);
        frmControleMesaFechamento := TfrmControleMesaFechamento.Create
          (self, venda);
        frmControleMesaFechamento.ShowModal;
        frmControleMesaFechamento.Free;
        qrVendaMesa.Refresh;

      end;
    end;
  end;
end;

procedure TfrmControleMesa.acJuntarMesasExecute(Sender: TObject);
var
  ok, bExigeSenha: boolean;
  id_usuario_canc: Integer;
begin

  id_usuario_canc := recproj.iUsuario;
  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    bExigeSenha := bExigeSenhaJuntarMesa
  else
    bExigeSenha := bExigeSenhaJuntarComanda;

  if bExigeSenha then
    ok := frmmenu.ConfirmacaoSenha('b_permite_juntar_mesa_comanda',
      id_usuario_canc)
  else
    ok := true;

  if ok then
  begin
    frmControleMesaJuntar := TfrmControleMesaJuntar.Create(self,
      qrVendaMesa.FieldByName('id_venda').AsInteger,
      qrVendaMesa.FieldByName('tipo_venda').asstring,
      qrVendaMesa.FieldByName('descricao_mesa').asstring,
      qrVendaMesa.FieldByName('valor_venda').AsFloat);
    frmControleMesaJuntar.ShowModal;
    if frmControleMesaJuntar.tag = 1 then
      AtualizaTotalMesa(qrVendaMesa.FieldByName('id_venda').AsInteger);
    frmControleMesaJuntar.Free;
  end;
  qrVendaMesa.Refresh;
  qrVendaItem.Refresh;

end;

procedure TfrmControleMesa.acLimparMesaExecute(Sender: TObject);
var
  str_sql, str_mesa: string;
begin
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        str_mesa := 'mesa'
      else
        str_mesa := 'comanda';

      if Application.MessageBox(pchar(format('Deseja liberar esta %s?',
        [str_mesa])), 'Atenção', mB_ICONQUESTION + MB_yesno) = mrYes then
      begin
        str_sql :=
          'update venda set ven_015=0 where ven_001=:ivenda and emp_001=:emp';
        ExecutaComandoSQL(str_sql,
          vararrayof([qrVendaMesa.FieldByName('id_venda').AsInteger,
          recproj.iEmp]));
        qrVendaMesa.Refresh;
        edMesa.Text := '';
        edMesa.SetFocus;
        Abort;
      end
      else
      begin
        edMesa.Text := '';
        Abort;
      end;
    end
  end;
end;

procedure TfrmControleMesa.acMenuExecute(Sender: TObject);
begin
  frmControleMesaUtilitarios := TfrmControleMesaUtilitarios.Create(self);
  frmControleMesaUtilitarios.ShowModal;
  frmControleMesaUtilitarios.Free;
end;

procedure TfrmControleMesa.acPagamentoAntecipadoExecute(Sender: TObject);
begin
  frmControleMesaPagamentoAntecipado :=
    TfrmControleMesaPagamentoAntecipado.Create(self,
    qrVendaMesa.FieldByName('id_venda').AsInteger);
  frmControleMesaPagamentoAntecipado.ShowModal;
  FreeAndNil(frmControleMesaPagamentoAntecipado);
  qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.acPreFechamentoImprimirExecute(Sender: TObject);
var
  venda, id_usuario: Integer;
  exigesenha: boolean;
begin

  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    exigesenha := bExigesenhaprefechamentomesa
  else
    exigesenha := bExigesenhaprefechamentocomanda;

  if exigesenha = true then
  begin
    if frmmenu.ConfirmacaoSenha('b_permite_prefechamento_mesa_comanda',
      id_usuario) = false then
      Abort;
  end;

  frmFechamentoMesaComanda := TfrmFechamentoMesaComanda.Create(self,
    qrVendaMesa.FieldByName('nro_mesa').AsInteger,
    qrVendaMesa.FieldByName('tipo_venda').asstring);
  frmFechamentoMesaComanda.ShowModal;
  venda := frmFechamentoMesaComanda.venda_retorno;
  frmFechamentoMesaComanda.Free;
  if venda > 0 then
  begin
    frmControleMesaRelatorios.ImprimeVenda(venda);
    MudaStatusVendaImpresso(venda);
    qrVendaMesa.Refresh;
  end;
end;

procedure TfrmControleMesa.acReabrirMesaExecute(Sender: TObject);
var
  mesa_comanda: string;
  exige_senha, ok, permissao_reabrir: boolean;
  id_usuario: Integer;
begin
  buscacampo(permissao_reabrir,
    'select b_reabrir_mesa_comanda from usuarios where usu_001=' +
    inttostr(recproj.iUsuario), '', false);
  if qrVendaMesa.FieldByName('status').AsInteger = 21 then
  begin
    if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    begin
      mesa_comanda := 'mesa';
      exige_senha := bExigeSenhaReaberturaMesa;
    end
    else
    begin
      mesa_comanda := 'comanda';
      exige_senha := bExigeSenhaReaberturaComanda;
    end;

    if Application.MessageBox
      (pchar(format
      ('A %s encontra-se fechada, deseja reabrir a %s selecionada?',
      [mesa_comanda, mesa_comanda])), 'Atenção', mB_ICONQUESTION + MB_yesno) = mrYes
    then
    begin
      ok := true;
      if exige_senha then
      begin
        ok := frmmenu.ConfirmacaoSenha('b_reabrir_mesa_comanda', id_usuario);
      end
      else
      begin
        if not permissao_reabrir then
        begin
          ok := frmmenu.ConfirmacaoSenha('b_reabrir_mesa_comanda', id_usuario);
        end;
      end;

      if ok then
      begin
        ExecutaComandoSQL(' update venda set sit_001=8 where emp_001=' +
          inttostr(recproj.iEmp) + ' and ven_001=' + qrVendaMesa.FieldByName
          ('id_venda').asstring);
        qrVendaMesa.Refresh;
      end;
    end
    else
    begin
      edMesa.Text := '';
      edMesa.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfrmControleMesa.acReservarMesaExecute(Sender: TObject);
var
  numero_mesa: Integer;
begin
  if qrVendaMesa.RecordCount > 0 then
    numero_mesa := qrVendaMesa.FieldByName('nro_mesa').AsInteger
  else
    numero_mesa := 0;
  frmControleMesaReservar := TfrmControleMesaReservar.Create(self, numero_mesa);
  frmControleMesaReservar.ShowModal;
  frmControleMesaReservar.Free;
  qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.ReimpressaoExecute(Sender: TObject);
{begin
  frmReimpressaoCupom := TfrmReimpressaoCupom.Create(self, 'I');
  frmReimpressaoCupom.ShowModal;
  FreeAndNil(frmReimpressaoCupom);   }
var
 FGerarCFe : GerarCFe;
 finaliza_venda: Boolean;
begin
   qrSat.Close;
   qrSat.SQL.Clear;
   qrSat.SQL.Add('select max(ven_001)as venda from venda');
   qrSat.Open;
//       ShowMessage(qrSat.FieldByName('venda').AsString);
   qrApoio.Close;
   qrApoio.SQL.Clear;
   qrApoio.SQL.Add('select* from venda where ven_001 =:idvenda');
   qrApoio.ParamByName('idvenda').AsInteger := qrSat.FieldByName('venda').AsInteger;
   qrApoio.Open;

  if qrApoio.FieldByName('tipofiscal').AsString <> '' then
   begin
     ShowMessage('Arquivo fiscal já emitido para esta venda');
     Exit
   end;

   try
     FGerarCFe := GerarCFe.Create;
     finaliza_venda := FGerarCFe.Autorizar(qrSat.FieldByName('venda').AsInteger, RecProj.iEmp);
      if not finaliza_venda then
      begin
        Application.MessageBox(pchar( 'Código erro SAT: '+ IntToStr(FGerarCFe.codigoRet) + #13#10 + FGerarCFe.mensagem), 'Atenção', MB_ICONWARNING);
      end;
      FreeAndNil(FGerarCFe);
   except
      on E : Exception do
      begin
        finaliza_venda := false;
        Application.MessageBox(pchar('Problema ao comunicar-se com o SAT. Detalhes do erro:'+#13#10+E.Message),'Atenção', mb_iconerror );
      end;
   end;
end;

procedure TfrmControleMesa.acPrefechamentoExecute(Sender: TObject);
var
  venda, id_usuario: Integer;
  exigesenha: boolean;
begin
  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    exigesenha := bExigesenhaprefechamentomesa
  else
    exigesenha := bExigesenhaprefechamentocomanda;

  if exigesenha = true then
  begin
    if frmmenu.ConfirmacaoSenha('b_permite_prefechamento_mesa_comanda',
      id_usuario) = false then
      Abort;
  end;

  frmFechamentoMesaComanda := TfrmFechamentoMesaComanda.Create(self,
    qrVendaMesa.FieldByName('nro_mesa').AsInteger,
    qrVendaMesa.FieldByName('tipo_venda').asstring);
  frmFechamentoMesaComanda.ShowModal;
  venda := frmFechamentoMesaComanda.venda_retorno;
  FreeAndNil(frmFechamentoMesaComanda);

  if venda > 0 then
  begin
    frmControleMesaRelatorios.ImprimeVenda(venda);
    MudaStatusVendaImpresso(venda);
    qrVendaMesa.Refresh;
  end;
end;

procedure TfrmControleMesa.acTranferenciaMesaExecute(Sender: TObject);
var
  ok: boolean;
  id_usuario_canc: Integer;
begin
  id_usuario_canc := recproj.iUsuario;

  if bExigeSenhaTranferenciaMesa then
    ok := frmmenu.ConfirmacaoSenha('b_transferencia_mesa', id_usuario_canc)
  else
    ok := true;

  if ok then
  begin
    frmControleMesaJuntarTransferir := TfrmControleMesaJuntarTransferir.Create
      (nil, qrVendaMesa.FieldByName('id_venda').AsInteger,
      qrVendaMesa.FieldByName('nro_mesa').AsInteger, 1, id_usuario_canc);
    frmControleMesaJuntarTransferir.ShowModal;
    if frmControleMesaJuntarTransferir.tag = 1 then
    begin
      qrVendaMesa.Locate('id_mesa',
        frmControleMesaJuntarTransferir.id_mesa_destino, []);
      edMesa.Text := qrVendaMesa.FieldByName('nro_mesa').asstring;
    end;
    frmControleMesaJuntarTransferir.Free;
  end;
  qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.btConfiguracoesClick(Sender: TObject);
begin
  frmConfiguracao := TfrmConfiguracao.Create(self, 3); // aba 3 mesa
  frmConfiguracao.ShowModal;
  frmConfiguracao.Free;
  CarregaParametrosConfig;
end;

procedure TfrmControleMesa.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmControleMesa.DBCtrlGrid1Click(Sender: TObject);
begin
  edMesa.Text := qrVendaMesa.FieldByName('nro_mesa').asstring;

  if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
    rbMesa.Checked := true
  else
    rbComanda.Checked := true;
end;

procedure TfrmControleMesa.DBCtrlGrid1DblClick(Sender: TObject);
begin
  edMesaExit(nil);
end;

procedure TfrmControleMesa.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
// Controle
begin
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
      begin
        if qrVendaMesa.FieldByName('status').AsInteger = 4 then // Livre
          imgMesa.Picture := imgLivre.Picture
        else if qrVendaMesa.FieldByName('status').AsInteger = 19 then
          // Reservada
          imgMesa.Picture := imgReserva.Picture
        else if qrVendaMesa.FieldByName('status').AsInteger = 8 then
          imgMesa.Picture := imgOcupada.Picture
        else if qrVendaMesa.FieldByName('status').AsInteger = 15 then // Limpeza
          imgMesa.Picture := imgLimpeza.Picture
        else if qrVendaMesa.FieldByName('status').AsInteger = 21 then // Fechada
          imgMesa.Picture := imgFechada.Picture
        else
          imgMesa.Picture := imgLimpeza.Picture // Arrumar aqui
      end

      else
      begin
        if qrVendaMesa.FieldByName('status').AsInteger = 8 then
          imgMesa.Picture := imgComandaOcupada.Picture
        else if qrVendaMesa.FieldByName('status').AsInteger = 15 then
          imgMesa.Picture := imgComandaLimpeza.Picture
        else
          imgMesa.Picture := imgComandaFechada.Picture;
      end;
      imgMesa.Visible := true;
    end
    else
      imgMesa.Picture := nil;
  end;

  AjustaGrade;
end;

procedure TfrmControleMesa.edMesaExit(Sender: TObject);
var
  mesaAtual, mesaTopo, str_sql: string;
  statusMesa, numero_mesa_comanda: Integer;
  qr_aux: TUniQuery;
  procedure limpa_sai;
  begin
    // Vai ao topo do controle e depois volta pra mesa, questão visual
    qrVendaMesa.Locate('nro_mesa', mesaTopo, []);
    qrVendaMesa.Locate('nro_mesa', mesaAtual, []);
    edMesa.Clear;
    Abort;
  end;

begin
  if edMesa.Text <> '' then
  begin
    mesaAtual := qrVendaMesa.FieldByName('nro_mesa').asstring;

    try
      numero_mesa_comanda := strtoint(edMesa.Text);
    except
      Application.MessageBox('Mesa inexistente!', pchar(self.caption),
        MB_ICONINFORMATION);
      limpa_sai;
    end;

    if rbMesa.Checked then
    begin
      tipo_filtro := 'M';
      bExigeGarconLancarItem := bExigeGarconLancarItemMesa;
    end
    else
    begin
      tipo_filtro := 'C';
      bExigeGarconLancarItem := bExigeGarconLancarItemComanda;
    end;

    if bExigeGarconLancarItem then
    begin
      if not frmmenu.ConfirmacaoSenha('b_funcao_garcom', id_garcom_selecionado)
      then
        limpa_sai;
    end;

    if qrVendaMesa.Locate('nro_mesa;tipo_venda',
      vararrayof([strtoint(edMesa.Text), tipo_filtro]), []) then
    begin
      ValidaAcoesStatusMesas;
      statusMesa := qrVendaMesa.FieldByName('status').AsInteger;

      if tipo_filtro = 'C' then
      begin
        str_sql :=
          'select com_001, com_003 from comanda where emp_001=:emp_001 and com_003=:com_003 and sit_001=5';
        qraux1 := tuniquery.Create(self);
        qraux1.Connection := frmmenu.conexao;
        qraux1.SQL.Add(str_sql);
        qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
        qraux1.ParamByName('com_003').AsInteger := StrToInt(edMesa.Text);
        qraux1.Open;

        if qraux1.RecordCount > 0 then // comanda bloqueada (não ocorre para mesa)
        begin
          Application.MessageBox('Comanda bloqueada!', 'Alerta', +MB_ICONQUESTION + mb_ok);
          limpa_sai;
        end;
      end;

      if statusMesa <> 8 then // Se a mesa não estiver aberta
      begin
        if statusMesa = 4 then
        // Mesa disponível não aberta (não ocorre para comanda)
        begin
          if Application.MessageBox
            ('A mesa ainda não foi aberta, gostaria de abri-la?',
            pchar(self.caption), mB_ICONQUESTION + MB_yesno) = mrYes then
            acAberturaDeMesa.Execute
          else
            limpa_sai;
        end
        else if statusMesa = 19 then // mesa Reservada (não ocorre para comanda)
          acAberturaDeMesa.Execute
        else if statusMesa = 15 then // mesa aguardando limpeza (não ocorre para comanda)
          acLimparMesa.Execute
        else // mesa fechada
          acReabrirMesa.Execute;
      end;
    end
    else // Não encontrou a mesa
    begin
      if rbMesa.Checked then
      begin
        str_sql :=
          format('select mes_001 from mesa where mes_003=%d and emp_001=%d and sit_001=4',
          [numero_mesa_comanda, recproj.iEmp]);
        qr_aux := TUniQuery.Create(self);
        qr_aux.Connection := frmmenu.conexao;

        if not ExecutaConsultaSQL(qr_aux, str_sql) then
        begin
          Application.MessageBox('Mesa inexistente!', pchar(self.caption),
            MB_ICONINFORMATION);
          limpa_sai;
        end
        else // Abre como Mesa
          acAberturaDeMesaExecute(self, 'M', numero_mesa_comanda,
            qr_aux.FieldByName('mes_001').AsInteger, 4);
        FreeAndNil(qr_aux);
      end
      else
      begin

        str_sql :=
          format('select com_001,com_003 from comanda where com_003=%d and emp_001=%d and sit_001=4',
          [numero_mesa_comanda, recproj.iEmp]);
        qr_aux := TUniQuery.Create(self);
        qr_aux.Connection := frmmenu.conexao;

        if not ExecutaConsultaSQL(qr_aux, str_sql) then
        begin
          Application.MessageBox('Comanda inexistente!', pchar(self.caption),
            MB_ICONINFORMATION);
          limpa_sai;
        end
        else // Abre como Mesa
          acAberturaDeMesaExecute(self, 'C', numero_mesa_comanda,
            qr_aux.FieldByName('com_003').AsInteger, 4);
        FreeAndNil(qr_aux);
      end

    end;
    ValidaAcoesStatusMesas;
    frmcontrolemesalancamento := tfrmcontrolemesalancamento.Create(self,
      numero_mesa_comanda, tipo_filtro);
    frmcontrolemesalancamento.ShowModal;
    qrVendaMesa.Refresh;
    FreeAndNil(frmcontrolemesalancamento);
    edMesa.Clear;
    edMesa.SetFocus;

  end;

end;

procedure TfrmControleMesa.FormCreate(Sender: TObject);
var
  i: Integer;
  str_aux: string;
  tmpFrmPadrao: TfrmPadrao;
begin
  vendaSelecionada := 0;

  CarregaParametrosConfig;

  qrVendaMesa.ParamByName('emp').AsInteger := recproj.iEmp;
  qrVendaMesa.open;

  rbMesa.Enabled := acesso_mesa_usuario;
  rbComanda.Enabled := acesso_comanda_usuario;

  frmControleMesaRelatorios := TfrmControleMesaRelatorios.Create(self);
end;

procedure TfrmControleMesa.CarregaParametrosConfig;
var
  sql: string;
begin
  bExigeSenhaCancelamentoComanda :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigeSenhaTranferenciaMesa := LerBooleanConfig('CKEXIGIRSENHATRANSFMESA',
    frmmenu.cdsCFG.FileName);

  bTaxaAdicionalMesa := LerBooleanConfig('TAXAADICIONAL',
    frmmenu.cdsCFG.FileName);
  bTaxaAdicionalComanda := LerBooleanConfig('TAXAADICIONALCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigeGarconLancarItemMesa := LerBooleanConfig('CKEXIGIRGARCOMLANCARITEM',
    frmmenu.cdsCFG.FileName);
  bExigeGarconLancarItemComanda :=
    LerBooleanConfig('CKEXIGIRGARCOMLANCARITEMCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoItemMesa :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENS', frmmenu.cdsCFG.FileName);
  bExigeSenhaCancelamentoItemComanda :=
    LerBooleanConfig('CKEXIGIRSENHACANCELAMENTOITENSCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigePreFechamentoMesa := LerBooleanConfig('CKEXIGEPREFECHAMENTOMESA',
    frmmenu.cdsCFG.FileName);
  bExigePreFechamentoComanda := LerBooleanConfig('CKEXIGEPREFECHAMENTOCOMANDA',
    frmmenu.cdsCFG.FileName);

  bExigeSenhaReaberturaComanda :=
    LerBooleanConfig('CKEXIGIRSENHAREABRIRCOMANDA', frmmenu.cdsCFG.FileName);
  bExigeSenhaReaberturaMesa := LerBooleanConfig('CKEXIGIRSENHAREABRIRMESA',
    frmmenu.cdsCFG.FileName);

  bExigesenhaprefechamentomesa :=
    LerBooleanConfig('CKEXIGIRSENHAPREFECHAMENTOMESA', frmmenu.cdsCFG.FileName);
  bExigesenhafechamentomesa := LerBooleanConfig('CKEXIGIRSENHAFECHAMENTOMESA',
    frmmenu.cdsCFG.FileName);

  bExigesenhaprefechamentocomanda :=
    LerBooleanConfig('CKEXIGIRSENHAPREFECHAMENTOCOMANDA',
    frmmenu.cdsCFG.FileName);
  bExigesenhafechamentocomanda :=
    LerBooleanConfig('CKEXIGIRSENHAFECHAMENTOCOMANDA', frmmenu.cdsCFG.FileName);

  bExigeSenhaJuntarMesa := LerBooleanConfig('CKEXIGIRSENHAJUNTARMESA',
    frmmenu.cdsCFG.FileName);
  bExigeSenhaJuntarComanda := LerBooleanConfig('CKEXIGIRSENHAJUNTARCOMANDA',
    frmmenu.cdsCFG.FileName);

  bExigirnomeabrirmesa := LerBooleanConfig('ckExigirnomemesa',
    frmmenu.cdsCFG.FileName);
  b_aguardar_liberacao_mesa := LerBooleanConfig('ckLiberacaoPosFechamentoMesa',
    frmmenu.cdsCFG.FileName);

  sql := format
    ('select numero_comanda_inicio, numero_comanda_fim from empresas where emp_001=%d',
    [recproj.iEmp]);
  ExecutaConsultaSQL(qrAux1, sql);
  iNroComandaInicio := qrAux1.Fields[0].AsInteger;
  iNroComandaFim := qrAux1.Fields[1].AsInteger;

end;

procedure TfrmControleMesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0)
end;

procedure TfrmControleMesa.AjustaGrade;
var
  iVerifica: Integer;
begin
  // Ajusta Panels Redimensiona tamanho conforme a resolução
  DBCtrlGrid1.ColCount := Trunc(DBCtrlGrid1.Width / 128);
  DBCtrlGrid1.RowCount := Trunc(DBCtrlGrid1.height / 112);

  if qrVendaMesa.Active then
  begin
    iVerifica := 1;

    if qrVendaMesa.RecordCount > 0 then
      iVerifica := Ceil(qrVendaMesa.RecordCount / DBCtrlGrid1.ColCount);

    if iVerifica > DBCtrlGrid1.RowCount then
      ShowScrollBar(DBCtrlGrid1.Handle, SB_VERT, true)
    else
      ShowScrollBar(DBCtrlGrid1.Handle, SB_VERT, false);
  end
  else
    ShowScrollBar(DBCtrlGrid1.Handle, SB_VERT, false);
end;

procedure TfrmControleMesa.FormShow(Sender: TObject);
var
  caminho: string;
begin
  edMesa.SetFocus;
  rbMesaClick(self);

  // carrega a imagem de logo
  try
    caminho := ExtractFilePath(Application.ExeName) + '\imagens\logoMesa.png';
    if FileExists(caminho) then
      imgLogoCliente.Picture.LoadFromFile(caminho);
  except
  end;

  self.caption := frmmenu.cabecalho;
end;

procedure TfrmControleMesa.qrVendaItemBeforeOpen(DataSet: TDataSet);
var
  bTaxaAdicional: boolean;
begin
  bTaxaAdicional := false;
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        bTaxaAdicional := bTaxaAdicionalMesa
      else
        bTaxaAdicional := bTaxaAdicionalComanda;
    end;
  end;

  if bTaxaAdicional then
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger := 1
  else
    qrVendaItem.ParamByName('flag_taxa_10').AsInteger := 0;
end;

procedure TfrmControleMesa.qrVendaMesaAfterOpen(DataSet: TDataSet);
begin
  ValidaAcoesStatusMesas;
end;

procedure TfrmControleMesa.qrVendaMesaAfterRefresh(DataSet: TDataSet);
begin
  if nroMesaSelecionada <> 0 then
    qrVendaMesa.Locate('nro_mesa;tipo_venda',
      vararrayof([nroMesaSelecionada, tipoVendaSelecionada]), []);
end;

procedure TfrmControleMesa.qrVendaMesaAfterScroll(DataSet: TDataSet);
begin
  qrVendaItem.close;
  qrVendaPagAntecipado.close;
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.FieldByName('id_venda').IsNull then
      vendaSelecionada := 0
    else
    begin
      vendaSelecionada := qrVendaMesa.FieldByName('id_venda').AsInteger;
      tipoVendaSelecionada := qrVendaMesa.FieldByName('tipo_venda').asstring;

      qrVendaItem.ParamByName('emp').AsInteger := recproj.iEmp;
      qrVendaItem.ParamByName('id_venda').AsInteger := vendaSelecionada;

      qrVendaPagAntecipado.ParamByName('id_venda').AsInteger :=
        vendaSelecionada;
      qrVendaPagAntecipado.ParamByName('emp').AsInteger := recproj.iEmp;

      qrVendaItem.open;
      qrVendaPagAntecipado.open;
    end;

    ValidaAcoesStatusMesas;
  end;
end;

procedure TfrmControleMesa.qrVendaMesaBeforeRefresh(DataSet: TDataSet);
begin
  nroMesaSelecionada := qrVendaMesa.FieldByName('nro_mesa').AsInteger;
  tipoVendaSelecionada := qrVendaMesa.FieldByName('tipo_venda').asstring;
end;

procedure TfrmControleMesa.qrVendaMesaCalcFields(DataSet: TDataSet);
begin
  qrVendaMesa.FieldByName('data_atual').AsDateTime := Date + Time;
end;

procedure TfrmControleMesa.qrVendaPagAntecipadoBeforeOpen(DataSet: TDataSet);
var
  bTaxaAdicional: boolean;
begin
  bTaxaAdicional := false;
  if qrVendaMesa.Active then
  begin
    if qrVendaMesa.RecordCount > 0 then
    begin
      if qrVendaMesa.FieldByName('tipo_venda').asstring = 'M' then
        bTaxaAdicional := bTaxaAdicionalMesa
      else
        bTaxaAdicional := bTaxaAdicionalComanda;
    end;
  end;

  if bTaxaAdicional then
    qrVendaPagAntecipado.ParamByName('flag_taxa_10').AsInteger := 1
  else
    qrVendaPagAntecipado.ParamByName('flag_taxa_10').AsInteger := 0;
end;

procedure TfrmControleMesa.rbMesaClick(Sender: TObject);
begin
  qrVendaMesa.Filtered := true;
  edMesa.Clear;

  if rbMesa.Checked then
  begin
    if not acesso_mesa_usuario then
    begin
      Application.MessageBox(pchar(format('Acesso negado para o usuário %s!',
        [recproj.sUsuario])), 'Atenção', MB_ICONWARNING);
      rbMesa.Checked := false;
      Abort;
    end;

    qrVendaMesa.Filter := 'tipo_venda=''M''';
    acFecharMesa.caption := '&Fechar mesa [F6]';
    AdvGlowButton12.caption := '&Fechar mesa [F6]';
    acReabrirMesa.caption := 'Rea&brir mesa [Ctrl+A]';
    acCancelaMesa.caption := 'Cancelar mesa [Ctrl+W]';
    acLimparMesa.caption := 'Liberar mesa';
    acAlterarTituloMesa.caption := 'Alterar nome da mesa';
    acJuntarMesas.caption := '&Juntar mesas [F9]';
    acReservarMesa.caption := '&Reservar mesa [Ctrl+F]';
    acTranferenciaMesa.caption := 'Transferir mesa [F8]';

    imgOcupada.Visible := true;
    imgFechada.Visible := true;
    imgReserva.Visible := true;
    imgLimpeza.Visible := true;
    imgComandaOcupada.Visible := false;
    imgComandaFechada.Visible := false;
    imgComandaLimpeza.Visible := false;
    lbLegendaReservada.Visible := true;
  end
  else
  begin
    if not acesso_comanda_usuario then
    begin
      Application.MessageBox(pchar(format('Acesso negado para o usuário %s!',
        [recproj.sUsuario])), 'Atenção', MB_ICONWARNING);
      rbMesa.Checked := false;
      Abort;
    end;

    qrVendaMesa.Filter := 'tipo_venda=''C''';
    acFecharMesa.caption := '&Fechar comanda [F6]';
    AdvGlowButton12.caption := '&Fechar comanda [F6]';
    acReabrirMesa.caption := 'Rea&brir comanda [Ctrl+A]';
    acCancelaMesa.caption := 'Cancelar comanda [Ctrl+W]';
    acLimparMesa.caption := 'Liberar comanda';
    acAlterarTituloMesa.caption := 'Alterar nome da comanda';
    acJuntarMesas.caption := '&Juntar comandas [F9]';
    acReservarMesa.caption := '&Reservar comanda [Ctrl+F]';
    acTranferenciaMesa.caption := 'Transferir comanda [F8]';

    imgOcupada.Visible := false;
    imgFechada.Visible := false;
    imgReserva.Visible := false;
    imgLimpeza.Visible := false;
    imgComandaOcupada.Visible := true;
    imgComandaFechada.Visible := true;
    imgComandaLimpeza.Visible := true;
    lbLegendaReservada.Visible := false;
  end;

  if (edMesa.canfocus) and (self.Visible) then
    edMesa.SetFocus;
end;

procedure TfrmControleMesa.Timer1Timer(Sender: TObject);
begin
  if qrVendaMesa.Active then
    qrVendaMesa.Refresh;
end;

procedure TfrmControleMesa.ValidaAcoesStatusMesas;
var
  codStatus: Integer;
  tipo_venda, str_sql: string;
begin
  if qrVendaMesa.RecordCount > 0 then
  begin
    // habilita desabilita ações de acordo com o status da mesa
    codStatus := qrVendaMesa.FieldByName('status').AsInteger;
    tipo_venda := qrVendaMesa.FieldByName('tipo_venda').asstring;

    // Disponivel e reservada
    if codStatus in [4, 19] then
    begin
      acAberturaDeMesa.Enabled := true;
      acPrefechamento.Enabled := true;
      acFecharMesa.Enabled := true;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acReabrirMesa.Enabled := false;
      acCancelaMesa.Enabled := false;
      acReservarMesa.Enabled := true;
      acAlterarTituloMesa.Enabled := false;
      acAlteraPessoas.Enabled := false;
      acLimparMesa.Enabled := false;
    end
    // ocupada
    else if codStatus = 8 then
    begin
      acAberturaDeMesa.Enabled := false;
      acPrefechamento.Enabled := true;
      acFecharMesa.Enabled := true;
      acPagamentoAntecipado.Enabled := true;
      acReabrirMesa.Enabled := false;
      acCancelaMesa.Enabled := true;
      acReservarMesa.Enabled := true;
      acAlterarTituloMesa.Enabled := true;
      acAlteraPessoas.Enabled := true;
      acLimparMesa.Enabled := false;
      acJuntarMesas.Enabled := true;

      if tipo_venda = 'M' then
      begin
        acTranferenciaMesa.Enabled := true;
      end
      else
      begin
        acTranferenciaMesa.Enabled := false;
      end;
    end
    // Pre Fechada
    else if codStatus = 21 then
    begin
      acAberturaDeMesa.Enabled := false;
      acPrefechamento.Enabled := true;
      acFecharMesa.Enabled := true;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acReabrirMesa.Enabled := true;
      acCancelaMesa.Enabled := true;
      acReservarMesa.Enabled := false;
      acAlterarTituloMesa.Enabled := true;
      acAlteraPessoas.Enabled := false;
      acLimparMesa.Enabled := false;
    end
    else if codStatus = 15 then // Aguardando liberação para limpeza
    begin
      acAberturaDeMesa.Enabled := false;
      acPrefechamento.Enabled := false;
      acFecharMesa.Enabled := false;
      acTranferenciaMesa.Enabled := false;
      acJuntarMesas.Enabled := false;
      acPagamentoAntecipado.Enabled := false;
      acReabrirMesa.Enabled := false;
      acCancelaMesa.Enabled := false;
      acReservarMesa.Enabled := false;
      acAlterarTituloMesa.Enabled := false;
      acAlteraPessoas.Enabled := false;
      acLimparMesa.Enabled := true;
    end;
  end
  else
  begin
    acAberturaDeMesa.Enabled := false;
    acPrefechamento.Enabled := false;
    acFecharMesa.Enabled := false;
    acTranferenciaMesa.Enabled := false;
    acJuntarMesas.Enabled := false;
    acPagamentoAntecipado.Enabled := false;
    acReabrirMesa.Enabled := false;
    acCancelaMesa.Enabled := false;
    acReservarMesa.Enabled := false;
    acAlterarTituloMesa.Enabled := false;
    acAlteraPessoas.Enabled := false;
    acLimparMesa.Enabled := false;
  end;

  if tipo_venda = 'C' then
  begin
    acReservarMesa.Enabled := false;

    str_sql := 'select com_001, com_003 from comanda where emp_001=:emp_001 and com_003=:com_003 and sit_001=5';
    qraux1 := tuniquery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('emp_001').AsInteger := RecProj.iEmp;
    qraux1.ParamByName('com_003').AsInteger := qrVendaMesa.FieldByName('nro_mesa').asinteger;
    qraux1.Open;

    if qraux1.RecordCount > 0 then // comanda bloqueada (não ocorre para mesa)
      acJuntarMesas.Enabled := false;
  end;
end;

end.

