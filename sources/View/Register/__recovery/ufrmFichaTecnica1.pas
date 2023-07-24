unit ufrmFichaTecnica;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,
  Vcl.ImgList,

  StringGridHack,

  Data.DB,

  ufrmModelo,

  udmPrincipal,

  Whorkshop.Controller,
  Whorkshop.Controller.Interfaces;

type
  TfrmFichaTecnica = class(TfrmModelo)
    Label2: TLabel;
    lModel: TLabel;
    edtQtdeProducao: TEdit;
    Label8: TLabel;
    pProduct: TPanel;
    rgFiltroMateriaPrima: TRadioGroup;
    pPesquisaMateriaPrima: TPanel;
    dsPesquisaMateriaPrima: TDataSource;
    dsAuxiliar: TDataSource;
    dbgPesquisaMateriaPrima: TDBGrid;
    pFichaTecnicaItem: TPanel;
    dsFichaTecnicaItem: TDataSource;
    dbgFichaTecnicaItem: TDBGrid;
    Panel3: TPanel;
    Panel8: TPanel;
    Label9: TLabel;
    edtFiltroMateriaPrima: TEdit;
    btnBuscarMateriaPrima: TBitBtn;
    Label10: TLabel;
    edtIdMateriaPrima: TEdit;
    lNomeMateriaPrima: TLabel;
    Label12: TLabel;
    Panel5: TPanel;
    Panel7: TPanel;
    edtValorUnitario: TEdit;
    edtPerda: TEdit;
    edtQtde: TEdit;
    Label18: TLabel;
    lValorPerda: TLabel;
    Label20: TLabel;
    lValorFinal: TLabel;
    Panel10: TPanel;
    Label14: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    lUnidade: TLabel;
    Label17: TLabel;
    lSubTotal: TLabel;
    Label15: TLabel;
    btnConfirmaMateriaPrima: TBitBtn;
    btnCancelaMateriaPrima: TBitBtn;
    BitBtn1: TBitBtn;
    StringGrid1: TStringGrid;
    dbnMateriaPrima: TDBNavigator;
    dbgFichaTecnica: TDBGrid;
    Panel11: TPanel;
    btnAlterarMateriaPrima: TBitBtn;
    btnExcluirMateriaPrima: TBitBtn;
    dbnFichaTecnicaItem: TDBNavigator;
    dbgRegistroFichaTecnicaItem: TDBGrid;
    Panel12: TPanel;
    btnAlterarRegistroFichaTecnicaItem: TBitBtn;
    btnExcluirRegistroFichaTecnicaItem: TBitBtn;
    dbnRegistroFichaTecnicaItem: TDBNavigator;
    Panel13: TPanel;
    lAlteraFichaTecnicaItem: TLabel;
    LInsert: TLabel;
    Label3: TLabel;
    btnInsereNovoItem: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnNewClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtDescriptionExit(Sender: TObject);
    procedure edtDescriptionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDescriptionKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeProducaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeProducaoExit(Sender: TObject);
    procedure edtIdMateriaPrimaExit(Sender: TObject);
    procedure edtIdMateriaPrimaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtIdMateriaPrimaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtPerdaExit(Sender: TObject);
    procedure btnConfirmaMateriaPrimaClick(Sender: TObject);
    procedure btnBuscarMateriaPrimaClick(Sender: TObject);
    procedure dbgFichaTecnicaItemDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgPesquisaMateriaPrimaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgPesquisaMateriaPrimaCellClick(Column: TColumn);
    procedure dbgPesquisaMateriaPrimaColEnter(Sender: TObject);
    procedure edtQtdeExit(Sender: TObject);
    procedure edtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtPerdaKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioExit(Sender: TObject);
    procedure btnSalveClick(Sender: TObject);
    procedure dbgFichaTecnicaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExcluirMateriaPrimaClick(Sender: TObject);
    procedure dbgSearchDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcluirRegistroFichaTecnicaItemClick(Sender: TObject);
    procedure dbgFichaTecnicaItemCellClick(Column: TColumn);
    procedure dbgFichaTecnicaItemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInsereNovoItemClick(Sender: TObject);
    procedure btnAlterarMateriaPrimaClick(Sender: TObject);
  private
    vid: Integer;
    FController: iController;
    vAlterando: Boolean;
    vInsert : Boolean;
    procedure Atualizaedt;
    function Somar(aValueA, aValueB: Currency; Tipo: Integer): Currency;

    procedure LimparColunasItens;
    procedure LimparColunasPai;
    procedure InserirFichaTecnicaItem;
    procedure FiltraUpdateFichaTecnicaItem;
    procedure UpdateFichaTecnicaItem;

    procedure SalvarFichaTecnicaItemUpdate;

    procedure PreencherFichaTecnicaItem;
    procedure PreencherEdtFichaTecnicaItem;

    procedure LoopRow();
    procedure ConfiguraBotao(aValue: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichaTecnica: TfrmFichaTecnica;

implementation

{$R *.dfm}


uses
  ufrmSearchModel,
  ufrmSearchMateriaPrima;

procedure TfrmFichaTecnica.FiltraUpdateFichaTecnicaItem;
begin
  dmPrincipal.sqlFichaTecnicaItem.Active := False;
  dmPrincipal.sqlFichaTecnicaItem.CommandText := ('select ' +
    'fti.id, ' +
    'fti.idfichatecnica, ' +
    'fti.idmateriaprima, ' +
    'mp.descricao, ' +
    'mp.un, ' +
    'fti.valorunitario, ' +
    'fti.qtde, ' +
    'fti.perda, ' +
    'fti.subtotal, ' +
    'fti.valorperda, ' +
    'fti.valorfinal ' +
    'from FichaTecnicaItem fti ' +
    'inner join cad_gmp mp on mp.id_mp = fti.idmateriaprima ' +
    'where fti.id= ' + DataSource1.DataSet.FieldByName('Id').AsString + '');
  dmPrincipal.cdsFichaTecnicaItem.Active := False;
  dmPrincipal.cdsFichaTecnicaItem.Active := true;

  dmPrincipal.sqlFichaTecnica.Active := False;
  dmPrincipal.sqlFichaTecnica.CommandText := ('select * from FichaTecnica ' +
    'where Id =' + DataSource1.DataSet.FieldByName('Id').AsString + '');
  dmPrincipal.cdsFichaTecnica.Active := False;
  dmPrincipal.cdsFichaTecnica.Active := true;
  dmPrincipal.cdsFichaTecnicaItem.Edit;
  dmPrincipal.cdsFichaTecnica.Edit;
  dmPrincipal.cdsFichaTecnica.FieldByName('Id').AsString:= DataSource1.DataSet.FieldByName('Id').AsString;

  vAlterando := true;
end;

procedure TfrmFichaTecnica.LoopRow();
var
  I, Y: Integer;
begin
  for I := 1 to StringGrid1.RowCount - 1 do
    for Y := 0 to StringGrid1.ColCount - 1 do
    begin
      if StringGrid1.Cells[Y, I] <> '' then
        ShowMessage(StringGrid1.Cells[Y, I]);
    end;
end;

procedure TfrmFichaTecnica.Atualizaedt;
begin
  edtId.Text := DataSource1.DataSet.FieldByName('Id').AsString;
  MedtReleaseDate.Text := DataSource1.DataSet.FieldByName('DataLancamento').AsString;
  edtDescription.Text := DataSource1.DataSet.FieldByName('IdModelo').AsString;
  lModel.Caption := DataSource1.DataSet.FieldByName('ModeloNome').AsString;
  edtQtdeProducao.Text := DataSource1.DataSet.FieldByName('QtdeProducao').AsString;
  edtOperator.Text := DataSource1.DataSet.FieldByName('Operador').AsString;
end;

procedure TfrmFichaTecnica.BitBtn1Click(Sender: TObject);
var
  I: Integer;

  procedure Inserir(ALinha: Integer; FId, FNomeMateriaPrima, FUnidade, FValorUnitario, FQtde, FPerda, FSubTotal, FValorPerda, FValorFinal: String);
  begin
    StringGrid1.Cells[0, ALinha] := FId;
    StringGrid1.Cells[1, ALinha] := FNomeMateriaPrima;
    StringGrid1.Cells[2, ALinha] := FUnidade;
    StringGrid1.Cells[3, ALinha] := FValorUnitario;
    StringGrid1.Cells[4, ALinha] := FQtde;
    StringGrid1.Cells[5, ALinha] := FPerda;
    StringGrid1.Cells[6, ALinha] := FSubTotal;
    StringGrid1.Cells[7, ALinha] := FValorPerda;
    StringGrid1.Cells[8, ALinha] := FValorFinal;
  end;

begin

  I := 1;
  if ((Trim(edtIdMateriaPrima.Text) = '')) or
    (Trim(edtValorUnitario.Text) = '') or
    (Trim(edtQtde.Text) = '') or
    (Trim(edtPerda.Text) = '') then
    MessageDlg('Um ou mais campos não foram preenchidos.', mtInformation, [mbOk], 0)
  else
  begin
    // for i := 0 to StringGrid1.ColCount -1 do
    StringGrid1.ColWidths[0] := 46;
    StringGrid1.ColWidths[1] := 250;
    StringGrid1.ColWidths[2] := 46;
    StringGrid1.ColWidths[3] := 74;
    StringGrid1.ColWidths[4] := 64;
    StringGrid1.ColWidths[5] := 64;
    StringGrid1.ColWidths[6] := 74;
    StringGrid1.ColWidths[7] := 74;
    StringGrid1.ColWidths[8] := 74;

    StringGrid1.Cells[0, 0] := 'Id MP:';
    StringGrid1.Cells[1, 0] := 'Nome Matéria Prima:';
    StringGrid1.Cells[2, 0] := 'Unidade:';
    StringGrid1.Cells[3, 0] := 'Valor Unitário:';
    StringGrid1.Cells[4, 0] := 'Qtde';
    StringGrid1.Cells[5, 0] := '% Perda:';
    StringGrid1.Cells[6, 0] := 'Sub Total:';
    StringGrid1.Cells[7, 0] := 'Valor Perda:';
    StringGrid1.Cells[8, 0] := 'Valor Final:';

    TStringGridHack(StringGrid1).InsertRow(1);
    Inserir(1, edtIdMateriaPrima.Text,
      lNomeMateriaPrima.Caption,
      lUnidade.Caption,
      edtValorUnitario.Text,
      edtQtde.Text,
      edtPerda.Text,
      lSubTotal.Caption,
      lValorPerda.Caption,
      lValorFinal.Caption
      );

    { Loop para saber qual a linha que está vazia }
    {
      for I := 0 to StringGrid1.RowCount-1 do
      begin
      if StringGrid1.Cells[0, I] = '' then
      begin
      Inserir(StringGrid1.RowCount-1, edtIdMateriaPrima.Text,
      lNomeMateriaPrima.Caption,
      lUnidade.Caption,
      edtValorUnitario.Text,
      edtQtde.Text,
      edtPerda.Text,
      lSubTotal.Caption,
      lValorPerda.Caption,
      lValorFinal.Caption
      );
      Break;
      end
      else
      begin
      TStringGridHack(StringGrid1).InsertRow(StringGrid1.RowCount);
      Inserir(StringGrid1.RowCount-1, edtIdMateriaPrima.Text,
      lNomeMateriaPrima.Caption,
      lUnidade.Caption,
      edtValorUnitario.Text,
      edtQtde.Text,
      edtPerda.Text,
      lSubTotal.Caption,
      lValorPerda.Caption,
      lValorFinal.Caption
      );
      Break;
      end;
      end;
    }
    // end;
    edtIdMateriaPrima.Text := '';
    edtValorUnitario.Text := '';
    edtQtde.Text := '';
    edtPerda.Text := '';
    lNomeMateriaPrima.Caption := '...';
    lUnidade.Caption := '...';
  end;

  // StringGrid1.fi

end;

procedure TfrmFichaTecnica.btnAlterarMateriaPrimaClick(Sender: TObject);
begin
  inherited;

end;

procedure TfrmFichaTecnica.btnBuscarMateriaPrimaClick(Sender: TObject);
begin
  FController
    .Entidades
    .MateriaPrima
    .DataSet(dsPesquisaMateriaPrima)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgFiltroMateriaPrima.ItemIndex)
    .TextoFiltro(edtFiltroMateriaPrima.Text)
    .Buscar(edtFiltroMateriaPrima.Text);

