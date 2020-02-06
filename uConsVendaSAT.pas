unit uConsVendaSAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, Vcl.ComCtrls, AdvGroupBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomTableView, cxGridCardView, cxGridDBCardView,  ACBrSATExtratoClass,
  cxGridCustomLayoutView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess,
  Uni, Vcl.Menus, AdvGlowButton, cxTextEdit, cxDBEdit, ACBrBase, ACBrSAT, ACBrSATExtratoFortesFr,
  cxImageComboBox, ShellApi, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfrmConsVendaSAT = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    edNomeCliente: TEdit;
    edCupom: TEdit;
    Label3: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    rgFiltroSituacao: TcxRadioGroup;
    qrVendasSAT: TUniQuery;
    qrVendasSATid_venda: TIntegerField;
    qrVendasSATid_empresa: TIntegerField;
    qrVendasSATdata_emissao: TDateTimeField;
    qrVendasSATnro_cupom: TIntegerField;
    qrVendasSATvalor: TFloatField;
    qrVendasSATsat_cancelado: TBooleanField;
    qrVendasSATtipo_venda: TWideStringField;
    qrVendasSATnome_cliente: TWideStringField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBCardView1observacao: TcxGridDBCardViewRow;
    cxGrid2Level1: TcxGridLevel;
    dsVendasSAT: TDataSource;
    cxGrid2DBTableView1id_venda: TcxGridDBColumn;
    cxGrid2DBTableView1id_empresa: TcxGridDBColumn;
    cxGrid2DBTableView1data_emissao: TcxGridDBColumn;
    cxGrid2DBTableView1nro_cupom: TcxGridDBColumn;
    cxGrid2DBTableView1valor: TcxGridDBColumn;
    cxGrid2DBTableView1sat_cancelado: TcxGridDBColumn;
    cxGrid2DBTableView1tipo_venda: TcxGridDBColumn;
    cxGrid2DBTableView1nome_cliente: TcxGridDBColumn;
    AdvGroupBox2: TAdvGroupBox;
    rgFiltroTipo: TcxRadioGroup;
    btPesquisar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    btImprimir: TAdvGlowButton;
    btExcluir: TAdvGlowButton;
    qrVendasSATchave_acesso: TWideStringField;
    qrVendasSATchave_cancelamento: TWideStringField;
    AdvGroupBox4: TAdvGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    qrVendasSAThora_emissao: TDateTimeField;
    cxGrid2DBTableView1hora_emissao: TcxGridDBColumn;
    Label4: TLabel;
    Shape2: TShape;
    qrVendasSATven_024: TWideStringField;
    qrVendasSATsituacao_caixa: TIntegerField;
    qrVendasSATtipofiscal: TWideStringField;
    cxGrid2DBTableView1tipofiscal: TcxGridDBColumn;
    AdvGroupBox5: TAdvGroupBox;
    rgFiltroTipoFiscal: TcxRadioGroup;
    btInutilizacaoNFCe: TAdvGlowButton;
    btEnviarEmail: TAdvGlowButton;
    btEnviarNFCEContingencia: TAdvGlowButton;
    qrVendasSATstatus_envio_sefaz: TIntegerField;
    cxGrid2DBTableView1status_envio_sefaz: TcxGridDBColumn;
    qrVendasSATnfce_contingencia: TBooleanField;
    qrVendasSATnfce_contingencia_enviada: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure cxGrid2DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btInutilizacaoNFCeClick(Sender: TObject);
    procedure btEnviarEmailClick(Sender: TObject);
    procedure btEnviarNFCEContingenciaClick(Sender: TObject);
    function EnviaNFCeContingencia(dsVendas : Tdataset; out qtde_notas : integer) : boolean;
    constructor Create (sender : tcomponent) ; reintroduce;
    procedure rgFiltroTipoFiscalClick(Sender: TObject);
  private
    { Private declarations }
    i_where : integer;
  public
    { Public declarations }
  end;

var
  frmConsVendaSAT: TfrmConsVendaSAT;

implementation

{$R *.dfm}

