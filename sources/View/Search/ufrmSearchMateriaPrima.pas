unit ufrmSearchMateriaPrima;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Data.DB,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,

  ufrmModeloPesquisa,
  ufrmFichaTecnica,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller, System.ImageList, Vcl.ImgList;

type
  TfrmSearchMaterial = class(TfrmModeloPesquisa)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dbgSearchCellClick(Column: TColumn);
    procedure dbgSearchColEnter(Sender: TObject);
    procedure dbgSearchDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtSearchExit(Sender: TObject);
    procedure dbgSearchEnter(Sender: TObject);
    procedure dbgSearchExit(Sender: TObject);
    procedure dbgSearchKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FController: iController;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchMaterial: TfrmSearchMaterial;

implementation

{$R *.dfm}


procedure TfrmSearchMaterial.btnSearchClick(Sender: TObject);
begin
  FController
    .Entidades
    .MateriaPrima
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgChoice.ItemIndex)
    .TextoFiltro(edtSearch.Text)
    .Buscar(edtSearch.Text);

  if DataSource1.DataSet.IsEmpty then
  begin
   edtSearch.Clear;
   edtSearch.SetFocus;
   raise Exception.Create('Registro n�o encontrado, tentar outro filtro!');
  end
  else
  dbgSearch.SetFocus;
end;

procedure TfrmSearchMaterial.dbgSearchCellClick(Column: TColumn);
begin
  if not dbgSearch.Fields[5].IsNull then
    if Column.Field = DataSource1.DataSet.FieldByName('Ativo') then
    begin
      DataSource1.DataSet.Edit;

      if DataSource1.DataSet.FieldByName('Ativo').AsString = 'SIM' then
        DataSource1.DataSet.FieldByName('Ativo').AsString := 'NAO'
      else
        DataSource1.DataSet.FieldByName('Ativo').AsString := 'SIM';
    end;
end;

procedure TfrmSearchMaterial.dbgSearchColEnter(Sender: TObject);
begin
  if dbgSearch.SelectedField = DataSource1.DataSet.FieldByName('Ativo') then
    dbgSearch.Options := dbgSearch.Options - [DgEditing]
  else
    dbgSearch.Options := dbgSearch.Options + [DgEditing];
end;

procedure TfrmSearchMaterial.dbgSearchDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  // pinta checkbox
  if Column.Field = DataSource1.DataSet.FieldByName('Ativo') then
  begin
    dbgSearch.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgSearch.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if DataSource1.DataSet.FieldByName('Ativo').AsString = 'SIM' then
      ImageList1.Draw(dbgSearch.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgSearch.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmSearchMaterial.dbgSearchEnter(Sender: TObject);
begin
  frmSearchMaterial.KeyPreview := False;
end;

procedure TfrmSearchMaterial.dbgSearchExit(Sender: TObject);
begin
 frmSearchMaterial.KeyPreview := True;
end;

procedure TfrmSearchMaterial.dbgSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    frmSearchMaterial.Close;
end;

procedure TfrmSearchMaterial.dbgSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmSearchMaterial.Close;
  end;

  case Key of
    VK_TAB :
     edtSearch.SetFocus;
  end;
end;

procedure TfrmSearchMaterial.edtSearchExit(Sender: TObject);
begin
  btnSearch.Click;
end;

procedure TfrmSearchMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if not DataSource1.DataSet.IsEmpty then
  begin
    if frmSearchMaterial.lfrmExecutando.Caption = 'frmFichaTecnica' then
      frmFichaTecnica.edtIdMateriaPrima.Text := DataSource1.DataSet.FieldByName('Id').AsString;

  end;
  frmSearchMaterial := nil;
  Action := caFree;
end;

procedure TfrmSearchMaterial.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmSearchMaterial.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Pesquisa Mat�ria Prima';

  if frmSearchMaterial.lfrmExecutando.Caption = 'frmFichaTecnica' then
  begin
    btnSearch.Click;
    edtSearch.SetFocus;
  end;
end;

end.
