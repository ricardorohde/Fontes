unit UGerenciaTef;

{$IFDEF FPC}
 {$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils,
  Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ComCtrls, ACBrECF, ACBrDevice, ACBrTEFD,
  ACBrTEFDClass, ACBrUtil , ACBrTEFDCliSiTef, ACBrBase, RLReport;

type
  tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar, tpsPagamento, tpsRelatorio);
  { TForm1 }

  TFGerenciaTef = class(TForm)
     ACBrTEFD1 : TACBrTEFD;
     bAtivar : TButton;
     bFPG : TButton;
     btSerial : TSpeedButton;
     bCancelarResp : TButton;
     cbxModelo : TComboBox;
     cbxPorta : TComboBox;
     ckTEFDIAL : TCheckBox;
     edFPGCartao : TEdit;
     edFPGCheque : TEdit;
     gbConfigECF : TGroupBox;
     Label10 : TLabel;
     Label11 : TLabel;
     Label12: TLabel;
     lMensagemCliente : TLabel ;
     Label2 : TLabel;
     Label4 : TLabel;
     Label6 : TLabel;
     Label7 : TLabel;
     lMensagemOperador : TLabel ;
     Memo1: TMemo;
     mPagamentos: TMemo;
     PageControl1 : TPageControl;
     Panel1 : TPanel;
     Panel3: TPanel;
     Panel4: TPanel;
     Panel5: TPanel;
     pMensagemOperador : TPanel;
     pMensagemCliente : TPanel;
     pMensagem : TPanel;
     spbAdicionaPagamento: TSpeedButton;
     spbAdicionaPagamento1: TSpeedButton;
     spRemovePagamento: TSpeedButton;
     spbLimpaPagamentos: TSpeedButton;
     Splitter1: TSplitter;
     sTEFDial : TShape;
     tsConfig : TTabSheet;
    lMeuAcresDesc: TLabel;
    edValorDescAcre: TEdit;
    comprovantes: TRLReport;
    RLMemo1: TRLMemo;
    Panel2: TPanel;
    gbConfigTEF: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    bInicializar: TButton;
    ckAutoAtivar: TCheckBox;
    cbxGP: TComboBox;
    bAtivarGP: TButton;
    ckMultiplosCartoes: TCheckBox;
    ckAutoFinalizarCupom: TCheckBox;
    ckAutoEfetuarPagamento: TCheckBox;
    edEsperaSleep: TEdit;
    edEsperaSTS: TEdit;
    ckCHQemGerencial: TCheckBox;
     procedure ACBrECF1MsgPoucoPapel(Sender : TObject) ;
     procedure ACBrTEFD1AguardaResp(Arquivo : String;
        SegundosTimeOut : Integer; var Interromper : Boolean);
     procedure ACBrTEFD1AntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);{%h-}
     procedure ACBrTEFD1AntesFinalizarRequisicao(Req : TACBrTEFDReq);
     procedure ACBrTEFD1BloqueiaMouseTeclado(Bloqueia : Boolean;
        var Tratado : Boolean);
     procedure ACBrTEFD1ComandaECF(Operacao : TACBrTEFDOperacaoECF;
        Resp : TACBrTEFDResp; var RetornoECF : Integer );{%h-}
     procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF : String;
        Valor : Double; var RetornoECF : Integer);
     procedure ACBrTEFD1ComandaECFImprimeVia(
        TipoRelatorio : TACBrTEFDTipoRelatorio; Via : Integer;
        ImagemComprovante : TStringList; var RetornoECF : Integer);
     procedure ACBrTEFD1ComandaECFPagamento(IndiceECF : String; Valor : Double;
        var RetornoECF : Integer);
     procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
        var RetornoECF: Integer);
     procedure ACBrTEFD1DepoisConfirmarTransacoes(
        RespostasPendentes: TACBrTEFDRespostasPendentes);
     procedure ACBrTEFD1ExibeMsg(Operacao : TACBrTEFDOperacaoMensagem;
        Mensagem : String; var AModalResult : TModalResult);
     procedure ACBrTEFD1InfoECF(Operacao : TACBrTEFDInfoECF;
        var RetornoECF : String );
     procedure ACBrTEFD1MudaEstadoReq(EstadoReq : TACBrTEFDReqEstado);
     procedure ACBrTEFD1MudaEstadoResp(EstadoResp : TACBrTEFDRespEstado);
     procedure ACBrTEFD1RestauraFocoAplicacao(var Tratado : Boolean);
     procedure bAbreVendeSubTotaliza1Click(Sender : TObject);
     procedure bAbreVendeSubTotaliza2Click(Sender : TObject);
     procedure bAbreVendeSubTotaliza3Click(Sender : TObject);
     procedure bAbreVendeSubTotaliza4Click(Sender : TObject);
     procedure bCancelarRespClick(Sender : TObject);
     procedure bPagamentoClick(Sender: TObject);
     procedure cbxGPChange(Sender : TObject);
     procedure ckCHQemGerencialChange(Sender: TObject);
     procedure CliDTEFObtemInformacao(var ItemSelecionado : Integer) ;
     procedure edEsperaSleepChange(Sender : TObject);
     procedure edEsperaSTSChange(Sender : TObject);
     procedure pMensagemOperadorClick(Sender: TObject);
     procedure pMensagemResize(Sender : TObject);
     procedure spbAdicionaPagamento1Click(Sender: TObject);
     procedure spbAdicionaPagamentoClick(Sender: TObject);
     procedure spbLimpaPagamentosClick(Sender: TObject);
     procedure spRemovePagamentoClick(Sender: TObject);
     procedure TrataErros(Sender : TObject; E : Exception);
     procedure bAbreVendeSubTotalizaClick(Sender : TObject);
     procedure bCHQClick(Sender : TObject);
     procedure bCRTClick(Sender : TObject);
     procedure bEstadoClick(Sender : TObject);
     procedure bFecharClick(Sender : TObject);
     procedure bFPGClick(Sender : TObject);
     procedure bSubTotalizaClick(Sender : TObject);
     procedure bVendeItemClick(Sender : TObject);
     procedure bAbreCupomClick(Sender : TObject);
     procedure bADMClick(Sender : TObject);
     procedure bAtivarGPClick(Sender : TObject);
     procedure bATVClick(Sender : TObject);
     procedure bInicializarClick(Sender : TObject);
     procedure bReducaoZClick(Sender : TObject);
     procedure bLeituraXClick(Sender : TObject);
     procedure bFechaRelatorioClick(Sender : TObject);
     procedure bCancelarClick(Sender : TObject);
     procedure ckAutoEfetuarPagamentoChange(Sender : TObject);
     procedure ckAutoFinalizarCupomChange(Sender : TObject);
     procedure ckMultiplosCartoesChange(Sender : TObject);
     procedure ckAutoAtivarChange(Sender : TObject);
     procedure FormCloseQuery(Sender : TObject; var CanClose : boolean);
     procedure FormCreate(Sender : TObject);
     procedure ckTEFDIALChange(Sender : TObject);

     procedure ACBrTEFD1BaneseObtemOpcaoAdm(var opcao: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     fCancelado : Boolean ;
     IndiceTransacaoTef : Integer;
     estadoSimuladoEcf : tEstadoEcfSimulado;
     procedure AvaliaTEFs;
     procedure MostraSaldoRestante;
     procedure VerificaECFAtivo;

     Function CalculaTotalPago : Double ;
     Function CalculaSaldoRestante : Double ;

    { private declarations }
  public
    { public declarations }
    cancelarTransacaoTef : boolean;
  end; 

var
  FGerenciaTef : TFGerenciaTef;

implementation

Uses typinfo, dateutils, strutils, UTef, UPDVFechamento,
  uControleMesaFechamento, uControleDeliveryFinaliza;

{$IFNDEF FPC}
 {$R *.dfm}
{$ELSE}
 {$R *.lfm}
{$ENDIF}

{ TForm1 }

procedure TFGerenciaTef.FormCreate(Sender : TObject);
var
   I : TACBrTEFDTipo;
   J : TACBrECFModelo;
begin
  fCancelado := False ;
  Application.OnException := {$IFDEF FPC}@{$ENDIF}TrataErros;

  {cbxModelo.Items.Clear ;
  For J := Low(TACBrECFModelo) to High(TACBrECFModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrECFModelo), integer(J) ) ) ;
  cbxModelo.Items[0] := 'Procurar' ;
  cbxModelo.ItemIndex := 0 ; }

  cbxGP.Items.Clear ;
  For I := Low(TACBrTEFDTipo) to High(TACBrTEFDTipo) do
     cbxGP.Items.Add( GetEnumName(TypeInfo(TACBrTEFDTipo), integer(I) ) ) ;
  //cbxGP.Items[0] := 'Todos' ;
  cbxGP.ItemIndex := 1 ;

  {cbxGP1.Items.Assign(cbxGP.Items);
  cbxGP1.ItemIndex := 0 ;

  PageControl1.ActivePageIndex := 0 ;
  Memo1.Lines.Clear;    }

  ACBrTEFD1.TEFCliDTEF.NumVias := 1;
  ACBrTEFD1.TEFCliDTEF.NumeroTerminal := '001';
  ACBrTEFD1.TEFCliDTEF.ArqResp := 'C:\DPOS3x25\CUPONS\';

  pMensagem.Visible := False ;
  pMensagem.Align   := alClient ;