uses uMenu, uGeradorSAT, uFuncoes, untConstSAT, uGeradorNFCe, uInutilizacaoNFCe,
  uEnvioEmail, uGeradorECF;

constructor TfrmConsVendaSAT.Create (sender : tcomponent);
var dia, mes, ano : word;
begin
  inherited Create(sender);
  //preenche os filtros de datas com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
  i_where := qrVendasSAT.SQL.Count -1;


end;

function TfrmConsVendaSAT.EnviaNFCeContingencia(dsVendas : Tdataset; out qtde_notas : integer) : boolean;
var lista_erros : Tstringlist;
    FGerarNFCe : GerarNFCe;
    qtd_notas_erro, qtd_notas_ok, i : integer;
    caminho_log, mensagem : string;
    log : Textfile;
begin
  dsVendas.First;
  qtd_notas_erro := 0;
  qtd_notas_ok := 0;

  lista_erros := Tstringlist.Create;
  dsVendas.First;

  while not dsVendas.Eof do
  begin
    if (dsVendas.FieldByName('status_envio_sefaz').AsInteger=3) and (not dsVendas.FieldByName('sat_cancelado').AsBoolean)  then
    begin
      FGerarNFCe := GerarNFCe.Create;
      if FGerarNFCe.TransmitirContingencia(dsVendas.FieldByName('id_venda').AsInteger, RecProj.iEmp ) then
      begin
        lista_erros.add(format('Venda %d, Chave %s . OK!', [dsVendas.FieldByName('id_venda').AsInteger, dsVendas.FieldByName('chave_acesso').AsString]));
        qtd_notas_ok := qtd_notas_ok + 1;
      end
      else
      begin
        lista_erros.add(format('Venda %d, Chave %s . Erro : %s', [dsVendas.FieldByName('id_venda').AsInteger, dsVendas.FieldByName('chave_acesso').AsString, FGerarNFCe.mensagem]));
        qtd_notas_erro := qtd_notas_erro + 1;
      end;

      FGerarNFCe.Free;

    end;
    dsVendas.Next;
  end;

  //se houver notas, grava o log
  if qtd_notas_erro + qtd_notas_ok >0 then
  begin
    caminho_log := format('%sNFCe\NFCeContingencia\log_transmissao%s.txt',[ExtractFilePath(ParamStr(0)), formatdatetime('dd_mm_yyyy_hh_nn', Date+time) ]);

    AssignFile(log, caminho_log);
    ReWrite(log);
    for I := 0 to lista_erros.Count-1 do
    begin
      writeln(log,lista_erros[i]);
    end;

    CloseFile(log);

    if qtd_notas_erro >0 then
    begin
      mensagem := 'Erros ao transmitir NFCe''s. Foi criado um arquivo  de log contendo os erros encontrados. '+
                  'Gostaria de abrir o arquivo a seguir?' + sLineBreak+ caminho_log ;

      if application.MessageBox(pchar(mensagem),'Atenção', MB_ICONWARNING + MB_YESNO) = mryes then
      begin;
        ShellExecute(Application.Handle, PChar('open'), PChar(caminho_log), nil, nil, SW_SHOWNORMAL);
      end;
    end;
  end;

  qtde_notas := qtd_notas_erro + qtd_notas_ok;

  result := qtd_notas_erro <1;

  lista_erros.Free;
end;

procedure TfrmConsVendaSAT.btCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmConsVendaSAT.btImprimirClick(Sender: TObject);
var dia, mes, ano : word;
    caminho_arquivo, tipo_fiscal: string;
    FExtrato : TACBrSATExtratoFortes;
    FAcbrSAT : TACBrSAT;
    FGerarNFCe : GerarNFCe;
