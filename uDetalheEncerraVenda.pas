unit uDetalheEncerraVenda;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels,
   Data.DB,
   MemDS, DBAccess, Uni, Vcl.DBActns, Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls,
   Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeelPainters,
   cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
   RxCurrEdit, RxDBCtrl, cxMaskEdit, cxButtonEdit, cxDBEdit, cxTextEdit, cxPC,
   cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
   cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
   cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxCalendar,
   Vcl.DBCtrls, cxMemo, Datasnap.DBClient, RpBase, RpSystem, RpDefine, RpRave,
   frxClass, frxDBSet, frxPreview, RpCon, RpConDS, fs_idbrtti, fs_ipascal,
   fs_iinirtti, dxBarBuiltInMenu, System.Actions;

type
   TfrmDetalheEncerraVenda = class(TfrmPadraoDetalhe)
      pcAbas: TcxPageControl;
      tsDados: TcxTabSheet;
      Label7: TLabel;
      edCodigo: TcxDBTextEdit;
      Label1: TLabel;
      edVenda: TcxDBTextEdit;
      Label2: TLabel;
      Label3: TLabel;
      tsObs: TcxTabSheet;
      Label30: TLabel;
      edForma: TcxDBButtonEdit;
      cxDBTextEdit7: TcxDBTextEdit;
      Label4: TLabel;
      edCondicao: TcxDBButtonEdit;
      cxDBTextEdit1: TcxDBTextEdit;
      lbValor: TLabel;
      edEntrada: TRxDBCalcEdit;
      pnParcela: TPanel;
      gbParcela: TGroupBox;
      GridParcelasDBTableView1: TcxGridDBTableView;
      GridParcelasLevel1: TcxGridLevel;
      GridParcelas: TcxGrid;
      gbusuarios: TGroupBox;
      Label15: TLabel;
      Label37: TLabel;
      edDataCadastro: TDBText;
      Label14: TLabel;
      edUsuCadastrado: TDBText;
      DBText1: TDBText;
      edObs: TcxDBMemo;
      qrDetalheenc_001: TIntegerField;
      qrDetalheemp_001: TIntegerField;
      qrDetalheven_001: TIntegerField;
      qrDetalhecli_001: TIntegerField;
      qrDetalheenc_002: TDateTimeField;
      qrDetalheenc_003: TFloatField;
      qrDetalheenc_004: TWideMemoField;
      qrDetalheenc_005: TFloatField;
      qrDetalhefor_001: TIntegerField;
      qrDetalhefor_002: TWideStringField;
      qrDetalhecon_001: TIntegerField;
      qrDetalhecon_002: TWideStringField;
      qrDetalhesit_001: TIntegerField;
      qrDetalheusu_001_1: TIntegerField;
      qrDetalhedat_001_1: TDateTimeField;
      qrDetalheinclusao: TWideStringField;
      qrDetalhesituacao: TWideStringField;
      Label5: TLabel;
      edValorVenda: TcxDBTextEdit;
      qrParcela: TUniQuery;
      dsParcela: TDataSource;
      qrParcelaemp_001: TIntegerField;
      qrParcelaenc_001: TIntegerField;
      qrParcelaite_001: TIntegerField;
      qrParcelaite_002: TDateTimeField;
      qrParcelaite_003: TFloatField;
      GridParcelasDBTableView1ite_002: TcxGridDBColumn;
      GridParcelasDBTableView1ite_003: TcxGridDBColumn;
      qrParcelaite_004: TIntegerField;
      GridParcelasDBTableView1ite_004: TcxGridDBColumn;
      qrDetalheenc_006: TFloatField;
      qrDetalheenc_007: TFloatField;
      Label6: TLabel;
      edAcrescimo: TcxDBTextEdit;
      edDesconto: TcxDBTextEdit;
      Label8: TLabel;
      Label9: TLabel;
      qrParcelaite_005: TFloatField;
      GridParcelasDBTableView1ite_005: TcxGridDBColumn;
      qrDetalhecon_003: TIntegerField;
      qrDetalhecon_004: TIntegerField;
      Label10: TLabel;
      edValor: TcxDBTextEdit;
      qrDetalhevalor: TFloatField;
      dsCdsParcela: TDataSource;
      cdsParcela: TClientDataSet;
      cdsParcelaite_002: TDateTimeField;
      cdsParcelaite_003: TFloatField;
      cdsParcelaite_004: TIntegerField;
      cdsParcelaite_005: TFloatField;
      qrDetalhecliente: TWideStringField;
      RepVenda: TfrxReport;
      dbVenda: TfrxDBDataset;
      dbEmpresa: TfrxDBDataset;
      edCliente: TDBEdit;
      qrVenda: TUniQuery;
      dsVenda: TDataSource;
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
      qrVendaParcela: TUniQuery;
      dsVendaParcela: TDataSource;
      qrVendaParcelaemp_001: TIntegerField;
      qrVendaParcelaenc_001: TIntegerField;
      qrVendaParcelaite_001: TIntegerField;
      qrVendaParcelaite_002: TDateTimeField;
      qrVendaParcelaite_003: TFloatField;
      qrVendaParcelaite_004: TIntegerField;
      dbParcela: TfrxDBDataset;
      qrVendaParcelaite_005: TFloatField;
      dsVendaItens: TDataSource;
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
      dbVendaItens: TfrxDBDataset;
      RepVendaOrdem: TfrxReport;
      qrVendaven_015: TWideMemoField;
      qrVendaven_016: TWideMemoField;
      qrDetalherecebido: TFloatField;
      Label11: TLabel;
      edRecebido: TRxDBCalcEdit;
      Label12: TLabel;
      edTroco: TcxDBTextEdit;
      qrDetalhetroco: TFloatField;
      qrDetalhetotal: TFloatField;
    edTotal: TcxDBTextEdit;
    edValidade: TcxDBDateEdit;
    qrDetalhecredito: TFloatField;
    qrDetalhemes_001: TIntegerField;
    qrDetalhemes_002: TWideStringField;
    qrDetalheven_029: TIntegerField;
    edtObsGeral: TEdit;
    Label13: TLabel;
      procedure qrDetalheenc_001GetText(Sender: TField; var Text: string;
        DisplayText: Boolean);
      procedure qrDetalheNewRecord(DataSet: TDataSet);
      procedure qrDetalheAfterInsert(DataSet: TDataSet);
      procedure FormShow(Sender: TObject);
      procedure qrDetalheBeforePost(DataSet: TDataSet);
      procedure qrParcelaBeforeOpen(DataSet: TDataSet);
      procedure qrDetalheAfterOpen(DataSet: TDataSet);
      procedure qrParcelaNewRecord(DataSet: TDataSet);
      procedure qrDetalheCalcFields(DataSet: TDataSet);
      procedure qrDetalhecon_001Change(Sender: TField);
      procedure qrDetalheenc_005Change(Sender: TField);
      procedure qrDetalheAfterCancel(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure qrDetalheAfterPost(DataSet: TDataSet);
      procedure cdsParcelaNewRecord(DataSet: TDataSet);
      constructor CreateEncerraVenda(bFuncoesBasicas: Boolean;
        iVen, iCli: Integer; sCli, sOrigem: String; bVen: Boolean = True; Credito: Double = 0); Overload;
      procedure qrVendaBeforeOpen(DataSet: TDataSet);
      procedure qrVendaParcelaBeforeOpen(DataSet: TDataSet);
      procedure qrVendaItensBeforeOpen(DataSet: TDataSet);
    procedure qrDetalheenc_006Change(Sender: TField);
    procedure qrDetalheenc_007Change(Sender: TField);
    procedure qrDetalheajusteChange(Sender: TField);
    procedure edRecebidoExit(Sender: TObject);
   private
      { Private declarations }
      dTotalVenda: Double;
      sOri: String;
      bFechouVenda: Boolean;
      Procedure CalculaParcelas;
      Procedure LimpaParcelas;
      Procedure AtualizaStatusVenda;
      Procedure GeraContasReceber;
      Procedure InsereParcela(iVenda, iCliente, iMesa, iForma: Integer;
        fValor, fEntrada: Double; dVencimento: TDateTime;
        bBaixa: Boolean = False);
      Procedure FormaCondicaoPagamento;
      Procedure CarregaImpressao;
      Procedure CalculaTotal;
      Function RetornaDataPedido: String;
      Function RetornaSeqVenda: Integer;
   public
      { Public declarations }
      iVenda, iMesa: Integer;
      sMesa: String;
      bSujerioParcela, bVenda: Boolean;
      dCreditoCli: Double;
      bEncerrou: Boolean;
   end;

var
   frmDetalheEncerraVenda: TfrmDetalheEncerraVenda;

implementation

{$R *.dfm}

uses Funcao_DB, uMenu, Funcoes_XE, uFuncoes;

procedure TfrmDetalheEncerraVenda.AtualizaStatusVenda;
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      //
      Add(' UPDATE VENDA ');
      Add('    SET VEN_007 = :DESC '); // DESCONTO
      Add('      , VEN_008 = :ACRE '); // ACRESCIMO
      Add('      , VEN_009 = :TOTAL '); // TOTAL DA VENDA
      Add(' WHERE EMP_001 = :EMP_001 ');
      Add('   AND VEN_001 = :VEN_001 ');
      ParamByName('EMP_001').AsInteger := recProj.iEmp;
      ParamByName('VEN_001').AsInteger := qrDetalheven_001.AsInteger;
      ParamByName('DESC').AsFloat := qrDetalheenc_007.AsFloat;
      ParamByName('ACRE').AsFloat := qrDetalheenc_006.AsFloat;
      ParamByName('TOTAL').AsFloat := qrDetalhetotal.AsFloat;
      ExecSQL;
      // Se for Venda, Atualiza a venda pra Encerrado, e o codigo do encerramento na Venda
      if bVenda then
      begin
         Close;
         Clear;
         Add(' UPDATE VENDA ');
         Add('    SET SIT_001 = 1 ');
         Add('      , DAT_001_2 = :DATA');
         Add('      , USU_001_2 = :USU');
         Add('      , ENC_001 = :ENC');
         Add(' WHERE EMP_001 = :EMP_001 ');
         Add('   AND VEN_001 = :VEN_001 ');
         ParamByName('EMP_001').AsInteger := recProj.iEmp;
         ParamByName('VEN_001').AsInteger := qrDetalheven_001.AsInteger;
         ParamByName('DATA').AsDateTime := DataServer(frmMenu.conexao);
         ParamByName('USU').AsInteger := recProj.iUsuario;
         ParamByName('ENC').AsInteger := qrDetalheenc_001.AsInteger;
         ExecSQL;
      end
      else
      begin
         // Se é orçamento, grava as parcelas geradas
         Close;
         Clear;
         Add(' UPDATE VENDA ');
         Add('    SET ENC_001 = :ENC');
         Add(' WHERE EMP_001 = :EMP_001 ');
         Add('   AND VEN_001 = :VEN_001 ');
         ParamByName('EMP_001').AsInteger := recProj.iEmp;
         ParamByName('VEN_001').AsInteger := qrDetalheven_001.AsInteger;
         ParamByName('ENC').AsInteger := qrDetalheenc_001.AsInteger;
         ExecSQL;
      end;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure TfrmDetalheEncerraVenda.CalculaParcelas;
var
   qrAux: TUniQuery;
   iParcela, iQtdePar: Integer;
   dValParcela, dValAcrescimo: Double;
   dData, dDataIni: TDateTime;
begin
//   if (qrDetalhecon_003.AsFloat <= 0) then
//   begin
      // Application.MessageBox('Não foi possível calcular as parcelas para uma venda com valor igual a zero!', 'Atenção', 0+64);
//      Exit;
//   end;
   //
   LimpaParcelas;
   //
   if qrDetalhecon_001.IsNull then
      Exit;
   //
   EventoExit.BtnExit(edCondicao);
   //
   dValParcela := 0;
   iParcela := 0;
   //
   // Se for Condição de Pagamento por mês do Tipo: MENSAL
   if qrDetalhecon_003.AsInteger = 1 then
   begin
      // Ajusta o valor da entrada caso o usuario não tenha alterado.
      if qrDetalheenc_005.AsFloat > 0 then
      begin
         Application.MessageBox
           ('Para Condição de Pagamento sem Entrada, altere o valor da Entrada para Zero!',
           'ATENÇÃO', 0 + 64);
         if edEntrada.CanFocus then
            edEntrada.SetFocus;
         Exit;
      end;
      //
      dData := IncMonth(qrDetalheenc_002.AsDateTime, 1);
      //
      dValParcela := qrDetalhetotal.AsFloat / qrDetalhecon_004.AsInteger;
//      dValParcela := edTotal.Value / qrDetalhecon_004.AsInteger;
      //
      while iParcela < qrDetalhecon_004.AsInteger do
      begin
         // qrParcela.Append;
         cdsParcela.Append;
         //
         Inc(iParcela);
         //
         // qrParcelaite_002.AsDateTime := dData;
         // qrParcelaite_003.AsFloat := dValParcela;
         // qrParcelaite_004.AsInteger := iParcela;
         // qrParcela.Post;

         cdsParcelaite_002.AsDateTime := dData;
         cdsParcelaite_003.AsFloat := dValParcela;
         cdsParcelaite_004.AsInteger := iParcela;
         cdsParcela.Post;
         //
         dData := IncMonth(dData, 1);
      end;
   end
   else
   begin
      // Senão se for a Condição do Tipo: Personalizada.
      //
      qrAux := TUniQuery.Create(nil);
      qrAux.Connection := frmMenu.conexao;
      with qrAux, SQL do
      begin
         Close;
         Clear;
         Add('SELECT PAR_001');
         Add('     , EMP_001');
         Add('     , CON_001');
         Add('     , PAR_002');
         Add('     , PAR_003');
         Add('FROM CONDPGTOPAR');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   CON_001 = :CON');
         Add('ORDER BY PAR_002');
         ParamByName('EMP').AsInteger := recProj.iEmp;
         ParamByName('CON').AsInteger := qrDetalhecon_001.AsInteger;
         Open;
      end;
      //
      qrAux.First;
      // Verifica se a venda é a Vista
      if (qrAux.RecordCount = 1) and (qrAux.FieldByName('PAR_002').AsInteger = 0)
      then
      begin
         // Ajusta o valor da entrada caso o usuario não tenha alterado.
         if qrDetalheenc_005.AsFloat > 0 then
         begin
            Application.MessageBox
              ('Para Condição de Pagamento sem Entrada, altere o valor da Entrada para Zero!',
              'ATENÇÃO', 0 + 64);
            if edEntrada.CanFocus then
               edEntrada.SetFocus;
            Exit;
         end;
         //
         iQtdePar := qrDetalhecon_004.AsInteger;
         dValParcela := qrDetalhetotal.AsFloat;
//         dValParcela := edTotal.Value;
      end
      else
      begin
         if qrDetalheenc_005.AsFloat <= 0 then
         begin
            Application.MessageBox('Favor informe o Valor da Entrada!',
              'ATENÇÃO', 0 + 64);
            if edEntrada.CanFocus then
               edEntrada.SetFocus;
            Exit;
         end;
         // if qrAux.FieldByName('PAR_002').AsInteger > 0 then

         // Aqui é retirado -1 da entrada
         iQtdePar := qrDetalhecon_004.AsInteger - 1;
         dValParcela := qrDetalhetotal.AsFloat / iQtdePar;
//         dValParcela := edTotal.Value / iQtdePar;
      end;
      //
      dData := qrDetalheenc_002.AsDateTime;
      dDataIni := qrDetalheenc_002.AsDateTime;
      //
      while iParcela < qrDetalhecon_004.AsInteger do
      begin
         // qrParcela.Append;
         cdsParcela.Append;
         //
         // Passa o valor da venda a vista
         if (qrAux.RecordCount = 1) and
           (qrAux.FieldByName('PAR_002').AsInteger = 0) then
            cdsParcelaite_003.AsFloat := dValParcela;
         // qrParcelaite_003.AsFloat := dValParcela;
         // Se tem entrada na venda parcelada
         if (qrAux.FieldByName('PAR_002').AsInteger = 0) and
           (qrAux.RecordCount > 1) then
         begin
            cdsParcelaite_003.AsFloat := qrDetalheenc_005.AsFloat;
            // qrParcelaite_003.AsFloat := qrDetalheenc_005.AsFloat;
         end
         else
         begin
            // Se tem acréscimo na parcela é feito o calculo
            if (qrAux.FieldByName('PAR_003').AsFloat > 0) then
            begin
               dValAcrescimo := (dValParcela * qrAux.FieldByName('PAR_003')
                 .AsFloat) / 100;
               cdsParcelaite_003.AsFloat := dValParcela + dValAcrescimo;
               // qrParcelaite_003.AsFloat := dValParcela + dValAcrescimo;
            end
            else
               cdsParcelaite_003.AsFloat := dValParcela;
            // qrParcelaite_003.AsFloat := dValParcela;
            //
         end;
         //
         Inc(iParcela);
         //
         // dData := dData + qrAux.FieldByName('PAR_002').AsInteger;
         dData := dDataIni + qrAux.FieldByName('PAR_002').AsInteger;
         //
         // qrParcelaite_002.AsDateTime := dData;
         // qrParcelaite_004.AsInteger := iParcela;
         // qrParcelaite_005.AsFloat := qrAux.FieldByName('PAR_003').AsFloat;
         //
         cdsParcelaite_002.AsDateTime := dData;
         cdsParcelaite_004.AsInteger := iParcela;
         cdsParcelaite_005.AsFloat := qrAux.FieldByName('PAR_003').AsFloat;
         //
         // qrParcela.Post;
         //
         cdsParcela.Post;
         //
         qrAux.Next;
      end;
      //
      FreeAndNil(qrAux);
   end;
end;

procedure TfrmDetalheEncerraVenda.CalculaTotal;
var
   dAcrescimo, dDesconto: Double;
begin
   dAcrescimo := (qrDetalheenc_003.AsFloat * qrDetalheenc_006.AsFloat) / 100;
   dDesconto := (qrDetalheenc_003.AsFloat * qrDetalheenc_007.AsFloat) / 100;
   //
   qrDetalhevalor.AsFloat := 0;
   //
   qrDetalhetotal.AsFloat := ((qrDetalheenc_003.AsFloat - qrDetalheenc_005.AsFloat) - dCreditoCli);
   //
   if (qrDetalheenc_006.AsFloat > 0) then
   begin
      qrDetalhetotal.AsFloat :=
        (((qrDetalheenc_003.AsFloat + dAcrescimo) - qrDetalheenc_005.AsFloat - dCreditoCli));
      qrDetalhevalor.AsFloat := dAcrescimo;
   end;
   if (qrDetalheenc_007.AsFloat > 0) then
   begin
      qrDetalhetotal.AsFloat :=
        (((qrDetalheenc_003.AsFloat - dDesconto) - qrDetalheenc_005.AsFloat - dCreditoCli));
      qrDetalhevalor.AsFloat := dDesconto;
   end;
end;

procedure TfrmDetalheEncerraVenda.CarregaImpressao;
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

procedure TfrmDetalheEncerraVenda.cdsParcelaNewRecord(DataSet: TDataSet);
begin
   inherited;
   cdsParcelaite_005.AsFloat := 0;
end;

constructor TfrmDetalheEncerraVenda.CreateEncerraVenda(bFuncoesBasicas: Boolean;
  iVen, iCli: Integer; sCli, sOrigem: String; bVen: Boolean = True; Credito: Double = 0);
begin
   Inherited Create(Nil);
   //
   iVenda := iVen;
   iMesa := iCli;
   sMesa := sCli;
   //
   bVenda := bVen;
   dCreditoCli := Credito;
   //
   sOri := sOrigem;
end;

procedure TfrmDetalheEncerraVenda.edRecebidoExit(Sender: TObject);
begin
  inherited;
   if qrDetalhe.State in [dsInsert, dsEdit] then
     btnConf.Click;
end;

procedure TfrmDetalheEncerraVenda.FormaCondicaoPagamento;
var
   qrAux: TUniQuery;
begin
   // Sugere a Forma e Condiçaõ de Pagamento de acordo com o cliente.
   qrAux := TUniQuery.Create(nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.conexao;
      Close;
      Clear;
      Add('SELECT CLI.CON_001');
      Add('     , CLI.FOR_001');
      Add('     , CON.CON_003');
      Add('     , CON.CON_004');
      Add('FROM CLIENTES CLI');
      Add('LEFT OUTER JOIN CONDICAOPGTO CON ON (CON.EMP_001 = CLI.EMP_001) AND (CON.CON_001 = CLI.CON_001)');
      Add('WHERE CLI.EMP_001 = :EMP');
      Add('AND   CLI.CLI_001 = :CLI');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('CLI').AsInteger := qrDetalhecli_001.AsInteger;
      Open;
   end;
   //
   qrAux.First;
   //
   if (not(qrAux.IsEmpty)) and (qrDetalhe.State = dsInsert) then
   begin
      if (not(qrAux.FieldByName('FOR_001').IsNull)) then
      begin
         qrDetalhefor_001.AsInteger := qrAux.FieldByName('FOR_001').AsInteger;
         EventoExit.BtnExit(edForma);
      end;
      //
      if not qrAux.FieldByName('CON_001').IsNull then
      begin
         qrDetalhecon_003.AsInteger := qrAux.FieldByName('CON_003').AsInteger;
         qrDetalhecon_004.AsInteger := qrAux.FieldByName('CON_004').AsInteger;
         qrDetalhecon_001.AsInteger := qrAux.FieldByName('CON_001').AsInteger;
         EventoExit.BtnExit(edCondicao);
         {
           //
           bSujerioParcela := False;
           //
           qrDetalhe.Post;
           //
           qrDetalhe.Edit;
           //
           bSujerioParcela := True;
           //
           if edCondicao.CanFocus then
           edCondicao.SetFocus;
           //
         }
         CalculaParcelas;
      end;
   end
   else
   begin
      EventoExit.BtnExit(edForma);
      EventoExit.BtnExit(edCondicao);
      CalculaParcelas;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure TfrmDetalheEncerraVenda.FormCreate(Sender: TObject);
begin
   fSufix := 'CONFIGURACAO';
   inherited;
   bPostClose := True;
   bSujerioParcela := True;
   //
   cdsParcela.CreateDataSet;
   //
   cdsParcela.Close;
   cdsParcela.Open;
   //
   bFechouVenda := False;
end;

procedure TfrmDetalheEncerraVenda.FormShow(Sender: TObject);
begin
   Formatar_Float(qrDetalheenc_003);
   Formatar_Float(qrDetalheenc_005);
   Formatar_Float(qrDetalheenc_006);
   Formatar_Float(qrDetalheenc_007);
   Formatar_Float(qrDetalhevalor);
   Formatar_Float(qrDetalhetotal);
   Formatar_Float(qrParcelaite_005);
   Formatar_Float(qrParcelaite_003);
   Formatar_Float(cdsParcelaite_005);
   Formatar_Float(cdsParcelaite_003);
   Formatar_Float(qrVendaentrada);
   Formatar_Float(qrVendaacrescimo);
   Formatar_Float(qrVendadesconto);
   Formatar_Float(qrVendavalorvenda);
   Formatar_Float(qrDetalherecebido);
   Formatar_Float(qrDetalhetroco);
   Formatar_Float(qrDetalhecredito);
   Formatar_DateTime(qrDetalheenc_002, 'DD/MM/YYYY');
   //
   Campo_Obrigatorio([Label30, Label3, Label4]);
   inherited;
   //
   qrParcela.BeforeInsert := Nil;
   qrParcela.BeforeEdit := Nil;
   qrParcela.BeforeDelete := Nil;
   //
   pcAbas.ActivePageIndex := 0;
   //
   FormaCondicaoPagamento;
   //
   if bVisualizar then
   begin
      // qrDetalhecon_001.OnChange := qrDetalhecon_001;
      //
      GridParcelasDBTableView1.DataController.DataSource := dsParcela;
      //
      qrParcela.Close;
      qrParcela.Open;
   end;
   //
   bEncerrou := False;
end;

procedure TfrmDetalheEncerraVenda.GeraContasReceber;
var
   qrAux: TUniQuery;
   dDataDia: TDateTime;
   dValor: Double;
begin
   // Gera o Contas a Receber das Parcelas
   cdsParcela.Close;
   cdsParcela.Open;
   //
   cdsParcela.First;
   //
   dDataDia := StrToDate(FormatDateTime('dd/mm/yyyy',
     DataServer(frmMenu.conexao)));
   //
   while not cdsParcela.eof do
   begin
      // Se for a primeira parcela com a data do dia e ter entrada, gera um contas a receber pago no valor da entrada.
      if (cdsParcelaite_004.AsInteger = 1) and
        (cdsParcelaite_002.AsDateTime = dDataDia) then
      begin
         if qrDetalheenc_005.AsFloat > 0 then
            dValor := qrDetalheenc_005.AsFloat
         else
            dValor := qrDetalhetotal.AsFloat;
         //
         if sOri = 'M' then
         begin
            InsereParcela(qrDetalheven_001.AsInteger, 1, iMesa,
              qrDetalhefor_001.AsInteger, 0, dValor,
              cdsParcelaite_002.AsDateTime, True);
         end
         else
         begin
            InsereParcela(qrDetalheven_001.AsInteger, iMesa, iMesa,
              qrDetalhefor_001.AsInteger, 0, dValor,
              cdsParcelaite_002.AsDateTime, True);
         end;
      end
      else
         if sOri = 'M' then
         begin
            InsereParcela(qrDetalheven_001.AsInteger, 1, iMesa,
              qrDetalhefor_001.AsInteger, cdsParcelaite_003.AsFloat, 0,
              cdsParcelaite_002.AsDateTime);
         end
         else
         begin
            InsereParcela(qrDetalheven_001.AsInteger, iMesa, iMesa,
              qrDetalhefor_001.AsInteger, cdsParcelaite_003.AsFloat, 0,
              cdsParcelaite_002.AsDateTime);
         end;

      //
      cdsParcela.Next;
      //
   end;
end;

procedure TfrmDetalheEncerraVenda.InsereParcela(iVenda, iCliente, iMesa,
  iForma: Integer; fValor, fEntrada: Double; dVencimento: TDateTime;
  bBaixa: Boolean = False);
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('INSERT INTO CRECEBER(EMP_001, REC_001, REC_002, REC_003, DAT_001_1, USU_001_1, CLI_001, REC_004, REC_005, REC_006, REC_008, SIT_001, USU_001_2, DAT_001_2, DAT_001_4, USU_001_4, VEN_001, FOR_001, PCG_001, MES_001)');
      Add('VALUES(:EMP, :ID, :DATACAD, :DATA, :DIA, :USU, :CLI, :VALOR, 0, 0, :REC, :SIT, :USU, :DATA, :DATA, :USU, :VEN, :FOR, 0, :MES)');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('ID').AsInteger := NovoID(frmMenu.conexao, 'CRECEBER',
        recProj.iEmp);
      ParamByName('VEN').AsInteger := iVenda;
      ParamByName('USU').AsInteger := recProj.iUsuario;
      ParamByName('CLI').AsInteger := iCliente;
      ParamByName('FOR').AsInteger := iForma;
      ParamByName('MES').AsInteger := iMesa;
      ParamByName('DIA').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY', DataServer(frmMenu.conexao)));
      ParamByName('DATACAD').AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy',StrToDate(RetornaDataPedido)));
      if bBaixa then
      begin
         ParamByName('SIT').AsInteger := 7;
         ParamByName('DATA').AsDateTime := DataServer(frmMenu.conexao);
         ParamByName('VALOR').AsFloat := fEntrada;
         ParamByName('REC').AsFloat := fEntrada;
      end
      else
      begin
         ParamByName('SIT').AsInteger := 8;
         ParamByName('DATA').AsDateTime := dVencimento;
         ParamByName('VALOR').AsFloat := fValor;
         ParamByName('REC').AsFloat := 0;
      end;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure TfrmDetalheEncerraVenda.LimpaParcelas;
var
   qrAux: TUniQuery;
begin
   // Limpa as parcela que já foram geradas
   qrAux := TUniQuery.Create(nil);
   qrAux.Connection := frmMenu.conexao;
   with qrAux, SQL do
   begin
      Close;
      Clear;
      Add('SELECT COUNT(ITE_001) AS QTDE FROM ENCERRAVENDAITEM');
      Add('WHERE EMP_001 = :EMP');
      Add('AND   ENC_001 = :ENC');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('ENC').AsInteger := qrDetalheenc_001.AsInteger;
      Open;
   end;
   //
   if qrAux.FieldByName('QTDE').AsInteger > 0 then
   begin
      with qrAux, SQL do
      begin
         Close;
         Clear;
         Add('DELETE FROM ENCERRAVENDAITEM');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   ENC_001 = :ENC');
         ParamByName('EMP').AsInteger := recProj.iEmp;
         ParamByName('ENC').AsInteger := qrDetalheenc_001.AsInteger;
         ExecSQL;
      end;
   end;
   //
   FreeAndNil(qrAux);
   //
   cdsParcela.EmptyDataSet;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheAfterCancel(DataSet: TDataSet);
begin
   inherited;
   LimpaParcelas;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheAfterInsert(DataSet: TDataSet);
begin
   inherited;
   if edForma.CanFocus then
      edForma.SetFocus;
   CalculaParcelas;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheAfterOpen(DataSet: TDataSet);
begin
   inherited;
   qrParcela.Close;
   qrParcela.Open;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheAfterPost(DataSet: TDataSet);
begin
   inherited;
   cdsParcela.First;
   //
   while not cdsParcela.IsEmpty do
   begin
      qrParcela.Append;
      //
      qrParcelaite_002.AsDateTime := cdsParcelaite_002.AsDateTime;
      qrParcelaite_003.AsFloat := cdsParcelaite_003.AsFloat;
      qrParcelaite_004.AsInteger := cdsParcelaite_004.AsInteger;
      qrParcelaite_005.AsFloat := cdsParcelaite_005.AsFloat;
      //
      qrParcela.Post;
      //
      cdsParcela.Delete;
   end;
   //
   AtualizaStatusVenda;
   //
   bEncerrou := True;
   //
   if sOri = 'D' then
   begin
      LiberaImpDelivery(iVenda);
      //
      AtualizaTrocoVenda(iVenda, qrdetalhetroco.AsFloat);
      //
      ImprimePedidoDelivery(iVenda, qrDetalhefor_002.AsString, edtObsGeral.Text);
   end;
   //

//   if Confirma('Deseja imprimir?', 'ATENÇÃO', True) then
//      CarregaImpressao;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheajusteChange(Sender: TField);
begin
  inherited;
   CalculaParcelas;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheBeforePost(DataSet: TDataSet);
begin
   if bSujerioParcela then
   begin
      if qrDetalheenc_002.IsNull then
      begin
         Application.MessageBox('Favor informar uma Data.', 'Atenção', 0 + 64);
         TestarFocoField(qrDetalheenc_002);
         Abort;
      end;
      //
      if qrDetalheenc_003.AsFloat <= 0 then
      begin
         Application.MessageBox
           ('Não é possível encerrar uma venda com Valor igual a zero!',
           'Atenção', 0 + 64);
         TestarFocoField(qrDetalheenc_003);
         Abort;
      end;
      //
      if qrDetalhefor_001.IsNull then
      begin
         Application.MessageBox('Favor informar uma Forma de Pagamento.',
           'Atenção', 0 + 64);
         TestarFocoField(qrDetalhefor_001);
         Abort;
      end;
      //
      if qrDetalhecon_001.IsNull then
      begin
         Application.MessageBox('Favor informar uma Condição de Pagamento.',
           'Atenção', 0 + 64);
         TestarFocoField(qrDetalhecon_001);
         Abort;
      end;
      //
      if (qrDetalheenc_005.IsNull) or (qrDetalheenc_005.AsFloat < 0) then
      begin
         Application.MessageBox('Favor informar um Valor maoir que 0 (zero).',
           'Atenção', 0 + 64);
         TestarFocoField(qrDetalheenc_005);
         Abort;
      end;
      //
      if (cdsParcela.IsEmpty) then
      begin
         Application.MessageBox('Favor realizar o calculo das Parcelas.',
           'Atenção', 0 + 64);
         GridParcelas.SetFocus;
         Abort;
      end;
      //
      // Se for uma venda e não um orçamento Fatura e retira do estoque
      if bVenda then
      begin
         if Confirma('Confirma o encerramento?', 'ATENÇÃO') = False then
            Abort;
         //
         qrDetalhesit_001.AsInteger := 1;
         //
         LimpaFaturamento(iVenda);
         //
         if dCreditoCli <  qrDetalheenc_003.AsFloat then
           GeraContasReceber;
         //
         if dCreditoCli > 0 then
         begin
            ZeraCreditoCliente(qrDetalhecli_001.AsInteger);
         end;
         //
//         RetiraEstoque(qrDetalheven_001.AsInteger);
      end
      else if Confirma('Confirma o encerramento?', 'ATENÇÃO', True) = False then
         Abort;
   end;
   //
   inherited;

end;

procedure TfrmDetalheEncerraVenda.qrDetalheCalcFields(DataSet: TDataSet);
begin
   inherited;
   qrDetalhetroco.AsFloat := 0;
   //
   if (qrDetalherecebido.AsFloat > 0) then
   begin
      qrDetalhetroco.AsFloat :=
        (qrDetalherecebido.AsFloat - qrDetalhetotal.AsFloat);
   end;
end;

procedure TfrmDetalheEncerraVenda.qrDetalhecon_001Change(Sender: TField);
begin
   inherited;
//   CalculaTotal;
   //
   CalculaParcelas;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheenc_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   inherited;
   if qrDetalheenc_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalheenc_001.AsString;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheenc_005Change(Sender: TField);
begin
   inherited;
//   CalculaTotal;
   //
   CalculaParcelas;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheenc_006Change(Sender: TField);
begin
  inherited;
   CalculaTotal;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheenc_007Change(Sender: TField);
begin
  inherited;
   CalculaTotal;
end;

procedure TfrmDetalheEncerraVenda.qrDetalheNewRecord(DataSet: TDataSet);
begin
   inherited;
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalheinclusao.AsString := recProj.sUsuario;
   qrDetalheenc_002.AsDateTime :=
     StrToDate(FormatDateTime('dd/mm/yyyy', DataServer(frmMenu.conexao)));
   qrDetalhesit_001.AsInteger := 8;
   qrDetalhesituacao.AsString := 'PENDENTE';
   qrDetalheenc_005.AsFloat := 0;
   qrDetalheenc_006.AsFloat := 0;
   qrDetalheenc_007.AsFloat := 0;
   qrDetalheven_001.AsInteger := iVenda;
   qrDetalhecli_001.AsInteger := 0;
   qrDetalhecliente.AsString := sCliente;
   qrDetalheenc_003.AsFloat := (TotalItensVenda(qrDetalheven_001.AsInteger) + RetornaTaxaVenda(qrDetalheven_001.AsInteger));
   qrDetalhecon_003.AsInteger := 0;
   qrDetalhecon_004.AsInteger := 0;
   qrDetalhecredito.AsFloat := dCreditoCli;
   qrDetalhemes_001.AsInteger := iMesa;
   qrDetalhemes_002.AsString := sMesa;
   //
   qrDetalhetotal.AsFloat := qrDetalheenc_003.AsFloat;
   //
   qrDetalhefor_001.AsInteger := 1;
   qrDetalhecon_001.AsInteger := 1;
   // qrDetalhecon_001.AsInteger := CondicaoPagamento;
   qrDetalheven_029.AsInteger := RetornaSeqVenda;
end;

procedure TfrmDetalheEncerraVenda.qrParcelaBeforeOpen(DataSet: TDataSet);
begin
   inherited;
   qrParcela.ParamByName('EMP').AsInteger := recProj.iEmp;
   qrParcela.ParamByName('ENC').AsInteger := qrDetalheenc_001.AsInteger;
end;

procedure TfrmDetalheEncerraVenda.qrParcelaNewRecord(DataSet: TDataSet);
begin
   inherited;
   qrParcelaemp_001.AsInteger := recProj.iEmp;
   qrParcelaenc_001.AsInteger := qrDetalheenc_001.AsInteger;
   qrParcelaite_001.AsInteger := NovoID(frmMenu.conexao, 'ENCERRAVENDAITEM', recProj.iEmp);
   qrParcelaite_005.AsFloat := 0;
end;

procedure TfrmDetalheEncerraVenda.qrVendaBeforeOpen(DataSet: TDataSet);
begin
   inherited;
   qrVenda.ParamByName('EMP').AsInteger := recProj.iEmp;
   qrVenda.ParamByName('ID').AsInteger := qrDetalheven_001.AsInteger;
end;

procedure TfrmDetalheEncerraVenda.qrVendaItensBeforeOpen(DataSet: TDataSet);
begin
   inherited;
   qrVendaItens.ParamByName('EMP').AsInteger := recProj.iEmp;
   qrVendaItens.ParamByName('VEN').AsInteger := qrDetalheven_001.AsInteger;
end;

procedure TfrmDetalheEncerraVenda.qrVendaParcelaBeforeOpen(DataSet: TDataSet);
begin
   inherited;
   qrVendaParcela.ParamByName('EMP').AsInteger := recProj.iEmp;
   qrVendaParcela.ParamByName('ENC').AsInteger := qrDetalheenc_001.AsInteger;
end;

function TfrmDetalheEncerraVenda.RetornaDataPedido: String;
var
   qrAux: TUniQuery;
begin
   //Função q pega a data da venda para gerar o contas a receber
   Result := '';
   //
   qrAux := TUniQuery.Create(nil);
   try
      with qrAux, SQL do
      begin
         Connection := frmMenu.conexao;
         Close;
         Clear;
         Add('SELECT VEN_004 FROM VENDA');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   VEN_001 = :VEN');
         ParamByName('EMP').AsInteger := RecProj.iEmp;
         ParamByName('VEN').AsInteger := iVenda;
         Open;
      end;
      //
      if not (qrAux.IsEmpty) then
         Result := FormatDateTime('dd/mm/yyyy', qrAux.FieldByName('VEN_004').AsDateTime);
   finally
      FreeAndNil(qrAux);
   end;
end;

function TfrmDetalheEncerraVenda.RetornaSeqVenda: Integer;
var
   qrAux: TUniQuery;
begin
   //Função q pega a data da venda para gerar o contas a receber
   Result := 0;
   //
   qrAux := TUniQuery.Create(nil);
   try
      with qrAux, SQL do
      begin
         Connection := frmMenu.conexao;
         Close;
         Clear;
         Add('SELECT VEN_029 FROM VENDA');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   VEN_001 = :VEN');
         ParamByName('EMP').AsInteger := RecProj.iEmp;
         ParamByName('VEN').AsInteger := iVenda;
         Open;
      end;
      //
      if not (qrAux.IsEmpty) then
         Result := qrAux.FieldByName('VEN_029').AsInteger;
   finally
      FreeAndNil(qrAux);
   end;
end;


// function TfrmDetalheEncerraVenda.TotalVenda: Double;
// var
// qrAux: TUniQuery;
// begin
// Result := 0;
// //
// qrAux := TUniQuery.Create(nil);
// qrAux.Connection := frmMenu.conexao;
// with qrAux, SQL do
// begin
// Close;
// Clear;
// Add('SELECT SUM(ITE_005) AS VLR FROM VENDAITEM');
// Add('WHERE EMP_001 = :EMP');
// Add('AND   VEN_001 = :VEN');
// ParamByName('EMP').AsInteger := RecProj.iEmp;
// ParamByName('VEN').AsInteger := iVenda;
// Open;
// end;
// //
// if qrAux.FieldByName('VLR').AsFloat  > 0 then
// Result := qrAux.FieldByName('VLR').AsFloat;
// //
// FreeAndNil(qrAux);
// end;

end.
