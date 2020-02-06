unit uEnvioCFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdSMTP, IdSSLOpenSSL,
  IdMessage,
  IdText, IdAttachmentFile, IdExplicitTLSClientServerBase, AdvGlowButton,
  Data.DB, Datasnap.DBClient, Vcl.ExtCtrls, AdvPanel, System.IOUtils, Uni;

type
  TfrmEnvioCFe = class(TForm)
    edDestinatario: TEdit;
    meMensagem: TMemo;
    cbMes: TComboBox;
    cbAno: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edAssunto: TEdit;
    btEnviar: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    pnPrincipal: TAdvPanel;
    cbTipoFiscal: TComboBox;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  frmEnvioCFe: TfrmEnvioCFe;

implementation

{$R *.dfm}

uses uRelatorioVendas, uMenu, uFuncoes;

procedure TfrmEnvioCFe.btCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEnvioCFe.btEnviarClick(Sender: TObject);
var
  caminho_7za, diretorio_exe, diretorio_arquivos, diretorio_cancelados, cmd,
    arquivo_zip, arquivo_zip_cancelados, arquivo_pdf, arquivo_pdf_cancelados,
    diretorio_correcao, arquivo_zip_correcao, str_sql: string;
  ano, mes, dia: Word;
  lStartUpInfo: TStartUpInfo;
  lProcesso: TProcessInformation;
  anexos: Tstringlist;
  data1, data2: TDate;
  ok, flag_cancelados: boolean;
  tipo_fiscal: string;
  indice, indice_cancelados: integer;
  qraux1: tuniquery;

