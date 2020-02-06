unit uTransferenciaiten;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, Datasnap.DBClient,
  Datasnap.Provider, Vcl.DBCtrls, Vcl.StdCtrls, AdvGroupBox, AdvGlowButton,
  JvExControls, JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfrmTransferenciaitem = class(TForm)
    cxTransfeDBTableView1: TcxGridDBTableView;
    cxTransfeLevel1: TcxGridLevel;
    cxTransfe: TcxGrid;
    qrItem: TUniQuery;
    dsIten: TDataSource;
    qrItemid_venda: TIntegerField;
    qrItemid_material: TIntegerField;
    qrItemquantidade: TFloatField;
    qrItemvalor_unitario: TFloatField;
    qrItemvalor_total_iten: TFloatField;
    qrItemobservacao: TWideStringField;
    qrItemsituacao: TIntegerField;
    qrItemtamanho: TWideStringField;
    qrItemitem_fracionado: TIntegerField;
    cxTransfeDBTableView1quantidade: TcxGridDBColumn;
    cxTransfeDBTableView1valor_unitario: TcxGridDBColumn;
    cxTransfeDBTableView1valor_total_iten: TcxGridDBColumn;
    qrItemdescricao: TWideStringField;
    cxTransfeDBTableView1descricao: TcxGridDBColumn;
    qrItemid_item: TIntegerField;
    cxTransfeDBTableView1selecao: TcxGridDBColumn;
    dspItem: TDataSetProvider;
    cdsitem: TClientDataSet;
    cdsitemid_venda: TIntegerField;
    cdsitemid_material: TIntegerField;
    cdsitemquantidade: TFloatField;
    cdsitemvalor_unitario: TFloatField;
    cdsitemvalor_total_iten: TFloatField;
    cdsitemobservacao: TWideStringField;
    cdsitemsituacao: TIntegerField;
    cdsitemtamanho: TWideStringField;
    cdsitemitem_fracionado: TIntegerField;
    cdsitemdescricao: TWideStringField;
    cdsitemid_item: TIntegerField;
    gbVendaDestino: TAdvGroupBox;
    lbMesa: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    qrItemdescricao_mesa: TWideStringField;
    qrItemnumero_mesa: TIntegerField;
    cdsitemdescricao_mesa: TWideStringField;
    cdsitemnumero_mesa: TIntegerField;
    cbVendasabertas: TJvDBComboBox;
    qrInsereItem: TUniQuery;
    qrItemid_garcom: TIntegerField;
    qrItemite_012: TWideStringField;
    qrItemite_011: TWideStringField;
    qrItemite_008: TWideStringField;
    qrItemb_venda_tamanho: TBooleanField;
    qrItemquantidade_impressao: TFloatField;
    qrItemdesconto: TFloatField;
    cdsitemid_garcom: TIntegerField;
    cdsitemite_012: TWideStringField;
    cdsitemite_011: TWideStringField;
    cdsitemite_008: TWideStringField;
    cdsitemb_venda_tamanho: TBooleanField;
    cdsitemquantidade_impressao: TFloatField;
    cdsitemdesconto: TFloatField;
    qrItemcod_impressora: TIntegerField;
    cdsitemcod_impressora: TIntegerField;
    btConfirmar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Image1: TImage;
    qrItemtipo_venda: TWideStringField;
    cdsitemtipo_venda: TWideStringField;
    qrItemb_70pc_valor_unit: TBooleanField;
    qrItemacrescimo: TFloatField;
    qrItemnumero_pedido: TIntegerField;
    qrItemb_entregue: TBooleanField;
    qrItemb_producao: TBooleanField;
    cdsitemb_70pc_valor_unit: TBooleanField;
    cdsitemacrescimo: TFloatField;
    cdsitemnumero_pedido: TIntegerField;
    cdsitemb_entregue: TBooleanField;
    cdsitemb_producao: TBooleanField;
    constructor create (sender: Tcomponent; id_venda:integer);
    procedure btConfirmarClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    function validaPagamentoAntecipado(var valor_antecipado : double) : boolean;
    procedure SelecionaFracionados;
    function RegistroSelecionadoCxGrid : Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    tipo_venda : string;
  public
    id_venda_origem, id_venda_destino :integer;
  end;

var
  frmTransferenciaitem: TfrmTransferenciaitem;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

