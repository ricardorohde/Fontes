unit uDetalheAjusteEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoDetalhe, cxLookAndFeels, Data.DB,
  MemDS, DBAccess, Uni, Vcl.DBActns, Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin, cxGraphics, cxControls, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.StdCtrls, Vcl.DBCtrls, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMaskEdit, cxButtonEdit, cxTextEdit, Vcl.Mask, RxToolEdit, RxCurrEdit,
  RxDBCtrl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMemo,
  Datasnap.DBClient;

type
  TfrmDetalheAjusteEstoque = class(TfrmPadraoDetalhe)
    Panel1: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label22: TLabel;
    edResponsavel: TcxDBButtonEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    Label1: TLabel;
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
    gbItens: TGroupBox;
    Panel2: TPanel;
    CoolBar2: TCoolBar;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    Label2: TLabel;
    edMaterialItem: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    GridItemDBTableView1: TcxGridDBTableView;
    GridItemLevel1: TcxGridLevel;
    GridItem: TcxGrid;
    qrDetalheemp_001: TIntegerField;
    qrDetalheaju_001: TIntegerField;
    qrDetalheaju_002: TDateTimeField;
    qrDetalheaju_003: TWideMemoField;
    qrDetalhefnc_001: TIntegerField;
    qrDetalhesituacao: TWideStringField;
    qrDetalheusu_001_1: TIntegerField;
    qrDetalheusu_001_2: TIntegerField;
    qrDetalhedat_001_1: TDateTimeField;
    qrDetalhedat_001_2: TDateTimeField;
    qrDetalheinclusao: TWideStringField;
    qrDetalheedicao: TWideStringField;
    qrDetalhefnc_002: TWideStringField;
    cxDBMemo1: TcxDBMemo;
    edCodigo: TcxDBTextEdit;
    qrDetalhesit_001: TIntegerField;
    ToolButton7: TToolButton;
    btAutoriza: TToolButton;
    GridItemDBTableView1mat_001: TcxGridDBColumn;
    GridItemDBTableView1mat_002: TcxGridDBColumn;
    GridItemDBTableView1ite_002: TcxGridDBColumn;
    GridItemDBTableView1ite_003: TcxGridDBColumn;
    GridItemDBTableView1ite_004: TcxGridDBColumn;
    GridItemDBTableView1uni_003: TcxGridDBColumn;
    btConItem: TToolButton;
    btCanItem: TToolButton;
    btSep1: TToolButton;
    btIncItem: TToolButton;
    btEdtItem: TToolButton;
    btExcItem: TToolButton;
    dsItens: TDataSource;
    qrItens: TUniQuery;
    qrItensaju_001: TIntegerField;
    qrItensemp_001: TIntegerField;
    qrItensite_001: TIntegerField;
    qrItensmat_001: TIntegerField;
    qrItensuni_003: TWideStringField;
    qrItenscom_001: TIntegerField;
    qrItensite_002: TFloatField;
    qrItensite_003: TFloatField;
    qrItensite_004: TFloatField;
    qrItensmat_003: TWideStringField;
    edAjustar: TRxDBCalcEdit;
    edComposicao: TcxDBButtonEdit;
    Label9: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    qrItenscom_002: TWideStringField;
    GridItemDBTableView1com_002: TcxGridDBColumn;
    qrItensdisponivel: TFloatField;
    GridItemDBTableView1disponivel: TcxGridDBColumn;
    rbCodigo: TRadioButton;
    rbBarra: TRadioButton;
    edBarras: TcxDBButtonEdit;
    qrItenscomp: TWideStringField;
    qrItensmat_008: TFloatField;
    qrItensbarras: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrDetalheaju_001GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qrDetalheNewRecord(DataSet: TDataSet);
    procedure qrDetalheBeforePost(DataSet: TDataSet);
    procedure qrItemNewRecord(DataSet: TDataSet);
    procedure qrDetalheAfterOpen(DataSet: TDataSet);
    procedure btIncItemClick(Sender: TObject);
    procedure qrItensNewRecord(DataSet: TDataSet);
    procedure qrItensBeforePost(DataSet: TDataSet);
    procedure btConItemClick(Sender: TObject);
    procedure btCanItemClick(Sender: TObject);
    procedure btEdtItemClick(Sender: TObject);
    procedure btExcItemClick(Sender: TObject);
    procedure qrItensAfterInsert(DataSet: TDataSet);
    procedure qrDetalheAfterPost(DataSet: TDataSet);
    procedure dsDetalheStateChange(Sender: TObject);
    procedure dsItensStateChange(Sender: TObject);
    procedure edMaterialItemExit(Sender: TObject);
    procedure edComposicaoExit(Sender: TObject);
    procedure qrItensCalcFields(DataSet: TDataSet);
    procedure edAjustarExit(Sender: TObject);
    procedure btAutorizaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrItensAfterDelete(DataSet: TDataSet);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbBarraClick(Sender: TObject);
    procedure edBarrasExit(Sender: TObject);
  private
    { Private declarations }
    Procedure ChecaBtns;
    Function Composicao: Boolean;
    Procedure ImprimeEtiqueta;
  public
    { Public declarations }
  end;

