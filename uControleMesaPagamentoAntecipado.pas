unit uControleMesaPagamentoAntecipado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, Data.DB, MemDS, DBAccess, Uni, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, cxLabel, cxContainer, Vcl.DBCtrls, cxTextEdit, cxDBEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmControleMesaPagamentoAntecipado = class(TfrmModelo)
    qrPagamentoAntecipado: TUniQuery;
    qrPagamentoAntecipadoid_venda_pag_antecipado: TIntegerField;
    qrPagamentoAntecipadoid_venda: TIntegerField;
    qrPagamentoAntecipadoid_formapgto: TIntegerField;
    qrPagamentoAntecipadovalor: TFloatField;
    qrPagamentoAntecipadodata_hora: TDateTimeField;
    qrPagamentoAntecipadodescricao_forma_pagamento: TWideStringField;
    btCancelar: TAdvGlowButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsPagamentoAntecipado: TDataSource;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1data_hora: TcxGridDBColumn;
    cxGrid1DBTableView1descricao_forma_pagamento: TcxGridDBColumn;
    btNovo: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    lbTotalVenda: TLabel;
    lbTotalAntecipado: TLabel;
    qrPagamentoAntecipadoobservacao: TWideStringField;
    cxGrid1DBTableView1observacao: TcxGridDBColumn;
    lbMesa: TLabel;
    qrPagamentoAntecipadoresponsavel: TWideStringField;
    cxGrid1DBTableView1responsavel: TcxGridDBColumn;
    procedure btCancelarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    constructor Create(sender : Tcomponent ; id_venda : integer ; modo_touch : boolean = false); reintroduce;
    procedure AtualizaSoma;
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
    id_venda, id_usuario : integer;
    mesa_comanda : string;
    valor_venda, valor_antecipado : double;
    modo_touch : boolean;
  public
    { Public declarations }
  end;

var
  frmControleMesaPagamentoAntecipado: TfrmControleMesaPagamentoAntecipado;

implementation

{$R *.dfm}

uses uMenu, uControleMesaPagamentoAntecipadoNovo, uFuncoes, Funcao_DB;

constructor TfrmControleMesaPagamentoAntecipado.Create(sender : Tcomponent ; id_venda : integer; modo_touch : boolean = false);
var str_sql : string;
    qr_aux : Tuniquery;
begin
  inherited Create(sender);

  if not frmmenu.ConfirmacaoSenha('b_permite_pag_antecipado_mesa_comanda', id_usuario) then abort;

  self.id_venda := id_venda;
  self.modo_touch := modo_touch;
  qrPagamentoAntecipado.Close;
  qrPagamentoAntecipado.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrPagamentoAntecipado.ParamByName('id_venda').AsInteger := id_venda;
  qrPagamentoAntecipado.Open;

  str_sql:=format(' select cast(case when v.ven_024=''M'' then m.mes_002 else concat(''COMANDA'', '' '' , v.ven_026 ) end as varchar(40)) as mesa_comanda, '+
                  ' v.ven_009 as valor_venda from venda v '+
                  ' left join mesa m on m.emp_001 = v.emp_001 and m.mes_001 = v.ven_025 '+
                  ' where v.ven_001=%d and v.emp_001=%d',[id_venda, recproj.iEmp]) ;
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  ExecutaConsultaSQL(qr_aux, str_sql);

  mesa_comanda := qr_aux.fieldbyname('mesa_comanda').asstring;
  valor_venda := qr_aux.FieldByName('valor_venda').AsFloat;
  lbMesa.Caption := mesa_comanda;

  AtualizaSoma;

end;

procedure TfrmControleMesaPagamentoAntecipado.AtualizaSoma;
var str_sql : string;
    qr_aux : Tuniquery;
begin
  str_sql:=format(' select coalesce(sum(vpa.valor),0.0) as valor_antecipado, v.ven_009 as valor_venda '+
                  ' from venda_pag_antecipado vpa '+
                  ' join venda v on vpa.id_venda=v.ven_001 and vpa.id_empresa=v.emp_001 '  +
                  ' where vpa.id_situacao=4 and vpa.id_venda=%d and vpa.id_empresa=%d group by v.ven_009',[id_venda, recproj.iEmp]) ;
  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  ExecutaConsultaSQL(qr_aux, str_sql);

  valor_antecipado := qr_aux.FieldByName('valor_antecipado').AsFloat;

  lbTotalVenda.Caption := format('R$ %.2f',[valor_venda]);
  lbTotalAntecipado.Caption := format('R$ %.2f',[valor_antecipado]);
end;


procedure TfrmControleMesaPagamentoAntecipado.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

procedure TfrmControleMesaPagamentoAntecipado.btExcluirClick(Sender: TObject);
var str_sql, msg : string;

begin
  inherited;
  if qrPagamentoAntecipado.RecordCount>0 then
  begin
    msg :=  format('Confirma a exclusão do pagamento de valor R$ %.2f?', [qrPagamentoAntecipado.FieldByName('valor').asfloat]);
    if application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mrYes then
    begin
      //faz o estono do lançamento no caixa
      InserirCaixaItem(RecProj.iIDCaixa,
          qrPagamentoAntecipado.FieldByName('id_formapgto').AsInteger,
          qrPagamentoAntecipado.FieldByName('valor').AsFloat, 'S',
          'Estorno do pagamento antecipado '+ mesa_comanda + ' ' + qrPagamentoAntecipado.FieldByName('observacao').AsString,
          id_venda,0,0,true, 'E');
      //exclui o pagamento anteciapado
      str_sql :=  format('update venda_pag_antecipado set id_situacao=2, id_usuario=%d where id_venda_pag_antecipado=%d',
                          [id_usuario,  qrPagamentoAntecipado.FieldByName('id_venda_pag_antecipado').asinteger]);
      ExecutaComandoSQL(str_sql);
    end;
    qrPagamentoAntecipado.Refresh;
    AtualizaSoma;
  end
  else
  begin
    application.MessageBox('Não existe pagamento a excluir!', 'Atenção', MB_ICONINFORMATION);
  end;

end;

procedure TfrmControleMesaPagamentoAntecipado.btNovoClick(Sender: TObject);
var valor_max : double;
begin
  inherited;
  valor_max := valor_venda - valor_antecipado;
  frmControleMesaPagamentoAntecipadoNovo := tfrmControleMesaPagamentoAntecipadoNovo.Create(self,id_venda, id_usuario, valor_max, modo_touch);
  frmControleMesaPagamentoAntecipadoNovo.ShowModal;
  FreeAndNil(frmControleMesaPagamentoAntecipadoNovo);
  qrPagamentoAntecipado.Refresh;
  AtualizaSoma;
end;

end.