end;

procedure TfrmFichaTecnica.btnCancelClick(Sender: TObject);
begin
  LimparColunasItens;
  ConfiguraBotao(2);
end;

procedure TfrmFichaTecnica.btnConfirmaMateriaPrimaClick(Sender: TObject);
begin
  if Not vAlterando then
    InserirFichaTecnicaItem
  else
    UpdateFichaTecnicaItem;
end;

procedure TfrmFichaTecnica.btnDeleteClick(Sender: TObject);
begin
  ConfiguraBotao(4);

  if DataSource1.DataSet.IsEmpty then
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' para excluir ficha técnica completa, antes encontre a mesma!')
  else
    if MessageBox(handle, 'Deseja excluir esta ficha técnica completa?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
    FController
      .Entidades
      .FichaTecnica
      .DataSet(DataSource1)
      .Delete(DataSource1.DataSet.FieldByName('Id').AsString);
end;

procedure TfrmFichaTecnica.btnExcluirMateriaPrimaClick(Sender: TObject);
begin
  if DataSource1.DataSet.IsEmpty then
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' para excluir matéria prima, antes encontre a mesma!')
  else
    if MessageBox(handle, 'Deseja excluir este item do registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
    FController
      .Entidades
      .FichaTecnicaItem
      .DataSet(dsFichaTecnicaItem)
      .IdParametro1(dbgFichaTecnicaItem.Fields[0].AsString)
      .Delete(dbgFichaTecnicaItem.Fields[1].AsString);

  btnSearch.Click;
end;

procedure TfrmFichaTecnica.btnExcluirRegistroFichaTecnicaItemClick(
  Sender: TObject);
begin
  if DataSource1.DataSet.IsEmpty then
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' para excluir matéria prima, antes encontre a mesma!')
  else
    if MessageBox(handle, 'Deseja excluir este item do registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
    FController
      .Entidades
      .FichaTecnicaItem
      .DataSet(dsFichaTecnicaItem)
      .IdParametro1(dbgRegistroFichaTecnicaItem.Fields[1].AsString)
      .Delete(dbgRegistroFichaTecnicaItem.Fields[0].AsString);

  btnSearch.Click;
end;

procedure TfrmFichaTecnica.btnInsereNovoItemClick(Sender: TObject);
begin
  edtIdMateriaPrima.SetFocus;
  vInsert := true;
  dmPrincipal.cdsFichaTecnicaItem.Append;
end;

procedure TfrmFichaTecnica.btnNewClick(Sender: TObject);
begin
  inherited;
  ConfiguraBotao(0);
  dbgFichaTecnicaItem.DataSource := dsFichaTecnicaItem;
  edtOperator.Text := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;

  vAlterando := False;
end;

procedure TfrmFichaTecnica.btnSalveClick(Sender: TObject);
begin
  ConfiguraBotao(5);

  if vAlterando then
  begin
    SalvarFichaTecnicaItemUpdate;
  end
  else
  begin
    // LoopRow();
    FController
      .Entidades
      .FichaTecnica
      .DataSet(dsAuxiliar)
      .IdModelo(edtDescription.Text)
      .Qtde(StrToInt(edtQtdeProducao.Text))
      .Operador(edtOperator.Text)
      .DataLancamento(StrToDate(MedtReleaseDate.Text))
      .Insert;

    FController
      .Entidades
      .FichaTecnicaItem
      .DataSet(dsAuxiliar)
      .PegarGenId;

    dsFichaTecnicaItem.DataSet.First;
    while not dsFichaTecnicaItem.DataSet.Eof do
    begin
      FController
        .Entidades
        .FichaTecnicaItem
        .DataSet(dsAuxiliar)
        .IdParametro1(dsFichaTecnicaItem.DataSet.FieldByName('IdMateriaPrima').AsString)
        .ValorLancamento1(dsFichaTecnicaItem.DataSet.FieldByName('ValorUnitario').AsCurrency)
        .Qtde(dsFichaTecnicaItem.DataSet.FieldByName('Qtde').AsCurrency)
        .ValorLancamento2(dsFichaTecnicaItem.DataSet.FieldByName('SubTotal').AsCurrency)
        .Aliquota1(dsFichaTecnicaItem.DataSet.FieldByName('Perda').AsCurrency)
        .ValorLancamento3(dsFichaTecnicaItem.DataSet.FieldByName('ValorPerda').AsCurrency)
        .ValorLancamento4(dsFichaTecnicaItem.DataSet.FieldByName('ValorFinal').AsCurrency)
        .Insert;

      dsFichaTecnicaItem.DataSet.Next;
    end;

    dsFichaTecnicaItem.DataSet.Active := False;
  end;
end;

procedure TfrmFichaTecnica.btnSearchClick(Sender: TObject);
begin
  ConfiguraBotao(1);

  FController
    .Entidades
    .FichaTecnica
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgChoice.ItemIndex)
    .TextoFiltro(edtSearch.Text)
    .Buscar(edtSearch.Text);

  if not DataSource1.DataSet.IsEmpty then
  begin
    frmFichaTecnica.Atualizaedt;
    dbgFichaTecnica.Visible := true;
  end
  else
    dbgFichaTecnica.Visible := False;

  inherited;

