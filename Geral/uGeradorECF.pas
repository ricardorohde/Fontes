///
/// Integração ao TEF não completada (03/10/2017) - Leonardo
///

unit uGeradorECF;

interface

uses
  ACBrECF, ACBrTEFD, ACBrTEFDClass, ACBrECFClass , UNI, System.Math,
  system.SysUtils, ACBrDevice, System.Variants, Vcl.Forms, System.Classes,
  system.TypInfo, Vcl.Controls, Winapi.Windows, System.DateUtils,
  System.StrUtils, Datasnap.DBClient, Data.DB;


type TECF = Class(TACBrECF)
  public
  // Parametrização
  forma_pag_duas_casas : boolean;
  constructor create();
end;

type TTEF = Class(TACBrTEFD)
  public
  // Parametrização
  tipo_tef : TACBrTEFDTipo;
  b_cancelado : boolean;
  msg_status : string;
  log, log_operador, log_cliente: Tstringlist;
  numero_pagamento_atual : integer;
  constructor create();
end;

type
  GerarECF = class
  private
    id_venda: Integer;
    id_empresa: Integer;
    numero_cupom: Integer;
    FACBrECF: TECF;
    FACBrTef: TTEF;
    totalNota : Currency;
    totalTroco : Currency;
    lr_TotalEstadual, lr_TotalMunicipal, lr_TotalFederal : Currency;
    totalDesconto, totalAcrescimo: Currency;
    cds_transacoes_tef : TClientDataSet;

    // Produtos
    aProdutos: Array of record
      codigo: String;
      EAN: String;
      descricao: String;
      NCM: String;
      CFOP: String;
      CEST: String;
      unidade: String;
      quantidade: Currency;
      unitario: Currency;
      descto: Currency;
      outros: Currency;
      total_item: Currency;
      vTrib12741: Currency;
      // ICMS
      ICMS_Origem: String;
      ICMS_CSTCSOSN: String;
      ICMS_Perc: Currency;
      ICMS_Valor: Currency;
      // PIS
      PIS_CST: String;
      PIS_vBC: Currency;
      PIS_Perc: Currency;
      PIS_Valor: Currency;
      PIS_qBC: Currency;
      PIS_vAliqProd: Currency;
      // PIS ST
      PISST_vBC: Currency;
      PISST_Perc: Currency;
      PISST_Valor: Currency;
      PISST_qBC: Currency;
      PISST_vAliqProd: Currency;
      // COFINS
      COFINS_CST: String;
      COFINS_vBC: Currency;
      COFINS_Perc: Currency;
      COFINS_Valor: Currency;
      COFINS_qBC: Currency;
      COFINS_vBCProd: Currency;
      COFINS_vAliqProd: Currency;
      // COFINS ST
      COFINSST_vBC: Currency;
      COFINSST_Perc: Currency;
      COFINSST_Valor: Currency;
      COFINSST_qBC: Currency;
      COFINSST_vAliqProd: Currency;
    end;

    // Formas de Pagto
    aPagto: Array of record
      formaPagto: Integer;
      valor: Currency;
      codigoECF: string;
      descricao : string;
      usa_tef : boolean;
      numero_pagamento : integer;
    end;

    procedure ObterDadosVenda(out Consulta, Produtos, Pagtos,
      CReceber: TUniQuery);
    procedure CalcularICMS(ps_CST: String;
      pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_Valor: Currency);
    procedure CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency;
      out pr_BaseCalc, pr_Valor: Currency);
    procedure CalcularCOFINS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency;
      out pr_BaseCalc, pr_Valor: Currency);

  public
    codigoRet: integer;
    mensagem : string;

    // Emitente
    emit_uf: string;

    // Destinatario
    dest_CNPJCPF: String;
    dest_Nome: String;

    // Local Entrega
    logradouro: String;
    numero: String;
    complemento: String;
    bairro: String;
    municipio: String;
    estado: String;
    // Geral
    numeroCaixa: Integer;
    infAdicCFe: String;


    Constructor Create();
    Destructor Destroy(); Override;
    function Emitir(const id_venda: Integer; const id_empresa: Integer): Boolean;
    function Cancelar(const id_venda: Integer; const id_empresa: Integer): Boolean;
    function addProduto(const codigo: String; const EAN: String;
      const descricao: String; const NCM: String; const CEST: String; const CFOP: String;
      const unidade: String; const quantidade: Currency; const unitario: Currency;
      const descto: Currency; const outros: Currency;
      const vTrib12741: Currency;
      // ICMS
      const ICMS_Origem: String; const ICMS_CSTCSOSN: String;
      const ICMS_Perc: Currency; const ICMS_Valor: Currency;
      // PIS
      const PIS_CST: String; const PIS_vBC: Currency; const PIS_Perc: Currency;
      const PIS_Valor: Currency; const PIS_qBC: Currency;
      const PIS_vAliqProd: Currency;
      // PIS ST
      const PISST_vBC: Currency; const PISST_Perc: Currency;
      const PISST_Valor: Currency; const PISST_qBC: Currency;
      const PISST_vAliqProd: Currency;
      // COFINS
      const COFINS_CST: String; const COFINS_vBC: Currency;
      const COFINS_Perc: Currency; const COFINS_Valor: Currency;
      const COFINS_qBC: Currency; const COFINS_vBCProd: Currency;
      const COFINS_vAliqProd: Currency;
      // COFINS ST
      const COFINSST_vBC: Currency; const COFINSST_Perc: Currency;
      const COFINSST_Valor: Currency; const COFINSST_qBC: Currency;
      const COFINSST_vAliqProd : currency;
      const valor_total_item: Currency): Boolean;
    function addFormasPagto(const formaPagto: Integer; const valor: Currency;
      const codigoECF: string; const descricao : string; const usa_tef: boolean ;
      const numero_pag : integer): Boolean;
    function VerificaAliquotasCadastradas(out mensagem : string) : Boolean;
    function VerificaFormasPagamentoCadastradas(out mensagem : string) : Boolean;

    function EmitirECF(out codigoRetorno: Integer; out Mensagem: String ): Boolean;
    function TotalProdutos : double;

    //eventos TEF ACBr
    procedure ACBrTEFDAguardaResp(Arquivo : String; SegundosTimeOut : Integer; var Interromper : Boolean);
    procedure ACBrTEFDAntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
    procedure ACBrTEFDAntesFinalizarRequisicao(Req : TACBrTEFDReq);
    procedure ACBrTEFDBloqueiaMouseTeclado(Bloqueia : Boolean; var Tratado : Boolean);
    procedure ACBrTEFDComandaECF(Operacao : TACBrTEFDOperacaoECF; Resp : TACBrTEFDResp; var RetornoECF : Integer);
    procedure ACBrTEFDComandaECFAbreVinculado(COO, IndiceECF : String; Valor : Double; var RetornoECF : Integer);
    procedure ACBrTEFDComandaECFImprimeVia(TipoRelatorio : TACBrTEFDTipoRelatorio; Via : Integer; ImagemComprovante : TStringList; var RetornoECF : Integer);
    procedure ACBrTEFDComandaECFPagamento(IndiceECF : String; Valor : Double; var RetornoECF : Integer);
    procedure ACBrTEFDComandaECFSubtotaliza(DescAcre: Double; var RetornoECF: Integer);
    procedure ACBrTEFDDepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFDExibeMsg(Operacao : TACBrTEFDOperacaoMensagem; Mensagem : String; var AModalResult : TModalResult);
    procedure ACBrTEFDInfoECF(Operacao : TACBrTEFDInfoECF; var RetornoECF : String);
    procedure ACBrTEFDMudaEstadoReq(EstadoReq : TACBrTEFDReqEstado);
    procedure ACBrTEFDMudaEstadoResp(EstadoResp : TACBrTEFDRespEstado);
    procedure ACBrTEFDRestauraFocoAplicacao(var Tratado : Boolean);
  end;


implementation

uses uMenu, uFuncoes, Funcao_DB;

procedure GerarECF.ACBrTEFDRestauraFocoAplicacao(var Tratado : Boolean);
begin
  Application.BringToFront;
  Tratado := False ;  { Deixa executar o código de Foco do ACBrTEFD }
end;

procedure GerarECF.ACBrTEFDMudaEstadoResp(EstadoResp : TACBrTEFDRespEstado);
begin
  FACBrTef.log.Add(GetEnumName(TypeInfo(TACBrTEFDRespEstado), Integer(EstadoResp)));
  FACBrTef.b_cancelado := False ;
end;

procedure GerarECF.ACBrTEFDMudaEstadoReq(EstadoReq : TACBrTEFDReqEstado);
begin
   FACBrTef.log.Add(GetEnumName(TypeInfo(TACBrTEFDReqEstado), Integer(EstadoReq))) ;
   FACBrTef.b_cancelado := False ;
end;

procedure GerarECF.ACBrTEFDInfoECF(Operacao : TACBrTEFDInfoECF; var RetornoECF : String);
var
   ASubTotal: Double;