end;

procedure TFGerenciaTef.ckTEFDIALChange(Sender : TObject);
begin
   ACBrTEFD1.TEFDial.Habilitado := ckTEFDIAL.Checked;
end;

procedure TFGerenciaTef.AvaliaTEFs;
begin
  if ACBrTEFD1.TEFDial.Inicializado then
     sTEFDial.Brush.Color := clLime
  else
     sTEFDial.Brush.Color := clRed ;

  ckTEFDIAL.Checked := ACBrTEFD1.TEFDial.Habilitado;

  cbxGP.ItemIndex  := Integer( ACBrTEFD1.GPAtual ) ;
end;

procedure TFGerenciaTef.MostraSaldoRestante;
begin
  Memo1.Lines.Add( 'Saldo Restante: '+FormatFloat('0.00',CalculaSaldoRestante)) ;
end;

procedure TFGerenciaTef.VerificaECFAtivo;
begin
{   if not FDataModule.ACBrECF.Ativo then
      Memo1.Lines.Add( ACBrStr( 'ATENÇÃO !! O ECF AINDA NÃO FOI ATIVADO' ) );}
end;

function TFGerenciaTef.CalculaTotalPago: Double;
var
   I: Integer;
   Linha: String;
   Valor: Double;
begin
  Result := 0 ;

  { Adicionando valores de Pagamentos a Fazer }
  For I := 0 to mPagamentos.Lines.Count-1 do
  begin
     Linha  := mPagamentos.Lines[I];
     Valor  := StringToFloatDef( copy( Linha, Pos('|',Linha)+1, Length(Linha)), 0 );
     Result := Result + Valor;
  end;
