unit uVendabalcaotouchbalanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, dxGDIPlusClasses,
  Vcl.ExtCtrls, AdvPanel, uMenu,  Data.DB, MemDS, DBAccess,
  Uni, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.Mask, Vcl.DBCtrls,
  Funcao_DB, JvDataSource, AdvGlowButton, AdvSmoothTouchKeyBoard, AdvGroupBox;

type
  TfrmVendabalcaotouchbalanca = class(TfrmModelo)
    qrBuscaitembalanca: TUniQuery;
    dsBuscaitembalanca: TDataSource;
    qrBuscaitembalancamat_001: TIntegerField;
    qrBuscaitembalancamat_003: TWideStringField;
    qrBuscaitembalancamat_004: TWideStringField;
    qrBuscaitembalancamat_008: TFloatField;
    qrBuscaitembalancatara_balanca: TFloatField;
    jvdsBuscaItembalanca: TJvDataSource;
    btConfirma: TAdvGlowButton;
    btCancela: TAdvGlowButton;
    grTecladoNumerico: TAdvGroupBox;
    Image1: TImage;
    edValorkilo: TJvValidateEdit;
    edValortotalpagar: TJvValidateEdit;
    edPeso: TJvValidateEdit;
    edTarabalanca: TJvValidateEdit;
    AdvSmoothTouchKeyBoard1: TAdvSmoothTouchKeyBoard;
    constructor create(sender:tcomponent;id_material:integer);reintroduce;
    procedure calculo_balanca;
    procedure edPesoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
  private
   resultado:double;
  public
    quantidade:double;
  end;

var
  frmVendabalcaotouchbalanca: TfrmVendabalcaotouchbalanca;

implementation

{$R *.dfm}

uses uVendaBalcaoTouch;
constructor tfrmvendabalcaotouchbalanca.create(sender:tcomponent;id_material:integer);
begin
  inherited create(sender);
  qrBuscaitembalanca.close;
  qrBuscaitembalanca.ParamByName('mat_001').AsInteger:= id_material;
  qrBuscaitembalanca.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrBuscaitembalanca.Open;
end;

procedure TfrmVendabalcaotouchbalanca.edPesoExit(Sender: TObject);
begin

  calculo_balanca;

end;

procedure TfrmVendabalcaotouchbalanca.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=vk_return then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

procedure TfrmVendabalcaotouchbalanca.FormShow(Sender: TObject);
begin
  edpeso.SetFocus;

end;

procedure TfrmVendabalcaotouchbalanca.btCancelaClick(Sender: TObject);
begin
  close;

end;

procedure TfrmVendabalcaotouchbalanca.btConfirmaClick(Sender: TObject);
begin
 if edpeso.Value<=0 then
 begin
   Application.MessageBox('VALOR DO PESO NÃO PODE SER 0, POR FAVOR INFORME CORRETAMENTE O VALOR DO PESO!','Alerta',MB_ICONQUESTION+MB_OK);
   edpeso.Clear;
   edpeso.SetFocus;
   abort;
 end;
   if qrBuscaitembalanca.FieldByName('mat_008').Asfloat<=0 then
     begin
        Application.MessageBox('VALOR DO PRODUTO NÃO PODE SER 0, POR FAVOR INFORME CORRETAMENTE O VALOR DO PRODUTO!','Alerta',MB_ICONQUESTION+MB_OK);
        edpeso.SetFocus;
        abort;
     end;

   if resultado<=0 then
     begin
      Application.MessageBox('VALOR DO TOTAL NÃO PODE SER 0, POR FAVOR INFORME CORRETAMENTE O VALOR DO TOTAL, VERIFIQUE SE O VALOR DO PESO É MAIOR QUE O DA TARA!','Alerta',MB_ICONQUESTION+MB_OK);
      edpeso.SetFocus;
      abort;
     end;
       self.Tag:=1;
       close;


end;

procedure tfrmvendabalcaotouchbalanca.calculo_balanca;


begin
  resultado:=(edPeso.Value-qrBuscaitembalanca.FieldByName('tara_balanca').AsFloat)*(qrbuscaitembalanca.FieldByName('mat_008').AsFloat);
  edValortotalpagar.Value:=resultado;
  quantidade:=edpeso.Value-qrbuscaitembalanca.FieldByName('tara_balanca').AsFloat;
end;

end.