begin
   try
      if not FACBrECF.Ativo then FACBrECF.Ativar ;
   except
      { Para CliSiTEF ou V&SPague aplique o IF abaixo em sua aplicação, que
        permite saber se o Cupom foi concluido mesmo com o ECF desligado }

      if (not FACBrTEF.TEF.Inicializado) and   { Está na inicialização ? }
         (Operacao = ineEstadoECF) and          { Quer Saber o estado do ECF ? (mas se chegou aqui é pq o ECF já está com problemas...Errr.. o exemplo tá funcionando assim, então não sou que quem vai mudar :P) }
         (FACBrTEF.GPAtual in [gpCliSiTef,gpVeSPague]) then
      begin
         { Leia o último Documento Gravado no seu Banco de Dados, e verifique
           se o Cupom já foi finalizado,ou se já foi aberto um CCD ou Gerencial...
           Exemplo:

           Documento.Le(0);

           if (Documento.Finalizado) or (pos(Documento.Denominacao,'CC|RG') > 0) then
              RetornoECF := 'R'
           else
              RetornoECF := 'O' ;
         }

         //RetornoECF := 'O';    // Executará CancelarTransacoesPendentes;
         RetornoECF := 'R';    // Executará ConfirmarESolicitarImpressaoTransacoesPendentes;
         exit ;
      end ;

      raise ;
   end;

   case Operacao of
     ineSubTotal :
       begin
         ASubTotal := FACBrECF.Subtotal ;
         ASubTotal := ASubTotal - FACBrECF.TotalPago;// + StringToFloatDef(edValorDescAcre.Text, 0);
         RetornoECF := FloatToStr( ASubTotal ) ;
       end;

     ineTotalAPagar : //verificar
       //RetornoECF := FloatToStr( CalculaTotalPago );
       RetornoECF := '0';

     ineEstadoECF :
       begin
         Case FACBrECF.Estado of
           estLivre     : RetornoECF := 'L' ;
           estVenda     : RetornoECF := 'V' ;
           estPagamento : RetornoECF := 'P' ;
           estRelatorio : RetornoECF := 'R' ;
           estNaoFiscal : RetornoECF := 'N' ;
         else
           RetornoECF := 'O' ;
         end;
       end;
   end;
end;

procedure GerarECF.ACBrTEFDExibeMsg(Operacao : TACBrTEFDOperacaoMensagem;
   Mensagem : String; var AModalResult : TModalResult);
var
   Fim : TDateTime;
   //OldMensagem : String;
begin
  case Operacao of

    opmOK :
       AModalResult := Application.MessageBox(pchar(Mensagem), 'Atenção', mb_iconinformation);

    opmYesNo :
    begin
       if Mensagem = ACBrTEFDClass.CACBrTEFD_Erro_OutraFormaPagamento then
         AModalResult := mrNo
       else
         AModalResult := Application.MessageBox( pchar(Mensagem), 'Atenção', MB_ICONQUESTION + MB_YESNO);
    end;

    //verificar se exige interação com o usuario
    opmExibirMsgOperador, opmRemoverMsgOperador :
      FACBrTef.log_operador.Add('Mensagem: ' + Mensagem) ;

    opmExibirMsgCliente, opmRemoverMsgCliente :
       FACBrTef.log_cliente.Add('Mensagem: '  + Mensagem) ;

    opmDestaqueVia :
       begin
         //OldMensagem := lMensagemOperador.Caption ;
         try
            FACBrTef.log_operador.Add('Mensagem: ' + Mensagem) ;
            //pMensagemOperador.Visible := True ;
            //pMensagem.Visible         := True ;

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               FACBrTef.log_operador.Add('Mensagem: ' + Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now)));
               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            //lMensagemOperador.Caption := OldMensagem ;
         end;
       end;
  end;

  //pMensagemOperador.Visible := (lMensagemOperador.Caption <> '') ;
  //pMensagemCliente.Visible  := (lMensagemCliente.Caption <> '') ;

  //pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
  Application.ProcessMessages;
end;


procedure GerarECF.ACBrTEFDDepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I : Integer;
begin
  for I := 0 to RespostasPendentes.Count-1  do
  begin
    FACBRTef.log.Add('Confirmado: '+RespostasPendentes[I].Header+' ID: '+IntToStr( RespostasPendentes[I].ID ) );
    FACBRTef.log.Add('Rede: '  + RespostasPendentes[I].Rede +
                     'NSU: '  + RespostasPendentes[I].NSU  +
                     'Valor: '+ FormatFloat('###,###,##0.00',RespostasPendentes[I].ValorTotal)) ;
    FACBRTef.log.Add('Campo 11: ' + RespostasPendentes[I].LeInformacao(11,0).AsString);

    //grava os dados da transação
    cds_transacoes_tef.Locate('indice_tef', I, []);

    ExecutaComandoSQL(' update encerravendaitem set tef_transacao=:transacao, '+
                  ' tef_confirmacao=:confirmacao, tef_rede=:rede, tef_campo_11=:campo11 '+
                  ' where ite_001=:item and enc_001 in (select enc_001 from encerravenda where ven_001=:id_venda and emp_001=:id_empresa)',
                  vararrayof([RespostasPendentes[I].NSU,
                  RespostasPendentes[I].Header+' ID: '+IntToStr( RespostasPendentes[I].ID ),
                  RespostasPendentes[I].Rede,
                  RespostasPendentes[I].LeInformacao(11,0).AsString,
                  cds_transacoes_tef.FieldByName('npagto').Asinteger,
                  id_venda, id_empresa]));


  end;
end;

procedure GerarECF.ACBrTEFDComandaECFSubtotaliza(DescAcre: Double;
   var RetornoECF: Integer);
Var
   Est : TACBrECFEstado ;
   MeuAcresDesc : Double ;
begin
  FACBrTef.log.Add('ComandaECFSubtotaliza: DescAcre: ' + FormatFloat('0.00',DescAcre) );

  MeuAcresDesc := 0;
  try
    Est := FACBrECF.Estado;

    if Est = estNaoFiscal then
       FACBrECF.SubtotalizaNaoFiscal( DescAcre + MeuAcresDesc, recproj.sInfoDevSistema2 )
    else
       FACBrECF.SubtotalizaCupom( DescAcre + MeuAcresDesc, recproj.sInfoDevSistema2 );

    { Remove o Desconto pois já foi aplicado, caso contrário iria influenciar o
      retorno de ineSubTotal }

    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure GerarECF.ACBrTEFDComandaECFPagamento(IndiceECF : String;
   Valor : Double; var RetornoECF : Integer);
var
   Est : TACBrECFEstado ;
begin
  try
    FACBrTef.log.Add( 'ComandaECFPagamento, IndiceECF: '+IndiceECF+
      ' Valor: '+FormatFloat('0.00',Valor) );
    Est := FACBrECF.Estado;

    if Est = estNaoFiscal then
      FACBrECF.EfetuaPagamentoNaoFiscal(IndiceECF, Valor)
    else
      FACBrECF.EfetuaPagamento(IndiceECF, Valor);

    RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure GerarECF.ACBrTEFDComandaECFImprimeVia(
   TipoRelatorio : TACBrTEFDTipoRelatorio; Via : Integer;
   ImagemComprovante : TStringList; var RetornoECF : Integer);
begin
  FACBrTef.log.Add( 'ACBrTEFD1ComandaECFImprimeVia, Tipo: '+
     IfThen(TipoRelatorio = trGerencial, 'trGerencial','trVinculado') +
     ' Via: '+IntToStr(Via) );
  FACBrTef.log.AddStrings( ImagemComprovante );

  try
    case TipoRelatorio of
      trGerencial :
        FACBrECF.LinhaRelatorioGerencial(ImagemComprovante.Text) ;

      trVinculado :
        FACBrECF.LinhaCupomVinculado(ImagemComprovante.Text)
    end;

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;


procedure GerarECF.ACBrTEFDComandaECFAbreVinculado(COO, IndiceECF : String;
   Valor : Double; var RetornoECF : Integer);
begin
  try
    FACBrTef.log.Add( 'ACBrTEFD1ComandaECFAbreVinculado, COO:'+COO+
      ' IndiceECF: '+IndiceECF+' Valor: '+FormatFloat('0.00',Valor) ) ;
    FACBrECF.AbreCupomVinculado( COO, IndiceECF, Valor );
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure GerarECF.ACBrTEFDComandaECF(Operacao : TACBrTEFDOperacaoECF;
   Resp : TACBrTEFDResp; var RetornoECF : Integer );
Var
   Est : TACBrECFEstado ;
   P   : Integer;
   Linha, CodFPG : String ;
   ValorFPG : Double ;
