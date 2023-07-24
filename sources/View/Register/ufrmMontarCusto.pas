unit ufrmMontarCusto;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,

  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  Data.SqlExpr,
  Data.DB,

  ufrmModelodbEdit,
  udmPrincipal,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller,

  ufrmSearchModel,
  FireDAC.Comp.Client,

  Entidade.Recalcular.Custo,
  Entidade.Recalcular.Ficha.Tecnica,
  Entidade.Recalcular.Mao.Obra,
  Entidade.Replicar.Montar.Custo,
  ppParameter,
  ppDesignLayer,
  ppBands,
  ppClass,
  ppCtrls,
  ppVar,
  ppPrnabl,
  ppCache,
  ppProd,
  ppReport,
  ppComm,
  ppRelatv,
  ppDB,
  ppDBPipe,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet;

type
  TfrmMontarCusto = class(TfrmModelodbEdit)
    Label1: TLabel;
    lModel: TDBText;
    edtIdRegiao: TDBEdit;
    lIdMarkup: TLabel;
    lMarkupNome: TLabel;
    lCaptionNomeMarkup: TDBText;
    lSomaAliquota: TDBText;
    lIndiceaVista: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    Panel25: TPanel;
    Panel1: TPanel;
    dbgMontarCusto: TDBGrid;
    Panel23: TPanel;
    dbnTabelaPrecoPrazoMedio: TDBNavigator;
    btnBuscarTabelaPreco: TBitBtn;
    dbgListaTabelaPreco: TDBGrid;
    Panel3: TPanel;
    Panel11: TPanel;
    lCustoModeloDespesaFixa: TLabel;
    Panel12: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    DBText2: TDBText;
    Label3: TLabel;
    Panel5: TPanel;
    DBText4: TDBText;
    Label6: TLabel;
    Panel6: TPanel;
    DBText5: TDBText;
    Label7: TLabel;
    Panel7: TPanel;
    DBText6: TDBText;
    Label8: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    DBText3: TDBText;
    Panel8: TPanel;
    DBText7: TDBText;
    Label9: TLabel;
    Panel9: TPanel;
    lDespesaFixa: TLabel;
    lCaptionDespesaFixa: TLabel;
    Label10: TLabel;
    DBText8: TDBText;
    btnPrintTabelaPreco: TBitBtn;
    dbgTabelaPreco: TDBGrid;
    btnRecalcularCusto: TBitBtn;
    dsSomaMarkup: TDataSource;
    btnGerarCustoModelos: TBitBtn;
    Panel10: TPanel;
    cbTabelaSomenteaVista: TCheckBox;
    ppdbTabelaPrazoMedio: TppDBPipeline;
    pprTabelaPrazoMedio: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppShape13: TppShape;
    ppSystemVariable25: TppSystemVariable;
    pplListagemTabelaPrazoMedio: TppLabel;
    pplEmpresaListagemPrazoMedio: TppLabel;
    ppSystemVariable26: TppSystemVariable;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLabel133: TppLabel;
    ppLabel136: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText102: TppDBText;
    ppDBText104: TppDBText;
    ppLine55: TppLine;
    ppFooterBand13: TppFooterBand;
    ppLabel137: TppLabel;
    pplSiteListagemPrazoMedio: TppLabel;
    ppLine54: TppLine;
    ppLabel139: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel106: TppLabel;
    ppDBText100: TppDBText;
    ppLine56: TppLine;
    ppLabel135: TppLabel;
    ppDBText103: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText101: TppDBText;
    ppLabel108: TppLabel;
    ppLine57: TppLine;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDesignLayers13: TppDesignLayers;
    ppDesignLayer13: TppDesignLayer;
    ppParameterList13: TppParameterList;
    cbEntreDatas: TCheckBox;
    dbgMarkup: TDBGrid;
    dsMarkup: TDataSource;

    mtMarkup                        : TFDMemTable;
    mtMarkupidmontarcusto           : TIntegerField;
    mtMarkupNomeMarkup              : TStringField;
    mtMarkupvalorvendaavista        : TCurrencyField;
    mtMarkupvalorfichatecnica       : TCurrencyField;
    mtMarkupaliquota                : TCurrencyField;
    mtMarkupvalor                   : TCurrencyField;
    mtMarkupvalormarkupcomlucro     : TCurrencyField;
    mtMarkupvalorfichatecnicamarkup : TCurrencyField;

    Panel13: TPanel;
    dbValorVenda: TDBEdit;
    lValorVenda: TLabel;
    dbvalorfichatecnica: TDBEdit;
    lvalorfichatecnica: TLabel;
    Panel14: TPanel;
    Label11: TLabel;
    dbValorMarkupFichaTenica: TDBEdit;
    lMarkupSemLucro: TLabel;
    dbValorMarkupComLucro: TDBEdit;

    Panel15: TPanel;
    DataSource2: TDataSource;
    FDMemTable1: TFDMemTable;
    pprCustoAnalitico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    pplCustoModelo: TppLabel;
    pplEmpresa: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplDesenvolvidopor: TppLabel;
    pplSiteEmpresa: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppdbCustoAnalitico: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel54: TppLabel;
    ppdbIdMarkup: TppDBText;
    ppdbNomeMarkup: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppdbAliquota: TppDBText;
    ppdbValorMarkup: TppDBText;
    ppdbValorMarkupComLucro: TppDBText;
    ppdbValorFichaTecnica: TppDBText;
    ppdbValorFichaTecnicaComMarkup: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    Label13: TLabel;

    rbEscolhaTipoImpressao: TRadioGroup;
    ppLabel5: TppLabel;
    ppdbStatus: TppDBText;
    mtMarkupstatus: TIntegerField;
    ppdbMarkup: TppDBPipeline;
    mtMarkupvalormarkupsemlucro: TCurrencyField;
    ppdbValorMarkupSemLucro: TppDBText;
    ppLine14: TppLine;
    ppLine15: TppLine;

    procedure btnNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtDescriptionExit(Sender: TObject);
    procedure dbgListaTabelaPrecoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtIdRegiaoExit(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSalveClick(Sender: TObject);
    procedure btnBuscarTabelaPrecoClick(Sender: TObject);
    procedure edtDescriptionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescriptionKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdRegiaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPrintTabelaPrecoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbgTabelaPrecoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMontarCustoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnRecalcularCustoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbCloseClick(Sender: TObject);
    procedure btnGerarCustoModelosClick(Sender: TObject);
    procedure pprTabelaPrazoMedioBeforePrint(Sender: TObject);
    procedure cbEntreDatasClick(Sender: TObject);
    procedure dbgMarkupDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgSearchCellClick(Column: TColumn);
    procedure NavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure pprCustoAnaliticoBeforePrint(Sender: TObject);
  private
    FController: iController;


    FRecalcularMaoObra     : TRecalcularMaoObra;
    FRecalcularFichaTecnica: TRecalcularFichaTecnica;
    FRecalcularCusto       : TRecalcularCusto;
    FReplicarMontarCusto   : TReplicarMontarCusto;

    FDQuery : TFDQuery;
    procedure FecharQuery;
    procedure InserirMontarCusto;
    procedure InsertTabelaPreco(
      aAliquotaMarkup,
      aAliquotaFinanceiro,
      aIndiceMarkupaVista,
      aValorCusto,
      aValorVendaaVista: Currency;
      aIdMontarCusto,
      aIdModelo,
      aIdMarkup,
      aIdPagamento: String;
      aDataLancamento: TDateTime;
      aOperador: String);

    procedure DeleteTabelaPreco(aValue: String);

    procedure LimparTabelaPreco(aIdModelo, aIdMarkupNome: String);
    procedure LoopCusto;
    procedure LoopProducao;
    procedure LoopFichaTecnica;

    function BuscarCusto(): Boolean;
    function BuscarSeConstaCusto(aIdModelo, aIdMarkup: String): Boolean;
    function BuscaMarkup(aValue: String; aCustoFinal: Currency): Boolean;
    function BuscaQtdeProducao(aValue: String): Integer;
    function BuscarGenId(): Integer;
    function BuscarCustoFinanceiro(aValue: String): Boolean;
    function BuscarTabelaPreco(aIdModelo, aIdMarkupNome: String): Boolean;

    function CalculaCustoDespesaFixa(aValue: Currency; aQtdeProducao: Integer): Currency;
    function CalculaValorMaoObra(aValue: String; aStatus: Integer): Currency;
    function CalculaValorFrete(aValue: String): Currency;
    function SomarCustoTotalModelo(
      aCustoFixaTecnica,
      aCustoDespesaFixa,
      aCustoMaoObraAjustado,
      aCustoFrete: Currency): Currency;

    function ListaMontarCusto(aValue: String): Boolean;
    function ListaTabelaPrazoMedio(aValue: String): Boolean;

    procedure MontarCusto;
    procedure CalcularMarkupIndividual;
    procedure FormatarEdt;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMontarCusto: TfrmMontarCusto;

implementation

uses
  ufrmSearchMarkupNome,
  udmEntidade.Relatorios,
  ufrmAguarde;

{$R *.dfm}


procedure TfrmMontarCusto.InsertTabelaPreco(
  aAliquotaMarkup,
  aAliquotaFinanceiro,
  aIndiceMarkupaVista,
  aValorCusto,
  aValorVendaaVista: Currency;
  aIdMontarCusto,
  aIdModelo,
  aIdMarkup,
  aIdPagamento: String;
  aDataLancamento: TDateTime;
  aOperador: String);
const
  cInsert = (
    'insert into TabelaPreco ' +
    '( ' +
    'IdMontarCusto, ' +
    'IDMODELO, ' +
    'IDREGIAO, ' +
    'IDPAGAMENTO, ' +
    'ALIQUOTAMARKUP, ' +
    'ALIQUOTAFINANCEIRO, ' +
    'ALIQUOTAMARKUPSEMLUCRO, '+
    'INDICEMARKUPAVISTA,' +
    'INDICEMARKUPAPRAZO,' +
    'VALORCUSTO, ' +
    'VALORVENDAAVISTA, ' +
    'VALORVENDAPRAZOMEDIO, ' +
    'VALORCUSTOMARKUP, '+
    'VALORCUSTOCOMMARKUP, '+
    'VALORLUCROREAL, '+
    'DataLancamento, ' +
    'Operador, ' +
    'Status, ' +
    'Ativo ' +
    ') '
    );
var
  lInsert: String;
  lSomaMarkup, lSomaValor, lValorVendaaPrazo: Currency;
  qrInsert: TSQLQuery;
begin
  try
    lInsert := '';
    lSomaMarkup := 0;
    lSomaValor := 0;
    lValorVendaaPrazo := 0;

    lSomaMarkup := aAliquotaMarkup + aAliquotaFinanceiro;
    lSomaValor := 100 - lSomaMarkup;
    lSomaMarkup := 100 / lSomaValor;

    lValorVendaaPrazo := aValorCusto * lSomaMarkup;

    lInsert := cInsert +
      'values ' +
      '( ' +
      '' + aIdMontarCusto + ', ' + // igual ao IdMontarCusto
      '' + aIdModelo + ', ' +
      '' + aIdMarkup + ', ' + // igual id markup
      '' + aIdPagamento + ', ' + // igual id pagamento
      StringReplace(CurrToStr(aAliquotaMarkup), ',', '.', [RFReplaceAll]) + ',' + // Aliquota Markup
      StringReplace(CurrToStr(aAliquotaFinanceiro), ',', '.', [RFReplaceAll]) + ',' + // Aliquota Financeiro
      StringReplace(CurrToStr(0), ',', '.', [RFReplaceAll]) + ',' +//'ALIQUOTAMARKUPSEMLUCRO, '+
      StringReplace(CurrToStr(aIndiceMarkupaVista), ',', '.', [RFReplaceAll]) + ',' + // IndiceMarkupaVista vem pronta da view
      StringReplace(CurrToStr(lSomaMarkup), ',', '.', [RFReplaceAll]) + ',' + // IndiceMarkupaPrazo fazendo a conta acima
      StringReplace(CurrToStr(aValorCusto), ',', '.', [RFReplaceAll]) + ',' + // valor custo
      StringReplace(CurrToStr(aValorVendaaVista), ',', '.', [RFReplaceAll]) + ',' + // valor venda à vista vem pronto da view
      StringReplace(CurrToStr(lValorVendaaPrazo), ',', '.', [RFReplaceAll]) + ',' + // valor venda à prazo
      StringReplace(CurrToStr(0), ',', '.', [RFReplaceAll]) + ',' + //VALORCUSTOMARKUP
      StringReplace(CurrToStr(0), ',', '.', [RFReplaceAll]) + ',' + //VALORCUSTOCOMMARKUP
      StringReplace(CurrToStr(0), ',', '.', [RFReplaceAll]) + ',' + //VALORLUCROREAL
      '''' + FormatDateTime('dd.mm.yyyy', aDataLancamento) + ''',' +
      '''' + aOperador + ''',' +
      IntToStr(1) + ', ' + // Status
      IntToStr(1) + ' ' + // Ativo 0->Inativo  - 1 Ativo
      ') ';

    qrInsert := TSQLQuery.Create(Nil);
    qrInsert.SQLConnection := dmPrincipal.sqlConexao;
    qrInsert.SQL.Clear;
    qrInsert.SQL.Text := lInsert;
    qrInsert.ExecSQL;
  finally
    qrInsert.Active := False;
    FreeAndNil(qrInsert);
  end;
end;

procedure TfrmMontarCusto.LoopProducao;
begin
  if not dmPrincipal.cdsProducao.Active then
  begin
    dmPrincipal.sqlProducao.Active := False;
    dmPrincipal.sqlProducao.CommandText := ('select ' +
      'p.id, ' +
      'p.idmodelo, ' +
      'm.descricao, ' +
      'm.AliquotaInterna, ' +
      'm.AliquotaExterna, ' +
      'p.qtdeproducao, ' +
      'p.valorfrete, ' +
      'p.valormaoobra, ' +
      'p.ValorAjustado, ' +
      'p.valorcusto, ' +
      'p.datalancamento, ' +
      'p.operador, ' +
      'p.status, ' +
      'p.ativo ' +
      'from Producao p ' +
      'inner join Modelo m on m.id = p.idmodelo ' +
      'order by p.id asc, p.idmodelo asc ');
    dmPrincipal.cdsProducao.Active := False;
    dmPrincipal.cdsProducao.Active := True;
    dmPrincipal.cdsProducao.First;
    //dmPrincipal.cdsProducao.DisableControls;
    while not dmPrincipal.cdsProducao.Eof do
    begin
      dmPrincipal.queryAuxiliar.Active := False;
      dmPrincipal.queryAuxiliar.SQL.Clear;
      dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
        'pitem.Id, ' +
        'pitem.idproducao, ' +
        'pitem.qtdeproducao, ' +
        's.valorgasto, ' +
        's.aliquotafrete, ' +
        'sl.IdSetor, ' +
        'sl.IdLocal, ' +
        'sl.CalcularValorAjustado ' +
        'from ProducaoItem pitem ' +
        'inner join SetorLocal sl on sl.id = pitem.idsetorlocal ' +
        'inner join Setor       s on s.id  = sl.idsetor ' +
        'where pitem.IdProducao=' + dmPrincipal.cdsProducao.FieldByName('ID').AsString + '');
      dmPrincipal.queryAuxiliar.Active := True;

      dmPrincipal.queryAuxiliar.First;
      while not dmPrincipal.queryAuxiliar.Eof do
      begin
        FRecalcularMaoObra.FId            := dmPrincipal.queryAuxiliar.FieldByName('IdProducao').AsString;
        FRecalcularMaoObra.FValorGasto    := dmPrincipal.queryAuxiliar.FieldByName('ValorGasto').AsCurrency;
        FRecalcularMaoObra.FQtdeProducao  := dmPrincipal.queryAuxiliar.FieldByName('QtdeProducao').AsInteger;
        FRecalcularMaoObra.FAliquotaFrete := dmPrincipal.queryAuxiliar.FieldByName('AliquotaFrete').AsCurrency;
        FRecalcularMaoObra.FIdParametro   := dmPrincipal.queryAuxiliar.FieldByName('ID').AsString;
        FRecalcularMaoObra.FIdLocal       := dmPrincipal.queryAuxiliar.FieldByName('IdLocal').AsString;
        FRecalcularMaoObra.FIdModelo      := dmPrincipal.cdsProducao.FieldByName('IdModelo').AsString;
        FRecalcularMaoObra.FCalcularValorAjustado := dmPrincipal.queryAuxiliar.FieldByName('CalcularValorAjustado').AsInteger;

        if FRecalcularMaoObra.FAliquotaFrete > 0 then
          FRecalcularMaoObra.UpdateItemFreteMaoObra;

        FRecalcularMaoObra.UpdateItemValorMaoObra;

        dmPrincipal.queryAuxiliar.Next;
      end;

      dmPrincipal.cdsProducao.Next;
      FRecalcularMaoObra.UpdateCabecalhoMaoObra;
    end;
    //dmPrincipal.cdsProducao.First;
    //dmPrincipal.cdsProducao.EnableControls;
    dmPrincipal.cdsProducao.Active := False;
    dmPrincipal.cdsProducaoItem.Active := False;
  end;
