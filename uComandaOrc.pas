unit uComandaOrc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Data.DB, MemDS, DBAccess,
  Uni, Vcl.StdCtrls, Vcl.ExtCtrls, AdvPanel, dxGDIPlusClasses;

type
  TfrmComandaOrc = class(TfrmModelo)
    AdvPanel1: TAdvPanel;
    edComanda: TEdit;
    Label1: TLabel;
    qrConsulta: TUniQuery;
    Image1: TImage;
    procedure edComandaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_orcamento: integer;
    sTela: string;
  end;

var
  frmComandaOrc: TfrmComandaOrc;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmComandaOrc.edComandaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if trim(edComanda.Text) = EmptyStr then
      Exit;

    if sTela = 'ORC' then
    begin
      //Verifica o cadastro de comandas
      qrConsulta.Close;
      qrConsulta.SQL.Text:= 'select * from comanda where emp_001 = :emp and sit_001 = 4 and com_003 = :comanda';
      qrConsulta.ParamByName('emp').AsInteger     := RecProj.iEmp;
      qrConsulta.ParamByName('comanda').AsInteger := strtoint(edComanda.Text);
      qrConsulta.Open;

      if qrConsulta.RecordCount = 0 then
      begin
        Application.MessageBox('Comanda não cadastrada!', 'ALERTA', +MB_ICONEXCLAMATION + MB_OK);
        edComanda.Clear;
        edComanda.SetFocus;
        Exit
      end;

      //Verifica se tem orçamento salvo (aguardando fechamento) vinculado a essa comanda
      qrConsulta.Close;
      qrConsulta.SQL.Text:= 'select id_orcamento from orcamento where id_empresa = :id_empresa and id_situacao = 11 and comanda = :comanda';
      qrConsulta.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
      qrConsulta.ParamByName('comanda').AsInteger    := strtoint(edComanda.Text);
      qrConsulta.Open;

      if qrConsulta.RecordCount > 0 then
      begin
        Application.MessageBox('Comanda aguardando importação (PDV/NFE)!', 'ALERTA', +MB_ICONEXCLAMATION + MB_OK);
        edComanda.Clear;
        edComanda.SetFocus;
        Exit
      end;

      //Verifica se tem orçamento salvo em aberto vinculado a essa comanda
      qrConsulta.Close;
      qrConsulta.SQL.Text:= 'select id_orcamento from orcamento where id_empresa = :id_empresa and id_situacao = 4 and comanda = :comanda';
      qrConsulta.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
      qrConsulta.ParamByName('comanda').AsInteger    := strtoint(edComanda.Text);
      qrConsulta.Open;

      if qrConsulta.RecordCount = 0 then
        id_orcamento:= 0
      else
        id_orcamento:= qrConsulta.FieldByName('id_orcamento').AsInteger;
    end
    else if sTela = 'PDV' then
    begin
      //Verifica o cadastro de comandas
      qrConsulta.Close;
      qrConsulta.SQL.Text:= 'select * from comanda where emp_001 = :emp and sit_001 = 4 and com_003 = :comanda';
      qrConsulta.ParamByName('emp').AsInteger     := RecProj.iEmp;
      qrConsulta.ParamByName('comanda').AsInteger := strtoint(edComanda.Text);
      qrConsulta.Open;

      if qrConsulta.RecordCount = 0 then
      begin
        Application.MessageBox('Comanda não cadastrada!', 'ALERTA', +MB_ICONEXCLAMATION + MB_OK);
        edComanda.Clear;
        edComanda.SetFocus;
        Exit
      end;

      //Verifica se tem orçamento salvo vinculado a essa comanda
      qrConsulta.Close;
      qrConsulta.SQL.Text:= 'select id_orcamento from orcamento where id_empresa = :id_empresa and id_situacao = 11 and comanda = :comanda';
      qrConsulta.ParamByName('id_empresa').AsInteger := RecProj.iEmp;
      qrConsulta.ParamByName('comanda').AsInteger    := strtoint(edComanda.Text);
      qrConsulta.Open;

      if qrConsulta.RecordCount = 0 then
      begin
        Application.MessageBox('Comanda não encontrada!', 'ALERTA', +MB_ICONEXCLAMATION + MB_OK);
        edComanda.Clear;
        edComanda.SetFocus;
        Exit
      end
      else
        id_orcamento:= qrConsulta.FieldByName('id_orcamento').AsInteger;
    end;

    Self.Tag:= 1;

    Close;
  end;
end;

procedure TfrmComandaOrc.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Tag:= 0;
  id_orcamento:= 0;
end;

end.