begin
   FACBrTef.log.Add('ComandaECF: '+GetEnumName(TypeInfo(TACBrTEFDOperacaoECF),
                                              integer(Operacao) ));

  try
    Est := FACBrECF.Estado;

    case Operacao of
      opeAbreGerencial :
         FACBrECF.AbreRelatorioGerencial ;

      opeCancelaCupom :
         if Est = estNaoFiscal then
            FACBrECF.CancelaNaoFiscal
         else
            FACBrECF.CancelaCupom;

      opeFechaCupom :
         if Est = estNaoFiscal then
            FACBrECF.FechaNaoFiscal(recproj.sInfoDevSistema1)
         else
            FACBrECF.FechaCupom(recproj.sInfoDevSistema1);

      opeSubTotalizaCupom :
         if Est = estNaoFiscal then
            FACBrECF.SubtotalizaNaoFiscal( 0, recproj.sInfoDevSistema1)
         else
            FACBrECF.SubtotalizaCupom( 0, recproj.sInfoDevSistema1);

      opeFechaGerencial, opeFechaVinculado :
        FACBrECF.FechaRelatorio ;

      opePulaLinhas :
        begin
          FACBrECF.PulaLinhas( FACBrECF.LinhasEntreCupons );
          FACBrECF.CortaPapel( True );
          Sleep(200);
        end;

      opeImprimePagamentos :
        begin
          //verificar, talvez não entre....

          {while mPagamentos.Lines.Count > 0 do
          begin
             Linha := mPagamentos.Lines[0] ;
             P     := pos('|',Linha) ;
             if P > 0 then
             begin
                CodFPG   := Trim(copy(Linha,1,P-1)) ;
                ValorFPG := StringToFloatDef( copy(Linha, P+1, Length(Linha) ), 0 );
                if (CodFPG <> '') and (ValorFPG > 0) then
                   ACBrECF1.EfetuaPagamento( CodFPG, ValorFPG );
             end;
             mPagamentos.Lines.Delete(0);
          end; }
        end;
    end;

    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;




procedure GerarECF.ACBrTEFDBloqueiaMouseTeclado(Bloqueia : Boolean; var Tratado : Boolean);
begin
  //self.Enabled := not Bloqueia ;
  //Memo1.Lines.Add('BloqueiaMouseTeclado = '+IfThen(Bloqueia,'SIM', 'NAO'));
  Tratado := False ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure GerarECF.ACBrTEFDAntesFinalizarRequisicao(Req : TACBrTEFDReq);
begin
//Exemplo ACBR verificar o que vai...
{   if Req.Header = 'CRT' then
      Req.GravaInformacao(777,777,'TESTE REDECARD');
   Memo1.Lines.Add('Enviando: '+Req.Header+' ID: '+IntToStr( Req.ID ) );}
   FACBrTef.log.Add('Enviando: '+Req.Header+' ID: '+IntToStr( Req.ID ));
end;

procedure GerarECF.ACBrTEFDAntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
var
   Est: TACBrECFEstado;
begin
   Est := FACBrECF.Estado;

   case Est of
      estVenda, estPagamento :
        FACBrECF.CancelaCupom;

      estRelatorio :
          FACBrECF.FechaRelatorio;
   else
      if not ( Est in [estLivre, estDesconhecido, estNaoInicializada] ) then
         FACBrECF.CorrigeEstadoErro( False ) ;
   end;
end;


procedure GerarECF.ACBrTEFDAguardaResp(Arquivo : String;
   SegundosTimeOut : Integer; var Interromper : Boolean);
var
  Msg : String ;
begin
  Msg := '' ;
  if (FACBrTef.GPAtual in [gpCliSiTef, gpVeSPague]) then   // É TEF dedicado ?
  begin
    if (Arquivo = '23') then  // Está aguardando Pin-Pad ?
    begin
      if FACBrTef.TecladoBloqueado then
      begin
        FACBrTef.BloquearMouseTeclado(False);  // Desbloqueia o Teclado
        // TODO: nesse ponto é necessário desbloquear o Teclado, mas permitir
        //       um clique apenas no botão cancelar.... FALTA CORRIGIR NO DEMO
      end ;

      Msg := 'Tecle "ESC" para cancelar.';
      FACBrTef.b_cancelado := False;
    end;
   end
  else
     Msg := 'Aguardando: '+Arquivo+' '+IntToStr(SegundosTimeOut) ;

  if Msg <> '' then FACBrTef.msg_status := Msg;
  Application.ProcessMessages;

  if FACBrTef.b_cancelado then Interromper := True ;
end;

constructor TTEF.create();
begin
  inherited  create(nil);
  self.tipo_tef := TACBrTEFDTipo(LerIntegerConfig('cbTEFGP', frmMenu.cdsCFG.FileName, 1)) ;
  self.MultiplosCartoes := true;
  self.AutoAtivarGP := true;
  self.CHQEmGerencial := true;
  self.AutoEfetuarPagamento := false;
  self.EsperaSleep := LerIntegerConfig('edTEFEsperaSleep', frmMenu.cdsCFG.FileName, 250);
  self.EsperaSTS := LerIntegerConfig('edTEFEsperaSTS', frmMenu.cdsCFG.FileName, 7);
  self.TrocoMaximo :=  LerFloatConfig('edTEFValorMaxSaque', frmMenu.cdsCFG.FileName, 0);
  self.b_cancelado := false;
  self.msg_status := '';
  self.log := Tstringlist.Create;
  self.log_operador := Tstringlist.Create;
  self.log_cliente := Tstringlist.Create;
  self.SuportaSaque := lerbooleanconfig('ckTEFSuportaSaque',frmMenu.cdsCFG.FileName,true);
  self.SuportaDesconto := lerbooleanconfig('ckTEFSuportaDesconto',frmMenu.cdsCFG.FileName,true);
  self.SuportaReajusteValor := lerbooleanconfig('ckTEFSuportaReajusteValor',frmMenu.cdsCFG.FileName,true);
  self.Identificacao.NomeAplicacao := frmmenu.Caption;
  self.Identificacao.RazaoSocial := recproj.sEmp;
  self.Identificacao.RazaoSocial := recproj.sSoftwareHouse;
  self.Identificacao.VersaoAplicacao := GetFileVersion(ParamStr(0));


end;

constructor TECF.create();
begin
  inherited  create(nil);

  self.Porta := LerStringConfig('CBECFPORTA', frmMenu.cdsCFG.FileName ) ;
  self.Modelo := TACBrECFModelo( LerIntegerConfig('CBECFMODELO', frmMenu.cdsCFG.FileName ) ) ;

  self.Device.Baud := strtoint(LerStringConfig('CBECFBAUD', frmMenu.cdsCFG.FileName, '9600' ));
  self.Device.Data := strtoint(LerStringConfig('CBECFDATABITS', frmMenu.cdsCFG.FileName, '8' ));
  self.Device.Parity := TACBrSerialParity( LerIntegerConfig('CBECFPARITY', frmMenu.cdsCFG.FileName ) );
  self.Device.Stop := TACBrSerialStop( LerIntegerConfig('CBECFSTOPBITS', frmMenu.cdsCFG.FileName ) );
  self.Device.HandShake := TACBrHandShake( LerIntegerConfig('CBECFHANDSHAKING', frmMenu.cdsCFG.FileName ) ) ;

  self.ReTentar := LerBooleanConfig('CKECFTENTARNOVAMENTE', frmMenu.cdsCFG.FileName) ;
//  self.BloqueiaMouseTeclado := LerBooleanConfig('ckECFBloqueiaMouseTeclado', frmMenu.cdsCFG.FileName) ;
  self.BloqueiaMouseTeclado := false;
  self.ExibeMensagem := LerBooleanConfig('ckECFExibeMsg', frmMenu.cdsCFG.FileName) ;
  self.ArredondaPorQtd := LerBooleanConfig('ckECFArredondaPorQtd', frmMenu.cdsCFG.FileName) ;
  self.ArredondaItemMFD := LerBooleanConfig('ckECFArredondamentoItemMFD', frmMenu.cdsCFG.FileName) ;

  self.TimeOut := LerIntegerConfig('edECFTimeOut', frmMenu.cdsCFG.FileName) ;
  self.IntervaloAposComando := LerIntegerConfig('edECFIntervaloAposComando', frmMenu.cdsCFG.FileName) ;
  self.MaxLinhasBuffer := LerIntegerConfig('edECFLinBuf', frmMenu.cdsCFG.FileName) ;
  self.PaginaDeCodigo := LerIntegerConfig('edECFPaginaCodigo', frmMenu.cdsCFG.FileName) ;

  self.MsgTrabalhando := LerStringConfig('edECFMsgTrabalhando', frmMenu.cdsCFG.FileName) ;
  self.MsgAguarde := LerStringConfig('edECFMsgAguarde', frmMenu.cdsCFG.FileName) ;

  self.forma_pag_duas_casas := LerBooleanConfig('ckECFindiceFormaPagDuasCasas', frmMenu.cdsCFG.FileName) ;

  self.Ativar;
end;

