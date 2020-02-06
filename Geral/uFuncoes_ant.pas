unit uFuncoes;

interface

uses
   System.Classes, VCL.Forms, IniFiles, SysUtils, Winapi.Windows, VCL.Graphics,
   Datasnap.DBClient, VCL.Dialogs, VCL.Controls, DateUtils, StrUtils, Data.DB,
   System.Variants, Math, JPEG, WinSock, Uni, IdSMTP, IdSSLOpenSSL, IdMessage,
   IdText, IdAttachmentFile, IdExplicitTLSClientServerBase,  cxButtonEdit, Vcl.StdCtrls,
   zexmlss, zeSave, zeSaveEXML , zsspxml, zeSaveODS, zeSaveXLSX, zeZippyXE2, //units referentes ao componente de exportar para excel
   System.Varutils;

type
  TConsisteInscricaoEstadual = function(const Insc, UF: AnsiString): Integer; stdcall;
  TStringArray = array of string;
  TIntegerArray = array of integer;

function ApenasNumero(Texto: String): String;
function Verifica_Form(Classe: TFormClass; Name: String): TForm;
function Formatar(Texto: string; TamanhoDesejado: Integer; AcrescentarADireita: Boolean = true;
  CaracterAcrescentar: Char = ' '): string;
procedure Chama_Form(cForm: TFormClass; var fForm; sName: String);
function Confirma(Msg, Titulo: String; NaoDefault: Boolean = False): Boolean;
function CompletarCom(Texto: Char; Vezes: Integer): String;
procedure TestarFocoField(Campo: TField);
function StreamToVarArray(Stream: TStream): OleVariant;
function IsNumeric(Texto: String): Boolean;
procedure Parcelar_Valor(Valor: Real; Parcelas, Casas_Decimais: Integer; var Valor_Parcelado: Real;
  var Parcela_Unica: Real);
function ValidaIE(InscEst, UF: String): Integer;
function Valida_CNPJ(DOC: String): Boolean;
function Valida_CPF(DOC: String): Boolean;
Function JPG2Bmp(Arquivo: TBlobField): TBitmap;
procedure Ajusta_Valor_Mask(fCampo: TField);
function VarToBoolDef(Valor: Variant; Def: Boolean = False): Boolean;
Function GetIP(HostName: String): String;
function BoolToInt(Value: Boolean): Integer;
//Vendas
Function TotalItensVenda(iVenda: Integer): Double;
Function TotalVendaCliente(iVenda, iCliente: integer): Double;
Function VerificaClienteItemVenda(iVenda, iCliente: Integer): Boolean;
function CancelaVenda(id_venda, id_usuario : integer;
                      sJust : string ;
                      estorna_caixa : boolean = true;
                      estorna_estoque : boolean = true;
                      estorna_fiado :boolean = true) : boolean;
//Ordem de Compra
Procedure AutorizaOrdemServico(iVenda: Integer);
function Empty(Dados: string): boolean;
Procedure AutorizaDevolucao(iVenda: Integer);
Procedure GeraCreditoCliente(iCliente: Integer; dValor: Double);
Procedure ZeraCreditoCliente(iCliente: Integer);
// Reproduz um string varias vezes
function Repl(C: string; Tamanho: integer): string;
function StrFormat(Texto: string; Tamanho: Integer; Complemento: Char): string;
function StrAlign(pStr: string; pTamanho: Integer; pPosicao: Char): string;
function Alltrim(Dados: string): string;
function Ltrim(Dados: string): string;
function Rtrim(Dados: string): string;
function Space(N: integer): string;
function RetornaTaxaVenda(iVenda: Integer): Double;
Procedure MudaStatusVendaImpresso(iVenda: Integer);
Function VerificaContasReceber(iVenda: Integer): Boolean;
Procedure LimpaFaturamento(iVenda: Integer);
function IsNumero(S : String) : Boolean;
Function VerificaItensVendaAberto(iVenda: Integer): Boolean;
//procedure ClonaArray(origem : TStringArray ; var destino : TStringArray);   overload;
procedure ClonaArray(origem : TArray<integer> ; var destino :  TArray<integer> ); overload;
procedure ClonaArray(origem : TArray<string> ; var destino : TArray<string> );  overload;
function CriaStringArray(Args: array of const): TArray<string>;
function CriaIntegerArray(Args: array of const): TArray<integer>;
function CriaVariantArray(Args: array of const): TArray<variant>;
procedure FecharApplicacao;

procedure GravarLog(const Diretorio: String; const Prefixo: String; const Texto: String);
procedure criarDiretorio(const Diretorio: String);
function FormatarCaminhoDir(const Caminho: String): String;
function AcertaTexto(const texto: String; const Direcao: String; const Quantidade: Integer; CaracterPreenchimento : String = ' '): String;
function ReplicarCaracter(const caracter: String; const quantidade: Integer): String;
function ApenasNumeros(texto: String): String;
function InteiroNoConjunto(Valor: Integer; Conjunto: Array of Integer): Boolean;
function LerStringConfig(Campo, CaminhoXML : string; default : string =''):string;
function LerIntegerConfig(Campo, CaminhoXML : string; default : integer =0):integer;
function LerFloatConfig(Campo, CaminhoXML : string ; default : double =0):double;
function LerBooleanConfig(Campo, CaminhoXML : string; default : boolean = false):boolean;
procedure GravaStringConfig(Campo, Valor,  CaminhoXML : string);
procedure GravaBooelanConfig(Campo : string; Valor : boolean ;  CaminhoXML : string);
procedure GravaIntegerConfig(Campo : string; Valor : integer ;  CaminhoXML : string);
function LerDataConfig(Campo, CaminhoXML : string):TDateTime;
function IntArrayToString (ArrrayDeInteiros : TArray<integer> ;  separador :string = ' ' ) : string;
procedure LimpaMemoria;
function StringListToString (list : TstringList ; Quebralinha : boolean = true ; separador : string = ' ' ) : string;
function QuebraStringEmStringList (texto_continuo : string; caracter_quebra : string ) : TStringList;  //Função parecida com a função explode do php
procedure InserirCaixaItem( id_caixa, id_formapgto : integer;
                            valor : double;
                            tipo_mov : string;
                            obs : string ='';
                            id_venda : integer = 0;
                            id_encerravenda : integer = 0;
                            item_encerravenda : integer = 0;
                            antecipado : boolean = false;
                            classificacao_mov : string = 'V';
                            id_cpagar : integer = 0;
                            id_creceber : integer = 0);

procedure InserirMovimentoProduto(id_produto : integer ;
                                  quantidade : double = 1 ;
                                  tipo_mov : string = 'E';
                                  observacao : string = '';
                                  id_usuario :integer = 0 ;
                                  id_venda : integer = 0;
                                  id_vendaitem : integer = 0;
                                  tipo_item_mov : string = 'M';
                                  movimenta_composicao : boolean = false;
                                  id_fornecedor : integer = 0;
                                  valor_custo : double =0;
                                  valor_venda : double =0;
                                  data_movimento : Tdatetime = 1;
                                  atualiza_preco_venda:boolean=false;
                                  id_setor_movimento : integer = 0;
                                  id_setor_destino : integer = 0);

function EnviaEmailSSL(nome_remetente, email_destinatario, assunto, mensagem : string;
                        anexos : TstringList; exibe_mensagens : boolean = false): boolean; overload;
function EnviaEmailSSL(nome_remetente, email_destinatario, assunto, mensagem, anexo : string;
                        exibe_mensagens : boolean = false): boolean; overload;
function GetFileVersion(exeName : string): string;
function IsNumberInArray(const ANumber: integer; const AArray: TArray<integer>): boolean;
procedure InserirMovimentoContaCorrente(id_empresa, id_contacorrente, id_usuario :integer;
                                        valor : double;
                                        tipo_movimento, observacao : string;
                                        data : TDateTime;
                                        id_cpagar, id_creceber :variant);
function EstornoCaixaItem(id_caixa, caixaitem, id_empresa : integer): boolean;
procedure LookupBuscaExit(out CodRetorno : integer; var cxButtonEdit : TcxButtonEdit; var labelDescricao : TLabel;
                          sql_busca_campo, nome_campo : string; avisa_nao_encontrado : boolean = false);
function VerificaSaldoFiado(out saldo : double ; out limite : double;
                            id_cliente, id_empresa : integer ; valor : double) : boolean;
procedure InserirMovimentoContaCliente(id_empresa, id_cliente, id_usuario :integer; valor : double;
                        tipo_movimento, observacao : string; data : TDateTime; id_venda : variant;
                        gera_contas_receber : boolean; conta_formapag : integer ; lancamento_manual : boolean = false );
function GetFileList(const Path: string): TStringList;
function NomeDoTerminal: String;
function SerialHardDrive(Letra_volume: String): String;
function StrIsDate(const S: string): boolean;
function Crypt(Action, Src: String): String;
function Codifica(Action, Src: String): String;
function DecodificaAssinaturaValidacao(assinatura : string ;
                                       out DataInicial : TDate;
                                       out DataFinal : TDate;
                                       out UltimaData : TDate;
                                       out SerialHD :string) : boolean;
function ConverteRespostaBalanca(cmd: String): String;
function QuebraLinhaItemCupom(texto_item: String; largura_ajuste : integer ;
                              texto_anterior : String=''; texto_posterior :string  =''): String;
function BuscaPromocao(venda_tamanho: Boolean; tamanho, tipo_venda: string ; id_material: integer; out desconto: double; out tipo_desconto: integer): boolean;
procedure CalculaDescontoItem(tipo: integer; desconto, quantidade, valor_unitario, acrescimo : double ;
                              out desconto_valor, valor_total : double );
function EliminaSepMilhar(st: string): string;
function FormataVlrSQL(Valor: Currency; CasasDecimais:integer=2): string;  overload;
function FormataVlrSQL(st: string; CasasDecimais:integer=2): string; overload;
//function DirectoryIsEmpty(Directory: string): Boolean;
function GeraArquivoItensBalancaMGV6(consulta : TUniquery): string;
function GeraArquivoItensBalancaSmartRDC360(consulta : TUniquery): string;
procedure AtualizaPrecoCustoMaterialPelaComposicao(id_composicao : integer );
function ObterCustoComposicao(id_material : integer) : double;
procedure AtualizaMargemMaterial(id_material : integer); //atualiza a % de lucro do material
procedure CopiaClientDataSet(DataSetOrigem : Tclientdataset ; out DataSetDestino : Tclientdataset);
procedure GeraRelatorioExcel(Dados : Tuniquery ; somente_visiveis : boolean = true);
function FormataMinutos(QdtMinutos : Cardinal) : string; //converte minutos para horas
function HoraParaMin(Hora: String): Integer; //converte horas para minutos
procedure Atualiza_Saldo_Conta(idvenda: integer); //Atualizar saldo conta corrente se tiver controle cartão
function BuscaHappyHour( tipo_venda : string ; id_produto : integer ; out valor : double) : boolean ;

implementation

uses uMenu, Funcao_DB, UPrinters, uPadrao,  untConstSAT, uContasReceberFiadoPagamento;

procedure GeraRelatorioExcel(Dados : Tuniquery; somente_visiveis : boolean = true);
var indice_linha, j, indice_coluna, quantidade_colunas: integer;
  va: TZVerticalAlignment;
  ha: TZHorizontalAlignment;
  TextConverter: TAnsiToCPConverter;
  dlSalvar : TSAVEDialog;
  tz : TZEXMLSS;
  dado_celula : string;
  tipo_dado : TZCellType;
  formato_numero : TFormatSettings;
