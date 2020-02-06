unit uControleMesaJuntar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient,
  Datasnap.Provider, MemDS, DBAccess, Uni, cxCheckBox, Vcl.StdCtrls, AdvGroupBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmControleMesaJuntar = class(TfrmModelo)
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    qrVenda: TUniQuery;
    qrVendaid_mesa: TIntegerField;
    qrVendaid_venda: TIntegerField;
    qrVendavalor_venda: TFloatField;
    qrVendastatus: TIntegerField;
    qrVendacod_venda: TIntegerField;
    qrVendanro_nome_mesa: TWideStringField;
    qrVendadata_abertura: TDateTimeField;
    qrVendatipo_venda: TWideStringField;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    cdsVendaid_mesa: TIntegerField;
    cdsVendaid_venda: TIntegerField;
    cdsVendavalor_venda: TFloatField;
    cdsVendastatus: TIntegerField;
    cdsVendacod_venda: TIntegerField;
    cdsVendanro_nome_mesa: TWideStringField;
    cdsVendadata_abertura: TDateTimeField;
    cdsVendatipo_venda: TWideStringField;
    dsVenda: TDataSource;
    grDestino: TAdvGroupBox;
    grOrigem: TAdvGroupBox;
    lbMesaComanda: TLabel;
    Label5: TLabel;
    lbValorOrigem: TLabel;
    lbMesaComandaOrigem: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Selecao: TcxGridDBColumn;
    cxGrid1DBTableView1nro_nome_mesa: TcxGridDBColumn;
    cxGrid1DBTableView1cod_venda: TcxGridDBColumn;
    cxGrid1DBTableView1data_abertura: TcxGridDBColumn;
    cxGrid1DBTableView1valor_venda: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure btCancelaClick(Sender: TObject);
    constructor Create(sender : Tcomponent ; id_venda : integer; tipo_venda, descricao_mesa_comanda : string ; valor : double  ); reintroduce;
    function  RegistrosSelecionados: TArray<integer>;
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    id_venda : integer;
  public
    { Public declarations }
  end;

var
  frmControleMesaJuntar: TfrmControleMesaJuntar;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB;

procedure TfrmControleMesaJuntar.btConfirmaClick(Sender: TObject);
var itens : TArray<integer>;
    i, proximo_item, item_fracionado, item_fracionado_atual: integer;
    qr_aux, qr_aux2, qr_insert : tUniquery;
    str_sql, str_insert : string;
