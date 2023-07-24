unit ufrmMargemLucroPedido;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.DBCtrls,

  Model.Entidade.Lucro.Pedido,
  Model.Entidade.Config, Supremo.Entidade.Relatorio.Lucro.Pedido, ppDB,
  ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  Whorkshop.Controller.Interfaces, Whorkshop.Controller;

type
  TfrmMargemLucroPedido = class(TForm)
    pTop: TPanel;
    lMargemLucro: TLabel;
    pCabecalho: TPanel;
    dbgCabecalho: TDBGrid;
    pItens: TPanel;
    pButton: TPanel;
    pBotoes: TPanel;
    btnPesquisar: TBitBtn;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    pFiltro: TPanel;
    DataSource1: TDataSource;
    lIdEmpresa: TLabel;
    dbgItens: TDBGrid;
    Panel2: TPanel;
    gbPeriodoEntreDatas: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DataInicio: TDateTimePicker;
    DataFim: TDateTimePicker;
    cbFiltrarPeriodo: TCheckBox;
    rgEscolhaFiltro: TRadioGroup;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    edtPesquisar: TEdit;
    rgTipoRelatorio: TRadioGroup;
    pprSintetico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel52: TppLabel;
    ppLine20: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplDesenvolvidopor: TppLabel;
    pplSiteEmpresa: TppLabel;
    ppLine2: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppdbRelatorio: TppDBPipeline;
    dsRelatorio: TDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    pplinicio: TppLabel;
    ppla: TppLabel;
    pplFim: TppLabel;
    pprProduto: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    pplNomeEmpresaProduto: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel51: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine6: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine7: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel3: TppLabel;
    pprRegiao: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape3: TppShape;
    ppSystemVariable5: TppSystemVariable;
    ppLabel13: TppLabel;
    pplNomeEmpresaRegiao: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine8: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine9: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    pplDataInicioRegiao: TppLabel;
    ppLabel27: TppLabel;
    pplDataFimRegiao: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine10: TppLine;
    ppFooterBand3: TppFooterBand;
    ppLabel29: TppLabel;
    pplSiteRegiao: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine11: TppLine;
    ppLabel31: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppdbNomeRegiao: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppLine12: TppLine;
    ppLabel26: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLine13: TppLine;
    ppDBText33: TppDBText;
    cbFiltroVirgula: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Label4Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbgCabecalhoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
    procedure pprSinteticoBeforePrint(Sender: TObject);
    procedure pprProdutoBeforePrint(Sender: TObject);
    procedure pprRegiaoBeforePrint(Sender: TObject);
  private
    FShow : Boolean;
    FLucroPedido : TLucroPedido;
    FEntidadeConfig : TEntidadeConfig;
    FRelatorioLucroPedido : TRelatorioLucroPedido;
    FDia: string;
    FController: iController;

    function ChamarLucroPedido(aValue : String) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMargemLucroPedido: TfrmMargemLucroPedido;

implementation

uses
  Winapi.UrlMon, udmPrincipal, udmEntidade.Relatorios;

{$R *.dfm}

procedure TfrmMargemLucroPedido.btnImprimirClick(Sender: TObject);
begin
  btnPesquisar.Click;
  if not dmPrincipal.FDQueryLucroPedido.IsEmpty then
  begin
    dsRelatorio.DataSet                    := FRelatorioLucroPedido.FDQuery;
    FRelatorioLucroPedido.DataInicial      := DataInicio.DateTime;
    FRelatorioLucroPedido.DataFinal        := DataFim.DateTime;
    FRelatorioLucroPedido.TipoRelatorio    := rgTipoRelatorio.ItemIndex;
    FRelatorioLucroPedido.TipoFiltro       := rgEscolhaFiltro.ItemIndex;
    FRelatorioLucroPedido.TextoFiltro      := edtPesquisar.Text;
    FRelatorioLucroPedido.FiltroComVirgula := cbFiltroVirgula.Checked;
    dmEntidadeRelatorios.FiltraEmpresa(lIdEmpresa.Caption);
    case rgTipoRelatorio.ItemIndex of
      0: dmEntidadeRelatorios.ppRLucroPedido.Print;
      1: if FRelatorioLucroPedido.RelatorioSintetico then pprSintetico.Print;
      2: if FRelatorioLucroPedido.RelatorioProduto then pprProduto.Print;
      3: if FRelatorioLucroPedido.RelatorioRegiao then pprRegiao.Print;
      4: if FRelatorioLucroPedido.RelatorioRepresentante then dmEntidadeRelatorios.ppRLucroPedido.Print;
    end;
  end
  else
    raise Exception.Create('Registro n�o encontrado para impress�o!');
end;