begin
  if Dados.recordcount<1 then exit;

  formato_numero.DecimalSeparator := '.';

  TextConverter := nil;

  dlSalvar := TsaveDialog.Create(nil);
  dlSalvar.Filter := 'MS Office OpenXML|*.xlsx';
  dlSalvar.DefaultExt := 'xlsx';
  dlSalvar.Options := dlSalvar.Options + [ofOverwritePrompt];

  if dlSalvar.Execute then
  begin
    try
      tz := TZEXMLSS.Create(nil);
      //Define uma planilha
      tz.Sheets.Count := 1;
      tz.Sheets[0].Title := 'Planilha 1';
      //Define dois estilos
      tz.Styles.Count := 2;
      //Estilo do cabeçalho (0)
      tz.Styles[0].Font.Size := 10;
      tz.Styles[0].Font.Style := [fsBold];
      tz.Styles[0].Font.Name := 'Tahoma';
      //tz.Styles[0].BGColor := $000000;
      //tz.Styles[0].CellPattern := ZPSolid;
      tz.Styles[0].Alignment.Horizontal := ZHLeft;
      //tz.Styles[0].Alignment.Vertical := ZVTop;
      //tz.Styles[0].Alignment.WrapText := true;
      //Estilo do texto geral
      tz.Styles[1].Font.Size := 10;
      tz.Styles[1].Font.Style := [];
      tz.Styles[1].Font.Name := 'Tahoma';

      //contagem de colunas
      //se estiver marcado para mostrar somente visívies, analisa a propriedade visible de cada campo
      if somente_visiveis then
      begin
        quantidade_colunas := 0;
        for j := 0 to Dados.FieldCount-1 do
        begin
          if Dados.Fields[j].Visible then inc(quantidade_colunas);
        end;
      end
      else
        quantidade_colunas := Dados.FieldCount;

      if quantidade_colunas <1  then exit;

      //contagem de colunas
      tz.Sheets[0].ColCount := quantidade_colunas  ;
      //contagem de linhas - caebeçalho mais dados
      tz.Sheets[0].RowCount := 1 + Dados.recordcount;

      //preenche a planilha
      Dados.First;

      for indice_linha := 0 to Dados.RecordCount do
      begin
        indice_coluna := 0;
        for j:=0 to Dados.FieldCount-1 do
        begin
          //apenas preenche se o campo estiver definido como visível
          if (not somente_visiveis ) or (somente_visiveis  and (Dados.Fields[j].Visible)) then
          begin
            //primeira linha, escreve o cabeçalho no estilo 0
            if indice_linha=0 then
            begin
              tz.Sheets[0].Cell[indice_coluna, indice_linha].CellStyle := 0;
              if trim(Dados.fields[j].DisplayLabel)<>'' then
                tz.Sheets[0].Cell[indice_coluna, indice_linha].Data := trim(Dados.fields[j].DisplayLabel)
              else
                tz.Sheets[0].Cell[indice_coluna, indice_linha].Data := trim(Dados.fields[j].FieldName);
            end
            else
            begin
              tz.Sheets[0].Cell[indice_coluna, indice_linha].CellStyle := 1;

              if not Dados.fields[j].IsNull then
              begin

                tipo_dado := ZEString;
                {//define o tipo de dado a ser colocado na célula
                if Dados.fields[j] is TDateTimeField then
                  tipo_dado := ZEDateTime
                else if Dados.fields[j] is TNumericField then
                  tipo_dado := ZENumber
                else if Dados.fields[j] is TBooleanField then
                  tipo_dado := ZEBoolean
                else
                  tipo_dado := ZEString;}

                //formata os dados de acordo com o tipo
                if Dados.fields[j] is TDateField then //apenas data
                  dado_celula :=  FormatDateTime('dd/mm/yyyy', Dados.fields[j].AsDateTime)
                else if Dados.fields[j] is TTimeField then //apenas hora
                  dado_celula :=  FormatDateTime('hh:nn:ss', Dados.fields[j].AsDateTime)
                else if Dados.fields[j] is TDateTimeField then //data e hora
                  dado_celula :=  FormatDateTime( 'dd/mm/yyyy hh:nn:ss', Dados.fields[j].AsDateTime)
                else if Dados.fields[j] is TDateTimeField then //data e hora
                  dado_celula :=  FormatDateTime( 'dd/mm/yyyy hh:nn:ss', Dados.fields[j].AsDateTime)
                else if Dados.fields[j] is TFloatField then //numero float
                begin
                  //se houver informação de formatção na propriedade DisplayFormat, usa...
                  if TFloatField(Dados.fields[j]).DisplayFormat<>'' then
                    dado_celula := FormatFloat( TFloatField(Dados.fields[j]).DisplayFormat, Dados.fields[j].asfloat)
                  //else if TFloatField(Dados.fields[j]).currency then
                  //  dado_celula := format('R$ %.2f', [Dados.fields[j].asfloat])
                  else
                    dado_celula := FormatFloat('#0.000', Dados.fields[j].asfloat, formato_numero);
                  tipo_dado := ZENumber;
                end
                else if Dados.fields[j] is TBooleanField then
                begin
                  if Dados.fields[j].AsBoolean then
                    dado_celula := 'VERDADEIRO'
                  else
                    dado_celula := 'FALSO';
                end
                else
                  dado_celula := Dados.fields[j].asstring;

              end
              else
                dado_celula :='';

              tz.Sheets[0].Cell[indice_coluna, indice_linha].Data := dado_celula;
              tz.Sheets[0].Cell[indice_coluna, indice_linha].CellType :=  tipo_dado;
            end;
            inc(indice_coluna);
          end;

        end;
        if indice_linha>0 then Dados.next;
      end;

      //Salva o arquivo...
      TZXMLSSave.From(tz).Charset('utf-8', TextConverter).Save(dlSalvar.FileName);

    finally
      tz.free();
    end;
  end;
  dlSalvar.Free;
end;

procedure CopiaClientDataSet(DataSetOrigem : Tclientdataset ; out DataSetDestino : Tclientdataset);
var
  I: Integer;
begin
  DataSetOrigem.First;
  DataSetDestino.EmptyDataSet;
  while not DataSetOrigem.Eof  do
  begin
    DataSetDestino.Append;
    for I := 0 to DataSetOrigem.FieldCount-1 do
    begin
      DataSetDestino.FieldByName(DataSetOrigem.Fields[i].FieldName).Value := DataSetOrigem.Fields[i].Value;
    end;
    DataSetDestino.post;
    DataSetOrigem.Next;
  end;
end;

procedure AtualizaMargemMaterial(id_material : integer);
var str_sql : string;
    qr_aux : TUniQuery;
    custo_total, valor_venda, margem_lucro : double;
begin
  str_sql := format(' select m.mat_006 as valor_custo_composicao, m.mat_008 as valor_venda, '+
                    ' m.mat_012 as valor_custo, m.mat_018 as margem_lucro '+
                    ' from materiais m  ' +
                    ' where m.mat_001=%d and m.emp_001=%d',
                    [id_material, recproj.iEmp]) ;
  qr_aux := CriaUniQuery(nil, frmmenu.conexao);
  if ExecutaConsultaSQL(qr_aux, str_sql)  then
  begin
    valor_venda := qr_aux.FieldByName('valor_venda').AsFloat ;
    custo_total := qr_aux.FieldByName('valor_custo_composicao').AsFloat +
                   qr_aux.FieldByName('valor_custo').AsFloat;
    //calcula a nova margem e atualiza
    if (custo_total>0) and (valor_venda >0) then
    begin
      margem_lucro := ((valor_venda / (custo_total)) - 1)* 100;
      str_sql := 'update materiais set mat_018 = :margem where mat_001=:id_material and emp_001=:id_empresa';
      ExecutaComandoSQL(str_sql, vararrayof([margem_lucro, id_material, recproj.iEmp]));
    end;
  end;

end;


procedure AtualizaPrecoCustoMaterialPelaComposicao(id_composicao : integer);
var str_sql : string;
    qr_aux : TUniQuery;
    valor_custo, custo_composicao, custo_total, valor_venda, margem_lucro: double;
    id_material : integer;
begin
  //atualiza o custo_composição e margem dos produtos que possuem o item informado como composição
  qr_aux := CriaUniQuery(nil, frmmenu.conexao);

  // pega todos os materiais que possuem o item
  str_sql := format(' select distinct mc.id_material, m.mat_006 as valor_custo_composicao, m.mat_008 as valor_venda, '+
                    ' m.mat_012 as valor_custo, m.mat_018 as margem_lucro '+
                    ' from materiais_composicao mc ' +
                    ' join materiais m on m.mat_001=mc.id_material and m.emp_001=mc.id_empresa '+
                    ' join composicao c on mc.id_composicao=c.id_composicao and mc.id_empresa=c.id_empresa ' +
                    ' where mc.id_composicao=%d and mc.id_empresa=%d',
                    [id_composicao, recproj.iEmp])  ;
  if ExecutaConsultaSQL(qr_aux, str_sql) then
  begin
    while not qr_aux.eof  do
    begin
      id_material := qr_aux.FieldByName('id_material').asinteger;
      valor_custo := qr_aux.FieldByName('valor_custo').AsFloat;
      valor_venda := qr_aux.FieldByName('valor_venda').AsFloat;
      custo_composicao := ObterCustoComposicao(id_material);
      custo_total := valor_custo + custo_composicao;
      //calcula a nova margem e atualiza
      if (custo_total>0) and (valor_venda >0) then
      begin
        margem_lucro := ((valor_venda / (custo_total)) - 1)* 100;
        str_sql := 'update materiais set mat_018 = :margem, mat_006=:custo_composicao where mat_001=:id_material and emp_001=:id_empresa;';
        ExecutaComandoSQL(str_sql, vararrayof([margem_lucro,
                                               custo_composicao,
                                               id_material,
                                               recproj.iEmp]));
      end;
      qr_aux.next;
    end;
  end;
  qr_aux.Free;
end;

function ObterCustoComposicao(id_material : integer) : double;
var
  qr_aux : Tuniquery;
  str_sql : string;
begin
  qr_aux := TUniQuery.Create(nil);
  qr_aux.Connection:=frmmenu.conexao;
  str_sql:=Format(' select sum(c.valor_custo * mc.quantidade) as total_custo '+
                  ' from materiais_composicao mc '+
                  ' join composicao c on mc.id_composicao=c.id_composicao and mc.id_empresa=c.id_empresa '+
                  ' where mc.id_material=%d and mc.id_empresa=%d ', [id_material, recproj.iEmp]);
  ExecutaConsultaSQL(qr_aux,str_sql);

  if qr_aux.RecordCount>0 then
    result := qr_aux.FieldByName('total_custo').AsFloat
  else
    result := 0;
  qr_aux.free;
end;


function QuebraStringEmStringList (texto_continuo : string; caracter_quebra : string ) : TStringList; //Função parecida com a função explode do php
var lista : TstringList;
    str_aux : string;
begin
  lista := Tstringlist.Create;

  while pos(caracter_quebra, texto_continuo)>0 do
  begin
    str_aux := trim(copy(texto_continuo,1, pos(caracter_quebra, texto_continuo)-1));
    if length(str_aux)>0 then lista.Add(str_aux);
    texto_continuo := trim(copy(texto_continuo,pos(caracter_quebra, texto_continuo)+1, length(texto_continuo)));
  end;
  //adiciona a ultima parte da string (ou se não encontrar caracter de quebra, adiciona toda a string)
  if Length(trim(texto_continuo))>0 then lista.Add(texto_continuo);

  result := lista;
end;

function GeraArquivoItensBalancaSmartRDC360(consulta : TUniquery): string;
var saida, linha, str_aux1: string;
    int_aux: integer;
const quebra = #13#10;
begin
  saida :='';
  if consulta.recordcount>0 then
  begin
    consulta.first;
    while not consulta.eof do
    begin
      //formato da linha
      //CCCCCCC(6)P(1)DESCRICAO(22)NNNNNNN(7)VVV(3)
      linha :=  AcertaTexto(consulta.FieldByName('codigo').AsString, 'D', 6, '0')    ;//código do item 6 posições
      if consulta.FieldByName('unidade').AsString = 'KG' then
        str_aux1 := 'P'
      else
        str_aux1 := 'U';
      linha := linha + str_aux1;//P-Venda por peso / U-Venda por unidade
      linha := linha + AcertaTexto(consulta.FieldByName('descricao').asstring, 'E', 22, ' ') ;//Descricao 22 posições
      int_aux := round(consulta.FieldByName('valor_unitario').asfloat*100);

      linha := linha +  AcertaTexto(format('%d',  [int_aux]), 'D', 7, '0')    ;//valor unitário deve ser inteiro com duas casas, exemplo: 2,35-> 235
      linha := linha +  AcertaTexto(consulta.FieldByName('dias_validade').AsString, 'D', 3, '0') ; //dias de validade
      linha := linha + quebra;
      saida := saida + linha;
      consulta.Next;
    end;
  end;
 result:=saida;

end;



function GeraArquivoItensBalancaMGV6(consulta : TUniquery): string;
var saida, linha, str_aux1, str_aux2 : string;
    int_aux : integer;