begin

  // valida o email e assunto
  if trim(edDestinatario.Text) = '' then
  begin
    application.MessageBox('O destinatário não foi informado!', 'Atenção',
      MB_ICONINFORMATION);
    if edDestinatario.CanFocus then
      edDestinatario.SetFocus;
    abort;
  end;
  if trim(edAssunto.Text) = '' then
  begin
    application.MessageBox('O assunto da mensagem não foi informado!',
      'Atenção', MB_ICONINFORMATION);
    if edAssunto.CanFocus then
      edAssunto.SetFocus;
    abort;
  end;

  // Gera o relatorio em pdf
  ano := StrToInt(cbAno.Text);
  mes := cbMes.ItemIndex + 1;
  // cria a data inicial a partir do primeiro dia do mes atual, volta um mes...
  data1 := EncodeDate(ano, mes, 1);

  // cria a data final a partir do primeiro dia do mes atual, volta um dia...
  data2 := IncMonth(data1) - 1;

  // cria os diretorios
  diretorio_exe := ExtractFilePath(application.ExeName);

  tipo_fiscal := cbTipoFiscal.Text;

  if tipo_fiscal = 'SAT' then
  begin
    diretorio_arquivos := format('%sCFeVenda\%d\%.2d\',
      [diretorio_exe, ano, mes]);
    diretorio_cancelados := format('%sCFeCanc\%d\%.2d\',
      [diretorio_exe, ano, mes]);
    arquivo_pdf := format('%sEnviados_%.2d_%d.pdf',
      [diretorio_arquivos, mes, ano]);
    arquivo_pdf_cancelados := format('%sCancelados_%.2d_%d.pdf',
      [diretorio_cancelados, mes, ano]);
    indice := 6;
    indice_cancelados := 7;
  end

  // diretorio da nfe
  else if tipo_fiscal = 'NFE' then
  begin
    diretorio_arquivos := format('%sNFe\NFeVenda\%d%.2d\',
      [diretorio_exe, ano, mes]);
    diretorio_cancelados := format('%sNFe\NFeCancelamento\%d%.2d\',
      [diretorio_exe, ano, mes]);
    arquivo_pdf := format('%sNFeVenda_%.2d_%d.pdf',
      [diretorio_arquivos, mes, ano]);
    arquivo_pdf_cancelados := format('%sNFeCancelamento_%.2d_%d.pdf',
      [diretorio_arquivos, mes, ano]);
    diretorio_correcao := format('%sNFe\NFeCorrecao\%d%.2d\',
      [diretorio_exe, ano, mes]);
    indice := 15;
    indice_cancelados := 16;
  end

  else if tipo_fiscal = 'NFCE' then
  begin
    diretorio_arquivos := format('%sNFCe\NFCeVenda\%d%.2d\',
      [diretorio_exe, ano, mes]);
    diretorio_cancelados := format('%sNFCe\NFCeCancelamento\%d%.2d\',
      [diretorio_exe, ano, mes]);
    arquivo_pdf := format('%sEnviados_%.2d_%d.pdf',
      [diretorio_arquivos, mes, ano]);
    arquivo_pdf_cancelados := format('%sCancelados_%.2d_%d.pdf',
      [diretorio_cancelados, mes, ano]);
    indice := 8;
    indice_cancelados := 9;
  end
  else // MFE
  begin
    diretorio_arquivos := format('%sMFE\MFEVenda\%d\%.2d\',
      [diretorio_exe, ano, mes]);
    diretorio_cancelados := format('%sMFE\MFECancelamento\%d\%.2d\',
      [diretorio_exe, ano, mes]);
    arquivo_pdf := format('%sEnviados_%.2d_%d.pdf',
      [diretorio_arquivos, mes, ano]);
    arquivo_pdf_cancelados := format('%sCancelados_%.2d_%d.pdf',
      [diretorio_cancelados, mes, ano]);
    indice := 23;
    indice_cancelados := 24;
  end;

  if Not DirectoryExists(diretorio_arquivos) then
    ForceDirectories(diretorio_arquivos);
  if Not DirectoryExists(diretorio_cancelados) then
    ForceDirectories(diretorio_cancelados);
  if tipo_fiscal = 'NFE' then
    if Not DirectoryExists(diretorio_correcao) then
      ForceDirectories(diretorio_correcao);

  frmRelatorioVendas := TfrmRelatorioVendas.Create(self, indice);
  if frmRelatorioVendas.GeraRelatorioCFe(indice, data1, data2, tipo_fiscal,
    true, arquivo_pdf, '0') then
  begin

    flag_cancelados := frmRelatorioVendas.GeraRelatorioCFe(indice_cancelados,
      data1, data2, tipo_fiscal, true, arquivo_pdf_cancelados, '0');

    // define os caminhos dos arquivos
    caminho_7za := diretorio_exe + '7za\7za.exe';

    arquivo_zip := format('%sEnviados_%.2d_%d.zip',
      [diretorio_arquivos, mes, ano]);
    arquivo_zip_cancelados := format('%sCancelados_%.2d_%d.zip',
      [diretorio_cancelados, mes, ano]);
    if tipo_fiscal = 'NFE' then
      arquivo_zip_correcao := format('%sCorrecao_%.2d_%d.zip',
        [diretorio_correcao, mes, ano]);

    // verifica se o utilitario do 7zip está presente e compacta o arquivo de backup
    if FileExists(caminho_7za) then
    begin
      ok := false;
      lStartUpInfo.cb := 2048;
      lStartUpInfo.lpReserved := NIL;
      lStartUpInfo.lpDesktop := NIL;
      lStartUpInfo.lpTitle := NIL;
      lStartUpInfo.dwFlags := STARTF_USESHOWWINDOW;
      lStartUpInfo.wShowWindow := SW_SHOWNORMAL;
      // SW_Hide; //para não aparecer na tela!
      lStartUpInfo.cbReserved2 := 0;
      lStartUpInfo.lpReserved2 := NIL;

      // cria os arquivos de venda
      cmd := format('cmd /c ""%s" a -tzip -mx7 "%s" *.xml"',
        [caminho_7za, arquivo_zip]);
      if not CreateProcess(NIL, PChar(cmd), NIL, NIL, false, 0, NIL,
        PChar(diretorio_arquivos), lStartUpInfo, lProcesso) then
      begin
        application.MessageBox('Erro ao compactar os arquivos de venda!',
          'Backup', MB_OK + MB_ICONERROR);
        abort;
      end
      else
      begin
        WaitForSingleObject(lProcesso.hProcess, INFINITE);
        ok := true;
      end;

      // cria os arquivos de cancelamento
      if DirectoryExists(diretorio_cancelados) then
      begin
        if not TDirectory.IsEmpty(diretorio_cancelados) then
        begin
          cmd := format('cmd /c ""%s" a -tzip -mx7 "%s" *.xml"',
            [caminho_7za, arquivo_zip_cancelados]);
          if not CreateProcess(NIL, PChar(cmd), NIL, NIL, false, 0, NIL,
            PChar(diretorio_cancelados), lStartUpInfo, lProcesso) then
          begin
            application.MessageBox
              ('Erro ao compactar os arquivos de cancelamento!', 'Backup',
              MB_OK + MB_ICONERROR);
            abort;
          end
          else
          begin
            WaitForSingleObject(lProcesso.hProcess, INFINITE);
            ok := true;
          end;
        end;
      end;

      // cria os arquivos de correcao
      if tipo_fiscal = 'NFE' then
      begin
        if DirectoryExists(diretorio_correcao) then
        begin
          if not TDirectory.IsEmpty(diretorio_correcao) then
          begin
            cmd := format('cmd /c ""%s" a -tzip -mx7 "%s" *.xml"',
              [caminho_7za, arquivo_zip_correcao]);
            if not CreateProcess(NIL, PChar(cmd), NIL, NIL, false, 0, NIL,
              PChar(diretorio_correcao), lStartUpInfo, lProcesso) then
            begin
              application.MessageBox
                ('Erro ao compactar os arquivos de correção!', 'Backup',
                MB_OK + MB_ICONERROR);
              abort;
            end
            else
            begin
              WaitForSingleObject(lProcesso.hProcess, INFINITE);
              ok := true;
            end;
          end;
        end;
      end;

      if ok then
      begin
        str_sql := ' select identificador from empresas where emp_001=:emp';
        qraux1 := tuniquery.Create(self);
        qraux1.Connection := frmmenu.conexao;
        qraux1.SQL.Add(str_sql);
        qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
        qraux1.Open;
        anexos := Tstringlist.Create;
        anexos.Add(arquivo_zip);
        if FileExists(arquivo_zip_cancelados) then
          anexos.Add(arquivo_zip_cancelados);
        if FileExists(arquivo_pdf) then
          anexos.Add(arquivo_pdf);
        if FileExists(arquivo_pdf_cancelados) then
          anexos.Add(arquivo_pdf_cancelados);

        if tipo_fiscal = 'NFE' then
          if FileExists(arquivo_zip_correcao) then
            anexos.Add(arquivo_zip_correcao);
        if qraux1.FieldByName('identificador').AsString='S8' then
        begin
        // Arquivos compactados... envia o email
        EnviaEmailSSL('Sistema S8', trim(edDestinatario.Text),
          trim(edAssunto.Text), meMensagem.Text, anexos, true);
        end
        else
        begin
          EnviaEmailSSL('MFFOOD', trim(edDestinatario.Text),
          trim(edAssunto.Text), meMensagem.Text, anexos, true);
        end;

        GravaStringConfig('EDEMAILENVIOCFE', trim(edDestinatario.Text),
          frmmenu.cdsCFG.FileName);
        FreeAndNil(anexos);
      end;
    end
    else
    begin
      application.MessageBox('Utilitário 7Zip não encontrado!', 'Backup',
        MB_OK + MB_ICONWARNING);
    end;

  end
  else
    application.MessageBox('Sem dados no período!', 'Backup',
      MB_OK + MB_ICONWARNING);

end;

procedure TfrmEnvioCFe.cbMesChange(Sender: TObject);
var
  str_aux: string;
begin
  str_aux := format('Arquivos de Cupom Fiscal %s %.2d/%s - %s',
    [cbTipoFiscal.Text, cbMes.ItemIndex + 1, cbAno.Text, RecProj.sEmp]);
  edAssunto.Text := str_aux;
end;

procedure TfrmEnvioCFe.FormCreate(Sender: TObject);
var
  ano, mes, dia: Word;
begin
  DecodeDate(Date, ano, mes, dia);
  cbAno.Items.Clear;
  cbAno.Items.Add(inttostr(ano - 1));
  cbAno.Items.Add(inttostr(ano));

  if mes = 1 then
  begin
    cbMes.ItemIndex := 11;
    cbAno.ItemIndex := 0;
  end
  else
  begin
    cbMes.ItemIndex := mes - 2;
    cbAno.ItemIndex := 1;
  end;

  cbMesChange(nil);
  edDestinatario.Text := LerStringConfig('EDEMAILENVIOCFE',
    frmmenu.cdsCFG.FileName);
end;

end.
