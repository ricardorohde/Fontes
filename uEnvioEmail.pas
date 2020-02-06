unit uEnvioEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.Mask, JvExMask,
  JvToolEdit, Vcl.StdCtrls, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxButtonEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient,
  Vcl.Menus, Vcl.DBCtrls, dxGDIPlusClasses, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids;

type
  TfrmEnvioEmail = class(TfrmModelo)
    btConfirma: TAdvGlowButton;
    btCancelar: TAdvGlowButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edAssunto: TEdit;
    edDestinatario: TEdit;
    meMensagem: TMemo;
    cdsAnexos: TClientDataSet;
    cdsAnexoscaminho: TStringField;
    dsAnexos: TDataSource;
    Label5: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    cdsAnexosnome_arquivo: TStringField;
    cdsAnexosextensao: TStringField;
    imgTipoArq: TImage;
    DBText1: TDBText;
    imgRemover: TImage;
    PopupMenu1: TPopupMenu;
    Removeranexo1: TMenuItem;
    btAdicionarAnexo: TAdvGlowButton;
    imgArqPDF: TImage;
    imgArqZip: TImage;
    imgArqOutro: TImage;
    imgArqXml: TImage;
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    constructor Create(sender : Tcomponent; destinatario, assunto, mensagem : string;
                       anexos: TstringList; habilita_anexo : boolean = true);  Reintroduce; overload;
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure imgRemoverClick(Sender: TObject);
    procedure btAdicionarAnexoClick(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure AdicionarAnexo(caminho : string);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
    habilita_anexo : boolean;
  public
    { Public declarations }
    constructor Create(sender : Tcomponent; destinatario: string = ''; assunto : string ='';
                       mensagem : string =''; anexo : string=''; habilita_anexo : boolean = true); overload;
  end;

var
  frmEnvioEmail: TfrmEnvioEmail;

implementation

{$R *.dfm}

uses uFuncoes, uMenu;

procedure TfrmEnvioEmail.AdicionarAnexo(caminho : string);
var extensao, nome_arquivo : string;
begin
  if FileExists(caminho) then
  begin
    if not cdsAnexos.Locate('caminho', caminho, [] ) then
    begin
      extensao :=  trim(copy(caminho,lastdelimiter('.', caminho)+1, length(caminho)));
      nome_arquivo := trim(copy(caminho,lastdelimiter('\', caminho)+1, length(caminho)));
      cdsAnexos.Append;
      cdsAnexos.FieldByName('caminho').AsString :=  caminho;
      cdsAnexos.FieldByName('nome_arquivo').AsString :=  nome_arquivo;
      cdsAnexos.FieldByName('extensao').AsString :=  extensao;
      cdsAnexos.Post;
    end;
  end;
end;

procedure TfrmEnvioEmail.btConfirmaClick(Sender: TObject);
var listaAnexos : TStringList;
begin
  inherited;
  if trim(edDestinatario.Text)='' then
  begin
    Application.MessageBox('Informe o destinatário!','Atenção', MB_ICONINFORMATION);
    edDestinatario.SetFocus;
    abort;
  end;

  listaAnexos := TStringList.Create;
  cdsAnexos.First;
  while not cdsAnexos.Eof do
  begin
    listaAnexos.Add(cdsAnexos.FieldByName('caminho').asstring);
    cdsAnexos.next;
  end;

  if EnviaEmailSSL('MFFOOD', trim(edDestinatario.Text),
            trim(edAssunto.Text), meMensagem.Text, listaAnexos ,true) then
  begin
    self.tag := 1;
    self.Close;
  end;

end;

constructor TfrmEnvioEmail.Create(sender : Tcomponent; destinatario, assunto, mensagem : string;
                       anexos: TstringList; habilita_anexo : boolean = true);
var
  I: Integer;
begin
  inherited Create(sender);
  self.habilita_anexo := habilita_anexo;
  edDestinatario.Text := destinatario;
  edAssunto.Text := assunto;
  meMensagem.Text := mensagem;

  btAdicionarAnexo.Enabled :=  habilita_anexo;
  imgRemover.Visible := habilita_anexo;
  cdsAnexos.CreateDataSet;

  for I := 0 to anexos.Count-1 do
  begin
    AdicionarAnexo(anexos[i]);
  end;

end;

constructor TfrmEnvioEmail.Create(sender : Tcomponent; destinatario: string = ''; assunto : string ='';
                       mensagem : string =''; anexo : string=''; habilita_anexo : boolean = true);
var anexos : TstringList;
begin
  anexos := TstringList.Create;
  if trim(anexo)<>'' then  anexos.Add(anexo);

  Create(sender, destinatario, assunto, mensagem , anexos, habilita_anexo );

end;

procedure TfrmEnvioEmail.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  cdsAnexos.Delete;

end;

procedure TfrmEnvioEmail.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
var extensao : string;
begin
  inherited;
  if cdsAnexos.Active then
  begin
    if cdsAnexos.RecordCount > 0 then
    begin
      extensao := uppercase(cdsAnexos.FieldByName('extensao').asstring);
      if extensao = 'XML' then
        imgTipoArq.Picture := imgArqXml.Picture
      else if extensao = 'ZIP' then
        imgTipoArq.Picture := imgArqZip.Picture
      else if extensao = 'PDF' then
        imgTipoArq.Picture := imgArqPDF.Picture
      else
        imgTipoArq.Picture := imgArqOutro.Picture;
      imgTipoArq.Visible := true;
      imgRemover.Visible := true;
    end
    else
    begin
      imgTipoArq.Picture := nil;
      imgRemover.Visible :=false;
    end;
  end;
end;

procedure TfrmEnvioEmail.btAdicionarAnexoClick(Sender: TObject);
var arquivo : string;
    OpenDialog1 : TOpenDialog;
begin
  inherited;
  OpenDialog1 := TOpenDialog.Create(self);

  if OpenDialog1.Execute then
  begin
    arquivo :=  trim(OpenDialog1.FileName);
    if arquivo<>'' then AdicionarAnexo(arquivo);
  end;
  OpenDialog1.Free;

end;

procedure TfrmEnvioEmail.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.Tag:=0;
  self.Close;
end;

procedure TfrmEnvioEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if ((trim(edDestinatario.Text)<>'') or (trim(edAssunto.Text)<>'') or
     (trim(meMensagem.Text)<>'') ) and
     (self.Tag=0) then
  begin
    if Application.MessageBox('Deseja sair sem enviar?', 'Atenção', MB_ICONQUESTION + MB_OKCANCEL)<>mrOk then
      abort;
  end;
end;

procedure TfrmEnvioEmail.FormShow(Sender: TObject);
begin
  inherited;
  edDestinatario.setfocus;
end;

procedure TfrmEnvioEmail.imgRemoverClick(Sender: TObject);
begin
  inherited;
  if not habilita_anexo then exit;
  if cdsAnexos.RecordCount<1 then exit;

  if  Application.MessageBox('Excluir anexo?', 'Atenção', MB_ICONQUESTION + MB_YESNO )=mryes then
    cdsAnexos.Delete;
end;

procedure TfrmEnvioEmail.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  Removeranexo1.Enabled := (cdsAnexos.RecordCount>0) and habilita_anexo;

end;

end.