procedure GerarECF.ObterDadosVenda(out Consulta, Produtos, Pagtos,
  CReceber: TUniQuery);
var str_sql : string;
begin
  Consulta := TUniQuery.Create(nil);
  Produtos := TUniQuery.Create(nil);
  Pagtos := TUniQuery.Create(nil);
  CReceber := TUniQuery.Create(nil);

  Consulta.Connection := frmMenu.conexao;
  Produtos.Connection := frmMenu.conexao;
  Pagtos.Connection := frmMenu.conexao;
  CReceber.Connection := frmMenu.conexao;

  { SQL - Inicio }

  str_sql:= ' SELECT ''P'' AS Ambiente '+ // Arrumar
            ' , 1 AS NumCaixa '+ // Arrumar
            ' , coalesce(em.numero_nfce,0)+1 as NUMERO_NFCE '+
            ' , em.serie_nfce as SERIE_NFCE '+
            ' , coalesce(EV.VEN_CPFCONSUM, c.cli_004) AS CpfCnpjCliente '+
            ' , coalesce(v.nome_cliente, c.cli_002) AS Cliente '+
            ' , EM.EMP_004 AS CpfCnpjLoja '+
            ' , EM.EMP_005 AS InscEst '+
            ' , EM.EMP_002 AS Razao_social '+
            ' , EM.EMP_003 AS nome_fantasia '+
            ' , EM.EMP_013 AS telefone '+
            ' , EM.EMP_006 AS InscMun '+
            ' , EST.EST_003 AS EMIT_UF '+

            ' , EM.CEP_002 AS EMIT_CEP '+
            ' , EM.CEP_004 AS EMIT_LOGRADOURO '+
            ' , EM.EMP_007 AS EMIT_END_NUMERO '+
            ' , EM.EMP_008 AS EMIT_END_COMPLEMENTO '+
            ' , EM.CEP_003 AS EMIT_BAIRRO '+
            ' , CID.CID_002 AS EMIT_CIDADE '+

            ' , replace(CID.CID_003,''.'' ,'''' ) AS EMIT_CODMUNICIP_IBGE '+
            ' , COALESCE(EM.CRT_CODIGO, 0) AS Regime '+

            ' , c.cep_004 AS logradouro '+ // logradouro de entrega
            ' , c.cli_008 AS numero '+
            ' , c.cli_009 AS complemento '+
            ' , c.cep_003 AS bairro '+
            ' , c.cidade_desc AS municipio '+
            ' , c.uf AS estado '+
            ' , replace(CLI_CID.CID_003,''.'' ,'''' ) AS CODMUNICIP_IBGE '+

            ' , EV.ENC_007 AS Descto '+
            ' , EV.ENC_006 AS Acresc '+
            ' , EV.ENC_001'+
            ' , fn_total_itens_venda(v.ven_001, v.emp_001) as total_venda '+
            ' FROM VENDA V '+
            ' INNER JOIN ENCERRAVENDA EV ON '+
            '   (EV.VEN_001 = V.VEN_001) AND '+
            '   (EV.EMP_001 = V.EMP_001) '+
            ' INNER JOIN EMPRESAS EM ON '+
            '   (EM.EMP_001 = V.EMP_001) '+
            ' JOIN CIDADES CID ON '+
            '   (CID.CID_001 = EM.CID_001) '+
            ' JOIN ESTADOS EST ON '+
            '   (EST.EST_001 = CID.EST_001) '+
            ' left join clientes c on v.cli_001=c.cli_001 and v.emp_001=c.emp_001'+
            ' left join cidades cli_cid ON '+
            '   (cli_cid.CID_001 = c.CID_001) '+
            ' WHERE V.VEN_001 = :VENDA '+
            '  AND V.EMP_001 = :EMPRESA ';
  Consulta.sql.Add(str_sql);

  Produtos.SQL.Add('SELECT M.MAT_001 AS codigo ');
  Produtos.SQL.Add('     , I.ITE_001 AS nItem ');
  Produtos.SQL.Add('     , null AS EAN '); // Arrumar
  Produtos.SQL.Add('     , M.MAT_003 AS descricao ');
  Produtos.SQL.Add('     , M.NCM ');
  Produtos.SQL.Add('     , M.CEST ');
  Produtos.SQL.Add('     , M.CFOP_CONSUMIDOR AS CFOP ');
  Produtos.SQL.Add('     , U.UNI_003 AS Unidade ');
  Produtos.SQL.Add('     , I.ITE_002 AS Quant ');
  Produtos.SQL.Add('     , round((I.ITE_005/I.ITE_002),3) AS Unitario ');
  // Produtos.SQL.Add('     , I.ITE_003 AS Unitario ');
  Produtos.SQL.Add('     , 0.00 AS Descto ');
  Produtos.SQL.Add('     , 0.00 AS Acresc ');
  // Produtos.SQL.Add('     , coalesce(i.desconto, 0.00) AS Descto ');
  // Produtos.SQL.Add('     , coalesce(i.acrescimo, 0.00) AS Acresc ');
  Produtos.SQL.Add('     , M.ORM_CODIGO AS ICMS_Origem ');
  Produtos.SQL.Add('     , M.CST_CONSUMIDOR AS ICMS_CST ');
  Produtos.SQL.Add('     , M.CSO_CODIGO AS ICMS_CSOSN ');
  Produtos.SQL.Add('     , M.ICMS AS ICMS_Perc ');
  Produtos.SQL.Add('     , M.PIS_CODIGO_SAIDA AS PIS_CST ');
  Produtos.SQL.Add('     , M.PIS AS PIS_Perc ');
  Produtos.SQL.Add('     , 0 AS PISST_Perc '); // Arrumar
  Produtos.SQL.Add('     , M.COF_CODIGO_SAIDA AS COFINS_CST ');
  Produtos.SQL.Add('     , M.COFINS AS COFINS_Perc ');
  Produtos.SQL.Add('     , 0 AS COFINSST_Perc '); // Arrumar
  Produtos.SQL.Add('     , M.REDBASECALCICMS AS RedBc ');
  Produtos.SQL.Add('     , M.REDBASECALCST AS RedBcSt ');

  Produtos.SQL.Add('     , coalesce(( SELECT T.ALIQMUNICIPAL ');
  Produtos.SQL.Add('           FROM IBPT T ');
  Produtos.SQL.Add
    ('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQMUNICIPALPADRAO ,0) AS ALIQMUNICIPAL ');
  Produtos.SQL.Add('     , coalesce(( SELECT T.ALIQESTADUAL ');
  Produtos.SQL.Add('           FROM IBPT T ');
  Produtos.SQL.Add
    ('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQESTADUALPADRAO ,0) AS ALIQESTADUAL ');
  Produtos.SQL.Add('     ,  coalesce(( SELECT T.ALIQFEDNACIONAL ');
  Produtos.SQL.Add('           FROM IBPT T ');
  Produtos.SQL.Add
    ('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQFEDNACIONALPADRAO ,0)  AS ALIQFEDERAL ');

  Produtos.SQL.Add('FROM VENDAITEM I ');
  Produtos.SQL.Add('JOIN EMPRESAS E ON E.EMP_001=I.EMP_001 ');
  Produtos.SQL.Add('INNER JOIN MATERIAIS M ON ');
  Produtos.SQL.Add('   (M.MAT_001 = I.MAT_001) AND ');
  Produtos.SQL.Add('   (M.EMP_001 = I.EMP_001) ');
  Produtos.SQL.Add('INNER JOIN UNIDADES U ON ');
  Produtos.SQL.Add('   (U.UNI_001 = M.UNI_001) AND ');
  Produtos.SQL.Add('   (U.EMP_001 = M.EMP_001) ');
  // Produtos.SQL.Add('INNER JOIN IBPT T ON ');
  // Produtos.SQL.Add('   (T.NCM = M.NCM)');
  Produtos.SQL.Add('WHERE I.VEN_001 = :VENDA ');
  Produtos.SQL.Add('  AND I.SIT_001 NOT IN (0,1,2,3) ');
  // NAO PEGA ITENS CANCELADOS
  Produtos.SQL.Add('  AND I.EMP_001 = :EMPRESA ');
  Produtos.SQL.Add('ORDER BY I.ITE_001 ');

  Pagtos.SQL.Add('SELECT CASE WHEN F.B_TEF THEN 1 ELSE 0 END AS ORDEM_TEF ');
  Pagtos.SQL.Add(' ,F.SFI_CODIGO AS formaPagto ');
  Pagtos.SQL.Add('     , (P.ITE_003 + coalesce(P.troco_dinheiro ,0.00)) AS Valor ');
  Pagtos.SQL.Add('     , coalesce(P.troco_dinheiro ,0.00) AS troco ');
  //Pagtos.SQL.Add('     , P.ITE_003 AS Valor ');
  Pagtos.SQL.Add('     , P.ITE_001 AS nPagto ');
  Pagtos.SQL.Add('     , F.codigo_ecf ');
  Pagtos.SQL.Add('     , F.for_002 as descricao_forma ');
  Pagtos.SQL.Add('     , f.b_tef ');
  Pagtos.SQL.Add('FROM ENCERRAVENDA EV ');
  Pagtos.SQL.Add('INNER JOIN ENCERRAVENDAITEM P ON ');
  Pagtos.SQL.Add('   (P.ENC_001 = EV.ENC_001) AND ');
  Pagtos.SQL.Add('   (P.EMP_001 = EV.EMP_001) ');
  Pagtos.SQL.Add('INNER JOIN FORMAPGTO F ON ');
  Pagtos.SQL.Add('   (F.EMP_001 = P.EMP_001) AND  ');
  Pagtos.SQL.Add('   (F.FOR_001 = P.id_formapgto) ');
  Pagtos.SQL.Add('WHERE EV.VEN_001 = :VENDA ');
  Pagtos.SQL.Add('  AND EV.EMP_001 = :EMPRESA ');
  Pagtos.SQL.Add('  ORDER BY 1');


  CReceber.SQL.Add(' select documento, data_vencimento, valor from creceber ' +
    ' where id_empresa=:EMPRESA and id_venda =:VENDA  ' +
    ' order by data_vencimento, id_creceber');
  Consulta.ParamByName('VENDA').AsInteger := self.id_venda;
  Consulta.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  Produtos.ParamByName('VENDA').AsInteger := self.id_venda;
  Produtos.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  Pagtos.ParamByName('VENDA').AsInteger := self.id_venda;
  Pagtos.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  CReceber.ParamByName('VENDA').AsInteger := self.id_venda;
  CReceber.ParamByName('EMPRESA').AsInteger := self.id_empresa;

  Consulta.Open;
  Produtos.Open;
  Pagtos.Open;
  CReceber.Open;

  Consulta.First;
  Produtos.First;
  Pagtos.First;
  CReceber.First;
