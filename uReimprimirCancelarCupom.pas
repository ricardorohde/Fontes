unit uReimprimirCancelarCupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, AdvGlowButton, Vcl.ExtCtrls,
  AdvPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni,
  cxContainer, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, AdvGroupBox, Vcl.ComCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmReimpressaoCupom = class(TfrmModelo)
    dsVendas: TDataSource;
    qrVendas: TUniQuery;
    qrVendasid_venda: TIntegerField;
    qrVendasid_empresa: TIntegerField;
    qrVendasdata_emissao: TDateTimeField;
    qrVendasvalor: TFloatField;
    qrVendastipo_venda: TWideStringField;
    qrVendasnome_cliente: TWideStringField;
    qrVendaschave_acesso: TWideStringField;
    qrVendaschave_cancelamento: TWideStringField;
    qrVendashora_emissao: TDateTimeField;
    qrVendasven_024: TWideStringField;
    qrVendassituacao_caixa: TIntegerField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1id_venda: TcxGridDBColumn;
    cxGrid2DBTableView1id_empresa: TcxGridDBColumn;
    cxGrid2DBTableView1data_emissao: TcxGridDBColumn;
    cxGrid2DBTableView1hora_emissao: TcxGridDBColumn;
    cxGrid2DBTableView1nro_cupom: TcxGridDBColumn;
    cxGrid2DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1valor: TcxGridDBColumn;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBCardView1observacao: TcxGridDBCardViewRow;
    cxGrid2Level1: TcxGridLevel;
    btSair: TAdvGlowButton;
    btImprimir: TAdvGlowButton;
    btCancelarVenda: TAdvGlowButton;
    qrVendasnumero_cupom: TIntegerField;
    AdvGroupBox1: TAdvGroupBox;
    rgFiltroSituacao: TcxRadioGroup;
    AdvGroupBox2: TAdvGroupBox;
    rgFiltroTipo: TcxRadioGroup;
    btPesquisar: TAdvGlowButton;
    Label4: TLabel;
    Shape2: TShape;
    qrVendasvenda_cancelada: TBooleanField;
    cxGrid2DBTableView1venda_cancelada: TcxGridDBColumn;
    cxGrid2DBTableView1tipo_venda: TcxGridDBColumn;
    qrVendastipofiscal: TWideStringField;
    qrVendasdescricao_mesa_comanda: TWideStringField;
    cxGrid2DBTableView1descricao_mesa_comanda: TcxGridDBColumn;
    Label1: TLabel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    Label2: TLabel;
    procedure btSairClick(Sender: TObject);
    procedure btCancelarVendaClick(Sender: TObject);
    constructor Create (sender : Tcomponent; Modo : string = 'C'); Reintroduce;  //C = cancelar / I = Imprimir
    procedure btPesquisarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure cxGrid2DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReimpressaoCupom: TfrmReimpressaoCupom;

implementation

{$R *.dfm}

uses uMenu, uFuncoes, uPDVFechamento, uGeradorSAT;

Constructor TfrmReimpressaoCupom.Create(sender : Tcomponent; Modo : string = 'C');
begin
  inherited create(sender);
  qrVendas.Close;
  qrVendas.ParamByName('id_empresa').AsInteger := recproj.iEmp;
  dtpDataInicial.Date:=date;
  dtpDatafinal.Date:=date;
  qrVendas.Open;

  if Modo = 'C' then
  begin
    btImprimir.Visible:=false;
    btCancelarVenda.Visible :=true;
    self.caption := 'Cancelar Venda (Caixa Atual)';
  end
  else
  begin
    btImprimir.Visible := true;
    btCancelarVenda.Visible :=false;
    self.caption := 'Reimprimir Cupom Não Fiscal ';
  end;
  btPesquisar.Click;
end;


procedure TfrmReimpressaoCupom.cxGrid2DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn : TcxCustomGridTableItem;
begin
  inherited;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('venda_cancelada');

  if ARecord.Values[AColumn.Index]=true  then
    AStyle := frmMenu.cxFundoVermelho;
end;

procedure TfrmReimpressaoCupom.btSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmReimpressaoCupom.btCancelarVendaClick(Sender: TObject);
var
  id_usuario_cancelamento : integer;
  campo_permissao : string;
  just_canc , str_aux: string;
