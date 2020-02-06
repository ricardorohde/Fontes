unit uBuscaRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni, uFuncoes, Vcl.ExtCtrls,
  AdvPanel, AdvGlowButton, cxContainer, cxCheckBox, AdvGroupBox,
  AdvSmoothTouchKeyBoard, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;
type
  TfrmBuscaRegistro = class(TForm)
    edBusca: TEdit;
    cbCampoFiltro: TComboBox;
    qrBusca: TUniQuery;
    dsBusca: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    Label2: TLabel;
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    btPesquisar: TAdvGlowButton;
    grTecladoTouch: TAdvGroupBox;
    pnAjusteEsquerdo: TAdvGroupBox;
    pnTecladoConteudo: TAdvGroupBox;
    kbTeclado: TAdvSmoothTouchKeyBoard;
    ckTermoParcialBusca: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    constructor CreateForm (sender : TComponent ; sql_consulta : string ;
                        campos_visiveis_grid :  TArray<integer> ;
                        descricao_campos : TArray<string>;
                        indice_campo_retorno : integer=0;
                        indice_padrao_filtro : integer=0; filtro_where : string ='';
                        largura_janela: integer = 0; altura_janela : integer = 0;
                        modo_touch : boolean = false;
                        order_by : string = '');
    procedure MontaConsulta;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function IsGridFocused: Boolean;
    procedure btPesquisarClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure qrBuscaAfterOpen(DataSet: TDataSet);
    procedure AtualizaCaptionsColunas;
    procedure Button2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure edBuscaEnter(Sender: TObject);
  private
    { Private declarations }
    sql, filtro, order_by : string;
    campos_visiveis : TArray<Integer> ;
    caption_campos, nomesdb_campos : TArray<string>;

    iretorno : integer;
    f_exec1 : boolean;
    i_where : integer;
    i_orderby : integer;

  public
    { Public declarations }
    valor_retorno : variant;
  end;

var
  frmBuscaRegistro: TfrmBuscaRegistro;

implementation

{$R *.dfm}

uses uMenu, uConsFornecedor, uDetalheCliente;

procedure TfrmBuscaRegistro.btCancelaClick(Sender: TObject);
begin
  self.Tag:=0;
  close;
end;

procedure TfrmBuscaRegistro.btConfirmaClick(Sender: TObject);
begin
  if qrBusca.RecordCount>0 then
  begin
    GravaBooelanConfig('PRE_CKTERMOPARCIALBUSCA', ckTermoParcialBusca.Checked, frmMenu.cdsCFG.FileName);
    valor_retorno := qrBusca.Fields[iretorno].Value;
    Tag:=1;
    close;
  end;
end;

procedure TfrmBuscaRegistro.btPesquisarClick(Sender: TObject);
var sql, str_aux, curinga: string;
    i : integer;
    num_aux : real;
begin
  i:=cbCampoFiltro.ItemIndex;

  //verifica se vai fazer busca parcial no inicio da palavra
  if ckTermoParcialBusca.Checked then
    curinga :='%'
  else
    curinga :='';

  // analisa o tipo de dados do campo selecionado no combo de filtro
  if qrBusca.FieldByName(nomesdb_campos[i]) is TNumericField then
  begin
    //valida se o dado digitado é numero
    try
      num_aux := StrToFloat(edBusca.Text);
    except
      edBusca.SetFocus;
      abort;
    end;
    sql := ' and ' + nomesdb_campos[i] + '=' + StringReplace(format('%.3f',[num_aux]), ',', '.', [])   ;
  end
  // ou string...
  else if qrBusca.FieldByName(nomesdb_campos[i]) is TStringField then
    sql := ' and upper(' + nomesdb_campos[i] + ') like upper(' + QuotedStr(curinga +edBusca.Text+'%') +') '
  else
    sql := ' and ' + nomesdb_campos[i] + '=' + QuotedStr(edBusca.Text);

  qrBusca.Close;

  //verifica se nao foi aplicado filtro ainda
  qrBusca.SQL[i_where]:= sql;

  //faz a ordenação...
  qrBusca.SQL[i_orderby]:= 'order by ' + nomesdb_campos[i] ;

  qrBusca.Open;
  AtualizaCaptionsColunas;

  if qrBusca.RecordCount>0 then
    cxGrid1.SetFocus
  else
    edBusca.SetFocus;