end;

function TFGerenciaTef.CalculaSaldoRestante: Double;
begin
  // Lendo Valor do Saldo do ECF //
  {Result := FDataModule.ACBrECF.Subtotal + StringToFloatDef(edValorDescAcre.Text, 0);
  Result := Result - FDataModule.ACBrECF.TotalPago ;
  Result := Result - CalculaTotalPago  ;

  { TEFD ainda não imprimiu os pagamentos ? Então adicionando o Total das
    Transaçoes TEF já efetuadas no TotalPago}
  if not ACBrTEFD1.AutoEfetuarPagamento then
     Result := Result - ACBrTEFD1.RespostasPendentes.TotalPago;
end;

procedure TFGerenciaTef.bInicializarClick(Sender : TObject);
begin
  ACBrTEFD1.Inicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );

  AvaliaTEFs;

  if not ACBrTEFD1.ADM( TACBrTEFDTipo( cbxGP.ItemIndex ) ) then
   ShowMessage('Falha ao executar ADM.');

  ACBrTEFD1.DesInicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );
  bInicializar.Caption := 'Chamar função administrativa';

  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Add(memo1.Lines.Text);
  comprovantes.Preview;
end;

procedure TFGerenciaTef.bAtivarGPClick(Sender : TObject);
begin
//  Memo1.Lines.Add('Ativando GP: ' + cbxGP.Text );
  ACBrTEFD1.AtivarGP( TACBrTEFDTipo( cbxGP.ItemIndex ) );
//  Memo1.Lines.Add('ACBrTEFD.AtivarGP Executado' );

  AvaliaTEFs;
end;

