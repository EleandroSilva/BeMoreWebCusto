unit ufrmSearchRegiaoPessoa;

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

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller, System.ImageList, Vcl.ImgList;

type
  TfrmPesquisaRegiaoPessoa = class(TfrmModeloPesquisa)
    procedure btnSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgSearchKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgSearchEnter(Sender: TObject);
    procedure dbgSearchExit(Sender: TObject);
  private
    FController: iController;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaRegiaoPessoa: TfrmPesquisaRegiaoPessoa;

implementation

{$R *.dfm}


uses ufrmCustoMarkup;
procedure TfrmPesquisaRegiaoPessoa.btnSearchClick(Sender: TObject);
begin
  FController
    .Entidades
    .RegiaoPessoa
    .DataSet(DataSource1)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgChoice.ItemIndex)
    .TextoFiltro(edtSearch.Text)
    .Buscar(edtSearch.Text);
end;

procedure TfrmPesquisaRegiaoPessoa.dbgSearchEnter(Sender: TObject);
begin
  frmPesquisaRegiaoPessoa.KeyPreview := False;
end;

procedure TfrmPesquisaRegiaoPessoa.dbgSearchExit(Sender: TObject);
begin
  frmPesquisaRegiaoPessoa.KeyPreview := True;
end;

procedure TfrmPesquisaRegiaoPessoa.dbgSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    frmPesquisaRegiaoPessoa.Close;
end;

procedure TfrmPesquisaRegiaoPessoa.dbgSearchKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmPesquisaRegiaoPessoa.Close;
  end;

  case Key of
    VK_TAB:
      edtSearch.SetFocus;
  end;
end;

procedure TfrmPesquisaRegiaoPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  if not DataSource1.DataSet.IsEmpty then
   if frmPesquisaRegiaoPessoa.lfrmExecutando.Caption = 'frmCustoMarkupRegiaoPessoaNome' then
    frmCustoMarkup.edtIdRegiaoPessoa.Text := DataSource1.DataSet.FieldByName('Id').AsString;

  frmPesquisaRegiaoPessoa := nil;
  Action := caFree;
end;

procedure TfrmPesquisaRegiaoPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmPesquisaRegiaoPessoa.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Pesquisa Regi�o Pessoa';
end;

end.
