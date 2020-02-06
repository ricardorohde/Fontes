unit uDetalheContasPagar;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB, MemDS, DBAccess, Uni,
   Vcl.DBActns,
   Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeelPainters,
   cxContainer,
   cxEdit, RxCurrEdit, RXDBCtrl, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, cxTextEdit, cxDBEdit, Vcl.DBCtrls, cxMaskEdit,
   cxDropDownEdit, cxCalendar, cxButtonEdit, cxGroupBox, cxPCdxBarPopupMenu,
  cxPC, RxDBComb, Datasnap.DBClient;

type
   TfrmDetalheContasPagar = class(TfrmPadraoDetalhe)
    qrDetalhepag_001: TIntegerField;
    qrDetalheemp_001: TIntegerField;
    qrDetalhepag_002: TDateTimeField;
    qrDetalhepag_003: TFloatField;
    qrDetalhefor_003: TWideStringField;
    qrDetalhepag_004: TFloatField;
    qrDetalhepag_005: TFloatField;
    qrDetalhepag_006: TFloatField;
    qrDetalhepag_008: TWideStringField;
    qrDetalhepag_009: TIntegerField;
    qrDetalhepcg_001: TIntegerField;
    qrDetalhepcg_002: TWideStringField;
    qrDetalhepag_011: TWideStringField;
    qrDetalhepag_012: TDateTimeField;
    qrDetalhepag_013: TIntegerField;
    qrDetalheusu_sit: TWideStringField;
    qrDetalhedat_sit: TDateTimeField;
    qrDetalheinclusao: TWideStringField;
    qrDetalheedicao: TWideStringField;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    qrDetalheord_001: TIntegerField;
    qrDetalheent_001: TIntegerField;
    qrDetalheord_002: TWideStringField;
    qrDetalhetotal: TFloatField;
    qrDetalhesituacao: TStringField;
    pcAbas: TcxPageControl;
    tsDados: TcxTabSheet;
    Label1: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    edPedido: TcxDBTextEdit;
    Label10: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label11: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label12: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label27: TLabel;
    edPCG: TcxDBButtonEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    gbTotais: TcxGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    edDesconto: TRxDBCalcEdit;
    edValor: TRxDBCalcEdit;
    edMulta: TRxDBCalcEdit;
    edJuros: TRxDBCalcEdit;
    edTotal: TcxDBTextEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    gbusuarios: TGroupBox;
    Label15: TLabel;
    Label33: TLabel;
    edDataUltimaAtualiz: TDBText;
    edUsuUltimaAtualiz: TDBText;
    Label34: TLabel;
    Label37: TLabel;
    edDataCadastro: TDBText;
    Label14: TLabel;
    edUsuCadastrado: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    edSituacao: TDBText;
    tsObs: TcxTabSheet;
    edObs: TDBMemo;
    Label4: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    qrDetalhepag_014: TDateTimeField;
    qrDetalhepag_007: TWideMemoField;
    Label13: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label16: TLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    qrDetalheche_001: TIntegerField;
    qrDetalheche_008: TWideStringField;
    qrDetalhepag_015: TIntegerField;
    qrDetalhefor_002: TWideStringField;
    qrDetalhepag_010: TFloatField;
    edRecebido: TcxDBTextEdit;
    Label18: TLabel;
    Label19: TLabel;
    edFavorecido: TRxDBComboBox;
    qrDetalhepag_016: TIntegerField;
    qrDetalhecli_001: TIntegerField;
    qrDetalhecli_003: TWideStringField;
    qrDetalhefnc_001: TIntegerField;
    qrDetalhefnc_002: TWideStringField;
    edCliente: TcxDBButtonEdit;
    edClienteDesc: TcxDBTextEdit;
    edFuncionario: TcxDBButtonEdit;
    edFuncionarioDesc: TcxDBTextEdit;
    qrDetalhefor_001: TIntegerField;
    edFornecedorDesc: TcxDBTextEdit;
    edFornecedor: TcxDBButtonEdit;
    qrDetalhepag_017: TIntegerField;
    edParcela: TRxCalcEdit;
    lbParcela: TLabel;
      procedure qrDetalheCalcFields(DataSet: TDataSet);
      procedure qrDetalheNewRecord(DataSet: TDataSet);
      procedure FormCreate(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure qrDetalheAfterOpen(DataSet: TDataSet);
      procedure qrDetalheBeforePost(DataSet: TDataSet);
      procedure dsDetalheStateChange(Sender: TObject);
    procedure qrDetalhepag_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edFavorecidoChange(Sender: TObject);
   private
      bPre_Lancamento: Boolean;
      sPedido: String;
      dEmissao, dVencimento, dProrrogacao: TDateTime;
      dVenc: TDateTime;
      iObra: Integer;
      iPCG: Integer;
      iFornecedor: Integer;
      iOrdemCompra: Integer;
      iEntrega_OC: Integer;
      sOrdemCompra: String;
      fValor: Real;
      Procedure GeraParcelas;
      { Private declarations }
   public
      Constructor Create_Pre_Lancado(Pedido: String; Emissao, Venc: TDateTime; Obra, PCG, Fornecedor: Integer;
        Valor: Real; OrdemCompra, EntregaOC: Integer; OC_Visual: String);
      { Public declarations }
   end;

var
   frmDetalheContasPagar: TfrmDetalheContasPagar;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, Funcoes_XE;

constructor TfrmDetalheContasPagar.Create_Pre_Lancado(Pedido: String; Emissao, Venc: TDateTime;
  Obra, PCG, Fornecedor: Integer; Valor: Real; OrdemCompra, EntregaOC: Integer; OC_Visual: String);
begin
   Create(Nil);
   //
   bPre_Lancamento := True;
   //
   sPedido := Pedido;
   dEmissao := Emissao;
   dVenc := Venc;
   iObra := Obra;
   iPCG := PCG;
   iFornecedor := Fornecedor;
   fValor := Valor;
   sOrdemCompra := OC_Visual;
   //
   iOrdemCompra := OrdemCompra;
   iEntrega_OC := EntregaOC;
end;

procedure TfrmDetalheContasPagar.dsDetalheStateChange(Sender: TObject);
begin
   inherited;
   if qrDetalhe.State = dsInsert then
      TestarFocoField(qrDetalhepag_011);
end;

procedure TfrmDetalheContasPagar.edFavorecidoChange(Sender: TObject);
begin
   inherited;
   edCliente.Visible := False;
   edClienteDesc.Visible := False;
   //
   edFornecedor.Visible := False;
   edFornecedorDesc.Visible := False;
   //
   edFuncionario.Visible := False;
   edFuncionarioDesc.Visible := False;
   //
   case edFavorecido.ItemIndex of
      0:
      begin
         edCliente.TabOrder := 8;
         edCliente.Visible := True;
         edClienteDesc.Visible := True;
      end;
      //
      1:
      begin
         edFornecedor.TabOrder := 8;
         edFornecedor.Visible := True;
         edFornecedorDesc.Visible := True;
      end;
      2:
      begin
         edFuncionario.TabOrder := 8;
         edFuncionario.Visible := True;
         edFuncionarioDesc.Visible := True;
      end;
   end;
end;

procedure TfrmDetalheContasPagar.FormCreate(Sender: TObject);
begin
   sTabela := 'CPAGAR';
   inherited;
   pcAbas.ActivePageIndex := 0;
end;

procedure TfrmDetalheContasPagar.FormShow(Sender: TObject);
var
  qrAux: TUniQuery;
begin
   Formatar_Float(qrDetalhepag_003, sMskVlTotal);
   Formatar_Float(qrDetalhepag_004, sMskVlTotal);
   Formatar_Float(qrDetalhepag_005, sMskVlTotal);
   Formatar_Float(qrDetalhepag_006, sMskVlTotal);
   Formatar_Float(qrDetalhepag_010, sMskVlTotal);
   Formatar_Float(qrDetalheTOTAL, sMskVlTotal);
   inherited;
   Campo_Obrigatorio([Label3, Label10, Label11, Label19, Label27, Label2]);
   //
//   if qrDetalhe.State = dsInsert then
//   begin
//      edFavorecido.ItemIndex := 1;
//   end;
//   //
   if qrDetalhe.State = dsInsert then
   begin
      lbParcela.Visible := True;
      edParcela.Visible := True;
   end;
   //
   edFavorecidoChange(edFavorecido);
//
   if bPre_Lancamento then
   begin
      qrDetalhepag_011.AsString := sPedido;
      qrDetalhepag_011.ReadOnly := True;
      //
      if dEmissao > 0 then
      begin
         qrDetalhepag_012.AsDateTime := dEmissao;
         qrDetalhepag_012.ReadOnly := True;
      end;
      //
      if dVenc > 0 then
      begin
         qrDetalhepag_002.AsDateTime := dVenc;
         qrDetalhepag_002.ReadOnly := True;
      end;
      //
//      qrDetalheobr_001.AsInteger := iObra;
//      qrDetalheobr_001.ReadOnly := True;
      //
      if iPCG > 0 then
      begin
         qrDetalhepcg_001.AsInteger := iPCG;
         qrDetalhepcg_001.ReadOnly := True;
      end;
      //
//      qrDetalhefor_001.AsInteger := iFornecedor;
//      qrDetalhefor_001.ReadOnly := True;
      //
      qrDetalhepag_003.AsFloat := fValor;
      qrDetalhepag_003.ReadOnly := True;
      //
      if iOrdemCompra > 0 then
      begin
         qrDetalheord_001.AsInteger := iOrdemCompra;
         qrDetalheord_002.AsString := sOrdemCompra;
         //
         qrAux := TUniQuery.Create(Nil);
         with qrAux, SQL do
         begin
            Connection := frmMenu.Conexao;
            Add(' SELECT COALESCE(MAX(PAG_013), 0) ');
            Add(' FROM CPAGAR ');
            Add(' WHERE EMP_001 = :EMP ');
            Add('   AND ORD_001 = :ORD ');
            ParamByName('EMP').AsInteger := recPRoj.iEmp;
            ParamByName('ORD').AsInteger := iOrdemCompra;
            Open;
            qrDetalhePAG_013.AsInteger := Fields[0].AsInteger;
         end;
         FreeAndNil(qrAux);
      end;
      //
      if iEntrega_OC > 0 then
         qrDetalheent_001.AsInteger := iEntrega_OC;
      //
      // Força os Exits para validar os valores
//      try
//         EventoExit.BtnExit(edObra);
//      except
//         qrDetalheobr_001.ReadOnly := False;
//      end;
      //
//      try
//         EventoExit.BtnExit(edFornecedor);
//      except
//         qrDetalhefor_001.ReadOnly := False;
//      end;
      //
      try
         EventoExit.BtnExit(edPCG);
      except
         qrDetalhepcg_001.ReadOnly := False;
      end;
      //
   end;
end;

procedure TfrmDetalheContasPagar.GeraParcelas;
var
   qrAux: TUniQuery;
begin
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.Conexao;
      Close;
      Clear;
      Add('INSERT INTO CPAGAR(PAG_001, EMP_001, PAG_011, PAG_012, PAG_002, PAG_014, PAG_008, PAG_015, PAG_016, PAG_017, FNC_001, PCG_001, CHE_001, PAG_003, PAG_004, PAG_005, PAG_006, PAG_007, PAG_010, SIT_001, CLI_001, DAT_001_1, USU_001_1, PAG_009)');
      Add('VALUES(:PAG_001, :EMP_001, :PAG_011, :PAG_012, :PAG_002, :PAG_014, :PAG_008, :PAG_015, :PAG_016, :PAG_017, :FNC_001, :PCG_001, :CHE_001, :PAG_003, :PAG_004, :PAG_005, :PAG_006, :PAG_007, :PAG_010, :SIT_001, :CLI_001, :DAT_001_1, :USU_001_1, :PAG_009)');
      ParamByName('PAG_001').AsInteger := NovoID(frmMenu.conexao, 'CPAGAR', RecProj.iEmp);
      ParamByName('EMP_001').AsInteger := RecProj.iEmp;
      ParamByName('PAG_011').AsString := qrDetalhepag_011.AsString;
      ParamByName('PAG_012').AsDateTime := DataServer(frmMenu.conexao);
      ParamByName('PAG_002').AsDateTime := dVencimento;
      //
      if qrDetalhepag_014.IsNull then
         ParamByName('PAG_014').Clear
      else
         ParamByName('PAG_014').AsDateTime := dProrrogacao;
      //
      ParamByName('PAG_008').AsString := qrDetalhepag_008.AsString;
      //
      if qrDetalhepag_015.isNull then
         ParamByName('PAG_015').Clear
      else
         ParamByName('PAG_015').AsInteger := qrDetalhepag_015.AsInteger;
      //
      if qrDetalhepag_016.IsNull then
         ParamByName('PAG_016').Clear
      else
         ParamByName('PAG_016').AsInteger := qrDetalhepag_016.AsInteger;
      //
      if qrDetalhepag_017.IsNull then
         ParamByName('PAG_017').Clear
      else
         ParamByName('PAG_017').AsInteger := qrDetalhepag_017.AsInteger;
      //
      if qrDetalhefnc_001.IsNull then
         ParamByName('FNC_001').Clear
      else
         ParamByName('FNC_001').AsInteger := qrDetalhefnc_001.AsInteger;
      //
      if qrDetalhepcg_001.IsNull then
         ParamByName('PCG_001').Clear
      else
         ParamByName('PCG_001').AsInteger := qrDetalhepcg_001.AsInteger;
      //
      if ParamByName('CHE_001').IsNull then
         ParamByName('CHE_001').Clear
      else
         ParamByName('CHE_001').AsInteger := qrDetalheche_001.AsInteger;
      //
      ParamByName('PAG_003').AsFloat := qrDetalhepag_003.AsFloat;
      ParamByName('PAG_004').AsFloat := qrDetalhepag_004.AsFloat;
      ParamByName('PAG_005').AsFloat := qrDetalhepag_005.AsFloat;
      ParamByName('PAG_006').AsFloat := qrDetalhepag_006.AsFloat;
      ParamByName('PAG_007').Value := qrDetalhepag_007.Value;
      ParamByName('PAG_010').AsFloat := qrDetalhepag_010.AsFloat;
      ParamByName('SIT_001').AsInteger := 8;
      //
      if qrDetalhecli_001.IsNull then
         ParamByName('CLI_001').Clear
      else
         ParamByName('CLI_001').AsInteger := qrDetalhecli_001.AsInteger;
      //
      ParamByName('DAT_001_1').AsDateTime := DataServer(frmMenu.conexao);
      ParamByName('USU_001_1').AsInteger := RecProj.iUsuario;
      ParamByName('PAG_009').AsInteger := 0;
      ExecSQL;
   end;
   //
   FreeAndNil(qrAux);
end;

procedure TfrmDetalheContasPagar.qrDetalheAfterOpen(DataSet: TDataSet);
begin
   inherited;
   //
   if qrDetalhepag_009.AsInteger in [1, 2] then
      bVisualizar := True;
end;

procedure TfrmDetalheContasPagar.qrDetalheBeforePost(DataSet: TDataSet);
var
  qrAux: TUniQuery;
  iContador: Integer;
  frm: TForm;
begin
   EventoExit.BtnExit(edCliente);
   EventoExit.BtnExit(edFornecedor);
   EventoExit.BtnExit(edFuncionario);
   EventoExit.BtnExit(edPCG);
   //
   if (qrDetalhepag_011.AsString = '') then
   begin
      Application.Messagebox('Favor informar um Pedido.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_011);
      Abort;
   end;
   //
   if (qrDetalhepag_012.AsDateTime = 0) then
   begin
      Application.Messagebox('Favor informar uma Data Emissão.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_012);
      Abort;
   end;
   //
   if (qrDetalhepag_002.AsDateTime = 0) then
   begin
      Application.Messagebox('Favor informar uma Data Vencimento.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_002);
      Abort;
   end;
   //
   if (qrDetalhepag_002.AsDateTime < qrDetalhepag_012.AsDateTime) then
   begin
      Application.Messagebox('A Data Emissão não pode ser maior que a Data Vencimento.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_002);
      Abort;
   end;
   //
//   if (qrDetalheobr_001.IsNull) then
//   begin
//      Application.Messagebox('Favor informar uma Obra.', 'Atenção', 0 + 64);
//      TestarFocoField(qrDetalheobr_001);
//      Abort;
//   end;
   //
//   if (qrDetalhefor_001.IsNull) then
//   begin
//      Application.Messagebox('Favor informar um Fornecedor.', 'Atenção', 0 + 64);
//      TestarFocoField(qrDetalhefor_001);
//      Abort;
//   end;
   //
   case edFavorecido.ItemIndex of
      0:
      begin
         if (qrDetalhecli_001.IsNull) then
         begin
            Application.Messagebox('Favor informar um Cliente.', 'Atenção', 0 + 64);
            TestarFocoField(qrDetalhecli_001);
            Abort;
         end;
      end;
      //
      1:
      begin
         if (qrDetalhepag_017.IsNull) then
         begin
            Application.Messagebox('Favor informar um Fornecedor.', 'Atenção', 0 + 64);
            TestarFocoField(qrDetalhepag_017);
            Abort;
         end;
      end;
      2:
      begin
         if (qrDetalhefnc_001.IsNull) then
         begin
            Application.Messagebox('Favor informar um Funcionário.', 'Atenção', 0 + 64);
            TestarFocoField(qrDetalhefnc_001);
            Abort;
         end;
      end;
   end;
   //
   if (qrDetalhepcg_001.IsNull) then
   begin
      Application.Messagebox('Favor informar um PCG.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepcg_001);
      Abort;
   end;
   //
   if (qrDetalhepag_003.AsFloat <= 0) then
   begin
      Application.Messagebox('Favor informar um Valor maior que zero.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_003);
      Abort;
   end;
   //
   if (qrDetalhepag_004.AsFloat < 0) then
   begin
      Application.Messagebox('O Desconto não pode ser negativo.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_004);
      Abort;
   end;
   //
   if (qrDetalhepag_005.AsFloat < 0) then
   begin
      Application.Messagebox('A Multa não pode ser negativa.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_005);
      Abort;
   end;
   //
   if (qrDetalhepag_006.AsFloat < 0) then
   begin
      Application.Messagebox('O Juros não pode ser negativo.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhepag_006);
      Abort;
   end;
   //
   {
   if qrDetalhe.State = dsInsert then
   begin
      qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.Conexao);
      qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
      qrDetalheinclusao.AsString := recProj.sUsuario;
      qrDetalheusu_sit.AsString := recProj.sUsuario;
      qrDetalhedat_sit.AsDateTime := qrDetalhedat_001_1.AsDateTime;
   end;
   }
   if qrDetalhe.State = dsEdit then
   begin
      qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.Conexao);
      qrDetalheusu_001_2.AsInteger := recProj.iUsuario;
      qrDetalheedicao.AsString := recProj.sUsuario;
   end;
   //
   // Caso o PCG não esteja relacionado com o Fornecedor, é feito o relacionamento automatico
   qrAux := TUniQuery.Create(Nil);
   with qrAux, SQL do
   begin
      Connection := frmMenu.Conexao;
      Add(' SELECT COUNT(1) ');
      Add(' FROM FORNECEDORES_PCG ');
      Add(' WHERE EMP_001 = :EMP ');
      Add('   AND FOR_001 = :FRN ');
      Add('   AND PCG_001 = :PCG ');
      ParamByName('EMP').AsInteger := recProj.iEmp;
      ParamByName('FRN').AsInteger := qrDetalhepag_017.AsInteger;
      ParamByName('PCG').AsInteger := qrDetalhepcg_001.AsInteger;
      Open;
      //
      if Fields[0].AsInteger = 0 then
      begin
         Close;
         Clear;
         Add(' INSERT INTO FORNECEDORES_PCG(FRP_001, EMP_001, FOR_001, PCG_001, USU_001_1, DAT_001_1) ');
         Add(' VALUES(SEQUENCIADOR(''FORNECEDORES_PCG'', :EMP_001), :EMP_001, :FOR_001, :PCG_001,  :USU_001_1, NOW()::TIMESTAMP(0)) ');
         ParamByName('EMP_001').AsInteger := recProj.iEmp;
         ParamByName('FOR_001').AsInteger := qrDetalhepag_017.AsInteger;
         ParamByName('PCG_001').AsInteger := qrDetalhepcg_001.AsInteger;
         ParamByName('USU_001_1').AsInteger := recProj.iUsuario;
         ExecSQL;
      end;
   end;
   FreeAndNil(qrAux);
   //
   if qrDetalhepag_016.AsInteger = 0 then
   begin
      qrDetalhepag_017.Clear;
      qrDetalhefor_003.Clear;
      //
      qrDetalhefnc_001.Clear;
      qrDetalhefnc_002.Clear;
   end;
   //
   if qrDetalhepag_016.AsInteger = 1 then
   begin
      qrDetalhecli_001.Clear;
      qrDetalhecli_003.Clear;
      //
      qrDetalhefnc_001.Clear;
      qrDetalhefnc_002.Clear;
   end;
   //
   if qrDetalhepag_016.AsInteger = 2 then
   begin
      qrDetalhecli_001.Clear;
      qrDetalhecli_003.Clear;
      //
      qrDetalhepag_017.Clear;
      qrDetalhefor_003.Clear;
   end;
   //
   if (edParcela.Value > 1) and (qrDetalhe.State = dsInsert) then
   begin
      //
      frm := MostraProcessa();
      //
      iContador := 1;
      //
      dVencimento := qrDetalhepag_002.AsDateTime;
      dProrrogacao := qrDetalhepag_014.AsDateTime;
      //
      while iContador <> edParcela.Value do
      begin
         dVencimento := IncMonth(dVencimento, 1);
         dProrrogacao := IncMonth(dProrrogacao, 1);
         //
         GeraParcelas;
         //
         Inc(iContador);
      end;
      //
      FechaProcessa(frm);
   end;
   //
   inherited;

end;

procedure TfrmDetalheContasPagar.qrDetalheCalcFields(DataSet: TDataSet);
begin
   inherited;
   case qrDetalhepag_009.AsInteger of
      0:
         qrDetalheSITUACAO.AsString := 'PENDENTE';
      1:
         qrDetalheSITUACAO.AsString := 'PAGO(A)';
      2:
         qrDetalheSITUACAO.AsString := 'CANCELADO(A)';
   end;
   //
   qrDetalheTOTAL.AsFloat := (qrDetalhepag_003.AsFloat + qrDetalhepag_005.AsFloat + qrDetalhepag_006.AsFloat) -
     (qrDetalhepag_004.AsFloat + qrDetalhepag_010.AsFloat);
end;

procedure TfrmDetalheContasPagar.qrDetalheNewRecord(DataSet: TDataSet);
begin
   inherited;
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.Conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalheinclusao.AsString := recProj.sUsuario;
   qrDetalheusu_sit.AsString := recProj.sUsuario;
   qrDetalhedat_sit.AsDateTime := qrDetalhedat_001_1.AsDateTime;
   //
   qrDetalhepag_009.AsInteger := 0;
   qrDetalhepag_003.AsFloat := 0;
   qrDetalhepag_004.AsFloat := 0;
   qrDetalhepag_005.AsFloat := 0;
   qrDetalhepag_006.AsFloat := 0;
   qrDetalhepag_010.AsFloat := 0;
   qrDetalhepag_012.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', DataServer(frmMenu.conexao)));
   qrDetalhepag_016.AsInteger := 1;
   if qrDetalhepag_013.IsNull then
      qrDetalhepag_013.AsInteger := 1;
end;

procedure TfrmDetalheContasPagar.qrDetalhepag_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
   if qrDetalhepag_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalhepag_001.AsString;
end;

end.
