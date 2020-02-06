unit uPDVMenuFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel, ACBrBase, ACBrECF, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.ComCtrls,
  cxRadioGroup, AdvGroupBox, ACBrDevice, ACBrTEFD, ACBrTEFDClass,
  system.TypInfo, system.StrUtils, system.DateUtils, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TfrmPDVMenuFiscalECF = class(TfrmModelo)
    btCancelar: TAdvGlowButton;
    btLeituraX: TAdvGlowButton;
    btLeituraMF: TAdvGlowButton;
    btReducaoZ: TAdvGlowButton;
    pnTopo: TPanel;
    Label1: TLabel;
    btLeituraMFS: TAdvGlowButton;
    btCancelarCupom: TAdvGlowButton;
    ACBrECF1: TACBrECF;
    AdvGroupBox1: TAdvGroupBox;
    rbIntervaloData: TcxRadioButton;
    rbIntervaloCOO: TcxRadioButton;
    edtDtInicial: TDateTimePicker;
    edtDtFinal: TDateTimePicker;
    edtCOOFinal: TSpinEdit;
    edtCOOInicial: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ACBrTEFD1: TACBrTEFD;
    btTransacoesADMTEF: TAdvGlowButton;
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLeituraXClick(Sender: TObject);
    procedure btLeituraMFClick(Sender: TObject);
    procedure btLeituraMFSClick(Sender: TObject);
    procedure btReducaoZClick(Sender: TObject);
    procedure btCancelarCupomClick(Sender: TObject);
    procedure btTransacoesADMTEFClick(Sender: TObject);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
  private
    { Private declarations }
    tipo_tef : TACBrTEFDTipo;
    log_tef : TStringList;
  public
    { Public declarations }
  end;

var
  frmPDVMenuFiscalECF: TfrmPDVMenuFiscalECF;

implementation

{$R *.dfm}

uses uFuncoes, uMenu;