var
  frmDetalheAjusteEstoque: TfrmDetalheAjusteEstoque;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uBtnExit, uEtiquetaMaterial;

procedure TfrmDetalheAjusteEstoque.btAutorizaClick(Sender: TObject);
begin
  inherited;
   if AjustaEstoque(qrDetalheaju_001.AsInteger) then
   begin
      qrDetalhe.Close;
      qrDetalhe.Open;
      //
      if Confirma('Deseja imprimir as etiquetas?', 'ATENÇÃO', True) then
      begin
         ImprimeEtiqueta;
      end;
      //
      Self.Close;
   end;
end;

procedure TfrmDetalheAjusteEstoque.btCanItemClick(Sender: TObject);
begin
   inherited;
   qrItens.Cancel;
end;

procedure TfrmDetalheAjusteEstoque.btConItemClick(Sender: TObject);
begin
  inherited;
   qrItens.Post;
end;

procedure TfrmDetalheAjusteEstoque.btEdtItemClick(Sender: TObject);
begin
  inherited;
   qrItens.Edit;
end;

procedure TfrmDetalheAjusteEstoque.btExcItemClick(Sender: TObject);
begin
   if Confirma('Confirma a exclusão deste registro?', 'ATENÇÃO', True) = False then
      Abort
   else
      qrItens.Delete;
end;

procedure TfrmDetalheAjusteEstoque.btIncItemClick(Sender: TObject);
begin
   qrItens.Insert;
end;

procedure TfrmDetalheAjusteEstoque.ChecaBtns;
begin
   btnConf.Enabled := (qrDetalhe.State in [dsEdit, dsInsert]);
   btnCanc.Enabled := (qrDetalhe.State in [dsEdit, dsInsert]);
   //
   btAutoriza.Enabled := (not(qrDetalhe.State = dsInsert)) and (not(bVisualizar)) and (qrItens.RecordCount > 0) and (qrDetalhesit_001.AsInteger <> 11);
   btConItem.Enabled := (qrItens.State in [dsInsert, dsEdit]);
   btSep1.Visible := btConItem.Visible;
   btCanItem.Enabled := (qrItens.State in [dsInsert, dsEdit]);
   btIncItem.Enabled := (not(qrItens.State in [dsInsert, dsEdit])) and (not(qrDetalhe.State = dsInsert))and (not(bVisualizar));
   btEdtItem.Enabled := (not(qrItens.State in [dsInsert, dsEdit])) and (qrItens.RecordCount > 0)and (not(bVisualizar));
   btExcItem.Enabled := (not(qrItens.State in [dsInsert, dsEdit])) and (qrItens.RecordCount > 0)and (not(bVisualizar));
   //
   rbCodigo.Enabled := (not(qrItens.State in [dsInsert, dsEdit]));
   rbBarra.Enabled := (not(qrItens.State in [dsInsert, dsEdit]));
end;

function TfrmDetalheAjusteEstoque.Composicao: Boolean;
var
   qrAux: TUniQuery;
begin
   Result := False;
   //
   qrAux := TUniQuery.Create(nil);
   try
      with qrAux, SQL do
      begin
         Connection := frmMenu.conexao;
         Close;
         Clear;
         Add('SELECT COUNT(COM_001) AS QTDE FROM COMPOSICAO');
         Add('WHERE EMP_001 = :EMP');
         Add('AND   MAT_001 = :MAT');
         ParamByName('EMP').AsInteger := RecProj.iEmp;
         ParamByName('MAT').AsInteger := qrItensmat_001.AsInteger;
         Open;
      end;
      //
      qrAux.First;
      //
      if (qrAux.FieldByName('QTDE').AsInteger > 0) then
         Result := True;
   finally
      FreeAndNil(qrAux);
   end;
