unit uControleMesaRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, MemDS, DBAccess,
  Uni, frxClass, frxDBSet;

type
  TfrmControleMesaRelatorios = class(TForm)
    dbItensFracionadoOpcional: TfrxDBDataset;
    dbItensOpcional: TfrxDBDataset;
    dbVendaPagAntecipado: TfrxDBDataset;
    dbPedido: TfrxDBDataset;
    dbItens: TfrxDBDataset;
    dbItensFracionado: TfrxDBDataset;
    dsVendaItemRep: TDataSource;
    dsVendaItemFracionadoRep: TDataSource;
    qrVendaItemRep: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    WideMemoField1: TWideMemoField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    LargeintField1: TLargeintField;
    FloatField7: TFloatField;
    IntegerField5: TIntegerField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField6: TIntegerField;
    qrVendaItemFracionadoRep: TUniQuery;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField10: TIntegerField;
    WideMemoField2: TWideMemoField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    LargeintField2: TLargeintField;
    FloatField14: TFloatField;
    IntegerField11: TIntegerField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField12: TIntegerField;
    qrVendaItemFracionadoRepqtd_fracao: TWideMemoField;
    qrVendaMesaRep: TUniQuery;
    DateTimeField1: TDateTimeField;
    qrVendaMesaRepid_mesa: TIntegerField;
    qrVendaMesaRepid_venda: TIntegerField;
    qrVendaMesaRepnro_mesa: TIntegerField;
    qrVendaMesaRepdescricao_mesa: TWideStringField;
    qrVendaMesaRepobs_mesa: TWideStringField;
    qrVendaMesaRepdata_abertura: TDateTimeField;
    qrVendaMesaRepnro_pessoas: TIntegerField;
    qrVendaMesaRepnro_couvert_m: TIntegerField;
    qrVendaMesaRepnro_couvert_f: TIntegerField;
    qrVendaMesaRepcpf_cliente: TWideStringField;
    qrVendaMesaRepvalor_antecipado: TFloatField;
    qrVendaMesaRepvalor_desconto: TFloatField;
    qrVendaMesaRepnro_itens: TLargeintField;
    qrVendaMesaReptotal_couvert: TFloatField;
    qrVendaMesaRepvalor_pessoa: TFloatField;
    qrVendaPagAntecipado: TUniQuery;
    qrVendaPagAntecipadoid_formapgto: TIntegerField;
    qrVendaPagAntecipadovalor: TFloatField;
    dsVendaPagAntecipado: TDataSource;
    qrVendaItemOpcional: TUniQuery;
    qrVendaItemOpcionalid_venda: TIntegerField;
    qrVendaItemOpcionalid_empresa: TIntegerField;
    qrVendaItemOpcionalid_vendaitem: TIntegerField;
    qrVendaItemOpcionalid_opcional: TIntegerField;
    qrVendaItemOpcionaldescricao: TWideStringField;
    qrVendaItemOpcionalvalor: TFloatField;
    qrVendaItemOpcionalord: TIntegerField;
    qrVendaItemFracionadoOpcional: TUniQuery;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField15: TFloatField;
    WideStringField11: TWideStringField;
    IntegerField17: TIntegerField;
    dbEmpresa: TfrxDBDataset;
    Label1: TLabel;
    RepFechaConta: TfrxReport;
    qrVendaItemRepdata_hora_lancamento: TDateTimeField;
    qrVendaItemFracionadoRepdata_hora_lancamento: TDateTimeField;
    qrVendaMesaReptipo_venda: TWideStringField;
    qrVendaMesaRepvalor_desconto_itens: TFloatField;
    qrVendaMesaRepvalor_venda: TFloatField;
    qrVendaMesaRepvalor_tx: TFloatField;
    qrVendaMesaRepvalor_total_venda: TFloatField;
    qrVendaPagAntecipadodesc_formapag: TWideMemoField;
    qrVendaMesaReptotal_itens: TFloatField;
    qrVendaItemOpcionaltipo: TIntegerField;
    qrVendaItemFracionadoOpcionaltipo: TIntegerField;
    procedure ImprimeVenda(id_venda : integer ; pre_visualizar : boolean = false);
    procedure FormCreate(Sender: TObject);
    procedure qrVendaMesaRepCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    sCamImpCaixa, sMensagemTxServicoMesa, sMensagemTxServicoComanda,
    sMensagemCouvertMesa, sMensagemCouvertComanda  : string;
    bTaxaAdicionalMesa, bTaxaAdicionalComanda, bCouvertComanda, bCouvertMesa,
    agrupa_itens_mesa, agrupa_itens_comanda : boolean;
    fValorCouvertMascMesa, fValorCouvertFemMesa, fValorCouvertMascComanda,
    fValorCouvertFemComanda : double;

  public
    { Public declarations }
  end;