procedure TFGerenciaTef.bReducaoZClick(Sender : TObject);
begin
  {if FDataModule.ACBrECF.Estado <> estRequerZ then
  begin
     if MessageDlg( ACBrStr( 'A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                  'Continua assim mesmo ?'),mtWarning,mbYesNoCancel,0) <> mrYes then
        exit ;

     if MessageDlg( ACBrStr('Você tem certeza ?'),mtWarning,mbYesNoCancel,0) <> mrYes then
        exit ;
  end ;

   self.Enabled := False ;
   try
      FDataModule.ACBrECF.ReducaoZ ;
      Memo1.Lines.Add('ACBrECF.ReducaoZ');
   finally
     self.Enabled := True ;
   end;       }
end;

procedure TFGerenciaTef.bLeituraXClick(Sender : TObject);
begin
  {self.Enabled := False ;
  try
    FDataModule.ACBrECF.LeituraX;
    Memo1.Lines.Add('ACBrECF.LeituraX');
  finally
    self.Enabled := True ;
  end;          }
end;

procedure TFGerenciaTef.bFechaRelatorioClick(Sender : TObject);
begin
  { FDataModule.ACBrECF.FechaRelatorio;
   Memo1.Lines.Add('ACBrECF.FechaRelatorio');}
end;

procedure TFGerenciaTef.bAbreCupomClick(Sender : TObject);
begin
{  FDataModule.ACBrECF.AbreCupom;
  Memo1.Lines.Add('ACBrECF.AbreCupom');
  spbLimpaPagamentos.Click;}
end;

procedure TFGerenciaTef.bVendeItemClick(Sender : TObject);
Var
  Valor : Double ;
begin
  {Valor := StringToFloatDef(edValorECF.Text, 0);

  try
    bVendeItem.Enabled := False ;
    FDataModule.ACBrECF.VendeItem('12345','PRODUTO TESTE','NN',1,Valor);
    Memo1.Lines.Add('ACBrECF.VendeItem');
  finally
    bVendeItem.Enabled := True ;
  end;}
end;

procedure TFGerenciaTef.bSubTotalizaClick(Sender : TObject);
begin
 { FDataModule.ACBrECF.SubtotalizaCupom ;
  Memo1.Lines.Add('ACBrECF.SubtotalizaCupom');
  MostraSaldoRestante;}
end;

procedure TFGerenciaTef.bFecharClick(Sender : TObject);
begin
 {  FDataModule.ACBrECF.FechaCupom('Projeto ACBr|http://acbr.sf.net');
   Memo1.Lines.Add('ACBrECF.FechaCupom');     }
end;

procedure TFGerenciaTef.bFPGClick(Sender : TObject);
Var
  A : Integer ;
begin
 { FDataModule.ACBrECF.CarregaFormasPagamento ;

  for A := 0 to FDataModule.ACBrECF.FormasPagamento.Count -1 do
  begin
     if FDataModule.ACBrECF.FormasPagamento[A].Descricao <> '' then
        Memo1.Lines.Add( 'Forma Pagto: '+FDataModule.ACBrECF.FormasPagamento[A].Indice+' -> '+
           FDataModule.ACBrECF.FormasPagamento[A].Descricao+'  Permite Vinculado: '+
           IfThen( FDataModule.ACBrECF.FormasPagamento[A].PermiteVinculado,'S','N'));
  end ;
  Memo1.Lines.Add('---------------------------------');}
end;

procedure TFGerenciaTef.bCancelarClick(Sender : TObject);
begin
   //spbLimpaPagamentos.Click;
   //FDataModule.ACBrECF.CancelaCupom;
   //Memo1.Lines.Add('ACBrECF.CancelaCupom');
   ACBrTEFD1.CancelarTransacoesPendentes;
//   Memo1.Lines.Add('ACBrTEFD1.CancelaTransacoesPendentes');
end;

procedure TFGerenciaTef.ckAutoEfetuarPagamentoChange(Sender : TObject);
begin
  ACBrTEFD1.AutoEfetuarPagamento := ckAutoEfetuarPagamento.Checked;
end;

procedure TFGerenciaTef.ckAutoFinalizarCupomChange(Sender : TObject);
begin
  ACBrTEFD1.AutoFinalizarCupom := ckAutoFinalizarCupom.Checked;
end;

procedure TFGerenciaTef.ckMultiplosCartoesChange(Sender : TObject);
begin
  try
    ACBrTEFD1.MultiplosCartoes := TCheckBox(Sender).Checked ;
  finally
    ckMultiplosCartoes.Checked := ACBrTEFD1.MultiplosCartoes ;
  end;
end;

procedure TFGerenciaTef.ckAutoAtivarChange(Sender : TObject);
begin
   ACBrTEFD1.AutoAtivarGP := ckAutoAtivar.Checked;
end;

procedure TFGerenciaTef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACBrTEFD1.DesInicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );
end;

procedure TFGerenciaTef.FormCloseQuery(Sender : TObject; var CanClose : boolean);
begin
   CanClose := self.Enabled ;
end;

procedure TFGerenciaTef.bATVClick(Sender : TObject);
begin
//  Memo1.Lines.Add('Inicio de ATV');
  ACBrTEFD1.ATV( TACBrTEFDTipo( cbxGP.ItemIndex ) );
//  Memo1.Lines.Add('ATV executado com sucesso');
end;

procedure TFGerenciaTef.bADMClick(Sender : TObject);
begin
  VerificaECFAtivo;

//  Memo1.Lines.Add('Inicio de ADM');
  ACBrTEFD1.ADM( TACBrTEFDTipo( cbxGP.ItemIndex ) );
//     Memo1.Lines.Add('ADM executado com sucesso')
//  else
//     Memo1.Lines.Add('Falha ao executar ADM') ;
end;

procedure TFGerenciaTef.ACBrTEFD1ExibeMsg(Operacao : TACBrTEFDOperacaoMensagem;
   Mensagem : String; var AModalResult : TModalResult);
var
   Fim : TDateTime;
   OldMensagem : String;
begin
//  StatusBar1.Panels[1].Text := '' ;
//  StatusBar1.Panels[2].Text := '' ;

  case Operacao of

    opmOK :
       AModalResult := MessageDlg( Mensagem, mtInformation, [mbOK], 0);

    opmYesNo :
       AModalResult := MessageDlg( Mensagem, mtConfirmation, [mbYes,mbNo], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador :
         lMensagemOperador.Caption := Mensagem ;

    opmExibirMsgCliente, opmRemoverMsgCliente :
         lMensagemCliente.Caption := Mensagem ;

    opmDestaqueVia :
       begin
         OldMensagem := lMensagemOperador.Caption ;
         try
            lMensagemOperador.Caption := Mensagem ;
            pMensagemOperador.Visible := True ;
            pMensagem.Visible         := True ;

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               lMensagemOperador.Caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now));
               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            lMensagemOperador.Caption := OldMensagem ;
         end;
       end;
  end;

  pMensagemOperador.Visible := (lMensagemOperador.Caption <> '') ;
  pMensagemCliente.Visible  := (lMensagemCliente.Caption <> '') ;

  pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
  Application.ProcessMessages;
