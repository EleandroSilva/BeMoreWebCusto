unit ufrmModelProduct;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.ImageList,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.ImgList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ufrmModelo,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller;

type
  TfrmModelProduct = class(TfrmModelo)
    dsModel: TDataSource;
    dsProduct: TDataSource;
    Panel7: TPanel;
    dbgProduct: TDBGrid;
    Panel10: TPanel;
    dbgModelProduct: TDBGrid;
    Label5: TLabel;
    btnModel: TBitBtn;
    pProduct: TPanel;
    Panel8: TPanel;
    Label2: TLabel;
    edtProduct: TEdit;
    btnSearchProduct: TBitBtn;
    rgProduct: TRadioGroup;
    Panel11: TPanel;
    dbgModeloProduto: TDBGrid;
    dbId: TDBEdit;
    MdbReleaseDate: TDBEdit;
    dbIdModelo: TDBEdit;
    lModel: TDBText;
    dbOperador: TDBEdit;
    Panel3: TPanel;
    dbnModeloProdutoItem: TDBNavigator;
    DBText1: TDBText;
    Label3: TLabel;
    pNovoProduto: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    lNomeProduto: TDBText;
    btnCancelaProduto: TBitBtn;
    edtIdProduto: TDBEdit;
    btnNovoProduto: TBitBtn;
    cbMarcarDesmarcarTodos: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSalveClick(Sender: TObject);
    procedure dblcbModelExit(Sender: TObject);
    procedure dbgProductDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgProductCellClick(Column: TColumn);
    procedure dbgProductColEnter(Sender: TObject);
    procedure btnSearchProductClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnModelClick(Sender: TObject);
    procedure edtProductExit(Sender: TObject);
    procedure dbgModelProductDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtSearchExit(Sender: TObject);
    procedure dbgModeloProdutoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPrintClick(Sender: TObject);
    procedure dbIdModeloExit(Sender: TObject);
    procedure dbIdModeloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbIdModeloKeyPress(Sender: TObject; var Key: Char);
    procedure NavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnCancelaProdutoClick(Sender: TObject);
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure edtIdProdutoExit(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure cbMarcarDesmarcarTodosClick(Sender: TObject);
    procedure rgChoiceClick(Sender: TObject);
  private
    FController: iController;

    function PesquisaModeloProduto(aValue: String): Boolean;
    function PesquisaModeloProdutoItem(aValue: String): Boolean;
    function PesquisaModelo(aValue: String): Boolean;
    function PesquisaProduto(aValue: String): Boolean;
    function ListaModeloProdutoImprimir(aValue: String): Boolean;

    procedure AtualizaNew;
    procedure AtualizarSearch;
    procedure AtualizarSalve;

    procedure InserirModeloProduto;
    procedure SalvarModeloProduto;
    procedure InserirModeloProdutoItem;
    procedure InserirModeloProdutoItemAlterando;

    function PegarGenId: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelProduct: TfrmModelProduct;

implementation

uses
  ufrmSearchModel,
  ufrmModel,
  udmEntidade.Relatorios,
  udmPrincipal;

{$R *.dfm}


function TfrmModelProduct.PegarGenId: Integer;
begin
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select gen_id(GEN_MODELOPRODUTO_ID,0) from rdb$database ');
  Result := dmPrincipal.queryAuxiliar.FieldByName('gen_id').AsInteger;
  dmPrincipal.queryAuxiliar.Active := False;
end;

procedure TfrmModelProduct.InserirModeloProduto;
begin
  if not dmPrincipal.cdsModeloProduto.Active then
  begin
    dmPrincipal.sqlModeloProduto.Active := False;
    dmPrincipal.sqlModeloProduto.CommandText := ('select ' +
      'mp.id, ' +
      'mp.idmodelo, ' +
      'm.descricao Modelo, ' +
      'mp.datalancamento, ' +
      'mp.operador, ' +
      'mp.ativo ' +
      'from ModeloProduto mp ' +
      'inner join Modelo m on m.id = mp.idmodelo ' +
      'where mp.id=:Id ');
    dmPrincipal.sqlModeloProduto.Params.ParamByName('ID').DataType := ftInteger;
    dmPrincipal.sqlModeloProduto.Params.ParamValues['ID'] := 0;
    dmPrincipal.cdsModeloProduto.Active := True;
  end;
  dmPrincipal.cdsModeloProduto.Append;

  dmPrincipal.cdsModeloProduto.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsModeloProduto.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsModeloProduto.FieldByName('DataLancamento').AsDateTime := Now;
  dmPrincipal.cdsModeloProduto.FieldByName('Ativo').AsInteger := 1;
end;

procedure TfrmModelProduct.SalvarModeloProduto;
var
  Erros: Integer;
begin
  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirma��o', mb_Yesno) = IDYES then
  begin
    if dmPrincipal.Alterar = False then
      InserirModeloProdutoItem;

    if dmPrincipal.cdsModeloProdutoItem.State in [DsInsert, DsEdit] then
      dmPrincipal.cdsModeloProdutoItem.Post;

    if dmPrincipal.cdsModeloProduto.State in [DsInsert, DsEdit] then
      dmPrincipal.cdsModeloProduto.Post;

    dmPrincipal.sqlconexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsModeloProduto.ChangeCount > 0 then
      Erros := dmPrincipal.cdsModeloProduto.ApplyUpdates(0);

    if dmPrincipal.cdsModeloProdutoItem.ChangeCount > 0 then
      Erros := dmPrincipal.cdsModeloProdutoItem.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlconexao.Commit(TD);
      ShowMessage('Parab�ns... ' + edtOperator.Text + ' Registro salvo com sucesso!');
      dmPrincipal.FecharQuery;
    end
    else
    begin
      dmPrincipal.sqlconexao.Rollback(TD);
      ShowMessage('Aten��o... ' + edtOperator.Text + ' Ocorreu algum erro, registro ser� cancelado!');
      dmPrincipal.FecharQuery;
    end;
    AtualizarSalve;
  end
  else
    Abort;
end;

procedure TfrmModelProduct.InserirModeloProdutoItem;
begin
  if not dmPrincipal.cdsModeloProduto.IsEmpty then
    if not dsProduct.DataSet.IsEmpty then
    begin
      dsProduct.DataSet.First;
      if not dmPrincipal.cdsModeloProdutoItem.Active then
      begin
        dmPrincipal.sqlModeloProdutoItem.Active := False;
        dmPrincipal.sqlModeloProdutoItem.CommandText := ('select ' +
          'mpi.id, ' +
          'mpi.idmodeloproduto, ' +
          'mpi.idProduto, ' +
          'pro.descricao Produto ' +
          'from ModeloProdutoItem mpi ' +
          'inner join Cad_Pro pro on pro.id_Pro = mpi.IdProduto ' +
          'where mpi.idmodeloProduto=:Id ');
        dmPrincipal.sqlModeloProdutoItem.Params.ParamByName('ID').DataType := ftInteger;
        dmPrincipal.sqlModeloProdutoItem.Params.ParamValues['ID'] := 0;

        dmPrincipal.cdsModeloProdutoItem.Active := False;
        dmPrincipal.cdsModeloProdutoItem.Active := True;
      end;

      while not dsProduct.DataSet.Eof do
      begin
        if dsProduct.DataSet.FieldByName('Enviar').AsInteger = 1 then
        begin
          dmPrincipal.cdsModeloProdutoItem.Append;
          dmPrincipal.cdsModeloProdutoItem.FieldByName('ID').AsInteger := 0;
          dmPrincipal.cdsModeloProdutoItem.FieldByName('IDModeloProduto').AsInteger := 0;
          dmPrincipal.cdsModeloProdutoItem.FieldByName('IdProduto').AsString := dbgProduct.Fields[0].AsString;
          dmPrincipal.cdsModeloProdutoItem.FieldByName('Produto').AsString := dbgProduct.Fields[2].AsString;
          dmPrincipal.queryAuxiliar.Active := False;
        end;
        dsProduct.DataSet.Next;
      end;
    end;
end;

procedure TfrmModelProduct.InserirModeloProdutoItemAlterando;
begin
  //
end;

function TfrmModelProduct.ListaModeloProdutoImprimir(aValue: String): Boolean;
var
  lSQL, lSQL1, lFrom, lWhere, lOrdem: String;
begin
  lSQL := '';
  lSQL1 := '';
  lFrom := '';
  lWhere := '';
  lOrdem := '';

  lSQL := ('select ' +
    'mpi.id, ' +
    'mp.idmodelo, ' +
    'm.descricao Modelo, ' +

    'mpi.idmodeloproduto, ' +
    'mpi.idProduto, ' +

    'case when cor.descricao=''.'' then pro.descricao ' +
    '   else (pro.descricao||'' ''||cor.descricao) ' +
    'end Produto, ' +

    '( ' +
    ' select ' +
    '   count(*) QtdeModelo ' +
    ' from ModeloProdutoItem mpi ' +
    ' inner join ModeloProduto mp1 on mp1.id = mpi.idmodeloproduto ' +
    ' where mp1.idmodelo = mp.IdModelo ' +
    '), ');

  if aValue <> '' then
    lSQL1 := ('( ' +
      ' select ' +
      '   count(*) QtdeRegistro ' +
      ' from ModeloProdutoItem mpi ' +
      ' inner join ModeloProduto mp1 on mp1.id = mpi.idmodeloproduto ' +
      ' where mpi.IdModeloProduto=' + aValue + '' +
      ') ')
  else
    lSQL1 := ('( ' +
      ' select ' +
      '   count(*) QtdeRegistro ' +
      ' from ModeloProdutoItem mpi ' +
      ' inner join ModeloProduto mp1 on mp1.id = mpi.idmodeloproduto ' +
      ') ');

  lFrom := ('from ModeloProdutoItem mpi ' +
    'inner join ModeloProduto mp on mp.id          = mpi.idmodeloproduto ' +
    'inner join Modelo         m on m.id           = mp.idmodelo ' +
    'inner join Cad_Pro      pro on pro.id_Pro     = mpi.IdProduto ' +
    'inner join cad_cores    cor on cor.id_cod_cor = pro.id_cod_cor ');

  if aValue <> '' then
    lWhere := ('where mp.Id=' + aValue + ' ');

  lOrdem := ('Order by mp.Id asc, mp.IdModelo asc, (pro.descricao||'' ''||cor.descricao) ');

  dmPrincipal.sqlListaModeloProduto.Active := False;
  dmPrincipal.sqlListaModeloProduto.CommandText := lSQL + lSQL1 + lFrom + lWhere + lOrdem;
  dmPrincipal.cdsListaModeloProduto.Active := False;
  dmPrincipal.cdsListaModeloProduto.Active := True;

  if dmPrincipal.cdsListaModeloProduto.IsEmpty then
    Result := False
  else
    Result := True;
end;

procedure TfrmModelProduct.NavigatorClick(Sender: TObject;
  Button:
  TNavigateBtn);
begin
  if not dmPrincipal.cdsModeloProduto.IsEmpty then
    frmModelProduct.PesquisaModeloProdutoItem(dmPrincipal.cdsModeloProduto.FieldByName('Id').AsString)
end;

procedure TfrmModelProduct.AtualizarSearch;
begin
  btnCancel.Enabled := True;
  btnUpdate.Enabled := True;
  btnDelete.Enabled := True;
  btnCancel.Enabled := True;
  btnUpdate.Enabled := True;
  btnNew.Enabled := False;
end;

procedure TfrmModelProduct.AtualizaNew;
begin
  btnNew.Enabled := False;
  btnCancel.Enabled := True;
  btnUpdate.Enabled := False;
  btnDelete.Enabled := False;
  btnSalve.Enabled := False;
  btnSearch.Enabled := False;
end;

procedure TfrmModelProduct.AtualizarSalve;
begin
  btnNew.Enabled := True;
  btnCancel.Enabled := False;
  btnUpdate.Enabled := False;
  btnDelete.Enabled := False;
  btnSalve.Enabled := False;
  btnSearch.Enabled := True;
  btnNew.SetFocus;
end;

procedure TfrmModelProduct.btnCancelaProdutoClick(Sender: TObject);
begin
  dmPrincipal.cdsModeloProdutoItem.Edit;
  if dmPrincipal.cdsModeloProdutoItem.State in [DsInsert, DsEdit] then
    dmPrincipal.cdsModeloProdutoItem.Delete;
end;

procedure TfrmModelProduct.btnCancelClick(Sender: TObject);
begin
  dmPrincipal.FecharQuery;
  inherited;
end;

procedure TfrmModelProduct.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmModelProduct.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir este registro?', 'Confirma��o', mb_Yesno) = IDYES then
  begin
    FController
      .Entidades
      .ModelProduct
      .DataSet(DataSource1)
      .Delete(dmPrincipal.cdsModeloProduto.FieldByName('Id').AsString);

    edtSearch.Clear;
    btnSearch.Click;
  end
  else
    raise Exception.Create('Usu�rio escolheu n�o excluir o registro!');
end;

procedure TfrmModelProduct.btnModelClick(Sender: TObject);
begin
  Application.CreateForm(TfrmModel, frmModel);
  frmModel.lfrmExecutando.Caption := 'frmModelProduct';
  frmModel.ShowModal;
end;

procedure TfrmModelProduct.btnNewClick(Sender: TObject);
begin
  dmPrincipal.Alterar := False;
  pNovoProduto.Visible := False;

  pgMain.ActivePageIndex := 0;

  InserirModeloProduto;
  MdbReleaseDate.SetFocus;
  AtualizaNew;
end;

procedure TfrmModelProduct.btnNovoProdutoClick(Sender: TObject);
begin
  dmPrincipal.cdsModeloProdutoItem.Append;
  edtIdProduto.SetFocus;
end;

procedure TfrmModelProduct.btnPrintClick(Sender: TObject);
begin
  if not dmPrincipal.cdsModeloProduto.IsEmpty then
  begin
    if edtSearch.Text <> '' then
      frmModelProduct.ListaModeloProdutoImprimir(dmPrincipal.cdsModeloProduto.FieldByName('Id').AsString)
    else
      frmModelProduct.ListaModeloProdutoImprimir('');
    if dmPrincipal.cdsListaModeloProduto.IsEmpty then
      raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado)
    else
      dmEntidadeRelatorios.pprModeloProduto.Print;
  end
  else
    raise Exception.Create(dmPrincipal.cMSGImpressao);