end;

procedure GerarECF.CalcularICMS(ps_CST: String;
  pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_Valor: Currency);
var
  lr_Base: Currency;
begin
  pr_Valor := 0;

  // tributáveis do Regime Normal
  if (ps_CST = '00') or (ps_CST = '20') or (ps_CST = '90') or
  // tributação do Simples Nacional
    (ps_CST = '101') then
  begin
    lr_Base := pr_ValorProd;

    // Redução de Base
    if (ps_CST = '20') or (ps_CST = '90') then
    begin
      lr_Base := lr_Base * (1 - (pr_RedBc / 100));
    end;

    // Calcular o valor
    pr_Valor := lr_Base * (pr_Aliq / 100);

    // Caso o valor seja muito irrisório (Ex: 0.000001), assumirá 0.01
    if (pr_Valor > 0) and (pr_Valor < 0.01) then pr_Valor := 0.01;

  end;

  // Formata o valor para duas casas decimais
  pr_Valor := roundto(pr_Valor, -2);
end;

procedure GerarECF.CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency;
  out pr_BaseCalc, pr_Valor: Currency);
begin
  pr_BaseCalc := 0;
  pr_Valor := 0;

  pr_BaseCalc := pr_ValorProd;

  pr_Valor := roundto(pr_BaseCalc * (pr_Aliq / 100), -2);
end;

