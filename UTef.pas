unit UTef;

interface

uses
  System.SysUtils, System.Classes, windows, ACBrBase, ACBrTEFD,  ACBrECFClass, ACBrECF, ACBrBAL,
  DateUtils, ACBrEAD, ACBrAAC, ACBrSocket, ACBrIBPTax, StrUtils,
  ShellAPI, ACBrPAF_E, ACBrPAF, ACBrPAF_P, ACBrPAF_N, ACBrPAF_R, ACBrPAF_A,
  ACBrPAFRegistros, ACBrTEFDClass, ACBrNFeDANFEClass,
  ACBrDANFCeFortesFr, ACBrDFe,
  ACBrNFe, ACBrLFD, ACBrUtil, ACBrTXTUtils, ADODB, Variants, ACBrBlocoX,
  ACBrGAV, ACBrNFeDANFeESCPOS, ACBrNFeDANFeRLClass, XMLIntf, XMLDoc, zlib,
  pcnRetConsReciDFe, pcnConversao, pcnNFe, pcnConversaoNFe, ACBrMail, Messages, Graphics,
  Tlhelp32, Controls, StdCtrls, ExtCtrls, Buttons, ComCtrls,
  OleCtrls, SHDocVw,math, TypInfo, synacode, ACBrDFeConfiguracoes,
  ACBrBlocoX_Comum, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT, FileCtrl, Provider,
  WideStrings, DbxDatasnap, SqlExpr, DSConnect, ACBrDevice, Printers,
  IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, WinInet, Vcl.Forms, Vcl.Dialogs;

type
  tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar, tpsPagamento, tpsRelatorio);
  tpPagamento = (tpDinheiro, tpCartao);
  TFTef = class(TDataModule)
    ACBrTEFDNfce: TACBrTEFD;
    ACBrECF: TACBrECF;
    procedure ACBrTEFDNfceAguardaResp(Arquivo: string; SegundosTimeOut: Integer;
      var Interromper: Boolean);
    procedure ACBrTEFDNfceAntesCancelarTransacao(
      RespostaPendente: TACBrTEFDResp);
    procedure ACBrTEFDNfceAntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFDNfceBloqueiaMouseTeclado(Bloqueia: Boolean;
      var Tratado: Boolean);
    procedure ACBrTEFDNfceComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFDNfceComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFDNfceComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFDNfceComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFDNfceExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFDNfceInfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
  private
    { Private declarations }

  public
    { Public declarations }

    //para ACBRTEFDNFCe
    estadoSimuladoEcf : tEstadoEcfSimulado;
    efetuou: integer;
    cancelarTransacaoTef: Boolean;
    valorInformado : currency;
    campo : string;
  end;

var
  FTef: TFTef;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses uPDVFechamento, uControleMesaFechamento, uControleDeliveryFinaliza;

procedure TFTef.ACBrTEFDNfceAguardaResp(Arquivo: string;
  SegundosTimeOut: Integer; var Interromper: Boolean);
var
  msg: String;
begin
  if not cancelarTransacaoTef then
    estadoSimuladoEcf := tpsPagamento;
  msg := '';
  if (ACBrTEFDNFCe.GPAtual in [gpCliSiTef, gpVeSPague]) then // É TEF dedicado?
  begin
    if Arquivo = '23' then // Está aguargerdando Pin-Pad ?
    begin
      if ACBrTEFDNFCe.TecladoBloqueado then
      begin
        ACBrTEFDNFCe.BloquearMouseTeclado(False); // Desbloqueia o Teclado
      end;
      msg := 'Tecle "ESC" para cancelar.';
    end;
  end
  else
    msg := 'Aguardando: ' + Arquivo + ' ' + IntToStr(SegundosTimeOut);

  // if Msg <> '' then
  // FPrincipal.labelMensagens.Caption := Msg;
  Application.ProcessMessages;

end;

procedure TFTef.ACBrTEFDNfceAntesCancelarTransacao(
  RespostaPendente: TACBrTEFDResp);
var
  Est: TACBrECFEstado;