function TfrmTransferenciaitem.RegistroSelecionadoCxGrid : Boolean;
var iRec : integer;
begin
  iRec := cxtransfedbTableView1.Controller.SelectedRecords[0].RecordIndex;
  //Registro selecionado, coluna 0 (coluna de seleção)
  if VarIsNull(cxtransfedbTableView1.DataController.Values[iRec, 0]) then
    Result := false
  else
  begin
    result := cxtransfedbTableView1.DataController.Values[iRec, 0];
  end;
end;

procedure TfrmTransferenciaitem.SelecionaFracionados;
var fracionados : Tarray<integer>;
    i, iRec : integer;
begin
  //captura os itens fracionados
  SetLength(fracionados,cdsitem.RecordCount);
  cdsitem.First;
  i := 0;
  while not cdsitem.eof  do
  begin
    if not cdsitem.FieldByName('item_fracionado').IsNull then
    begin
      if RegistroSelecionadoCxGrid then
      begin
        fracionados[i] :=cdsitem.FieldByName('item_fracionado').asinteger;
        i := i + 1;
      end;
    end;

    cdsitem.Next;
  end;
  SetLength(fracionados,i);

  //precorre o array e seleciona os itens fracionados no dataset
  for I := 0 to length(fracionados)-1 do
  begin
    cdsitem.First;
    while not cdsitem.eof  do
    begin
      if fracionados[i] = cdsitem.FieldByName('item_fracionado').asinteger then
      begin
        iRec := cxtransfedbTableView1.Controller.SelectedRecords[0].RecordIndex;
        cxtransfedbTableView1.DataController.Values[iRec, 0] := true;
      end;
      cdsitem.Next;
    end;
  end;
end;



function TfrmTransferenciaitem.validaPagamentoAntecipado(var valor_antecipado : double) : boolean;
var soma_itens_nao_selecionados: double;
    qr_aux : Tuniquery;
    str_sql : string;
begin
  str_sql :=format( ' select sum(valor) as valor_antecipado from venda_pag_antecipado vpa '+
             ' where id_situacao=4 and id_venda=%d and id_empresa=%d', [id_venda_origem, recproj.iEmp]);
  valor_antecipado:=0;
  if not BuscaCampo(valor_antecipado,str_sql, '', false) then
  begin
    result := true;
    exit;
  end;

  soma_itens_nao_selecionados:=0;
  cdsitem.First;
  while not cdsitem.eof  do
  begin
    if not RegistroSelecionadoCxGrid then
      soma_itens_nao_selecionados := soma_itens_nao_selecionados +
                                     cdsitem.FieldByName('valor_total_iten').AsFloat;

    cdsitem.Next;
  end;

  result := soma_itens_nao_selecionados >= valor_antecipado;

end;


procedure TfrmTransferenciaitem.AdvGlowButton1Click(Sender: TObject);
begin
  self.Tag:=0;
  close;
end;

procedure TfrmTransferenciaitem.btConfirmarClick(Sender: TObject);
var str_sql, mesa_atual, mesa_destino, msg : string;
    novoitem, item_fracionado, item_fracionado_atual :integer;
    qr_aux, qr_aux1:tuniquery;
    valor_antecipado : double;