begin
  inherited;
  if qrVendas.Active then
  begin
    if qrVendas.RecordCount>0 then
    begin
      if qrVendas.FieldByName('venda_cancelada').AsBoolean then
        application.MessageBox('Esta venda já foi cancelada!', 'Atenção', MB_ICONINFORMATION)
      else if qrVendas.FieldByName('situacao_caixa').asinteger<>4 then
        application.MessageBox('O caixa desta venda não encontra-se aberto!', 'Atenção', MB_ICONINFORMATION)
      else
      begin
        if (uppercase(qrVendas.FieldByName('ven_024').asstring) = 'M') or
           (uppercase(qrVendas.FieldByName('ven_024').asstring) = 'C') then
          campo_permissao := 'b_cancelamento_mesa'
        else if uppercase(qrVendas.FieldByName('ven_024').asstring) = 'D' then
          campo_permissao := 'b_cancelamento_delivery'
        else if uppercase(qrVendas.FieldByName('ven_024').asstring) = 'P' then
          campo_permissao := 'b_cancelamento_pdv'
        else if uppercase(qrVendas.FieldByName('ven_024').asstring) = 'B' then
          campo_permissao := 'b_cancelamento_balcao'
        else campo_permissao :='';

        if campo_permissao<>'' then
        begin
          if frmMenu.ConfirmacaoSenha(campo_permissao, id_usuario_cancelamento) then
          begin
            just_canc := trim(Chama_Justificativa('Justificativa para cancelamento de Venda', 'Cancelamento de venda','Cancelamento de venda' ));

            if Empty(just_canc) then
            begin
              Application.MessageBox('É necessário uma justificativa!', 'Atenção', 0 + 64);
              exit;
            end
            else
            begin
              CancelaVenda(qrVendas.FieldByName('id_venda').AsInteger, id_usuario_cancelamento, just_canc ,true, true);
              if qrVendas.FieldByName('tipofiscal').asstring='ECF' then
              begin
                str_aux := 'Esta venda foi emitida por meio de ECF. O ECF permite apenas o '+
                           'cancelamento do último cupom emitido, se este for o caso, para cancelar o cupom, '+
                           'entre nas configurações do Sistema, na aba ECF e acione o botão "Cancelar Cupom"';
                Application.MessageBox(pchar(str_aux), 'Atenção', MB_ICONINFORMATION);
              end;
            end;
          end;
        end
        else
          Application.MessageBox('Sem permissão para cancelar esse tipo de venda!', 'Atenção', MB_ICONWARNING);
      end;
    end;
    qrVendas.Refresh;
  end;
end;

procedure TfrmReimpressaoCupom.btImprimirClick(Sender: TObject);
var
 FGerarCFe : GerarCFe;
 finaliza_venda: Boolean;
begin
  inherited;
  if qrVendas.Active then
  begin
    if qrVendas.RecordCount>0 then
    begin
      if qrVendas.FieldByName('venda_cancelada').AsBoolean then
      begin
        application.MessageBox('Não é possível reimprimir este cupom pois a venda foi cancelada!', 'Atenção', MB_ICONINFORMATION)
      end
      else
      begin
         frmPDVFechamento := TfrmPDVFechamento.Create(self, qrVendas.FieldByName('id_venda').AsInteger);
         frmPDVFechamento.ReimpressaoCupom;
         FreeAndNil(frmPDVFechamento);
      end;
    end;
  end;
  Close;
end;

procedure TfrmReimpressaoCupom.btPesquisarClick(Sender: TObject);
var str_sql,  filtro_situacao, filtro_tipo  : string;
begin
  inherited;
  str_sql :=  ' select distinct v.ven_001 as id_venda, v.emp_001 as id_empresa , '+
              ' e.enc_002 as data_emissao,  e.enc_002 as hora_emissao, '+
              ' v.numero_cupom, v.ven_009 as valor, (v.sit_001=2) as venda_cancelada, '+
              ' cast(( case v.ven_024 when ''M''  then ''Mesa'' when ''B'' then ''Balcão'' when ''C'' then ''Comanda'' when ''D'' then ''Delivery'' when ''P'' then ''PDV''else ''Outro'' end) as varchar(20)) as tipo_venda, '+
              ' c.cli_002 as nome_cliente, '+
              ' v.Ven_038 as chave_acesso, '+
              ' v.Ven_034 as chave_cancelamento, '+
              ' v.ven_024, '+
              ' cx.id_situacao as situacao_caixa, '+
              ' v.tipofiscal, '+
              ' cast(case v.ven_024 when ''M'' then m.mes_002 when ''C'' then concat(''COMANDA '', v.ven_026 ) else '''' end as varchar(40)) as descricao_mesa_comanda ' +
              ' from venda v '+
              ' join caixaitem ci on v.ven_001 = ci.id_venda and v.emp_001=ci.id_empresa '+
              ' join caixa cx on cx.id_caixa=ci.id_caixa and cx.id_empresa=ci.id_empresa '+
              ' join encerravenda e on e.ven_001=v.ven_001 and e.emp_001=v.emp_001 '+
              ' left join  clientes c on c.cli_001 = v.cli_001 and c.emp_001=v.emp_001 '+
              ' left join mesa m on (m.emp_001 = v.emp_001) and (m.mes_001 = v.ven_025) '+
              ' where v.Ven_004 is not null  and v.tipofiscal is null'+
              ' and e.enc_002>=:data1 and e.enc_002<=:data2 and v.emp_001=:id_empresa ';


  case rgFiltroSituacao.ItemIndex of
    1 : filtro_situacao := ' and v.sit_001=1 '; // emitidas porem nao canceladas
    2 : filtro_situacao := ' and v.sit_001=2 ';                 // canceladas
    else filtro_situacao :='';
  end;

  case rgFiltrotipo.ItemIndex of
    1 : filtro_tipo := ' and v.Ven_024 = ''M'' ';
    2 : filtro_tipo := ' and v.Ven_024 = ''D'' ';
    3 : filtro_tipo := ' and v.Ven_024 = ''B'' ';
    4 : filtro_tipo := ' and v.Ven_024 = ''C'' ';
    5 : filtro_tipo := ' and v.Ven_024 = ''P'' ';
    else filtro_tipo :='';
  end;
  str_sql := str_sql + filtro_situacao  + filtro_tipo + ' order by v.ven_001 ' ;
  qrVendas.Close;
  qrVendas.SQL.Clear;
  qrVendas.SQL.add(str_sql);
  qrVendas.ParamByName('data1').AsDateTime := dtpDataInicial.Date;
  qrVendas.ParamByName('data2').AsDateTime := dtpDataFinal.Date+1;
  qrVendas.ParamByName('id_empresa').asinteger := recproj.iemp;
  qrVendas.Open;

end;

end.