end;

procedure TfrmDetalheAjusteEstoque.dsDetalheStateChange(Sender: TObject);
begin
  inherited;
    ChecaBtns;
end;

procedure TfrmDetalheAjusteEstoque.dsItensStateChange(Sender: TObject);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmDetalheAjusteEstoque.edAjustarExit(Sender: TObject);
begin
  inherited;
   if (qrItens.State in [dsInsert, dsEdit]) and (qrItensite_003.AsFloat > 0) then
   begin
      btConItemClick(btConItem);
      //
      btIncItemClick(btIncItem);
   end;
end;

procedure TfrmDetalheAjusteEstoque.edBarrasExit(Sender: TObject);
begin
  inherited;
   if (qrItens.State in [dsInsert, dsEdit]) then
   begin
      EventoExit.BtnExit(edBarras);
      //
      if edAjustar.CanFocus then edAjustar.SetFocus;
   end;
end;

procedure TfrmDetalheAjusteEstoque.edComposicaoExit(Sender: TObject);
begin
  inherited;
   if (qrItens.State in [dsInsert, dsEdit]) then
   begin
      EventoExit.BtnExit(edComposicao);
      //
      qrItensite_002.AsFloat := RecProj.dEstoque;
      qrItensite_004.AsFloat := RecProj.dReserva;
   end;
end;

procedure TfrmDetalheAjusteEstoque.edMaterialItemExit(Sender: TObject);
begin
  inherited;
   if (qrItens.State in [dsInsert, dsEdit]) then
   begin
      EventoExit.BtnExit(edMaterialItem);
      //
      if not(Composicao) then
      begin
         qrItensite_002.AsFloat := RecProj.dEstoque;
         qrItensite_004.AsFloat := RecProj.dReserva;
         //
         qrItenscom_001.Clear;
         qrItenscom_002.Clear;
         //
         if edAjustar.CanFocus then edAjustar.SetFocus;
      end
      else
      begin
         //qrItensite_002.AsFloat := 0;
         //qrItensite_004.AsFloat := 0;
      end;
   end;
end;

procedure TfrmDetalheAjusteEstoque.FormCreate(Sender: TObject);
begin
   fSufix := 'AJUSTEESTOQUE';
   sTabela := 'AJUSTEESTOQUE';
   inherited;
   IgnoraEnter2Tab.Add('cxDBMemo1');
end;

procedure TfrmDetalheAjusteEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if ssCtrl in Shift then
   begin
      if (Char(Key) in ['A', 'a']) and (btAutoriza.Visible) and (btAutoriza.Enabled) then
         btAutoriza.Click;
      //Itens
      if (Char(Key) in ['I', 'i']) and (btIncItem.Visible) and (btIncItem.Enabled) then
         btIncItem.Click;
      if (Char(Key) in ['E', 'e']) and (btEdtItem.Visible) and (btEdtItem.Enabled) then
         btEdtItem.Click;
      if (Char(Key) in ['D', 'd']) and (btExcItem.Visible) and (btExcItem.Enabled) then
         btExcItem.Click;
      //
      if qrItens.State in [dsInsert, dsEdit] then
      begin
         if (Char(Key) in ['S', 's']) and (btConItem.Visible) and (btConItem.Enabled) then
            btConItem.Click;
         if (Char(Key) in ['C', 'c']) and (btCanItem.Visible) and (btCanItem.Enabled) then
            btCanItem.Click;
      end;
   end;
end;

procedure TfrmDetalheAjusteEstoque.FormShow(Sender: TObject);
begin
   Formatar_Float(qrItensite_002);
   Formatar_Float(qrItensite_003);
   Formatar_Float(qrItensite_004);
   Formatar_Float(qrItensdisponivel);
   Campo_Obrigatorio([Label10, Label22, Label1, Label2, Label5]);
   inherited;
   //
   rbBarraClick(rbBarra);
   //
   qrItens.BeforeInsert := Nil;
   qrItens.BeforeEdit := Nil;
   qrItens.BeforeDelete := Nil;
   //
   ChecaBtns;
   //
   if LerInteger('PESCODAJUSTE') = 1 then
      rbCodigo.Checked := True
   else
      rbBarra.Checked := True;
   //
end;