end;

procedure TfrmBuscaRegistro.Button2Click(Sender: TObject);
begin
  qrBusca.Open;
end;

constructor TfrmBuscaRegistro.CreateForm (sender : TComponent ;
                        sql_consulta : string ;
                        campos_visiveis_grid : TArray<integer> ;
                        descricao_campos : TArray<string>;
                        indice_campo_retorno : integer=0;
                        indice_padrao_filtro : integer=0;
                        filtro_where : string ='';
                        largura_janela: integer = 0; altura_janela : integer = 0;
                        modo_touch : boolean = false;
                        order_by : string = '');
var i : integer;
begin
  inherited Create(sender);
  f_exec1 := true;
  sql := sql_consulta;
  filtro := filtro_where;
  iretorno := indice_campo_retorno;
  self.order_by := order_by ;

  ClonaArray(campos_visiveis_grid, campos_visiveis);
  ClonaArray(descricao_campos,caption_campos);

  //monta a consulta
  MontaConsulta;
  //Monta o combo de filtro
  cbCampoFiltro.Items.Clear;
  for I := 0 to length(nomesdb_campos)-1 do cbCampoFiltro.Items.Add(caption_campos[i]);
  cbCampoFiltro.ItemIndex:=indice_padrao_filtro;

  if largura_janela>660 then self.Width:=largura_janela;
  if altura_janela>280 then  self.Height:=altura_janela;
  f_exec1:=false;

  if modo_touch then
  begin
    grTecladoTouch.Visible := true;
    cxgrid1.Height := cxgrid1.Height - grTecladoTouch.Height;
    //ajusta o panel esquerdo do teclado numerico para uma largura que deixe o teclado centralizado
    pnAjusteEsquerdo.Width := round((self.Width - kbTeclado.Width -14)/2);
  end
  else
    grTecladoTouch.Visible := false;

  //pega predefinição de termo parcial
  ckTermoParcialBusca.Checked := LerBooleanConfig('PRE_CKTERMOPARCIALBUSCA', frmMenu.cdsCFG.FileName, false);

end;

procedure TfrmBuscaRegistro.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if btConfirma.Enabled then btConfirma.click;

end;

procedure TfrmBuscaRegistro.edBuscaEnter(Sender: TObject);
begin
  edBusca.SelStart := Length( edBusca.Text );
end;

procedure TfrmBuscaRegistro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
  begin
    if IsGridFocused then
    begin
      if qrBusca.RecordCount>0 then
        btConfirma.Click
      else
        Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else if ActiveControl.Name='edBusca' then
    begin
      btPesquisar.Click;

    end
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else
  if key=VK_ESCAPE then btCancela.Click;
end;

procedure TfrmBuscaRegistro.FormShow(Sender: TObject);
begin
  edBusca.SetFocus;
end;


procedure TfrmBuscaRegistro.MontaConsulta;
var i : integer;
begin
  qrBusca.Close;
  qrBusca.SQL.Clear;
  qrBusca.SQL.Add(sql);

  //limpa as colunas
{ if not f_exec1 then
  begin
    for i := 0 to cxGrid1DBTableView1.ColumnCount-1 do
    begin
      cxGrid1DBTableView1.Columns[i].Free;
    end;
  end; }

  if filtro<>'' then
    qrBusca.SQL.Add('where ' + filtro)
  else
    qrBusca.SQL.Add('where true');

  i_where := qrBusca.SQL.Count;

  //adiciona uma linha em branco para poder informar os filtros que o usuário acionar
  qrBusca.SQL.Add('');

  if order_by<>'' then
    qrBusca.SQL.Add('order by '+ order_by)
  else
    qrBusca.SQL.Add('order by 1');

  i_orderby := qrBusca.SQL.Count-1;

  qrBusca.SQL.Add(' limit 1000 ');
  qrBusca.Open;

  //carrega os campos para a grid
  if f_exec1 then
  begin
    cxGrid1DBTableView1.DataController.DataSource:=dsBusca;
    cxGrid1DBTableView1.DataController.CreateAllItems(true);
    f_exec1:=false;
  end;
  //coloca os captions corretos nos campos visiveis
  AtualizaCaptionsColunas;
