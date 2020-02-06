unit uControlePDVCancItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Datasnap.DBClient, Datasnap.Provider, MemDS, DBAccess,
  Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, frxClass, frxDBSet,
  JvComponentBase, JvEnterTab;

type
  TfrmControlePDVCancItem = class(TfrmModelo)
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVendaItem: TUniQuery;
    qrVendaItemid_empresa: TIntegerField;
    qrVendaItemid_venda: TIntegerField;
    qrVendaItemnro_item: TIntegerField;
    qrVendaItemqtdevenda: TFloatField;
    qrVendaItemvlrvenda: TFloatField;
    qrVendaItemdescricao_item: TWideStringField;
    qrVendaItemobservacao: TWideStringField;
    qrVendaItemcod_status: TIntegerField;
    qrVendaItemstatus: TWideMemoField;
    qrVendaItemdesconto: TFloatField;
    qrVendaItemvalor_total: TFloatField;
    qrVendaItemvalor_taxa10: TFloatField;
    qrVendaItemvalor_total_taxa10: TFloatField;
    qrVendaItemordem_item: TLargeintField;
    qrVendaItemid_material: TIntegerField;
    qrVendaItemitem_fracionado: TIntegerField;
    qrVendaItemacrescimo: TFloatField;
    qrVendaItemdesconto_perc: TFloatField;
    qrVendaItemtipo_venda: TWideStringField;
    qrVendaItemdescricao_mesa: TWideStringField;
    qrVendaItemnro_venda: TIntegerField;
    qrVendaItemfracionado: TWideStringField;
    qrVendaItemdata_hora_lancamento: TDateTimeField;
    qrVendaItemqtdevenda_old: TFloatField;
    qrVendaItemjustificativa_cancelamento: TWideStringField;
    dspVendaItem: TDataSetProvider;
    cdsVendaItem: TClientDataSet;
    cdsVendaItemid_empresa: TIntegerField;
    cdsVendaItemid_venda: TIntegerField;
    cdsVendaItemnro_item: TIntegerField;
    cdsVendaItemqtdevenda: TFloatField;
    cdsVendaItemvlrvenda: TFloatField;
    cdsVendaItemdescricao_item: TWideStringField;
    cdsVendaItemobservacao: TWideStringField;
    cdsVendaItemcod_status: TIntegerField;
    cdsVendaItemstatus: TWideMemoField;
    cdsVendaItemdesconto: TFloatField;
    cdsVendaItemvalor_total: TFloatField;
    cdsVendaItemvalor_total_calc: TFloatField;
    cdsVendaItemitem_fracionado: TIntegerField;
    cdsVendaItemacrescimo: TFloatField;
    cdsVendaItemdesconto_perc: TFloatField;
    cdsVendaItemtipo_venda: TWideStringField;
    cdsVendaItemdescricao_mesa: TWideStringField;
    cdsVendaItemnro_venda: TIntegerField;
    cdsVendaItemfracionado: TWideStringField;
    cdsVendaItemdata_hora_lancamento: TDateTimeField;
    cdsVendaItemqtdevenda_old: TFloatField;
    cdsVendaItemjustificativa_cancelamento: TWideStringField;
    dsVendaItem: TDataSource;
    Label6: TLabel;
    dbeObs: TDBEdit;
    edItem: TEdit;
    Label1: TLabel;
    dbPedido: TfrxDBDataset;
    RepItemCancelado: TfrxReport;
    lblItem: TLabel;
    JvEnterAsTab1: TJvEnterAsTab;
    cdsVendaItemordem_item: TLargeintField;
    constructor Create(Sender: TComponent; id_venda, id_usuario : integer);
    procedure edItemExit(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure VinculaCDSVendaItem(DatasetItens : TDataSet);
    procedure dbeObsChange(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure cdsVendaItemAfterOpen(DataSet: TDataSet);
    procedure cdsVendaItemCalcFields(DataSet: TDataSet);
    procedure cdsVendaItemBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmaEnter(Sender: TObject);
    procedure btConfirmaExit(Sender: TObject);
  private
    { Private declarations }
    nNomeUsuario, sCamImpCaixa : string;
    id_usuario_acao : integer;
    bImprimeCupomItemCancelado, bExigeJustificativa, flag_calcular: boolean;
  public
    { Public declarations }
    item_exclusao : integer;
    flag_exclusao_fracionado : boolean;
  end;

var
  frmControlePDVCancItem: TfrmControlePDVCancItem;

implementation

uses uMenu, Funcao_DB, uFuncoes;

{$R *.dfm}

procedure TfrmControlePDVCancItem.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag := 0;
  self.Close
end;

//Modo Temporário não faz nenhum lançamento, toda a rotina de carregamento e atualização é acionado pela tela que chamou esta...
procedure TfrmControlePDVCancItem.btConfirmaClick(Sender: TObject);
var  str_sql : string;
    continua : boolean;
begin
  edItemExit(nil);

  if (edItem.Text = EmptyStr) then
  begin
    Application.MessageBox('Digite o número do item!', 'Atenção', MB_ICONEXCLAMATION);
    edItem.SetFocus;
    Abort;
  end;

  if (lblItem.Caption = EmptyStr) then
  begin
    Application.MessageBox('Item não encontrado!', 'Atenção', MB_ICONEXCLAMATION);
    edItem.SetFocus;
    Abort;
  end;

  continua:=true;

  //verifica se é item fracionado
  flag_exclusao_fracionado := not  ((cdsVendaItem.FieldByName('item_fracionado').isnull) or (cdsVendaItem.FieldByName('item_fracionado').asinteger=0));

  if flag_exclusao_fracionado then
  begin
    continua := Application.MessageBox('Este item faz parte de uma composição (item fracionado), todos os itens serão removidos. Deseja continuar?', 'Atenção', MB_ICONINFORMATION + MB_YESNO)=mryes;
  end;

  if continua then
  begin
    if (trim(cdsVendaItem.FieldByName('justificativa_cancelamento').asstring) = '') and bExigeJustificativa then
    begin
      Application.MessageBox('Informe o motivo do cancelamento para continuar!', 'Atenção', MB_ICONINFORMATION + mb_OK);
      dbeObs.SetFocus;
      exit;
    end
    else
    begin
      if flag_exclusao_fracionado then
        item_exclusao := cdsVendaItem.FieldByName('item_fracionado').AsInteger
      else
        item_exclusao := cdsVendaItem.FieldByName('nro_item').AsInteger;

      if flag_exclusao_fracionado then
      begin
        str_sql := ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, justificativa_cancelamento=:obs'+    // alterei ite_006=:obs
                   ' where emp_001=:emp and ven_001=:id_venda and item_fracionado=:nro_item ';
        ExecutaComandoSQL(str_sql, vararrayof([id_usuario_acao,
                            cdsVendaItem.FieldByName('justificativa_cancelamento').asstring,
                            cdsVendaItem.FieldByName('id_empresa').AsInteger,
                            cdsVendaItem.FieldByName('id_venda').AsInteger,
                            cdsVendaItem.FieldByName('item_fracionado').AsInteger]));
        if bImprimeCupomItemCancelado then
        begin
          cdsVendaItem.Filter   := format('item_fracionado=%d', [cdsVendaItem.FieldByName('item_fracionado').AsInteger]);
          cdsVendaItem.Filtered := true;
        end;
      end
      else
      begin  // Cancelamento de item
        str_sql := ' update vendaitem set sit_001=2, id_usuario_cancelamento=:id_usuario, justificativa_cancelamento=:obs '+   //ite_006=:obs
                   ' where emp_001=:emp and ven_001=:id_venda and ite_001=:nro_item ';
        ExecutaComandoSQL(str_sql, vararrayof([id_usuario_acao,
                            cdsVendaItem.FieldByName('justificativa_cancelamento').asstring,  //
                            cdsVendaItem.FieldByName('id_empresa').AsInteger,
                            cdsVendaItem.FieldByName('id_venda').AsInteger,
                            cdsVendaItem.FieldByName('nro_item').AsInteger]));
        if bImprimeCupomItemCancelado then
        begin
          cdsVendaItem.Filter   := format('nro_item=%d', [cdsVendaItem.FieldByName('nro_item').AsInteger]);
          cdsVendaItem.Filtered := true;
        end;
      end;

      if bImprimeCupomItemCancelado then
      begin
        RepItemCancelado.PrintOptions.Printer  := sCamImpCaixa;
        RepItemCancelado.Variables['sData']    := QuotedStr(FormatDateTime('dd/mm/yyyy hh:nn', Date + Time));
        RepItemCancelado.Variables['sUsuario'] := QuotedStr(nNomeUsuario);
        RepItemCancelado.PrepareReport;
        RepItemCancelado.Print;
      end;
    end;
  end
  else
  begin
    exit;
  end;
  cdsVendaItem.close;
  cdsVendaItem.open;

  if cdsVendaItem.State in [dsEdit, dsInsert] then
    cdsVendaItem.cancel;

  self.Tag :=1;
  self.Close;
end;

procedure TfrmControlePDVCancItem.btConfirmaEnter(Sender: TObject);
begin
  inherited;
  JvEnterAsTab1.EnterAsTab:= False;
end;

procedure TfrmControlePDVCancItem.btConfirmaExit(Sender: TObject);
begin
  inherited;
  JvEnterAsTab1.EnterAsTab:= True;
end;

procedure TfrmControlePDVCancItem.cdsVendaItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsVendaItem.Edit;
  cdsVendaItemCalcFields(nil);
end;

procedure TfrmControlePDVCancItem.cdsVendaItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dspVendaItem.DataSet.First;
end;

procedure TfrmControlePDVCancItem.cdsVendaItemCalcFields(DataSet: TDataSet);
var valor_unit_calc_arr, diferenca, desconto_calc , total_calc: double;
begin
  if flag_calcular then
   begin

    flag_calcular :=false;

    calculaDescontoItem(0,
                        cdsVendaItem.FieldByName('desconto_perc').AsFloat,
                        cdsVendaItem.FieldByName('qtdevenda').AsFloat,
                        cdsVendaItem.FieldByName('vlrvenda').AsFloat,
                        cdsVendaItem.FieldByName('acrescimo').AsFloat,
                        desconto_calc, total_calc);


    cdsVendaItem.FieldByName('desconto').AsFloat := desconto_calc;
    cdsVendaItem.FieldByName('valor_total_calc').AsFloat := total_calc;

    flag_calcular :=true;
  end;
end;

constructor TfrmControlePDVCancItem.Create(Sender: TComponent; id_venda, id_usuario : integer);
begin
  inherited Create(sender);

  BuscaCampo(nNomeUsuario, format('select usu_002 from usuarios  where usu_001=%d', [id_usuario]), '', false);
  id_usuario_acao := id_usuario;
  item_exclusao:= 0;
  self.Tag := 0;

  qrVendaItem.Close;
  qrVendaItem.ParamByName('id_venda').AsInteger := id_venda;
  qrVendaItem.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrVendaItem.open;

  VinculaCDSVendaItem(qrVendaItem);

  bImprimeCupomItemCancelado:= false;
  bExigeJustificativa:= false;

  sCamImpCaixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  bExigeJustificativa:= LerBooleanConfig('CKEXIGEJUSTIFICATIVACANCITEMPDV', frmMenu.cdsCFG.FileName);

  flag_calcular:= true;
end;

procedure TfrmControlePDVCancItem.dbeObsChange(Sender: TObject);
begin
  inherited;
  if cdsVendaItem.State= dsedit then
  begin
    cdsVendaItem.post;
    cdsVendaItem.edit;
  end;
end;

procedure TfrmControlePDVCancItem.edItemExit(Sender: TObject);
begin
  inherited;
  if edItem.Text <> EmptyStr then
  begin
    if not cdsVendaItem.Locate('ordem_item', StrToInt(edItem.Text), []) then
    begin
      Application.MessageBox('Item não encontrado!', 'Atenção', MB_ICONEXCLAMATION);
      lblItem.Caption:= EmptyStr;
      edItem.SetFocus;
      Abort;
    end
    else
      lblItem.Caption:= cdsVendaItemdescricao_item.AsString;
  end
  else
    lblItem.Caption:= EmptyStr;
end;

procedure TfrmControlePDVCancItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(qrVendaItem);
  FreeAndNil(cdsVendaItem);
  FreeAndNil(dspVendaItem);
end;

procedure TfrmControlePDVCancItem.VinculaCDSVendaItem(DatasetItens : TDataSet);
begin
  cdsVendaItem.close;
  dspVendaItem.DataSet := DatasetItens;
  cdsVendaItem.open;
end;

end.