var
  frmControleMesaRelatorios: TfrmControleMesaRelatorios;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, Funcao_DB, Math;

procedure TfrmControleMesaRelatorios.FormCreate(Sender: TObject);
begin
  sCamImpCaixa:= LerStringConfig('CAMIMPCAIXA',frmMenu.cdsCFG.FileName);
  sMensagemTxServicoMesa := LerStringConfig('EDMENSAGEMTXSERVICO',frmMenu.cdsCFG.FileName);
  sMensagemTxServicoComanda := LerStringConfig('EDMENSAGEMTXSERVICOCOMANDA',frmMenu.cdsCFG.FileName);
  bTaxaAdicionalMesa :=  LerBooleanConfig('TAXAADICIONAL',frmMenu.cdsCFG.FileName);
  bTaxaAdicionalComanda :=  LerBooleanConfig('TAXAADICIONALCOMANDA',frmMenu.cdsCFG.FileName);
  bCouvertMesa := LerBooleanConfig('CKCOUVERTMESA', frmMenu.cdsCFG.FileName);
  bCouvertComanda := LerBooleanConfig('CKCOUVERTCOMANDA', frmMenu.cdsCFG.FileName);
  sMensagemCouvertMesa    := LerStringConfig('EDMENSAGEMCOUVERTMESA',frmMenu.cdsCFG.FileName);
  sMensagemCouvertComanda := LerStringConfig('EDMENSAGEMCOUVERTCOMANDA',frmMenu.cdsCFG.FileName);
  fValorCouvertMascMesa := LerFloatConfig('EDVALORCOUVERTMASC', frmMenu.cdsCFG.FileName);
  fValorCouvertFemMesa := LerFloatConfig('EDVALORCOUVERTFEM', frmMenu.cdsCFG.FileName);
  fValorCouvertMascComanda := LerFloatConfig('EDVALORCOUVERTMASCCOMANDA', frmMenu.cdsCFG.FileName);
  fValorCouvertFemComanda := LerFloatConfig('EDVALORCOUVERTFEMCOMANDA', frmMenu.cdsCFG.FileName);
  agrupa_itens_mesa := LerBooleanConfig('CKAGRUPARITENSIGUAISIMPRESSAOMESA',frmMenu.cdsCFG.FileName);
  agrupa_itens_comanda := LerBooleanConfig('CKAGRUPARITENSIGUAISIMPRESSAOCOMANDA',frmMenu.cdsCFG.FileName);
end;

procedure TfrmControleMesaRelatorios.ImprimeVenda(id_venda : integer; pre_visualizar : boolean = false);
var imprimir, bTaxaAdicional, bCouvert, agrupar_itens, impressao_mobile : boolean;
    sMensagemTxServico, sMensagemCouvert, str_sql , tipo_venda : string;
    valor_couvert_masc , valor_couvert_fem : double;
    Page : TfrxReportPage;
    qraux : TUniQuery;
    status : integer;
    impressora_modo_pos: Boolean;
    numero_vias: Integer;
