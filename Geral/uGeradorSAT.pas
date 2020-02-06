 unit uGeradorSAT;

interface

uses Uni, SysUtils, ACBrSAT, ACBrSATExtratoFortesFr, pcnConversao, Classes;

type
   GerarCFe = class
   private
      iVen_001: Integer;
      iEmp_001: Integer;

      procedure ObterDadosVenda(out Consulta, Produtos, Pagtos, CReceber: TUniQuery);
      procedure ObterDadosCFe(out Consulta: TUniQuery);

      procedure AtualizarSituacaoCFe(const Chave: String; const ChaveCanc: String; const serieSAT: String;
         const numSessao: Integer; const situacao: String; const numCFe: Integer; DataHoraEmissao: TDateTime);
      procedure AtualizarDadosVendaCFe(const ps_XML: String; const qrCab, qrProd, qrPagto: TuniQuery; tipo_sat_mfe : string);

      procedure CalcularICMS(ps_CST: String; pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_Valor: Currency);
      procedure CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
      procedure CalcularCOFINS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);

   public
      mensagem : string;
      codigoRet: integer;
      Constructor Create();
      Destructor Destroy(); Override;

      function Autorizar(const Ven_001: Integer; const Emp_001: Integer): Boolean;
      function Cancelar(const Ven_001: Integer; const Emp_001: Integer): Boolean;
      function Consultar(const Ven_001: Integer; const Emp_001: Integer): Boolean;
   end;

implementation

{ GerarCFe }

uses uComunicadorServerSAT, Vcl.Dialogs, uMenu, uFuncoes, uPDVFechamento;

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

function Arredondar(pr_Valor: Currency; pi_CasasDec: Integer): Currency;
var
  ls_Formato: String;
begin
   if pi_CasasDec <= 0 then begin
      ls_Formato := '0';
   end else begin
      ls_Formato := '0.' + ReplicarCaracter('0', pi_CasasDec);
   end;

   Result := StrToFloat(FormatFloat(ls_Formato, pr_Valor));
end;

procedure GerarCFe.AtualizarSituacaoCFe(const Chave, ChaveCanc, serieSAT: String; const numSessao: Integer;
   const situacao: String; const numCFe: Integer; DataHoraEmissao: TDateTime);
var
  UpdSQL: TUniQuery;
begin
   try
      UpdSQL := TUniQuery.Create(nil);
      UpdSQL.Connection := frmMenu.conexao;

      UpdSQL.SQL.Add('UPDATE VENDA SET ');
      UpdSQL.SQL.Add('       VEN_033 = :SESSAO ');
      UpdSQL.SQL.Add('     , VEN_036 = :SERIE ');
      UpdSQL.ParamByName('SESSAO').AsInteger := numSessao;
      UpdSQL.ParamByName('SERIE').AsString := serieSAT;

      if Chave <> '' then begin
         UpdSQL.SQL.Add('     , VEN_038 = :CHAVEAUT ');
         UpdSQL.SQL.Add('     , VEN_037 = :DHEMISSAO ');
         UpdSQL.SQL.Add('     , numero_cupom = :NUMCFE ');
         UpdSQL.ParamByName('NUMCFE').AsInteger := numCFe;
         UpdSQL.ParamByName('DHEMISSAO').AsDateTime := DataHoraEmissao;
         UpdSQL.ParamByName('CHAVEAUT').AsString := Chave;
      end;

      if ChaveCanc <> '' then begin
         UpdSQL.SQL.Add('     , VEN_034 = :CHAVECANC ');
         UpdSQL.ParamByName('CHAVECANC').AsString := ChaveCanc;
      end;

      UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
      UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');
      UpdSQL.ParamByName('VENDA').AsInteger := iVen_001;
      UpdSQL.ParamByName('EMP').AsInteger := iEmp_001;

      UpdSQL.ExecSQL;
   except
      on e: exception do
      begin
         ShowMessage('AtualizarSituacaoCFe erro => ' + E.Message);
      end;
   end;

   UpdSQL.Free;
end;

