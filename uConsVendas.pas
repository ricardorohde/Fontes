unit uConsVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoCons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  Datasnap.DBClient, Vcl.Menus, MemDS, DBAccess, Uni, Vcl.DBActns, Vcl.ActnList,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxImageComboBox, frxClass, frxDBSet;

type
  TfrmConsVendas = class(TfrmPadraoCons)
    qrConsultaven_001: TIntegerField;
    qrConsultaemp_001: TIntegerField;
    qrConsultaven_002: TWideMemoField;
    qrConsultafnc_001: TIntegerField;
    qrConsultafnc_002: TWideStringField;
    qrConsultaven_003: TFloatField;
    qrConsultaven_004: TDateTimeField;
    qrConsultaven_005: TDateTimeField;
    qrConsultacli_001: TIntegerField;
    qrConsultacli_003: TWideStringField;
    qrConsultacep_003: TWideStringField;
    qrConsultacli_004: TWideStringField;
    qrConsultacep_004: TWideStringField;
    qrConsultacli_008: TWideStringField;
    qrConsultacid_002: TWideStringField;
    qrConsultasit_001: TIntegerField;
    GradeConsultaseq_001: TcxGridDBColumn;
    GradeConsultaven_004: TcxGridDBColumn;
    GradeConsultasit_001: TcxGridDBColumn;
    qrConsultaven_006: TWideStringField;
    GradeConsultaven_006: TcxGridDBColumn;
    qrConsultatipo: TIntegerField;
    btEncerrar: TToolButton;
    qrConsultaenc_001: TIntegerField;
    btEstorno: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    act_Venda: TAction;
    ImprimirVenda1: TMenuItem;
    qrConsultaven_007: TFloatField;
    qrConsultaven_008: TFloatField;
    qrConsultaven_009: TFloatField;
    GradeConsultaven_009: TcxGridDBColumn;
    dbEmpresa: TfrxDBDataset;
    dbVendaItens: TfrxDBDataset;
    dbParcela: TfrxDBDataset;
    qrVendaItens: TUniQuery;
    qrVendaItensemp_001: TIntegerField;
    qrVendaItensven_001: TIntegerField;
    qrVendaItensite_001: TIntegerField;
    qrVendaItensmat_001: TIntegerField;
    qrVendaItensmat_003: TWideStringField;
    qrVendaItensuni_003: TWideStringField;
    qrVendaItenscom_002: TWideStringField;
    qrVendaItenscom_001: TIntegerField;
    qrVendaItensqtdevenda: TFloatField;
    qrVendaItensvlrvenda: TFloatField;
    qrVendaItensite_004: TFloatField;
    qrVendaItensite_005: TFloatField;
    qrVendaItenscomp: TWideStringField;
    dsVendaItens: TDataSource;
    dsVendaParcela: TDataSource;
    qrVendaParcela: TUniQuery;
    qrVendaParcelaemp_001: TIntegerField;
    qrVendaParcelaenc_001: TIntegerField;
    qrVendaParcelaite_001: TIntegerField;
    qrVendaParcelaite_002: TDateTimeField;
    qrVendaParcelaite_003: TFloatField;
    qrVendaParcelaite_004: TIntegerField;
    qrVendaParcelaite_005: TFloatField;
    qrVenda: TUniQuery;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendaven_002: TIntegerField;
    qrVendafnc_001: TIntegerField;
    qrVendafnc_002: TWideStringField;
    qrVendaven_003: TFloatField;
    qrVendaven_004: TDateTimeField;
    qrVendaven_005: TDateTimeField;
    qrVendaven_007: TFloatField;
    qrVendaven_008: TFloatField;
    qrVendaven_009: TFloatField;
    qrVendacli_001: TIntegerField;
    qrVendacli_003: TWideStringField;
    qrVendacep_003: TWideStringField;
    qrVendacli_004: TWideStringField;
    qrVendacep_004: TWideStringField;
    qrVendacli_008: TWideStringField;
    qrVendacid_002: TWideStringField;
    qrVendaven_006: TWideMemoField;
    qrVendaven_010: TWideStringField;
    qrVendaven_011: TWideStringField;
    qrVendaven_012: TWideStringField;
    qrVendaven_013: TFloatField;
    qrVendaven_014: TFloatField;
    qrVendaven_017: TDateTimeField;
    qrVendaven_018: TIntegerField;
    qrVendafnc_002_1: TWideStringField;
    qrVendaven_019: TDateTimeField;
    qrVendaven_020: TWideMemoField;
    qrVendaven_021: TWideMemoField;
    qrVendaven_022: TIntegerField;
    qrVendacor_001: TIntegerField;
    qrVendacor_002: TWideStringField;
    qrVendamon_001: TIntegerField;
    qrVendamon_002: TWideStringField;
    qrVendamod_001: TIntegerField;
    qrVendamod_002: TWideStringField;
    qrVendaenc_001: TIntegerField;
    qrVendaformpagto: TWideStringField;
    qrVendacondpagto: TWideStringField;
    qrVendaentrada: TFloatField;
    qrVendaacrescimo: TFloatField;
    qrVendadesconto: TFloatField;
    qrVendavalorvenda: TFloatField;
    dsVenda: TDataSource;
    RepVendaOrdem: TfrxReport;
    qrVendaven_015: TWideMemoField;
    qrVendaven_016: TWideMemoField;
    GradeConsultavlrproven: TcxGridDBColumn;
    qrConsultavlrproven: TFloatField;
    ToolButton3: TToolButton;
    btContaReceber: TToolButton;
    btReserva: TToolButton;
    dbVenda: TfrxDBDataset;
    RepVenda: TfrxReport;
    qrConsultacli_017: TFloatField;
    qrConsultames_002: TWideStringField;
    GradeConsultames_002: TcxGridDBColumn;
    qrConsultaven_025: TIntegerField;
    TmAtualiza: TTimer;
    qrConsultaven_027: TWideStringField;
    btFechaCaixa: TToolButton;
    qrConsultaven_029: TIntegerField;
    GradeConsultaven_001: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure qrConsultaBeforeDelete(DataSet: TDataSet);
    procedure GradeConsultaFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btEncerrarClick(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure qrConsultaAfterRefresh(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btEstornoClick(Sender: TObject);
    procedure act_VendaExecute(Sender: TObject);
    procedure qrVendaBeforeOpen(DataSet: TDataSet);
    procedure qrVendaItensBeforeOpen(DataSet: TDataSet);
    procedure qrVendaParcelaBeforeOpen(DataSet: TDataSet);
    procedure btContaReceberClick(Sender: TObject);
    procedure btReservaClick(Sender: TObject);
    procedure TmAtualizaTimer(Sender: TObject);
    procedure btFechaCaixaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure AjustaHint;
    Procedure ChecaBtns;
    Function VerificaTitulosReceber: Boolean;
    Procedure GeraTitulosPagar;
    Procedure CancelaTitulos;
    Procedure EstornaVenda;
    Procedure CarregaImpressao;
    Procedure AtualizaStatus;
    procedure FechaCaixa;
  public
    { Public declarations }
  end;

var
  frmConsVendas: TfrmConsVendas;

implementation

{$R *.dfm}

uses uDetalheVendas, uMenu, Funcao_DB, uFuncoes, uDetalheEncerraVenda,
  uPadraoDetalhe, uConsContasReceber;

procedure TfrmConsVendas.act_VendaExecute(Sender: TObject);
begin
  inherited;
   CarregaImpressao;
end;

procedure TfrmConsVendas.AjustaHint;
begin
   if qrConsultasit_001.AsInteger in [1, 2] then
      btEncerrar.Hint := 'Visualizar Encerramento (Ctrl+A)'
   else
   begin
      case qrConsultatipo.AsInteger of
        0: btEncerrar.Hint := 'Encerrar Venda (Ctrl+A)';
        //
        1: btEncerrar.Hint := '';
        //
        2: btEncerrar.Hint := 'Encerrar Orçamento (Ctrl+A)';
        //
        3: btEncerrar.Hint := 'Encerrar Consignado (Ctrl+A)';
        //
        4:
        begin
           if qrConsultasit_001.AsInteger = 9 then
              btEncerrar.Hint := 'Encerrar Ordem de Serviço (Ctrl+A)'
           else
              btEncerrar.Hint := 'Autorizar Ordem de Serviço (Ctrl+A)';
        end;
        5: btEncerrar.Hint := 'Encerrar Devolução (Ctrl+A)';
      end;
   end;
end;

procedure TfrmConsVendas.AtualizaStatus;
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE VENDA ');
      Add('    SET VEN_002 = 0 ');
      Add('      , DAT_001_2 = :DATA');
      Add('      , USU_001_2 = :USU');
      Add('      , SIT_001 = 8');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := qrConsultaven_001.AsInteger;
      ParamByName('DATA').AsDateTime := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger := recProj.iUsuario;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure TfrmConsVendas.btContaReceberClick(Sender: TObject);
var
   frmC: TfrmPadraoCons;
begin
  inherited;
   frmC := TfrmConsContasReceber.CreatePesquisaVenda(true, qrConsultaven_001.AsInteger);
   frmC.ShowModal;
   FreeAndNil(frmC);
end;

procedure TfrmConsVendas.btEncerrarClick(Sender: TObject);
var
   frmD: TfrmPadraoDetalhe;
begin
  inherited;
   if VerificaItensVendaAberto(qrConsultaven_001.AsInteger) then
   begin
      Application.MessageBox('Existem itens que ainda não foram pagos!', 'Atenção', 0+64);
      Exit;
   end;
   //
   if qrConsultasit_001.AsInteger in [1, 2] then
   begin
      Application.CreateForm(TfrmDetalheEncerraVenda, frmD);
      frmD.bUsaEmpresa := True;
      frmD.bVisualizar := True;
      frmD.Key := qrConsulta.Fields[18].AsInteger;
      frmD.ShowModal;
      FreeAndNil(frmD);
      Exit;
   end;
   //
   if (qrConsultaTipo.AsInteger = 3) and (not(TemReserva(qrConsultaven_001.AsInteger))) then
   begin
      if FazReserva(qrConsultaven_001.AsInteger) then
         qrConsulta.Refresh;
   end
   else
   begin
      //Venda
      if (qrConsultaTipo.AsInteger = 0)  then
      begin
         frmDetalheEncerraVenda := TfrmDetalheEncerraVenda.CreateEncerraVenda(True, qrConsultaven_001.AsInteger, qrConsultaven_025.AsInteger,
                                      qrConsultaven_025.AsString + '-' + qrConsultames_002.AsString, 'M', True, 0);
         frmDetalheEncerraVenda.ShowModal;
         FreeAndNil(frmDetalheEncerraVenda);
      end;
      //Orçamento
      if (qrConsultaTipo.AsInteger = 2)  then
      begin
         //Caso ainda nao tenha gerado as parcelas
         if qrConsultaenc_001.IsNull then
         begin
            frmDetalheEncerraVenda := TfrmDetalheEncerraVenda.CreateEncerraVenda(True, qrConsultaven_001.AsInteger, qrConsultacli_001.AsInteger,
                                         qrConsultaven_025.AsString + '-' + qrConsultames_002.AsString, 'M', False);
            frmDetalheEncerraVenda.ShowModal;
            FreeAndNil(frmDetalheEncerraVenda);
         end
         else
         begin
            Application.CreateForm(TfrmDetalheEncerraVenda, frmD);
            frmD.bUsaEmpresa := True;
            //frmD.bVisualizar := True;
            frmD.Key := qrConsulta.Fields[18].AsInteger;
            frmD.ShowModal;
            FreeAndNil(frmD);
            Exit;
         end;
      end;
      //Ordem de Serviço, ainda não autorizada
      if (qrconsultatipo.AsInteger = 4) and (qrConsultasit_001.AsInteger <> 9) then
      begin
         if Confirma('Deseja Autorizar a Ordem de Serviço?', 'ATENÇÃO', True) then
         begin
            AutorizaOrdemServico(qrConsultaven_001.AsInteger);
         end;
      end;
      //Ordem de Serviço, autorizada
      if (qrconsultatipo.AsInteger = 4) and (qrConsultasit_001.AsInteger = 9) then
      begin
         frmDetalheEncerraVenda := TfrmDetalheEncerraVenda.CreateEncerraVenda(True, qrConsultaven_001.AsInteger, qrConsultacli_001.AsInteger,
                                      qrConsultacli_001.AsString + '-' + qrConsultacli_003.AsString, 'M');
         frmDetalheEncerraVenda.ShowModal;
         FreeAndNil(frmDetalheEncerraVenda);
      end;
      //Devolução
      if (qrconsultatipo.AsInteger = 5) then
      begin
         if Confirma('Confirma a Devolução?', 'ATENÇÃO', True) then
         begin
            AdicionaEstoque(qrConsultaven_001.AsInteger);
            AutorizaDevolucao(qrConsultaven_001.AsInteger);
            GeraCreditoCliente(qrConsultacli_001.AsInteger, qrConsultaven_009.AsFloat);
         end;
      end;
      //
      qrConsulta.Close;
      qrConsulta.Open;
   end;
end;

procedure TfrmConsVendas.btEstornoClick(Sender: TObject);
begin
  inherited;
   if Confirma('Deseja realmente estornar essa venda?', 'ATENÇÃO') = False then
      Exit;
   //
//   if VerificaTitulosReceber then
//   begin
//      if Confirma('Existem Títulos Pagos no Contas à Receber, que serão Cancelados!' +#13+#13+
//                  'Deseja fazer o reembolso do valor?', 'ATENÇÃO', True) = False then
//      Exit;
      //
      //GeraTitulosPagar;
      //
//   end;
   //
   //Gera os titulos a Pagar (AQUI)
   //
   CancelaTitulos;
   //
   EstornaVenda;
   //
//   AdicionaEstoque(qrConsultaven_001.AsInteger);
   //
   qrConsulta.Close;
   qrConsulta.Open;
end;

procedure TfrmConsVendas.btFechaCaixaClick(Sender: TObject);
begin
  inherited;
   if Confirma('Deseja fechar o caixa para todos os pedidos?', 'ATENÇÃO', True) then
   begin
      FechaCaixa;
   end;
end;

procedure TfrmConsVendas.btReservaClick(Sender: TObject);
begin
  inherited;
   if Confirma('Deseja desfazer a reserva da venda selecionada?', 'ATENÇÃO', True) then
   begin
      if TemReserva(qrConsultaven_001.AsInteger) then
      begin
         RetiraReserva(qrConsultaven_001.AsInteger);
         AtualizaStatus;
         Application.MessageBox('Operação realizada com sucesso!', 'Atenção', 0+64);
         qrConsulta.Refresh;
      end;
   end;
end;

procedure TfrmConsVendas.CancelaTitulos;
var
   qrAux: TUniQuery;
begin
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      Add(' UPDATE CRECEBER ');
      Add('    SET SIT_001 = 2 ');
      Add('      , dat_001_2 = :DATA');
      Add('      , dat_001_3 = :DATA');
      Add('      , usu_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := qrConsultaven_001.AsInteger;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      //
      ExecSQL;
      //
      Close;
      Clear;
      Add('DELETE FROM ENCERRAVENDA WHERE VEN_001 = :VEN_001');
      ParamByName('VEN_001').AsInteger := qrConsultaven_001.AsInteger;
      //
      ExecSQL;
   end;
end;

procedure TfrmConsVendas.EstornaVenda;
var
   qrAux: TUniQuery;
begin
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Add(' UPDATE VENDA ');
      Add('    SET SIT_001 = 8 ');
      Add('      , dat_001_2 = :DATA');
      Add('      , dat_001_3 = :DATA');
      Add('      , usu_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := qrConsultaven_001.AsInteger;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure TfrmConsVendas.CarregaImpressao;
begin
   qrVenda.Close;
   qrVenda.Open;
   //
   qrVendaParcela.Close;
   qrVendaParcela.Open;
   //
   qrVendaItens.Close;
   qrVendaItens.Open;
   //
   if LerBoolean('VEIVENDA') then
      RepVendaOrdem.ShowReport
   else
      RepVenda.ShowReport;
end;

procedure TfrmConsVendas.ChecaBtns;
begin
   btnEditar.Enabled := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger in [8, 20, 21]);
   btReserva.Enabled := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger = 19);
   btnExcluir.Enabled := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger in [8, 1]);
   //btEncerrar.Enabled := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger in [1,8]);// and (qrConsultatipo.AsInteger in [0,3]);
   btEstorno.Enabled := (GradeConsulta.ViewData.RowCount > 0) and (qrConsultasit_001.AsInteger in [1, 2]);
end;

procedure TfrmConsVendas.dsConsultaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmConsVendas.FechaCaixa;
var
   qrAux: TUniQuery;
begin
   //
   try
      qrAux := TUniQuery.Create(Nil);
      with qrAux, SQL do
      begin
         Connection := frmMenu.conexao;
         Add(' UPDATE VENDA ');
         Add('    SET VEN_028 = ''S'' ');
         Add('      , dat_001_2 = :DATA');
         Add('      , dat_001_3 = :DATA');
         Add('      , usu_001_2 = :USU');
         Add(' WHERE EMP_001 = :EMP_001 ');
         Add('   AND VEN_028 = ''N'' ');
         ParamByName('EMP_001').AsInteger := recProj.iEmp;
         ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
         ParamByName('USU').AsInteger     := RecProj.iUsuario;
         ExecSQL;
      end;
   finally
      FreeAndNil(qrAux);
      Application.MessageBox('Operação realizada com sucesso!', 'Atenção', 0+64);
   end;
   //
end;
procedure TfrmConsVendas.FormCreate(Sender: TObject);
begin
   fSufix := 'CONFIGURACAO';
   sTabela := 'VENDA';
   frmDetalhe := TfrmDetalheVendas;
   inherited;

end;

procedure TfrmConsVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if ssCtrl in Shift then
   begin
      if (Char(Key) in ['A', 'a']) and (btEncerrar.Visible) and (btEncerrar.Enabled) then
         btEncerrar.Click;
   end;
end;

procedure TfrmConsVendas.FormShow(Sender: TObject);
begin
   Formatar_Float(qrConsultaven_007);
   Formatar_Float(qrConsultaven_008);
   Formatar_Float(qrConsultaven_009);
   Formatar_Float(qrConsultacli_017);
   Formatar_Float(qrConsultavlrproven);
   Formatar_DateTime(qrConsultaven_004, 'DD/MM/YYYY');
   //
   inherited;
   ChecaBtns;
end;

procedure TfrmConsVendas.GeraTitulosPagar;
var
   qrAux: TUniQuery;
   dValorPagar: Double;
begin
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      Add('SELECT SUM(REC_004) - REC_006 + REC_005 AS TOTAL'); //-rec_008
      Add('FROM CRECEBER');
      Add('WHERE EMP_001 = :EMP');
      Add('AND   VEN_001 = :VEN');
      Add('AND   SIT_001 IN (7, 13)');
      Add('GROUP BY REC_004, REC_006, REC_005, REC_008');
      ParamByName('EMP').AsInteger := RecProj.iEmp;
      ParamByName('VEN').AsInteger := qrConsultaven_001.AsInteger;
      Open;
   end;
   //
   qrAux.First;
   //
   dValorPagar := qrAux.FieldByName('TOTAL').AsFloat;
   //
   with qrAux, SQL do
   begin
      Close;
      Clear;
       Add('INSERT INTO CPAGAR(EMP_001, PAG_001, PAG_002, PAG_012, DAT_001_1, USU_001_1, CLI_001, PCG_001, PAG_016, PAG_011, PAG_009, PAG_003, PAG_010, VEN_001, USU_001_2, DAT_001_2, DAT_001_4, USU_001_4)');
       Add('VALUES(:EMP, :ID, :DATA, :DATA, :DATA, :USU, :CLI, 0, 0, :PED, 1, :VALOR, :VALOR, :VEN, :USU, :DATA, :DATA, :USU)');
       ParamByName('EMP').AsInteger := RecProj.iEmp;
       ParamByName('ID').AsInteger := NovoID(frmMenu.conexao, 'CPAGAR', RecProj.iEmp);
       ParamByName('DATA').AsDateTime := DataServer(frmMenu.conexao);
       ParamByName('USU').AsInteger := RecProj.iUsuario;
       ParamByName('CLI').AsInteger := qrConsultacli_001.AsInteger;
       ParamByName('PED').AsString := 'VE-'+ qrConsultaven_001.AsString;
       ParamByName('VALOR').AsFloat := dValorPagar;
       ParamByName('VEN').AsInteger := qrConsultaven_001.AsInteger;
       ExecSQL;
   end;
   FreeAndNil(qrAux);
end;

procedure TfrmConsVendas.GradeConsultaFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   AjustaHint;
   ChecaBtns;
end;

procedure TfrmConsVendas.qrConsultaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmConsVendas.qrConsultaBeforeDelete(DataSet: TDataSet);
var
   Index: Integer;
   qrAux: TUniQuery;
   sJust: string;
begin
   inherited;
   //
   Index := GradeConsulta.Controller.FocusedRow.Values[GradeConsultaven_001.Index];
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      Add(' SELECT DAT_001_3 ');
      Add(' FROM VENDA ');
      Add(' WHERE EMP_001 = :EMP ');
      Add('   AND VEN_001 = :VEN');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('VEN').AsInteger := Index;
      Open;
      //
   end;
   //
   if qrAux.IsEmpty then
   begin
      Application.MessageBox('A Venda está Inativa.', 'Atenção', 0 + 64);
      FreeAndNil(qrAux);
      Abort;
   end;
   //
   sJust := Chama_Justificativa('Justificativa da Inativação da Venda', 'Venda',
     qrConsultaven_029.AsString + ' - ' + qrConsultacli_003.AsString);
   //
   if sJust = '' then
   begin
      Application.MessageBox('É necessário uma justificativa.', 'Atenção', 0 + 64);
      Abort;
   end;
   //
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add(' UPDATE VENDA ');
      Add('    SET SIT_001 = 2 ');
      Add('      , dat_001_2 = :DATA');
      Add('      , dat_001_3 = :DATA');
      Add('      , usu_001_2 = :USU');
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := Index;
      ParamByName('DATA').AsDateTime   := DataServer(frmMenu.conexao);
      ParamByName('USU').AsInteger     := RecProj.iUsuario;
      ExecSQL;
      //
      if VerificaContasReceber(Index) then
      begin
         Close;
         Clear;
         Add(' DELETE FROM CRECEBER ');
         Add(' WHERE EMP_001 = :EMP_001 ');
         Add('   AND VEN_001 = :VEN_001 ');
         ParamByName('EMP_001').AsInteger := recProj.iEmp;
         ParamByName('VEN_001').AsInteger := Index;
         ExecSQL;
      end;
   end;
   //
   FreeAndNil(qrAux);
   //
   //GRAVA_LOG_CANCELAMENTO(7, Index, recProj.iUsuario, DataServer(frmMenu.conexao), sJust);
   //
   //qrConsulta.Refresh;
end;

procedure TfrmConsVendas.qrVendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrVenda.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrVenda.ParamByName('ID').AsInteger := qrConsultaven_001.AsInteger;
end;

procedure TfrmConsVendas.qrVendaItensBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrVendaItens.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrVendaItens.ParamByName('VEN').AsInteger := qrConsultaven_001.AsInteger;
end;

procedure TfrmConsVendas.qrVendaParcelaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   qrVendaParcela.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrVendaParcela.ParamByName('ENC').AsInteger := qrConsultaenc_001.AsInteger;
end;

procedure TfrmConsVendas.TmAtualizaTimer(Sender: TObject);
begin
  inherited;
   qrConsulta.Refresh;
end;

function TfrmConsVendas.VerificaTitulosReceber: Boolean;
var
   qrAux: TUniQuery;
begin
   Result := False;
   //
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      Add('SELECT COUNT(REC_001) AS QTDE');
      Add('FROM CRECEBER');
      Add('WHERE EMP_001 = :EMP');
      Add('AND   VEN_001 = :VEN');
      Add('AND   SIT_001 IN (7, 13)');
      ParamByName('EMP').AsInteger := RecProj.iEmp;
      ParamByName('VEN').AsInteger := qrConsultaven_001.AsInteger;
      Open;
   end;
   //
   qrAux.First;
   //
   if qrAux.FieldByName('QTDE').AsInteger > 0 then
      Result := True;
   //
   FreeAndNil(qrAux);
end;

end.