procedure TfrmDetalheAjusteEstoque.ImprimeEtiqueta;
begin
   Application.CreateForm(TfrmEtiquetaMaterial, frmEtiquetaMaterial);
   //
   with frmEtiquetaMaterial do
   begin
      qrItens.First;
      while not qrItens.Eof do
      begin
         cdsMaterial.Append;
         //
         cdsMaterialmat_001.AsInteger := qrItensmat_001.AsInteger;
         cdsMaterialmat_003.AsString := qrItensmat_003.AsString;
         cdsMaterialuni_003.AsString := qrItensuni_003.AsString;
         cdsMaterialcom_001.AsInteger := qrItenscom_001.AsInteger;
         cdsMaterialcom_002.AsString := qrItenscom_002.AsString;
         cdsMaterialcomp.AsString := qrItensbarras.AsString;
         cdsMaterialmat_008.AsFloat := qrItensmat_008.AsFloat;
         cdsMaterialqtde.AsFloat := qrItensite_003.AsFloat;
         //
         cdsMaterial.Post;
         //
         qrItens.Next;
      end;
      //
      ShowModal;
   end;
   //
   FreeAndNil(frmEtiquetaMaterial);
end;

procedure TfrmDetalheAjusteEstoque.qrDetalheAfterOpen(DataSet: TDataSet);
begin
  inherited;
   qrItens.Close;
   qrItens.ParamByName('EMP').AsInteger := RecProj.iEmp;
   qrItens.ParamByName('AJU').AsInteger := qrDetalheaju_001.AsInteger;
   qrItens.Open;
end;

procedure TfrmDetalheAjusteEstoque.qrDetalheAfterPost(DataSet: TDataSet);
begin
  inherited;
   ChecaBtns;
   //
   gbItens.Enabled := True;
end;

procedure TfrmDetalheAjusteEstoque.qrDetalheaju_001GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
   if qrDetalheaju_001.AsInteger = 0 then
      Text := 'NOVO'
   else
      Text := qrDetalheaju_001.AsString;
end;