begin
  imprimir := true;
  qraux := TUniQuery.create(self);
  qraux.Connection := frmmenu.conexao;

  str_sql := format('select sit_001 as status, ven_024 as tipo_venda, imprimir_prefechamento_mobile from venda where ven_001=%d and emp_001=%d ',
                     [id_venda, recproj.iEmp]);
  ExecutaConsultaSQL(qraux, str_sql);
  status :=qraux.FieldByName('status').asinteger;
  tipo_venda := qraux.FieldByName('tipo_venda').AsString;
  impressao_mobile := qraux.FieldByName('imprimir_prefechamento_mobile').asboolean;

  if tipo_venda='M' then
  begin
    bTaxaAdicional := bTaxaAdicionalMesa;
    sMensagemTxServico := sMensagemTxServicoMesa;
    bCouvert := bCouvertMesa;
    sMensagemCouvert := sMensagemCouvertMesa;
    valor_couvert_masc := fValorCouvertMascMesa;
    valor_couvert_fem := fValorCouvertFemMesa;
    agrupar_itens :=  agrupa_itens_mesa;
  end
  else
  begin
    bTaxaAdicional := bTaxaAdicionalComanda;
    sMensagemTxServico := sMensagemTxServicoComanda;
    bCouvert := bCouvertComanda;
    sMensagemCouvert := sMensagemCouvertComanda;
    valor_couvert_masc := fValorCouvertMascComanda;
    valor_couvert_fem := fValorCouvertFemComanda;
    agrupar_itens :=  agrupa_itens_comanda;
  end;

  if trim(sMensagemCouvert) = '' then sMensagemCouvert := 'Couvert (+):';

  // se o status da mesa ja estiver como pre fechado...
  if status=21 then
  begin
    //se não estiver vindo do mobile, pergunta se quer reimprimir
    if not impressao_mobile then
      imprimir:=Application.MessageBox('Esta venda já está fechada, gostaria de reimprimir?', 'Atenção', MB_ICONQUESTION + MB_YESNO) =mryes;
  end;

  if imprimir then
  begin
    qrVendaItemRep.Close;
    qrVendaItemFracionadoRep.Close;
    qrVendaMesaRep.Close;
    qrVendaItemOpcional.Close;
    qrVendaItemFracionadoOpcional.Close;
    qrVendaPagAntecipado.close;

    qrVendaItemRep.ParamByName('id_venda').AsInteger := id_venda;
    qrVendaItemRep.ParamByName('emp').AsInteger := recproj.iEmp;
    qrVendaItemRep.ParamByName('agrupar_itens').AsBoolean := agrupar_itens;

    qrVendaItemFracionadoRep.ParamByName('id_venda').AsInteger := id_venda;
    qrVendaItemFracionadoRep.ParamByName('emp').AsInteger := recproj.iEmp;

    qrVendaMesaRep.ParamByName('id_venda').AsInteger := id_venda;
    qrVendaMesaRep.ParamByName('emp').AsInteger := recproj.iEmp;
    qrVendaMesaRep.ParamByName('flag_couvert_mesa').AsBoolean := bCouvert;
    qrVendaMesaRep.ParamByName('valor_couvert_masc').AsFloat := valor_couvert_masc;
    qrVendaMesaRep.ParamByName('valor_couvert_fem').AsFloat := valor_couvert_fem;

    qrVendaItemOpcional.ParamByName('id_venda').AsInteger := id_venda;
    qrVendaItemOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;
    qrVendaItemFracionadoOpcional.ParamByName('id_venda').AsInteger := id_venda;
    qrVendaItemFracionadoOpcional.ParamByName('id_empresa').AsInteger := recproj.iEmp;

    if bTaxaAdicional then
    begin
      qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=1;
      qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=1;
      qrVendaMesaRep.ParamByName('flag_taxa_10').AsInteger :=1;
      qrVendaPagAntecipado.ParamByName('flag_taxa_10').AsInteger:=1
    end
    else
    begin
      qrVendaItemFracionadoRep.ParamByName('flag_taxa_10').AsInteger :=0;
      qrVendaItemRep.ParamByName('flag_taxa_10').AsInteger :=0;
      qrVendaMesaRep.ParamByName('flag_taxa_10').AsInteger :=0;
      qrVendaPagAntecipado.ParamByName('flag_taxa_10').AsInteger:=0;
    end;

    qrVendaPagAntecipado.ParamByName('id_venda').AsInteger:=id_venda;
    qrVendaPagAntecipado.ParamByName('emp').AsInteger:=RecProj.iEmp;

    qrVendaItemRep.open;
    qrVendaItemFracionadoRep.open;
    qrVendaMesaRep.Open;
    qrVendaItemOpcional.open;
    qrVendaPagAntecipado.open;
    qrVendaItemFracionadoOpcional.Open;

    // Rafael 14/09/2017
    impressora_modo_pos := LerIntegerConfig('CXMODOIMPCAIXA',frmmenu.cdsCFG.FileName)=1;

    if impressora_modo_pos then
    begin
      numero_vias := 1;

      frmmenu.ImprimeCupomPOS(qrVendaMesaRep, nil, qrVendaItemRep,
                              qrVendaItemOpcional, qrVendaItemFracionadoRep,
                              qrVendaItemFracionadoOpcional, qrVendaPagAntecipado,
                              nil, 1, sMensagemCouvert, sMensagemTxServico,
                              '', false, '', 'CAIXA', numero_vias, True, pre_visualizar);
    end
    else
    begin
      RepFechaConta.PrintOptions.Printer := sCamImpCaixa;
      RepFechaConta.Variables['sMensagemTxServico'] := QuotedStr(sMensagemTxServico);
      RepFechaConta.Variables['sMensagemCouvert'] := QuotedStr(sMensagemCouvert);
      RepFechaConta.LoadFromFile('C:\EliteFood\Relatorios\PREFECHAMENTO.fr3');
      RepFechaConta.PrepareReport;

      if pre_visualizar then
        RepFechaConta.ShowReport
      else
        RepFechaConta.Print;
    end;
  end;
end;

procedure TfrmControleMesaRelatorios.qrVendaMesaRepCalcFields(
  DataSet: TDataSet);
begin
  qrVendaMesaRep.FieldByName('data_atual').AsDateTime := Date + Time;
end;

end.