end;

procedure TFGerenciaTef.ACBrTEFD1InfoECF(Operacao : TACBrTEFDInfoECF;
   var RetornoECF : String );
var
   ASubTotal: Double;
begin
  case Operacao of
   ineSubTotal :
     begin
       ASubTotal := FTef.ValorInformado;
       //ASubTotal := ASubTotal - StringToFloatDef(EditTotalPago.Text, 0){ + Tratar Desconto e Acrescimo aqui: StringToFloatDef(edValorDescAcre.Text, 0)};
       RetornoECF := FloatToStr(ASubTotal);
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

procedure TFGerenciaTef.ACBrTEFD1MudaEstadoReq(EstadoReq : TACBrTEFDReqEstado);
begin
//   StatusBar1.Panels[1].Text := GetEnumName(TypeInfo(TACBrTEFDReqEstado), Integer(EstadoReq) ) ;
   fCancelado := False ;
end;

procedure TFGerenciaTef.ACBrTEFD1MudaEstadoResp(EstadoResp : TACBrTEFDRespEstado);
begin
//  StatusBar1.Panels[1].Text := GetEnumName(TypeInfo(TACBrTEFDRespEstado), Integer(EstadoResp) ) ;
  bCancelarResp.Visible     := (EstadoResp = respAguardandoResposta) ;
end;

procedure TFGerenciaTef.ACBrTEFD1RestauraFocoAplicacao(var Tratado : Boolean);
begin
  Application.BringToFront;

  Tratado := False ;  { Deixa executar o código de Foco do ACBrTEFD }
end;

procedure TFGerenciaTef.bAbreVendeSubTotaliza1Click(Sender : TObject);
begin
   ACBrTEFD1.CancelarTransacoesPendentes;
end;

procedure TFGerenciaTef.bAbreVendeSubTotaliza2Click(Sender : TObject);
begin
   ACBrTEFD1.ConfirmarTransacoesPendentes;
end;

procedure TFGerenciaTef.bAbreVendeSubTotaliza3Click(Sender : TObject);
begin
   ACBrTEFD1.ImprimirTransacoesPendentes;
