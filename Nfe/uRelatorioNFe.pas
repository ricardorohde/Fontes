unit uRelatorioNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.StdCtrls, Vcl.ComCtrls, AdvGroupBox, AdvGlowButton, Data.DB, MemDS,
  DBAccess, Uni, frxClass, frxDBSet;

type
  TfrmRelatorioNFe = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lbFiltroCategoria: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    cbRelatorio: TComboBox;
    cbSituacao: TComboBox;
    cbOrdenacao: TComboBox;
    Label3: TLabel;
    edCFOP: TcxButtonEdit;
    ActionList1: TActionList;
    acBuscaCliente: TAction;
    acBuscaCFOP: TAction;
    Label4: TLabel;
    Label5: TLabel;
    lbCliente: TLabel;
    edCodCliente: TcxButtonEdit;
    lbCFOP: TLabel;
    btImprimir: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    qrNotaSaida: TUniQuery;
    repNFe: TfrxReport;
    dbNFe: TfrxDBDataset;
    qrNotaSaidaid_nota_saida: TIntegerField;
    qrNotaSaidaid_cliente: TIntegerField;
    qrNotaSaidaserie: TIntegerField;
    qrNotaSaidacfop: TWideStringField;
    qrNotaSaidavalor_total: TFloatField;
    qrNotaSaidaid_situacao: TIntegerField;
    qrNotaSaidadata_saida: TDateField;
    qrNotaSaidadata_emissao: TDateField;
    qrNotaSaidanumero: TIntegerField;
    qrNotaSaidachave_autorizacao: TWideStringField;
    qrNotaSaidachave_cancelamento: TWideStringField;
    qrNotaSaidafinalidade: TIntegerField;
    qrNotaSaidachave_nf_devolvida: TWideStringField;
    qrNotaSaidasituacao: TWideStringField;
    qrNotaSaidanome_cliente: TWideStringField;
    qrNotaSaidatipo_pessoa: TWideStringField;
    qrNotaSaidasituacao_ie: TWideStringField;
    qrNotaSaidacfop_descricao: TWideStringField;
    procedure edCodClienteExit(Sender: TObject);
    procedure acBuscaClienteExecute(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure edCFOPExit(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cod_cliente : integer;
    cfop : integer;
    i_where,  i_order_by : integer;
  public
    { Public declarations }
  end;

var
  frmRelatorioNFe: TfrmRelatorioNFe;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, uBuscaRegistro;

procedure TfrmRelatorioNFe.acBuscaCFOPExecute(Sender: TObject);
var str_sql : string;
begin
  edCFOP.SetFocus;

  str_sql:= 'select cfop_codigo, cfop_descricao from cfop';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
    CriaIntegerArray([0,1]) ,
    CriaStringArray(['CFOP', 'Descrição']),0, 0);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCFOP.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCFOPExit(nil);

end;

procedure TfrmRelatorioNFe.acBuscaClienteExecute(Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodCliente.SetFocus;

  str_sql:= ' select cli_001, cli_002, cli_012, cli_013, fn_situacoes(sit_001) from clientes ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Cliente', 'Telefone 1','Telefone 2', 'Status' ]),
    0, 1, ' emp_001='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
    edCodCliente.Text:= frmBuscaRegistro.valor_retorno;
  frmBuscaRegistro.Free;
  edCodClienteExit(nil);
end;

procedure TfrmRelatorioNFe.btCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmRelatorioNFe.btImprimirClick(Sender: TObject);
var filtro, ordenacao, situacao_rep, cfop_rep, periodo_rep : string;
begin
  inherited;
  qrNotaSaida.Close;
  filtro := 'where ns.id_empresa=' + inttostr(recproj.iEmp);

  case cbSituacao.ItemIndex of
    1:
    begin
      filtro := filtro + ' and ns.id_situacao=11 ';
      situacao_rep := 'Autorizadas';
    end;
    2:
    begin
      filtro := filtro + ' and ns.id_situacao=2  ';
      situacao_rep := 'Canceladas';
    end
    else
    begin
      filtro := filtro + ' and ns.id_situacao in (2,11) ';
      situacao_rep := 'Todas';
    end;

  end;

  if cod_cliente>0 then
    filtro := filtro +  ' and ns.id_cliente=' + inttostr(cod_cliente);

  if cfop>0 then
  begin
    filtro := filtro +  ' and ns.cfop=' + QuotedStr(inttostr(cfop));
    cfop_rep := inttostr(cfop)
  end
  else
  begin
    cfop_rep := '';
  end;

  filtro := filtro + ' and ns.data_emissao>=:data_inicio and  ns.data_emissao<:data_fim ';

  case cbOrdenacao.ItemIndex of
    0 : ordenacao := ' order by ns.data_emissao ';
    1 : ordenacao := ' order by ns.numero ';
    2 : ordenacao := ' order by ns.cfop ';
  end;

  qrNotaSaida.SQL[i_where] := filtro;
  qrNotaSaida.SQL[i_order_by] := ordenacao;

  qrNotaSaida.ParamByName('data_inicio').AsDate := dtpDataInicial.Date;
  qrNotaSaida.ParamByName('data_fim').AsDate := dtpDataFinal.Date+1;

  qrNotaSaida.Open;

  if qrNotaSaida.RecordCount>0 then
  begin
    periodo_rep := FormatDateTime('dd/mm/yyyy', dtpDataInicial.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', dtpDataFinal.Date);
    repNFe.Variables['sSituacao'] := QuotedStr(situacao_rep);
    repNFe.Variables['sCFOP'] := QuotedStr(cfop_rep);
    repNFe.Variables['sPeriodo'] := QuotedStr(periodo_rep);
    repNFe.PrepareReport;
    repNFe.ShowReport;
  end
  else
    Application.MessageBox('Sem dados no período selecionado!', 'Atenção', MB_ICONINFORMATION);



end;

procedure TfrmRelatorioNFe.edCFOPExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  str_sql := 'select cfop_descricao from cfop where cfop_codigo=''%d'' ';
  LookupBuscaExit(cfop, edCFOP, lbCFOP, str_sql, 'CFOP');
end;

procedure TfrmRelatorioNFe.edCodClienteExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  str_sql := 'select cli_002 from clientes where cli_001=%d and emp_001='+inttostr(recproj.iEmp);
  LookupBuscaExit(cod_cliente, edCodCliente, lbCliente, str_sql, 'Cliente');
end;

procedure TfrmRelatorioNFe.FormCreate(Sender: TObject);
var dia, mes, ano : word;
begin
  inherited;
  //preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);

  i_where := qrNotaSaida.SQL.Count -2;
  i_order_by := qrNotaSaida.SQL.Count -1;

  cod_cliente := 0;
  cfop :=0;

  //self.Width := self.Constraints.MinWidth;
  //self.Height := self.Constraints.MinHeight;
end;

end.