function GerarCFe.Autorizar(const Ven_001, Emp_001: Integer): Boolean;
var
  autCFe: AutorizarCFe;
  qrCons, qrProdutos, qrPagtos, qrCReceber: TUniQuery;
  XML, serieEquip, Chave, ls_ICMS, ls_PIS, ls_COFINS, ls_MsgAdic,
  ls_MsgAdic_cReceber : string;
  numSessao, numCFe: Integer;
  dataHoraEmis: TDateTime;
  lr_TotalLei12741, lr_TotalDescto, lr_TotalVenda, lr_TotalAcresc, lr_ProdDescto, lr_ProdAcresc, lr_ProdLei12741, lr_ICMS_Perc,
  lr_ICMS_Valor, lr_ProdSubTotal, lr_PIS_BC, lr_PIS_Perc, lr_PIS_Valor, lr_PIS_QtdeBC, lr_PIS_AliqProd,
  lr_PISST_BC, lr_PISST_Perc, lr_PISST_Valor, lr_PISST_QtdeBC, lr_PISST_AliqProd, lr_COFINS_Perc, lr_COFINS_AliqProd,
  lr_COFINS_QtdeBC, lr_COFINS_BC, lr_COFINS_Valor, lr_COFINSST_BC, lr_COFINSST_Perc, lr_COFINSST_Valor,
  lr_COFINSST_QtdeBC, lr_COFINSST_AliqProd, lr_VlrEstadual, lr_VlrMunicipal, lr_VlrFederal, lr_TotalEstadual,
  lr_TotalMunicipal, lr_TotalFederal, lr_ProdUnit, lr_TotalDesctoCorrecao, lr_TotalAcrescCorrecao: Currency;
  retorno: String;
 begin
   try
      iEmp_001 := Emp_001;
      iVen_001 := Ven_001;

      ls_MsgAdic := '';

      autCFe := AutorizarCFe.create();

      ObterDadosVenda(qrCons, qrProdutos, qrPagtos, qrCReceber);

      { Dados da Venda }

      if qrCons.FieldByName('CpfCnpjCliente').AsString <> '' then
          autCFe.addDestinatario(qrCons.FieldByName('CpfCnpjCliente').AsString, qrCons.FieldByName('Cliente').AsString)
      else
      begin
        retorno := InputBox('CPF/CNPJ', 'Digite o CPF/CNPJ', '');
