unit uControleNotaFiscalEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, JvExStdCtrls,
  JvCombobox, JvDBCombobox, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls,
  AdvGlowButton, Vcl.ComCtrls, AdvGroupBox, Vcl.ExtCtrls, AdvPanel, MemDS,
  DBAccess, Uni, System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TfrmControleNotaFiscalEntrada = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    lbFornecedor: TLabel;
    Label1: TLabel;
    lbCFOP: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    btPesquisar: TAdvGlowButton;
    cbFiltroData: TComboBox;
    cbFiltroSituacao: TComboBox;
    edCodFornecedor: TcxButtonEdit;
    edCFOP: TcxButtonEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsNotaEntrada: TDataSource;
    qrNotaEntrada: TUniQuery;
    qrNotaEntradaid_nota_entrada: TIntegerField;
    qrNotaEntradaid_fornecedor: TIntegerField;
    qrNotaEntradanome_fornecedor: TWideStringField;
    qrNotaEntradaserie: TIntegerField;
    qrNotaEntradanumero: TIntegerField;
    qrNotaEntradacfop: TWideStringField;
    qrNotaEntradavalor_total: TFloatField;
    qrNotaEntradavalor_desconto: TFloatField;
    qrNotaEntradavalor_base_icms: TFloatField;
    qrNotaEntradavalor_icms: TFloatField;
    qrNotaEntradaid_situacao: TIntegerField;
    qrNotaEntradadata_entrada: TDateField;
    cxGrid1DBTableView1nome_fornecedor: TcxGridDBColumn;
    cxGrid1DBTableView1serie: TcxGridDBColumn;
    cxGrid1DBTableView1numero: TcxGridDBColumn;
    cxGrid1DBTableView1cfop: TcxGridDBColumn;
    cxGrid1DBTableView1valor_total: TcxGridDBColumn;
    cxGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxGrid1DBTableView1valor_base_icms: TcxGridDBColumn;
    cxGrid1DBTableView1valor_icms: TcxGridDBColumn;
    cxGrid1DBTableView1id_situacao: TcxGridDBColumn;
    cxGrid1DBTableView1data_entrada: TcxGridDBColumn;
    ActionList1: TActionList;
    acBuscaFornecedor: TAction;
    acBuscaCFOP: TAction;
    btSair: TAdvGlowButton;
    btIncluirNF: TAdvGlowButton;
    btExcluirNF: TAdvGlowButton;
    btEditarNF: TAdvGlowButton;
    btLancarNF: TAdvGlowButton;
    btImportarXml: TAdvGlowButton;
    procedure btSairClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    constructor Create(sender : Tcomponent); reintroduce;
    procedure btIncluirNFClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btEditarNFClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btImportarXmlClick(Sender: TObject);
    procedure btExcluirNFClick(Sender: TObject);
    procedure btLancarNFClick(Sender: TObject);
    procedure LancarEstoque(DataSetItens : Tdataset ; Movimento : string = 'S'; usuario_mov : integer = 0);
    procedure acBuscaFornecedorExecute(Sender: TObject);
    procedure acBuscaCFOPExecute(Sender: TObject);
    procedure edCodFornecedorExit(Sender: TObject);
    procedure edCFOPExit(Sender: TObject);

  private
    { Private declarations }
    cod_fornecedor_filtro, cfop_filtro, i_where, id_usuario_nota, id_setor_estoque : integer;
  public
    { Public declarations }
    function LancarNota(id_nota_entrada : integer ; usuario_mov : integer = 0) : boolean;
  end;

var
  frmControleNotaFiscalEntrada: TfrmControleNotaFiscalEntrada;

implementation

{$R *.dfm}

uses uMenu, uDetalheNotaEntrada, uControleNotaFiscalEntradaImportacao,
  Funcao_DB, uFuncoes, uBuscaRegistro;


procedure TfrmControleNotaFiscalEntrada.LancarEstoque(DataSetItens : Tdataset ; Movimento : string = 'S' ; usuario_mov : integer = 0);
begin
  //lança os itens
  if usuario_mov = 0 then  usuario_mov := id_usuario_nota;

  DataSetItens.First;
  while not DataSetItens.eof do
  begin
    InserirMovimentoProduto(DataSetItens.FieldByName('material_composicao').AsInteger,
                            DataSetItens.FieldByName('quantidade').AsFloat,
                            Movimento,'Nota: '+ DataSetItens.FieldByName('id_nota_entrada').asstring,
                            usuario_mov ,0, 0,
                            DataSetItens.FieldByName('tipo_item').asstring,
                            false,
                            DataSetItens.FieldByName('id_fornecedor').AsInteger,
                            DataSetItens.FieldByName('valor_unitario').asfloat,
                            DataSetItens.FieldByName('valor_venda').asfloat,
                            date + time, true, false, id_setor_estoque);
    DataSetItens.Next;
  end;

