unit ufrmMontarCusto1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,

  Data.DB,

  ufrmModelo,

  Whorkshop.Controller,
  Whorkshop.Controller.Interfaces,

  udmPrincipal;

type
  TfrmMontarCusto1 = class(TfrmModelo)
    Label8: TLabel;
    edtQtdeProducao: TEdit;
    lModel: TLabel;
    Label1: TLabel;
    lIdMarkup: TLabel;
    edtIdMarkup: TEdit;
    lNomeMarkup: TLabel;
    lCaptionNomeMarkup: TLabel;
    dsAuxiliar: TDataSource;
    Panel3: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    lCaptionValorVendaaVista: TLabel;
    Panel7: TPanel;
    Label5: TLabel;
    lCaptionIndicevendaaVista: TLabel;
    Panel8: TPanel;
    lCustoModeloDespesaFixaMateriaPrima: TLabel;
    lCaptionCustoModeloDespesaFixaMateriaPrima: TLabel;
    Panel10: TPanel;
    lCustoModeloMateriaPrima: TLabel;
    lCaptionCustoModeloMateriaPrima: TLabel;
    Panel11: TPanel;
    lCaptioCustoModeloDespesaFixa: TLabel;
    lCustoModeloDespesaFixa: TLabel;
    Panel12: TPanel;
    lDespesaFixa: TLabel;
    lCaptionDespesaFixa: TLabel;
    Panel13: TPanel;
    Label2: TLabel;
    lSomaAliquota: TLabel;
    Label4: TLabel;
    lIndiceaVista: TLabel;
    Panel14: TPanel;
    Panel18: TPanel;
    dsCustoFinanceiro: TDataSource;
    dsModelo: TDataSource;
    dsDespesaFixa: TDataSource;
    Panel15: TPanel;
    dbgMontaCusto: TDBGrid;
    Panel19: TPanel;
    Panel16: TPanel;
    btnBuscarPagamentoSalvo: TBitBtn;
    btnCriarTabelaPrecoFinanceiro: TBitBtn;
    dbnCustoFinanceiro: TDBNavigator;
    Panel17: TPanel;
    dbgCustoFinanceiro: TDBGrid;
    dbgCabecalhoFinanceiro: TDBGrid;
    dsTabelaPreco: TDataSource;
    Panel20: TPanel;
    Panel21: TPanel;
    dbCabecalhoTabelaPreco: TDBGrid;
    Panel22: TPanel;
    dbgTabelaPreco: TDBGrid;
    dbnTabelaPreco: TDBNavigator;
    btnBuscarTabelaPreco: TBitBtn;
    Panel24: TPanel;
    DBGrid1: TDBGrid;
    Panel25: TPanel;
    DBGrid2: TDBGrid;
    Panel23: TPanel;
    DBNavigator2: TDBNavigator;
    BitBtn3: TBitBtn;
    Panel26: TPanel;
    Label6: TLabel;
    lValorFrete: TLabel;
    lValorMaoObra: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Panel27: TPanel;
    Label10: TLabel;
    lCustoMaoObraFrete: TLabel;
    Panel28: TPanel;
    Label11: TLabel;
    lCustoFinal: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescriptionExit(Sender: TObject);
    procedure edtIdMarkupExit(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnBuscarPagamentoSalvoClick(Sender: TObject);
    procedure dbgCustoFinanceiroDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgCustoFinanceiroCellClick(Column: TColumn);
    procedure dbgCustoFinanceiroColEnter(Sender: TObject);
    procedure dbgCabecalhoFinanceiroDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnSalveClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dbgMontaCustoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure dbgSearchDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsCustoFinanceiroDataChange(Sender: TObject; Field: TField);
    procedure btnCriarTabelaPrecoFinanceiroClick(Sender: TObject);
    procedure btnBuscarTabelaPrecoClick(Sender: TObject);
    procedure dbCabecalhoTabelaPrecoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgTabelaPrecoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FController: iController;

    function SomaPrecoVendaaVista(aValue: currency): currency;
    procedure ConfiguraBotao(aValue: Integer);

    procedure CustoComMaodeObra(aValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMontarCusto1: TfrmMontarCusto1;

implementation

{$R *.dfm}


procedure TfrmMontarCusto1.btnBuscarPagamentoSalvoClick(Sender: TObject);
begin
  FController
    .Entidades
    .CustoFinanceiro
    .DataSet(dsCustoFinanceiro)
    .Ativo(rgActive.ItemIndex)
    .TextoFiltro('')
    .Buscar('');
end;

procedure TfrmMontarCusto1.btnBuscarTabelaPrecoClick(Sender: TObject);
begin
  FController
    .Entidades
    .TabelaPreco
    .DataSet(dsTabelaPreco)
    .Buscar('');
end;

procedure TfrmMontarCusto1.btnCriarTabelaPrecoFinanceiroClick(Sender: TObject);
begin
  DataSource1.DataSet.First;
  while not DataSource1.DataSet.Eof do
  begin
    dsCustoFinanceiro.DataSet.First;
    while not dsCustoFinanceiro.DataSet.Eof do
    begin
      FController
        .Entidades
        .TabelaPreco
        .DataSet(dsTabelaPreco)
        .IdModelo(DataSource1.DataSet.FieldByName('IdModelo').AsString)
        .IdParametro1(DataSource1.DataSet.FieldByName('IdMarkupNome').AsString)
        .IdParametro2(dsCustoFinanceiro.DataSet.FieldByName('Id').AsString)
        .Aliquota1(DataSource1.DataSet.FieldByName('AliquotaMarkup').AsCurrency)
        .Aliquota2(dsCustoFinanceiro.DataSet.FieldByName('JurosFinanceiro').AsCurrency)
        .Aliquota3(DataSource1.DataSet.FieldByName('indiceavistamultiplicar').AsCurrency)
        .ValorLancamento1(DataSource1.DataSet.FieldByName('custototalmodelo').AsCurrency)
        .ValorLancamento2(DataSource1.DataSet.FieldByName('Valorvendaavista').AsCurrency)
        .DataLancamento(Now)
        .Operador(edtOperator.Text)
        .Insert;
      dsCustoFinanceiro.DataSet.Next;
    end;

    DataSource1.DataSet.Next;
  end;

end;

procedure TfrmMontarCusto1.btnNewClick(Sender: TObject);
begin
  inherited;
  ConfiguraBotao(0);

  edtOperator.Text := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
end;

procedure TfrmMontarCusto1.btnSalveClick(Sender: TObject);
begin
  FController
    .Entidades
    .MontarCusto
    .DataSet(DataSource1)
    .IdModelo(edtDescription.Text)
    .IdParametro1(edtIdMarkup.Text)
    .ValorLancamento1(dsDespesaFixa.DataSet.FieldByName('SomaDespesaFixa').AsCurrency)
    .ValorLancamento2(dsModelo.DataSet.FieldByName('ValorFichaTecnica').AsCurrency)
    .Qtde(StrToInt(edtQtdeProducao.Text))
    .ValorLancamento3(dsModelo.DataSet.FieldByName('CustoModeloDespesaFixa').AsCurrency)
    .ValorLancamento4(dsModelo.DataSet.FieldByName('ValorPrecoCusto').AsCurrency)
    .Aliquota1(dsAuxiliar.DataSet.FieldByName('SomaAliquota').AsCurrency)
    .Aliquota2(dsAuxiliar.DataSet.FieldByName('IndiceMultiplicacao').AsCurrency)
    .Aliquota3(0)
    .ValorLancamento4(StrToFloat(FormatFloat('0.00', StrToFloat(lCaptionValorVendaaVista.Caption))))
    .DataLancamento(StrToDate(MedtReleaseDate.Text))
    .Operador(edtOperator.Text)
    .Insert;
end;

procedure TfrmMontarCusto1.btnSearchClick(Sender: TObject);
begin
  FController
    .Entidades
    .MontarCusto
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .Buscar('');
  inherited;
end;

procedure TfrmMontarCusto1.ConfiguraBotao(aValue: Integer);
begin
  case aValue of
    0:
      begin
        btnNew.Enabled := false;
        btnSearch.Enabled := false;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := false;
        btnDelete.Enabled := false;
        btnSalve.Enabled := false;
      end; // btnNew
    1:
      begin
        btnNew.Enabled := false;
        btnSearch.Enabled := true;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := true;
        btnDelete.Enabled := true;
        btnSalve.Enabled := false;
      end; // btnSearch
    2:
      begin
        btnNew.Enabled := true;
        btnSearch.Enabled := true;
        btnCancel.Enabled := false;
        btnUpdate.Enabled := false;
        btnDelete.Enabled := false;
        btnSalve.Enabled := false;
      end; // btnCancel
    3:
      begin
        btnNew.Enabled := false;
        btnSearch.Enabled := false;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := false;
        btnDelete.Enabled := true;
        btnSalve.Enabled := false;
      end; // btnUpdate
    4:
      begin
        btnNew.Enabled := false;
        btnSearch.Enabled := false;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := false;
        btnDelete.Enabled := false;
        btnSalve.Enabled := false;
      end; // btnDelete
    5:
      begin
        btnNew.Enabled := true;
        btnSearch.Enabled := true;
        btnCancel.Enabled := false;
        btnUpdate.Enabled := false;
        btnDelete.Enabled := false;
        btnSalve.Enabled := false;
      end; // btnSalve
  end;
end;

procedure TfrmMontarCusto1.CustoComMaodeObra(aValue: String);
begin
  dmPrincipal.queryAuxiliar.Active := false;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select * from Producao ' +
    'where IdModelo=' + aValue + '');
  dmPrincipal.queryAuxiliar.Active := true;

  lValorFrete.Caption := FormatFloat('#,##0.00', dmPrincipal.queryAuxiliar.FieldByName('ValorFrete').AsCurrency);
  lValorMaoObra.Caption := FormatFloat('#,##0.00', dmPrincipal.queryAuxiliar.FieldByName('ValorMaoObra').AsCurrency);
  lCustoMaoObraFrete.Caption := FormatFloat('#,##0.00', dmPrincipal.queryAuxiliar.FieldByName('ValorCusto').AsCurrency);
  lCustoFinal.Caption := FormatFloat('#,##0.00', dmPrincipal.queryAuxiliar.FieldByName('ValorCusto').AsCurrency+dsModelo.DataSet.FieldByName('ValorPrecoCusto').AsCurrency);
  dmPrincipal.queryAuxiliar.Active := false;
end;

procedure TfrmMontarCusto1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  TNumericField(dbgMontaCusto.Fields[3]).DisplayFormat := '0.00%';
  TNumericField(dbgMontaCusto.Fields[4]).DisplayFormat := '#,##0.00';
  TNumericField(dbgMontaCusto.Fields[6]).DisplayFormat := '#,##0.00';
  TNumericField(dbgMontaCusto.Fields[7]).DisplayFormat := '#,##0.00';
  TNumericField(dbgMontaCusto.Fields[8]).DisplayFormat := '#,##0.00';
  TNumericField(dbgMontaCusto.Fields[9]).DisplayFormat := '0.000000%';
  TNumericField(dbgMontaCusto.Fields[10]).DisplayFormat := '#,##0.00';
end;

procedure TfrmMontarCusto1.dbCabecalhoTabelaPrecoDrawColumnCell(Sender: TObject;
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

procedure TfrmMontarCusto1.dbgCabecalhoFinanceiroDrawColumnCell(Sender: TObject;
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

procedure TfrmMontarCusto1.dbgCustoFinanceiroCellClick(Column: TColumn);
begin
  if not dbgCustoFinanceiro.Fields[1].IsNull then
    if Column.Field = dsCustoFinanceiro.DataSet.FieldByName('Status') then
    begin
      dsCustoFinanceiro.DataSet.Edit;

      if dsCustoFinanceiro.DataSet.FieldByName('Status').AsInteger = 1 then
        dsCustoFinanceiro.DataSet.FieldByName('Status').AsInteger := 0
      else
        dsCustoFinanceiro.DataSet.FieldByName('Status').AsInteger := 1;
    end;
end;

procedure TfrmMontarCusto1.dbgCustoFinanceiroColEnter(Sender: TObject);
begin
  if dbgCustoFinanceiro.SelectedField = dsCustoFinanceiro.DataSet.FieldByName('Status') then
    dbgCustoFinanceiro.Options := dbgCustoFinanceiro.Options - [DgEditing]
  else
    dbgCustoFinanceiro.Options := dbgCustoFinanceiro.Options + [DgEditing];
end;

procedure TfrmMontarCusto1.dbgCustoFinanceiroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := $008D8D8D
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  // pinta checkbox
  if Column.Field = dsCustoFinanceiro.DataSet.FieldByName('Status') then
  begin
    dbgCustoFinanceiro.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgCustoFinanceiro.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dsCustoFinanceiro.DataSet.FieldByName('Status').AsInteger = 1 then
      ImageList1.Draw(dbgCustoFinanceiro.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgCustoFinanceiro.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmMontarCusto1.dbgMontaCustoDrawColumnCell(Sender: TObject;
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

procedure TfrmMontarCusto1.dbgSearchDrawColumnCell(Sender: TObject;
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

procedure TfrmMontarCusto1.dbgTabelaPrecoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color :=clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmMontarCusto1.dsCustoFinanceiroDataChange(Sender: TObject;
  Field: TField);
begin
  TNumericField(dbgCabecalhoFinanceiro.Fields[1]).DisplayFormat := '0.00%';
  TNumericField(dbgCustoFinanceiro.Fields[3]).DisplayFormat := '0.00%';
end;

procedure TfrmMontarCusto1.edtDescriptionExit(Sender: TObject);
begin
  if edtDescription.Text = '' then
    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Favor informar Id Modelo!');

  FController
    .Entidades
    .Model
    .DataSet(dsModelo)
    .Ativo(1)
    .EscolhaFiltro(0)
    .TextoFiltro(edtDescription.Text)
    .Buscar(edtDescription.Text);

  if dsModelo.DataSet.IsEmpty then
    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Registro n�o encontrado, Modelo n�o cadastrado!');

  FController
    .Entidades
    .SomaCustoModelo
    .DataSet(dsModelo)
    .Ativo(rgActive.ItemIndex)
    .TextoFiltro(edtDescription.Text)
    .Buscar(edtDescription.Text);

  if not dsModelo.DataSet.IsEmpty then
  begin
    lModel.Caption := dsModelo.DataSet.FieldByName('ModeloNome').AsString;
    edtQtdeProducao.Text := dsModelo.DataSet.FieldByName('QtdeProducao').AsString;
    lCaptioCustoModeloDespesaFixa.Caption := FormatFloat('#,##0.00', dsModelo.DataSet.FieldByName('CustoModeloDespesaFixa').AsCurrency);
    lCaptionCustoModeloMateriaPrima.Caption := FormatFloat('#,##0.00', dsModelo.DataSet.FieldByName('ValorFichaTecnica').AsCurrency);
    lCaptionCustoModeloDespesaFixaMateriaPrima.Caption := FormatFloat('#,##0.00', dsModelo.DataSet.FieldByName('ValorPrecoCusto').AsCurrency);
    SomaPrecoVendaaVista(dsModelo.DataSet.FieldByName('ValorPrecoCusto').AsCurrency);

    CustoComMaodeObra(edtDescription.Text);
    edtQtdeProducao.SetFocus;
  end
  else
  begin
    lModel.Caption := '...';
    lCaptioCustoModeloDespesaFixa.Caption := '...';
    lCaptionCustoModeloMateriaPrima.Caption := '...';
    lCaptionCustoModeloDespesaFixaMateriaPrima.Caption := '...';
    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Registro n�o encontrado, Modelo n�o cont�m ficha t�cnica!');
  end;
end;

procedure TfrmMontarCusto1.edtIdMarkupExit(Sender: TObject);
var
  lIndice, lSoma: currency;
begin
  if edtIdMarkup.Text = '' then
    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Favor informar Id Modelo!');

  lIndice := 0;
  lSoma := 0;

  FController
    .Entidades
    .SomaAliquotaGrupo
    .DataSet(dsAuxiliar)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(0)
    .TextoFiltro(edtIdMarkup.Text)
    .Buscar(edtIdMarkup.Text);

  if not dsAuxiliar.DataSet.IsEmpty then
  begin
    lCaptionNomeMarkup.Caption := dsAuxiliar.DataSet.FieldByName('MarkupNome').AsString;
    lSomaAliquota.Caption := FormatFloat('0.000000', dsAuxiliar.DataSet.FieldByName('SomaAliquota').AsCurrency);
    lIndiceaVista.Caption := FormatFloat('0.000000', dsAuxiliar.DataSet.FieldByName('IndiceMultiplicacao').AsCurrency);
    lCaptionIndicevendaaVista.Caption := FormatFloat('0.000000', dsAuxiliar.DataSet.FieldByName('IndiceMultiplicacao').AsCurrency);
    lIndice := dsAuxiliar.DataSet.FieldByName('IndiceMultiplicacao').AsCurrency;
    lSoma := StrToFloat(lCustoFinal.Caption);
    lCaptionValorVendaaVista.Caption := FormatFloat('#,##0.00', lSoma);
    lSoma := lSoma * lIndice;
    lCaptionValorVendaaVista.Caption := FormatFloat('#,##0.00', lSoma);
    btnSalve.Enabled := true;
    btnSalve.SetFocus;
  end
  else
  begin
    lCaptionNomeMarkup.Caption := '...';
    raise Exception.Create('Registro n�o encontrado!');
  end;
end;

procedure TfrmMontarCusto1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMontarCusto1 := nil;
  Action := caFree;
end;

procedure TfrmMontarCusto1.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmMontarCusto1.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Montar Custo';

  edtOperator.Text := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;

  FController
    .Entidades
    .SomaDespesaFixa
    .DataSet(dsDespesaFixa)
    .Ativo(rgActive.ItemIndex)
    .Buscar('');

  lCaptionDespesaFixa.Caption := FormatFloat('#,##0.00', dsDespesaFixa.DataSet.FieldByName('SomaDespesaFixa').AsCurrency);
end;

function TfrmMontarCusto1.SomaPrecoVendaaVista(aValue: currency): currency;
begin
  Result := aValue;
end;

end.