//        frmPDVFechamento.ACBrValidador1.Validar := retorno;


        autCFe.addDestinatario(retorno,'');
      end;

      autCFe.addEmitente(qrCons.FieldByName('CpfCnpjLoja').AsString, qrCons.FieldByName('InscEst').AsString,
         qrCons.FieldByName('InscMun').AsString, qrCons.FieldByName('Regime').AsInteger);

      autCFe.addLocalEntrega(qrCons.FieldByName('logradouro').AsString, qrCons.FieldByName('numero').AsString,
         qrCons.FieldByName('complemento').AsString, qrCons.FieldByName('bairro').AsString,
         qrCons.FieldByName('municipio').AsString, qrCons.FieldByName('estado').AsString);

      lr_TotalLei12741 := 0;

      lr_TotalDescto := qrCons.FieldByName('Descto').AsFloat;
      lr_TotalAcresc := qrCons.FieldByName('Acresc').AsFloat;
      lr_TotalVenda  := qrCons.FieldByName('total_venda').AsFloat;

      lr_TotalEstadual := 0;
      lr_TotalMunicipal := 0;
      lr_TotalFederal := 0;

      { Produtos da venda }
      while not qrProdutos.eof do begin
         //Pega o desconto e o acrescimo do item - Bruno 08/02/2018
         lr_ProdDescto := Arredondar(qrProdutos.FieldByName('Descto').AsCurrency, 2);
         lr_ProdAcresc := Arredondar(qrProdutos.FieldByName('Acresc').AsCurrency, 2);

         lr_ProdUnit := Arredondar(qrProdutos.FieldByName('Unitario').AsCurrency, 2);
         lr_ProdSubTotal := Arredondar(qrProdutos.FieldByName('Quant').AsCurrency * lr_ProdUnit, 2) - lr_ProdDescto + lr_ProdAcresc;

         lr_VlrEstadual  := Arredondar(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQESTADUAL').AsCurrency / 100), 2);
         lr_VlrMunicipal := Arredondar(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQMUNICIPAL').AsCurrency / 100), 2);
         lr_VlrFederal   := Arredondar(lr_ProdSubTotal * (qrProdutos.FieldByName('ALIQFEDERAL').AsCurrency / 100), 2);

         lr_TotalEstadual  := lr_TotalEstadual + lr_VlrEstadual;
         lr_TotalMunicipal := lr_TotalMunicipal + lr_VlrMunicipal;
         lr_TotalFederal   := lr_TotalFederal + lr_VlrFederal;

         lr_ProdLei12741 := Arredondar(lr_VlrEstadual + lr_VlrMunicipal + lr_VlrFederal, 2);

         { Acumulando dados do total da venda }
         lr_TotalLei12741 := lr_TotalLei12741 + lr_ProdLei12741;

         { ICMS }
         if qrCons.FieldByName('Regime').AsInteger = 3 then begin
            ls_ICMS := FormatFloat('00', qrProdutos.FieldByName('ICMS_CST').AsInteger);
         end else begin
            ls_ICMS := qrProdutos.FieldByName('ICMS_CSOSN').AsString;
         end;

         lr_ICMS_Perc := Arredondar(qrProdutos.FieldByName('ICMS_Perc').AsCurrency, 2);
         CalcularICMS(ls_ICMS, lr_ICMS_Perc, lr_ProdSubTotal,
           Arredondar(qrProdutos.FieldByName('RedBc').AsCurrency, 2), lr_ICMS_Valor);

         { PIS }
         ls_PIS := FormatFloat('00', qrProdutos.FieldByName('PIS_CST').AsInteger);
         lr_PIS_Perc := Arredondar(qrProdutos.FieldByName('PIS_Perc').AsCurrency, 2);
         lr_PIS_AliqProd := Arredondar(0, 2);
         lr_PIS_QtdeBC := Arredondar(0, 2);
         CalcularPIS(ls_PIS, lr_PIS_Perc, lr_ProdSubTotal, lr_PIS_BC, lr_PIS_Valor);

         { PISST }
         lr_PISST_BC := Arredondar(0, 2);
         lr_PISST_Perc := Arredondar(0, 2);
         lr_PISST_Valor := Arredondar(0, 2);
         lr_PISST_QtdeBC := Arredondar(0, 2);
         lr_PISST_AliqProd := Arredondar(0, 2);

         { COFINS }
         ls_COFINS := FormatFloat('00', qrProdutos.FieldByName('COFINS_CST').AsInteger);
         lr_COFINS_Perc := Arredondar(qrProdutos.FieldByName('COFINS_Perc').AsCurrency, 2);
         lr_COFINS_AliqProd := Arredondar(0, 2);
         lr_COFINS_QtdeBC := Arredondar(0, 2);
         CalcularCOFINS(ls_PIS, lr_COFINS_Perc, lr_ProdSubTotal, lr_COFINS_BC, lr_COFINS_Valor);

         { COFINS ST }
         lr_COFINSST_BC := Arredondar(0, 2);
         lr_COFINSST_Perc := Arredondar(0, 2);
         lr_COFINSST_Valor := Arredondar(0, 2);
         lr_COFINSST_QtdeBC := Arredondar(0, 2);
         lr_COFINSST_AliqProd := Arredondar(0, 2);

         autCFe.addProduto(qrProdutos.FieldByName('codigo').AsString, qrProdutos.FieldByName('EAN').AsString,
            qrProdutos.FieldByName('descricao').AsString, qrProdutos.FieldByName('NCM').AsString,
            qrProdutos.FieldByName('CEST').AsString,
            qrProdutos.FieldByName('CFOP').AsString, qrProdutos.FieldByName('Unidade').AsString,
            qrProdutos.FieldByName('Quant').AsCurrency, lr_ProdUnit,
            qrProdutos.FieldByName('ArrendTrunc').AsString, lr_ProdDescto, lr_ProdAcresc, lr_ProdLei12741,
            qrProdutos.FieldByName('InfAdic').AsString, qrProdutos.FieldByName('ICMS_Origem').AsString,
            ls_ICMS, lr_ICMS_Perc, lr_ICMS_Valor, ls_PIS, lr_PIS_BC, lr_PIS_Perc, lr_PIS_Valor, lr_PIS_QtdeBC,
            lr_PIS_AliqProd, lr_PISST_BC, lr_PISST_Perc, lr_PISST_Valor, lr_PISST_QtdeBC, lr_PISST_AliqProd,
            ls_COFINS, lr_COFINS_BC, lr_COFINS_Perc, lr_COFINS_Valor, lr_COFINS_QtdeBC, 0, lr_COFINS_AliqProd,
            lr_COFINSST_BC, lr_COFINSST_Perc, lr_COFINSST_Valor, lr_COFINSST_QtdeBC, lr_COFINSST_AliqProd,
            qrProdutos.FieldByName('codigo_anp').AsString);

         qrProdutos.Next;
      end;

      { Totais da Venda }
      //corrige os acréscimos e descontos pois o SAT não aceita desconto e acrescimo simultaneamente
      if (lr_TotalDescto>0.00) and (lr_TotalAcresc>0.00)  then
      begin
        if lr_TotalDescto>=lr_TotalAcresc then
        begin
          lr_TotalDesctoCorrecao:= lr_TotalDescto - lr_TotalAcresc;
          lr_TotalAcrescCorrecao:= 0.00;
        end
        else
        begin
          lr_TotalAcrescCorrecao := lr_TotalAcresc -  lr_TotalDescto;
          lr_TotalDesctoCorrecao := 0.00;
        end;
        autCFe.addTotais(lr_TotalDesctoCorrecao, lr_TotalAcrescCorrecao, lr_TotalLei12741, lr_TotalVenda );
      end
      else
        autCFe.addTotais(lr_TotalDescto, lr_TotalAcresc, lr_TotalLei12741, lr_TotalVenda );

      if qrCReceber.RecordCount>0 then
      begin
        ls_MsgAdic_cReceber := 'Documento    Vencimento    Valor;';
        while not qrCReceber.eof do
        begin
          ls_MsgAdic_cReceber := ls_MsgAdic_cReceber + format('%s%sR$ %.2f;',
                                  [AcertaTexto(qrCReceber.FieldByName('documento').AsString, 'E', 16, '.') ,
                                   AcertaTexto(FormatDateTime('dd/mm/yyyy',qrCReceber.FieldByName('data_vencimento').AsDateTime), 'E', 16, '.' ),
                                   qrCReceber.FieldByName('valor').AsFloat ]);
          qrCReceber.next;
        end;
        ls_MsgAdic_cReceber := ls_MsgAdic_cReceber + ' ;' ;
      end
      else
        ls_MsgAdic_cReceber:='';

      {  Mensagem adicional }
      ls_MsgAdic := 'Tributos Incidentes Lei Federal 12.741/12 - Total R$ ' + format('%.2f', [lr_TotalLei12741]) +
        ' ;Federal R$ ' + format('%.2f', [lr_TotalFederal]) + ' ;Estadual R$ ' + format('%.2f', [lr_TotalEstadual]) +
        ' ;Municipal R$ ' + format('%.2f', [lr_TotalMunicipal]);

      autCFe.addGeral(qrCons.FieldByName('numCaixa').AsInteger, qrCons.FieldByName('Ambiente').AsString,
         ls_MsgAdic_cReceber + ls_MsgAdic);

      { Formas de pagamento }
      while not qrPagtos.eof do begin
         autCFe.addFormasPagto(qrPagtos.FieldByName('formaPagto').AsInteger,
            qrPagtos.FieldByName('Valor').AsCurrency,
            qrPagtos.FieldByName('admCartao').AsInteger);
         qrPagtos.Next;
      end;

      { Transmite os dados para o sat }
      if autCFe.transmitir(numSessao, codigoRet, self.mensagem, chave, serieEquip, numCFe, dataHoraEmis, XML, autCFe.tipo_fiscal) then
      begin

        AtualizarSituacaoCFe(Chave, '', serieEquip, numSessao, 'T', numCFe, dataHoraEmis);
        AtualizarDadosVendaCFe(XML, qrCons, qrProdutos, qrPagtos, autCFe.tipo_fiscal );
        Result := true;
      end else
      begin
        Result := false;
      end;
   finally
      autCFe.Free;
      qrCons.Free;
      qrProdutos.Free;
      qrPagtos.Free;
   end;
end;

procedure GerarCFe.AtualizarDadosVendaCFe(const ps_XML: String;
             const qrCab, qrProd, qrPagto: TuniQuery; tipo_sat_mfe : string);
var
  UpdSQL: TUniQuery;
  FAcbrSAT: TAcbrSAT;
  li_Cont: Integer;
begin
   try
      UpdSQL := TUniQuery.Create(nil);
      UpdSQL.Connection := frmMenu.conexao;

      FAcbrSAT := TACBrSAT.Create(Nil);

      FAcbrSAT.CFe.AsXMLString := ps_XML;

      UpdSQL.SQL.Add('UPDATE VENDA SET ');
      UpdSQL.SQL.Add('   PDV_CODIGO = :PDV ');
      UpdSQL.SQL.Add(' , CRT_CODIGO = :CRT ');
      UpdSQL.SQL.Add(' , TIPOFISCAL = :TIPO_FISCAL ');
      UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
      UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');

      UpdSQL.ParamByName('VENDA').AsInteger := iVen_001;
      UpdSQL.ParamByName('EMP').AsInteger := iEmp_001;

      UpdSQL.ParamByName('PDV').AsInteger := qrCab.FieldByName('numCaixa').AsInteger;
      UpdSQL.ParamByName('CRT').AsInteger := Integer(FAcbrSAT.CFe.Emit.cRegTrib);
      UpdSQL.ParamByName('TIPO_FISCAL').asstring := tipo_sat_mfe;

      UpdSQL.ExecSQL;

      UpdSQL.SQL.Clear;

      UpdSQL.SQL.Add('UPDATE ENCERRAVENDA SET ');
      UpdSQL.SQL.Add('       VEN_SATSTATUS = :STAT ');
      UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
      UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');

      UpdSQL.ParamByName('VENDA').AsInteger := iVen_001;
      UpdSQL.ParamByName('EMP').AsInteger := iEmp_001;

      UpdSQL.ParamByName('STAT').AsInteger := 23;

      UpdSQL.ExecSQL;

      UpdSQL.SQL.Clear;

      UpdSQL.SQL.Add('UPDATE VENDAITEM SET ');
      UpdSQL.SQL.Add('       ORM_CODIGO = :ORIGEM ');
      UpdSQL.SQL.Add('     , CST_CONSUMIDOR = :ICM_CST ');
      UpdSQL.SQL.Add('     , ICMS_PERC = :ICM_PERC ');
      UpdSQL.SQL.Add('     , ICMS_VALOR = :ICM_VALOR ');
      UpdSQL.SQL.Add('     , PIS_CODIGO_SAIDA = :PIS_CST ');
      UpdSQL.SQL.Add('     , PIS_PERC = :PIS_PERC ');
      UpdSQL.SQL.Add('     , PIS_VALOR = :PIS_VALOR ');
      UpdSQL.SQL.Add('     , COF_CODIGO_SAIDA = :COF_CST ');
      UpdSQL.SQL.Add('     , COFINS_PERC = :COF_PERC ');
      UpdSQL.SQL.Add('     , COFINS_VALOR = :COF_VALOR ');
      UpdSQL.SQL.Add('     , MOD_CODIGO = :MODALID ');
      UpdSQL.SQL.Add('     , CFOP_CONSUMIDOR = :CFOP ');
      UpdSQL.SQL.Add('     , REDBASECALCST = :REDBC ');
      UpdSQL.SQL.Add('     , REDBASECALCICMS = :REDBCST ');
      UpdSQL.SQL.Add('     , CSO_CODIGO = :CSOSN ');
      UpdSQL.SQL.Add('WHERE VEN_001 = :VENDA ');
      UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');
      UpdSQL.SQL.Add('  AND ITE_001 = :ITEM ');

      for li_Cont := 0 to FAcbrSAT.CFe.Det.Count - 1 do
      begin
         qrProd.RecNo := li_Cont + 1;

         UpdSQL.ParamByName('VENDA').AsInteger := iVen_001;
         UpdSQL.ParamByName('EMP').AsInteger := iEmp_001;
         UpdSQL.ParamByName('ITEM').AsInteger := qrProd.FieldByName('nItem').AsInteger;

         if FAcbrSAT.CFe.Emit.cRegTrib = RTRegimeNormal then begin
            UpdSQL.ParamByName('ICM_CST').AsString := CSTICMSToStr(FAcbrSAT.CFe.Det.Items[0].Imposto.ICMS.CST);
            UpdSQL.ParamByName('CSOSN').Clear;
         end else begin
            UpdSQL.ParamByName('ICM_CST').Clear;
            UpdSQL.ParamByName('CSOSN').AsString := CSOSNICMSToStr(FAcbrSAT.CFe.Det.Items[0].Imposto.ICMS.CSOSN);
         end;

         UpdSQL.ParamByName('ORIGEM').AsString := OrigToStr(FAcbrSAT.CFe.Det.Items[0].Imposto.ICMS.orig);
         UpdSQL.ParamByName('ICM_PERC').AsCurrency := FAcbrSAT.CFe.Det.Items[0].Imposto.ICMS.pICMS;
         UpdSQL.ParamByName('ICM_VALOR').AsCurrency := FAcbrSAT.CFe.Det.Items[0].Imposto.ICMS.vICMS;
         UpdSQL.ParamByName('PIS_CST').AsString := CSTPISToStr(FAcbrSAT.CFe.Det.Items[0].Imposto.PIS.CST);
         UpdSQL.ParamByName('PIS_PERC').AsCurrency := FAcbrSAT.CFe.Det.Items[0].Imposto.PIS.pPIS;
         UpdSQL.ParamByName('PIS_VALOR').AsCurrency := FAcbrSAT.CFe.Det.Items[0].Imposto.PIS.vPIS;
         UpdSQL.ParamByName('COF_CST').AsString := CSTCOFINSToStr(FAcbrSAT.CFe.Det.Items[0].Imposto.COFINS.CST);
         UpdSQL.ParamByName('COF_PERC').AsCurrency := FAcbrSAT.CFe.Det.Items[0].Imposto.COFINS.pCOFINS;
         UpdSQL.ParamByName('COF_VALOR').AsCurrency := FAcbrSAT.CFe.Det.Items[0].Imposto.COFINS.vCOFINS;
         UpdSQL.ParamByName('MODALID').AsInteger := qrProd.FieldByName('Modalidade').AsInteger;
         UpdSQL.ParamByName('CFOP').AsString := FAcbrSAT.CFe.Det.Items[0].Prod.CFOP;
         UpdSQL.ParamByName('REDBC').AsCurrency := qrProd.FieldByName('RedBc').AsCurrency;
         UpdSQL.ParamByName('REDBCST').AsCurrency := qrProd.FieldByName('RedBcSt').AsCurrency;

         UpdSQL.ExecSQL;
      end;

      UpdSQL.SQL.Clear;

      UpdSQL.SQL.Add('UPDATE ENCERRAVENDAITEM SET ');
      UpdSQL.SQL.Add('       SFI_CODIGO = :FIN_NFC ');
      UpdSQL.SQL.Add('WHERE ENC_001 = :VENDA ');
      UpdSQL.SQL.Add('  AND EMP_001 = :EMP ');
      UpdSQL.SQL.Add('  AND ITE_001 = :FIN_VND ');

      for li_Cont := 0 to FAcbrSAT.CFe.Pagto.Count - 1 do
      begin
         qrPagto.RecNo := li_Cont + 1;

         UpdSQL.ParamByName('VENDA').AsInteger := qrCab.FieldByName('ENC_001').AsInteger;
         UpdSQL.ParamByName('EMP').AsInteger := iEmp_001;

         UpdSQL.ParamByName('FIN_VND').AsInteger := qrPagto.FieldByName('nPagto').AsInteger;
         UpdSQL.ParamByName('FIN_NFC').AsInteger := qrPagto.FieldByName('formaPagto').AsInteger;
         UpdSQL.ExecSQL;
      end;
   except
      on e: exception do
      begin
         ShowMessage('AtualizarDadosVendaCFe erro => ' + E.Message);
      end;
   end;

   FAcbrSAT.Free;
   UpdSQL.Free;
end;

procedure GerarCFe.CalcularCOFINS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
begin
   pr_BaseCalc := 0;
   pr_Valor := 0;

   pr_BaseCalc := pr_ValorProd;

   pr_Valor := Arredondar(pr_BaseCalc * (pr_Aliq / 100), 2);
end;

procedure GerarCFe.CalcularICMS(ps_CST: String; pr_Aliq, pr_ValorProd, pr_RedBc: Currency; out pr_Valor: Currency);
var
  lr_Base: Currency;
begin
   pr_Valor := 0;

   // tributáveis do Regime Normal
   if (ps_CST = '00') or
      (ps_CST = '20') or
      (ps_CST = '90') or
   // tributação do Simples Nacional
      (ps_CST = '101')then begin
      lr_Base := pr_ValorProd;

      // Redução de Base
      if (ps_CST = '20') or
         (ps_CST = '90') then begin

         lr_Base := lr_Base * (1 - (pr_RedBc / 100));
      end;

      // Calcular o valor
      pr_Valor := lr_Base * (pr_Aliq / 100);

      // Caso o valor seja muito irrisório (Ex: 0.000001), assumirá 0.01
      if (pr_Valor > 0) and
         (pr_Valor < 0.01) then begin

         pr_Valor := 0.01;
      end;
   end;

   // Formata o valor para duas casas decimais
   pr_Valor := Arredondar(pr_Valor, 2);
end;

procedure GerarCFe.CalcularPIS(ps_CST: String; pr_Aliq, pr_ValorProd: Currency; out pr_BaseCalc, pr_Valor: Currency);
begin
   pr_BaseCalc := 0;
   pr_Valor := 0;

   pr_BaseCalc := pr_ValorProd;

   pr_Valor := Arredondar(pr_BaseCalc * (pr_Aliq / 100), 2);
end;

function GerarCFe.Cancelar(const Ven_001, Emp_001: Integer): Boolean;
var
  cancCFe: CancelarCFe;
  qrCons: TUniQuery;
  numSessao: Integer;
  chave: string;
  serieEquip: string;
begin
   try
      iEmp_001 := Emp_001;
      iVen_001 := Ven_001;

      cancCFe := CancelarCFe.create();

      ObterDadosCFe(qrCons);

      cancCFe.addGeral(qrCons.FieldByName('numCaixa').AsInteger, qrCons.FieldByName('Ambiente').AsString,
         qrCons.FieldByName('EmitCNPJ').AsString, qrCons.FieldByName('DataHoraEmissao').AsDateTime,
         qrCons.FieldByName('ChaveAut').AsString, qrCons.FieldByName('DestCNPJCPF').AsString);

      if cancCFe.transmitir(numSessao, codigoRet, mensagem, chave, serieEquip) then
      begin
         AtualizarSituacaoCFe('', Chave, serieEquip, numSessao, 'C', 0, 0);
         Result := true;
      end
      else
      begin
         Result := false;
      end;

   finally
     cancCFe.Free;
     qrCons.Free;
   end;
end;

function GerarCFe.Consultar(const Ven_001, Emp_001: Integer): Boolean;
var
  consCFe: ConsultarCFe;
  qrCons: TUniQuery;
  numSessao: Integer;
  codigoRet: Integer;
  mensagem: string;
  chave: string;
  serieEquip: string;
begin
   try
      iEmp_001 := Emp_001;
      iVen_001 := Ven_001;

      consCFe := ConsultarCFe.create();

      ObterDadosCFe(qrCons);

      consCFe.addGeral(qrCons.FieldByName('Ambiente').AsString, qrCons.FieldByName('Sessao').AsInteger);

      consCFe.transmitir(numSessao, codigoRet, mensagem, chave, serieEquip);

      ShowMessage(IntToStr(codigoRet) + #13 + mensagem);
   finally
     consCFe.Free;
     qrCons.Free;
   end;
end;

constructor GerarCFe.Create();
begin
   inherited;

end;

destructor GerarCFe.Destroy();
begin
  inherited;
end;

procedure GerarCFe.ObterDadosCFe(out Consulta: TUniQuery);
begin
   Consulta := TUniQuery.Create(nil);
   Consulta.Connection := frmMenu.conexao;

   Consulta.SQL.Add('SELECT ''P'' AS Ambiente '); // Arrumar
   Consulta.SQL.Add('     , V.VEN_033 AS Sessao ');
   Consulta.SQL.Add('     , V.VEN_034 AS Chave ');
   Consulta.SQL.Add('     , 1 AS numCaixa '); // Arrumar
   Consulta.SQL.Add('     , E.EMP_004 AS EmitCNPJ ');
   Consulta.SQL.Add('     , V.VEN_037 AS DataHoraEmissao ');
   Consulta.SQL.Add('     , V.VEN_038 AS ChaveAut ');
   Consulta.SQL.Add('     , EV.VEN_CPFCONSUM AS DestCNPJCPF ');
//   Consulta.SQL.Add('     , null AS DestCNPJCPF ');
   Consulta.SQL.Add('FROM VENDA V ');
   Consulta.SQL.Add('LEFT JOIN CLIENTES C ON ');
   Consulta.SQL.Add('   (C.EMP_001 = V.EMP_001) AND ');
   Consulta.SQL.Add('   (C.CLI_001 = V.CLI_001) ');
   Consulta.SQL.Add('INNER JOIN ENCERRAVENDA EV ON ');
   Consulta.SQL.Add('   (EV.VEN_001 = V.VEN_001) AND ');
   Consulta.SQL.Add('   (EV.EMP_001 = V.EMP_001) ');
   Consulta.SQL.Add('INNER JOIN EMPRESAS E ON ');
   Consulta.SQL.Add('   (E.EMP_001 = V.EMP_001) ');
   Consulta.SQL.Add('WHERE V.VEN_001 = :VENDA ');
   Consulta.SQL.Add('  AND V.EMP_001 = :EMPRESA ');

   Consulta.ParamByName('VENDA').AsInteger := iVen_001;
   Consulta.ParamByName('EMPRESA').AsInteger := iEmp_001;

   Consulta.Open;
   Consulta.First;
end;

procedure GerarCFe.ObterDadosVenda(out Consulta, Produtos, Pagtos, CReceber: TUniQuery);
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
   Consulta.SQL.Add('SELECT ''P'' AS Ambiente '); // Arrumar
   Consulta.SQL.Add('     , 1 AS NumCaixa '); // Arrumar
   Consulta.SQL.Add('     , coalesce(EV.VEN_CPFCONSUM, c.cli_004) AS CpfCnpjCliente ');
   Consulta.SQL.Add('     , coalesce(v.nome_cliente, c.cli_002) AS Cliente '); // Arrumar - Talvez não use
   Consulta.SQL.Add('     , EM.EMP_004 AS CpfCnpjLoja ');
   Consulta.SQL.Add('     , EM.EMP_005 AS InscEst ');
   Consulta.SQL.Add('     , EM.EMP_006 AS InscMun ');
   Consulta.SQL.Add('     , COALESCE(EM.CRT_CODIGO, 0) AS Regime ');

   Consulta.SQL.Add('     , c.cep_004 AS logradouro ');    //logradouro de entrega
   Consulta.SQL.Add('     , c.cli_008 AS numero ');
   Consulta.SQL.Add('     , c.cli_009 AS complemento ');
   Consulta.SQL.Add('     , c.cep_003 AS bairro ');
   Consulta.SQL.Add('     , c.cidade_desc AS municipio ');
   Consulta.SQL.Add('     , c.uf AS estado ');

   Consulta.SQL.Add('     , EV.ENC_007 AS Descto ');
   Consulta.SQL.Add('     , EV.ENC_006 AS Acresc ');
   Consulta.SQL.Add('     , EV.ENC_001');
   Consulta.SQL.Add('     , V.ven_009 as total_venda');
   Consulta.SQL.Add('FROM VENDA V ');
   Consulta.SQL.Add('INNER JOIN ENCERRAVENDA EV ON ');
   Consulta.SQL.Add('   (EV.VEN_001 = V.VEN_001) AND ');
   Consulta.SQL.Add('   (EV.EMP_001 = V.EMP_001) ');
   Consulta.SQL.Add('INNER JOIN EMPRESAS EM ON ');
   Consulta.SQL.Add('   (EM.EMP_001 = V.EMP_001) ');
   Consulta.SQL.Add(' left join clientes c on v.cli_001=c.cli_001 and v.emp_001=c.emp_001');
   Consulta.SQL.Add('WHERE V.VEN_001 = :VENDA ');
   Consulta.SQL.Add('  AND V.EMP_001 = :EMPRESA ');

   Produtos.SQL.Add('SELECT M.MAT_001 AS codigo ');
   Produtos.SQL.Add('     , I.ITE_001 AS nItem ');
   Produtos.SQL.Add('     , null AS EAN '); // Arrumar
   Produtos.SQL.Add('     , M.MAT_003 AS descricao ');
   Produtos.SQL.Add('     , M.NCM AS NCM ');
   Produtos.SQL.Add('     , M.CEST AS CEST '); // Campo CEST - Bruno 26/03/2018
   Produtos.SQL.Add('     , M.CFOP_CONSUMIDOR AS CFOP ');
   Produtos.SQL.Add('     , U.UNI_003 AS Unidade ');
   Produtos.SQL.Add('     , I.ITE_002 AS Quant ');
   Produtos.SQL.Add('     , I.ITE_003 AS Unitario ');
   Produtos.SQL.Add('     , ''A'' AS ArrendTrunc ');
   Produtos.SQL.Add('     , coalesce(i.desconto, 0.00) AS Descto ');   //Pega o desconto do item - Bruno 08/02/2018
   Produtos.SQL.Add('     , coalesce(i.acrescimo, 0.00) AS Acresc ');  //Pega o acrescimo do item - Bruno 08/02/2018
   Produtos.SQL.Add('     , '''' AS InfAdic '); // Arrumar
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
   Produtos.SQL.Add('     , 0 AS Modalidade ');
   Produtos.SQL.Add('     , M.REDBASECALCICMS AS RedBc ');
   Produtos.SQL.Add('     , M.REDBASECALCST AS RedBcSt ');
   Produtos.SQL.Add('     , m.codigo_anp ');

   Produtos.SQL.Add('     , coalesce(( SELECT T.ALIQMUNICIPAL ');
   Produtos.SQL.Add('           FROM IBPT T ');
   Produtos.SQL.Add('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQMUNICIPALPADRAO ,0) AS ALIQMUNICIPAL ');
   Produtos.SQL.Add('     , coalesce(( SELECT T.ALIQESTADUAL ');
   Produtos.SQL.Add('           FROM IBPT T ');
   Produtos.SQL.Add('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQESTADUALPADRAO ,0) AS ALIQESTADUAL ');
   Produtos.SQL.Add('     ,  coalesce(( SELECT T.ALIQFEDNACIONAL ');
   Produtos.SQL.Add('           FROM IBPT T ');
   Produtos.SQL.Add('          WHERE T.NCM = M.NCM LIMIT 1),E.ALIQFEDNACIONALPADRAO ,0)  AS ALIQFEDERAL ');

//   Produtos.SQL.Add('     , T.ALIQMUNICIPAL AS ALIQMUNICIPAL ');
//   Produtos.SQL.Add('     , T.ALIQESTADUAL AS ALIQESTADUAL ');
//   Produtos.SQL.Add('     , T.ALIQFEDNACIONAL AS ALIQFEDERAL ');

   //   Produtos.SQL.Add('     , M.MAT_ALIQMUNICIPAL AS ALIQMUNICIPAL ');
//   Produtos.SQL.Add('     , M.MAT_ALIQESTADUAL AS ALIQESTADUAL ');
//   Produtos.SQL.Add('     , M.MAT_ALIQFEDERAL AS ALIQFEDERAL ');

   Produtos.SQL.Add('FROM VENDAITEM I ');
   Produtos.SQL.Add('JOIN EMPRESAS E ON E.EMP_001=I.EMP_001 ');
   Produtos.SQL.Add('INNER JOIN MATERIAIS M ON ');
   Produtos.SQL.Add('   (M.MAT_001 = I.MAT_001) AND ');
   Produtos.SQL.Add('   (M.EMP_001 = I.EMP_001) ');
   Produtos.SQL.Add('INNER JOIN UNIDADES U ON ');
   Produtos.SQL.Add('   (U.UNI_001 = M.UNI_001) AND ');
   Produtos.SQL.Add('   (U.EMP_001 = M.EMP_001) ');
//   Produtos.SQL.Add('INNER JOIN IBPT T ON ');
//   Produtos.SQL.Add('   (T.NCM = M.NCM)');
   Produtos.SQL.Add('WHERE I.VEN_001 = :VENDA ');
   Produtos.SQL.Add('  AND I.SIT_001 NOT IN (0,1,2,3) ');  //NAO PEGA ITENS CANCELADOS
   Produtos.SQL.Add('  AND I.EMP_001 = :EMPRESA ');
   Produtos.SQL.Add('ORDER BY I.ITE_001 ');

   Pagtos.SQL.Add('SELECT F.SFI_CODIGO AS formaPagto ');
   Pagtos.SQL.Add('     , (P.ITE_003 + coalesce(P.troco_dinheiro ,0.00)) AS Valor ');
   Pagtos.SQL.Add('     , 999 AS admCartao ');
   Pagtos.SQL.Add('     , P.ITE_001 AS nPagto ');
   Pagtos.SQL.Add('FROM ENCERRAVENDA EV ');
   Pagtos.SQL.Add('INNER JOIN ENCERRAVENDAITEM P ON ');
   Pagtos.SQL.Add('   (P.ENC_001 = EV.ENC_001) AND ');
   Pagtos.SQL.Add('   (P.EMP_001 = EV.EMP_001) ');
   Pagtos.SQL.Add('INNER JOIN FORMAPGTO F ON ');
   Pagtos.SQL.Add('   (F.EMP_001 = P.EMP_001) AND  ');
   Pagtos.SQL.Add('   (F.FOR_001 = P.id_formapgto) ');
   Pagtos.SQL.Add('WHERE EV.VEN_001 = :VENDA ');
   Pagtos.SQL.Add('  AND EV.EMP_001 = :EMPRESA ');
   { SQL - Fim }

   CReceber.sql.Add(' select documento, data_vencimento, valor from creceber ' +
                    ' where id_empresa=:EMPRESA and id_venda =:VENDA  '+
                    ' order by data_vencimento, id_creceber');

   Consulta.ParamByName('VENDA').AsInteger := iVen_001;
   Consulta.ParamByName('EMPRESA').AsInteger := iEmp_001;

   Produtos.ParamByName('VENDA').AsInteger := iVen_001;
   Produtos.ParamByName('EMPRESA').AsInteger := iEmp_001;

   Pagtos.ParamByName('VENDA').AsInteger := iVen_001;
   Pagtos.ParamByName('EMPRESA').AsInteger := iEmp_001;

   CReceber.ParamByName('VENDA').AsInteger := iVen_001;
   CReceber.ParamByName('EMPRESA').AsInteger := iEmp_001;

   Consulta.Open;
   Produtos.Open;
   Pagtos.Open;
   CReceber.Open;

   Consulta.First;
   Produtos.First;
   Pagtos.First;
   CReceber.First;
end;

end.
