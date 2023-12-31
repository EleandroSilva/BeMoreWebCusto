unit ufrmSearchMarkupNome;

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
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,

  Data.DB,

  ufrmModeloPesquisa,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller;

type
  TfrmSearchMarkupNome = class(TfrmModeloPesquisa)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSearchExit(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgSearchKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSearchExit(Sender: TObject);
    procedure dbgSearchEnter(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FController : iController;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchMarkupNome: TfrmSearchMarkupNome;

implementation

uses
  ufrmMontarCusto, ufrmCustoMarkup;

{$R *.dfm}

procedure TfrmSearchMarkupNome.btnSearchClick(Sender: TObject);
begin
  FController
    .Entidades
    .MarkupNome
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

procedure TfrmSearchMarkupNome.dbgSearchEnter(Sender: TObject);
begin
  frmSearchMarkupNome.KeyPreview := False;
end;

procedure TfrmSearchMarkupNome.dbgSearchExit(Sender: TObject);
begin
  frmSearchMarkupNome.KeyPreview := True;
end;

procedure TfrmSearchMarkupNome.dbgSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    frmSearchMarkupNome.Close;
end;

procedure TfrmSearchMarkupNome.dbgSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmSearchMarkupNome.Close;
  end;

  case Key of
    VK_TAB :
     edtSearch.SetFocus;
  end;
end;

procedure TfrmSearchMarkupNome.edtSearchExit(Sender: TObject);
begin
  btnSearch.Click;
end;

procedure TfrmSearchMarkupNome.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if not DataSource1.DataSet.IsEmpty then
  begin
    if frmSearchMarkupNome.lfrmExecutando.Caption = 'frmMontarCusto' then
      frmMontarCusto.edtIdRegiao.Text := DataSource1.DataSet.FieldByName('Id').AsString;

    if frmSearchMarkupNome.lfrmExecutando.Caption = 'frmCustoMarkupMarkupNome' then
      frmCustoMarkup.edtIdMarkupNomeFiltro.Text := DataSource1.DataSet.FieldByName('Id').AsString;
  end;
  frmSearchMarkupNome := nil;
  Action := caFree;
end;

procedure TfrmSearchMarkupNome.FormCreate(Sender: TObject);
begin
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmSearchMarkupNome.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmSearchMarkupNome.Close;
  end;
end;

procedure TfrmSearchMarkupNome.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Pesquisa Nome Markup:';
  rgChoice.ItemIndex := 2;
  if ((frmSearchMarkupNome.lfrmExecutando.Caption = 'frmMontarCusto') or (frmSearchMarkupNome.lfrmExecutando.Caption = 'frmCustoMarkupMarkupNome')) then
  begin
    btnSearch.Click;
    edtSearch.SetFocus;
  end;
end;

end.