end;

procedure TFGerenciaTef.bAbreVendeSubTotaliza4Click(Sender : TObject);
begin
   ACBrTEFD1.FinalizarCupom;
end;

procedure TFGerenciaTef.bCancelarRespClick(Sender : TObject);
begin
   fCancelado := True ;
end;

procedure TFGerenciaTef.bPagamentoClick(Sender: TObject);
Var
  CodFormaPagamento : String;
begin
  {CodFormaPagamento := '01' ;

  if not InputQuery('Pagamento de R$ '+edValorECF.Text,'Digite o Cod.Forma Pagamento',CodFormaPagamento ) then
     exit ;

  if StringToFloatDef(edValorECF.Text,0) = 0 then
     exit ;

  FDataModule.ACBrECF.EfetuaPagamento( CodFormaPagamento, StringToFloatDef(edValorECF.Text, 0) );
  Memo1.Lines.Add('ACBrECF.EfetuaPagamento');
  Memo1.Lines.Add( 'Pagamento: '+CodFormaPagamento+' no valor: R$ '+edValorECF.Text+
                   ' registrado');
  MostraSaldoRestante;            }
end;

procedure TFGerenciaTef.cbxGPChange(Sender : TObject);
begin
  if not (Sender is TComboBox) then exit ;

  try
    ACBrTEFD1.GPAtual := TACBrTEFDTipo(  TComboBox(Sender).ItemIndex ) ;
  finally
    AvaliaTEFs;
  end;
end;

procedure TFGerenciaTef.ckCHQemGerencialChange(Sender: TObject);
begin
  ACBrTEFD1.CHQEmGerencial := ckCHQemGerencial.Checked;
end;

procedure TFGerenciaTef.CliDTEFObtemInformacao(var ItemSelecionado : Integer) ;
begin
  {case ComboBox1.ItemIndex of
    1: ItemSelecionado := 1;
    2: ItemSelecionado := 2;
    3: ItemSelecionado := 3;
    4: ItemSelecionado := 4;
    5: ItemSelecionado := 5;
    6: ItemSelecionado := 10;
  end; }
end;

procedure TFGerenciaTef.edEsperaSleepChange(Sender : TObject);
begin
   ACBrTEFD1.EsperaSleep := StrToInt(edEsperaSleep.Text);
end;

procedure TFGerenciaTef.edEsperaSTSChange(Sender : TObject);
begin
   ACBrTEFD1.EsperaSTS := StrToInt(edEsperaSTS.Text);
end;

procedure TFGerenciaTef.pMensagemOperadorClick(Sender: TObject);
begin
   pMensagem.Visible := False ;
end;

procedure TFGerenciaTef.pMensagemResize(Sender : TObject);
begin
   pMensagemCliente.Height := Trunc( pMensagem.Height / 2 ) ;
end;

procedure TFGerenciaTef.spbAdicionaPagamento1Click(Sender: TObject);
begin
   MostraSaldoRestante;
end;

procedure TFGerenciaTef.spbAdicionaPagamentoClick(Sender: TObject);
Var
  CodFormaPagamento, ValorStr : String;
begin
  {if CalculaSaldoRestante <= 0 then
  begin
    Memo1.Lines.Add('Total do Cupom já foi atingido');
    exit ;
  end;

  CodFormaPagamento := FDataModule.ACBrECF.FormasPagamento[0].Indice ;
  ValorStr          := '1' ;

  if not InputQuery('Pagamento','Digite o Cod.Forma Pagamento',CodFormaPagamento ) then
     exit ;

  if not InputQuery('Pagamento','Digite o Valor a Pagar',ValorStr ) then
     exit ;

  if StringToFloatDef(ValorStr,0) = 0 then
  begin
     Memo1.Lines.Add('Valor: '+ValorStr+' inválido');
     exit ;
  end;

  CodFormaPagamento := Trim(CodFormaPagamento);
  if (CodFormaPagamento = '') or
     (FDataModule.ACBrECF.AchaFPGIndice(CodFormaPagamento) = Nil) then
  begin
    Memo1.Lines.Add('Cod.Forma Pagto: ['+CodFormaPagamento+'] inválido');
    exit ;
  end;

  mPagamentos.Lines.Add( CodFormaPagamento + '|' + ValorStr );
  Memo1.Lines.Add( 'Pagamento: '+CodFormaPagamento+' no valor: '+ValorStr+
                   ' acumulado');

  MostraSaldoRestante;        }