begin
  if cbVendasabertas.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione a mesa de destino!', 'Atenção', MB_ICONINFORMATION + mb_ok) ;
    abort;
   end

  else
  begin
    mesa_atual:=cdsitem.FieldByName('descricao_mesa').AsString;
    mesa_destino:= cbVendasabertas.Text;
    id_venda_destino:=StrToInt(cbvendasabertas.Values[cbvendasabertas.ItemIndex]);

    if Application.MessageBox(pchar('Deseja mesmo transferir os itens selecionados da '+(mesa_atual)+' para a ' +
    (mesa_destino)+ '?'),'Atenção', MB_ICONQUESTION+MB_YESNO)=mryes then
    begin
      //verifica se a venda possui pagamento antecipado e se os itens restantes são válidos
      if not validaPagamentoAntecipado(valor_antecipado) then
      begin
        msg := format('Não será possível fazer a tranferência destes itens pois esta venda já recebeu '+
                      'R$%.2f de valor antecipado e os itens restantes têm valor inferior!', [valor_antecipado]);

        Application.MessageBox(pchar(msg), 'Atenção', MB_ICONINFORMATION);
        abort;
      end;

      //garante que os itens fracionados sempre sejam selecionados em conjunto..
      SelecionaFracionados;

      cdsitem.First; // First seria primeiro registro
      qr_aux:=tuniquery.Create(self);     // Cria a conexão
      qr_aux.Connection:=frmMenu.conexao; // Chama a conexão principal, nesse caso é conexao

      qr_aux1:=tuniquery.Create(self);     // Cria a conexão ,lembrando que é uma segunda auxiliar
      qr_aux1.Connection:=frmMenu.conexao; // Chama a conexão principal, nesse caso é conexao

      //Busca o ultimo item e o ultimo item fracionado da venda destino
      str_sql:=' select COALESCE( max(ite_001),0)+1 as proximo_item, COALESCE( max(item_fracionado),0) as item_fracionado '+
               ' from vendaitem where ven_001='+ IntToStr(id_venda_destino)+' and emp_001='+ IntToStr(recproj.iEmp);
      ExecutaConsultaSQL(qr_aux,str_sql);
      novoitem := qr_aux.FieldByName('proximo_item').AsInteger;
      item_fracionado := qr_aux.FieldByName('item_fracionado').AsInteger;
      item_fracionado_atual :=0;

      while not cdsitem.Eof do
      begin
        if RegistroSelecionadoCxGrid then
        begin
          qrinsereitem.ParamByName('nro_item').AsInteger  := novoitem;   // Comando sql esta recebendo no alias proximo_item
          qrinsereitem.ParamByName('emp').AsInteger:=recproj.iEmp;
          qrinsereitem.ParamByName('id_venda').AsInteger := id_venda_destino;
          qrinsereitem.ParamByName('id_material').AsInteger := cdsitem.FieldByName('id_material').AsInteger;
          qrinsereitem.ParamByName('quantidade').AsFloat   := cdsitem.FieldByName('quantidade').AsFloat;
          qrinsereitem.ParamByName('valor_unit').AsFloat := cdsitem.FieldByName ('valor_unitario').AsFloat;
          qrinsereitem.ParamByName('valor_total').AsFloat    :=cdsitem.FieldByName('valor_total_iten').AsFloat;
          qrinsereitem.ParamByName('observacao').Asstring    :=cdsitem.FieldByName('observacao').Asstring;
          qrinsereitem.ParamByName('sit_001').AsInteger := cdsitem.FieldByName('situacao').AsInteger;
          qrinsereitem.ParamByName('tamanho').Asstring := cdsitem.FieldByName('tamanho').Asstring;
          qrinsereitem.ParamByName('id_garcom').AsInteger :=   cdsitem.FieldByName('id_garcom').AsInteger;
          qrinsereitem.ParamByName('cod_impressora').AsInteger := cdsitem.FieldByName('cod_impressora').AsInteger;
          qrinsereitem.ParamByName('ite_012').Asstring := cdsitem.FieldByName('ite_012').Asstring;
          qrinsereitem.ParamByName('ite_011').Asstring := cdsitem.FieldByName('ite_011').Asstring;
          qrinsereitem.ParamByName('ite_008').AsString := cdsitem.FieldByName('ite_008').AsString;
          qrinsereitem.ParamByName('b_venda_tamanho').AsBoolean := cdsitem.FieldByName('b_venda_tamanho').AsBoolean;
          qrinsereitem.ParamByName('quantidade_impressao').Asfloat := cdsitem.FieldByName('quantidade_impressao').Asfloat;
          qrinsereitem.ParamByName('desconto').Asfloat := cdsitem.FieldByName('desconto').Asfloat;

          qrinsereitem.ParamByName('b_70pc_valor_unit').AsBoolean := cdsitem.FieldByName('b_70pc_valor_unit').AsBoolean;
          qrinsereitem.ParamByName('b_entregue').AsBoolean := cdsitem.FieldByName('b_entregue').AsBoolean;
          qrinsereitem.ParamByName('b_producao').AsBoolean := cdsitem.FieldByName('b_producao').AsBoolean;
          qrinsereitem.ParamByName('numero_pedido').AsInteger := cdsitem.FieldByName('numero_pedido').AsInteger;
          qrinsereitem.ParamByName('acrescimo').AsFloat    :=cdsitem.FieldByName('acrescimo').AsFloat;

          //insere o item fracionado respeitando a numeração da venda anterior...
          if cdsitem.FieldByName('item_fracionado').isnull then
            qrinsereitem.ParamByName('item_fracionado').value:=null
          else
          begin
            if item_fracionado_atual <> cdsitem.FieldByName('item_fracionado').asinteger then
            begin
              item_fracionado_atual :=  cdsitem.FieldByName('item_fracionado').asinteger;
              item_fracionado := item_fracionado + 1;
            end;

            qrinsereitem.ParamByName('item_fracionado').value := item_fracionado;
          end;
           if cdsitem.FieldByName('item_fracionado').Value=0 then
            qrinsereitem.ParamByName('item_fracionado').value:=null ;

          qrinsereitem.Execute;  // Aqui executa o comando acima

          str_sql:= 'select id_venda, id_vendaitem, id_opcional from vendaitemopcional where id_venda=' +  cdsitem.FieldByName('id_venda').AsString +
          ' and id_vendaitem='+ cdsitem.FieldByName('id_item').AsString + ' and id_empresa=' + IntToStr(recproj.iEmp);
          qr_aux.Close;       //Fecha a consulta
          qr_aux.SQL.clear;  // Usando o clear pois estou dentro de um loop
          qr_aux.SQL.Add(str_sql); // Adiciona o codigo sql , veja  str_sql
          qr_aux.Open;          // Abra a consulta sql

          while not qr_aux.Eof do   // Faz a inserção dos opcionais
          begin
            str_sql:='insert into vendaitemopcional (id_venda, id_vendaitem, id_opcional, id_empresa )'+
            'values('+IntToStr(id_venda_destino)+ ',' +IntToStr(novoitem) +',' + qr_aux.FieldByName('id_opcional').AsString +
            ',' + IntToStr(recproj.iEmp)+')';

            qr_aux1.Close;       //Fecha a consulta
            qr_aux1.SQL.clear;  // Usando o clear pois estou dentro de um loop
            qr_aux1.SQL.Add(str_sql);  // Recebe os dados da variavel str_sql
            qr_aux1.Execute;           // Executa o comando insert acima

            qr_aux.Next
          end;

          // Aqui deleta os produtos da mesa anterior
          str_sql :='delete from vendaitem where ven_001=' + cdsitem.FieldByName('id_venda').AsString +
          ' and ite_001=' +  cdsitem.FieldByName('id_item').AsString + ' and emp_001='+ IntToStr(recproj.iEmp);

          qr_aux.Close;
          qr_aux.sql.Clear;
          qr_aux.SQL.Add(str_sql);
          qr_aux.Execute;

          novoitem := novoitem +1;
        end;
        cdsitem.Next; // avança para o proximo registro
      end;

      qr_aux.Free;  // Fecha a conexão
      qr_aux1.free;
      self.Tag:=1; //
      self.Close;
    end;
  end;