end;

procedure TfrmFichaTecnica.btnUpdateClick(Sender: TObject);
begin
  ConfiguraBotao(3);

  pgMain.ActivePageIndex := 0;

  FiltraUpdateFichaTecnicaItem;
end;

procedure TfrmFichaTecnica.ConfiguraBotao(aValue: Integer);
begin
  case aValue of
    0:
      begin
        btnNew.Enabled := False;
        btnSearch.Enabled := False;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := False;
        btnDelete.Enabled := False;
        btnSalve.Enabled := False;
      end; // btnNew
    1:
      begin
        btnNew.Enabled := False;
        btnSearch.Enabled := true;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := true;
        btnDelete.Enabled := true;
        btnSalve.Enabled := False;
      end; // btnSearch
    2:
      begin
        btnNew.Enabled := true;
        btnSearch.Enabled := true;
        btnCancel.Enabled := False;
        btnUpdate.Enabled := False;
        btnDelete.Enabled := False;
        btnSalve.Enabled := False;
      end; // btnCancel
    3:
      begin
        btnNew.Enabled := False;
        btnSearch.Enabled := False;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := False;
        btnDelete.Enabled := true;
        btnSalve.Enabled := False;
      end; // btnUpdate
    4:
      begin
        btnNew.Enabled := False;
        btnSearch.Enabled := False;
        btnCancel.Enabled := true;
        btnUpdate.Enabled := False;
        btnDelete.Enabled := False;
        btnSalve.Enabled := False;
      end; // btnDelete
    5:
      begin
        btnNew.Enabled := true;
        btnSearch.Enabled := true;
        btnCancel.Enabled := False;
        btnUpdate.Enabled := False;
        btnDelete.Enabled := False;
        btnSalve.Enabled := False;
      end; // btnSalve
  end;