begin
  if ACBrECF.Ativo then
  begin
    Est := ACBrECF.Estado;
    case Est of
        estVenda, estPagamento:
        begin
          efetuou := 2;
        end;
      estRelatorio:
        begin
          ACBrECF.FechaRelatorio;
        end
      else if not(Est in [estLivre, estDesconhecido, estNaoInicializada]) then
      begin
        // BlockInput(true);
        ACBrECF.CorrigeEstadoErro(False);
        BlockInput(False);
      end;
    end;
  end
  else
    efetuou := 2;

end;

procedure TFTef.ACBrTEFDNfceAntesFinalizarRequisicao(Req: TACBrTEFDReq);
begin
  if Req.Header = 'CRT' then
    Req.GravaInformacao(777, 777, 'REDECARD');
end;

procedure TFTef.ACBrTEFDNfceBloqueiaMouseTeclado(Bloqueia: Boolean;
  var Tratado: Boolean);
begin
  if Assigned(frmPDVFechamento) then
    frmPDVFechamento.Enabled := not Bloqueia
  else if Assigned(frmControleMesaFechamento) then
    frmControleMesaFechamento.Enabled := not Bloqueia
  else if Assigned(frmControleDeliveryFinaliza) then
    frmControleDeliveryFinaliza.Enabled := not Bloqueia;

  Tratado := False; { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TFTef.ACBrTEFDNfceComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
begin
  try
    if Assigned(frmPDVFechamento) then
    begin
      case Operacao of
        opeAbreGerencial :
        begin
           if campo = '1' then
             frmPDVFechamento.MemoCupomTEF1.Lines.Add('Abre Gerencial')
           else if campo = '2' then
             frmPDVFechamento.MemoCupomTEF2.Lines.Add('Abre Gerencial')
           else if campo = '3' then
             frmPDVFechamento.MemoCupomTEF3.Lines.Add('Abre Gerencial');

           frmPDVFechamento.MemoCupomTEF.Lines.Add('Abre Gerencial');
        end;

        opeFechaCupom :
           estadoSimuladoEcf := tpsLivre;

        opeSubTotalizaCupom :
        begin
           if campo = '1' then
             frmPDVFechamento.MemoCupomTEF1.Lines.Add('Sub Totaliza')
           else if campo = '2' then
             frmPDVFechamento.MemoCupomTEF2.Lines.Add('Sub Totaliza')
           else if campo = '3' then
             frmPDVFechamento.MemoCupomTEF3.Lines.Add('Sub Totaliza');

           frmPDVFechamento.MemoCupomTEF.Lines.Add('Sub Totaliza');
        end;

        opeFechaGerencial, opeFechaVinculado :
           estadoSimuladoEcf := tpsRelatorio;

        opeImprimePagamentos :
          begin
            if campo = '1' then
             frmPDVFechamento.MemoCupomTEF1.Lines.Add('ImprimePagamentos')
           else if campo = '2' then
             frmPDVFechamento.MemoCupomTEF2.Lines.Add('ImprimePagamentos')
           else if campo = '3' then
             frmPDVFechamento.MemoCupomTEF3.Lines.Add('ImprimePagamentos');

           frmPDVFechamento.MemoCupomTEF.Lines.Add('ImprimePagamentos');
          end;
      end;
    end
    else if Assigned(frmControleMesaFechamento) then
    begin
      case Operacao of
        opeAbreGerencial :
        begin
           if campo = '1' then
             frmControleMesaFechamento.MemoCupomTEF1.Lines.Add('Abre Gerencial')
           else if campo = '2' then
             frmControleMesaFechamento.MemoCupomTEF2.Lines.Add('Abre Gerencial')
           else if campo = '3' then
             frmControleMesaFechamento.MemoCupomTEF3.Lines.Add('Abre Gerencial');

           frmControleMesaFechamento.MemoCupomTEF.Lines.Add('Abre Gerencial');
        end;

        opeFechaCupom :
           estadoSimuladoEcf := tpsLivre;

        opeSubTotalizaCupom :
        begin
           if campo = '1' then
             frmControleMesaFechamento.MemoCupomTEF1.Lines.Add('Sub Totaliza')
           else if campo = '2' then
             frmControleMesaFechamento.MemoCupomTEF2.Lines.Add('Sub Totaliza')
           else if campo = '3' then
             frmControleMesaFechamento.MemoCupomTEF3.Lines.Add('Sub Totaliza');

           frmControleMesaFechamento.MemoCupomTEF.Lines.Add('Sub Totaliza');
        end;

        opeFechaGerencial, opeFechaVinculado :
           estadoSimuladoEcf := tpsRelatorio;

        opeImprimePagamentos :
          begin
            if campo = '1' then
             frmControleMesaFechamento.MemoCupomTEF1.Lines.Add('ImprimePagamentos')
           else if campo = '2' then
             frmControleMesaFechamento.MemoCupomTEF2.Lines.Add('ImprimePagamentos')
           else if campo = '3' then
             frmControleMesaFechamento.MemoCupomTEF3.Lines.Add('ImprimePagamentos');

           frmControleMesaFechamento.MemoCupomTEF.Lines.Add('ImprimePagamentos');
          end;
      end;
    end
    else if Assigned(frmControleDeliveryFinaliza) then
    begin
      case Operacao of
        opeAbreGerencial :
        begin
           if campo = '1' then
             frmControleDeliveryFinaliza.MemoCupomTEF1.Lines.Add('Abre Gerencial')
           else if campo = '2' then
             frmControleDeliveryFinaliza.MemoCupomTEF2.Lines.Add('Abre Gerencial')
           else if campo = '3' then
             frmControleDeliveryFinaliza.MemoCupomTEF3.Lines.Add('Abre Gerencial');

           frmControleDeliveryFinaliza.MemoCupomTEF.Lines.Add('Abre Gerencial');
        end;

        opeFechaCupom :
           estadoSimuladoEcf := tpsLivre;

        opeSubTotalizaCupom :
        begin
           if campo = '1' then
             frmControleDeliveryFinaliza.MemoCupomTEF1.Lines.Add('Sub Totaliza')
           else if campo = '2' then
             frmControleDeliveryFinaliza.MemoCupomTEF2.Lines.Add('Sub Totaliza')
           else if campo = '3' then
             frmControleDeliveryFinaliza.MemoCupomTEF3.Lines.Add('Sub Totaliza');

           frmControleDeliveryFinaliza.MemoCupomTEF.Lines.Add('Sub Totaliza');
        end;

        opeFechaGerencial, opeFechaVinculado :
           estadoSimuladoEcf := tpsRelatorio;

        opeImprimePagamentos :
          begin
            if campo = '1' then
             frmControleDeliveryFinaliza.MemoCupomTEF1.Lines.Add('ImprimePagamentos')
           else if campo = '2' then
             frmControleDeliveryFinaliza.MemoCupomTEF2.Lines.Add('ImprimePagamentos')
           else if campo = '3' then
             frmControleDeliveryFinaliza.MemoCupomTEF3.Lines.Add('ImprimePagamentos');

           frmControleDeliveryFinaliza.MemoCupomTEF.Lines.Add('ImprimePagamentos');
          end;
      end;
    end;

    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TFTef.ACBrTEFDNfceComandaECFAbreVinculado(COO, IndiceECF: string;
  Valor: Double; var RetornoECF: Integer);
begin
  try
     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TFTef.ACBrTEFDNfceComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  try
    if Assigned(frmPDVFechamento) then
    begin
      if campo = '1' then
         frmPDVFechamento.MemoCupomTEF1.Lines.Add(ImagemComprovante.Text)
      else if campo = '2' then
         frmPDVFechamento.MemoCupomTEF2.Lines.Add(ImagemComprovante.Text)
      else if campo = '3' then
         frmPDVFechamento.MemoCupomTEF3.Lines.Add(ImagemComprovante.Text);

      frmPDVFechamento.MemoCupomTEF.Lines.Add(ImagemComprovante.Text);
    end
    else if Assigned(frmControleMesaFechamento) then
    begin
      if campo = '1' then
         frmControleMesaFechamento.MemoCupomTEF1.Lines.Add(ImagemComprovante.Text)
      else if campo = '2' then
         frmControleMesaFechamento.MemoCupomTEF2.Lines.Add(ImagemComprovante.Text)
      else if campo = '3' then
         frmControleMesaFechamento.MemoCupomTEF3.Lines.Add(ImagemComprovante.Text);

      frmControleMesaFechamento.MemoCupomTEF.Lines.Add(ImagemComprovante.Text);
    end
    else if Assigned(frmControleDeliveryFinaliza) then
    begin
      if campo = '1' then
         frmControleDeliveryFinaliza.MemoCupomTEF1.Lines.Add(ImagemComprovante.Text)
      else if campo = '2' then
         frmControleDeliveryFinaliza.MemoCupomTEF2.Lines.Add(ImagemComprovante.Text)
      else if campo = '3' then
         frmControleDeliveryFinaliza.MemoCupomTEF3.Lines.Add(ImagemComprovante.Text);

      frmControleDeliveryFinaliza.MemoCupomTEF.Lines.Add(ImagemComprovante.Text);
    end;

    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TFTef.ACBrTEFDNfceComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  estadoSimuladoEcf := tpsPagamento;
  RetornoECF := 1 ;
end;

procedure TFTef.ACBrTEFDNfceExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
  Mensagem: string; var AModalResult: TModalResult);