begin
  inherited;
  itens := RegistrosSelecionados;

  if Length(itens)<=0 then
  begin
    Application.MessageBox('Nenhum item selecionado!', 'Atenção', MB_ICONINFORMATION);
    abort;
  end
  else
  begin
    if Application.MessageBox(pchar('Deseja mesmo juntar as vendas selecionadas à '+(lbMesaComandaOrigem.Caption)+'?'),'Atenção', MB_ICONQUESTION+MB_YESNO)=mryes then
    begin
      qr_aux:=CriaUniQuery(self, frmmenu.conexao);
      qr_aux2:=CriaUniQuery(self, frmmenu.conexao);

      str_sql:=' select COALESCE( max(ite_001),0)+1 as proximo_item, COALESCE( max(item_fracionado),0) as item_fracionado '+
               ' from vendaitem where ven_001='+ IntToStr(id_venda)+' and emp_001='+ IntToStr(recproj.iEmp);
      ExecutaConsultaSQL(qr_aux,str_sql);
      proximo_item := qr_aux.FieldByName('proximo_item').AsInteger;
      item_fracionado := qr_aux.FieldByName('item_fracionado').AsInteger;

      //Cria a query de inserção que vai ser usada mais a frente
      str_insert:=' insert into vendaitem '+
                    ' (emp_001, ven_001, mat_001, ite_002, ite_003, '+
                    '  ite_005, ite_006, ite_001, gar_001, '+
                    '  ite_013, ite_012, sit_001, ite_011, ite_008,'+
                    '  tamanho, b_venda_tamanho, item_fracionado,'+
                    '  quantidade_impressao, desconto, acrescimo )'+
                    ' values '+
                    ' (:emp, :id_venda, :id_material, :quantidade, :valor_unit, '+
                    '  :valor_total, :observacao, :nro_item , :id_garcom,'+
                    '  :cod_impressora, :flag_pago, 4, :pendente_impressao,:impresso, '+
                    '  :tamanho, :b_venda_tamanho, :item_fracionado,'+
                    '  :quantidade_impressao, :desconto, :acrescimo)';
      qr_insert:=CriaUniQuery(self, frmmenu.conexao);
      qr_insert.SQL.Add(str_insert);

      for I := 0 to Length(itens)-1 do
      begin
        //busca os itens da venda selecionada atual
        str_sql := format(' select mat_001 as id_material, ite_002 as quantidade, ite_003 valor_unit,  ite_005 as valor_total, '+
                          ' ite_006 as observacao, gar_001 as id_garcom, ite_013 as cod_impressora, ite_012 as flag_pago, '+
                          ' ite_011 as pendente_impressao, ite_008 as impresso, tamanho, b_venda_tamanho, item_fracionado, '+
                          ' quantidade_impressao, desconto, acrescimo, ite_001 as id_item from vendaitem'+
                          ' where ven_001=%d and emp_001=%d and sit_001=4 order by ven_001, ite_001',
                          [itens[i], recproj.iEmp]);
        ExecutaConsultaSQL(qr_aux,str_sql);

        item_fracionado_atual := 0;
        while not qr_aux.eof do
        begin
          qr_insert.ParamByName('emp').AsInteger := recproj.iEmp;
          qr_insert.ParamByName('id_venda').AsInteger := id_venda;
          qr_insert.ParamByName('nro_item').AsInteger := proximo_item;
          qr_insert.ParamByName('id_material').AsInteger := qr_aux.FieldByName('id_material').AsInteger;
          qr_insert.ParamByName('quantidade').Asfloat := qr_aux.FieldByName('quantidade').Asfloat;
          qr_insert.ParamByName('valor_unit').Asfloat := qr_aux.FieldByName('valor_unit').Asfloat;
          qr_insert.ParamByName('valor_total').Asfloat := qr_aux.FieldByName('valor_total').Asfloat;
          qr_insert.ParamByName('observacao').value := qr_aux.FieldByName('observacao').value;
          qr_insert.ParamByName('id_garcom').AsInteger := qr_aux.FieldByName('id_garcom').AsInteger;
          qr_insert.ParamByName('cod_impressora').AsInteger := qr_aux.FieldByName('cod_impressora').AsInteger;
          qr_insert.ParamByName('flag_pago').value := qr_aux.FieldByName('flag_pago').value;
          qr_insert.ParamByName('pendente_impressao').value := qr_aux.FieldByName('pendente_impressao').value;
          qr_insert.ParamByName('impresso').value := qr_aux.FieldByName('impresso').value;
          qr_insert.ParamByName('tamanho').value := qr_aux.FieldByName('tamanho').value;
          qr_insert.ParamByName('b_venda_tamanho').value := qr_aux.FieldByName('b_venda_tamanho').value;
          qr_insert.ParamByName('quantidade_impressao').Asfloat := qr_aux.FieldByName('quantidade_impressao').Asfloat;
          qr_insert.ParamByName('acrescimo').Asfloat := qr_aux.FieldByName('acrescimo').Asfloat;
          qr_insert.ParamByName('desconto').Asfloat := qr_aux.FieldByName('desconto').Asfloat;

          //insere o item fracionado respeitando a numeração da venda anterior...
          if qr_aux.FieldByName('item_fracionado').isnull then
            qr_insert.ParamByName('item_fracionado').value:=null
          else
          begin
            if item_fracionado_atual <> qr_aux.FieldByName('item_fracionado').asinteger then
            begin
              item_fracionado_atual :=  qr_aux.FieldByName('item_fracionado').asinteger;
              item_fracionado := item_fracionado + 1;
            end;

            qr_insert.ParamByName('item_fracionado').value := item_fracionado;
          end;

          qr_insert.Execute;

          //busca e insere os opcionais
          str_sql:=format('select id_venda, id_vendaitem, id_opcional from vendaitemopcional where id_venda=%d and id_vendaitem=%d and id_empresa=%d',
                          [itens[i], qr_aux.FieldByName('id_item').asinteger, recproj.iEmp ]);
          ExecutaConsultaSQL(qr_aux2,str_sql);

          while not qr_aux2.Eof do
          begin
            str_sql:=format('insert into vendaitemopcional (id_venda, id_vendaitem, id_opcional, id_empresa ) values(%d, %d ,%d ,%d )',
            [id_venda, proximo_item, qr_aux2.FieldByName('id_opcional').Asinteger, recproj.iEmp ]);
            ExecutaComandoSQL(str_sql);
            qr_aux2.Next
          end;

          proximo_item := proximo_item +1;
          qr_aux.Next;

        end;

        //atualiza os pagamentos antecipados da venda atual para a venda principal
        str_sql := format('update venda_pag_antecipado set id_venda=%d where id_venda=%d and id_empresa=%d',
                          [id_venda, itens[i], recproj.iEmp ]);
        ExecutaComandoSQL(str_sql);
        str_sql := format('update caixaitem set id_venda=%d where id_venda=%d and id_empresa=%d and antecipado',
                          [id_venda, itens[i], recproj.iEmp]);
        ExecutaComandoSQL(str_sql);

        //apaga os itens da venda atual
        str_sql := format('delete from vendaitem where ven_001=%d and emp_001=%d' ,
                          [itens[i], recproj.iEmp ]);
        ExecutaComandoSQL(str_sql);
        //apaga a vendas
        str_sql := format('delete from venda where ven_001=%d and emp_001=%d' ,
                          [itens[i], recproj.iEmp ]);
        ExecutaComandoSQL(str_sql);

        //apaga as vendas
      end;
      qr_aux.Free;
      qr_aux2.Free;
      qr_insert.Free;

      self.Tag :=1;
      self.close;
    end;
  end;