procedure GerarECF.CalcularCOFINS(ps_CST: String;
  pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
begin
  pr_BaseCalc := 0;
  pr_Valor := 0;

  pr_BaseCalc := pr_ValorProd;

  pr_Valor := roundto(pr_BaseCalc * (pr_Aliq / 100), 2);
end;

function GerarECF.Cancelar(const id_venda: Integer; const id_empresa: Integer): Boolean;
var qrCons : TUniquery;
    str_sql : string;
    ultimo_cupom : integer;
begin
  qrCons := Tuniquery.create(nil);
  qrCons.connection := frmmenu.conexao;
  str_sql := format('select numero_cupom from venda where ven_001=%d and emp_001=%d',
                    [id_venda,id_empresa]);
  ExecutaConsultaSQL(qrCons, str_sql);

  try
    ultimo_cupom :=  strtoint(FACBrECF.NumCupom);
  except
    ultimo_cupom :=0;
  end;

  if ultimo_cupom = qrCons.Fields[0].asinteger then
  begin
    FACBrECF.CancelaCupom;
    ExecutaComandoSQL(format('update venda set ven_034=%d where ven_001=%d and emp_001=%d',[ultimo_cupom, id_venda,id_empresa]));
    result := true;
  end
  else
  begin
    mensagem:='Não é possível cancelar pois o ECF permite apenas o '+
              'cancelamento do último cupom emitido, porém, esta venda não foi o último movimento no ECF.';
    result := false;
  end;

end;

constructor GerarECF.Create();
begin
  numero_cupom := 0;
  try
    FACBrECF := TECF.create();
    FACBrTef := TTEF.create();

    cds_transacoes_tef := TClientDataSet.Create(nil);
    cds_transacoes_tef.FieldDefs.Clear;
    cds_transacoes_tef.FieldDefs.add('npagto',ftinteger);
    //cds_transacoes_tef.FieldDefs.add('transacao',ftString, 255);
    //cds_transacoes_tef.FieldDefs.add('rede',ftString, 255);
    //cds_transacoes_tef.FieldDefs.add('confirmacao',ftString, 255);
    //cds_transacoes_tef.FieldDefs.add('campo_11',ftString, 255);
    //cds_transacoes_tef.FieldDefs.add('valor',ftFloat);
    cds_transacoes_tef.FieldDefs.add('indice_tef',ftinteger);
    cds_transacoes_tef.CreateDataSet;

    //Vincula os eventos do componente TEF
    FACBrTef.OnAguardaResp := ACBrTEFDAguardaResp;
    FACBrTef.OnAntesCancelarTransacao := ACBrTEFDAntesCancelarTransacao;
    FACBrTef.OnAntesFinalizarRequisicao := ACBrTEFDAntesFinalizarRequisicao;
    FACBrTef.OnBloqueiaMouseTeclado := ACBrTEFDBloqueiaMouseTeclado;
    FACBrTef.OnComandaECF := ACBrTEFDComandaECF;
    FACBrTef.OnComandaECFAbreVinculado := ACBrTEFDComandaECFAbreVinculado;
    FACBrTef.OnComandaECFImprimeVia := ACBrTEFDComandaECFImprimeVia;
    FACBrTef.OnComandaECFPagamento := ACBrTEFDComandaECFPagamento;
    FACBrTef.OnComandaECFSubtotaliza := ACBrTEFDComandaECFSubtotaliza;
    FACBrTef.OnDepoisConfirmarTransacoes := ACBrTEFDDepoisConfirmarTransacoes;
    FACBrTef.OnExibeMsg := ACBrTEFDExibeMsg;
    FACBrTef.OnInfoECF := ACBrTEFDInfoECF;
    FACBrTef.OnMudaEstadoReq := ACBrTEFDMudaEstadoReq;
    FACBrTef.OnMudaEstadoResp := ACBrTEFDMudaEstadoResp;
    FACBRTef.OnRestauraFocoAplicacao := ACBrTEFDRestauraFocoAplicacao;

  except
    on E : Exception do
    begin
      self.mensagem := E.Message;
      raise;
    end;
  end;
end;

destructor GerarECF.Destroy();
begin
  inherited;
  if  FACBrECF.Ativo then FACBrECF.Desativar;

  FACBrECF.Free;
  FACBrTef.Free;

  cds_transacoes_tef.Free;
end;

function GerarECF.TotalProdutos : double;
var i : integer;
begin
  result := 0;
  for I := 0 to Length(aProdutos)-1 do
  begin
    result:= result +aProdutos[i].total_item;
  end;
end;

function GerarECF.Emitir(const id_venda: Integer;
  const id_empresa: Integer): Boolean;
var
  qrCons, qrProdutos, qrPagtos, qrCReceber: TUniQuery;
  lr_TotalLei12741, lr_TotalDescto, lr_TotalAcresc, lr_TotalVenda,
  lr_TotalDesctoCorrecao,
  lr_TotalAcrescCorrecao, lr_Total_Prod_Descto, lr_Total_Prod_Acresc,
  lr_ProdUnit, lr_ProdSubTotal, lr_ProdDescto, lr_ProdAcresc,lr_VlrEstadual,
  lr_VlrMunicipal, lr_VlrFederal,lr_ProdLei12741,lr_ICMS_Perc,
  lr_ICMS_Valor,lr_PIS_AliqProd, lr_PIS_QtdeBC, lr_PIS_BC,
  lr_PIS_Valor, lr_PISST_BC, lr_PISST_Perc, lr_PISST_Valor, lr_PISST_QtdeBC,
  lr_PISST_AliqProd, lr_COFINS_Perc, lr_COFINS_AliqProd, lr_COFINS_QtdeBC,
  lr_COFINS_Valor, lr_COFINSST_BC, lr_COFINSST_Perc, lr_COFINSST_Valor,
  lr_COFINSST_QtdeBC, lr_COFINSST_AliqProd, lr_COFINS_BC, lr_PIS_Perc: Currency;
  ls_ICMS, ls_PIS, ls_COFINS, ls_MsgAdic, str_sql, str_aux : string;
begin
  try
    self.id_venda := id_venda;
    self.id_empresa := id_empresa;

    ObterDadosVenda(qrCons, qrProdutos, qrPagtos, qrCReceber);

    self.dest_CNPJCPF := qrCons.FieldByName('CpfCnpjCliente').AsString;
    self.dest_Nome := qrCons.FieldByName('Cliente').AsString;
    self.emit_uf := qrCons.FieldByName('EMIT_UF').AsString;

    self.logradouro := qrCons.FieldByName('logradouro').AsString;
    self.numero := qrCons.FieldByName('numero').AsString;
    self.complemento := qrCons.FieldByName('complemento').AsString;
    self.bairro := qrCons.FieldByName('bairro').AsString;
    self.municipio := qrCons.FieldByName('municipio').AsString;
    self.estado := qrCons.FieldByName('estado').AsString;

    lr_TotalLei12741 := 0;
    // lr_TotalDescto := 0;
    // lr_TotalAcresc := 0;

    lr_TotalDescto := qrCons.FieldByName('Descto').AsFloat;
    lr_TotalAcresc := qrCons.FieldByName('Acresc').AsFloat;
    lr_TotalVenda := qrCons.FieldByName('total_venda').AsFloat;
    lr_TotalEstadual := 0;
    lr_TotalMunicipal := 0;
    lr_TotalFederal := 0;

    // Totais da Venda
    // corrige os acréscimos e descontos pois NFe não aceita desconto e acrescimo simultaneamente
    if (lr_TotalDescto > 0.00) and (lr_TotalAcresc > 0.00) then
    begin
      if lr_TotalDescto >= lr_TotalAcresc then
      begin
        lr_TotalDesctoCorrecao := lr_TotalDescto - lr_TotalAcresc;
        lr_TotalAcrescCorrecao := 0.00;
      end
      else
      begin
        lr_TotalAcrescCorrecao := lr_TotalAcresc - lr_TotalDescto;
        lr_TotalDesctoCorrecao := 0.00;
      end;
      lr_TotalDescto := lr_TotalDesctoCorrecao;
      lr_TotalAcresc := lr_TotalAcrescCorrecao;
    end;

    lr_Total_Prod_Descto := 0;
    lr_Total_Prod_Acresc := 0;

    // Produtos da venda
    while not qrProdutos.eof do
    begin
      lr_ProdUnit := roundto(qrProdutos.FieldByName('Unitario').AsFloat, -2);
      lr_ProdSubTotal := roundto(qrProdutos.FieldByName('Quant').AsFloat *
        lr_ProdUnit, -2);


      //se for usar desconto/acrescimo no ITEM, descomentar esse trecho...
      //rateia o desconto da nota para o item proporcional
      //if lr_TotalDescto > 0 then
      //  lr_ProdDescto :=  roundto((lr_ProdSubTotal / lr_TotalVenda) * lr_TotalDescto, -2)
      //else
      //  lr_ProdDescto:=0;
      //
      ////rateia o acrescimo da nota para o item proporcional
      //if lr_TotalAcresc > 0 then
      //  lr_ProdAcresc :=  roundto((lr_ProdSubTotal / lr_TotalVenda) * lr_TotalAcresc, -2)
      //else
      //  lr_ProdAcresc :=0;
      //
      ////acumula o valor dos descontos e acresimos nos produtos
      //lr_Total_Prod_Descto := lr_Total_Prod_Descto + lr_ProdDescto;
      //lr_Total_Prod_Acresc := lr_Total_Prod_Acresc + lr_ProdAcresc ;


      lr_VlrEstadual :=
        roundto(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQESTADUAL')
        .AsFloat / 100), -2);
      lr_VlrMunicipal :=
        roundto(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQMUNICIPAL')
        .AsFloat / 100), -2);
      lr_VlrFederal :=
        roundto(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQFEDERAL').AsFloat
        / 100), -2);

      lr_TotalEstadual := lr_TotalEstadual + lr_VlrEstadual;
      lr_TotalMunicipal := lr_TotalMunicipal + lr_VlrMunicipal;
      lr_TotalFederal := lr_TotalFederal + lr_VlrFederal;

      lr_ProdLei12741 := roundto(lr_VlrEstadual + lr_VlrMunicipal +
        lr_VlrFederal, -2);

      lr_TotalLei12741 := lr_TotalLei12741 + lr_ProdLei12741;

      // ICMS
      if qrCons.FieldByName('Regime').AsInteger = 3 then
      begin
        ls_ICMS := FormatFloat('00', qrProdutos.FieldByName('ICMS_CST').AsInteger);
      end
      else
      begin
        ls_ICMS := qrProdutos.FieldByName('ICMS_CSOSN').AsString;
      end;

      lr_ICMS_Perc := roundto(qrProdutos.FieldByName('ICMS_Perc').AsFloat, -2);
      CalcularICMS(ls_ICMS, lr_ICMS_Perc, lr_ProdSubTotal,
        roundto(qrProdutos.FieldByName('RedBc').AsCurrency, -2), lr_ICMS_Valor);

      // PIS
      ls_PIS := FormatFloat('00', qrProdutos.FieldByName('PIS_CST').AsInteger);
      lr_PIS_Perc := roundto(qrProdutos.FieldByName('PIS_Perc').AsCurrency, -2);
      lr_PIS_AliqProd := roundto(0, -2);
      lr_PIS_QtdeBC := roundto(0, -2);
      CalcularPIS(ls_PIS, lr_PIS_Perc, lr_ProdSubTotal, lr_PIS_BC,
        lr_PIS_Valor);

      // PISST
      lr_PISST_BC := roundto(0, -2);
      lr_PISST_Perc := roundto(0, -2);
      lr_PISST_Valor := roundto(0, -2);
      lr_PISST_QtdeBC := roundto(0, -2);
      lr_PISST_AliqProd := roundto(0, -2);

      // COFINS
      ls_COFINS := FormatFloat('00', qrProdutos.FieldByName('COFINS_CST')
        .AsInteger);
      lr_COFINS_Perc := roundto(qrProdutos.FieldByName('COFINS_Perc')
        .AsFloat, -2);
      lr_COFINS_AliqProd := roundto(0, -2);
      lr_COFINS_QtdeBC := roundto(0, -2);
      CalcularCOFINS(ls_PIS, lr_COFINS_Perc, lr_ProdSubTotal, lr_COFINS_BC,
        lr_COFINS_Valor);

      // COFINS ST
      lr_COFINSST_BC := roundto(0, -2);
      lr_COFINSST_Perc := roundto(0, -2);
      lr_COFINSST_Valor := roundto(0, -2);
      lr_COFINSST_QtdeBC := roundto(0, -2);
      lr_COFINSST_AliqProd := roundto(0, -2);

      self.addProduto(qrProdutos.FieldByName('codigo').AsString,
        qrProdutos.FieldByName('EAN').AsString,
        qrProdutos.FieldByName('descricao').AsString,
        qrProdutos.FieldByName('NCM').AsString,
        qrProdutos.FieldByName('CEST').AsString,
        qrProdutos.FieldByName('CFOP').AsString,
        qrProdutos.FieldByName('Unidade').AsString,
        qrProdutos.FieldByName('Quant').AsCurrency, lr_ProdUnit,lr_ProdDescto,
        lr_ProdAcresc, lr_ProdLei12741,
        qrProdutos.FieldByName('ICMS_Origem').AsString, ls_ICMS,
        lr_ICMS_Perc, lr_ICMS_Valor, ls_PIS, lr_PIS_BC, lr_PIS_Perc,
        lr_PIS_Valor, lr_PIS_QtdeBC, lr_PIS_AliqProd, lr_PISST_BC,
        lr_PISST_Perc, lr_PISST_Valor, lr_PISST_QtdeBC, lr_PISST_AliqProd,
        ls_COFINS, lr_COFINS_BC, lr_COFINS_Perc, lr_COFINS_Valor,
        lr_COFINS_QtdeBC, 0, lr_COFINS_AliqProd, lr_COFINSST_BC,
        lr_COFINSST_Perc, lr_COFINSST_Valor, lr_COFINSST_QtdeBC,
        lr_COFINSST_AliqProd, lr_ProdSubTotal );

      qrProdutos.Next;
    end;


    //se for usar desconto/acrescimo no ITEM, descomentar esse trecho...
    //aplica a correção de desconto e acrescimo no primeiro item
    //lr_TotalAcrescCorrecao := roundto(lr_TotalAcresc - lr_Total_Prod_Acresc, -2);
    //lr_TotalDesctoCorrecao := roundto(lr_TotalDescto - lr_Total_Prod_Descto, -2);
    //self.aProdutos[0].descto := self.aProdutos[0].descto + lr_TotalDesctoCorrecao;
    //self.aProdutos[0].outros := self.aProdutos[0].outros + lr_TotalAcrescCorrecao;

    //se for usar desconto/acrescimo no TOTAL, desconmentar esse trecho...
    self.totalDesconto  :=  lr_TotalDescto;
    self.totalAcrescimo :=  lr_TotalAcresc;


    // Mensagem adicional
    //ls_MsgAdic := //'Tributos Incidentes Lei Federal 12.741/12 - Total R$ ' + format('%.2f', [lr_TotalLei12741]) +
    //              ' Federal R$ ' + format('%.2f', [lr_TotalFederal]) +
    //              ' Estadual R$ ' + format('%.2f', [lr_TotalEstadual]) +
    //              ' Municipal R$ ' + format('%.2f', [lr_TotalMunicipal]) ;

    // Formas de pagamento
    self.totalTroco := 0;
    while not qrPagtos.eof do
    begin
      if FACBrECF.forma_pag_duas_casas then
        str_aux:= format('%.2d', [qrPagtos.FieldByName('codigo_ecf').AsInteger])
      else
        str_aux:= format('%d', [qrPagtos.FieldByName('codigo_ecf').AsInteger]);

      self.addFormasPagto(qrPagtos.FieldByName('formaPagto').AsInteger,
        qrPagtos.FieldByName('Valor').AsCurrency, str_aux,
        qrPagtos.FieldByName('descricao_forma').asstring,
        qrPagtos.FieldByName('b_tef').asboolean,
        qrPagtos.FieldByName('npagto').AsInteger);

      self.totalTroco := self.totalTroco + qrPagtos.FieldByName('troco').AsCurrency;
      qrPagtos.Next;
    end;

    //todos os dados coletados, emite o cupom
    if EmitirECF(codigoRet, mensagem) then
    begin
      result := true;
      str_sql:= format(' update venda set numero_cupom=%d, tipofiscal=''ECF'', ven_038=cast(%d as varchar(30)), ven_037=localtimestamp '+
                       ' where ven_001=%d and emp_001=%d',[numero_cupom, numero_cupom, id_venda, id_empresa]);
      //atualiza o numero do cupom
      ExecutaComandoSQL(str_sql);
    end
    else
      result := false;
  finally
    qrCons.Free;
    qrProdutos.Free;
    qrPagtos.Free;
  end;