end;

procedure TfrmFichaTecnica.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  FController
    .Entidades
    .FichaTecnicaItem
    .DataSet(dsFichaTecnicaItem)
    .Buscar(DataSource1.DataSet.FieldByName('Id').AsString);

  TNumericField(dbgFichaTecnica.Fields[3]).DisplayFormat := '#,##0.00';
  TNumericField(dbgFichaTecnicaItem.Fields[3]).DisplayFormat := '#,##0.0000';
  TNumericField(dbgFichaTecnicaItem.Fields[4]).DisplayFormat := '#,##0.0000';
  TNumericField(dbgFichaTecnicaItem.Fields[5]).DisplayFormat := '#,##0.00';
  TNumericField(dbgFichaTecnicaItem.Fields[6]).DisplayFormat := '#,##0.0000';
  TNumericField(dbgFichaTecnicaItem.Fields[7]).DisplayFormat := '#,##0.0000';
end;

procedure TfrmFichaTecnica.dbgFichaTecnicaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF
  Else
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmFichaTecnica.dbgFichaTecnicaItemCellClick(Column: TColumn);
begin
  if dmPrincipal.cdsFichaTecnicaItem.State in [dsInsert, dsEdit] then
    PreencherEdtFichaTecnicaItem;
end;

procedure TfrmFichaTecnica.dbgFichaTecnicaItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := $008D8D8D
  Else
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmFichaTecnica.dbgFichaTecnicaItemKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if vAlterando then
  begin
    case Key of
      VK_F7:
        begin
          edtIdMateriaPrima.SetFocus;
          vInsert:= false;
        end;
    end;
  end;