end;

constructor TfrmControleNotaFiscalEntrada.Create;
var  ano, mes, dia : word;
begin
  inherited Create(sender);
  if not frmMenu.ConfirmacaoSenha('b_acesso_nfe', id_usuario_nota) then abort;
  cod_fornecedor_filtro := 0;
  i_where := qrNotaEntrada.SQL.Count -2;
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);

  cbFiltroData.ItemIndex := 0;
  cbFiltroSituacao.ItemIndex := 0;

  id_setor_estoque := 1 ; //faz os lançamentos no setor fixo almoxarifado

  btPesquisar.Click;
end;

procedure TfrmControleNotaFiscalEntrada.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  btEditarNFClick(nil);
end;

procedure TfrmControleNotaFiscalEntrada.edCFOPExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  try
    cfop_filtro :=  strtoint(edCFOP.Text);
  except
    cfop_filtro := 0;
  end;
  str_sql := format('select cfop_descricao from cfop where cfop_codigo=%s',[ quotedstr(edCFOP.Text)]);
  LookupBuscaExit(cfop_filtro,edCFOP, lbCFOP, str_sql, 'CFOP' , false);

end;

procedure TfrmControleNotaFiscalEntrada.edCodFornecedorExit(Sender: TObject);
var str_sql : string;
begin
  inherited;
  try
    cod_fornecedor_filtro :=  strtoint(edCodFornecedor.Text);
  except
    cod_fornecedor_filtro := 0;
  end;
  str_sql := format('select razao_social from fornecedor where id_fornecedor=%d and id_empresa=%d',[ cod_fornecedor_filtro , recproj.iEmp]);
  LookupBuscaExit(cod_fornecedor_filtro,edCodFornecedor, lbFornecedor, str_sql, 'Fornecedor' , false);
end;

procedure TfrmControleNotaFiscalEntrada.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_return then Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmControleNotaFiscalEntrada.btSairClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmControleNotaFiscalEntrada.acBuscaCFOPExecute(Sender: TObject);
var str_sql, filtro : string;
begin
  edCFOP.SetFocus;

  str_sql:= 'select cfop_codigo, cfop_descricao from cfop';
  filtro := ' substring(cfop_codigo,1,1) in (''5'',''6'') ';

   frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self, str_sql,
      CriaIntegerArray([0,1]) ,
      CriaStringArray(['CFOP', 'Descrição']),
      0, 0, filtro);
   frmBuscaRegistro.ShowModal;
   if frmBuscaRegistro.Tag=1 then
   begin
     edCFOP.Text := frmBuscaRegistro.valor_retorno;
     edCFOPexit(nil);
   end;
    freeandnil(frmBuscaRegistro);

end;

procedure TfrmControleNotaFiscalEntrada.acBuscaFornecedorExecute(
  Sender: TObject);
var str_sql : string;
begin
  inherited;
  edCodFornecedor.SetFocus;

  str_sql:= 'select id_fornecedor, nome_fantasia, razao_social, cnpj, fn_situacoes(id_situacao) as status from fornecedor ';

  frmBuscaRegistro := tfrmBuscaRegistro.CreateForm(self,
    str_sql,
    CriaIntegerArray([0,1,2,3,4]) ,
    CriaStringArray(['Código', 'Nome Fantasia', 'Razão social','CNPJ', 'Status' ]),
    0, 1, ' id_situacao=4 and id_empresa='+IntToStr(RecProj.iEmp), 800, 500);
  frmBuscaRegistro.ShowModal;
  if frmBuscaRegistro.Tag=1 then
  begin
   edCodFornecedor.Text := frmBuscaRegistro.valor_retorno;
   edCodFornecedorExit(nil);
  end;
   freeandnil(frmBuscaRegistro);
end;

procedure TfrmControleNotaFiscalEntrada.btEditarNFClick(Sender: TObject);
begin
  inherited;
  if qrNotaEntrada.active then
  begin
    if qrNotaEntrada.RecordCount>0 then
    begin
      frmDetalheNotaFiscalEntrada := TfrmDetalheNotaFiscalEntrada.Create(self, id_usuario_nota, qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger);
      frmDetalheNotaFiscalEntrada.ShowModal;
      frmDetalheNotaFiscalEntrada.Free;
      qrNotaEntrada.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;


procedure TfrmControleNotaFiscalEntrada.btExcluirNFClick(Sender: TObject);
var situacao, id_nota : integer;
    msg, str_sql : string;