end;

procedure TfrmModelProduct.btnSalveClick(Sender: TObject);
begin
  SalvarModeloProduto;
  dmPrincipal.FecharQuery;
  AtualizarSalve;

  if Application.MessageBox('Deseja visualizar registros?', 'Confirma��o', mb_Yesno) = IDYES then
    btnSearch.Click;
  // inherited;
end;

procedure TfrmModelProduct.btnSearchClick(Sender: TObject);
begin
  if not frmModelProduct.PesquisaModeloProduto(edtSearch.Text) then
  begin
    btnCancel.Click;
    edtSearch.Clear;
    pgMain.ActivePageIndex := 1;
    edtSearch.SetFocus;
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado);
  end
  else
  begin
    if edtSearch.Text <> '' then
      frmModelProduct.PesquisaModeloProdutoItem(dmPrincipal.cdsModeloProduto.FieldByName('Id').AsString)
    else
      frmModelProduct.PesquisaModeloProdutoItem('');
    pgMain.ActivePageIndex := 1;
  end;

  AtualizarSearch;
end;

procedure TfrmModelProduct.btnSearchProductClick(Sender: TObject);
begin
  if not dmPrincipal.cdsModeloProduto.IsEmpty then
    FController
      .Entidades
      .Product
      .DataSet(dsProduct)
      .Ativo(rgActive.ItemIndex)
      .EscolhaFiltro(rgProduct.ItemIndex)
      .TextoFiltro(edtProduct.Text)
      .Buscar(edtProduct.Text);