end;

procedure TfrmFichaTecnica.dbgPesquisaMateriaPrimaCellClick(Column: TColumn);
begin
  if not dbgPesquisaMateriaPrima.Fields[1].IsNull then
    if Column.Field = dsPesquisaMateriaPrima.DataSet.FieldByName('Status') then
    begin
      dsPesquisaMateriaPrima.DataSet.Edit;

      if dsPesquisaMateriaPrima.DataSet.FieldByName('Status').AsInteger = 1 then
        dsPesquisaMateriaPrima.DataSet.FieldByName('Status').AsInteger := 0
      else
        dsPesquisaMateriaPrima.DataSet.FieldByName('Status').AsInteger := 1;
    end;
end;

procedure TfrmFichaTecnica.dbgPesquisaMateriaPrimaColEnter(Sender: TObject);
begin
  if dbgPesquisaMateriaPrima.SelectedField = dsPesquisaMateriaPrima.DataSet.FieldByName('Status') then
    dbgPesquisaMateriaPrima.Options := dbgPesquisaMateriaPrima.Options - [DgEditing]
  else
    dbgPesquisaMateriaPrima.Options := dbgPesquisaMateriaPrima.Options + [DgEditing];
end;

procedure TfrmFichaTecnica.dbgPesquisaMateriaPrimaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := $008D8D8D
  Else
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  // pinta checkbox

  if Column.Field = dsPesquisaMateriaPrima.DataSet.FieldByName('Status') then
  begin
    dbgPesquisaMateriaPrima.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgPesquisaMateriaPrima.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dsPesquisaMateriaPrima.DataSet.FieldByName('Status').AsInteger = 1 then
      ImageList1.Draw(dbgPesquisaMateriaPrima.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgPesquisaMateriaPrima.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmFichaTecnica.dbgSearchDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DataSource.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF
  Else
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmFichaTecnica.edtDescriptionExit(Sender: TObject);
begin
  if edtDescription.Text = '' then
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' Favor informar Id Modelo!');

  FController
    .Entidades
    .Model
    .DataSet(dsAuxiliar)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(0)
    .TextoFiltro(edtDescription.Text)
    .Buscar(edtDescription.Text);

  if not dsAuxiliar.DataSet.IsEmpty then
  begin
    lModel.Caption := dsAuxiliar.DataSet.FieldByName('Descricao').AsString;
    edtQtdeProducao.Text := dsAuxiliar.DataSet.FieldByName('QtdeProducao').AsString;
    edtQtdeProducao.SetFocus;
  end
  else
  begin
    lModel.Caption := '...';
    raise Exception.Create('Registro não encontrado!');
  end;
end;

procedure TfrmFichaTecnica.edtDescriptionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmSearchModel, frmSearchModel);
        frmSearchModel.lfrmExecutando.Caption := 'frmFichaTecnica';
        frmSearchModel.ShowModal;
      end;
  end;