begin
  inherited;
  if qrVendasSAT.Active then
  begin
    if qrVendasSAT.RecordCount>0 then
    begin
      if qrVendasSAT.FieldByName('sat_cancelado').AsBoolean  then
      begin
        Application.MessageBox('Não é possível reimprimir pois este cupom foi cancelado!', 'Atenção', MB_ICONINFORMATION );
      end
      else
      begin
        tipo_fiscal := qrVendasSAT.FieldByName('tipofiscal').asstring;
        if (tipo_fiscal='SAT') or (tipo_fiscal='MFE') then
        begin
          DecodeDate(qrVendasSAT.FieldByName('data_emissao').AsDateTime, ano, mes, dia);

          if tipo_fiscal='SAT' then
            caminho_arquivo :=format('%sCFeVenda\%d\%.2d\CFe%s.xml',[ExtractFilePath(ParamStr(0)) , ano, mes, qrVendasSAT.FieldByName('chave_acesso').Asstring])
          else
            caminho_arquivo :=format('%sMFE\MFEVenda\%d\%.2d\CFe%s.xml',[ExtractFilePath(ParamStr(0)) , ano, mes, qrVendasSAT.FieldByName('chave_acesso').Asstring]);

          if FileExists(caminho_arquivo) then
          begin
            FAcbrSAT := TACBrSAT.Create(Nil);
            FExtrato := TACBrSATExtratoFortes.Create(Nil);

            FExtrato.LarguraBobina    := 280;
            FExtrato.MargemSuperior   := 2;
//            FExtrato.Margens.Fundo    := 20;
            FExtrato.MargemEsquerda   := 0;
            FExtrato.MargemDireita    := 2;

            FExtrato.MostraPreview    := True;
            FExtrato.MostraSetup      := True;

            FAcbrSAT.Extrato := FExtrato;
            FAcbrSAT.CFe.LoadFromFile( caminho_arquivo );
            FAcbrSAT.ImprimirExtrato();
          end
          else
          begin
            Application.MessageBox('Não foi possível encontrar o arquivo do CFe!', 'Atenção', MB_ICONINFORMATION );
          end;
        end
        else if (qrVendasSAT.FieldByName('tipofiscal').asstring='NFCE') then
        begin
          FGerarNFCe := GerarNFCe.Create;
          if not FGerarNFCe.Imprimir(qrVendasSAT.FieldByName('id_venda').AsInteger, RecProj.iEmp ) then
            Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
          FGerarNFCe.Free;
        end
        else
        begin
          Application.MessageBox('Opção disponível apenas para SAT, NFCE ou MFE!', 'Atenção', MB_ICONINFORMATION);
        end;
      end;
    end;
  end;
end;

procedure TfrmConsVendaSAT.btInutilizacaoNFCeClick(Sender: TObject);
begin
  inherited;
  frmInutilizacaoNFCe := TfrmInutilizacaoNFCe.Create(self);
  frmInutilizacaoNFCe.ShowModal;
  frmInutilizacaoNFCe.Free;
end;

procedure TfrmConsVendaSAT.btEnviarEmailClick(Sender: TObject);
var dia, mes, ano : word;
    caminho_arquivo, caminho_pdf, mensagem, tipo_fiscal: string;
    FExtrato : TACBrSATExtratoFortes;
    FAcbrSAT : TACBrSAT;
    FGerarNFCe : GerarNFCe;
    ok : boolean;
begin
  inherited;
  ok := false;
  if qrVendasSAT.Active then
  begin
    if qrVendasSAT.RecordCount>0 then
    begin
      if qrVendasSAT.FieldByName('sat_cancelado').AsBoolean  then
      begin
        Application.MessageBox('Não é possível enviar pois este cupom foi cancelado!', 'Atenção', MB_ICONINFORMATION );
      end
      else
      begin
        caminho_pdf := ExtractFilePath(Application.ExeName)+'tmp\';
        criarDiretorio(caminho_pdf);
        caminho_pdf := caminho_pdf+ 'cupom.pdf';
        tipo_fiscal := qrVendasSAT.FieldByName('tipofiscal').asstring;

        if (tipo_fiscal='SAT') or (tipo_fiscal='MFE') then
        begin
          DecodeDate(qrVendasSAT.FieldByName('data_emissao').AsDateTime, ano, mes, dia);
          if tipo_fiscal='SAT' then
            caminho_arquivo :=format('%sCFeVenda\%d\%.2d\CFe%s.xml',[ExtractFilePath(ParamStr(0)) , ano, mes, qrVendasSAT.FieldByName('chave_acesso').Asstring])
          else
            caminho_arquivo :=format('%sMFE\MFEVenda\%d\%.2d\CFe%s.xml',[ExtractFilePath(ParamStr(0)) , ano, mes, qrVendasSAT.FieldByName('chave_acesso').Asstring]);

          if FileExists(caminho_arquivo) then
          begin
            if fileexists(caminho_pdf) then deletefile(caminho_pdf);

            FAcbrSAT := TACBrSAT.Create(Nil);
            FExtrato := TACBrSATExtratoFortes.Create(Nil);

            FExtrato.LarguraBobina    := 280;
            FExtrato.MargemSuperior   := 2;