procedure TfrmPDVMenuFiscalECF.ACBrTEFD1ComandaECF(
  Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
Var
   Est : TACBrECFEstado ;
   P   : Integer;
   Linha, CodFPG : String ;
   ValorFPG : Double ;
begin
   log_tef.Add('ComandaECF: '+GetEnumName(TypeInfo(TACBrTEFDOperacaoECF),
                                              integer(Operacao) ));

  try
    Est := ACBrECF1.Estado;

    case Operacao of
      opeAbreGerencial :
         ACBrECF1.AbreRelatorioGerencial ;

      opeCancelaCupom :
         if Est = estNaoFiscal then
            ACBrECF1.CancelaNaoFiscal
         else
            ACBrECF1.CancelaCupom;

      opeFechaCupom :
         if Est = estNaoFiscal then
            ACBrECF1.FechaNaoFiscal(recproj.sInfoDevSistema1)
         else
            ACBrECF1.FechaCupom(recproj.sInfoDevSistema1);

      opeSubTotalizaCupom :
         if Est = estNaoFiscal then
            ACBrECF1.SubtotalizaNaoFiscal( 0, recproj.sInfoDevSistema1)
         else
            ACBrECF1.SubtotalizaCupom( 0, recproj.sInfoDevSistema1);

      opeFechaGerencial, opeFechaVinculado :
        ACBrECF1.FechaRelatorio ;

      opePulaLinhas :
        begin
          ACBrECF1.PulaLinhas( ACBrECF1.LinhasEntreCupons );
          ACBrECF1.CortaPapel( True );
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

procedure TfrmPDVMenuFiscalECF.ACBrTEFD1ComandaECFAbreVinculado(COO,
  IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  inherited;
  try
    log_tef.Add( 'ACBrTEFD1ComandaECFAbreVinculado, COO:'+COO+
      ' IndiceECF: '+IndiceECF+' Valor: '+FormatFloat('0.00',Valor) ) ;
    ACBrECF1.AbreCupomVinculado( COO, IndiceECF, Valor );
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TfrmPDVMenuFiscalECF.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  inherited;
  log_tef.Add( 'ACBrTEFD1ComandaECFImprimeVia, Tipo: '+
     IfThen(TipoRelatorio = trGerencial, 'trGerencial','trVinculado') +
            ' Via: '+IntToStr(Via) );
  log_tef.AddStrings( ImagemComprovante );

  try
    case TipoRelatorio of
      trGerencial :
        ACBrECF1.LinhaRelatorioGerencial(ImagemComprovante.Text) ;

      trVinculado :
        ACBrECF1.LinhaCupomVinculado(ImagemComprovante.Text)
    end;

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TfrmPDVMenuFiscalECF.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
Var
   Est : TACBrECFEstado ;
   MeuAcresDesc : Double ;
begin
  log_tef.Add('ComandaECFSubtotaliza: DescAcre: ' + FormatFloat('0.00',DescAcre) );

  MeuAcresDesc := 0;
  try
    Est := ACBrECF1.Estado;

    if Est = estNaoFiscal then
       ACBrECF1.SubtotalizaNaoFiscal( DescAcre + MeuAcresDesc, '' )
    else
       ACBrECF1.SubtotalizaCupom( DescAcre + MeuAcresDesc, '' );

    { Remove o Desconto pois já foi aplicado, caso contrário iria influenciar o
      retorno de ineSubTotal }

    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TfrmPDVMenuFiscalECF.ACBrTEFD1ExibeMsg(
  Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string;
  var AModalResult: TModalResult);
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
      //ACBrTef.log_operador.Add('Mensagem: ' + Mensagem);
      Application.MessageBox(pchar(Mensagem), 'Atenção', MB_ICONINFORMATION);

    opmExibirMsgCliente, opmRemoverMsgCliente :
       //FACBrTef.log_cliente.Add('Mensagem: '  + Mensagem) ;
      Application.MessageBox(pchar(Mensagem), 'Atenção', MB_ICONINFORMATION);

    opmDestaqueVia :
       begin
         //OldMensagem := lMensagemOperador.Caption ;
         try
            //FACBrTef.log_operador.Add('Mensagem: ' + Mensagem) ;
            //pMensagemOperador.Visible := True ;
            //pMensagem.Visible         := True ;
             Application.MessageBox(pchar(Mensagem), 'Atenção', MB_ICONINFORMATION);
            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               //FACBrTef.log_operador.Add('Mensagem: ' + Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now)));
               Application.MessageBox(pchar(Mensagem), 'Atenção', MB_ICONINFORMATION);
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

procedure TfrmPDVMenuFiscalECF.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: string);
var
   ASubTotal: Double;
begin
   try
      if not ACBrECF1.Ativo then ACBrECF1.Ativar ;
   except
      { Para CliSiTEF ou V&SPague aplique o IF abaixo em sua aplicação, que
        permite saber se o Cupom foi concluido mesmo com o ECF desligado }

      if (not ACBrTEFD1.TEF.Inicializado) and   { Está na inicialização ? }
         (Operacao = ineEstadoECF) and          { Quer Saber o estado do ECF ? (mas se chegou aqui é pq o ECF já está com problemas...Errr.. o exemplo tá funcionando assim, então não sou que quem vai mudar :P) }
         (ACBrTEFD1.GPAtual in [gpCliSiTef,gpVeSPague]) then
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
         ASubTotal := ACBrECF1.Subtotal ;
         ASubTotal := ASubTotal - ACBrECF1.TotalPago;// + StringToFloatDef(edValorDescAcre.Text, 0);
         RetornoECF := FloatToStr( ASubTotal ) ;
       end;

     ineTotalAPagar : //verificar
       //RetornoECF := FloatToStr( CalculaTotalPago );
       RetornoECF := '0';

     ineEstadoECF :
       begin
         Case ACBrECF1.Estado of
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

procedure TfrmPDVMenuFiscalECF.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;


procedure TfrmPDVMenuFiscalECF.btCancelarCupomClick(Sender: TObject);
begin
  inherited;
  //verifica se o usuário tem


  if  not Application.MessageBox('Deseja cancelar o ultimo cupom fiscal emitido?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then exit;

  try
    try
      ACBrECF1.Ativar;
      ACBrECF1.CancelaCupom ;
    except
      on E : Exception do
      begin
        Application.MessageBox(pchar('Erro ao completar o procedimento:' + sLineBreak +
                                      E.Message), 'Atenção', MB_ICONWARNING);
      end;
    end;
  finally
    ACBrECF1.Desativar;
  end;

end;

procedure TfrmPDVMenuFiscalECF.btLeituraMFClick(Sender: TObject);
begin
  inherited;
  try
    try
      ACBrECF1.Ativar;
      if rbIntervaloData.Checked then
        ACBrECF1.PafMF_LMFC_Impressao(edtDtInicial.Date, edtDtFinal.Date)
      else
        ACBrECF1.PafMF_LMFC_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
    except
      on E : Exception do
      begin
        Application.MessageBox(pchar('Erro ao completar o procedimento:' + sLineBreak +
                                      E.Message), 'Atenção', MB_ICONWARNING);
      end;
    end;
  finally
    ACBrECF1.Desativar;
  end;
end;

procedure TfrmPDVMenuFiscalECF.btLeituraMFSClick(Sender: TObject);
begin
  inherited;
  try
    try
      ACBrECF1.Ativar;
      if rbIntervaloData.Checked then
        ACBrECF1.PafMF_LMFS_Impressao(edtDtInicial.Date, edtDtFinal.Date)
      else
        ACBrECF1.PafMF_LMFS_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
    except
      on E : Exception do
      begin
        Application.MessageBox(pchar('Erro ao completar o procedimento:' + sLineBreak +
                                      E.Message), 'Atenção', MB_ICONWARNING);
      end;
    end;
  finally
    ACBrECF1.Desativar;
  end;


end;

procedure TfrmPDVMenuFiscalECF.btLeituraXClick(Sender: TObject);
begin
  inherited;
  try
    try
      ACBrECF1.Ativar;
      ACBrECF1.PafMF_LX_Impressao;
    except
      on E : Exception do
      begin
        Application.MessageBox(pchar('Erro ao completar o procedimento:' + sLineBreak +
                                      E.Message), 'Atenção', MB_ICONWARNING);
      end;
    end;
  finally
    ACBrECF1.Desativar;
  end;
end;

procedure TfrmPDVMenuFiscalECF.btReducaoZClick(Sender: TObject);
var emite_z : boolean;
begin
  inherited;
  emite_z:= true;
  try
    try
      ACBrECF1.Ativar;
      if ACBrECF1.Estado <> estRequerZ then
        emite_z := application.MessageBox('A Redução Z vai bloquear o ECF até o próximo dia útil. Confirma a geração da Redução Z?',
                                          'Atenção', MB_ICONQUESTION + MB_YESNO) = mrYes;
      if emite_z then ACBrECF1.ReducaoZ();
    except
      on E : Exception do
      begin
        Application.MessageBox(pchar('Erro ao completar o procedimento:' + sLineBreak +
                                      E.Message), 'Atenção', MB_ICONWARNING);
      end;
    end;
  finally
    ACBrECF1.Desativar;
  end;
end;

procedure TfrmPDVMenuFiscalECF.btTransacoesADMTEFClick(Sender: TObject);
begin
  inherited;

  if not ACBrTEFD1.Inicializado(tipo_tef) then ACBrTEFD1.Inicializar(tipo_tef);
  ACBrTEFD1.ADM(tipo_tef);

end;

procedure TfrmPDVMenuFiscalECF.FormCreate(Sender: TObject);
 var ano, mes, dia : Word;
begin
  inherited;
  //carrega as configurações do ECF
  ACBrECF1.Porta := LerStringConfig('CBECFPORTA', frmMenu.cdsCFG.FileName ) ;
  ACBrECF1.Modelo := TACBrECFModelo( LerIntegerConfig('CBECFMODELO', frmMenu.cdsCFG.FileName ) ) ;

  ACBrECF1.ReTentar := LerBooleanConfig('CKECFTENTARNOVAMENTE', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.BloqueiaMouseTeclado := LerBooleanConfig('ckECFBloqueiaMouseTeclado', frmMenu.cdsCFG.FileName) ;

  ACBrECF1.ExibeMensagem := LerBooleanConfig('ckECFExibeMsg', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.ArredondaPorQtd := LerBooleanConfig('ckECFArredondaPorQtd', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.ArredondaItemMFD := LerBooleanConfig('ckECFArredondamentoItemMFD', frmMenu.cdsCFG.FileName) ;

  ACBrECF1.TimeOut := LerIntegerConfig('edECFTimeOut', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.IntervaloAposComando := LerIntegerConfig('edECFIntervaloAposComando', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.MaxLinhasBuffer := LerIntegerConfig('edECFLinBuf', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.PaginaDeCodigo := LerIntegerConfig('edECFPaginaCodigo', frmMenu.cdsCFG.FileName) ;

  ACBrECF1.MsgTrabalhando := LerStringConfig('edECFMsgTrabalhando', frmMenu.cdsCFG.FileName) ;
  ACBrECF1.MsgAguarde := LerStringConfig('edECFMsgAguarde', frmMenu.cdsCFG.FileName) ;

  DecodeDate(date, ano, mes, dia);
  edtDtInicial.Date:= EncodeDate(ano, mes, 1);
  edtDtFinal.Date:=EncodeDate(ano, mes, dia);

  //carrega os dados do tef
  tipo_tef := TACBrTEFDTipo(LerIntegerConfig('cbTEFGP', frmMenu.cdsCFG.FileName, 1)) ;
  ACBRTEFD1.MultiplosCartoes := true;
  ACBRTEFD1.AutoAtivarGP := true;
  ACBRTEFD1.CHQEmGerencial := true;
  ACBRTEFD1.AutoEfetuarPagamento := false;
  ACBRTEFD1.EsperaSleep := LerIntegerConfig('edTEFEsperaSleep', frmMenu.cdsCFG.FileName, 250);
  ACBRTEFD1.EsperaSTS := LerIntegerConfig('edTEFEsperaSTS', frmMenu.cdsCFG.FileName, 7);
  ACBRTEFD1.TrocoMaximo :=  LerFloatConfig('edTEFValorMaxSaque', frmMenu.cdsCFG.FileName, 0);

  log_tef := TstringList.Create;

end;

end.