end;

procedure TfrmFichaTecnica.edtDescriptionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmFichaTecnica.edtIdMateriaPrimaExit(Sender: TObject);
begin
  if edtIdMateriaPrima.Text = '' then
    raise Exception.Create('Atenção... ' + edtOperator.Text + ' Favor informar Id Modelo!');

  if ((not dsFichaTecnicaItem.DataSet.IsEmpty) and (edtIdMateriaPrima.Text = '0')) then
  begin
    btnSalve.Enabled := true;
    btnSalve.SetFocus;

    Exit;
  end;

  FController
    .Entidades
    .MateriaPrima
    .DataSet(dsAuxiliar)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(0)
    .TextoFiltro(edtIdMateriaPrima.Text)
    .Buscar(edtIdMateriaPrima.Text);

  if not dsAuxiliar.DataSet.IsEmpty then
  begin
    lNomeMateriaPrima.Caption := dsAuxiliar.DataSet.FieldByName('Descricao').AsString;
    lUnidade.Caption := dsAuxiliar.DataSet.FieldByName('UN').AsString;
    edtValorUnitario.Text := FormatFloat('0.00', dsAuxiliar.DataSet.FieldByName('Vl_Unitario').AsCurrency);
    edtValorUnitario.SetFocus;
  end
  else
  begin
    lModel.Caption := '...';
    raise Exception.Create('Registro não encontrado!');
  end;
end;

procedure TfrmFichaTecnica.edtIdMateriaPrimaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmSearchMaterial, frmSearchMaterial);
        frmSearchMaterial.lfrmExecutando.Caption := 'frmFichaTecnica';
        frmSearchMaterial.ShowModal;
      end;
  end;

end;

procedure TfrmFichaTecnica.edtIdMateriaPrimaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmFichaTecnica.edtPerdaExit(Sender: TObject);
var
  TextOnEdit: UnicodeString;
  Value: Currency;
begin
  TextOnEdit := edtPerda.Text;

  if TryStrToCurr(TextOnEdit, Value) then
    edtPerda.Text := FormatFloat('0.00', Value)
  else
    edtPerda.Text := '0'; // se caso não conseguiu converter o valor digitado em número, mostra 0

  Value := StrToFloat(edtPerda.Text);

  btnConfirmaMateriaPrima.Enabled := true;
  btnConfirmaMateriaPrima.SetFocus;
end;

procedure TfrmFichaTecnica.edtPerdaKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8]) then
    Key := #0;
end;

procedure TfrmFichaTecnica.edtQtdeExit(Sender: TObject);
var
  TextOnEdit: UnicodeString;
  Value: Currency;
begin
  TextOnEdit := edtQtde.Text;

  if TryStrToCurr(TextOnEdit, Value) then
    edtQtde.Text := FormatFloat('0.0000', Value)
  else
    edtQtde.Text := '0'; // se caso não conseguiu converter o valor digitado em número, mostra 0

  Value := StrToFloat(edtQtde.Text);
  if Value <= 0 then
    raise Exception.Create('Favor preencher Qtde!');
end;

procedure TfrmFichaTecnica.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8]) then
    Key := #0;
end;

procedure TfrmFichaTecnica.edtQtdeProducaoExit(Sender: TObject);
var
  TextOnEdit: UnicodeString;
  Value: Currency;
begin
  TextOnEdit := edtQtdeProducao.Text;

  if TryStrToCurr(TextOnEdit, Value) then
    edtQtdeProducao.Text := FormatFloat('0', Value)
  else
    edtQtdeProducao.Text := '0'; // se caso não conseguiu converter o valor digitado em número, mostra 0

  Value := StrToFloat(edtQtdeProducao.Text);
  if Value <= 0 then
    raise Exception.Create('Favor preencher produção mensal!');

  edtIdMateriaPrima.SetFocus;
end;

procedure TfrmFichaTecnica.edtQtdeProducaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmFichaTecnica.edtValorUnitarioExit(Sender: TObject);
var
  TextOnEdit: UnicodeString;
  Value: Currency;
begin
  TextOnEdit := edtValorUnitario.Text;

  if TryStrToCurr(TextOnEdit, Value) then
    edtValorUnitario.Text := FormatFloat('0.0000', Value)
  else
    edtValorUnitario.Text := '0'; // se caso não conseguiu converter o valor digitado em número, mostra 0

  Value := StrToFloat(edtValorUnitario.Text);
  if Value <= 0 then
    raise Exception.Create('Favor preencher valor unitário!');
end;

procedure TfrmFichaTecnica.edtValorUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8]) then
    Key := #0;
end;

procedure TfrmFichaTecnica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  vAlterando := False;
  frmFichaTecnica := nil;
  Action := caFree;
end;