begin
  inherited;
  if qrNotaEntrada.active then
  begin
    if qrNotaEntrada.RecordCount>0 then
    begin
      situacao := qrNotaEntrada.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;

      if situacao = 0 then
      begin
        msg := format('Confirma a exclusão da nota %d?',[qrNotaEntrada.FieldByName('numero').AsInteger]);
        if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
        begin
          str_sql := format('delete from nota_entrada_duplicata where id_nota_entrada=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_entrada_item where id_nota_entrada=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_entrada_doc_referenciado where id_nota_entrada=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          str_sql := format('delete from nota_entrada where id_nota_entrada=%d and id_empresa=%d', [id_nota, recproj.iEmp]);
          ExecutaComandoSQL(str_sql);
          Application.MessageBox('Nota excluída com sucesso!', 'Atenção', MB_ICONINFORMATION);
          qrNotaEntrada.Refresh;
        end;
      end
      else
      begin
        Application.MessageBox('Esta nota já foi lançada, não será possível sua exclusão!', 'Atenção', MB_ICONINFORMATION);
      end;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;

end;

procedure TfrmControleNotaFiscalEntrada.btImportarXmlClick(Sender: TObject);
begin
  inherited;
  frmControleNotaFiscalEntradaImportacao := TfrmControleNotaFiscalEntradaImportacao.Create(self, id_usuario_nota);
  frmControleNotaFiscalEntradaImportacao.ShowModal;
  frmControleNotaFiscalEntradaImportacao.Free;
  qrNotaEntrada.Refresh;
end;

procedure TfrmControleNotaFiscalEntrada.btIncluirNFClick(Sender: TObject);
begin
  inherited;
  frmDetalheNotaFiscalEntrada := TfrmDetalheNotaFiscalEntrada.Create(self, id_usuario_nota );
  frmDetalheNotaFiscalEntrada.ShowModal;
  frmDetalheNotaFiscalEntrada.Free;
  qrNotaEntrada.Refresh;
end;


function TfrmControleNotaFiscalEntrada.LancarNota(id_nota_entrada : integer ; usuario_mov : integer = 0) : boolean;
var str_sql , msg, fatura, documento: string;
    qr_aux, qr_nota : Tuniquery;
    id_conta_cpagar, i : integer;
begin
  inherited;
  if usuario_mov = 0 then  usuario_mov := id_usuario_nota;
  qr_aux := CriaUniQuery(self, frmMenu.conexao);
  qr_nota := CriaUniQuery(self, frmMenu.conexao);
  str_sql := format('select id_fornecedor, numero, valor_total from nota_entrada where id_nota_entrada=%d and id_empresa=%d',[id_nota_entrada, recproj.iEmp]);
  if ExecutaConsultaSQL(qr_nota, str_sql) then
  begin
    //Busca os itens da nfe
    str_sql := format(' select ni.id_nota_entrada, coalesce(ni.id_material, ni.id_composicao) as material_composicao, ' +
                      ' ni.quantidade, n.id_fornecedor, ni.tipo_item, ni.valor_unitario, ni.valor_venda from nota_entrada_item ni '+
                      ' join nota_entrada n on ni.id_nota_entrada=n.id_nota_entrada and ni.id_empresa=n.id_empresa' +
                      ' where ni.id_situacao=4 and ni.id_nota_entrada=%d and ni.id_empresa=%d order by ni.item',[id_nota_entrada, recproj.iEmp]);
    if ExecutaConsultaSQL(qr_aux, str_sql) then
    begin
      LancarEstoque(qr_aux, 'E', usuario_mov);
    end
    else
    begin
      application.MessageBox('Esta nota não possui itens!', 'Atenção', MB_ICONINFORMATION);
      result:=false;
      exit;
    end;

    //lança as duplicatas como contas a pagar
    str_sql :=format(' select d.item, n.numero, d.numero_duplicata, d.data_vencimento, d.valor '+
              ' from nota_entrada_duplicata d '+
              ' join nota_entrada n on n.id_nota_entrada=d.id_nota_entrada and n.id_empresa=d.id_empresa '+
              ' where n.id_nota_entrada=%d and n.id_empresa=%d '+
              ' order by d.item ', [id_nota_entrada ,recproj.iEmp]);
    if ExecutaConsultaSQL(qr_aux, str_sql) then
    begin
      str_sql := format('select id_conta_padrao_cpagar_nfe from empresas where emp_001=%d', [recproj.iEmp] );
      BuscaCampo(id_conta_cpagar, str_sql, '', false);
      if id_conta_cpagar = 0 then
      begin
        application.MessageBox('Não foi definida nas configurações a conta padrão para lançamento das contas a pagar, as duplicatas dessa nota não foram lançadas!', 'Atenção', MB_ICONINFORMATION);
      end
      else
      begin
        str_sql := ' insert into cpagar (id_empresa, id_fornecedor, data,  id_conta, nota, descricao, ' +
                   ' valor_nota, valor, data_vencimento,  documento,  parcela_nota, id_usuario, id_situacao) ' +
                   ' values (:id_empresa,:id_fornecedor, localtimestamp, :conta, :numero_nota, :descricao, ' +
                   ' :valor_nota, :valor_conta, :vencimento,  :num_doc, :parcela,  :id_usuario,  4 )';
        i:=1;
        while not qr_aux.eof do
        begin
          fatura := 'Fatura do fornecedor: ' + qr_aux.FieldByName('numero_duplicata').AsString;
          documento := format('%d/%d',[qr_nota.FieldByName('numero').AsInteger, i]);
          ExecutaComandoSQL(str_sql, vararrayof([recproj.iEmp,
                                                 qr_nota.FieldByName('id_fornecedor').AsInteger,
                                                 id_conta_cpagar,
                                                 qr_nota.FieldByName('numero').AsInteger,
                                                 fatura,
                                                 qr_nota.FieldByName('valor_total').asfloat,
                                                 qr_aux.FieldByName('valor').asfloat,
                                                 qr_aux.FieldByName('data_vencimento').AsDateTime,
                                                 documento, i, usuario_mov]));
          qr_aux.Next;
          i:=i+1;
        end;
      end;
    end;

    //atualiza o status da nf
    str_sql := format('update nota_entrada set id_situacao=1 where id_nota_entrada=%d and id_empresa=%d',
                      [id_nota_entrada,recproj.iEmp]);
    ExecutaComandoSQL(str_sql);
    result:=true;
  end
  else
    result:=false;
    qr_aux.Free;
    qr_nota.free;
end;


procedure TfrmControleNotaFiscalEntrada.btLancarNFClick(Sender: TObject);
var situacao , id_nota: integer;
    msg : string;
begin
  inherited;
  if qrNotaEntrada.active then
  begin
    if qrNotaEntrada.RecordCount>0 then
    begin
      situacao := qrNotaEntrada.FieldByName('id_situacao').AsInteger;
      id_nota  := qrNotaEntrada.FieldByName('id_nota_entrada').AsInteger;
      if situacao = 0 then
      begin
        msg := format('Confirma o lançamento dos itens em estoque e contas a pagar da nota %d?',[qrNotaEntrada.FieldByName('numero').AsInteger]);
        if Application.MessageBox(pchar(msg), 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
        begin
          if LancarNota(id_nota) then
            application.MessageBox('Nota itens em estoque e contas a pagar lançados com sucesso!', 'Atenção', MB_ICONINFORMATION);
        end;
      end
      else
      begin
        Application.MessageBox('Esta nota já foi lançada!', 'Atenção', MB_ICONINFORMATION);
      end;
      qrNotaEntrada.Refresh;
    end
    else
      Application.MessageBox('Nenhuma nota selecionada!','Atenção', MB_ICONINFORMATION );
  end;
end;

procedure TfrmControleNotaFiscalEntrada.btPesquisarClick(Sender: TObject);
var filtro : string;
begin
  inherited;
  qrNotaEntrada.Close;
  filtro :=  'where ne.id_empresa=' + inttostr(recproj.iEmp);
  case cbFiltroData.ItemIndex of
    0: filtro := filtro + ' and ne.data_entrada>=:data_inicio and  ne.data_entrada<:data_fim ';
    1: filtro := filtro + ' and ne.data_emissao>=:data_inicio and  ne.data_emissao<:data_fim ';
  end;

  if cod_fornecedor_filtro<>0 then
  begin
    filtro := filtro + format(' and ne.id_fornecedor = %d', [cod_fornecedor_filtro]);
  end;

  case cbFiltroSituacao.ItemIndex of
    1: filtro := filtro + ' and ne.id_situacao = 0' ;// em digitacao
    2: filtro := filtro + ' and ne.id_situacao = 1' ;// Lançada
  end;

  if cfop_filtro<>0   then
  begin
    filtro := filtro + ' and ne.cfop=' + QuotedStr(trim(edCFOP.Text));
  end;

  qrNotaEntrada.SQL[i_where] :=filtro;

  qrNotaEntrada.ParamByName('data_inicio').AsDate := dtpDataInicial.Date;
  qrNotaEntrada.ParamByName('data_fim').AsDate := dtpDataFinal.Date+1;
  qrNotaEntrada.Open;
end;


end.