end;

procedure TFGerenciaTef.spbLimpaPagamentosClick(Sender: TObject);
begin
   mPagamentos.Lines.Clear;
   edValorDescAcre.Text := '0,00';
end;

procedure TFGerenciaTef.spRemovePagamentoClick(Sender: TObject);
var
   LineNumber: Integer;
begin
  LineNumber := mPagamentos.CaretPos.y;
  if LineNumber >= 0 then
     mPagamentos.Lines.Delete( LineNumber );
end;

procedure TFGerenciaTef.TrataErros(Sender : TObject; E : Exception);
begin
  Memo1.Lines.Add( E.Message );
  pMensagem.Visible := False ;
end;

procedure TFGerenciaTef.bAbreVendeSubTotalizaClick(Sender : TObject);
Var
  Valor : Double ;
begin
 { Valor := StringToFloatDef(edValorECF.Text, 0);

  try
    self.Enabled := False ;
    FDataModule.ACBrECF.AbreCupom;
    Memo1.Lines.Add('ACBrECF.AbreCupom');

    FDataModule.ACBrECF.VendeItem('12345','PRODUTO TESTE','NN',1,Valor);
    Memo1.Lines.Add('ACBrECF.VendeItem');

    FDataModule.ACBrECF.SubtotalizaCupom ;
    Memo1.Lines.Add('ACBrECF.SubtotalizaCupom');
    MostraSaldoRestante;
  finally
    self.Enabled := True ;
  end;}
end;

procedure TFGerenciaTef.bCHQClick(Sender : TObject);
begin
  //ACBrTEFD1.CHQ( StringToFloatDef(edValorTEF.Text, 0) ,edFPGCheque.Text, FDataModule.ACBrECF.NumCOO);
  //MostraSaldoRestante;
end;

procedure TFGerenciaTef.bCRTClick(Sender : TObject);
begin
//   ACBrTEFD1.CRT( StringToFloatDef(edValorTEF.Text, 0) ,edFPGCartao.Text, FDataModule.ACBrECF.NumCOO);
//   MostraSaldoRestante;
end;

procedure TFGerenciaTef.bEstadoClick(Sender : TObject);
begin
  { Memo1.Lines.Add('Estado: '+GetEnumName(TypeInfo(TACBrECFEstado),
                    Integer(FDataModule.ACBrECF.Estado) )) ;}
end;

procedure TFGerenciaTef.ACBrTEFD1AguardaResp(Arquivo : String;
   SegundosTimeOut : Integer; var Interromper : Boolean);
var
  Msg : String ;
begin
  Msg := '' ;
  msg := '';
  if (ACBrTEFD1.GPAtual in [gpCliSiTef, gpVeSPague]) then // É TEF dedicado?
  begin
    if Arquivo = '23' then // Está aguargerdando Pin-Pad ?
    begin
      if ACBrTEFD1.TecladoBloqueado then
      begin
        ACBrTEFD1.BloquearMouseTeclado(False); // Desbloqueia o Teclado
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

procedure TFGerenciaTef.ACBrECF1MsgPoucoPapel(Sender : TObject) ;
Var
  OldTecladoBloqueado : Boolean ;
begin
  OldTecladoBloqueado := ACBrTEFD1.TecladoBloqueado;
  ACBrTEFD1.BloquearMouseTeclado(False);
  try
     ShowMessage( ACBrStr('ATENÇÃO. Detectada proximadade do fim da Bobina') );
  finally
    ACBrTEFD1.BloquearMouseTeclado(OldTecladoBloqueado);
  end ;
end;

procedure TFGerenciaTef.ACBrTEFD1AntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
var
   Est: TACBrECFEstado;
begin
   //
end;

procedure TFGerenciaTef.ACBrTEFD1AntesFinalizarRequisicao(Req : TACBrTEFDReq);
begin
   if Req.Header = 'CRT' then
      Req.GravaInformacao(777,777,'TESTE REDECARD');
//   Memo1.Lines.Add('Enviando: '+Req.Header+' ID: '+IntToStr( Req.ID ) );
end;

procedure TFGerenciaTef.ACBrTEFD1BaneseObtemOpcaoAdm(var opcao: Integer);
begin
  opcao := 2;
end;