end;


procedure TfrmMontarCusto.pprCustoAnaliticoBeforePrint(Sender: TObject);
begin
  if not dsMarkup.DataSet.IsEmpty then
  begin
    pplCustoModelo.Caption := 'Custo do Modelo';

    pplEmpresa.Caption := FController
      .EntidadesEmpresaLogada
      .DadosEmpresaLogada
      .NomeEmpresa;

    pplSiteEmpresa.Caption := FController
      .EntidadesRedeInfocon
      .DadosRedeInfocon
      .Site;
  end;
end;

procedure TfrmMontarCusto.pprTabelaPrazoMedioBeforePrint(Sender: TObject);
begin
  inherited;
  if not dmPrincipal.cdsListaTabelaPrazoMedio.IsEmpty then
  begin
    pplListagemTabelaPrazoMedio.Caption := 'Listagem Tabela Preço Prazo Médio';

    pplEmpresaListagemPrazoMedio.Caption := FController
      .EntidadesEmpresaLogada
      .DadosEmpresaLogada
      .NomeEmpresa;

    pplSiteListagemPrazoMedio.Caption := FController
      .EntidadesRedeInfocon
      .DadosRedeInfocon
      .Site;
  end;
end;

procedure TfrmMontarCusto.LoopCusto;
begin
  dmPrincipal.cdsMontarCusto.First;
  Try
    while not dmPrincipal.cdsMontarCusto.Eof do
    begin
      LoopProducao;
      LoopFichaTecnica;

      FRecalcularCusto.LoopCusto(dmPrincipal.cdsMontarCusto.FieldByName('ID').AsString);

      dmPrincipal.cdsMontarCusto.Next;
    end;

  finally
    ShowMessage('Custo atualizado com sucesso!');
    dmPrincipal.cdsMontarCusto.First;
    dmPrincipal.cdsProducao.Active := False;
    dmPrincipal.cdsFichaTecnica.Active := False;
    dmPrincipal.cdsProducaoItem.Active := False;
    dmPrincipal.cdsFichaTecnicaItem.Active := False;

    btnSearch.Click;
  End;