end;

constructor tfrmTransferenciaitem.create(sender: TComponent; id_venda: Integer);
var
str_sql:string;
qr_aux: TUniQuery;

begin
  inherited create(sender);
  id_venda_origem := id_venda;
  qritem.ParamByName('emp').AsInteger:=recproj.iEmp;
  qritem.ParamByName('id_venda').AsInteger :=id_venda;
  cdsitem.open; // Cliente dataset
  tipo_venda := cdsitem.fieldbyname('tipo_venda').Asstring;
  //vendas do tipo mesa...
  if tipo_venda='M' then
  begin

    str_sql:=format( 'select'+
      ' v.ven_001 as id_venda, '+
      ' cast(trim(concat(cast(m.mes_003  as varchar), '' '' , m.mes_002  )) as varchar(100)) as descricao_mesa  '+
      ' from mesa m     '+
      ' join venda v on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_025) and v.sit_001 in (8)  '+
      ' where  m.emp_001 = %d    '+
      ' and v.ven_001 <> %d '+
      ' order by m.mes_003         ', [recproj.iEmp, id_venda]);

    gbVendaDestino.Caption := 'Mesa destino';
    lbMesa.Caption := 'Mesa'
  end
  else
  begin
    str_sql:=format('select'+
      ' ven_001 as id_venda, '+
      ' cast(concat(''COMANDA '',  ven_026  ) as varchar(100)) as descricao_mesa  '+
      ' from  venda    '+
      ' where sit_001 in (8)  and  emp_001 = %d  and ven_001 <> %d '+
      ' and ven_024=''C'' order by ven_026 ', [recproj.iEmp, id_venda]);
    gbVendaDestino.Caption := 'Comanda destino';
    lbMesa.Caption := 'Comanda'
  end;

  qr_aux := CriaUniQuery(self, frmMenu.conexao);
  ExecutaConsultaSQL(qr_aux, str_sql);

  while not qr_aux.Eof do
  begin
    cbVendasabertas.Items.Add(qr_aux.FieldByName('descricao_mesa').AsString);
    cbVendasabertas.Values.Add(qr_aux.FieldByName('id_venda').AsString);
    qr_aux.Next;
  end;

end;

procedure TfrmTransferenciaitem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_return then
Perform(WM_NEXTDLGCTL,0,0)
end;

end.