var
   Fim : TDateTime;
   OldMensagem : String;
begin
  case Operacao of
    opmOK :
       AModalResult := MessageDlg( Mensagem, mtInformation, [mbOK], 0);

    opmYesNo :
       AModalResult := MessageDlg( Mensagem, mtConfirmation, [mbYes,mbNo], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador :
    begin
      if Assigned(frmPDVFechamento) then
        frmPDVFechamento.lMensagemOperador.Caption := Mensagem
      else if Assigned(frmControleMesaFechamento) then
        frmControleMesaFechamento.lMensagemOperador.Caption := Mensagem;
      //Não precisa Delivery
    end;

    opmExibirMsgCliente, opmRemoverMsgCliente :
    begin
      if Assigned(frmPDVFechamento) then
        frmPDVFechamento.lMensagemCliente.Caption := Mensagem
      else if Assigned(frmControleMesaFechamento) then
        frmControleMesaFechamento.lMensagemCliente.Caption := Mensagem;
      //Não precisa Delivery
    end;

    opmDestaqueVia :
       begin
         try
            if Assigned(frmPDVFechamento) then
            begin
              OldMensagem := frmPDVFechamento.lMensagemOperador.Caption;
              frmPDVFechamento.lMensagemOperador.Caption := Mensagem
            end
            else if Assigned(frmControleMesaFechamento) then
            begin
              OldMensagem := frmControleMesaFechamento.lMensagemOperador.Caption;
              frmControleMesaFechamento.lMensagemOperador.Caption := Mensagem;
            end;
            //Não precisa Delivery

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3);
            repeat
               sleep(200);

               if Assigned(frmPDVFechamento) then
                 frmPDVFechamento.lMensagemOperador.Caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now))
               else if Assigned(frmControleMesaFechamento) then
                 frmControleMesaFechamento.lMensagemOperador.Caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now));
               //Não precisa Delivery

               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            if Assigned(frmPDVFechamento) then
              frmPDVFechamento.lMensagemOperador.Caption := OldMensagem
            else if Assigned(frmControleMesaFechamento) then
              frmControleMesaFechamento.lMensagemOperador.Caption := OldMensagem;
            //Não precisa Delivery
         end;
       end;
  end;

  Application.ProcessMessages;
end;

procedure TFTef.ACBrTEFDNfceInfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: string);
var
   ASubTotal: Double;
begin
  case Operacao of
     ineSubTotal :
       begin
         ASubTotal := valorInformado;
         //ASubTotal := ASubTotal - StringToFloatDef(EditTotalPago.Text, 0){ + Tratar Desconto e Acrescimo aqui: StringToFloatDef(edValorDescAcre.Text, 0)};
         RetornoECF := FloatToStr(ASubTotal);
         {if estadoSimuladoEcf = tpsPagamento then
           RetornoECF := FloatToStr(0);}
       end;

     ineTotalAPagar :
       RetornoECF := '0';

     ineEstadoECF :
       begin
         Case estadoSimuladoEcf of
           tpsLivre     : RetornoECF := 'L' ;
           tpsVenda     : RetornoECF := 'V' ;
           tpsPagamento : RetornoECF := 'P' ;
           tpsRelatorio : RetornoECF := 'R' ;
         else
           RetornoECF := 'O' ;
         end;
       end;
   end;
end;

end.