end;

procedure TfrmMontarCusto.LoopFichaTecnica;
begin
  if Not dmPrincipal.cdsFichaTecnica.Active then
  begin
    dmPrincipal.sqlFichaTecnica.Active := False;
    dmPrincipal.sqlFichaTecnica.CommandText := ('select ' +
      'ft.Id, ' +
      'ft.IdModelo, ' +
      'm.descricao, ' +
      'ft.ValorPerda, ' +
      'ft.ValorFinal, ' +
      'ft.QtdeProducao, ' +
      'ft.Operador, ' +
      'ft.DataLancamento, ' +
      'ft.Status, ' +
      'ft.Ativo ' +
      'from FichaTecnica ft ' +
      'inner join Modelo m on m.id = ft.idmodelo ' +
      'order by ft.Id asc, ft.idModelo asc ');
    dmPrincipal.cdsFichaTecnica.Active := False;
    dmPrincipal.cdsFichaTecnica.Active := True;
    dmPrincipal.cdsFichaTecnica.First;
    //dmPrincipal.cdsFichaTecnica.DisableControls;
    while not dmPrincipal.cdsFichaTecnica.Eof do
    begin
      FRecalcularFichaTecnica.PesquisaFichaTecnicaItem(dmPrincipal.cdsFichaTecnica.FieldByName('ID').AsString);
      FRecalcularFichaTecnica.SomaCabecalho(dmPrincipal.cdsFichaTecnica.FieldByName('ID').AsString);
      dmPrincipal.cdsFichaTecnica.Next;
    end;

    //dmPrincipal.cdsFichaTecnica.EnableControls;
    dmPrincipal.cdsFichaTecnica.Active := False;
    dmPrincipal.cdsFichaTecnicaItem.Active := False;
  end;
end;

procedure TfrmMontarCusto.btnSalveClick(Sender: TObject);
var
  Erros: Integer;
begin
  if frmMontarCusto.BuscarSeConstaCusto(dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString,
    dmPrincipal.cdsMontarCusto.FieldByName('IdRegiao').AsString) then
    raise Exception.Create('Atenção!!!' + edtOperator.Text + ' Já consta custo pronto com esta combinação, Id Modelo=' + edtDescription.Text +
      ' e Id Regiao=' + edtIdRegiao.Text + #13 +
      'Este custo pode ser alterado ou excluído e lançado novamente!');



  if trim(edtDescription.Text) = '' then
  begin
    edtDescription.SetFocus;
    raise Exception.Create('Campo Id Modelo não pode ser vazio');
  end;

  if trim(edtIdRegiao.Text) = '' then
  begin
    edtIdRegiao.SetFocus;
    raise Exception.Create('Campo Id Markup não pode ser vazio');
  end;

  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirmação', mb_Yesno) = IDYES then
  begin
    FReplicarMontarCusto.IdRegiao := StrToInt(edtIdRegiao.Text);
    FReplicarMontarCusto.VerificoseConstaCustoMarkup;


    if dmPrincipal.cdsMontarCusto.State in [DsInsert, DsEdit] then
      dmPrincipal.cdsMontarCusto.Post;

    dmPrincipal.sqlConexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsMontarCusto.ChangeCount > 0 then
      Erros := dmPrincipal.cdsMontarCusto.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlConexao.Commit(TD);

      if Application.MessageBox('Deseja replicar todas Markup/Regiões?', 'Confirmação', mb_Yesno) = IDYES then
      begin
        FReplicarMontarCusto.TabelaSomenteAVIsta:= cbTabelaSomenteaVista.Checked;
        FReplicarMontarCusto.IdRegiao := StrToInt(edtIdRegiao.Text);
        FReplicarMontarCusto.CalcularMarkup;
      end;

      if frmMontarCusto.BuscarCustoFinanceiro(IntToStr(frmMontarCusto.BuscarGenId())) then
      begin
        if frmMontarCusto.BuscarTabelaPreco(dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString,
          dmPrincipal.cdsMontarCusto.FieldByName('IdRegiao').AsString) then
        begin
          showMessage('Iremos limpar a tabela de preço e gerar outra, atualizada');
          frmMontarCusto.LimparTabelaPreco(dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString,
            dmPrincipal.cdsMontarCusto.FieldByName('IdRegiao').AsString);
        end
        else
        begin
          frmMontarCusto.BuscarCustoFinanceiro('');

          DataSource1.DataSet.First;
          while not DataSource1.DataSet.Eof do
          begin
            dmPrincipal.queryAuxiliar.First;
            while not dmPrincipal.queryAuxiliar.Eof do
            begin
              frmMontarCusto.InsertTabelaPreco(
                DataSource1.DataSet.FieldByName('AliquotaMarkup').AsCurrency, // aAliquotaMarkup,
                dmPrincipal.queryAuxiliar.FieldByName('JurosFinanceiro').AsCurrency, // aAliquotaFinanceiro,
                DataSource1.DataSet.FieldByName('indiceavistamultiplicar').AsCurrency, // aIndiceMarkupaVista,
                DataSource1.DataSet.FieldByName('CustoTotalModelo').AsCurrency, // aValorCusto,
                DataSource1.DataSet.FieldByName('Valorvendaavista').AsCurrency, // aValorVendaaVista,
                IntToStr(frmMontarCusto.BuscarGenId()), // aIdMontarCusto,
                DataSource1.DataSet.FieldByName('IdModelo').AsString, // aIdModelo,
                DataSource1.DataSet.FieldByName('IdRegiao').AsString, // aIdMarkup,
                dmPrincipal.queryAuxiliar.FieldByName('Id').AsString, // aIdPagamento: String;
                Now, // aDataLancamento: TDateTime;
                edtOperator.Text); // aOperador: String)

              dmPrincipal.queryAuxiliar.Next;
            end;

            DataSource1.DataSet.Next;
          end;
        end;
      end;

      showMessage('Parabéns... ' + edtOperator.Text + ' Registro salvo com sucesso!');
      FecharQuery;
    end
    else
    begin
      dmPrincipal.sqlConexao.Rollback(TD);
      showMessage('Atenção... ' + edtOperator.Text + ' Ocorreu algum erro, registro será cancelado!');
      dmPrincipal.FecharQuery;
    end;
    inherited;
    btnCancel.Click;
  end
  else
    Abort;
  inherited;
