unit ufrmSearchModel;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Vcl.ImgList,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,

  ufrmModeloPesquisa,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller;

type
  TfrmSearchModel = class(TfrmModeloPesquisa)
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
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
  frmSearchModel: TfrmSearchModel;

implementation

uses
  ufrmModelProduct,
  ufrmFichaTecnica,
  ufrmMontarCusto;

{$R *.dfm}


procedure TfrmSearchModel.btnSearchClick(Sender: TObject);
begin
  FController
    .Entidades
    .Model
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgChoice.ItemIndex)
    .TextoFiltro(edtSearch.Text)
    .Buscar(edtSearch.Text);

  if DataSource1.DataSet.IsEmpty then
  begin
    edtSearch.Clear;
    edtSearch.SetFocus;
    raise Exception.Create('Registro não encontrado, tentar outro filtro!');
  end
  else
  dbgSearch.SetFocus;
end;

procedure TfrmSearchModel.dbgSearchEnter(Sender: TObject);
begin
 frmSearchModel.KeyPreview := False;
end;

procedure TfrmSearchModel.dbgSearchExit(Sender: TObject);
begin
  frmSearchModel.KeyPreview := True;
end;

procedure TfrmSearchModel.dbgSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    frmSearchModel.Close;
end;

procedure TfrmSearchModel.dbgSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmSearchModel.Close;
  end;

  case Key of
    VK_TAB :
     edtSearch.SetFocus;
  end;
end;

procedure TfrmSearchModel.edtSearchExit(Sender: TObject);
begin
  btnSearch.Click;
end;

procedure TfrmSearchModel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if not DataSource1.DataSet.IsEmpty then
  begin
    if frmSearchModel.lfrmExecutando.Caption = 'frmModelProduct' then
      frmModelProduct.dbIdModelo.Text := DataSource1.DataSet.FieldByName('Id').AsString;

    if frmSearchModel.lfrmExecutando.Caption = 'frmFichaTecnica' then
      frmFichaTecnica.edtDescription.Text := DataSource1.DataSet.FieldByName('Id').AsString;

    if frmSearchModel.lfrmExecutando.Caption = 'frmMontarCusto' then
      frmMontarCusto.edtDescription.Text := DataSource1.DataSet.FieldByName('Id').AsString;

  end;
  frmSearchModel := nil;
  Action := caFree;
end;

procedure TfrmSearchModel.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmSearchModel.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Pesquisa Modelo';



  if ((frmSearchModel.lfrmExecutando.Caption = 'frmFichaTecnica') or (frmSearchModel.lfrmExecutando.Caption = 'frmModelProduct') or
  (frmSearchModel.lfrmExecutando.Caption = 'frmMontarCusto')) then
  begin
    btnSearch.Click;
    edtSearch.SetFocus;
  end;
end;

end.