//            FExtrato.Margens.Fundo    := 20;
            FExtrato.MargemEsquerda   := 0;
            FExtrato.MargemDireita    := 2;

            FExtrato.MostraPreview := True;
            FExtrato.MostraSetup := True;
            FExtrato.NomeDocumento := caminho_pdf;
            fextrato.Filtro := fiPDF;

            FAcbrSAT.Extrato := FExtrato;
            FAcbrSAT.CFe.LoadFromFile( caminho_arquivo );
            FAcbrSAT.ImprimirExtrato();

            ok := FileExists(caminho_pdf);

          end
          else
          begin
            Application.MessageBox('Não foi possível encontrar o arquivo do CFe!', 'Atenção', MB_ICONINFORMATION );
          end;
        end
        else if (tipo_fiscal='NFCE') then
        begin
          if fileexists(caminho_pdf) then deletefile(caminho_pdf);
          FGerarNFCe := GerarNFCe.Create;
          ok := FGerarNFCe.Imprimir(qrVendasSAT.FieldByName('id_venda').AsInteger, RecProj.iEmp, true, caminho_pdf );
          if not ok then
            Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
          FGerarNFCe.Free;
        end
        else
        begin
          Application.MessageBox('Opção disponível apenas para SAT, NFCE ou MFE.', 'Atenção', MB_ICONINFORMATION);
        end;

        if OK then
        begin
          mensagem:= Recproj.sEmp + sLineBreak + sLineBreak +
                     'Segue anexo o arquivo de cupom fiscal referente à venda '+
                     qrVendasSAT.FieldByName('nro_cupom').AsString + sLineBreak +sLineBreak +
                     'Mensagem automática, não responda a este email';
          frmEnvioEmail := TfrmEnvioEmail.Create(self, '', 'Envio de cupom fiscal', mensagem, caminho_pdf , false);
          frmEnvioEmail.showmodal;
          frmEnvioEmail.free;
          deletefile(caminho_pdf);
        end;
      end;
    end;
  end;
end;

procedure TfrmConsVendaSAT.btEnviarNFCEContingenciaClick(Sender: TObject);
var qtd_notas : integer;  ok : boolean;
begin
  inherited;
  if qrVendasSAT.active then
  begin
    if qrVendasSAT.RecordCount>0 then
    begin
      if application.MessageBox('Confirma o envio das NFCe''s em contingência à SEFAZ?', 'Atenção', MB_ICONQUESTION + MB_YESNO)=mryes then
      begin
        ok := EnviaNFCeContingencia(qrVendasSAT, qtd_notas);
        if qtd_notas<1 then
          application.MessageBox('Nenhuma nota pendente para envio com esses critérios de busca!', 'Atenção', MB_ICONInformation);
        if ok then
          application.MessageBox('Notas enviadas à SEFAZ!', 'Atenção', MB_ICONInformation);

        qrVendasSAT.Refresh;
      end;
    end;
  end;
end;

procedure TfrmConsVendaSAT.btExcluirClick(Sender: TObject);
var
  FGerarCFe : GerarCFe;
  FGerarNFCe : GerarNFCe;
  FGerarECF : GerarECF;
  id_usuario_cancelamento : integer;
  campo_permissao, just_canc, tipo_fiscal, caminho : string;