end;

function GerarECF.addProduto(const codigo, EAN, descricao, NCM, CEST, CFOP,
  unidade: String; const quantidade, unitario: Currency;
  const descto, outros, vTrib12741: Currency;
  const ICMS_Origem, ICMS_CSTCSOSN: String;
  const ICMS_Perc, ICMS_Valor: Currency; const PIS_CST: String;
  const PIS_vBC, PIS_Perc, PIS_Valor, PIS_qBC, PIS_vAliqProd, PISST_vBC,
  PISST_Perc, PISST_Valor, PISST_qBC, PISST_vAliqProd: Currency;
  const COFINS_CST: String; const COFINS_vBC, COFINS_Perc, COFINS_Valor,
  COFINS_qBC, COFINS_vBCProd, COFINS_vAliqProd, COFINSST_vBC, COFINSST_Perc,
  COFINSST_Valor, COFINSST_qBC, COFINSST_vAliqProd: Currency;
  const valor_total_item : currency): Boolean;
var
  iLen : integer;
begin
  try
    iLen := Length(aProdutos);
    SetLength(aProdutos, iLen + 1);

    aProdutos[iLen].codigo := codigo;
    aProdutos[iLen].EAN := EAN;
    aProdutos[iLen].descricao := descricao;
    aProdutos[iLen].NCM := NCM;
    aProdutos[iLen].CEST := CEST;
    aProdutos[iLen].CFOP := CFOP;
    aProdutos[iLen].unidade := unidade;
    aProdutos[iLen].quantidade := quantidade;
    aProdutos[iLen].unitario := unitario;
    aProdutos[iLen].descto := descto;
    aProdutos[iLen].outros := outros;
    aProdutos[iLen].vTrib12741 := vTrib12741;
    aProdutos[iLen].ICMS_Origem := ICMS_Origem;
    aProdutos[iLen].ICMS_CSTCSOSN := ICMS_CSTCSOSN;
    aProdutos[iLen].ICMS_Perc := ICMS_Perc;
    aProdutos[iLen].ICMS_Valor := ICMS_Valor;
    aProdutos[iLen].PIS_CST := PIS_CST;
    aProdutos[iLen].PIS_vBC := PIS_vBC;
    aProdutos[iLen].PIS_Perc := PIS_Perc;
    aProdutos[iLen].PIS_Valor := PIS_Valor;
    aProdutos[iLen].PIS_qBC := PIS_qBC;
    aProdutos[iLen].PIS_vAliqProd := PIS_vAliqProd;
    aProdutos[iLen].PISST_vBC := PISST_vBC;
    aProdutos[iLen].PISST_Perc := PISST_Perc;
    aProdutos[iLen].PISST_Valor := PISST_Valor;
    aProdutos[iLen].PISST_qBC := PISST_qBC;
    aProdutos[iLen].PISST_vAliqProd := PISST_vAliqProd;
    aProdutos[iLen].COFINS_CST := COFINS_CST;
    aProdutos[iLen].COFINS_vBC := COFINS_vBC;
    aProdutos[iLen].COFINS_Perc := COFINS_Perc;
    aProdutos[iLen].COFINS_Valor := COFINS_Valor;
    aProdutos[iLen].COFINS_qBC := COFINS_qBC;
    aProdutos[iLen].COFINS_vBCProd := COFINS_vBCProd;
    aProdutos[iLen].COFINS_vAliqProd := COFINS_vAliqProd;
    aProdutos[iLen].COFINSST_vBC := COFINSST_vBC;
    aProdutos[iLen].COFINSST_Perc := COFINSST_Perc;
    aProdutos[iLen].COFINSST_Valor := COFINSST_Valor;
    aProdutos[iLen].COFINSST_qBC := COFINSST_qBC;
    aProdutos[iLen].COFINSST_vAliqProd := COFINSST_vAliqProd;
    aProdutos[iLen].total_item := valor_total_item;

    Result := True;
  except
    Result := False;
  end;
end;

function GerarECF.VerificaAliquotasCadastradas(out mensagem : string) : Boolean;
var Aliq : TACBrECFAliquota ;
    i : integer;
    flag_valido : boolean;
begin
  flag_valido := true;
  //verifica se existem todas aliquotas cadastradas no ECF
  for i := 0 to Length(aProdutos) - 1 do
  begin
    if not ((aProdutos[i].ICMS_CSTCSOSN='40') or
            (aProdutos[i].ICMS_CSTCSOSN='41') or
            (aProdutos[i].ICMS_CSTCSOSN='60') or
            (aProdutos[i].ICMS_CSTCSOSN='400') or
            (aProdutos[i].ICMS_CSTCSOSN='300') or
            (aProdutos[i].ICMS_CSTCSOSN='500') ) then
    begin
      Aliq := nil;
      Aliq := FACBrECF.AchaICMSAliquota(aProdutos[i].ICMS_Perc);

      if Aliq = nil then
      begin
        flag_valido := false;
        if mensagem <>'' then mensagem := mensagem + sLineBreak;

        mensagem := format('%sAliquota %.2f do produto %s não encontrada no ECF!' , [mensagem,aProdutos[I].ICMS_Perc, aProdutos[I].descricao ]);
      end;
    end;
  end;
  result := flag_valido;

end;

function GerarECF.VerificaFormasPagamentoCadastradas(out mensagem : string) : Boolean;
var FPG : TACBrECFFormaPagamento ;
    i : integer;
    flag_valido : boolean;
begin
  flag_valido := true;
  //verifica se existem todas formas de pagamento cadastradas no ECF
  for i := 0 to Length(aPagto) - 1 do
  begin
    FPG := nil;
    FPG := FACBrECF.AchaFPGIndice(aPagto[I].codigoECF) ;

    if FPG = nil then
    begin
      flag_valido := false;
      if mensagem <>'' then mensagem := mensagem + sLineBreak;
      
      mensagem := format('%sÍndice %s da forma de pagamento %s não encontrada no ECF!' , [mensagem,aPagto[I].codigoECF, aPagto[I].descricao ]);

    end;
  end;
  result := flag_valido;
end;

function GerarECF.addFormasPagto(const formaPagto: Integer; const valor: Currency;
  const codigoECF: string; const descricao : string; const usa_tef : boolean;
  const numero_pag : integer): Boolean;
var
  iLen: Integer;
begin
  try
    iLen := Length(aPagto);
    SetLength(aPagto, iLen + 1);

    aPagto[iLen].formaPagto := formaPagto;
    aPagto[iLen].valor := valor;
    aPagto[iLen].codigoECF  := codigoECF;
    aPagto[iLen].descricao := descricao;
    aPagto[iLen].usa_tef := usa_tef;
    aPagto[iLen].numero_pagamento := numero_pag;

    Result := True;
  except
    Result := False;
  end;