procedure TfrmFichaTecnica.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  FController := TController.New;

  {
    for i := 0 to StringGrid1.ColCount -1 do
    StringGrid1.ColWidths[i] := 150;

    for i := 0 to 3 do
    TStringGridHack(StringGrid1).InsertRow(1);

    StringGrid1.Cells[0,0] := 'Nome';
    StringGrid1.Cells[1,0] := 'Sobrenome';
    StringGrid1.Cells[2,0] := 'E-mail';
    StringGrid1.Cells[3,0] := 'Site';


    StringGrid1.Cells[0,1] := 'Adriano';
    StringGrid1.Cells[1,1] := 'Santos';
    StringGrid1.Cells[2,1] := 'asrsantos@gmail.com';
    StringGrid1.Cells[3,1] := 'delphitodelphi.blogspot.com';

    StringGrid1.Cells[0,2] := 'José';
    StringGrid1.Cells[1,2] := 'de Arimatéia';
    StringGrid1.Cells[2,2] := 'arimateia@gmail.com';
    StringGrid1.Cells[3,2] := 'arimateia.blogspot.com';

    StringGrid1.Cells[0,3] := 'João';
    StringGrid1.Cells[1,3] := 'Bosco';
    StringGrid1.Cells[2,3] := 'bosco@gmail.com';
    StringGrid1.Cells[3,3] := 'bosco.blogspot.com';

    StringGrid1.Cells[0,4] := 'Marina';
    StringGrid1.Cells[1,4] := 'Silva';
    StringGrid1.Cells[2,4] := 'silva@gmail.com';
    StringGrid1.Cells[3,4] := 'silva.blogspot.com';
  }

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmFichaTecnica.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Ficha Técnica';

  edtOperator.Text := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;

  vAlterando := False;
end;

procedure TfrmFichaTecnica.InserirFichaTecnicaItem;
begin
  if not dmPrincipal.cdsFichaTecnicaItem.Active then
  begin
    dmPrincipal.sqlFichaTecnicaItem.Active := False;
    dmPrincipal.sqlFichaTecnicaItem.CommandText := ('select ' +
      'fti.id, ' +
      'fti.idfichatecnica, ' +
      'fti.idmateriaprima, ' +
      'mp.descricao, ' +
      'mp.un, ' +
      'fti.valorunitario, ' +
      'fti.qtde, ' +
      'fti.perda, ' +
      'fti.subtotal, ' +
      'fti.valorperda, ' +
      'fti.valorfinal ' +
      'from FichaTecnicaItem fti ' +
      'inner join cad_gmp mp on mp.id_mp = fti.idmateriaprima ' +
      'where fti.id=0 ');
    dmPrincipal.cdsFichaTecnicaItem.Active := False;
    dmPrincipal.cdsFichaTecnicaItem.Active := true;
  end;
  dmPrincipal.cdsFichaTecnicaItem.Append;

  PreencherFichaTecnicaItem;
end;

procedure TfrmFichaTecnica.LimparColunasItens;
begin
  edtIdMateriaPrima.Clear;
  lNomeMateriaPrima.Caption := '...';
  lUnidade.Caption := '...';
  edtValorUnitario.Clear;
  edtQtde.Clear;
  edtPerda.Clear;
  lSubTotal.Caption := '...';
  lValorPerda.Caption := '...';
  lValorFinal.Caption := '...';
end;

procedure TfrmFichaTecnica.LimparColunasPai;
begin
  // cabeçalho
  edtId.Clear;
  MedtReleaseDate.Clear;
  lModel.Caption := '...';
  edtDescription.Clear;
  edtQtdeProducao.Clear;
end;

procedure TfrmFichaTecnica.NavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if not DataSource1.DataSet.IsEmpty then
    frmFichaTecnica.Atualizaedt;
end;

procedure TfrmFichaTecnica.PreencherEdtFichaTecnicaItem;
begin
  edtIdMateriaPrima.Text := dsFichaTecnicaItem.DataSet.FieldByName('IdMateriaPrima').AsString;
  lNomeMateriaPrima.Caption := dsFichaTecnicaItem.DataSet.FieldByName('Descricao').AsString;
  lUnidade.Caption := dsFichaTecnicaItem.DataSet.FieldByName('Un').AsString;
  edtValorUnitario.Text := FormatFloat('#,##0.0000', dsFichaTecnicaItem.DataSet.FieldByName('ValorUnitario').AsCurrency);
  edtQtde.Text := FormatFloat('#,##0.0000', dsFichaTecnicaItem.DataSet.FieldByName('Qtde').AsCurrency);
  edtPerda.Text := FormatFloat('#,##0.00', dsFichaTecnicaItem.DataSet.FieldByName('Perda').AsCurrency);
end;

procedure TfrmFichaTecnica.PreencherFichaTecnicaItem;
var
  vSubTotal: Currency;
  vValorPerda: Currency;
  vSoma: Currency;
