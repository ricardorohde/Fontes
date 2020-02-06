unit uContasareceberinclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxImageComboBox, Vcl.DBActns, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, AdvGlowButton, cxSpinEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.ComCtrls, AdvGroupBox, uBuscaRegistro, uFuncoes, MemDS,
  DBAccess, Uni, JvCombobox, JvDBCombobox, Datasnap.DBClient, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmContasareceberinclusao = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbCliente: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dtDataDocumento: TDateTimePicker;
    edCodcliente: TcxButtonEdit;
    edNota: TEdit;
    edHistorico: TEdit;
    edValornota: TJvValidateEdit;
    edQtdParcelas: TcxSpinEdit;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    ActionList1: TActionList;
    acBuscacliente: TAction;
    acBuscaConta: TAction;
    btGerarParcelas: TAdvGlowButton;
    dbEspecie: TJvDBComboBox;
    Label5: TLabel;
    qraux1: TUniQuery;
    cdsInclusao: TClientDataSet;
    dsInclusao: TDataSource;
    cdsInclusaodata_vencimento: TDateField;
    cdsInclusaodocumento: TStringField;
    cdsInclusaoespecie: TStringField;
    cdsInclusaovalor: TFloatField;
    cdsInclusaodescricao: TStringField;
    cdsInclusaonro_parcela: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1especie: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1data_vencimento: TcxGridDBColumn;
    cxGridDBTableView1documento: TcxGridDBColumn;
    cxGridDBTableView1valor: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    edCodConta: TcxButtonEdit;
    Label3: TLabel;
    lbConta: TLabel;
    edconta: TcxButtonEdit;
    cdsInclusaototal: TAggregateField;
    procedure acBuscaclienteExecute(Sender: TObject);
    procedure edCodclienteExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btGerarParcelasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure edcontaExit(Sender: TObject);
    procedure edcontaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure acBuscaContaExecute(Sender: TObject);

  private
    cod_cliente,cod_conta,id_usuario_contas_pagar,recebe:integer;
    b_utiliza_controle_cliente:boolean;

  public
   valor:double;
  end;

var
frmContasareceberinclusao: TfrmContasareceberinclusao;

implementation

{$R *.dfm}
uses umenu,Math, uControleContasReceberFiado, Funcao_DB;

procedure TfrmContasareceberinclusao.acBuscaclienteExecute(Sender: TObject);
var
str_sql:string;

begin
    edCodcliente.SetFocus;
    str_sql:= 'select cli_001, cli_002 , cli_003 , ' +
           ' cast(case when tipo_pessoa=''J'' then ''Jurídica'' else ''Física'' end as varchar(10)) as tipo_p, '+
           ' cli_004,cli_017 as telefone from clientes ';
   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
      str_sql,
      CriaIntegerArray([0,1,2]) ,
      CriaStringArray(['Código', 'Cliente', 'Razão Social']),
      0, 1, ' sit_001=4 and emp_001='+IntToStr(RecProj.iEmp), 800, 500);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
     edCodcliente.Text:= frmBuscaRegistro.valor_retorno;
   frmBuscaRegistro.Free;
   edCodclienteExit(nil);
end;

procedure TfrmContasareceberinclusao.acBuscaContaExecute(Sender: TObject);
var
str_sql:string;
begin
  inherited;
   edconta.SetFocus;
   str_sql:= ' select id_conta, descricao, '+
            ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from conta ';
   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2]) ,
    CriaStringArray(['Código', 'Conta', 'Status' ]),
    0, 1, ' id_situacao=4 and b_receber and id_empresa='+IntToStr(RecProj.iEmp));
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
    edconta.Text:= frmBuscaRegistro.valor_retorno;
    frmBuscaRegistro.Free;
    edcontaExit(nil);
end;

