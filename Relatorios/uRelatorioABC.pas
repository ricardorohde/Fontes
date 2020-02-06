unit uRelatorioABC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, AdvGlowButton, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxRadioGroup, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls,
  AdvGroupBox, frxClass, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfrmRelatorioABC = class(TfrmModelo)
    AdvGroupBox3: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    qrRelatorioProdutos: TUniQuery;
    qrRelatorioProdutosid_material: TIntegerField;
    qrRelatorioProdutosdescricao: TWideStringField;
    qrRelatorioProdutoscod_ref: TWideStringField;
    qrRelatorioProdutostotal_quantidade: TFloatField;
    qrRelatorioProdutostotal_valorvenda: TFloatField;
    qrRelatorioProdutostotal_custo: TFloatField;
    qrRelatorioProdutostotal_lucro: TFloatField;
    qrRelatorioProdutospercent: TFloatField;
    AdvGroupBox1: TAdvGroupBox;
    rgTipoAnalise: TcxRadioGroup;
    AdvGroupBox2: TAdvGroupBox;
    rgTipoGrupo: TcxRadioGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsRelatorio: TDataSource;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1total_quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1total_valorvenda: TcxGridDBColumn;
    cxGrid1DBTableView1total_custo: TcxGridDBColumn;
    cxGrid1DBTableView1total_lucro: TcxGridDBColumn;
    cxGrid1DBTableView1percent: TcxGridDBColumn;
    btCancelar: TAdvGlowButton;
    btPesquisar: TAdvGlowButton;
    cxGrid1DBTableView1cod_ref: TcxGridDBColumn;
    qrRelatorioProdutospercent_cat: TFloatField;
    cxGrid1DBTableView1percent_cat: TcxGridDBColumn;
    btImprimir: TAdvGlowButton;
    repRelatorioProdutosABC: TfrxReport;
    dbRelatorioProdutos: TfrxDBDataset;
    qrRelatorioProdutosid_categoria: TIntegerField;
    qrRelatorioProdutosdescricao_categoria: TWideStringField;
    repRelatorioProdutosABCCategoria: TfrxReport;
    procedure btCancelarClick(Sender: TObject);
    constructor Create (sender : Tcomponent) ; reintroduce;
    procedure btPesquisarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioABC: TfrmRelatorioABC;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmRelatorioABC.btImprimirClick(Sender: TObject);
var periodo, analise : string;
begin
  inherited;
  if qrRelatorioProdutos.RecordCount>0 then
  begin
    periodo := format('%s a %s',[formatdatetime('dd/mm/yyyy', qrRelatorioProdutos.ParamByName('dtini').AsDateTime),
                                 formatdatetime('dd/mm/yyyy', qrRelatorioProdutos.ParamByName('dtini').AsDateTime)]);

    if rgTipoAnalise.ItemIndex=0 then
      analise := 'Quantidade'
    else if rgTipoAnalise.ItemIndex=1 then
      analise := 'Lucro'
    else
      analise := 'Valor de venda';

    //produto
    if rgTipoGrupo.itemindex=0 then
    begin
      repRelatorioProdutosABC.Variables['sPeriodo'] := QuotedStr(periodo);
      repRelatorioProdutosABC.Variables['sTipoAnalise'] := QuotedStr(analise);
      repRelatorioProdutosABC.PrepareReport;
      repRelatorioProdutosABC.ShowReport;
    end
    else
    begin
      repRelatorioProdutosABCCategoria.Variables['sPeriodo'] := QuotedStr(periodo);
      repRelatorioProdutosABCCategoria.Variables['sTipoAnalise'] := QuotedStr(analise);
      repRelatorioProdutosABCCategoria.PrepareReport;
      repRelatorioProdutosABCCategoria.ShowReport;
    end;
  end
  else
    Application.MessageBox('Sem dados no período selecionado!', 'Atenção', MB_ICONINFORMATION);




    {  qrRelatorioProdutos.ParamByName('dtini').AsDateTime := dtpDataInicial.Date;
  qrRelatorioProdutos.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1;}
end;