begin
  inherited;
  if qrVendasSAT.Active then
  begin
    if qrVendasSAT.RecordCount>0 then
    begin
      if qrVendasSAT.FieldByName('sat_cancelado').AsBoolean then
        application.MessageBox('Este cupom já foi cancelado!', 'Atenção', MB_ICONINFORMATION)
      else if qrVendasSAT.FieldByName('situacao_caixa').asinteger<>4 then
        application.MessageBox('O caixa dessa venda não encontra-se aberto!', 'Atenção', MB_ICONINFORMATION)
      else
      begin
        if (uppercase(qrVendasSAT.FieldByName('ven_024').asstring) = 'M') or
           (uppercase(qrVendasSAT.FieldByName('ven_024').asstring) = 'C') then
          campo_permissao := 'b_cancelamento_mesa'
        else if uppercase(qrVendasSAT.FieldByName('ven_024').asstring) = 'D' then
          campo_permissao := 'b_cancelamento_delivery'
        else if uppercase(qrVendasSAT.FieldByName('ven_024').asstring) = 'P' then
          campo_permissao := 'b_cancelamento_pdv'
        else if uppercase(qrVendasSAT.FieldByName('ven_024').asstring) = 'B' then
          campo_permissao := 'b_cancelamento_balcao'
        else campo_permissao :='';

        if campo_permissao<>'' then
        begin
          if frmMenu.ConfirmacaoSenha(campo_permissao, id_usuario_cancelamento) then
          begin
            just_canc := trim(Chama_Justificativa('Justificativa para cancelamento de Venda', 'Cancelamento de venda','Cancelamento de venda' ));

            if Length(just_canc)<15 then
            begin
              Application.MessageBox('É necessário uma justificativa com  mais 15 caracteres!', 'Atenção', 0 + 64);
              exit;
            end
            else
            begin
              tipo_fiscal := qrVendasSAT.FieldByName('tipofiscal').asstring;

              if (tipo_fiscal='SAT') or (tipo_fiscal='MFE') then
              begin
                FGerarCFe := GerarCFe.Create;
                if FGerarCFe.Cancelar(qrVendasSAT.FieldByName('id_venda').AsInteger, RecProj.iEmp) then
                  CancelaVenda(qrVendasSAT.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, just_canc ,true, true)
                else
                  Application.MessageBox(pchar( 'Código erro SAT/MFE: '+ IntToStr(FGerarCFe.codigoRet) + #13#10 + FGerarCFe.mensagem), 'Atenção', MB_ICONWARNING);
                FGerarCFe.Free;
              end
              else if tipo_fiscal='NFCE' then
              begin

                // se a nota foi emitida em contingencia e nao foi enviada a sefaz cancela e exclui o xml...
                if (qrVendasSAT.FieldByName('nfce_contingencia').asboolean) and (not qrVendasSAT.FieldByName('nfce_contingencia_enviada').asboolean ) then
                begin
                  if CancelaVenda(qrVendasSAT.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, just_canc ,true, true) then
                  begin
                    caminho :=  format('%ssNFCe\NFCeContingencia\%s\%s-nfe.xml',
                      [ExtractFilePath(ParamStr(0)),
                       FormatDateTime('yyyymm',qrVendasSAT.FieldByName('data_emissao').AsDateTime),
                       qrVendasSAT.FieldByName('chave_acesso').asstring ]);
                    if fileexists(caminho) then deletefile(caminho);
                  end;
                end
                else
                begin
                  FGerarNFCe := GerarNFCe.Create;
                  if FGerarNFCe.Cancelar(qrVendasSAT.FieldByName('id_venda').AsInteger, RecProj.iEmp, just_canc ) then
                    CancelaVenda(qrVendasSAT.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, just_canc ,true, true)
                  else
                    Application.MessageBox(pchar( 'Código erro NFCe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Atenção', MB_ICONWARNING);
                  FGerarNFCe.Free;
                end;
              end
              else //ECF
              begin
                FGerarECF := GerarECF.Create;
                if FGerarECF.Cancelar(qrVendasSAT.FieldByName('id_venda').AsInteger, RecProj.iEmp ) then
                  CancelaVenda(qrVendasSAT.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, just_canc ,true, true)
                else
                  Application.MessageBox(pchar(FGerarECF.mensagem), 'Atenção', MB_ICONWARNING);
                FGerarECF.Free;
              end;
            end;
          end;
        end
        else
          Application.MessageBox('Sem permissão para cancelar esse tipo de venda!', 'Atenção', MB_ICONWARNING);
      end;
    end;
    qrVendasSAT.Refresh;
  end;
end;

procedure TfrmConsVendaSAT.btPesquisarClick(Sender: TObject);
var filtro, filtro_cupom, filtro_cliente, filtro_situacao, filtro_tipo , filtro_tipo_fiscal : string;
begin
  inherited;

  if edCupom.Text<>'' then
    filtro_cupom :=  format(' and v.numero_cupom = %s ', [edCupom.Text])
  else
    filtro_cupom :='';

  if trim(edNomeCliente.Text)<>'' then
    filtro_cliente :=  format(' and c.cli_002 like  %s ', [   QuotedStr('%'+trim(edNomeCliente.Text)+'%')])
  else
    filtro_cliente :='';

  case rgFiltroSituacao.ItemIndex of
    1 : filtro_situacao := ' and (v.Ven_034 is null or v.Ven_034='''') '; // emitidas porem nao canceladas
    2 : filtro_situacao := ' and v.sit_001=2 ';                 // canceladas
    3 : filtro_situacao := ' and v.nfce_contingencia ';                 // em contingência
    else filtro_situacao :='';
  end;

  case rgFiltrotipo.ItemIndex of
    1 : filtro_tipo := ' and v.Ven_024 = ''M'' ';
    2 : filtro_tipo := ' and v.Ven_024 = ''D'' ';
    3 : filtro_tipo := ' and v.Ven_024 = ''B'' ';
    4 : filtro_tipo := ' and v.Ven_024 = ''C'' ';
    5 : filtro_tipo := ' and v.Ven_024 = ''P'' ';
    else filtro_tipo :='';
  end;

  case rgFiltroTipoFiscal.ItemIndex of
    0 : filtro_tipo_fiscal := ' and v.tipofiscal = ''SAT'' ';
    1 : filtro_tipo_fiscal := ' and v.tipofiscal = ''NFCE'' ';
    2 : filtro_tipo_fiscal := ' and v.tipofiscal = ''ECF'' ';
    else filtro_tipo_fiscal := ' and v.tipofiscal = ''MFE'' ';
  end;

  filtro :=  filtro_cupom + filtro_cliente + filtro_situacao  + filtro_tipo + filtro_tipo_fiscal + ' order by v.Ven_037 ' ;
  qrVendasSAT.Close;
  qrVendasSAT.SQL[i_where] := filtro;
  qrVendasSAT.ParamByName('data1').AsDateTime := dtpDataInicial.Date;
  qrVendasSAT.ParamByName('data2').AsDateTime := dtpDataFinal.Date+1;
  qrVendasSAT.ParamByName('id_empresa').asinteger := recproj.iemp;
  qrVendasSAT.Open;

end;

procedure TfrmConsVendaSAT.cxGrid2DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn : TcxCustomGridTableItem;
begin
  inherited;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sat_cancelado');

  if ARecord.Values[AColumn.Index]=true  then
    AStyle := frmMenu.cxFundoVermelho;
end;

procedure TfrmConsVendaSAT.FormShow(Sender: TObject);
begin
  inherited;
  btPesquisar.Click;
  rgFiltroTipoFiscal.ItemIndex := 0;
  rgFiltroTipoFiscalClick(nil) ;
end;

procedure TfrmConsVendaSAT.rgFiltroTipoFiscalClick(Sender: TObject);
begin
  inherited;
  btEnviarNFCEContingencia.Enabled :=  rgFiltroTipoFiscal.ItemIndex = 1;
end;

end.