end;

procedure TfrmModelProduct.btnUpdateClick(Sender: TObject);
begin
  if trim(edtSearch.Text) = '' then
    raise Exception.Create(dmPrincipal.cMSGAlterar);
  dmPrincipal.cdsModeloProduto.Edit;
  dmPrincipal.cdsModeloProdutoItem.Edit;
  dmPrincipal.Alterar := True;
  pNovoProduto.Visible := True;
  btnSalve.Enabled := True;
  btnNovoProduto.SetFocus;
end;

procedure TfrmModelProduct.cbMarcarDesmarcarTodosClick(Sender: TObject);
begin
  dsProduct.DataSet.First;
  //dsProduct.DataSet.DisableControls;
  while not dsProduct.DataSet.Eof do
  begin
    dsProduct.DataSet.Edit;
    if not cbMarcarDesmarcarTodos.Checked then
      dsProduct.DataSet.FieldByName('enviar').AsInteger := 0
    else
      dsProduct.DataSet.FieldByName('enviar').AsInteger := 1;
    dsProduct.DataSet.Next;
  end;
  dsProduct.DataSet.First;
  //dsProduct.DataSet.EnableControls;
end;

procedure TfrmModelProduct.dbgModelProductDrawColumnCell(Sender: TObject;
  const
  Rect:
  TRect;
  DataCol:
  Integer;
  Column:
  TColumn;
  State:
  TGridDrawState);