end;

constructor TfrmControleMesaJuntar.Create(sender : Tcomponent ; id_venda : integer;
                tipo_venda, descricao_mesa_comanda : string ; valor : double  );
var msg_sem_venda : string;
begin
  inherited Create(sender);
  self.id_venda := id_venda;
  if tipo_venda='M' then
  begin
    grOrigem.Caption := 'Mesa Principal';
    grDestino.Caption := 'Mesas a juntar';
    lbMesaComanda.caption := 'Mesa';
    msg_sem_venda := 'Não existem mesas em aberto para juntar à ' + descricao_mesa_comanda;
  end
  else
  begin
    grOrigem.Caption := 'Comanda Principal';
    grDestino.Caption := 'Comandas a juntar';
    lbMesaComanda.caption := 'Comanda';
    msg_sem_venda := 'Não existem comandas em aberto para juntar à ' + descricao_mesa_comanda;
  end;

  qrVenda.Close;
  cdsVenda.Close;

  qrVenda.ParamByName('id_venda').AsInteger := id_venda;
  qrVenda.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  qrVenda.ParamByName('tipo_venda').asstring := tipo_venda;
  cdsVenda.open;

  if cdsVenda.RecordCount<=0 then
  begin
    application.MessageBox(pchar(msg_sem_venda), 'Atenção', MB_ICONINFORMATION);
    abort;
  end;



  lbMesaComandaOrigem.Caption := descricao_mesa_comanda;
  lbValorOrigem.Caption := format('R$ %.2f', [valor]);
end;


function  TfrmControleMesaJuntar.RegistrosSelecionados: TArray<integer>;
var iRec, i : integer;
    selecionado : boolean;
begin
  inherited;
  SetLength(Result,cdsVenda.RecordCount);
  cdsVenda.First;
  i:=0;
  while not cdsVenda.eof do
  begin
    iRec := cxGrid1DBTableView1.Controller.SelectedRecords[0].RecordIndex;
    //Registro selecionado, coluna 0 (coluna de seleção)
    if VarIsNull(cxGrid1DBTableView1.DataController.Values[iRec, 0]) then
      selecionado := false
    else
    begin
      selecionado := cxGrid1DBTableView1.DataController.Values[iRec, 0];
    end;

    if selecionado then
    begin
      result[i] := cdsVenda.FieldByName('id_venda').AsInteger;
      i:=i+1;
    end;
    cdsVenda.next;
  end;
  SetLength(Result,i);
end;


procedure TfrmControleMesaJuntar.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Tag:=0;
  self.Close;
end;

end.