end;

procedure TfrmMontarCusto.btnSearchClick(Sender: TObject);
begin
  if not frmMontarCusto.BuscarCusto then
  begin
    pgMain.ActivePageIndex := 1;
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado)
  end
  else
   frmMontarCusto.CalcularMarkupIndividual;
  inherited;
end;

procedure TfrmMontarCusto.btnUpdateClick(Sender: TObject);
begin
  dmPrincipal.Alterar := True;
  dmPrincipal.cdsMontarCusto.Edit;
  inherited;
  pgMain.ActivePageIndex := 0;
  edtDescription.SetFocus;
end;

function TfrmMontarCusto.BuscaMarkup(aValue: String; aCustoFinal: Currency): Boolean;
var
  lSoma: Currency;
begin
  if edtIdRegiao.Text = '' then
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' Favor informar Id Região deste markup!');

  lSoma := 0;

  FController
    .Entidades
    .SomaAliquotaGrupo
    .DataSet(dmPrincipal.dsAuxiliar)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(0)
    .TextoFiltro(edtIdRegiao.Text)
    .Buscar(edtIdRegiao.Text);

  if not dmPrincipal.dsAuxiliar.DataSet.IsEmpty then
  begin
    Result := True;

    FReplicarMontarCusto.MarkupNome              := dmPrincipal.dsAuxiliar.DataSet.FieldByName('MarkupNome').AsString;
    FReplicarMontarCusto.AliquotaMarkup          := dmPrincipal.dsAuxiliar.DataSet.FieldByName('SomaAliquota').AsCurrency;
    FReplicarMontarCusto.IndiceaVistaMultiplicar := dmPrincipal.dsAuxiliar.DataSet.FieldByName('IndiceMultiplicacao').AsCurrency;
    FReplicarMontarCusto.IndiceaVistaDividir     := dmPrincipal.dsAuxiliar.DataSet.FieldByName('IndiceDivisao').AsCurrency;
    FReplicarMontarCusto.CustoFinal              := aCustoFinal;


    dmPrincipal.cdsMontarCusto.FieldByName('NomeRegiao').AsString                := dmPrincipal.dsAuxiliar.DataSet.FieldByName('MarkupNome').AsString;
    dmPrincipal.cdsMontarCusto.FieldByName('AliquotaMarkup').AsCurrency          := dmPrincipal.dsAuxiliar.DataSet.FieldByName('SomaAliquota').AsCurrency;
    dmPrincipal.cdsMontarCusto.FieldByName('IndiceaVistaMultiplicar').AsCurrency := dmPrincipal.dsAuxiliar.DataSet.FieldByName('IndiceMultiplicacao').AsCurrency;
    dmPrincipal.cdsMontarCusto.FieldByName('IndiceaVistaDividir').AsCurrency     := dmPrincipal.dsAuxiliar.DataSet.FieldByName('IndiceDivisao').AsCurrency;


    lSoma := aCustoFinal;
    lSoma := lSoma * dmPrincipal.cdsMontarCusto.FieldByName('IndiceaVistaMultiplicar').AsCurrency;

    dmPrincipal.cdsMontarCusto.FieldByName('ValorVendaaVista').AsCurrency := LSoma;
    //StrToFloat(FormatFloat('#,##0.00', lSoma));


    FController
            .FactoryEntidade
            .AliquotaMarkup
            .This
            .ValorVendaAvista(LSoma)
            .ValorMarkupComLucro(aCustoFinal)
            .&End
            .DataSet(DataSource2)
            .GetbyIdRegiao(StrToInt(edtIdRegiao.Text));


    dmPrincipal.cdsMontarCusto.FieldByName('ALIQUOTAMARKUPSEMLUCRO').AsCurrency  :=
      DataSource2.DataSet.FieldByName('ALIQUOTAMARKUPSEMLUCRO').AsCurrency;

    dmPrincipal.cdsMontarCusto.FieldByName('VALORCUSTOMARKUP').AsCurrency :=
      FController.FactoryEntidade.AliquotaMarkup.This.ValorMarkupComLucro;



    //FReplicarMontarCusto.ValorVendaaVista :=  lSoma;

    btnSalve.Enabled := True;
    btnSalve.SetFocus;
  end
  else
  begin
    Result := False;
    lCaptionNomeMarkup.Caption := '...';
    raise Exception.Create('Registro não encontrado!');
  end;
end;

function TfrmMontarCusto.BuscaQtdeProducao(aValue: String): Integer;
begin
  Result := 0;
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'p.QtdeProducao ' +
    'from producao p ' +
    'where p.idmodelo =  ' + aValue + ' ');
  dmPrincipal.queryAuxiliar.Active := True;
  Result := dmPrincipal.queryAuxiliar.FieldByName('QtdeProducao').AsInteger;
  dmPrincipal.queryAuxiliar.Active := False;
end;

function TfrmMontarCusto.BuscarCusto: Boolean;
var
  lSql, lWhere, lOrdem: String;