const quebra = #13#10;
begin
  saida :='';
  if consulta.recordcount>0 then
  begin
    consulta.first;
    while not consulta.eof do
    begin
      //formato da linha
      //DD(2)T(1)CCCCCC(6)PPPPPP(6)VVV(3)D1(25)D2(25)RRRRRR(6)FFFF(4)IIIIII(6)DV(1)DE(1)CF(4)L(12)G(11)Z(1)CS(4)CT(4)FR(4)CE1(4)CE2(4)CON(4)EAN(12)GL(6)|DA|D3(35)D4(35)CE3(6)CE4(6)MIDIA(6)PPPPPP(6)SF(1)|FFFFFFFF(n)|ST(1)| BNA(n)| (+CR+LF)
      linha := AcertaTexto(consulta.FieldByName('departamento').AsString, 'D', 2, '0'); //departamento
      if consulta.FieldByName('unidade').AsString = 'KG' then
        str_aux1 := '0'
      else
        str_aux1 := '1';
      linha := linha + str_aux1;//0-Venda por peso / 1-Venda por unidade / 2-EAN-13 por peso / 3-Venda por peso glaciado / 4-Venda por peso drenado / 5-EAN-13 por unidade
      linha := linha + AcertaTexto(consulta.FieldByName('codigo').AsString, 'D', 6, '0')    ;//código do item 6 posições
      int_aux := round(consulta.FieldByName('valor_unitario').asfloat*100);

      linha := linha +  AcertaTexto(format('%d',  [int_aux]), 'D', 6, '0');//valor unitário deve ser inteiro com duas casas exemplo: 2,35-> 235
      linha := linha +  AcertaTexto(consulta.FieldByName('dias_validade').AsString, 'D', 3, '0') ; //dias de validade
      str_aux1 := copy(consulta.FieldByName('descricao').asstring, 1, 25);
      str_aux2 := copy(consulta.FieldByName('descricao').asstring, 26, 25);
      linha := linha + AcertaTexto(str_aux1, 'E', 25, ' ') ;//Primeira linha de descricao 25 posições
      linha := linha + AcertaTexto(str_aux2, 'E', 25, ' ') ;//Segunda linha de descricao 25 posições
      linha := linha + '000000' ;//informações extras 6 posições
      linha := linha + '0000' ;//informações imagem 4 posiçoes
      linha := linha + '000000' ;//informações nutricionais 6 posições
      if consulta.FieldByName('dias_validade').asinteger>0 then
        str_aux1 := '1'
      else
        str_aux1 := '0';
      linha := linha + str_aux1 ;//0-Nao imprime data de validade / 1-imprime data de validade
      linha := linha + '1' ;//0-Nao imprime data de embalagem / 1-imprime data de embalagem
      linha := linha + '0000' ;//codigo fornecedor 4 posiçoes
      linha := linha +  AcertaTexto('', 'E', 12, '0'); //Lote
      linha := linha +  AcertaTexto('', 'E', 11, ' '); //EAN
      linha := linha +  AcertaTexto('', 'E', 1, ' '); //Versão to preço
      linha := linha + '0000' ;//codigo som 4 posiçoes
      linha := linha + '0000' ;//codigo tara 4 posiçoes
      linha := linha + '0000' ;//codigo fracionador 4 posiçoes
      linha := linha + '0000' ;//codigo extra 1 4 posiçoes
      linha := linha + '0000' ;//codigo extra 2 4 posiçoes
      linha := linha + '0000' ;//codigo conservação 4 posiçoes
      linha := linha +  AcertaTexto('', 'E', 12, ' '); //Ean do fornecedor
      linha := linha + '000000' ;//percentual de glaciamento
      linha := linha + '||' ;//departamentos associados   '|01|'
      linha := linha +  AcertaTexto('', 'E', 35, ' '); //Terceira linha de descricao 35 posições
      linha := linha +  AcertaTexto('', 'E', 35, ' '); //Quarta linha de descricao 35 posições
      linha := linha + '000000' ;//codigo campo extra 3 6 posições
      linha := linha + '000000' ;//codigo campo extra 4 6 posições
      linha := linha + '000000' ;//codigo mídia 6 posições
      linha := linha + '000000' ;//preço promocional
      linha := linha + '0' ;  //0 = Utiliza o fornecedor associado / 1 = Balança solicita fornecedor após chamada do PLU
      linha := linha + '||' ; // codigo fornecedores associados '|000000|'
      linha := linha + '0' ;  //0 = Não solicita tara / 1 = Solicita tara
      linha := linha + '||' ;//blanças com o item inativo
      linha := linha + quebra;
      saida := saida + linha;
      consulta.Next;
    end;
  end;
  result:=saida;
end;

function EliminaSepMilhar(st: string): string;
var i: integer;
begin
   if Trim(st) <> '' then
    begin
       i := 0;
       while i <= Length(st) do
       begin
          if st[i] = FormatSettings.ThousandSeparator
             then Delete(st,i,1)
             else Inc(i);
       end;
    end;
    Result := st;
end;

function FormataVlrSQL(Valor: Currency; CasasDecimais:integer=2): string;
var sFormatacao, sValor: string;
begin
  sFormatacao := '%.'+IntToStr(CasasDecimais)+'f';
  sValor := Format( sFormatacao, [ Valor ] );
  Result := FormataVlrSQL(sValor, CasasDecimais);
end;

function FormataVlrSQL(st: string; CasasDecimais:integer=2): string;
var valor: real;
    SepDecimal: char;
    Formato: String;
begin
  Formato := '%12.'+IntToStr(CasasDecimais)+'f';

  SepDecimal := FormatSettings.DecimalSeparator;
  try
     st := Trim(st);
     valor := StrToFloat(EliminaSepMilhar(st));
     FormatSettings.DecimalSeparator := '.';
     Result := Trim(Format( Formato ,[valor]));
  finally
     FormatSettings.DecimalSeparator := SepDecimal;
  end;
end;


procedure CalculaDescontoItem(tipo: integer; desconto, quantidade, valor_unitario, acrescimo : double ;
                              out desconto_valor, valor_total : double );
var desconto_calc, total_calc, valor_unit_calc_arr, diferenca : double;
begin
  if tipo = 0 then //Percentual
    desconto_calc := roundto((((valor_unitario * quantidade) + acrescimo) * desconto * 0.01),-2)
  else if tipo = 1 then //Valor
    desconto_calc := roundto((desconto * quantidade),-2);

  total_calc := roundto(((valor_unitario * quantidade) - desconto_calc + acrescimo),-2);
  //verifica se o valor com desconto é divisível pela quantide, evitando erros de arredondamento ao enviar ao SAT
  valor_unit_calc_arr := roundto(total_calc / quantidade,-2) * quantidade;
  diferenca := valor_unit_calc_arr - total_calc ;
  //verifica se existe diferença significativa e aplica a correção ao desconto e valortotal
  if ((diferenca > 0.00) and (diferenca >= 0.005) ) or((diferenca < 0.00) and (diferenca <= -0.005)) then
  begin
    desconto_valor :=  desconto_calc - diferenca;
    valor_total := total_calc + diferenca;
  end
  else
  begin
    desconto_valor := desconto_calc;
    valor_total := total_calc;
  end;
end;

function BuscaPromocao(venda_tamanho: Boolean; tamanho, tipo_venda: string ; id_material: integer; out desconto: double; out tipo_desconto: integer): boolean;
var qr_aux : Tuniquery;
    str_sql, str_dia, str_tipo, str_desconto : string;
begin
  tipo_venda := uppercase(tipo_venda);
  case DayOfTheWeek(DataServer(frmmenu.conexao)) of
    1 : str_dia := 'dia_seg';
    2 : str_dia := 'dia_ter';
    3 : str_dia := 'dia_qua';
    4 : str_dia := 'dia_qui';
    5 : str_dia := 'dia_sex';
    6 : str_dia := 'dia_sab';
    7 : str_dia := 'dia_dom';
  end;

  if not venda_tamanho then
  begin
    case DayOfTheWeek(DataServer(frmmenu.conexao)) of
      1 : str_desconto := 'desconto_seg_padrao';
      2 : str_desconto := 'desconto_ter_padrao';
      3 : str_desconto := 'desconto_qua_padrao';
      4 : str_desconto := 'desconto_qui_padrao';
      5 : str_desconto := 'desconto_sex_padrao';
      6 : str_desconto := 'desconto_sab_padrao';
      7 : str_desconto := 'desconto_dom_padrao';
    end;
  end
  else
  begin
    case DayOfTheWeek(DataServer(frmmenu.conexao)) of
      1 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_seg_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_seg_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_seg_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_seg_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_seg_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_seg_tam_extra';
      end;

      2 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_ter_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_ter_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_ter_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_ter_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_ter_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_ter_tam_extra';
      end;

      3 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_qua_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_qua_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_qua_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_qua_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_qua_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_qua_tam_extra';
      end;

      4 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_qui_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_qui_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_qui_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_qui_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_qui_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_qui_tam_extra';
      end;

      5 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_sex_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_sex_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_sex_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_sex_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_sex_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_sex_tam_extra';
      end;

      6 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_sab_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_sab_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_sab_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_sab_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_sab_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_sab_tam_extra';
      end;

      7 :
      begin
        if tamanho = EmptyStr then
          str_desconto := 'desconto_dom_padrao'
        else if tamanho = 'P' then
          str_desconto := 'desconto_dom_tam_p'
        else if tamanho = 'M' then
          str_desconto := 'desconto_dom_tam_m'
        else if tamanho = 'G' then
          str_desconto := 'desconto_dom_tam_g'
        else if tamanho = 'GG' then
          str_desconto := 'desconto_dom_tam_gg'
        else if tamanho = 'E' then
          str_desconto := 'desconto_dom_tam_extra';
      end;
    end;
  end;

  if tipo_venda='M' then
    str_tipo := 'tipo_mesa'
  else if tipo_venda='C' then
    str_tipo := 'tipo_comanda'
  else if tipo_venda='D' then
    str_tipo := 'tipo_delivery'
  else if tipo_venda='B' then
    str_tipo := 'tipo_balcao'
  else
    str_tipo := 'tipo_pdv';

  qr_aux := Tuniquery.Create(nil);
  qr_aux.Connection := frmmenu.conexao;

  str_sql := format('select %s as desconto, tipo_desconto from promocao where id_material=%d and %s and %s '+
                    'and id_empresa=%d',
                    [str_desconto, id_material, str_dia, str_tipo, recproj.iEmp]);
  result := ExecutaConsultaSQL(qr_aux, str_sql);
  if result then
  begin
    desconto:= qr_aux.FieldByName('desconto').AsFloat;
    tipo_desconto:= qr_aux.FieldByName('tipo_desconto').AsInteger;
  end;

  qr_aux.Free;
end;

function BuscaHappyHour( tipo_venda : string ; id_produto : integer ; out valor : double) : boolean ;
var qr_aux : Tuniquery;
    str_sql, str_dia, str_tipo : string;
begin
  tipo_venda := uppercase(tipo_venda);
  case DayOfTheWeek(DataServer(frmmenu.conexao)) of
    1 : str_dia := 'hh_dia_seg';
    2 : str_dia := 'hh_dia_ter';
    3 : str_dia := 'hh_dia_qua';
    4 : str_dia := 'hh_dia_qui';
    5 : str_dia := 'hh_dia_sex';
    6 : str_dia := 'hh_dia_sab';
    7 : str_dia := 'hh_dia_dom';
  end;

  if tipo_venda='M' then
    str_tipo := 'hh_tipo_mesa'
  else if tipo_venda='C' then
    str_tipo := 'hh_tipo_comanda'
  else if tipo_venda='D' then
    str_tipo := 'hh_tipo_delivery'
  else if tipo_venda='B' then
    str_tipo := 'hh_tipo_balcao'
  else
    str_tipo := 'hh_tipo_pdv';

  qr_aux := Tuniquery.Create(nil);
  qr_aux.Connection := frmmenu.conexao;

  str_sql := format('select hh_valor from materiais where mat_001=%d and %s and %s '+
                    'and emp_001=%d and hh_ativar and %s between hh_inicial and hh_final',
                    [id_produto, str_dia, str_tipo, recproj.iEmp, QuotedStr(TimeToStr(Time))]);
  result := ExecutaConsultaSQL(qr_aux, str_sql);
  if result then
  begin
    valor := qr_aux.FieldByName('hh_valor').AsFloat;
  end;

  qr_aux.Free;
end;

function QuebraLinhaItemCupom(texto_item: String; largura_ajuste : integer ;
                              texto_anterior : String=''; texto_posterior :string  =''): String;
var largura_anterior, largura_posterior, largura_item, posicao : integer;
    str_final, str_aux : string;
begin
  largura_anterior := length(texto_anterior) ;
  largura_posterior := length(texto_posterior) ;
  largura_item := length(texto_item) ;
  //monta a primeira linha
  str_final :=  texto_anterior + AcertaTexto(copy(texto_item, 0, largura_ajuste ), 'E', largura_ajuste)   +texto_posterior;
  //se o tamanho for maior, quebra o texto do item...
  if length(texto_item)>largura_ajuste then
  begin
    posicao := largura_ajuste +1;
    while posicao<largura_item do
    begin
      str_aux := sLineBreak + ReplicarCaracter(' ',largura_anterior)+
                 AcertaTexto(copy(texto_item, posicao, largura_ajuste ), 'E', largura_ajuste)+
                 ReplicarCaracter(' ',largura_posterior);
      posicao := posicao + largura_ajuste;
      str_final := str_final + str_aux;
    end;
  end;
  result := str_final;
end;

{function DirectoryIsEmpty(Directory: string): Boolean;
var
  SR: TSearchRec;
  i: Integer;
begin
  Result := False;
  FindFirst(IncludeTrailingPathDelimiter(Directory) + '*', faAnyFile, SR);
  for i := 1 to 2 do
    if (SR.Name = '.') or (SR.Name = '..') then
      Result := FindNext(SR) <> 0;
  FindClose(SR);
end;}