procedure TFGerenciaTef.ACBrTEFD1BloqueiaMouseTeclado(Bloqueia : Boolean;
   var Tratado : Boolean);
begin
  self.Enabled := not Bloqueia ;
//  Memo1.Lines.Add('BloqueiaMouseTeclado = '+IfThen(Bloqueia,'SIM', 'NAO'));

  Tratado := False ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TFGerenciaTef.ACBrTEFD1ComandaECF(Operacao : TACBrTEFDOperacaoECF;
   Resp : TACBrTEFDResp; var RetornoECF : Integer );
Var
   Est : TACBrECFEstado ;
   P   : Integer;
   Linha, CodFPG : String ;
   ValorFPG : Double ;
begin
  try
    case Operacao of
      opeAbreGerencial :
         Memo1.Lines.Add('') {ACBrECF1.AbreRelatorioGerencial} ;

      opeFechaCupom :
         estadoSimuladoEcf := tpsLivre;

      opeSubTotalizaCupom :
      begin
        if Assigned(frmPDVFechamento) then
          frmPDVFechamento.MemoCupomTEF.Lines.Add('Sub Totaliza')
        else if Assigned(frmControleMesaFechamento) then
          frmControleMesaFechamento.MemoCupomTEF.Lines.Add('Sub Totaliza')
        else if Assigned(frmControleDeliveryFinaliza) then
          frmControleDeliveryFinaliza.MemoCupomTEF.Lines.Add('Sub Totaliza');
      end;

      opeFechaGerencial, opeFechaVinculado :
         estadoSimuladoEcf := tpsRelatorio;

     { opePulaLinhas :
        begin
          Memo1.Lines.Add('----------');
          Sleep(200);
        end; }

      opeImprimePagamentos :
        begin
          Memo1.Lines.Add('ImprimePagamentos');
        end;
    end;
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TFGerenciaTef.ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF : String;
   Valor : Double; var RetornoECF : Integer);
begin
  try
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
end;

procedure TFGerenciaTef.ACBrTEFD1ComandaECFImprimeVia(
   TipoRelatorio : TACBrTEFDTipoRelatorio; Via : Integer;
   ImagemComprovante : TStringList; var RetornoECF : Integer);
begin
//  Memo1.Lines.Add( 'ACBrTEFD1ComandaECFImprimeVia, Tipo: '+
//     IfThen(TipoRelatorio = trGerencial, 'trGerencial','trVinculado') +
//     ' Via: '+IntToStr(Via) );

  Memo1.Lines.Add('Via: ' + IntToStr(Via));

  Memo1.Lines.AddStrings( ImagemComprovante );

  { *** Se estiver usando ACBrECF... Lembre-se de configurar ***
    ACBrECF1.MaxLinhasBuffer   := 3; // Os homologadores permitem no máximo
                                     // Impressao de 3 em 3 linhas
    ACBrECF1.LinhasEntreCupons := 7; // (ajuste conforme o seu ECF)

    NOTA: ACBrECF nao possui comando para imprimir a 2a via do CCD }

  try
     case TipoRelatorio of
       trGerencial :
           memo1.Lines.Add(ImagemComprovante.Text);
       trVinculado :
           memo1.Lines.Add(ImagemComprovante.Text);
     end;

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
end;

procedure TFGerenciaTef.ACBrTEFD1ComandaECFPagamento(IndiceECF : String;
   Valor : Double; var RetornoECF : Integer);
var
   Est : TACBrECFEstado ;
begin
  //

end;

procedure TFGerenciaTef.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
   var RetornoECF: Integer);
Var
   Est : TACBrECFEstado ;
   MeuAcresDesc : Double ;
begin
  estadoSimuladoEcf := tpsPagamento;
  RetornoECF := 1 ;
end;

procedure TFGerenciaTef.ACBrTEFD1DepoisConfirmarTransacoes(
   RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I : Integer;
begin
  for I := 0 to RespostasPendentes.Count-1  do
  begin
     with RespostasPendentes[I] do
     begin
        Memo1.Lines.Add('Confirmado: ' + Header + ' ID: ' + IntToStr(ID));
        Memo1.Lines.Add('Rede: '       + Rede);
        Memo1.Lines.Add('NSU: '        + NSU);
        Memo1.Lines.Add('Valor: '      + FormatFloat('###,###,##0.00',ValorTotal));
        Memo1.Lines.Add('Campo 11: '   + LeInformacao(11,0).AsString );
     end;
  end;
end;

end.