begin
  lSql := '';
  lWhere := '';
  lOrdem := '';

  lSql := ('select ' +
    'mc.ID, ' +
    'mc.IdModelo, ' +
    'm.Descricao, ' +
    'mc.IdRegiao, ' +
    'mn.Descricao NomeRegiao, ' +
    'mc.ValorDespesaFixa, ' +
    'mc.ValorFichaTecnica, ' +
    'mc.ValorMaoObraInterna, ' +
    'mc.ValorMaoObraExterna, ' +
    'mc.ValorMaoObraAjustado, ' +
    'mc.ValorFrete, ' +
    'mc.QtdeProducao, ' +
    'mc.CustoModeloDespesaFixa, ' +
    'mc.CustoTotalModelo, ' +
    'mc.AliquotaMarkup, ' +
    'mc.AliquotaMarkupSemLucro, '+
    'mc.ValorCustoMarkup, '+
    'mc.ValorCustoComMarkup, '+
    'mc.IndiceaVistaMultiplicar, ' +
    'mc.IndiceaVistaDividir, ' +
    'mc.ValorVendaaVista, ' +
    'mc.ValorLucroReal, '+
    'mc.DataLancamento, ' +
    'mc.Operador, ' +
    'mc.Status, ' +
    'mc.Ativo ' +
    'from MontarCusto mc ' +
    'inner join Modelo      m on m.id        = mc.idmodelo ' +
    'inner join MarkupNome mn on mn.idRegiao = mc.idregiao ');

  lWhere := ('where 1=1 ');

  if cbEntreDatas.Checked then
  lWhere := lWhere+ ('and mc.datalancamento between ''' + FormatDateTime('dd.mm.yyyy', StartDate.DateTime) + ''' ' +
    'and ''' + FormatDateTime('dd.mm.yyyy', EndDate.DateTime) + ''' ');

  if trim(edtSearch.Text) <> '' then
    case rgChoice.ItemIndex of
      0: lWhere := lWhere + ('and mc.Id=' + edtSearch.Text + '');
      1: lWhere := lWhere + ('and mc.IdModelo=' + edtSearch.Text + '');
      2: lWhere := lWhere + ('and mc.IdRegiao=' + edtSearch.Text + '');
      3: lWhere := lWhere + ('and m.Descricao CONTAINING ''' + edtSearch.Text + '''');
      4: lWhere := lWhere + ('and mn.Descricao CONTAINING ''' + edtSearch.Text + '''');
    end;

  lOrdem := ('order by mc.IdModelo asc, mc.IdRegiao asc ');

  dmPrincipal.sqlMontarCusto.Active := False;
  dmPrincipal.sqlMontarCusto.CommandText := lSql + lWhere + lOrdem;
  dmPrincipal.cdsMontarCusto.Active := False;
  dmPrincipal.cdsMontarCusto.Active := True;

  if not dmPrincipal.cdsMontarCusto.IsEmpty then
    Result := True
  else
    Result := False;
end;

function TfrmMontarCusto.BuscarCustoFinanceiro(aValue: String): Boolean;
const
  cSQL = (
    'select ' +
    'Id, ' +
    'IdAliquotaNome, ' +
    'AliquotaNome, ' +
    'Aliquota, ' +
    'IndiceFinanceiro, ' +
    'IdPagamento, ' +
    'PagamentoNome, ' +
    'PrazoMedio, ' +
    'cast(IndiceFinanceiro*PrazoMedio as numeric(10,2)) JurosFinanceiro, ' +
    'Operador, ' +
    'DataLancamento, ' +
    'Status, ' +
    'Ativo ' +
    'from ' +
    '( ' +
    'select ' +
    'cf.Id, ' +
    'cf.IdAliquotaNome, ' +
    'an.descricao AliquotaNome, ' +
    'an.aliquota, ' +
    'cast(an.Aliquota/30.01 as numeric(10,5)) IndiceFinanceiro, ' +
    'cf.idpagamento, ' +
    'pgto.descricao PagamentoNome, ' +
    'cast(pgto.TT_Dias/pgto.Qtde_Pgto as numeric(10,2)) PrazoMedio, ' +
    'cf.Operador, ' +
    'cf.DataLancamento, ' +
    'cf.Status, ' +
    'cf.Ativo ' +
    'from CustoFinanceiro cf ' +
    'inner join AliquotaNome an on an.id   = cf.IdaliquotaNome ' +
    'inner join cad_prazo  pgto on pgto.id = cf.IdPagamento ) '
    );
var
  lWhere, lOrdem: String;
begin
  lWhere := '';
  lOrdem := '';

  if aValue <> '' then
    lWhere := ('where Id=' + aValue + ' ');

  // lOrdem := ('order by m.descricao, cf.prazomedio asc ');

  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := (cSQL + lWhere + lOrdem);
  dmPrincipal.queryAuxiliar.Active := True;

  if not dmPrincipal.queryAuxiliar.IsEmpty then
    Result := False
  else
    Result := True;
end;

function TfrmMontarCusto.BuscarGenId(): Integer;
var
  qrBuscar: TSQLQuery;
begin
  qrBuscar := TSQLQuery.Create(Nil);
  try
    qrBuscar.Active := False;
    qrBuscar.SQLConnection := dmPrincipal.sqlConexao;
    qrBuscar.SQL.Clear;
    qrBuscar.SQL.Text := ('select gen_id(GEN_MONTARCUSTO_ID,0) from rdb$database ');
    qrBuscar.Active := True;
    Result := qrBuscar.FieldByName('gen_id').AsInteger;
  finally
    qrBuscar.Active := False;
    FreeAndNil(qrBuscar);
  end;
end;

function TfrmMontarCusto.BuscarSeConstaCusto(aIdModelo, aIdMarkup: String): Boolean;
begin
  Result := False;
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'mc.ID, ' +
    'mc.IdModelo, ' +
    'm.Descricao, ' +
    'mc.Idregiao, ' +
    'mn.Descricao MarkupNome, ' +
    'mc.ValorDespesaFixa, ' +
    'mc.ValorFichaTecnica, ' +
    'mc.ValorMaoObraInterna, ' +
    'mc.ValorMaoObraExterna, ' +
    'mc.ValorFrete, ' +
    'mc.QtdeProducao, ' +
    'mc.CustoModeloDespesaFixa, ' +
    'mc.CustoTotalModelo, ' +
    'mc.AliquotaMarkup, ' +
    'mc.IndiceaVistaMultiplicar, ' +
    'mc.IndiceaVistaDividir, ' +
    'mc.ValorVendaaVista, ' +
    'mc.DataLancamento, ' +
    'mc.Operador, ' +
    'mc.Status, ' +
    'mc.Ativo ' +
    'from MontarCusto mc ' +
    'inner join Modelo      m on m.id  = mc.idmodelo ' +
    'inner join MarkupNome mn on mn.id = mc.idregiao ' +
    'where mc.IdModelo=' + aIdModelo + ' ' +
    'and mc.Idregiao=' + aIdMarkup + ' ');
  dmPrincipal.queryAuxiliar.Active := True;

  if not dmPrincipal.queryAuxiliar.IsEmpty then
    Result := True
  else
    Result := False;
end;

function TfrmMontarCusto.BuscarTabelaPreco(aIdModelo, aIdMarkupNome: String): Boolean;
begin
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'tp.IdMontarCusto, ' +
    'tp.IdModelo ' +
    'from TabelaPreco tp ' +
    'where tp.IdMontarCusto=' + IntToStr(BuscarGenId()) + '' +
    'and tp.IdModelo=' + aIdModelo + '' +
    'and tp.IdRegiao=' + aIdMarkupNome + '');
  dmPrincipal.queryAuxiliar.Active := True;

  if dmPrincipal.queryAuxiliar.IsEmpty then
    Result := False
  else
    Result := True;
  dmPrincipal.queryAuxiliar.Active := False;
end;

function TfrmMontarCusto.CalculaCustoDespesaFixa(aValue: Currency; aQtdeProducao: Integer): Currency;
begin
  Result := 0;
  Result := StrToFloat(FormatFloat('0.00', aValue / aQtdeProducao));
end;

procedure TfrmMontarCusto.CalcularMarkupIndividual;
begin
  FController
           .FactoryEntidade
             .AliquotaMarkup
             .This
               .ValorVendaAvista(dmPrincipal.cdsMontarCusto.FieldByName('ValorVendaaVista').AsCurrency)
               .ValorFichaTecnica(dmPrincipal.cdsMontarCusto.FieldByName('ValorFichaTecnica').AsCurrency)
             .&End
             .GetbyId(dmPrincipal.cdsMontarCusto.FieldByName('id').AsInteger)
             .DataSet(dsMarkup);

  dmPrincipal.cdsMontarCusto.Edit;
  dmPrincipal.cdsMontarCusto.FieldByName('valorlucroreal').AsCurrency :=
            dsMarkup.DataSet.FieldByName('valorlucroreal').AsCurrency;
  if not dsMarkup.DataSet.IsEmpty then
    FormatarEdt;
end;

function TfrmMontarCusto.CalculaValorFrete(aValue: String): Currency;
begin
  Result := 0;
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'coalesce(cast(sum(pitem.valorFrete) as numeric(10,2)),0) ValorFrete ' +
    'from producaoitem pitem ' +
    'inner join Producao    p on p.id  = pitem.idproducao ' +
    'inner join SetorLocal sl on sl.id = pitem.idsetorlocal ' +
    'inner join Local       l on l.id  = sl.idlocal ' +
    'where p.idmodelo =  ' + aValue + ' ');
  dmPrincipal.queryAuxiliar.Active := True;
  Result := dmPrincipal.queryAuxiliar.FieldByName('ValorFrete').AsCurrency;
  dmPrincipal.queryAuxiliar.Active := False;
end;

function TfrmMontarCusto.CalculaValorMaoObra(aValue: String; aStatus: Integer): Currency;
begin
  Result := 0;
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'coalesce(cast(sum(pitem.valormaoobra) as numeric(10,2)),0) ValorMaoObra ' +
    'from producaoitem pitem ' +
    'inner join Producao    p on p.id  = pitem.idproducao ' +
    'inner join SetorLocal sl on sl.id = pitem.idsetorlocal ' +
    'inner join Local       l on l.id  = sl.idlocal ' +
    'where l.Status= ' + IntToStr(aStatus) + ' ' +
    'and p.idmodelo =  ' + aValue + ' ');
  dmPrincipal.queryAuxiliar.Active := True;
  Result := dmPrincipal.queryAuxiliar.FieldByName('ValorMaoObra').AsCurrency;
  dmPrincipal.queryAuxiliar.Active := False;
end;

procedure TfrmMontarCusto.cbEntreDatasClick(Sender: TObject);
begin
  if cbEntreDatas.Checked then
    gbBetweenDates.Visible := true else gbBetweenDates.Visible := False;
end;

procedure TfrmMontarCusto.dbgListaTabelaPrecoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMontarCusto.dbgMarkupDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);


  if dsMarkup.DataSet.FieldByName('status').AsInteger= 1 then
    TDBGrid(Sender).Canvas.Font.Color:=clBlue
        else TDBGrid(Sender).Canvas.Font.Color:=clBlack;
end;

procedure TfrmMontarCusto.dbgMontarCustoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TfrmMontarCusto.dbgSearchCellClick(Column: TColumn);
begin
  if not DataSource1.DataSet.IsEmpty then
    frmMontarCusto.CalcularMarkupIndividual;
end;

procedure TfrmMontarCusto.dbgTabelaPrecoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMontarCusto.DeleteTabelaPreco(aValue: String);
var
  qrDelete: TSQLQuery;
begin
  qrDelete := TSQLQuery.Create(nil);
  try
    qrDelete.SQLConnection := dmPrincipal.sqlConexao;
    qrDelete.Active := False;
    qrDelete.SQL.Clear;
    qrDelete.SQL.Text := ('delete from TabelaPreco ' +
      'where IdMontarCusto =' + aValue + ' ');
    if aValue <> '' then
      qrDelete.ExecSQL;
  finally
    qrDelete.Active := False;
    dmPrincipal.FecharQuery;
    FreeAndNil(qrDelete);
  end;
end;

procedure TfrmMontarCusto.edtDescriptionExit(Sender: TObject);
begin
  if edtDescription.Text = '' then
  begin
    edtDescription.SetFocus;
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' Favor informar Id Modelo!');
  end;

  MontarCusto;
end;

procedure TfrmMontarCusto.edtDescriptionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmSearchModel, frmSearchModel);
        frmSearchModel.lfrmExecutando.Caption := 'frmMontarCusto';
        frmSearchModel.ShowModal;
      end;
  end;
end;

procedure TfrmMontarCusto.edtDescriptionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmMontarCusto.edtIdRegiaoExit(Sender: TObject);
begin
  frmMontarCusto.BuscaMarkup(
                            dmPrincipal.cdsMontarCusto.FieldByName('IdRegiao').AsString,
                            dmPrincipal.cdsMontarCusto.FieldByName('CustoTotalModelo').AsCurrency);
end;

procedure TfrmMontarCusto.edtIdRegiaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmSearchMarkupNome, frmSearchMarkupNome);
        frmSearchMarkupNome.lfrmExecutando.Caption := 'frmMontarCusto';
        frmSearchMarkupNome.ShowModal;
      end;
  end;
end;

procedure TfrmMontarCusto.FecharQuery;
begin
  dmPrincipal.sqlProducao.Active := False;
  dmPrincipal.cdsProducao.Active := False;
  dmPrincipal.sqlProducaoItem.Active := False;
  dmPrincipal.cdsProducaoItem.Active := False;
  dmPrincipal.sqlSetorLocal.Active := False;
  dmPrincipal.sqlModelo.Active := False;
  dmPrincipal.cdsSetorLocal.Active := False;
  dmPrincipal.cdsModelo.Active := False;
end;

procedure TfrmMontarCusto.MontarCusto;
begin
  FController
    .Entidades
    .Model
    .DataSet(dmPrincipal.dsModelo)
    .Ativo(1)
    .EscolhaFiltro(0)
    .TextoFiltro(edtDescription.Text)
    .Buscar(edtDescription.Text);

  if dmPrincipal.dsModelo.DataSet.IsEmpty then
  begin
    edtDescription.SetFocus;
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' Registro não encontrado, Modelo não cadastrado!');
  end;

  FController
    .Entidades
    .SomaCustoModelo
    .DataSet(dmPrincipal.dsModelo)
    .Ativo(rgActive.ItemIndex)
    .TextoFiltro(edtDescription.Text)
    .Buscar(edtDescription.Text);

  if not dmPrincipal.dsModelo.DataSet.IsEmpty then
  begin
    FReplicarMontarCusto.IdModelo     := dmPrincipal.dsModelo.DataSet.FieldByName('IdModelo').AsInteger;
    FReplicarMontarCusto.Operador     := edtOperator.Text;
    FReplicarMontarCusto.ModeloNome   := dmPrincipal.dsModelo.DataSet.FieldByName('ModeloNome').AsString;
    FReplicarMontarCusto.QtdeProducao := frmMontarCusto.BuscaQtdeProducao(dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString);

    dmPrincipal.cdsMontarCusto.FieldByName('Descricao').AsString := dmPrincipal.dsModelo.DataSet.FieldByName('ModeloNome').AsString;

    dmPrincipal.cdsMontarCusto.FieldByName('QtdeProducao').AsInteger :=frmMontarCusto.BuscaQtdeProducao(dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString);

    FController
      .Entidades
      .SomaDespesaFixa
      .DataSet(dmPrincipal.dsAuxiliar)
      .Ativo(1)
      .Buscar('');

    FReplicarMontarCusto.ValorDespesaFixa       := dmPrincipal.dsAuxiliar.DataSet.FieldByName('SomaDespesaFixa').AsCurrency;
    FReplicarMontarCusto.ValorFichaTecnica      := dmPrincipal.dsModelo.DataSet.FieldByName('ValorFichaTecnica').AsCurrency;
    FReplicarMontarCusto.ValorMaoObraAjustado   := dmPrincipal.dsModelo.DataSet.FieldByName('ValorAjustado').AsCurrency;
    FReplicarMontarCusto.ValorFrete             := dmPrincipal.dsModelo.DataSet.FieldByName('ValorFrete').AsCurrency;


    dmPrincipal.cdsMontarCusto.FieldByName('ValorDespesaFixa').AsCurrency := dmPrincipal.dsAuxiliar.DataSet.FieldByName('SomaDespesaFixa').AsCurrency;

    dmPrincipal.cdsMontarCusto.FieldByName('ValorFichaTecnica').AsCurrency := dmPrincipal.dsModelo.DataSet.FieldByName('ValorFichaTecnica').AsCurrency;

    dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraAjustado').AsCurrency := dmPrincipal.dsModelo.DataSet.FieldByName('ValorAjustado').AsCurrency;

    dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraInterna').AsCurrency := frmMontarCusto.CalculaValorMaoObra(
                                                                                dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString, 0
                                                                                                                  );

    dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraExterna').AsCurrency := frmMontarCusto.CalculaValorMaoObra(
                                                                                dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString, 1
                                                                                                                  );

    dmPrincipal.cdsMontarCusto.FieldByName('ValorFrete').AsCurrency := dmPrincipal.dsModelo.DataSet.FieldByName('ValorFrete').AsCurrency;

    dmPrincipal.cdsMontarCusto.FieldByName('CustoModeloDespesaFixa').AsCurrency := frmMontarCusto.CalculaCustoDespesaFixa(
                                                                                   dmPrincipal.dsAuxiliar.DataSet.FieldByName('SomaDespesaFixa').AsCurrency,
                                                                                   dmPrincipal.cdsMontarCusto.FieldByName('QtdeProducao').AsInteger
                                                                                                                         );

    dmPrincipal.cdsMontarCusto.FieldByName('CustoTotalModelo').AsCurrency :=
      frmMontarCusto.SomarCustoTotalModelo(
      dmPrincipal.cdsMontarCusto.FieldByName('ValorFichaTecnica').AsCurrency,
      dmPrincipal.cdsMontarCusto.FieldByName('CustoModeloDespesaFixa').AsCurrency,
      dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraAjustado').AsCurrency,
      dmPrincipal.cdsMontarCusto.FieldByName('ValorFrete').AsCurrency);

   FReplicarMontarCusto.ValorMaoObraInterna    := dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraInterna').AsCurrency;
   FReplicarMontarCusto.ValorMaoObraExterna    := dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraExterna').AsCurrency;
   FReplicarMontarCusto.CustoModeloDespesaFixa := dmPrincipal.cdsMontarCusto.FieldByName('CustoModeloDespesaFixa').AsCurrency;
   FReplicarMontarCusto.CustoTotalModelo       := dmPrincipal.cdsMontarCusto.FieldByName('CustoTotalModelo').AsCurrency;

  end
  else
  begin
    lModel.Caption := '...';
    // lCaptioCustoModeloDespesaFixa.Caption := '...';
    // lCaptionCustoModeloMateriaPrima.Caption := '...';
    // lCaptionCustoModeloDespesaFixaMateriaPrima.Caption := '...';
    edtDescription.SetFocus;
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' Registro não encontrado, Modelo não contém ficha técnica!');
  end;
end;

procedure TfrmMontarCusto.NavigatorClick(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  if not DataSource1.DataSet.IsEmpty then
    frmMontarCusto.CalcularMarkupIndividual;
end;

procedure TfrmMontarCusto.bbCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMontarCusto.btnBuscarTabelaPrecoClick(Sender: TObject);
begin
  if not dmPrincipal.cdsMontarCusto.IsEmpty then
  begin
    if edtSearch.Text <> '' then
      frmMontarCusto.ListaTabelaPrazoMedio(dmPrincipal.cdsMontarCusto.FieldByName('id').AsString)
    else
      frmMontarCusto.ListaTabelaPrazoMedio(dbgMontarCusto.Fields[0].AsString);
  end
  else
  begin
    dmPrincipal.FecharQuery;
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado);
  end;
end;

procedure TfrmMontarCusto.btnCancelClick(Sender: TObject);
begin
  if dmPrincipal.cdsMontarCusto.State in [DsInsert, DsEdit] then
    dmPrincipal.cdsMontarCusto.Cancel;

  if dmPrincipal.cdsMontarCusto.ChangeCount > 0 then
    dmPrincipal.cdsMontarCusto.CancelUpdates;

  if dmPrincipal.sqlConexao.InTransaction then
    dmPrincipal.sqlConexao.Rollback(TD);

  dmPrincipal.sqlMontarCusto.Active := False;
  dmPrincipal.cdsMontarCusto.Active := False;
  DataSource1.DataSet.Active := False;
  dsMarkup.DataSet.Active := False;

  dmPrincipal.sqlModelo.Active := False;
  dmPrincipal.cdsModelo.Active := False;

  dmPrincipal.sqlSetorLocal.Active := False;
  dmPrincipal.cdsSetorLocal.Active := False;
  dmPrincipal.cdsListaTabelaPrazoMedio.Active := False;
  dmPrincipal.cdsListaTabelaPrazoMedio.Active := False;

  inherited;
end;

procedure TfrmMontarCusto.btnDeleteClick(Sender: TObject);
var
  Erros: Integer;
begin
  if MessageBox(handle, 'Deseja excluir este registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    dmPrincipal.cdsMontarCusto.Delete;

    if not dmPrincipal.sqlConexao.InTransaction then
      dmPrincipal.sqlConexao.StartTransaction(TD);

    Erros := dmPrincipal.cdsMontarCusto.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlConexao.Commit(TD);
      frmMontarCusto.DeleteTabelaPreco(dmPrincipal.cdsMontarCusto.FieldByName('Id').AsString);
      btnCancel.Click;
      showMessage('Parabéns ' + edtOperator.Text + ' Registro excluído com sucesso!');
    end
    else
    begin
      dmPrincipal.sqlConexao.Rollback(TD);
      showMessage('Atenção ' + edtOperator.Text + ' Registro não pode ser excluído!');
      Abort;
    end;
  end;
end;

procedure TfrmMontarCusto.btnGerarCustoModelosClick(Sender: TObject);
begin
  btnGerarCustoModelos.Enabled := False;
  if Application.MessageBox('Deseja que o sistema gere custo de todos os modelos com ficha técnica?', 'Confirmação', mb_Yesno) = IDYES then
  begin
    FReplicarMontarCusto.TabelaSomenteAVIsta:= cbTabelaSomenteaVista.Checked;
    if Application.MessageBox('Deseja que o sistema exclua todos os custos gerados e gere novamente?', 'Confirmação', mb_Yesno) = IDYES then
      FReplicarMontarCusto.ExcluirTodososCustos
      else
      raise Exception.Create('Operador do sistema optou para não excluir todos os custos gerados e gerar novamente!');

    frmAguarde := TfrmAguarde.Create(Application);
    frmAguarde.lTextoAguarde.Caption := 'Aguarde... gerando custo!';
    try
      frmAguarde.Show;
      FReplicarMontarCusto.Operador := FController
                                     .EntidadesEmpresaLogada
                                     .DadosEmpresaLogada
                                     .Operador;
      FReplicarMontarCusto.BuscarModelos;
    finally
      ShowMessage('Todos os modelos com ficha técnica e produção criados foram gerados o custo com sucesso!');
      btnGerarCustoModelos.Enabled := True;
      frmAguarde.Release;
      frmAguarde := nil;
      btnSearch.Click;
    end;
  end;
end;

procedure TfrmMontarCusto.btnImprimirClick(Sender: TObject);
begin
  if not dmPrincipal.cdsMontarCusto.IsEmpty then
  begin
    if edtSearch.Text <> '' then
      frmMontarCusto.ListaMontarCusto(dmPrincipal.cdsMontarCusto.FieldByName('id').AsString)
    else
      frmMontarCusto.ListaMontarCusto('');

    ppdbCustoAnalitico.DataSource := DataSource1;
    case rbEscolhaTipoImpressao.ItemIndex of
      0 : dmEntidadeRelatorios.pprListaMontarCusto.Print;
      1 : pprCustoAnalitico.Print;
    end;
  end
  else
    raise Exception.Create(dmPrincipal.cMSGImpressao);
end;

procedure TfrmMontarCusto.btnNewClick(Sender: TObject);
begin
  dmPrincipal.Alterar := False;
  InserirMontarCusto;
  inherited;
end;

procedure TfrmMontarCusto.btnPrintTabelaPrecoClick(Sender: TObject);
begin
  if not dmPrincipal.cdsMontarCusto.IsEmpty then
  begin
    if edtSearch.Text <> '' then
    begin
      FReplicarMontarCusto.TipoFiltro:= rgChoice.ItemIndex;
      FReplicarMontarCusto.IdModelo := dmPrincipal.cdsMontarCusto.FieldByName('idModelo').AsInteger;
      FReplicarMontarCusto.ListaTabelaPrazoMedio;
    end
    else
      FReplicarMontarCusto.ListaTabelaPrazoMedio;
    pprTabelaPrazoMedio.Print;
  end
  else
    raise Exception.Create(dmPrincipal.cMSGImpressao);
end;

procedure TfrmMontarCusto.btnRecalcularCustoClick(Sender: TObject);
begin
  if not dmPrincipal.cdsMontarCusto.IsEmpty then
  begin
    btnRecalcularCusto.Enabled := False;
    frmAguarde := TfrmAguarde.Create(Application);
    frmAguarde.lTextoAguarde.Caption := 'Aguarde... atualizando custo!';
    try
      frmAguarde.Show;
      frmMontarCusto.LoopCusto;
    finally
      btnRecalcularCusto.Enabled := True;
      frmAguarde.Release;
      frmAguarde := nil;
    end;
  end
  else
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado);
end;

procedure TfrmMontarCusto.FormatarEdt;
begin
  TFloatField(dsMarkup.DataSet.FieldByName('valorvendaavista')).DisplayFormat := '###,##0.000';
  TFloatField(dsMarkup.DataSet.FieldByName('valorfichatecnica')).DisplayFormat := '###,##0.000';
  TFloatField(dsMarkup.DataSet.FieldByName('valormarkupcomlucro')).DisplayFormat := '###,##0.000';
  TFloatField(dsMarkup.DataSet.FieldByName('valormarkupsemlucro')).DisplayFormat := '###,##0.000';
  TFloatField(dsMarkup.DataSet.FieldByName('valorfichatecnicamarkup')).DisplayFormat := '###,##0.000';
  TFloatField(dsMarkup.DataSet.FieldByName('aliquota')).DisplayFormat := '0.00%';
  TFloatField(dsMarkup.DataSet.FieldByName('valor')).DisplayFormat := '###,##0.000';
end;

procedure TfrmMontarCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FRecalcularMaoObra);
  FreeAndNil(FRecalcularFichaTecnica);
  FreeAndNil(FRecalcularCusto);

  dmPrincipal.FecharQuery;
  inherited;
  frmMontarCusto := nil;
  Action := caFree;
end;

procedure TfrmMontarCusto.FormCreate(Sender: TObject);
begin
  FController             := TController.New;
  FDQuery                 := TFDQuery.Create(nil);
  FDQuery.Connection      := dmPrincipal.FDConexao;

  FRecalcularMaoObra      := TRecalcularMaoObra.Create;
  FRecalcularFichaTecnica := TRecalcularFichaTecnica.Create;
  FRecalcularCusto        := TRecalcularCusto.Create;
  FReplicarMontarCusto    := TReplicarMontarCusto.Create;

  inherited;
  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmMontarCusto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FDQuery);
  FreeAndNil(FRecalcularMaoObra);
  FreeAndNil(FRecalcularFichaTecnica);
  FreeAndNil(FRecalcularCusto);
  FreeAndNil(FReplicarMontarCusto);
  inherited;
end;

procedure TfrmMontarCusto.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Montar Custo';

  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := (
    'select ' +
    'coalesce(cast(sum(df.valor) as numeric(10,2)),0) SomaDespesaFixa ' +
    'from  despesafixa df '
    );
  dmPrincipal.queryAuxiliar.Active := True;

  lCaptionDespesaFixa.Caption := FormatFloat('#,##0.00', dmPrincipal.queryAuxiliar.FieldByName('SomaDespesaFixa').AsCurrency);
  dmPrincipal.queryAuxiliar.Active := False;
end;

procedure TfrmMontarCusto.InserirMontarCusto;
begin
  dmPrincipal.sqlMontarCusto.Active := False;
  dmPrincipal.sqlMontarCusto.CommandText := ('select ' +
    'mc.ID, ' +
    'mc.IdModelo, ' +
    'm.Descricao, ' +
    'mc.IdRegiao, ' +
    'mn.Descricao NomeRegiao, ' +
    'mc.ValorDespesaFixa, ' +
    'mc.ValorFichaTecnica, ' +
    'mc.ValorMaoObraInterna, ' +
    'mc.ValorMaoObraExterna, ' +
    'mc.ValorMaoObraAjustado, ' +
    'mc.ValorFrete, ' +
    'mc.QtdeProducao, ' +
    'mc.CustoModeloDespesaFixa, ' +
    'mc.VALORCUSTOMARKUP, '+
    'mc.ValorCustoComMarkup, '+
    'mc.CustoTotalModelo, ' +
    'mc.AliquotaMarkup, ' +
    'mc.ALIQUOTAMARKUPSEMLUCRO, '+
    'mc.IndiceaVistaMultiplicar, ' +
    'mc.IndiceaVistaDividir, ' +
    'mc.ValorVendaaVista, ' +
    'mc.ValorLucroReal, '+
    'mc.DataLancamento, ' +
    'mc.Operador, ' +
    'mc.Status, ' +
    'mc.Ativo ' +
    'from MontarCusto mc ' +
    'inner join Modelo      m on m.id  = mc.idmodelo ' +
    'inner join MarkupNome mn on mn.id = mc.idregiao ' +
    'where mc.id=:Id ');
  dmPrincipal.sqlMontarCusto.Params.ParamByName('ID').DataType := ftInteger;
  dmPrincipal.sqlMontarCusto.Params.ParamValues['ID'] := 0;

  dmPrincipal.cdsMontarCusto.Active := True;
  dmPrincipal.cdsMontarCusto.Append;

  dmPrincipal.cdsMontarCusto.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsMontarCusto.FieldByName('DataLancamento').AsDateTime := Now;

  dmPrincipal.cdsMontarCusto.FieldByName('ValorFrete').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ValorDespesaFixa').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ValorFichaTecnica').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraInterna').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ValorMaoObraExterna').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ValorFrete').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('QtdeProducao').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('CustoModeloDespesaFixa').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('CustoTotalModelo').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('AliquotaMarkup').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('IndiceAVistaMultiplicar').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('IndiceAVistaDividir').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ValorVendaaVista').AsCurrency := 0;
  dmPrincipal.cdsMontarCusto.FieldByName('ALIQUOTAMARKUPSEMLUCRO').AsCurrency:=0;
  dmPrincipal.cdsMontarCusto.FieldByName('VALORCUSTOMARKUP').AsCurrency:=0;
  dmPrincipal.cdsMontarCusto.FieldByName('VALORCUSTOCOMMARKUP').AsCurrency:=0;
  dmPrincipal.cdsMontarCusto.FieldByName('VALORLUCROREAL').AsCurrency:=0;
  dmPrincipal.cdsMontarCusto.FieldByName('Status').AsInteger := 1;
  dmPrincipal.cdsMontarCusto.FieldByName('Ativo').AsInteger := 1;
end;

procedure TfrmMontarCusto.LimparTabelaPreco(aIdModelo, aIdMarkupNome: String);
begin
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('delete from TabelaPreco tp ' +
    'where tp.IdMontarCusto=' + IntToStr(BuscarGenId()) + ' ' +
    'and tp.IdModelo=' + dmPrincipal.cdsMontarCusto.FieldByName('IdModelo').AsString + ' ' +
    'and tp.IdMarkupNome=' + dmPrincipal.cdsMontarCusto.FieldByName('IdMarkupNome').AsString + ' ');
  dmPrincipal.queryAuxiliar.ExecSQL;
  dmPrincipal.queryAuxiliar.Active := False;
end;

function TfrmMontarCusto.ListaMontarCusto(aValue: String): Boolean;
var
  lSql, lWhere, lOrdem: String;
begin
  lSql := '';
  lWhere := '';
  lOrdem := '';

  lSql := ('select ' +
    'mt.id, ' +
    'mt.idmodelo, ' +
    'm.descricao Modelo, ' +
    'mt.idregiao, ' +
    'mn.descricao MarkupNome, ' +
    'mt.valordespesafixa, ' +
    'mt.valorfichatecnica, ' +
    'mt.valormaoobrainterna, ' +
    'mt.valormaoobraexterna, ' +
    'mt.valormaoobraajustado, ' +
    'mt.valorfrete, ' +
    'mt.qtdeproducao, ' +
    'mt.customodelodespesafixa, ' +
    'mt.custototalmodelo, ' +
    'mt.aliquotamarkup, ' +
    'mt.indiceavistamultiplicar, ' +
    'mt.indiceavistadividir, ' +
    'mt.valorvendaavista, ' +
    'mt.datalancamento, ' +
    'mt.operador ' +

    'from MontarCusto mt ' +
    'inner join Modelo      m on m.id  = mt.idmodelo ' +
    'inner join MarkupNome mn on mn.id = mt.idregiao ');

  if aValue <> '' then
    lWhere := ('where mt.id= ' + aValue + ' ');

  lOrdem := ('Order by mn.Descricao ');

  dmPrincipal.sqlListaMontarCusto.Active := False;
  dmPrincipal.sqlListaMontarCusto.CommandText := lSql + lWhere + lOrdem;
  dmPrincipal.cdsListaMontarCusto.Active := False;
  dmPrincipal.cdsListaMontarCusto.Active := True;

  if dmPrincipal.cdsListaMontarCusto.IsEmpty then
    Result := False
  else
    Result := True;
end;

function TfrmMontarCusto.ListaTabelaPrazoMedio(aValue: String): Boolean;
var
  lSql, lWhere, lOrdem: String;
begin
  lSql := '';
  lWhere := '';
  lOrdem := '';

  lSql := ('select ' +
    'distinct ' +
    'tp.IdMontarCusto, ' +
    'm.descricao Modelo, ' +
    'mn.descricao Markup, ' +
    'tp.valorvendaavista, ' +
    'cf.prazomedio, ' +
    'tp.valorvendaprazomedio ' +
    'from tabelapreco tp ' +
    'inner join Modelo           m on m.id  = tp.idmodelo ' +
    'inner join MarkupNome      mn on mn.id = tp.idregiao ' +
    'inner join custofinanceiro cf on cf.id = tp.idpagamento ');

  if aValue <> '' then
    lWhere := ('where tp.IdMontarCusto=' + aValue + ' ');

  lOrdem := ('order by m.descricao, mn.descricao, cf.prazomedio asc ');

  dmPrincipal.sqlListaTabelaPrazoMedio.Active := False;
  dmPrincipal.sqlListaTabelaPrazoMedio.CommandText := lSql + lWhere + lOrdem;
  dmPrincipal.cdsListaTabelaPrazoMedio.Active := False;
  dmPrincipal.cdsListaTabelaPrazoMedio.Active := True;

  if dmPrincipal.cdsListaTabelaPrazoMedio.IsEmpty then
    Result := False
  else
    Result := True;
end;

function TfrmMontarCusto.SomarCustoTotalModelo(
  aCustoFixaTecnica,
  aCustoDespesaFixa,
  aCustoMaoObraAjustado,
  aCustoFrete: Currency): Currency;
begin
  Result := 0;
  Result := aCustoFixaTecnica + aCustoDespesaFixa + aCustoMaoObraAjustado + aCustoFrete;
end;

end.
