unit uImportamesaecomanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, AdvPanel, AdvGlowButton, uni, JvComponentBase,
  JvEnterTab;

type
  TfrmImportamesaecomanda = class(TfrmModelo)
    ImgComanda: TImage;
    edMesa: TEdit;
    Label1: TLabel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    imgMesa: TImage;
    JvEnterAsTab1: TJvEnterAsTab;
    procedure btConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btCancelaClick(Sender: TObject);
  private
    tipo_venda: string;

  public
    id_venda: integer;
  end;

var
  frmImportamesaecomanda: TfrmImportamesaecomanda;

implementation

{$R *.dfm}

uses uMenu, uControlemesalancamento;

procedure TfrmImportamesaecomanda.btCancelaClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmImportamesaecomanda.btConfirmaClick(Sender: TObject);
var
  str_sql: string;
  qraux1: tuniquery;

begin

  if tipo_venda = 'M' then // Mesa
  begin

    if edMesa.Text = '' then
    begin
      Application.MessageBox
        ('Comanda não pode ser vazio, Por favor informe uma comanda válida',
        'alerta', +MB_ICONINFORMATION + mb_ok);
      edMesa.SetFocus;
      abort;
    end;

    str_sql :=
      'select com_003 from comanda where com_003=:com_003 and sit_001=4 and emp_001=:emp';
    qraux1 := tuniquery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('com_003').AsInteger := StrToInt(edMesa.Text);
    qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
    qraux1.Open;

    if qraux1.RecordCount > 0 then
    begin
      str_sql :=
        'select ven_026 from venda where ven_026=:ven_026 and emp_001=:emp and sit_001 in(8,21)';
      qraux1.close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('ven_026').AsInteger := StrToInt(edMesa.Text);
      qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
      qraux1.Open;

      if qraux1.RecordCount = 0 then
      begin
        str_sql :=
          'update venda set ven_024=''C'',ven_025=null,ven_026=:ven_026 where ven_001=:ven_001 and emp_001=:emp';
        qraux1.close;
        qraux1.SQL.Clear;
        qraux1.SQL.Add(str_sql);
        qraux1.ParamByName('ven_026').AsInteger := StrToInt(edMesa.Text);
        qraux1.ParamByName('ven_001').AsInteger := id_venda;
        qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
        qraux1.Execute;
        Application.MessageBox('Transferência efetivada com sucesso', 'alerta',
          +MB_ICONINFORMATION + mb_ok);

      end
      else
      begin
        Application.MessageBox
          ('Está comanda já possui venda, só é permitido transferir quando a comanda não estiver aberta',
          'alerta', +MB_ICONINFORMATION + mb_ok);
        edMesa.SetFocus;
        edMesa.Clear;
        abort;
      end;

    end
    else
    begin
      Application.MessageBox
        ('Comanda não existente, Por favor informe uma comanda válida',
        'alerta', +MB_ICONINFORMATION + mb_ok);
      edMesa.SetFocus;
      edMesa.Clear;
      abort;
    end;
    close;

  end
  else // Comanda
  begin
    if edMesa.Text = '' then
    begin
      Application.MessageBox
        ('Comanda não pode ser vazio, Por favor informe uma comanda válida',
        'alerta', +MB_ICONINFORMATION + mb_ok);
      edMesa.SetFocus;
      abort;
    end;
    // Verifica na tabela de mesa se existe a mesa digitada
    str_sql :=
      'select mes_003 from mesa where mes_003=:mes_003 and sit_001=4 and emp_001=:emp';
    qraux1 := tuniquery.Create(self);
    qraux1.Connection := frmmenu.conexao;
    qraux1.SQL.Add(str_sql);
    qraux1.ParamByName('mes_003').AsInteger := StrToInt(edMesa.Text);
    qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
    qraux1.Open;

    if qraux1.RecordCount > 0 then
    // Verifica se já existe uma venda com essa mesa aberta
    begin
      str_sql :=
        'select ven_025 from venda where ven_025=:ven_025 and emp_001=:emp and sit_001 in(8,21)';
      qraux1.close;
      qraux1.SQL.Clear;
      qraux1.SQL.Add(str_sql);
      qraux1.ParamByName('ven_025').AsInteger := StrToInt(edMesa.Text);
      qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
      qraux1.Open;

      if qraux1.RecordCount = 0 then // Faz o update
      begin
        str_sql :=
          'update venda set ven_024=''M'',ven_026=null,ven_025=:ven_025 where ven_001=:ven_001 and emp_001=:emp';
        qraux1.close;
        qraux1.SQL.Clear;
        qraux1.SQL.Add(str_sql);
        qraux1.ParamByName('ven_025').AsInteger := StrToInt(edMesa.Text);
        qraux1.ParamByName('ven_001').AsInteger := id_venda;
        qraux1.ParamByName('emp').AsInteger := RecProj.iEmp;
        qraux1.Execute;
        Application.MessageBox('Transferência efetivada com sucesso', 'alerta',
          +MB_ICONINFORMATION + mb_ok);

      end
      else
      begin
        Application.MessageBox
          ('Está Mesa já possui venda, só é permitido transferir quando a mesa não estiver aberta',
          'alerta', +MB_ICONINFORMATION + mb_ok);
        edMesa.SetFocus;
        edMesa.Clear;
        abort;
      end;

    end
    else
    begin
      Application.MessageBox
        ('Comanda não existente, Por favor informe uma comanda válida',
        'alerta', +MB_ICONINFORMATION + mb_ok);
      edMesa.SetFocus;
      edMesa.Clear;
      abort;
    end;
    close;

  end;

end;

procedure TfrmImportamesaecomanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
    Perform(WM_NEXTDLGCTL, 0, 0)
end;

procedure TfrmImportamesaecomanda.FormShow(Sender: TObject);
begin
  tipo_venda := frmControlemesalancamento.tipo_venda;
  if tipo_venda = 'M' then
  begin
    ImgComanda.Visible := true;
    imgMesa.Visible := false;
  end
  else
  begin
    ImgComanda.Visible := false;
    imgMesa.Visible := true;
  end;

end;

end.
