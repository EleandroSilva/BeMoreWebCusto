unit ufrmLocalProducao;

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
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Data.DB,

  ufrmModelodbEdit,

  udmPrincipal,

  Whorkshop.Controller,
  Whorkshop.Controller.Interfaces, udmEntidade.Relatorios;

type
  TfrmLocalProducao = class(TfrmModelodbEdit)
    dbgCadastro: TDBGrid;
    rgInternoExterno: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure dbgCadastroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSalveClick(Sender: TObject);
    procedure NavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure edtDescriptionExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    FController: iController;
    procedure ValidaStatus;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalProducao: TfrmLocalProducao;

implementation

{$R *.dfm}


procedure TfrmLocalProducao.btnCancelClick(Sender: TObject);
begin
  if dmPrincipal.cdsLocal.State in [DsInsert, DsEdit] then
    dmPrincipal.cdsLocal.Cancel;

  if dmPrincipal.cdsLocal.ChangeCount > 0 then
    dmPrincipal.cdsLocal.CancelUpdates;

  if dmPrincipal.sqlconexao.InTransaction then
    dmPrincipal.sqlconexao.Rollback(TD);

  dmPrincipal.sqlLocal.Active := False;
  dmPrincipal.cdsLocal.Active := False;
  inherited;
end;

procedure TfrmLocalProducao.btnDeleteClick(Sender: TObject);
var
  Erros: Integer;
begin
  if MessageBox(handle, 'Deseja excluir este registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    dmPrincipal.cdsLocal.Delete;

    if not dmPrincipal.sqlconexao.InTransaction then
      dmPrincipal.sqlconexao.StartTransaction(TD);

    Erros := dmPrincipal.cdsLocal.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlconexao.Commit(TD);
      showmessage('Parab�ns ' + edtOperator.Text + ' Registro exclu�do com sucesso!');
    end
    else
    begin
      dmPrincipal.sqlconexao.Rollback(TD);
      showmessage('Aten��o ' + edtOperator.Text + ' Registro n�o pode ser exclu�do!');
      Abort;
    end;

    dmPrincipal.cdsLocal.Active := False;
    dmPrincipal.sqlLocal.Active := False;
    dmPrincipal.sqlLocal.CommandText := ('select * from Local ');
  end;

  inherited;
end;

procedure TfrmLocalProducao.btnImprimirClick(Sender: TObject);
begin
  if not dmPrincipal.cdsLocal.IsEmpty then
    dmEntidadeRelatorios.pprLocal.Print
  else
    raise Exception.Create(dmPrincipal.cMSGImpressao);
end;

procedure TfrmLocalProducao.btnNewClick(Sender: TObject);
begin
  dmPrincipal.sqlLocal.Active := False;
  dmPrincipal.sqlLocal.CommandText := ('select * from Local where id=0 ');
  dmPrincipal.cdsLocal.Active := True;
  dmPrincipal.cdsLocal.Append;
  dmPrincipal.cdsLocal.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsLocal.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsLocal.FieldByName('DataLancamento').AsDateTime := Now;

  dmPrincipal.cdsLocal.FieldByName('Ativo').AsInteger := 1;

    inherited;
end;

procedure TfrmLocalProducao.btnSalveClick(Sender: TObject);
var
  Erros: Integer;
begin
  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirma��o', mb_Yesno) = IDYES then
  begin
    dmPrincipal.cdsLocal.Edit;

    dmPrincipal.cdsLocal.FieldByName('Status').AsInteger := rgInternoExterno.ItemIndex;

    if dmPrincipal.cdsLocal.State in [DsInsert, DsEdit] then
      dmPrincipal.cdsLocal.Post;

    dmPrincipal.sqlconexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsLocal.ChangeCount > 0 then
      Erros := dmPrincipal.cdsLocal.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlconexao.Commit(TD);
      showmessage('Parab�ns... ' + edtOperator.Text + ' Registro salvo com sucesso!');
      dmPrincipal.cdsLocal.Active := False;
    end
    else
    begin
      dmPrincipal.sqlconexao.Rollback(TD);
      showmessage('Aten��o... ' + edtOperator.Text + ' Ocorreu algum erro, registro ser� cancelado!');
    end;
    inherited;
    btnCancel.Click;
  end
  else
    Abort;
end;

procedure TfrmLocalProducao.btnSearchClick(Sender: TObject);
begin
  try
    dmPrincipal.sqlLocal.Active := False;
    dmPrincipal.sqlLocal.CommandText := ('select * from Local ' +
      'where ativo=1 ' +
      'order by descricao ');
    dmPrincipal.cdsLocal.Active := False;
    dmPrincipal.cdsLocal.Active := True;

    if dmPrincipal.cdsLocal.IsEmpty then
    begin
      raise Exception.Create('Aten��o... ' + FController
        .EntidadesEmpresaLogada
        .DadosEmpresaLogada
        .Operador + ' Registro n�o encontrado!');
    end
    else
    ValidaStatus;

  finally

  end;

  inherited;

end;

procedure TfrmLocalProducao.btnUpdateClick(Sender: TObject);
begin
  inherited;
  dmPrincipal.cdsLocal.Edit;
end;

procedure TfrmLocalProducao.dbgCadastroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
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

procedure TfrmLocalProducao.edtDescriptionExit(Sender: TObject);
begin
  if edtDescription.Text <> '' then
  begin
    btnSalve.Enabled := True;
    btnSalve.SetFocus;
  end
  else
    edtDescription.SetFocus;
end;

procedure TfrmLocalProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmPrincipal.FecharQuery;
  frmLocalProducao := nil;
  Action := caFree;
end;

procedure TfrmLocalProducao.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmLocalProducao.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Local de Produ��o';
end;

procedure TfrmLocalProducao.NavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  ValidaStatus;
end;

procedure TfrmLocalProducao.ValidaStatus;
begin
  rgInternoExterno.ItemIndex := dmPrincipal.cdsLocal.FieldByName('Status').AsInteger;
end;

end.