begin
  vSubTotal := 0;
  vValorPerda := 0;
  vSoma := 0;
  lSubTotal.Caption := FormatFloat('0.00', frmFichaTecnica.Somar(StrToFloat(edtValorUnitario.Text), StrToFloat(edtQtde.Text), 0));
  vSubTotal := StrToFloat(lSubTotal.Caption);
  lValorPerda.Caption := FormatFloat('0.00', frmFichaTecnica.Somar(StrToFloat(lSubTotal.Caption), StrToFloat(edtPerda.Text), 1));
  vValorPerda := StrToFloat(lValorPerda.Caption);
  vSoma := vSubTotal + vValorPerda;
  lValorFinal.Caption := FormatFloat('0.00', vSoma);

  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Id').AsInteger := 0;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('IdFichaTecnica').AsInteger := 0;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('idMateriaPrima').AsString := edtIdMateriaPrima.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Descricao').AsString := lNomeMateriaPrima.Caption;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Un').AsString := lUnidade.Caption;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('ValorUnitario').AsString := edtValorUnitario.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Qtde').AsString := edtQtde.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Perda').AsString := edtPerda.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('SubTotal').AsCurrency := vSubTotal;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('ValorPerda').AsCurrency := vValorPerda;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('ValorFinal').AsCurrency := vSoma;
  LimparColunasItens;
  edtIdMateriaPrima.SetFocus;
end;

procedure TfrmFichaTecnica.SalvarFichaTecnicaItemUpdate;
var
  Erros: Integer;

begin
  if dmPrincipal.cdsFichaTecnica.State in [dsEdit] then
  begin
    dmPrincipal.cdsFichaTecnica.FieldByName('Id').AsString:=edtId.Text;
    if dmPrincipal.cdsFichaTecnicaItem.State in [dsEdit] then
      dmPrincipal.cdsFichaTecnicaItem.Post;

    if dmPrincipal.cdsFichaTecnica.State in [dsInsert, dsEdit] then
      dmPrincipal.cdsFichaTecnica.Post;

    dmPrincipal.sqlConexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsFichaTecnicaItem.ChangeCount > 0 then
      Erros := dmPrincipal.cdsFichaTecnicaItem.ApplyUpdates(0);

    if dmPrincipal.cdsFichaTecnica.ChangeCount > 0 then
      Erros := dmPrincipal.cdsFichaTecnica.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlConexao.Commit(TD);
    end
    else
      dmPrincipal.sqlConexao.Rollback(TD);
  end;
end;

function TfrmFichaTecnica.Somar(aValueA, aValueB: Currency; Tipo: Integer): Currency;
var
  LSoma: Currency;
begin
  Result := 0;
  LSoma := 0;
  case Tipo of
    0:
      Result := aValueA * aValueB;
    1:
      Result := aValueA * aValueB / 100;
    2:
      begin
        LSoma := aValueA * aValueB;
        Result := LSoma * aValueB / 100;
        LSoma := LSoma + Result;
        Result := LSoma;
      end;
  end;

end;

procedure TfrmFichaTecnica.UpdateFichaTecnicaItem;
var
  vSubTotal: Currency;
  vValorPerda: Currency;
  vSoma: Currency;
begin
  vSubTotal := 0;
  vValorPerda := 0;
  vSoma := 0;
  lSubTotal.Caption := FormatFloat('0.00', frmFichaTecnica.Somar(StrToFloat(edtValorUnitario.Text), StrToFloat(edtQtde.Text), 0));
  vSubTotal := StrToFloat(lSubTotal.Caption);
  lValorPerda.Caption := FormatFloat('0.00', frmFichaTecnica.Somar(StrToFloat(lSubTotal.Caption), StrToFloat(edtPerda.Text), 1));
  vValorPerda := StrToFloat(lValorPerda.Caption);
  vSoma := vSubTotal + vValorPerda;
  lValorFinal.Caption := FormatFloat('0.00', vSoma);

  if Not vInsert then
  dmPrincipal.cdsFichaTecnicaItem.Edit
  else
  dmPrincipal.cdsFichaTecnicaItem.Append;

  dmPrincipal.cdsFichaTecnicaItem.FieldByName('IdMateriaPrima').AsString := edtIdMateriaPrima.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('IdFichaTecnica').AsString := edtId.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Descricao').AsString := lNomeMateriaPrima.Caption;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('ValorUnitario').AsString := edtValorUnitario.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Qtde').AsString := edtQtde.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('Perda').AsString := edtPerda.Text;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('SubTotal').AsCurrency := vSubTotal;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('ValorPerda').AsCurrency := vValorPerda;
  dmPrincipal.cdsFichaTecnicaItem.FieldByName('ValorFinal').AsCurrency := vSoma;
end;

end.