function ConverteRespostaBalanca(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if not (cmd[A] in ['A'..'Z','a'..'z','0'..'9',
                        ' ','.',',','/','?','<','>',';',':',']','[','{','}',
                        '\','|','=','+','-','_',')','(','*','&','^','%','$',
                        '#','@','!','~' ]) then
        Result := Result + '#' + IntToStr(ord( cmd[A] )) + ' '
     else
        Result := Result + cmd[A] + ' ';
  end ;
end;

function DecodificaAssinaturaValidacao(assinatura : string ;
                                       out DataInicial : TDate;
                                       out DataFinal : TDate;
                                       out UltimaData : TDate;
                                       out SerialHD :string) : boolean;
var  str_data_inicial, str_data_final, str_ultima_data : string;
begin
  //descriptografa a string de validação
  assinatura :=  Crypt('D',assinatura);
  //copia as datas a partir da string descriptografada por posições
  str_data_inicial := copy(assinatura,1,10);
  str_data_final   := copy(assinatura,11,10);
  str_ultima_data := copy(assinatura,21,10);
  SerialHD := trim(copy(assinatura,31,8));

  try
    DataInicial:= StrToDate(str_data_inicial);
    DataFinal:= StrToDate(str_data_final);
    UltimaData:= StrToDate(str_ultima_data);
    result := true;
  except
    DataInicial:= Date;
    DataFinal:= Date;
    UltimaData:= Date;
    result := false;
  end;

end;




function StrIsDate(const S: string): boolean;
begin
  try
    StrToDate(S);
    Result := True;
  except
    Result := False;
  end;
end;

function Crypt(Action, Src: String): String;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    // <--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      // <--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
end;

//Função para criptografar e descriptografar string's
function Codifica(Action, Src: String): String;
Label Fim;
var
  KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  try
    if (Src = '') Then
    begin
      Result:= '';
      Goto Fim;
    end;
    Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
    Dest := '';
    KeyLen := Length(Key);
    KeyPos := 0;
    SrcPos := 0;
    SrcAsc := 0;
    Range := 256;
    if (Action = UpperCase('C')) then
    begin
      Randomize;
      OffSet := Random(Range);
      Dest := Format('%1.2x',[OffSet]);
      for SrcPos := 1 to Length(Src) do
      begin
        Application.ProcessMessages;
        SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
        if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
        SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
        Dest := Dest + Format('%1.2x',[SrcAsc]);
        OffSet := SrcAsc;
      end;
    end
    Else if (Action = UpperCase('D')) then
    begin
      OffSet := StrToInt('$'+ copy(Src,1,2));
      SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
    end;
    Result:= Dest;
    Fim:
  Except
    Result:= '1';
  end;
end;


function SerialHardDrive(Letra_volume: String): String;
Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
begin
  Try
    GetVolumeInformation(PChar(Letra_volume + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  Except
    Result := '';
  end;
end;

function NomeDoTerminal: String;
var
   buffer: Array [0 .. 255] of Char;
   size: DWord;
begin
   size := 256;
   if GetComputerName(buffer, size) then
      Result := buffer
   else
      Result := '';
end;

function GetFileList(const Path: string): TStringList;
var
  I: Integer;
  SearchRec: TSearchRec;
begin
  Result := TStringList.Create;
  try
    I := FindFirst(Path, 0, SearchRec);
    while I = 0 do
    begin
      Result.Add(SearchRec.Name);
      I := FindNext(SearchRec);
    end;
  except
    Result.Free;
    raise;
  end;
end;

function VerificaSaldoFiado(out saldo : double ; out limite : double;
                            id_cliente, id_empresa : integer ; valor : double) : boolean;
var str_sql : string;
    qry : Tuniquery;
    novo_saldo : double;
begin
  result := false;
  str_sql:= format(' select coalesce(limite_credito, 0.00) as limite, '+
                   ' coalesce(saldo_atual,0.00) as saldo , b_limite_fiado '+
                   ' from clientes where cli_001=%d and emp_001=%d', [id_cliente, id_empresa]);
  qry := Tuniquery.create(nil);
  qry.Connection :=frmmenu.conexao;
  ExecutaConsultaSQL(qry,str_sql);
  if qry.recordcount>0 then
  begin
    if qry.FieldByName('b_limite_fiado').AsBoolean then
    begin
      saldo := qry.FieldByName('saldo').asfloat;
      limite:= qry.FieldByName('limite').asfloat ;
      novo_saldo := saldo - valor;
      result :=  not (novo_saldo<(limite*-1));
    end
    else
    begin
      saldo := qry.FieldByName('saldo').asfloat;
      limite:= qry.FieldByName('limite').asfloat ;
      result := true;
    end;
  end;
end;


procedure LookupBuscaExit(out CodRetorno : integer; var cxButtonEdit : TcxButtonEdit; var labelDescricao : TLabel;
                          sql_busca_campo, nome_campo : string; avisa_nao_encontrado : boolean = false);
var campo_buscado : string;
begin
  if trim(cxButtonEdit.Text)<>'' then
  begin
    try
      CodRetorno := strtoint(trim(cxButtonEdit.Text));
    except
      CodRetorno := 0;
    end;
    sql_busca_campo := format(sql_busca_campo, [CodRetorno]);

    if not BuscaCampo(campo_buscado, sql_busca_campo, nome_campo, avisa_nao_encontrado ) then
    begin
      cxButtonEdit.Clear;
      labelDescricao.Caption := '';
      CodRetorno := 0;
    end
    else
    begin
      labelDescricao.caption := campo_buscado;
    end;

  end
  else
  begin
    labelDescricao.Caption := '';
    CodRetorno := 0;
  end;
end;

function IsNumberInArray(const ANumber: integer; const AArray: TArray<integer>): boolean;
var
  i: integer;
begin
  result := false;
  for i := Low(AArray) to High(AArray) do
    if ANumber = AArray[i] then
      result:=true;
end;


function GetFileVersion(exeName : string): string;
const
  c_StringInfo = 'StringFileInfo\040904E4\FileVersion';
var
  n, Len : cardinal;
  Buf, Value : PChar;
begin
  Result := '';
  n := GetFileVersionInfoSize(PChar(exeName),n);
  if n > 0 then begin
    Buf := AllocMem(n);
    try
      GetFileVersionInfo(PChar(exeName),0,n,Buf);
      if VerQueryValue(Buf,PChar(c_StringInfo),Pointer(Value),Len) then begin
        Result := Trim(Value);
      end;
    finally
      FreeMem(Buf,n);
    end;
  end;
end;

function EnviaEmailSSL(nome_remetente, email_destinatario, assunto, mensagem, anexo : string;
                        exibe_mensagens : boolean = false): boolean;
var
   anexos : TstringList;
begin
  anexos := TstringList.create;
  anexos.add(anexo);
  result := EnviaEmailSSL(nome_remetente, email_destinatario, assunto, mensagem, anexos, exibe_mensagens);
  anexos.free;
end;

function EnviaEmailSSL(nome_remetente, email_destinatario, assunto, mensagem : string;
                   anexos : TstringList; exibe_mensagens : boolean = false) : boolean;
var
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  I: Integer;
  destinatarios : Tstringlist;
begin
  result:=true;

  destinatarios := QuebraStringEmStringList(email_destinatario, ',');

  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  IdSMTP := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);

  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    if recproj.MailPort = 587 then   // Alterei aqui
      IdSMTP.UseTLS := utUseExplicitTLS
    else
      IdSMTP.UseTLS := utUseImplicitTLS;

    IdSMTP.AuthType := satDefault; //satDefault
    IdSMTP.Port := recproj.MailPort;
    IdSMTP.Host := recproj.MailHost;
    IdSMTP.Username := recproj.MailUsername;
    IdSMTP.Password := recproj.MailPassword;

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := recproj.MailUsername;
    IdMessage.From.Name := nome_remetente ;
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;

    IdMessage.Subject := assunto;
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add(mensagem);
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    //Adiciona os destinatários
    for I := 0 to destinatarios.Count-1 do
    begin
      IdMessage.Recipients.Add.Text := destinatarios[i];
    end;


    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    for I := 0 to anexos.Count-1 do
      if fileexists(anexos[i]) then
        TIdAttachmentFile.Create(IdMessage.MessageParts, anexos[i]);

    {if FileExists(caminho_anexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, caminho_anexo);
    end;}

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        if exibe_mensagens then
          MessageDlg('Erro na conexão ou autenticação: ' +
            E.Message, mtWarning, [mbOK], 0);
        result:=false;
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      if exibe_mensagens then
        MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        if exibe_mensagens then
          MessageDlg('Erro ao enviar a mensagem: ' +
            E.Message, mtWarning, [mbOK], 0);
        result:=false;
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;


procedure LimpaMemoria;
var
 MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except
  end;
  Application.ProcessMessages;
end;


function IntArrayToString (ArrrayDeInteiros : TArray<integer> ;  separador :string = ' ' ) : string;
var str : string;
    I : integer;
begin
  str:='';
  for I := 0 to Length(ArrrayDeInteiros)-1 do
  begin
    str := str + inttostr(ArrrayDeInteiros[i]) ;
    if not (i = Length(ArrrayDeInteiros)-1) then  str:= str + separador;
  end;
  result := trim(str);
end;


function StringListToString (list : TstringList ; Quebralinha : boolean = true ; separador : string = ' ') : string;
var str : string;
    I, fim : integer;
begin
  str:='';
  fim := list.Count-1;
  for I := 0 to fim do
  begin
    str := str + list[i];
    if i<fim then
    begin
      if Quebralinha then
        str := str + #13#10
      else
        str := str + separador;
    end;
  end;
  result := trim(str);
end;

procedure InserirMovimentoContaCorrente(id_empresa, id_contacorrente, id_usuario :integer;
                                        valor : double;
                                        tipo_movimento, observacao : string;
                                        data : TDateTime;
                                        id_cpagar, id_creceber :variant);
var str_sql, sinal_mov: string;
begin
  if id_cpagar  =0   then  id_cpagar   :=null;
  if id_creceber=0 then  id_creceber :=null;
  tipo_movimento := uppercase(tipo_movimento);


  str_sql := ' insert into movimentocontacorrente (id_empresa, id_contacorrente, id_cpagar, '+
             ' id_creceber,  valor, tipo_movimento, id_usuario, observacao, data) ' +
             ' values (:emp,:idcc,:idcpagar,:idcreceber,:valor,:tipomov, :iduser, :obs, :data)';

  ExecutaComandoSQL(str_sql, vararrayof([id_empresa,id_contacorrente,id_cpagar,
                     id_creceber, valor, tipo_movimento,id_usuario,observacao,data]));

  if tipo_movimento='E' then
    sinal_mov := '+'
  else
    sinal_mov := '-';

  str_sql:= format('update contacorrente set saldo = saldo %s :valor '+
                   ' where id_empresa=:emp and id_contacorrente=:idcc', [sinal_mov]);
  ExecutaComandoSQL(str_sql, vararrayof([valor, id_empresa,id_contacorrente]));

end;

procedure InserirMovimentoContaCliente(id_empresa, id_cliente, id_usuario :integer; valor : double;
                        tipo_movimento, observacao : string; data : TDateTime; id_venda : variant;
                        gera_contas_receber : boolean; conta_formapag : integer; lancamento_manual : boolean = false );
var str_sql, sinal_mov: string;
    nota, valor_nota : variant;
    qr_aux : tuniquery;
begin
  if id_venda=0 then id_venda :=null;
  tipo_movimento := uppercase(tipo_movimento);

  //Se vier do contas receber e tiver juros faz a subtração
  if Assigned(frmContasReceberFiadoPagamento) then
    valor:= valor - frmContasReceberFiadoPagamento.valor_juros;

  str_sql := ' insert into movimentocontacliente (id_empresa, id_cliente, id_usuario, '+
             ' valor, tipo_movimento, observacao, data, id_venda, lancamento_manual) ' +
             ' values (:emp,:idcc,:iduser,:valor,:tipomov,:obs, :data, :id_venda, :lancamento_manual )';

  ExecutaComandoSQL(str_sql, vararrayof([id_empresa,id_cliente,id_usuario, valor,
                    tipo_movimento, observacao,data, id_venda, lancamento_manual]));

  if tipo_movimento='E' then     // Se for E de entrada ele soma
    sinal_mov := '+' ;
  if tipo_movimento='S' then    // Se for S ele  Subtrai
    sinal_mov := '-';

  str_sql:= format(' update clientes set saldo_atual = coalesce(saldo_atual,0.00) %s :valor '+
                   ' where emp_001=:emp and cli_001=:idcc', [sinal_mov]);
  ExecutaComandoSQL(str_sql, vararrayof([valor, id_empresa,id_cliente]));

  //Se for saída da conta e gera contas a receber, lança o título
  if gera_contas_receber and (tipo_movimento='S') then
  begin
    if VarIsNull(id_venda) then
    begin
      nota := null;
      valor_nota := null;
    end
    else
    begin
      qr_aux := tuniquery.Create(nil);
      qr_aux.Connection :=frmmenu.conexao;
      str_sql := 'select Ven_029, ven_009 from venda where ven_001='+ Vartostr(id_venda) +' and emp_001='+ Vartostr(id_empresa);
      ExecutaConsultaSQL(qr_aux, str_sql);
      nota := qr_aux.Fields[0].AsInteger;
      valor_nota := qr_aux.Fields[1].AsFloat;
    end;

    str_sql :=' insert into creceber (id_empresa, data, id_cliente, id_conta, id_usuario, id_venda, '+
              ' nota, descricao, valor_nota, valor, valor_pago, data_vencimento, id_situacao) '+
              ' values (:emp, localtimestamp, :id_cliente,:id_cont, :id_user, :id_venda , :nota, :desc, '+
              ' :valor_nota, :valor,0, localtimestamp, 4  )';
     ExecutaComandoSQL(str_sql, vararrayof([id_empresa,id_cliente,conta_formapag, id_usuario, id_venda,
                                            nota, format('Venda %s', [ Vartostr(nota)]), valor_nota, valor ]));
  end
  else
  if gera_contas_receber and (tipo_movimento='E') then   //estorno
  begin
    str_sql := format(' update creceber set id_situacao=2 , data_cancelamento=localtimestamp, ' +
               ' id_usuario_cancelamento=%d  where id_venda=%s and id_empresa=%d and id_situacao<>7',
               [id_usuario,   Vartostr(id_venda), id_empresa ]);
    ExecutaComandoSQL(str_sql) ;
  end;

  if Assigned(frmContasReceberFiadoPagamento) then
    frmContasReceberFiadoPagamento.valor_juros:= 0;

end;

procedure InserirMovimentoProduto(id_produto : integer ;
                                  quantidade : double = 1 ;
                                  tipo_mov : string = 'E';
                                  observacao : string = '';
                                  id_usuario :integer = 0 ;
                                  id_venda : integer = 0;
                                  id_vendaitem : integer = 0;
                                  tipo_item_mov : string = 'M';
                                  movimenta_composicao : boolean = false;
                                  id_fornecedor : integer = 0;
                                  valor_custo : double =0;
                                  valor_venda : double =0;
                                  data_movimento : Tdatetime = 1;
                                  atualiza_preco_venda:boolean=false;
                                  id_setor_movimento : integer = 0;
                                  id_setor_destino : integer = 0);

var str_sql , sinal_mov, str_aux_preco_venda,str_aux_preco_venda2: string;
    atualiza_custo_pela_composicao,
    considera_rendimento_composicao : boolean;
    qr_aux : TUniQuery;
    item_composicao : integer;
    qtd_composicao, rendimento_composicao, valor_custo_corrigido : double;
    fornecedor, setor_destino, setor_movimento, venda, vendaitem : variant;
begin
  tipo_mov := UpperCase(tipo_mov);
  qr_aux := CriaUniQuery(nil, frmMenu.conexao);
  str_sql := 'select b_atualiza_custo_material_composicao, b_considera_rendimento_entrada_composicao from empresas where emp_001='+inttostr(recproj.iEmp);
  ExecutaConsultaSQL(qr_aux, str_sql);
  atualiza_custo_pela_composicao := qr_aux.FieldByName('b_atualiza_custo_material_composicao').AsBoolean;
  considera_rendimento_composicao :=qr_aux.FieldByName('b_considera_rendimento_entrada_composicao').AsBoolean;

  if data_movimento = 1 then data_movimento := Date + time;

  if id_usuario=0 then  id_usuario:= RecProj.iUsuario;

  //define as variaveis com o valor nulo para os campos opcionais não informados
  if id_fornecedor <= 0 then
    fornecedor:=null
  else
    fornecedor := id_fornecedor;

  if id_setor_movimento<=0 then
    setor_movimento:=null
  else
    setor_movimento := id_setor_movimento;

  if id_setor_destino<=0 then
    setor_destino := null
  else
    setor_destino:= id_setor_destino;

  if id_venda<=0 then
    venda := null
  else
    venda := id_venda;

  if id_vendaitem<=0 then
    vendaitem := null
  else
    vendaitem := id_vendaitem;


  if tipo_mov = 'E' then
    sinal_mov :='+'
  else
    sinal_mov :='-';

  //Monta a string de movimento
  if uppercase(tipo_item_mov)='M' then  //materiais
  begin
    str_sql := ' insert into movimentoestoque '+
               ' (id_empresa, id_material , quantidade, id_usuario, observacao,'+
               ' tipo_movimento, data, id_fornecedor, valor_venda, valor_custo,  '+
               ' id_venda , id_vendaitem, id_setor, id_setor_destino) '+
               ' values (:id_empresa, :id_produto, :quantidade, :id_usuario, :observacao, '+
               ' :tipo_mov, :data, :id_fornecedor, :valor_venda, :valor_custo, '+
               ' :id_venda, :id_vendaitem, :id_setor, :id_setor_destino); ';
  end
  else    //composicao
  begin
    str_sql := ' insert into movimento_estoque_composicao '+
               ' (id_empresa, id_composicao , quantidade, id_usuario, observacao,'+
               ' tipo_movimento, data, id_fornecedor, valor_venda, valor_custo,  '+
               ' id_venda , id_vendaitem, id_setor, id_setor_destino) '+
               ' values (:id_empresa, :id_produto, :quantidade, :id_usuario, :observacao, '+
               ' :tipo_mov, :data, :id_fornecedor, :valor_venda, :valor_custo, '+
               ' :id_venda, :id_vendaitem, :id_setor, :id_setor_destino); ';
  end;

  PreparaQuerySQL(qr_aux, str_sql);
  qr_aux.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qr_aux.ParamByName('id_produto').AsInteger:=id_produto;
  qr_aux.ParamByName('quantidade').AsFloat := quantidade;
  qr_aux.ParamByName('id_usuario').AsInteger := id_usuario;
  qr_aux.ParamByName('observacao').AsString := observacao;
  qr_aux.ParamByName('tipo_mov').AsString := tipo_mov;
  qr_aux.ParamByName('data').AsDateTime := data_movimento;
  qr_aux.ParamByName('valor_venda').AsFloat := valor_venda;
  qr_aux.ParamByName('valor_custo').AsFloat := valor_custo;
  qr_aux.ParamByName('id_venda').value:=venda;
  qr_aux.ParamByName('id_vendaitem').value:=vendaitem;
  qr_aux.ParamByName('id_fornecedor').value := fornecedor;

  qr_aux.ParamByName('id_setor').value:=setor_movimento;
  qr_aux.ParamByName('id_setor_destino').value := setor_destino;

  qr_aux.Execute;

  //atualiza o estoque do item
  if uppercase(tipo_item_mov)='M' then       //Tabela materiais
  begin
    //monta a string sql para atualizar o material
    str_sql:=' update materiais set ';

    if (atualiza_preco_venda=true) and (valor_venda>0) then
    begin
      str_sql:= str_sql + ' mat_008 = :valor_venda, ';
    end;

    if valor_custo >0 then
    begin
      str_sql:= str_sql + ' mat_012=:valor_custo, ';
    end;
    
    str_sql:= str_sql + ' emp_001=emp_001 where mat_001=:id_produto and emp_001=:id_empresa'; // adicionado emp_001=emp_001 por conta da virgula nos updates anteriores que podem vir ou não

    PreparaQuerySQL(qr_aux, str_sql);
    qr_aux.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
    qr_aux.ParamByName('id_produto').AsInteger:=id_produto;

    if (atualiza_preco_venda=true) and (valor_venda>0) then
      qr_aux.ParamByName('valor_venda').asfloat:=valor_venda;

    if valor_custo >0 then
      qr_aux.ParamByName('valor_custo').asfloat:=valor_custo;

    qr_aux.Execute;


  //  Showmessage(' Código produto : ' + IntToStr(id_produto));
  //  Showmessage(' Código Setor : ' + IntToStr(id_setor_movimento));
  //  Showmessage('Quantidade : ' + FloatToStr(quantidade));
  //  Showmessage(' Empresa : ' + IntToStr(recproj.iEmp));
  //  Showmessage(' Sinal : ' + sinal_mov);

      //atualiza o estoque no setor
    str_sql := ' update setor_estoque_material set quantidade = coalesce(quantidade, 0.0) ' + sinal_mov +
               ' :quantidade where id_material = :id_material and id_setor = :id_setor and id_empresa = :id_empresa ';

    //tenta atualizar, se não houver resgistro de setor de estoque, insere
    if ExecutaComandoSQL(str_sql, vararrayof([quantidade, id_produto, id_setor_movimento, recproj.iEmp]))<1 then
    begin
      str_sql := ' insert into setor_estoque_material (id_material, id_setor, id_empresa, quantidade) '+
                 ' values (:id_material, :id_setor, :id_empresa, (0.0 ' + sinal_mov + ' :quantidade)) ';
      ExecutaComandoSQL(str_sql, vararrayof([id_produto, id_setor_movimento, recproj.iEmp, quantidade]));
    end;
    
  end
  else  // Tabela Composição
  begin
    if considera_rendimento_composicao  and (tipo_mov='E') then //corrige o valor de entrada para considerar o rendimento
    begin
    { Cáclculo exemplo
      rendimento do material: 0,75
      valor custo unitário na entrada: 20
      quantidade entrada: 10
      valor total de entrada: 200

      quantidade de entrada considerada com o rendimento: 10 * 0,75 = 7,5
      valor de custo unitario corrigido: 200/7,5 = 26,67 }

      str_sql := format('select rendimento from composicao where id_composicao=%d and id_empresa=%d',[id_produto, recproj.iEmp]); ;
      BuscaCampo(rendimento_composicao, str_sql, '', false);

      if rendimento_composicao <= 0 then
        rendimento_composicao := 1
      else
        rendimento_composicao := rendimento_composicao * 0.01;

      valor_custo_corrigido := roundto((valor_custo)/(rendimento_composicao),-2);
      valor_custo := valor_custo_corrigido;
    end;

    if valor_custo >0  then
    begin
      str_sql:=' update composicao set valor_custo=:valor_custo where id_composicao=:id_produto and id_empresa=:id_empresa';
      ExecutaComandoSQL(str_sql, vararrayof([valor_custo, id_produto, RecProj.iEmp]));
    end;

    //atualiza o estoque no setor
    str_sql := ' update setor_estoque_composicao set quantidade = coalesce(quantidade, 0.0) ' + sinal_mov +
               ' :quantidade where id_composicao = :id_composicao and id_setor = :id_setor and id_empresa = :id_empresa ';

    //tenta atualizar, se não houver resgistro de setor de estoque, insere
    if ExecutaComandoSQL(str_sql, vararrayof([quantidade, id_produto, id_setor_movimento, recproj.iEmp]))<1 then
    begin
      str_sql := ' insert into setor_estoque_composicao (id_composicao, id_setor, id_empresa, quantidade) '+
                 ' values (:id_composicao, :id_setor, :id_empresa, (0.0 ' + sinal_mov + ' :quantidade)) ';
      ExecutaComandoSQL(str_sql, vararrayof([id_produto, id_setor_movimento, recproj.iEmp, quantidade]));
    end;


  end;


  if atualiza_custo_pela_composicao and (uppercase(tipo_item_mov)='C') and (tipo_mov='E') then
    AtualizaPrecoCustoMaterialPelaComposicao(id_produto);

  //atualiza a margem de lucro com base nos novos valores
  if (tipo_mov = 'E') and (uppercase(tipo_item_mov)='M') and (id_venda<=0) then AtualizaMargemMaterial(id_produto);

  //Movimenta os itens de composicao (ingredientes)
  if movimenta_composicao then
  begin
    str_sql :=format(' select mc.quantidade, mc.id_composicao, c.id_setor from  materiais_composicao mc ' +
              ' join composicao c on c.id_composicao=mc.id_composicao and c.id_empresa = mc.id_empresa ' +
              ' where mc.id_material = %d and mc.id_empresa = %d', [id_produto, RecProj.iEmp]);
    ExecutaConsultaSQL(qr_aux, str_sql);
    while not qr_aux.Eof do
    begin
      qtd_composicao := quantidade * qr_aux.Fieldbyname('quantidade').AsFloat ; //Quantidade do material * a quantidade do item de composicao
      item_composicao := qr_aux.Fieldbyname('id_composicao').AsInteger ;
      id_setor_movimento := qr_aux.Fieldbyname('id_setor').AsInteger;

      InserirMovimentoProduto(item_composicao,qtd_composicao,tipo_mov,observacao,
                              id_usuario, id_venda, id_vendaitem, 'C', false, id_fornecedor,
                              0, 0, data_movimento, false, id_setor_movimento );
      qr_aux.Next;
    end;
  end;
  FreeAndNil(qr_aux);
end;



function CancelaVenda(id_venda, id_usuario : integer;
                      sJust : string ;
                      estorna_caixa : boolean = true;
                      estorna_estoque : boolean = true;
                      estorna_fiado :boolean = true) : boolean;
var str_sql : string;
    qrAux1 : TUniQuery;
begin
  qrAux1 := TUniQuery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;

  sJust := trim(sJust);

  //abre a janela de justificativa de cancelamento
  if Empty(sJust) then
    sJust := Chama_Justificativa('Justificativa da Inativação da Venda', 'Venda',  IntToStr(id_venda));

  if sJust = '' then
  begin
    Application.MessageBox('É necessário uma justificativa!', 'Atenção', 0 + 64);
    result := false;
  end
  else
  begin
    str_sql :=' UPDATE VENDA ' +
              '    SET SIT_001 = 2 '+
              '      , dat_001_2 = :DATA'+
              '      , dat_001_3 = :DATA'+
              '      , usu_001_2 = :USU'+
              '      , usu_001_3 = :USU'+
              '      , ven_027   = concat(ven_027, '' '', ' + QuotedStr(sJust) + ') ' +

              ' WHERE EMP_001 = :EMP_001 '+
              '   AND VEN_001 = :VEN_001 ';
    PreparaQuerySQL(qrAux1, str_sql);
    qrAux1.ParamByName('EMP_001').AsInteger := recProj.iEmp;
    qrAux1.ParamByName('VEN_001').AsInteger := id_venda;
    qrAux1.ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
    qrAux1.ParamByName('USU').AsInteger     := id_usuario;
    qrAux1.ExecSQL;
    if VerificaContasReceber(id_venda) then
    begin
      str_sql := format(' update creceber set id_situacao=2, id_usuario_cancelamento=%d, '+
                        ' data_cancelamento=localtimestamp where id_empresa=%d and id_venda=%d',
                        [id_usuario, recProj.iEmp, id_venda ]);
      ExecutaComandoSQL(str_sql);

      str_sql := format(' update creceber_parcela set id_situacao=2 where id_situacao=4 and  id_creceber in '+
                        ' (select id_creceber from creceber where id_venda=%d and id_empresa=%d)', [id_venda,recProj.iEmp ]);
      ExecutaComandoSQL(str_sql);
    end;

    str_sql := format('update encerravenda set sit_001=2 where ven_001=%d and emp_001=%d', [id_venda, recProj.iEmp]);
    ExecutaComandoSQL(str_sql);

    if estorna_caixa then
    begin
      str_sql:= format(' select id_caixa, item from caixaitem where id_venda=%d and id_empresa=%d', [id_venda, recProj.iEmp]);
      ExecutaConsultaSQL(qrAux1,str_sql);

      while not qrAux1.eof do
      begin
        EstornoCaixaItem(qrAux1.FieldByName('id_caixa').AsInteger,
                         qrAux1.FieldByName('item').AsInteger, recProj.iEmp);
        qrAux1.next;
      end;
    end;

    if estorna_estoque then
    begin
      str_sql:= format(' select id_material, quantidade, cast(observacao as varchar(1000)) as observacao , id_vendaitem, id_setor '+
                       ' from movimentoestoque where id_venda=%d and id_empresa=%d', [id_venda, recProj.iEmp]);
      ExecutaConsultaSQL(qrAux1,str_sql);
      while not qrAux1.eof do
      begin
        InserirMovimentoProduto(qrAux1.FieldByName('id_material').AsInteger,
                                qrAux1.FieldByName('quantidade').AsFloat,
                                'E',
                                trim('ESTORNO DE VENDA ' + qrAux1.FieldByName('observacao').asstring),
                                id_usuario,
                                id_venda,
                                qrAux1.FieldByName('id_vendaitem').AsInteger,
                                'M', true,0, 0, 0, date+time, false,qrAux1.FieldByName('id_setor').AsInteger);

        qrAux1.next;
      end;
    end;

    if estorna_fiado then
    begin
      str_sql:=format(' select id_cliente, valor from movimentocontacliente where id_venda = %d '+
                      ' and tipo_movimento = ''S'' and id_empresa=%d ', [id_venda, recProj.iEmp]);
      ExecutaConsultaSQL(qrAux1,str_sql);
      while not qrAux1.eof do
      begin

        InserirMovimentoContaCliente(recproj.iemp, qrAux1.FieldByName('id_cliente').AsInteger,
                                     recproj.iUsuario,
                                     qrAux1.FieldByName('valor').asfloat, 'E',
                                     'Estono de venda', Date + Time, id_venda, true, 0);
        qrAux1.next;
      end;

    end;

    //Verifica se é controle de cartão e atualiza a
    //conta coorrente se estiver compensado
    Atualiza_Saldo_Conta(id_venda);

    Application.MessageBox('Venda cancelada com sucesso!', 'Atenção', MB_ICONINFORMATION + MB_OK);
    result := true;
  end;
  FreeAndNil(qrAux1);
end;


function EstornoCaixaItem(id_caixa, caixaitem, id_empresa : integer): boolean;
var qrAux1 : TUniQuery;
    str_sql, tipo_movimento, class_movimento : string;
begin
  qrAux1 := TUniQuery.Create(nil);
  qrAux1.Connection := frmMenu.conexao;
  str_sql:= format(' select ci.id_formapgto, ci.valor,  ci.id_cpagar, ci.id_creceber, ci.item_encerravenda, ci.id_encerravenda,  '+
                   ' ci.antecipado, ci.tipo_movimento, ci.id_venda, ci.classificacao from caixaitem ci '+
                   ' join caixa c on c.id_caixa=ci.id_caixa and c.id_empresa=ci.id_empresa '+
                   ' where c.id_situacao=4  and ci.id_caixa=%d and ci.item=%d and ci.id_empresa=%d',
                   [id_caixa, caixaitem, id_empresa]);

  if ExecutaConsultaSQL(qrAux1, str_sql) then
  begin
    //Se o movimento aterior era de saída...
    if qrAux1.FieldByName('tipo_movimento').asstring='S' then
    begin
      tipo_movimento := 'E'; // O movimento conttrário é de entrada
      class_movimento:= 'C' // A classificação é de estorno de saida
    end
    else
    begin
      tipo_movimento := 'S'; // O movimento contrário é de saída
      class_movimento:= 'D'; // A classificação é de estorno de entrada
      //caso o movimento original seja de venda, a classificação é de estorno de venda
      if qrAux1.FieldByName('classificacao').asstring='V' then class_movimento:= 'E';
    end;

    InserirCaixaItem(id_caixa,
                   qrAux1.FieldByName('id_formapgto').AsInteger,
                   qrAux1.FieldByName('valor').AsFloat,
                   tipo_movimento,
                   format('Estorno do movimento %d', [caixaitem]),
                   qrAux1.FieldByName('id_venda').AsInteger,
                   qrAux1.FieldByName('id_encerravenda').AsInteger,
                   qrAux1.FieldByName('item_encerravenda').AsInteger,
                   qrAux1.FieldByName('antecipado').asboolean,
                   class_movimento,
                   qrAux1.FieldByName('id_cpagar').AsInteger,
                   qrAux1.FieldByName('id_creceber').AsInteger);
    result := true;
  end
  else
    result := false;
end;

procedure   InserirCaixaItem( id_caixa, id_formapgto : integer;
                              valor : double;
                              tipo_mov : string;
                              obs : string ='';
                              id_venda : integer = 0;
                              id_encerravenda : integer = 0;
                              item_encerravenda : integer = 0;
                              antecipado : boolean = false;
                              classificacao_mov : string = 'V';
                              id_cpagar : integer = 0;
                              id_creceber : integer = 0);
var str_sql : string;
    venda, encerravenda, item_encerravenda_2 , cpagar, creceber: variant;
begin
  tipo_mov := uppercase(tipo_mov);
  if id_venda = 0  then
    venda := null
  else
    venda:=id_venda;

  if id_encerravenda = 0  then
    encerravenda := null
  else
    encerravenda:=id_encerravenda;

  if item_encerravenda = 0  then
    item_encerravenda_2 := null
  else
    item_encerravenda_2:=item_encerravenda;


  if id_cpagar = 0  then
    cpagar := null
  else
    cpagar:=id_cpagar;

  if id_creceber = 0  then
    creceber := null
  else
    creceber:=id_creceber;


  str_sql:= ' insert into caixaitem (id_caixa, id_empresa, item, tipo_movimento, '+
              ' valor, data, hora, observacao, id_formapgto, '+
              ' id_venda, item_encerravenda, id_encerravenda, classificacao, antecipado, id_cpagar, id_creceber ) ' +
              ' values (:id_caixa, :emp, ' +
              ' (select coalesce(max(item),0)+1 as item from caixaitem where id_empresa=:emp and id_caixa=:id_caixa), '+
              ' :tipo_mov , :valor, localtimestamp, localtime, :obs, :id_formapgto,'+
              ' :id_venda, :item, :id_encerravenda , :classificacao_mov, :antecipado, :id_cpagar, :id_creceber ) ';
  ExecutaComandoSQL(str_sql, CriaVariantArray([id_caixa, RecProj.iEmp,tipo_mov,valor,
                    obs, id_formapgto, venda, item_encerravenda_2, encerravenda,
                    classificacao_mov , antecipado, cpagar, creceber ]));
end;

function LerStringConfig(Campo, CaminhoXML : string; default : string =''):string;
var cd : TClientDataSet;
begin
  Campo := uppercase(Campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.open;

    if (cd.Locate('NOME', Campo, [])) then
      result:=cd.FieldByName('TEXTO').AsString
    else
      result:=default;
    cd.Free;
  end
  else
    result:=default;
end;

{nome data numero logico}
function LerIntegerConfig(Campo, CaminhoXML : string; default : integer =0):integer;
var cd : TClientDataSet;
begin
   Campo := uppercase(Campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.open;

    if (cd.Locate('NOME', Campo, [])) then
      result:=cd.FieldByName('NUMERO').AsInteger
    else
      result:=default;
    cd.Free;
  end
  else
    result:=default;
end;

function LerFloatConfig(Campo, CaminhoXML : string ; default : double =0):double;
var cd : TClientDataSet;
begin
   Campo := uppercase(Campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.open;

    if (cd.Locate('NOME', Campo, [])) then
      result:=cd.FieldByName('NUMERO').AsFloat
    else
      result:=default;
    cd.Free;
  end
  else
    result:=default;
end;

function LerBooleanConfig(Campo, CaminhoXML : string; default : boolean = false):boolean;
var cd : TClientDataSet;
begin
  Campo := uppercase(Campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.open;

    if (cd.Locate('NOME', Campo, [])) then
      result:=cd.FieldByName('LOGICO').AsBoolean
    else
      result:=default;
    cd.Free;
  end
  else
    result:=default;
end;


procedure GravaStringConfig(Campo, Valor,  CaminhoXML : string);
var cd : TClientDataSet;
begin
  Campo := uppercase(Campo);
  cd := TClientDataSet.Create(nil);
  cd.FileName := CaminhoXML;
  if FileExists(CaminhoXML) then
  begin
    cd.open;
    cd.LogChanges := false;
    cd.MergeChangeLog;
  end
  else
    cd.CreateDataSet;
  // Quando vazio, exclui;
  if (trim(Valor)='') then
  begin
    if (cd.Locate('NOME', Campo, [])) then
    begin
      cd.Delete;
      cd.Close;
      Exit;
    end
    else
    begin
      cd.Close;
      Exit;
    end;
  end
  else
  begin
     if (cd.Locate('NOME', Campo, [])) then
     begin
        cd.Edit;
     end
     else
     begin
        cd.Append;
        cd.FieldByName('NOME').AsString := Campo;
     end;
     cd.FieldByName('TEXTO').AsString := Valor;
     cd.Post;
     cd.Close;
  end;
  cd.Free;
end;


procedure GravaIntegerConfig(Campo : string; Valor : integer ;  CaminhoXML : string);
var cd : TClientDataSet;
begin
  Campo := uppercase(Campo);
  cd := TClientDataSet.Create(nil);
  cd.FileName := CaminhoXML;
  if FileExists(CaminhoXML) then
  begin
    cd.open;
    cd.LogChanges := false;
    cd.MergeChangeLog;
  end
  else
    cd.CreateDataSet;

  if (cd.Locate('NOME', Campo, [])) then
  begin
    cd.Edit;
  end
  else
  begin
    cd.Append;
    cd.FieldByName('NOME').AsString := Campo;
  end;
  cd.FieldByName('NUMERO').AsInteger := Valor;
  cd.Post;
  cd.Close;
  cd.Free;
end;


procedure GravaBooelanConfig(Campo : string; Valor : boolean ;  CaminhoXML : string);
var cd : TClientDataSet;
begin
  Campo := uppercase(Campo);
  cd := TClientDataSet.Create(nil);
  cd.FileName := CaminhoXML;
  if FileExists(CaminhoXML) then
  begin
    cd.open;
    cd.LogChanges := false;
    cd.MergeChangeLog;
  end
  else
    cd.CreateDataSet;

  if (cd.Locate('NOME', Campo, [])) then
  begin
    cd.Edit;
  end
  else
  begin
    cd.Append;
    cd.FieldByName('NOME').AsString := Campo;
  end;
  cd.FieldByName('LOGICO').AsBoolean := Valor;
  cd.Post;
  cd.Close;
  cd.Free;
end;


function LerDataConfig(Campo, CaminhoXML : string):TDateTime;
var cd : TClientDataSet;
begin
  Campo := uppercase(Campo);
  if FileExists(CaminhoXML) then
  begin
    cd := TClientDataSet.Create(nil);
    cd.FileName := CaminhoXML;
    cd.open;

    if (cd.Locate('NOME', Campo, [])) then
      result:=cd.FieldByName('DATA').AsDateTime
    else
      result:=Now;
    cd.Free;
  end
  else
    result:=Now;
end;

Function GetIP(HostName: String): String;
// --> Declare a Winsock na clausula uses da unit
var
   WSAData: TWSAData;
   HostEnt: PHostEnt;
   HostLocal: string;
begin
   WSAStartup(2, WSAData);
   //
   if HostName = 'localhost' then
   begin
      SetLength(HostLocal, 255);
      Gethostname(PAnsiChar(HostLocal), 255);
      SetLength(HostLocal, StrLen(PChar(HostLocal)));
      HostEnt := gethostbyname(PAnsiChar(HostLocal));
   end else
      HostEnt := gethostbyname(PAnsiChar(PAnsiString(AnsiString(HostName))));
   //
   with HostEnt^ do
   begin
      Result := Format('%d.%d.%d.%d', [Byte(h_addr^[0]), Byte(h_addr^[1]), Byte(h_addr^[2]), Byte(h_addr^[3])]);
   end;
   WSACleanup;
end;

function ApenasNumero(Texto: String): String;
var
   I: Integer;
begin
   Result := '';
   if Texto = '' then
      Exit;
   //
   for I := 0 to Length(Texto) do
      if Texto[I] in (['0' .. '9']) then
         Result := Result + Texto[I];
end;

function Verifica_Form(Classe: TFormClass; Name: String): TForm;
var
   I: Integer;
begin
   Result := nil;
   for I := 0 to Screen.FormCount - 1 do
   begin
      if Screen.Forms[I] is Classe then
      begin
         if (Screen.Forms[I].Name = Name) then
         begin
            Result := Screen.Forms[I];
            Break;
         end;
      end;
   end;
end;

function Formatar(Texto: string; TamanhoDesejado: Integer; AcrescentarADireita: Boolean = true;
  CaracterAcrescentar: Char = ' '): string;
var
   QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial, I: Integer;
begin
   //
   Texto := Trim(AnsiUpperCase(Texto));
   TamanhoTexto := Length(Texto);
   //
   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;
   //
   if AcrescentarADireita then
      Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) + Copy(Texto, PosicaoInicial, TamanhoDesejado);
   //
   Result := AnsiUpperCase(Texto);
end;

procedure Chama_Form(cForm: TFormClass; var fForm; sName: String);
begin
   try
      if Verifica_Form(cForm, sName) = Nil then
         Application.CreateForm(cForm, fForm)
      else
         TForm(fForm).BringToFront;
   except
      on E: Exception do
      begin
         Application.MessageBox(PWideChar('ERROR: ' + E.ClassName + ' - ' + E.Message), 'Atenção', 0 + 64);
         Abort;
      end;
   end;
end;

function Confirma(Msg, Titulo: String; NaoDefault: Boolean = False): Boolean;
begin
   Result := False;
   if NaoDefault = False then
      Result := (Application.MessageBox(PChar(Msg), PChar(Titulo), MB_YesNo + MB_ICONQUESTION) = idYes);
   if NaoDefault = true then
      Result := (Application.MessageBox(PChar(Msg), PChar(Titulo), MB_YesNo + MB_ICONQUESTION + MB_DEFBUTTON2) = idYes);
end;

function CompletarCom(Texto: Char; Vezes: Integer): String;
var
   I: Integer;
begin
   Result := '';
   for I := 0 to Vezes do
      Result := Result + Texto;
end;

procedure TestarFocoField(Campo: TField);
begin
   try
      Campo.FocusControl;
   except
      //
   end;
end;

function StreamToVarArray(Stream: TStream): OleVariant;
var
   p: Pointer;
begin
   Result := VarArrayCreate([0, Stream.Size - 1], varByte);
   p := VarArrayLock(Result);
   try
      Stream.Position := 0; // start from beginning of stream
      Stream.Read(p^, Stream.Size);
   finally
      VarArrayUnlock(Result);
   end;
end;

function IsNumeric(Texto: String): Boolean;
begin
   Result := true;
   try
      StrToFloat(Texto);
   except
      Result := False;
   end;
end;

procedure Parcelar_Valor(Valor: Real; Parcelas, Casas_Decimais: Integer; var Valor_Parcelado: Real;
  var Parcela_Unica: Real);
var
   PARC1: Real;
   PARC2: Real;
   CASAS: Real;
begin
   CASAS := (Power(10, Casas_Decimais));
   PARC1 := (Valor / Parcelas) * CASAS;
   PARC1 := Round(PARC1);
   PARC1 := PARC1 / CASAS;
   //
   PARC2 := (PARC1 * (Parcelas - 1));
   PARC2 := Valor - PARC2;
   //
   Valor_Parcelado := PARC1;
   Parcela_Unica := PARC2;
end;

function ValidaIE(InscEst, UF: String): Integer;
var
   IOk, IErro, IPar: Integer;
   LibHandle: THandle;
   ConsisteInscricaoEstadual: TConsisteInscricaoEstadual;
begin
   try
      LibHandle := LoadLibrary(PChar(Trim('DllInscE32.Dll')));
      if LibHandle <= HINSTANCE_ERROR then
         raise Exception.Create('Dll para validação da Inscrição Estadual não foi carregada');
      @ConsisteInscricaoEstadual := GetProcAddress(LibHandle, 'ConsisteInscricaoEstadual');
      if @ConsisteInscricaoEstadual = nil then
         raise Exception.Create('Entrypoint Download não encontrado na Dll');
      Result := ConsisteInscricaoEstadual(InscEst, UF);
   finally
      FreeLibrary(LibHandle);
   end;
end;

function Valida_CNPJ(DOC: String): Boolean;
var
   D: Array [0 .. 15] of Integer;
   I: Integer;
   dv1, dv2, soma: Integer;
   Resto: Integer;
begin
   DOC := ApenasNumero(DOC);
   if Length(DOC) <> 14 then
   begin
      Result := False;
      Exit;
   end;
   // Movendo is digitos para a matriz
   for I := 1 to 12 do
   begin
      D[I] := StrToIntDef(DOC[I], 0);
   end;
   // Testando  o primeiro digito.
   soma := (5 * D[1]) + (4 * D[2]) + (3 * D[3]) + (2 * D[4]) + (9 * D[5]) + (8 * D[6]) + (7 * D[7]) + (6 * D[8]) +
     (5 * D[9]) + (4 * D[10]) + (3 * D[11]) + (2 * D[12]);
   //
   Resto := soma mod 11;
   if (Resto = 0) or (Resto = 1) then
      dv1 := 0
   else
      dv1 := 11 - Resto;
   //
   // Testando  o segundo digito.
   soma := (6 * D[1]) + (5 * D[2]) + (4 * D[3]) + (3 * D[4]) + (2 * D[5]) + (9 * D[6]) + (8 * D[7]) + (7 * D[8]) +
     (6 * D[9]) + (5 * D[10]) + (4 * D[11]) + (3 * D[12]) + (2 * dv1);
   //
   Resto := soma mod 11;
   if (Resto = 0) or (Resto = 1) then
      dv2 := 0
   else
      dv2 := 11 - Resto;
   //
   // Comparando os Dígitos encontrados e os digitados.
   if (dv1 <> StrToIntDef(Copy(DOC, 13, 1), 0)) or (dv2 <> StrToIntDef(Copy(DOC, 14, 1), 0)) then
   begin
      Result := False;
      Exit;
   end;
   //
   Result := true;
   Exit;
end;

function Valida_CPF(DOC: String): Boolean;
var
   Tam: Integer;
   ncpf, nDoc: String;
   Peso: String;
   dv1, dv2, soma: Integer;
   Resto: Integer;
   I: Integer;
begin
   DOC := ApenasNumero(DOC);
   if Length(DOC) <> 11 then
   begin
      Result := False;
      Exit;
   end;
   //
   nDoc := DOC;
   ncpf := Copy(nDoc, 1, 9);
   Tam := Length(ncpf);
   Peso := '098765432';
   soma := 0;
   //
   for I := 1 to Tam do
   begin
      if (I = 1) and (Copy(Peso, I, 1) = '0') then
         soma := soma + (StrToIntDef(Copy(ncpf, I, 1), 0) * 10)
      else
         soma := soma + (StrToIntDef(Copy(ncpf, I, 1), 0) * StrToIntDef(Copy(Peso, I, 1), 0));
   end;
   //
   Resto := soma mod 11;
   dv1 := 11 - Resto;
   //
   if (Resto = 0) or (Resto = 1) then
      dv1 := 0;
   //
   ncpf := ncpf + IntToStr(dv1);
   Tam := Length(ncpf);
   Peso := '1098765432';
   soma := 0;
   //
   for I := 1 to Tam do
   begin
      if (I = 1) and (Copy(Peso, I, 1) = '1') then
         soma := soma + (StrToIntDef(Copy(ncpf, I, 1), 0) * 11)
      else if (I = 2) and (Copy(Peso, I, 1) = '0') then
         soma := soma + (StrToIntDef(Copy(ncpf, I, 1), 0) * 10)
      else
         soma := soma + (StrToIntDef(Copy(ncpf, I, 1), 0) * StrToIntDef(Copy(Peso, I, 1), 0));
   end;
   //
   Resto := soma mod 11;
   dv2 := 11 - Resto;
   //
   if (Resto = 0) or (Resto = 1) then
      dv2 := 0;
   //
   ncpf := ncpf + IntToStr(dv2);
   //
   if ncpf = '000000000-00' then
   begin
      dv1 := 9;
      dv2 := 9;
   end;
   //
   if Copy(DOC, 10, 2) <> IntToStr(dv1) + IntToStr(dv2) then
   begin
      Result := False;
      Exit;
   end;
   //
   Result := true;
end;

Function JPG2Bmp(Arquivo: TBlobField): TBitmap;
var
   Img: TJpegImage;
begin
   Img := TJpegImage.Create;
   Result := TBitmap.Create;
   //
   try
      Img.Assign(Arquivo);
      //
      Result.Height := Img.Height;
      Result.Width := Img.Width;
      //
      Result.Assign(Img);
   finally
      Img.Free;
   end;
end;

procedure Ajusta_Valor_Mask(fCampo: TField);
var
   Valor, Mascara, Resultado: string;
   I: Integer;
begin
   if fCampo.DataSet.State in [dsEdit, dsInsert] then
   begin
      Mascara := fCampo.EditMask;
      //
      Valor := ApenasNumero(fCampo.AsString);
      fCampo.Clear;
      //
      if Mascara <> '' then
      begin
         for I := 1 to Length(Mascara) do
            if (Valor <> '') then
               if (Mascara[I] = '9') then
               begin
                  Resultado := Resultado + Copy(Valor, 1, 1);
                  Delete(Valor, 1, 1);
               end
               else
                  Resultado := Resultado + Mascara[I];
         //
      end
      else
         Resultado := Valor;
      //
      fCampo.AsString := Resultado;
   end;
end;

function VarToBoolDef(Valor: Variant; Def: Boolean = False): Boolean;
begin
   try
      Result := Boolean(Valor);
   except
      Result := Def;
   end;
end;

function BoolToInt(Value: Boolean): Integer;
begin
   if Value then
      Result := 1
   else
      Result := 0;
end;

Function VerificaClienteItemVenda(iVenda, iCliente: Integer): Boolean;
var
   qrAux: TUniQuery;
begin
   //Verifica se o cliente tem item na venda
   Result := False;
   //
   qrAux := TUniQuery.Create(nil);
   try
      with qrAux, SQL do
      begin
         Connection := frmMenu.conexao;
         Close;
         Clear;
         Add('SELECT COUNT(VEN_001) AS QTDE FROM VENDAITEM');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   VEN_001 = :VEN');
         Add('AND   PES_001 = :PES');
         ParamByName('EMP').AsInteger := RecProj.iEmp;
         ParamByName('VEN').AsInteger := iVenda;
         ParamByName('PES').AsInteger := iCliente;
         Open;
      end;
      //
      if (qrAux.FieldByName('QTDE').AsInteger > 0) then
         Result := True;
   finally
      FreeAndNil(qrAux);
   end;
end;

function TotalItensVenda(iVenda: Integer): Double;
var
   qrAux: TUniQuery;
   str_sql : string;
begin
  Result := 0;
  str_sql := Format('SELECT fn_total_itens_venda(%d, %d) AS VLR', [iVenda, recproj.iEmp]);

  qrAux := TUniQuery.Create(nil);
  qrAux.Connection := frmMenu.conexao;
  ExecutaConsultaSQL(qrAux,str_sql);

  if qrAux.FieldByName('VLR').AsFloat > 0 then
    Result := qrAux.FieldByName('VLR').AsFloat;
  FreeAndNil(qrAux);
end;


function TotalVenda(iVenda: Integer): Double;
var
   qrAux: TUniQuery;
begin
   Result := 0;
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('select coalesce(ven_007,0.00) as desconto,');
      Add('coalesce(ven_008, 0.00) as acrescimo from venda');
      Add('WHERE EMP_001 = :EMP');
      Add('AND   VEN_001 = :VEN');
      ParamByName('EMP').AsInteger := RecProj.iEmp;
      ParamByName('VEN').AsInteger := iVenda;
      Open;
   end;

   if qrAux.RecordCount>0 then
   begin
     Result :=  TotalItensVenda(iVenda) - qrAux.FieldByName('desconto').AsFloat + qrAux.FieldByName('acrescimo').AsFloat;
   end;
   FreeAndNil(qrAux);
end;








Function TotalVendaCliente(iVenda, iCliente: integer): Double;
var
   qrAux: TUniQuery;
begin
   Result := 0;
   //
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('SELECT SUM(ITE_005) AS VLR FROM VENDAITEM');
      Add('WHERE EMP_001 = :EMP');
      Add('AND   VEN_001 = :VEN');
      Add('AND   PES_001 = :PES');
      ParamByName('EMP').AsInteger := RecProj.iEmp;
      ParamByName('VEN').AsInteger := iVenda;
      ParamByName('PES').AsInteger := iCliente;
      Open;
   end;
   //
   if qrAux.FieldByName('VLR').AsFloat  > 0 then
      Result := qrAux.FieldByName('VLR').AsFloat;
   //
   FreeAndNil(qrAux);
end;

procedure AutorizaOrdemServico(iVenda: Integer);
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE VENDA ');
      Add('    SET SIT_001 = 9 ');
      Add('      , DAT_001_2 = :DATA');
      Add('      , USU_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := iVenda;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure AutorizaDevolucao(iVenda: Integer);
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE VENDA ');
      Add('    SET SIT_001 = 1 ');
      Add('      , DAT_001_2 = :DATA');
      Add('      , USU_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := iVenda;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

function Empty(Dados: string): boolean;
begin
  if Length(Trim(Dados)) = 0 then
    Empty := True
  else
    Empty := False;
end;

procedure GeraCreditoCliente(iCliente: Integer; dValor: Double);
var
   qrAux: TUniQuery;
   dCredito: Double;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('SELECT CLI_017 FROM CLIENTES');
      Add('WHERE EMP_001 = :EMP_001');
      Add('AND CLI_001 = :CLI_001');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('CLI_001').AsInteger := iCliente;
      Open;
      //
      dCredito := FieldByName('CLI_017').AsFloat;
      //
      Close;
      Clear;
      Add(' UPDATE CLIENTES ');
      Add('    SET CLI_017 = :VALOR ');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND CLI_001 = :CLI_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('CLI_001').AsInteger := iCliente;
      ParamByName('VALOR').AsFloat     := dCredito + dValor;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

Procedure ZeraCreditoCliente(iCliente: Integer);
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE CLIENTES ');
      Add('    SET CLI_017 = :VALOR ');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND CLI_001 = :CLI_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('CLI_001').AsInteger := iCliente;
      ParamByName('VALOR').AsFloat     := 0;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

function Repl(C: string; Tamanho: integer): string;
var
  Conteudo: string;
  Contar: integer;
begin
  Conteudo := '';
  for Contar := 1 to Tamanho do
    begin
      Conteudo := Conteudo + C;
    end;
  Repl := Conteudo;
end;

function StrFormat(Texto: string; Tamanho: Integer; Complemento: Char): string;
var
  j: Integer;
begin
  J := length(Texto);
  if (J >= tamanho) then Texto := Copy(Texto, 1, Tamanho)
  else
    Texto := Texto + Repl(Complemento, Tamanho - j);
  result := Texto;
end;

function Space(N: integer): string;
var
  I: integer;
  Dados: string;
begin
  Dados := '';
  for I := 1 to N do
    begin
      Dados := Dados + ' ';
    end;
  Space := Dados;
end;

function Rtrim(Dados: string): string;
begin
  while Copy(Dados, Length(Dados), 1) = ' ' do
    begin
      Dados := Copy(Dados, 1, Length(Dados) - 1);
    end;
  Result := Dados;
end;

function Ltrim(Dados: string): string;
begin
  while pos(' ', Dados) = 1 do
    begin
      Dados := Copy(Dados, 2, Length(Dados) - 1);
    end;
  Result := Dados;
end;

function AllTrim(Dados: string): string;
begin
  Result := Ltrim(Rtrim(Dados));
end;

function StrAlign(pStr: string; pTamanho: Integer; pPosicao: Char): string;
var
  lAux: Integer;
begin
  case upCase(pPosicao) of
    'C': begin
        pStr := copy(Alltrim(pStr), 1, ptamanho);
        lAux := trunc((pTamanho - length(pStr)) / 2);
        Result := space(lAux) + pStr + space(pTamanho - (lAux + length(pStr)));
      end;
    'R':
      begin
        pStr := copy(Ltrim(pStr), 1, ptamanho);
        lAux := pTamanho - Length(pStr);
        Result := space(lAux) + pStr;
      end;
    'L':
      begin
        pStr := copy(Rtrim(pStr), 1, ptamanho);
        lAux := pTamanho - Length(pStr);
        Result := pStr + space(lAux);
      end;
  end;
end;

function RetornaTaxaVenda(iVenda: Integer): Double;
var
   qrAux: TUniQuery;
begin
   Result := 0;
   //
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('SELECT VEN.VEN_031 AS VLR FROM VENDA VEN');
      Add('WHERE VEN.EMP_001 = :EMP');
      Add('AND   VEN.VEN_001 = :VEN');
      ParamByName('EMP').AsInteger := RecProj.iEmp;
      ParamByName('VEN').AsInteger := iVenda;
      Open;
   end;
   //
   if qrAux.FieldByName('VLR').AsFloat  > 0 then
      Result := qrAux.FieldByName('VLR').AsFloat;
   //
   FreeAndNil(qrAux);
end;

procedure MudaStatusVendaImpresso(iVenda: Integer);
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE VENDA ');
      Add('    SET SIT_001 = 21 ');
      Add('      , DAT_001_2 = :DATA');
      Add('      , USU_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := iVenda;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      ExecSQL;
   end;
   FreeAndNil(qrAux);
end;

Function VerificaContasReceber(iVenda: Integer): Boolean;
var
   qrAux: TUniQuery;
   str_sql : string ;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;

   str_sql := format('select count(1) as qtde from creceber where id_empresa=%d and id_venda=%d', [RecProj.iEmp, iVenda]) ;
   ExecutaConsultaSQL(qrAux, str_sql);

   Result := qrAux.FieldByName('qtde').AsFloat > 0;

   FreeAndNil(qrAux);
end;

function IsNumero(S : String) : Boolean;
var
  i: integer;
begin
    Result := TryStrToInt(s, i);
end;


Function VerificaItensVendaAberto(iVenda: Integer): Boolean;
var
   qrAux: TUniQuery;
begin
   //Verifica se na venda tem algum item que ainda não foi pago, para não faturar.
   Result := False;
   //
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('SELECT COALESCE(COUNT(VEN_001), 0) AS QTDE FROM VENDAITEM');
      Add('WHERE EMP_001 = :EMP');
      Add('AND   VEN_001 = :VEN');
      Add('AND   ITE_012 = ''N''');
      ParamByName('EMP').AsInteger := RecProj.iEmp;
      ParamByName('VEN').AsInteger := iVenda;
      Open;
   end;
   //
   if qrAux.FieldByName('QTDE').AsFloat  > 0 then
      Result := True;
   //
   FreeAndNil(qrAux);
end;

Procedure LimpaFaturamento(iVenda: Integer);
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      Add(' DELETE FROM ENCERRAVENDA  ');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := iVenda;
      ExecSQL;
      //
      Close;
      Clear;
      Add(' DELETE FROM CRECEBER ');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := iVenda;
      ExecSQL;
   end;
end;

{procedure ClonaArray(origem : TStringArray ; var destino : TStringArray);
var i : integer;
begin
  //destino:= VarArrayCreate([0, length(origem)], varVariant);
  SetLength(destino,length(origem));
  for I := 0 to length(origem)-1 do
  begin
    destino[i]:=origem[i];
  end;
end; }

procedure ClonaArray(origem : TArray<integer> ; var destino :  TArray<integer> );
var i : integer;
begin
  SetLength(destino,length(origem));
  for I := 0 to length(origem)-1 do
  begin
    destino[i]:=origem[i];
  end;
end;

procedure ClonaArray(origem : TArray<string> ; var destino : TArray<string> );
var i : integer;
begin
  SetLength(destino,length(origem));
  for I := 0 to length(origem)-1 do
  begin
    destino[i]:=origem[i];
  end;
end;


function CriaStringArray(Args: array of const): TArray<string>;
var
  I: Integer;
begin
  SetLength(Result,High(Args)+1);
  for I := 0 to High(Args) do
  begin
    Result[i]:= Args[i].VPWideChar;
  end;
end;

function CriaIntegerArray(Args: array of const): TArray<integer>;
var
  I: Integer;
begin
  SetLength(Result,High(Args)+1);
  for I := 0 to High(Args) do
  begin
    Result[i]:= Args[i].VInteger;
  end;
end;

function CriaVariantArray(Args: array of const): TArray<variant>;
var
  I: Integer;
begin
  SetLength(Result,High(Args)+1);
  for I := 0 to High(Args) do
  begin
    case Args[I].VType of
      vtInteger:  Result[i]:= Args[i].VInteger;
      vtBoolean:  Result[i]:= Args[i].VBoolean;
      vtChar:     Result[i]:= Args[i].VChar;
      vtExtended: Result[i]:= Args[i].VExtended^;
      vtString:   Result[i]:= copy( Args[i].VPWideChar, 1, length(Args[i].VPWideChar) );
//      vtPChar:    Result[i]:= Args[i].VPChar;
//      vtObject:   Result[i]:= Args[i].VObject;
//      vtClass:    Result[i]:= Args[i].VClass;
//      vtAnsiString:  Result[i]:= Args[i].VAnsiString;
      vtCurrency:    Result[i]:= Args[i].VCurrency^;
      vtVariant:     Result[i]:= Args[i].VVariant^;
//      vtInt64:       Result[i]:= Args[i].VInt64;
      vtUnicodeString:  Result[i]:= copy( Args[i].VPWideChar, 1, length(Args[i].VPWideChar) );
    end;
  end;
end;

procedure FecharApplicacao;
begin
   Application.Terminate;
end;

procedure GravarLog(const Diretorio: String; const Prefixo: String; const Texto: String);
var
  Arquivo: TextFile;
  NomeDoLog: String;
begin
   NomeDoLog := Diretorio + 'ServerSAT_' + FormatDateTime('ddmmyyyy', Date) + '.log';

   AssignFile(Arquivo, NomeDoLog);

   if FileExists(NomeDoLog) then begin
      Append(arquivo);
   end else begin
      ReWrite(arquivo);
   end;

   try
      WriteLn(arquivo,
         FormatDateTime('dd/mm/yyyy hh24:mm:ss', Now) + '  ' +
         AcertaTexto(Prefixo, 'E', 30) +
         Texto);
   finally
      CloseFile(arquivo)
   end;
end;

procedure criarDiretorio(const Diretorio: String);
begin
   // Verifica se não existe e caso não exista tenta criar
   if Not DirectoryExists(Diretorio) then begin
      ForceDirectories(Diretorio);
   end;

   // verifica novamente se existe, agora para saber se criou ou se já exisita
   // e caso não exista retorna uma exceção
   if Not DirectoryExists(Diretorio) then begin
      raise Exception.Create(Format('Diretório "%s" não encontrado.', [Diretorio]));
   end;
end;

function FormatarCaminhoDir(const Caminho: String): String;
begin
   Result := Caminho;
   if RightStr(Caminho, 1) <> '\' then begin
      Result := Result + '\';
   end;
end;

function AcertaTexto(const texto: String; const Direcao: String; const Quantidade: Integer; CaracterPreenchimento : String = ' '): String;
var
  qtdeDireita: Integer;
  qtdeEspacos: Integer;
begin
   if Direcao = 'E' then
   begin
     Result := texto + ReplicarCaracter(CaracterPreenchimento, Quantidade - Length(texto));
   end
   else if Direcao = 'D' then begin
     Result := ReplicarCaracter(CaracterPreenchimento, Quantidade - Length(texto)) + texto;
   end
   else if Direcao = 'C' then begin
     qtdeEspacos := Quantidade - Length(texto);
     qtdeDireita := qtdeEspacos div 2;

     Result := ReplicarCaracter(CaracterPreenchimento, qtdeDireita) + texto + ReplicarCaracter(CaracterPreenchimento, qtdeEspacos - qtdeDireita);
   end
   else
   begin
     Result := texto;
   end;
   Result := copy(Result, 1,Quantidade);
end;

function ReplicarCaracter(const caracter: String; const quantidade: Integer): String;
var
   primeiraLetra: char;
begin
   try
      primeiraLetra := caracter[1];
   except
      primeiraLetra := #0;
   end;

   Result := StringOfChar(primeiraLetra, quantidade);
end;

function ApenasNumeros(texto: String): String;
var
  I: Integer;
begin
   Result := '';

   for I := 1 to Length(texto) do begin
      if CharInSet(texto[I], ['0'..'9']) then begin
         Result := Result + texto[I];
      end;
   end;
end;

function InteiroNoConjunto(Valor: Integer; Conjunto: Array of Integer): Boolean;
var
  I: Integer;
begin
   Result := False;

   for I := 0 to Length(Conjunto) - 1 do begin
      if Valor = Conjunto[I] then begin
         Result := True;
         Break;
      end;
   end;
end;

//converte minutos para horas
function FormataMinutos(QdtMinutos : Cardinal) : string;
begin
  Result := Format('%.2d:%.2d', [QdtMinutos div 60, QdtMinutos mod 60]);
end;

//Converte Horas Para Minutos
Function HoraParaMin(Hora: String): Integer;
begin
  Result := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
end;

procedure Atualiza_Saldo_Conta(idvenda: integer);
var str_sql: string;
    qrConsulta, qrAtualiza: TUniQuery;
begin
  str_sql := 'select cast(i.ite_003-((i.ite_003*coalesce(f.taxa_cartao,0))/100) as numeric(15,2)) as valor, f.id_contacorrente '+
             'from encerravendaitem i '+
             'inner join encerravenda e on e.enc_001 = i.enc_001 '+
             'inner join formapgto f on f.for_001 = i.id_formapgto '+
             'where e.ven_001 = :idvenda '+
             'and i.emp_001 = :idempresa '+
             'and i.compensado = 0 '+
             'and f.utiliza_controle_cartao = true '+
             'and f.id_contacorrente > 0';

  qrConsulta:=TUniQuery.Create(nil);
  qrConsulta.Connection:= frmMenu.Conexao;

  qrAtualiza:=TUniQuery.Create(nil);
  qrAtualiza.Connection:= frmMenu.Conexao;

  qrConsulta.Close;
  qrConsulta.SQL.Text:= str_sql;
  qrConsulta.ParamByName('idvenda').AsInteger   := idvenda;
  qrConsulta.ParamByName('idempresa').AsInteger := RecProj.iEmp;
  qrConsulta.Open;

  qrConsulta.First;
  while not qrConsulta.Eof do
  begin
    // Update no saldo da conta corrente
    str_sql:='update contacorrente set saldo = saldo - :valor '+
             'where id_contacorrente = :id_contacorrente and id_empresa = :id_empresa';

    qrAtualiza.SQL.Text:= str_sql;
    qrAtualiza.ParamByName('id_contacorrente').AsInteger := qrConsulta.FieldByName('id_contacorrente').AsInteger;
    qrAtualiza.ParamByName('id_empresa').Asinteger       := RecProj.iEmp;
    qrAtualiza.ParamByName('valor').AsFloat              := qrConsulta.FieldByName('valor').AsFloat;
    qrAtualiza.Execute;
    qrAtualiza.Close;

    qrConsulta.Next;
  end;

  qrConsulta.Close;
  qrConsulta.Free;

  qrAtualiza.Close;
  qrAtualiza.Free;
end;

end.