procedure TfrmContasareceberinclusao.btConfirmaClick(Sender: TObject);
var
str_sql:string;
nota,utilizacontrolesituacao:integer;
begin
  inherited;
  if cdsinclusao.RecordCount <=0  then
  begin
    Application.MessageBox('NÃO FOI GERADO NENHUMA PARCELA!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end;

  if cod_cliente <=0  then
  begin
    Application.MessageBox('NÃO FOI INFORMADO O CLIENTE!', 'Atenção', MB_ICONINFORMATION);
    if edCodcliente.CanFocus then
    edCodcliente.SetFocus;
    abort;
  end;

  if trim(ednota.Text)='' then
  begin
     Application.MessageBox('O CAMPO NOTA É OBRIGATÓRIO, POR FAVOR PREENCHA O CAMPO NOTA!', 'Atenção', MB_ICONINFORMATION);
  end;

  if roundto(cdsinclusao.FieldByName('total').value-edValornota.value, -2) <> 0  then
  begin
    Application.MessageBox('O valor informado é diferente do total das parcelas!', 'Atenção', MB_ICONINFORMATION);
    if edValornota.CanFocus then
      edValornota.SetFocus;
      abort;
  end;
  str_sql:= 'select id_situacao_spc from clientes where    cli_001=' + IntToStr(cod_cliente)+' and emp_001 ='+IntToStr(RecProj.iEmp);
   ExecutaConsultaSQL(qraux1,str_sql);
   utilizacontrolesituacao:=qraux1.FieldByName('id_situacao_spc').AsInteger;

       { SITUAÇÃO DO CLIENTE
       1 - APROVADO
       2 - EM OBSERVAÇÃO
       3 - INATIVO
       4 - SPC
       5 - BLOQUEADO    }

     if utilizacontrolesituacao=2 then
     begin
        Application.MessageBox('Não foi possível fazer a venda! Cadastro em observação!','Atenção',MB_ICONINFORMATION + mb_ok);
        abort;
     end
     else if utilizacontrolesituacao=3 then
     begin
         Application.MessageBox('Não foi possível fazer a venda! Cadastro está inativo!','Atenção', MB_ICONINFORMATION +mb_ok);
         abort;
     end

     else if utilizacontrolesituacao=4 then
     begin
        Application.MessageBox('Não foi possível fazer a venda! Cadastro está no SPC!','Atenção',MB_ICONINFORMATION + mb_ok);
        abort;
     end

     else if utilizacontrolesituacao=5 then
     begin
       Application.MessageBox('Não foi possível fazer a venda! Cadastro está no Bloqueado!','Atenção',MB_ICONINFORMATION + mb_ok);
       abort;
     end;

     // Termino 22/01/ 2017  Programador Rafael
     // buscar configuração controle de cliente se tem parcelas em atraso     inicio Rafael 20/04/2017
     if b_utiliza_controle_cliente then
     begin
       str_sql:=' select 1 from creceber where  id_situacao =4 and data_vencimento <localtimestamp '+
               ' and id_cliente ='+  IntToStr(cod_cliente) + ' and id_empresa='+IntToStr(RecProj.iEmp);
       ExecutaConsultaSQL(qraux1, str_sql);
       if qraux1.RecordCount>0 then
       begin
         if  Application.MessageBox('O cliente possui contas em atraso. Deseja fazer a venda mesmo com as parcelas em atraso?   ','Atenção',MB_ICONQUESTION+MB_YESNO)=mrYes then
         begin
           if not  frmMenu.ConfirmacaoSenha('b_libera_venda_conta_atraso', recebe) then
           begin
             abort;
           end;
         end
         else
         abort;
       end;
     end;
   //Procedure para inserir no movimento do cliente
   InserirMovimentoContaCliente(recproj.iemp, cod_cliente, recproj.iUsuario,
         edvalornota.Value, 'S', '', dtDataDocumento.DateTime, nota, false, 0);

  // Tudo OK, insere as parcelas
      str_sql := ' insert into creceber '+
             '(id_empresa,data,id_cliente,id_conta,nota, descricao, valor_nota, '+
             ' valor, data_vencimento, especie, documento, id_situacao,id_usuario,id_venda) '+
             ' values(:emp, :data, :id_cliente, :id_conta,:nota, :descricao, :valor_nota, '+
             ' :valor, :data_vencimento, :especie, :documento,4,:id_usuario,:id_venda);';
  nota := StrToInt(ednota.Text) ;
  cdsinclusao.first;

    while not cdsinclusao.eof do
  begin
    ExecutaComandoSQL(str_sql, vararrayof([recproj.iEmp,dtDataDocumento.Date,cod_cliente,
                                           cod_conta, nota,
                                           cdsinclusao.FieldByName('descricao').Asstring,
                                           edvalornota.Value,
                                           cdsinclusao.FieldByName('valor').AsFloat,
                                           cdsinclusao.FieldByName('data_vencimento').AsDateTime,
                                           cdsinclusao.FieldByName('especie').asinteger,
                                           cdsinclusao.FieldByName('documento').Asstring,
                                           id_usuario_contas_pagar,nota]));
  cdsinclusao.Next;
  end;
  Application.MessageBox('PARCELAS INSERIDAS COM SUCESSO','ALERTA',+MB_ICONQUESTION+MB_OK);
  cdsinclusao.EmptyDataSet;
  self.Close;

end;

procedure TfrmContasareceberinclusao.btGerarParcelasClick(Sender: TObject);
var
valor_total, valor_parc,diferenca:double;
I:Integer;
str_sql,doc_aux:string;
data_aux : Tdate;
begin
    if trim (edNota.Text)='' then
    begin
      Application.MessageBox('CAMPO NOTA NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+MB_OK);
      ednota.SetFocus;
      abort;
    end;

    if edValornota.value<=0then
    begin
      Application.MessageBox('O CAMPO VALOR DA NOTA NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+MB_OK);
      edValornota.SetFocus;
      abort;
    end;

    if cod_cliente=0 then
    begin
      Application.MessageBox('O CAMPO CLIENTE  NÃO PODE SER VAZIO','ALERTA',+MB_ICONQUESTION+MB_OK);
      edcodcliente.SetFocus;
      abort;
    end;

    if edQtdParcelas.Value<=0 then
    begin
      Application.MessageBox('QUANTIDADE DE PARCELAS INVÁLIDA!, POR FAVOR INFORME UM VALOR VÁLIDO','ALERTA',+MB_ICONQUESTION+MB_OK);
      edQtdParcelas.SetFocus;
      abort;
    end;

    cdsinclusao.EmptyDataSet;
    valor_parc := roundto(edValornota.AsFloat / edQtdParcelas.Value, -2);

    for I := 1 to edQtdParcelas.Value do
    begin
      data_aux := IncMonth(dtDataDocumento.Date, i);

    if edNota.Text<>'' then
    doc_aux := format('%s/%d',[edNota.Text,i])
    else
      doc_aux := inttostr(i);
      cdsinclusao.Append;
      cdsinclusao.FieldByName('data_vencimento').AsDateTime :=  data_aux;
      cdsinclusao.FieldByName('documento').Asstring :=  doc_aux;
      cdsinclusao.FieldByName('especie').asinteger :=  dbEspecie.itemindex;
      cdsinclusao.FieldByName('valor').AsFloat :=  valor_parc;  // Valor Parcela
      cdsinclusao.FieldByName('descricao').Asstring :=  edHistorico.text;
      cdsinclusao.FieldByName('nro_parcela').asinteger :=  i;    // Numero parcela
      cdsinclusao.post;


      //verifica se é a ultima parcela e corrige eventuais diferenças por conta da divisão
      if I = edQtdParcelas.Value then
    begin
     diferenca := roundto(cdsinclusao.FieldByName('total').value-edValornota.AsFloat, -2);
      if diferenca<>0 then
      begin
        cdsinclusao.Edit;
        cdsinclusao.FieldByName('valor').AsFloat := cdsinclusao.FieldByName('valor').AsFloat  - diferenca;
        cdsinclusao.post;
      end;
    end;

    end;

end;

procedure TfrmContasareceberinclusao.edcontaExit(Sender: TObject);
var str_sql, nome_conta : string;
begin
  inherited;
if edconta.Text<>'' then
  begin
    try
      cod_conta := strtoint(trim(edconta.Text));
    except
      cod_conta := 0;
    end;
    str_sql := format('select descricao from conta where b_receber and id_situacao=4 and id_conta=%d and id_empresa=%d',
                      [cod_conta, recproj.iEmp]);
    if not BuscaCampo(nome_conta, str_sql, 'Conta') then
    begin
      edconta.Clear;
      edcontaExit(nil);
    end
    else
    begin
      lbConta.caption := nome_conta;
    end;

  end
  else
  begin
    lbConta.Caption := '';
    cod_conta := 0;
  end;
end;

procedure TfrmContasareceberinclusao.edcontaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_f2 then acBuscaConta.Execute;
end;

procedure TfrmContasareceberinclusao.edCodclienteExit(Sender: TObject);
var str_sql, nome_cliente : string;
begin
   if trim(edCodcliente.Text)<>'' then
  begin
    try
      cod_cliente := strtoint(trim(edCodcliente.Text));
    except
      cod_cliente := 0;
    end;
    str_sql := format('select cli_002 from clientes where cli_001=%d and emp_001=%d',
                      [cod_cliente, recproj.iEmp]);
    if not BuscaCampo(nome_cliente, str_sql, 'Clientes') then
    begin
      edcodcliente.Clear;
      edcodclienteExit(nil);
    end
    else
    begin
      lbCliente.caption := nome_cliente;
    end;

  end
  else
  begin
    lbCliente.Caption := '';
    cod_cliente := 0;
  end;

end;

procedure TfrmContasareceberinclusao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_return then
Perform(WM_NEXTDLGCTL,0,0)
end;

procedure TfrmContasareceberinclusao.FormShow(Sender: TObject);

begin
  cdsinclusao.CreateDataSet;
  dbEspecie.ItemIndex:=0;
  dtDataDocumento.DateTime := Date+time;
  id_usuario_contas_pagar:=frmControleContasReceberFiado.id_usuario_contas_pagar;
  edCodcliente.SetFocus;
end;





end.