procedure TfrmDetalheAjusteEstoque.qrDetalheBeforePost(DataSet: TDataSet);
begin
   //
   if qrDetalheaju_002.IsNull then
   begin
      Application.Messagebox('Favor informar uma Data.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalheaju_002);
      Abort;
   end;
   //
   if qrDetalhefnc_001.IsNull then
   begin
      Application.Messagebox('Favor informar um Responsável.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalhefnc_001);
      Abort;
   end;
   //
   if ((qrDetalheaju_003.IsNull) or (Trim(qrDetalheaju_003.AsString) = '')) then
   begin
      Application.Messagebox('Favor informar um Motivo.', 'Atenção', 0 + 64);
      TestarFocoField(qrDetalheaju_003);
      Abort;
   end;
   //
   if qrDetalhe.State = dsInsert then
   begin
      qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.Conexao);
      qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
      qrDetalheinclusao.AsString := recProj.sUsuario;
   end;
   if qrDetalhe.State = dsEdit then
   begin
      qrDetalhedat_001_2.AsDateTime := DataServer(frmMenu.Conexao);
      qrDetalheusu_001_2.AsInteger := recProj.iUsuario;
      qrDetalheedicao.AsString := recProj.sUsuario;
   end;
   //
   inherited;

end;

procedure TfrmDetalheAjusteEstoque.qrDetalheNewRecord(DataSet: TDataSet);
begin
   inherited;
   qrDetalhedat_001_1.AsDateTime := DataServer(frmMenu.Conexao);
   qrDetalheusu_001_1.AsInteger := recProj.iUsuario;
   qrDetalheinclusao.AsString := recProj.sUsuario;
   qrDetalhesit_001.AsInteger := 8;
   qrDetalheSITUACAO.AsString := 'PENDENTE';
   qrDetalheaju_002.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', DataServer(frmMenu.conexao)));
   //
   gbItens.Enabled := False;
   //
   if edResponsavel.CanFocus then edResponsavel.SetFocus;
end;

procedure TfrmDetalheAjusteEstoque.qrItemNewRecord(DataSet: TDataSet);
begin
  inherited;
   qrItensemp_001.AsInteger := RecProj.iEmp;
   qrItensaju_001.AsInteger := qrDetalheaju_001.AsInteger;
   qrItensite_001.AsInteger := NovoID(frmMenu.conexao, 'AJUSTEESTOQUEITEM', recProj.iEmp);
end;

procedure TfrmDetalheAjusteEstoque.qrItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
   ChecaBtns;
end;

procedure TfrmDetalheAjusteEstoque.qrItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
   if edMaterialItem.CanFocus then
      edMaterialItem.SetFocus
   else
   begin
      if edBarras.CanFocus then edBarras.SetFocus;
   end;
end;

procedure TfrmDetalheAjusteEstoque.qrItensBeforePost(DataSet: TDataSet);
begin
   //edAjustarExit(edAjustar);
   //
   if (qrItensmat_001.IsNull) or (Trim(qrItensmat_001.AsString) = '') then
   begin
      Application.MessageBox('Informe um Material!', 'Atenção', 0+64);
      if edMaterialItem.CanFocus then edMaterialItem.SetFocus;
      Abort;
   end;
   //
   if (Composicao) and ((qrItenscom_001.IsNull) or (Trim(qrItenscom_001.AsString) = '')) then
   begin
      Application.MessageBox('Informe uma Composição para o Material!', 'Atenção', 0+64);
      if edComposicao.CanFocus then edComposicao.SetFocus;
      Abort;
   end;
   //
//   if (qrItensite_003.AsFloat <= 0) then
//   begin
//      Application.MessageBox('Informe um valor maior que zero!', 'Atenção', 0+64);
//      if edAjustar.CanFocus then edAjustar.SetFocus;
//      Abort;
//   end;
   //
   if (qrItensite_003.AsFloat < qrItensite_004.AsFloat) then
   begin
      Application.MessageBox('O valor informado não pode ser menor que a Qtde. Reservada!', 'Atenção', 0+64);
      qrItensite_003.AsFloat := 0;
      if edAjustar.CanFocus then edAjustar.SetFocus;
      Abort;
   end;
   //
   if qrItens.State = dsInsert then
      qrItensite_001.AsInteger := NovoID(frmMenu.conexao, 'AJUSTEESTOQUEITEM', RecProj.iEmp);
   //
   if rbCodigo.Checked then
      GravaInteger('PESCODAJUSTE', 1)
   else
      GravaInteger('PESCODAJUSTE', 0);
   //
   inherited;

end;

procedure TfrmDetalheAjusteEstoque.qrItensCalcFields(DataSet: TDataSet);
begin
  inherited;
   qrItensdisponivel.AsFloat := (qrItensite_003.AsFloat - qrItensite_004.AsFloat);
end;

procedure TfrmDetalheAjusteEstoque.qrItensNewRecord(DataSet: TDataSet);
begin
  inherited;
   qrItensemp_001.AsInteger := RecProj.iEmp;
   qrItensaju_001.AsInteger := qrDetalheaju_001.AsInteger;
   qrItensite_002.AsFloat := 0;
   qrItensite_003.AsFloat := 0;
   qrItensite_004.AsFloat := 0;
end;

procedure TfrmDetalheAjusteEstoque.rbBarraClick(Sender: TObject);
begin
  inherited;
   if rbBarra.Checked then
   begin
      edBarras.Visible := True;
      edMaterialItem.Visible := False;
      //
      if qrItens.State in [dsInsert, dsEdit] then
      begin
         qrItensmat_001.Clear;
         qrItenscomp.Clear;
         qrItenscom_001.Clear;
         qrItenscom_002.Clear;
         //
         EventExit.BtnExit(edMaterialItem);
         EventExit.BtnExit(edComposicao);
         //
//         if edBarras.CanFocus then edBarras.SetFocus;
      end;
   end
   else
   begin
      edBarras.Visible := False;
      edMaterialItem.Visible := True;
   end;
end;

procedure TfrmDetalheAjusteEstoque.rbCodigoClick(Sender: TObject);
begin
  inherited;
   if rbCodigo.Checked then
   begin
      edMaterialItem.Visible := True;
      edBarras.Visible := False;
      //
      if qrItens.State in [dsInsert, dsEdit] then
      begin
         qrItensmat_001.Clear;
         qrItenscomp.Clear;
         qrItenscom_001.Clear;
         qrItenscom_002.Clear;
         //
         EventExit.BtnExit(edMaterialItem);
         EventExit.BtnExit(edComposicao);
      end;
   end
   else
   begin
      edMaterialItem.Visible := False;
      edBarras.Visible := True;
   end;
end;

end.
