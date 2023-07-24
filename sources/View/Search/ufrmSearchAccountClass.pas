unit ufrmSearchAccountClass;

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
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.DBCtrls,

  Data.DB,

  ufrmModeloPesquisa,

  Whorkshop.Controller,
  Whorkshop.Controller.Interfaces, System.ImageList, Vcl.ImgList;

type
  TfrmSearchAccountClass = class(TfrmModeloPesquisa)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmSearchAccountClass: TfrmSearchAccountClass;

implementation

uses
  ufrmFixedExpense, udmPrincipal;

{$R *.dfm}


procedure TfrmSearchAccountClass.btnSearchClick(Sender: TObject);
begin
  FController
    .Entidades
    .ClasseContas
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgChoice.ItemIndex)
    .TextoFiltro(edtSearch.Text)
    .Buscar(edtSearch.Text);

  if DataSource1.DataSet.IsEmpty then
  begin
    edtSearch.Clear;
    edtSearch.SetFocus;
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado);
  end;

end;

procedure TfrmSearchAccountClass.dbgSearchEnter(Sender: TObject);
begin
  frmSearchAccountClass.KeyPreview := False;
end;

procedure TfrmSearchAccountClass.dbgSearchExit(Sender: TObject);
begin
  frmSearchAccountClass.KeyPreview := True;
end;

procedure TfrmSearchAccountClass.dbgSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    frmSearchAccountClass.Close;
end;

procedure TfrmSearchAccountClass.dbgSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmSearchAccountClass.Close;
  end;

  case Key of
    VK_TAB :
     edtSearch.SetFocus;
  end;
end;

procedure TfrmSearchAccountClass.edtSearchExit(Sender: TObject);
begin
  btnSearch.Click;

  if Not DataSource1.DataSet.IsEmpty then
  dbgSearch.SetFocus;
end;

procedure TfrmSearchAccountClass.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if frmSearchAccountClass.lfrmExecutando.Caption = 'frmFixedExpense' then
    frmFixedExpense.edtIdClasseContas.Text := DataSource1.DataSet.FieldByName('Id_CCC').AsString;

  frmSearchAccountClass := nil;
  Action := caFree;
end;

procedure TfrmSearchAccountClass.FormCreate(Sender: TObject);
begin
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmSearchAccountClass.FormShow(Sender: TObject);
begin
  lTextoEmpresa.Caption := 'Pesquisa Classe de contas';
  edtSearch.SetFocus;
end;

end.