procedure TfrmRelatorioABC.btPesquisarClick(Sender: TObject);
var str_sql, str_campo_analise, str_campo_analise_cat , str_campo_sub, str_campos, str_groupby : string;
begin
  inherited;
  //por quantidade
  if rgTipoAnalise.ItemIndex=0 then
  begin
    str_campo_analise := ' (sum(ite.ite_002)/sub.somatoria)*100 ';
    str_campo_analise_cat := ' (sum(ite.ite_002)/sub_categoria.somatoria)*100 ';
    str_campo_sub :=  '   sum(ite.ite_002) ';
  end
  //lucro
  else if rgTipoAnalise.ItemIndex=1 then
  begin
    str_campo_analise := '((sum((ite.ite_005 )-((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0))* ite.ite_002)))/sub.somatoria)*100 ';
    str_campo_analise_cat := '((sum((ite.ite_005 )-((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0))* ite.ite_002)))/sub_categoria.somatoria)*100 ';
    str_campo_sub :=  '   sum((ite.ite_005 )-((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0))* ite.ite_002)) ';
  end
  // por valor de venda
  else
  begin
    str_campo_analise := ' (sum(ite.ite_005)/sub.somatoria)*100 ';
    str_campo_analise_cat := ' (sum(ite.ite_005)/sub_categoria.somatoria)*100 ';
    str_campo_sub :=  '   sum(ite.ite_005) ';
  end;

  if rgTipoGrupo.ItemIndex = 0  then
  begin
    str_campos  := ' mat.mat_001 as id_material, mat.mat_003 as descricao, mat.mat_004 as cod_ref, ';
    str_groupby := ' mat.cat_001, mat.mat_003, mat.mat_004, mat.mat_001, sub.somatoria, sub_categoria.somatoria, cat.cat_002 ';
  end
  else
  begin
    str_campos  := ' cat.cat_001 as id_material, cat.cat_002 as descricao, cast(cat.cat_001 as varchar(50)) as cod_ref, ';
    str_groupby := ' mat.cat_001, cat.cat_001 , cat.cat_002 , sub.somatoria, sub_categoria.somatoria, cat.cat_002 ';
  end;

  qrRelatorioProdutos.Close;
  qrRelatorioProdutos.SQL.Clear;
  str_sql :=' select  mat.cat_001 as id_categoria, '+
            ' cat.cat_002 as descricao_categoria, '+
            str_campos+
            ' sum(ite.ite_002) as total_quantidade, '+
            ' sum(ite.ite_005) as total_valorvenda, '+
            //custo do material * quantidade vendida
            ' sum((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0)) * ite.ite_002) as total_custo, '+
            //valor total do item na venda - (custo *  quantidade vendida)
            ' sum ( (ite.ite_005 ) - ((coalesce(mat.mat_012,0.0)+ coalesce(mat.mat_006,0.0))* ite.ite_002)) as total_lucro, '+
            str_campo_analise + ' as percent, '+
            str_campo_analise_cat + ' as percent_cat '+
            ' from vendaitem ite '+
            ' join venda ven on (ven.emp_001 = ite.emp_001) and (ven.ven_001 = ite.ven_001) '+
            ' join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_001 = ite.mat_001) '+
            ' join unidades uni on (uni.emp_001 = mat.emp_001) and (uni.uni_001 = mat.uni_001) '+
            ' join categoria cat on (cat.cat_001=mat.cat_001 and cat.emp_001 = mat.emp_001) '+
            //faz a junção com a consulta de mesmo criterio para extrair o proporcional
            ' join ( '+
            '   select '+
            str_campo_sub + ' as somatoria' +
            '   from vendaitem ite '+
            '   join venda ven on (ven.emp_001 = ite.emp_001) and (ven.ven_001 = ite.ven_001) '+
            '   left  join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_001 = ite.mat_001) '+
            '   where ven.ven_004 >=:dtini and  ven.ven_004 <= :dtfim '+
            '   and ven.emp_001 = :emp '+
            '   and ven.sit_001 = 1 '+
            '   and ite.ite_003 > 0  '+
            ' ) sub on true '+
            //faz a junção com a consulta de mesmo criterio para extrair o proporcional
            ' join ( '+
            '   select '+
            str_campo_sub + ' as somatoria,' +
            '   mat.cat_001 as id_categoria ' +
            '   from vendaitem ite '+
            '   join venda ven on (ven.emp_001 = ite.emp_001) and (ven.ven_001 = ite.ven_001) '+
            '   left  join materiais mat on (mat.emp_001 = ite.emp_001) and (mat.mat_001 = ite.mat_001) '+
            '   where ven.ven_004 >=:dtini and  ven.ven_004 <= :dtfim '+
            '   and ven.emp_001 = :emp '+
            '   and ven.sit_001 = 1 '+
            '   and ite.ite_003 > 0  '+
            '   group by mat.cat_001 ) sub_categoria on  mat.cat_001=sub_categoria.id_categoria  '+

            ' where ven.ven_004 >=:dtini and  ven.ven_004 <= :dtfim '+
            ' and ven.emp_001 = :emp '+
            ' and ven.sit_001 = 1 '+
            ' and ite.ite_003 > 0 '+
            ' group by  '+
            str_groupby +
            ' order by 1, 2 ';
  qrRelatorioProdutos.SQL.Add(str_sql);
  qrRelatorioProdutos.ParamByName('emp').AsInteger := RecProj.iEmp;
  qrRelatorioProdutos.ParamByName('dtini').AsDateTime := dtpDataInicial.Date;
  qrRelatorioProdutos.ParamByName('dtfim').AsDateTime := dtpDataFinal.Date+1;
  qrRelatorioProdutos.open;

end;

constructor TfrmRelatorioABC.Create (sender : Tcomponent) ;
var dia, mes, ano : word;
begin
  inherited Create(sender);
  //preenche os filtros de data com o primeiro dia do mes e com o dia atual
  DecodeDate(date, ano, mes, dia);
  dtpDataInicial.Date:= EncodeDate(ano, mes, 1);
  dtpDataFinal.Date:=EncodeDate(ano, mes, dia);
  rgTipoAnalise.ItemIndex := 0;
  rgTipoGrupo.ItemIndex := 0;
  qrRelatorioProdutos.Close;

end;

procedure TfrmRelatorioABC.btCancelarClick(Sender: TObject);
begin
  inherited;
  self.close;
end;

end.