end;

procedure TfrmBuscaRegistro.AdvGlowButton1Click(Sender: TObject);
begin
frmConsFornecedor  := TfrmConsFornecedor.Create(self,'select id_fornecedor, nome_fantasia, razao_social, ' +
                      ' cast(case when tipo_pessoa=''J'' then ''Jurídica'' else ''Física'' end as varchar(10)) as tipo_p, '+
                      ' cnpj, cpf, nome_contato1, telefone1, telefone2, celular1, ' +
                      ' cast(fn_situacoes(id_situacao) as varchar(100)) as situacao from fornecedor ',  //Select
                      CriaIntegerArray([0,1,2,3,4,5,6,7,8,9,10]),   //Campos visiveis
                      CriaIntegerArray([0,1,2,4,5,6,7]),  //Campos diponiveis para filtro
                      CriaStringArray(['Código', 'Fornecedor', 'Razão Social',  'Tipo', 'CNPJ', 'CPF', 'Contato',
                                       'Telefone 1', 'Telefone 2', 'Celular', 'Status']), // Caption dos campos
                      1, ' id_empresa='+IntToStr(recproj.iEmp));
  frmConsFornecedor.ShowModal;
  frmConsFornecedor.Free;
end;

procedure TfrmBuscaRegistro.AdvGlowButton2Click(Sender: TObject);
begin
  frmDetalheCliente := TfrmDetalheCliente.Create(self);
  frmDetalheCliente.ShowModal;
  frmDetalheCliente.Free;
end;

procedure TfrmBuscaRegistro.AtualizaCaptionsColunas;
var i : integer;
begin
  for I := 0 to Length(nomesdb_campos)-1 do
  begin
    cxGrid1DBTableView1.GetColumnByFieldName(nomesdb_campos[i]).MinWidth :=65;
    cxGrid1DBTableView1.GetColumnByFieldName(nomesdb_campos[i]).Caption:=caption_campos[i];
    if (i=0) or (i=Length(nomesdb_campos)-1) then
      cxGrid1DBTableView1.GetColumnByFieldName(nomesdb_campos[i]).ApplyBestFit;
  end;
end;

procedure TfrmBuscaRegistro.qrBuscaAfterOpen(DataSet: TDataSet);
var i : integer;
begin
  btConfirma.Enabled:= qrBusca.RecordCount>0 ;

  //define os campos visiveis, labels e nomes dos campos para filtro
  SetLength(nomesdb_campos, length(campos_visiveis) );
  for I := 0 to qrBusca.FieldCount-1 do  qrBusca.Fields[i].Visible:=false;
  for I := 0 to Length(campos_visiveis)-1 do
  begin
    qrBusca.Fields[campos_visiveis[i]].Visible:=true;
    //Define os labels dos campos
    if Length(campos_visiveis) = Length(caption_campos)then
      qrBusca.Fields[campos_visiveis[i]].DisplayLabel:=caption_campos[i];
    //pega o nome dos campos no bd
    nomesdb_campos[i]:= qrBusca.Fields[campos_visiveis[i]].FieldName;
    //formata campos numericos com duas casas decimais
    if qrBusca.Fields[campos_visiveis[i]] is TFloatField then
      TFloatField(qrBusca.Fields[campos_visiveis[i]]).displayFormat := '#,##0.00';
  end;
end;

function TfrmBuscaRegistro.IsGridFocused: Boolean;
var
 AContainer: TcxCustomEdit;
begin
 Result := Screen.ActiveControl is TcxGridSite;
 if not Result then
 begin
   AContainer := nil;
   if Screen.ActiveControl is TcxCustomEdit then
   begin
     AContainer := TcxCustomEdit(Screen.ActiveControl);
     Result := True;
   end
   else
     if (Screen.ActiveControl.Parent <> nil) and
       (Screen.ActiveControl.Parent is TcxCustomEdit) then
     begin
       AContainer := TcxCustomEdit(Screen.ActiveControl.Parent);
       Result := True;
     end;
   Result := Result and (AContainer.Parent is TcxGridSite);
 end;
end;



end.