end;

function GerarECF.EmitirECF(out codigoRetorno: Integer; out Mensagem: String): Boolean;
var i : integer;
    aliq_icms, desconto_acrescimo, endereco_cliente : string;
    valor_desconto_acrescimo, valor_desconto_acrescimo_nota : double;
    flag_tef, flag_transacao_tef : boolean;
    indice_tef_aux : integer;
const  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
begin
  try
    FACBrECF.TestaPodeAbrirCupom;
    flag_tef :=false;
    //verifica se exitem aliquotas e formas de pagamento cadastradas no ecf
    if VerificaAliquotasCadastradas(Mensagem) and VerificaFormasPagamentoCadastradas(Mensagem) then
    begin
      //Abre o cupom
      if self.dest_CNPJCPF<>'' then
      //CPF, NOME, Endereço
      begin
        if trim(self.logradouro)<>'' then
          endereco_cliente:=trim(format('%s %s, %s, %s, %s',[self.logradouro,
                               Self.numero, self.bairro, self.municipio, self.estado]))
        else
          endereco_cliente:='';

        FACBrECF.AbreCupom(self.dest_CNPJCPF, self. dest_Nome, endereco_cliente);
      end
      else
        FACBrECF.AbreCupom( '', '', '' ); //CPF, NOME, Endereço

      //Lança os itens
      for I := 0 to Length(aProdutos)-1 do
      begin
        //isento
        if (aProdutos[i].ICMS_CSTCSOSN='40') or (aProdutos[i].ICMS_CSTCSOSN='400') then
        begin
          aliq_icms :='II';
        end
        //não incidência
        else if (aProdutos[i].ICMS_CSTCSOSN='41') or (aProdutos[i].ICMS_CSTCSOSN='300') then
        begin
          aliq_icms :='NN';
        end
        //Substituição
        else if  (aProdutos[i].ICMS_CSTCSOSN='60') or (aProdutos[i].ICMS_CSTCSOSN='500')then
        begin
          aliq_icms :='FF';
        end
        else
          aliq_icms := format('%.2f',[aProdutos[i].ICMS_Perc]);

        //Verifica os descontos / acrescimos dos itens
        if aProdutos[i].descto>0 then
        begin
          desconto_acrescimo :='D';
          valor_desconto_acrescimo :=aProdutos[i].descto;
        end
        else if aProdutos[i].outros>0 then
        begin
          desconto_acrescimo :='A';
          valor_desconto_acrescimo :=aProdutos[i].outros;
        end
        else
        begin
          desconto_acrescimo :='D';
          valor_desconto_acrescimo :=0;
        end;

        FACBrECF.VendeItem(aProdutos[i].codigo, //Código
                           aProdutos[i].descricao, //Descrição
                           aliq_icms, //Aliquota / Incidencia de ICMS
                           aProdutos[i].quantidade, //Quantidade
                           aProdutos[i].unitario, //valor unitario
                           valor_desconto_acrescimo, //Desconto / acrescimo
                           aProdutos[i].unidade,//Unidade
                          '$', //Tipo desconto ($ ou %)
                           desconto_acrescimo); // desconto ou acréscimo
      end;


        if totalDesconto>0 then
          valor_desconto_acrescimo_nota := totalDesconto * -1
        else if totalAcrescimo>0 then
          valor_desconto_acrescimo_nota :=totalAcrescimo
        else
          valor_desconto_acrescimo_nota :=0;

      //Faz o subtotal (desconto, observação)
      FACBrECF.SubtotalizaCupom( valor_desconto_acrescimo_nota , recproj.sInfoDevSistema2 );


      // informações que devem ir no rodapé do cupom obrigatoriamente
      // conforme a legislação do paf-ecf
      // preencha somente as informações que for utilizar, o que não foi informado
      // não será impresso

      //FACBrECF.InfoRodapeCupom.MD5 := '12345678901234567890123456789012';
      //FACBrECF.InfoRodapeCupom.Dav := '0000000001';
      //FACBrECF.InfoRodapeCupom.DavOs := '0000000002';
      //FACBrECF.InfoRodapeCupom.PreVenda := '0000000003';

      FACBrECF.InfoRodapeCupom.CupomMania := self.emit_uf ='RJ' ; // RJ
      FACBrECF.InfoRodapeCupom.MinasLegal := self.emit_uf='MG';  //MG
      FACBrECF.InfoRodapeCupom.ParaibaLegal := self.emit_uf='PB'; //PB
      FACBrECF.InfoRodapeCupom.NotaLegalDF.Imprimir := self.emit_uf = 'DF'; //DF

      if FACBrECF.InfoRodapeCupom.NotaLegalDF.Imprimir then
      begin
        FACBrECF.InfoRodapeCupom.NotaLegalDF.ProgramaDeCredito := True;
        FACBrECF.InfoRodapeCupom.NotaLegalDF.ValorICMS := 0; //implementar
        FACBrECF.InfoRodapeCupom.NotaLegalDF.ValorISS  := 0; //implementar
      end;

      // lei 12.741/2013 transparencia dos impostos
      // ACBrECF1.InfoRodapeCupom.Imposto.Texto := '...'; utilize essa propriedade se quiser personalizar o texto exemplo: Valor impostos %s (%s %) meu texto
      // ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximado := 1.23;  // informar o valor aproximado calculado a partir dos itens
      // ACBrECF1.InfoRodapeCupom.Imposto.Fonte           := 'IBPT'; // informar a fonte de onde veio a informação para calculo

      // Novo formato da lei de transparência que divide a informação.
      FACBrECF.InfoRodapeCupom.Imposto.ValorAproximadoFederal   := lr_TotalFederal;  // informar o valor aproximado calculado a partir dos itens
      FACBrECF.InfoRodapeCupom.Imposto.ValorAproximadoEstadual  := lr_TotalEstadual;  // informar o valor aproximado calculado a partir dos itens
      FACBrECF.InfoRodapeCupom.Imposto.ValorAproximadoMunicipal := lr_TotalMunicipal;  // informar o valor aproximado calculado a partir dos itens
      FACBrECF.InfoRodapeCupom.Imposto.Fonte := 'IBPT/FECOMERCIO (aWd7S8)'; // informar a fonte de onde veio a informação para calculo e a Chave se vier da tabela do IBPT
      FACBrECF.InfoRodapeCupom.Imposto.ModoCompacto := true; //Faz com que a impressão seja em apenas duas linhas;

      // ER 02.01 - Requisito XXVIII item 8
      FACBrECF.InfoRodapeCupom.NF := '';

      //faz os meios de pagamento
      indice_tef_aux := 0;
      flag_transacao_tef := true;
      for i := 0 to Length(aPagto) - 1 do
      begin
        if not aPagto[I].usa_tef then
        begin
          FACBrECF.EfetuaPagamento(aPagto[I].codigoECF, //código pagamento
                                 aPagto[I].valor, //valor
                                 '', false); //Observacao, Cupom vinculado
        end
        else //faz o pagamento por meio do TEF
        begin
          flag_tef := true;
          if not FACBrTef.Inicializado(FACBrTef.GPAtual) then
            FACBrTef.Inicializar(FACBrTef.GPAtual);

          FACBrTef.b_cancelado := false;
          FACBrTef.numero_pagamento_atual := aPagto[I].numero_pagamento;

          cds_transacoes_tef.Append;
          cds_transacoes_tef.FieldByName('indice_tef').AsInteger := indice_tef_aux;
          cds_transacoes_tef.FieldByName('npagto').AsInteger := aPagto[I].numero_pagamento;
          cds_transacoes_tef.post;

          flag_transacao_tef := FACBrTef.CRT( aPagto[I].valor ,aPagto[I].codigoECF, FACBrECF.NumCOO);

          if not flag_transacao_tef then
          begin
            FACBrTef.CancelarTransacoesPendentes;
            raise Exception.Create('Operação TEF cancelada!');
          end
          else
          begin
          end;
          indice_tef_aux := indice_tef_aux +1;
        end;
      end;

      //Fecha o cupom... se for tef, as rotinas do tef já fecham o cupom...
      if not flag_tef then
         FACBrECF.FechaCupom(recproj.sInfoDevSistema1, 0);
      numero_cupom :=  strtoint(FACBrECF.NumCupom);

    end
    else
      result :=false;

  except
    on E : Exception do
    begin
      result :=false;
      Mensagem := 'Erro : '+ E.Message + sLineBreak +
                  'Status do ECF: ' + Estados[ FACBrECF.Estado ];
                  //'Log TEF: '+ StringListToString(FACBrTEF.log);  //
      if FACBrECF.Estado in [estVenda, estPagamento] then FACBrECF.CancelaCupom;
    end;
  end;
end;



end.