procedure TfrmMargemLucroPedido.btnPesquisarClick(Sender: TObject);
begin
  frmMargemLucroPedido.ChamarLucroPedido(edtPesquisar.Text);
end;

procedure TfrmMargemLucroPedido.btnSairClick(Sender: TObject);
begin
  Close;
end;

function TfrmMargemLucroPedido.ChamarLucroPedido(aValue: String): Boolean;
begin
  FLucroPedido.TipoFiltro := rgEscolhaFiltro.ItemIndex;
  FLucroPedido.DataInicio := DataInicio.DateTime;
  FLucroPedido.DataFim    := DataFim.DateTime;
  if cbFiltrarPeriodo.Checked then
    FLucroPedido.FiltrarComPeriodo := True
    else
    FLucroPedido.FiltrarComPeriodo := False;

  if FLucroPedido.BuscarLucroPedido(aValue) then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
    if not FShow  then
    raise Exception.Create('Registro n�o encontrado!');
  end;
  FShow := False;
end;

procedure TfrmMargemLucroPedido.dbgCabecalhoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clWhite;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  If dmPrincipal.FDQueryLucroPedido.FieldByName('DiferencaPedido').AsCurrency <0 then
  begin
    (Sender as TDBGrid).Canvas.Font.Color:= clred;
    (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmMargemLucroPedido.dbgItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clWhite;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMargemLucroPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMargemLucroPedido := nil;
  Action := caFree;
end;

procedure TfrmMargemLucroPedido.FormCreate(Sender: TObject);
begin
  FShow := True;
  FLucroPedido          := TLucroPedido.Create;
  FEntidadeConfig       := TEntidadeConfig.Create;
  FRelatorioLucroPedido := TRelatorioLucroPedido.Create;
  FController           := TController.New;
end;

procedure TfrmMargemLucroPedido.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FLucroPedido);
  FreeAndNil(FEntidadeConfig);
  FreeAndNil(FRelatorioLucroPedido);
end;

procedure TfrmMargemLucroPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(CM_Dialogkey, VK_TAB, 0);
  end;
end;

procedure TfrmMargemLucroPedido.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      Close;
  end;
end;

procedure TfrmMargemLucroPedido.FormShow(Sender: TObject);
begin
  FDia := '01/' + FormatDateTime('MM', Now) + '/' + FormatDateTime('YYYY', Now);
  DataInicio.DateTime := StrToDate(FDia);
  DataFim.DateTime := Now;

  FEntidadeConfig.IniPegarUltimoIdPedido;
  edtPesquisar.Text := IntToStr(FEntidadeConfig.IdPedidoLucro);

  btnPesquisar.Click;
end;

procedure TfrmMargemLucroPedido.Label4Click(Sender: TObject);
begin
  HlinkNavigateString(nil, 'http://bemoreweb.com.br/');
end;

procedure TfrmMargemLucroPedido.pprProdutoBeforePrint(Sender: TObject);
begin
  ppLabel15.Caption := FormatDateTime('dd.mm.yyyy',DataInicio.DateTime);
  ppLabel17.Caption := FormatDateTime('dd.mm.yyyy',DataFim.DateTime);

  pplNomeEmpresaProduto.Caption := FController
      .EntidadesEmpresaLogada
      .DadosEmpresaLogada
      .NomeEmpresa;

    ppLabel12.Caption := FController
      .EntidadesRedeInfocon
      .DadosRedeInfocon
      .Site;
end;

procedure TfrmMargemLucroPedido.pprRegiaoBeforePrint(Sender: TObject);
begin
  pplDataInicioRegiao.Caption := FormatDateTime('dd.mm.yyyy',DataInicio.DateTime);
  pplDataFimRegiao.Caption := FormatDateTime('dd.mm.yyyy',DataFim.DateTime);

  pplNomeEmpresaRegiao.Caption := FController
      .EntidadesEmpresaLogada
      .DadosEmpresaLogada
      .NomeEmpresa;

    pplSiteRegiao.Caption := FController
      .EntidadesRedeInfocon
      .DadosRedeInfocon
      .Site;
end;

procedure TfrmMargemLucroPedido.pprSinteticoBeforePrint(Sender: TObject);
begin
  pplInicio.Caption := FormatDateTime('dd.mm.yyyy',DataInicio.DateTime);
  pplFim.Caption := FormatDateTime('dd.mm.yyyy',DataFim.DateTime);

  ppLabel7.Caption := FController
      .EntidadesEmpresaLogada
      .DadosEmpresaLogada
      .NomeEmpresa;

    pplSiteEmpresa.Caption := FController
      .EntidadesRedeInfocon
      .DadosRedeInfocon
      .Site;
end;

end.