begin
  inherited;
  If Odd(TDBGrid(Sender).DATASOURCE.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := $00757575
  Else
    TDBGrid(Sender).Canvas.Brush.Color := $0053A9FF;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmModelProduct.dbgProductCellClick(Column: TColumn);
begin
  if not dbgProduct.Fields[1].IsNull then
    if Column.Field = dsProduct.DataSet.FieldByName('Enviar') then
    begin
      dsProduct.DataSet.Edit;

      if dsProduct.DataSet.FieldByName('Enviar').AsInteger = 1 then
        dsProduct.DataSet.FieldByName('Enviar').AsInteger := 0
      else
        dsProduct.DataSet.FieldByName('Enviar').AsInteger := 1;
    end;
end;

procedure TfrmModelProduct.dbgProductColEnter(Sender: TObject);
begin
  if dbgProduct.SelectedField = dsProduct.DataSet.FieldByName('Enviar') then
    dbgProduct.Options := dbgProduct.Options - [DgEditing]
  else
    dbgProduct.Options := dbgProduct.Options + [DgEditing];
end;

procedure TfrmModelProduct.dbgProductDrawColumnCell(Sender: TObject;
  const
  Rect:
  TRect;
  DataCol:
  Integer;
  Column:
  TColumn;
  State:
  TGridDrawState);
begin
  If Odd(TDBGrid(Sender).DATASOURCE.DataSet.RecNo) Then
    TDBGrid(Sender).Canvas.Brush.Color := clActiveCaption
  Else
    TDBGrid(Sender).Canvas.Brush.Color := clInfoBk;

  If (State = [GdSelected]) Or (State = [GdFocused]) Or (State = [GdSelected, GdFocused]) Then
  Begin
    TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    TDBGrid(Sender).Canvas.Font.Color := clBlack;
  End;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  // pinta checkbox
  if Column.Field = dsProduct.DataSet.FieldByName('Enviar') then
  begin
    dbgProduct.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgProduct.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dsProduct.DataSet.FieldByName('Enviar').AsInteger = 1 then
      ImageList1.Draw(dbgProduct.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgProduct.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmModelProduct.dbgModeloProdutoDrawColumnCell(Sender: TObject;
  const
  Rect:
  TRect;
  DataCol:
  Integer;
  Column:
  TColumn;
  State:
  TGridDrawState);
begin
  inherited;
  If Odd(TDBGrid(Sender).DATASOURCE.DataSet.RecNo) Then
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

procedure TfrmModelProduct.dbIdModeloExit(Sender: TObject);
begin
  if dbIdModelo.Text = '' then
  begin
    dbIdModelo.SetFocus;
    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Favor informar Id Modelo!');
  end;

  if frmModelProduct.PesquisaModelo(dbIdModelo.Text) then
  begin
    dmPrincipal.cdsModeloProduto.FieldByName('Modelo').AsString := dmPrincipal.queryAuxiliar.FieldByName('Modelo').AsString;
    edtProduct.SetFocus;
  end
  else
  begin
    dmPrincipal.cdsModeloProduto.FieldByName('Modelo').Clear;
    dbIdModelo.SetFocus;
    raise Exception.Create('Registro n�o encontrado!');
  end;
end;

procedure TfrmModelProduct.dbIdModeloKeyDown(Sender: TObject;
  var
  Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmSearchModel, frmSearchModel);
        frmSearchModel.lfrmExecutando.Caption := 'frmModelProduct';
        frmSearchModel.ShowModal;
      end;
  end;
end;

procedure TfrmModelProduct.dbIdModeloKeyPress(Sender: TObject;
  var
  Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmModelProduct.dblcbModelExit(Sender: TObject);
begin
  inherited;
  FController
    .Entidades
    .Model
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(0)
    .Buscar('');
end;

procedure TfrmModelProduct.edtIdProdutoExit(Sender: TObject);
begin
  if PesquisaProduto(edtIdProduto.Text) then
  begin
    dmPrincipal.cdsModeloProdutoItem.FieldByName('Id').AsInteger := 0;
    dmPrincipal.cdsModeloProdutoItem.FieldByName('IdModeloProduto').AsString := dmPrincipal.cdsModeloProduto.FieldByName('Id').AsString;
    dmPrincipal.cdsModeloProdutoItem.FieldByName('IdProduto').AsString := dmPrincipal.queryAuxiliar.FieldByName('IdProduto').AsString;
    dmPrincipal.cdsModeloProdutoItem.FieldByName('Produto').AsString := dmPrincipal.queryAuxiliar.FieldByName('Produto').AsString;
    btnNovoProduto.SetFocus;
  end
  else
  begin
    edtIdProduto.SetFocus;
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado);
  end;
end;

procedure TfrmModelProduct.edtProductExit(Sender: TObject);
begin
  inherited;
  btnSalve.Enabled := True;
  btnSearchProduct.Click;
end;

procedure TfrmModelProduct.edtSearchExit(Sender: TObject);
begin
  {
    if ((not DataSource1.DataSet.IsEmpty) and (edtSearch.Text <> '')) then
    btnDelete.Enabled := true
    else
    btnDelete.Enabled := false;
  }
end;

procedure TfrmModelProduct.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if ((rgChoice.ItemIndex = 0) or (rgChoice.ItemIndex = 1)) then
    if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
      Key := #0;
end;

procedure TfrmModelProduct.FormClose(Sender: TObject;
  var
  Action:
  TCloseAction);
begin
  dmPrincipal.FecharQuery;
  inherited;
  frmModelProduct := nil;
  Action := caFree;
end;

procedure TfrmModelProduct.FormCreate(Sender: TObject);
begin
  inherited;

  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmModelProduct.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Combina��o Modelo/Produtos';

  edtOperator.Text := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;

  rgChoice.ItemIndex := 0;
end;

function TfrmModelProduct.PesquisaModelo(aValue: String): Boolean;
begin
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'm.Id, ' +
    'm.Descricao Modelo ' +
    'from Modelo m ' +
    'where m.Id=' + aValue + '');
  dmPrincipal.queryAuxiliar.Active := True;
  if dmPrincipal.queryAuxiliar.IsEmpty then
    Result := False
  else
    Result := True;
end;

function TfrmModelProduct.PesquisaModeloProduto(aValue: String): Boolean;
var
  lSQL, lWhere, lOrdem: String;
begin
  lSQL := '';
  lWhere := '';
  lOrdem := '';

  lSQL := ('select ' +
    'mp.id, ' +
    'mp.idmodelo, ' +
    'm.descricao Modelo, ' +
    'mp.datalancamento, ' +
    'mp.operador, ' +
    'mp.ativo ' +
    'from ModeloProduto mp ' +
    'inner join Modelo m on m.id = mp.idmodelo ');

  if aValue <> '' then
    case rgChoice.ItemIndex of
      0:
        lWhere := ('where mp.Id=' + aValue + ' ');
      1:
        lWhere := ('where mp.IdModelo=' + aValue + ' ');
      2:
        lWhere := ('where m.Descricao CONTAINING ''' + aValue + ''' ');
      3:
        lWhere := ('where mp.Operador CONTAINING ''' + aValue + ''' ');
    end;

  case rgChoice.ItemIndex of
    0:
      lOrdem := ('order by mp.Id asc, m.descricao  ');
    1:
      lOrdem := ('order by mp.IdModelo asc  ');
    2:
      lOrdem := ('order by m.descricao  ');
    3:
      lOrdem := ('order by mp.operador  ');
  end;

  dmPrincipal.sqlModeloProduto.Active := False;
  dmPrincipal.sqlModeloProduto.CommandText := (lSQL + lWhere + lOrdem);
  dmPrincipal.cdsModeloProduto.Active := False;
  dmPrincipal.cdsModeloProduto.Active := True;

  if dmPrincipal.cdsModeloProduto.IsEmpty then
    Result := False
  else
    Result := True;
end;

function TfrmModelProduct.PesquisaModeloProdutoItem(aValue: String): Boolean;
var
  lSQL, lWhere, lOrdem: String;
begin
  lSQL := '';
  lWhere := '';
  lOrdem := '';

  lSQL := ('select ' +
    'mpi.id, ' +
    'mpi.idmodeloproduto, ' +
    'mpi.idProduto, ' +
    'case when cor.descricao=''.'' then pro.descricao ' +
    '   else (pro.descricao||'' ''||cor.descricao) ' +
    'end Produto ' +
    'from ModeloProdutoItem mpi ' +
    'inner join Cad_Pro      pro on pro.id_Pro     = mpi.IdProduto ' +
    'inner join Cad_Cores    cor on cor.id_cod_cor = pro.id_cod_cor ');

  if aValue <> '' then
    lWhere := ('where mpi.IdModeloProduto=' + aValue + '');

  lOrdem := ('Order by mpi.IdModeloProduto asc, (pro.descricao||'' ''||cor.descricao) ');

  dmPrincipal.sqlModeloProdutoItem.Active := False;
  dmPrincipal.sqlModeloProdutoItem.CommandText := lSQL + lWhere + lOrdem;

  dmPrincipal.cdsModeloProdutoItem.Active := False;
  dmPrincipal.cdsModeloProdutoItem.Active := True;

  if dmPrincipal.cdsModeloProdutoItem.IsEmpty then
    Result := False
  else
    Result := True;
end;

function TfrmModelProduct.PesquisaProduto(aValue: String): Boolean;
begin
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    'pro.id_pro IdProduto, ' +
    'case when cor.descricao=''.'' then pro.descricao ' +
    '      else (pro.descricao||'' ''||cor.descricao) ' +
    'end Produto ' +
    'from Cad_Pro pro ' +
    'inner join cad_cores cor on cor.id_cod_cor = pro.id_cod_cor ' +
    'where pro.id_pro=' + aValue + '');
  dmPrincipal.queryAuxiliar.Active := True;

  if dmPrincipal.queryAuxiliar.IsEmpty then
    Result := False
  else
    Result := True;
end;

procedure TfrmModelProduct.rgChoiceClick(Sender: TObject);
begin
  edtSearch.Clear;
end;

end.