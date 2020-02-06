unit uResumodacasa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, JvDataSource, Vcl.StdCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.DBCtrls, Data.DB, MemDS, DBAccess,
  Uni, Vcl.ExtCtrls, AdvGroupBox, AdvPanel, AdvGlowButton, dxGDIPlusClasses;

type
  TfrmResumodacasa = class(TfrmModelo)
    qrFinalizados: TUniQuery;
    dsFinalizados: TDataSource;
    qrFinalizadosid_empresa: TIntegerField;
    qrFinalizadosid_caixa: TIntegerField;
    qrFinalizadosqtde_vendas_mesa: TFloatField;
    qrFinalizadostotal_mesa: TFloatField;
    qrFinalizadosqtde_vendas_delivery: TFloatField;
    qrFinalizadostotal_delivery: TFloatField;
    qrFinalizadosqtde_vendas_balcao: TFloatField;
    qrFinalizadostotal_balcao: TFloatField;
    qrFinalizadosqtde_vendas_comanda: TFloatField;
    qrFinalizadostotal_comanda: TFloatField;
    qrFinalizadosqtde_vendas_pdv: TFloatField;
    qrFinalizadostotal_pdv: TFloatField;
    qrFinalizadostotal_desconto_item: TFloatField;
    qrFinalizadostotal_desconto_venda: TFloatField;
    qrFinalizadostotal_descontos: TFloatField;
    qrFinalizadosnro_pessoas: TFloatField;
    qrFinalizadosnro_couvert_f: TFloatField;
    qrFinalizadosnro_couvert_m: TFloatField;
    qrFinalizadosacrescimo_venda: TFloatField;
    qrFinalizadosvalor_couvert: TFloatField;
    qrFinalizadostotal_suprimento: TFloatField;
    qrFinalizadostotal_retirada: TFloatField;
    qrFinalizadostotal_outros_creditos: TFloatField;
    qrFinalizadostotal_outros_debitos: TFloatField;
    qrFinalizadostotal_estorno: TFloatField;
    qrFinalizadossaldo: TFloatField;
    qrFinalizadosdiferenca: TFloatField;
    qrFinalizadostotal_pagamento_debito: TFloatField;
    qrFinalizadostotal_pagamento_credito: TFloatField;
    qrFinalizadostotal_pagamento_dinheiro: TFloatField;
    qrFinalizadostotal_pagamento_cheque: TFloatField;
    qrFinalizadostotal_pagamento_outra: TFloatField;
    qrFinalizadostotal_pagamento_fiado: TFloatField;
    qrAtendimento: TUniQuery;
    dsAtendimento: TDataSource;
    qrAtendimentototal_mesa: TFloatField;
    qrAtendimentototal_delivery: TFloatField;
    qrAtendimentototal_comanda: TFloatField;
    qrAtendimentototal_geral: TFloatField;
    imgFundo: TImage;
    DBText5: TDBText;
    DBText2: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText10: TDBText;
    DBText8: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText11: TDBText;
    DBText15: TDBText;
    lblTotal: TLabel;
    btSair: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResumodacasa: TfrmResumodacasa;

implementation

{$R *.dfm}

uses uMenu;

// Nem precisa comentar o código    Rafael v 2.44    12/07/2018

procedure TfrmResumodacasa.btSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmResumodacasa.FormShow(Sender: TObject);
begin
  inherited;
  qrFinalizados.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrfinalizados.Open;
  qrAtendimento.ParamByName('emp').AsInteger:=RecProj.iEmp;
  qratendimento.Open;
  lblTotal.Caption:= 'R$' + FormatFloat('###,###,##0.00',qrAtendimento.FieldByName('total_geral').AsFloat+qrFinalizados.FieldByName('saldo').AsFloat);
end;

end.
