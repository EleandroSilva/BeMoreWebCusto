unit ufrmSetorLocal;

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

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller, udmEntidade.Relatorios;

type
  TfrmSetorLocal = class(TfrmModelodbEdit)
    dblkSetor: TDBLookupComboBox;
    Label1: TLabel;
    dblkLocal: TDBLookupComboBox;
    Label2: TLabel;
    dbgCadastro: TDBGrid;
    rgCalcularValorAjustado: TRadioGroup;
    procedure dblkSetorEnter(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblkLocalEnter(Sender: TObject);
    procedure dblkLocalExit(Sender: TObject);
    procedure btnSalveClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgCadastroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure MedtReleaseDateExit(Sender: TObject);
    procedure dblkSetorExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbgSearchEnter(Sender: TObject);
    procedure dbgSearchExit(Sender: TObject);
    procedure dbgSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgSearchKeyPress(Sender: TObject; var Key: Char);
  private
    FController: iController;
    procedure AtualizaIdSetor;
    procedure AtualizaIdLocal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetorLocal: TfrmSetorLocal;

implementation

{$R *.dfm}


procedure TfrmSetorLocal.AtualizaIdLocal;
begin
  dmPrincipal.sqlLocal.Active := False;
  dmPrincipal.sqlLocal.CommandText := ('select * from Setor ' +
    'where Ativo=1 ' +
    'and Id=' + dmPrincipal.cdsSetorLocal.FieldByName('IdLocal').AsString + ' ' +
    'order by Descricao ');
  dmPrincipal.cdsLocal.Active := False;
  dmPrincipal.cdsLocal.Active := True;
end;

procedure TfrmSetorLocal.AtualizaIdSetor;
begin
  dmPrincipal.sqlSetor.Active := False;
  dmPrincipal.sqlSetor.CommandText := ('select * from Setor ' +
    'where Ativo=1 ' +
    'and Id=' + dmPrincipal.cdsSetorLocal.FieldByName('IdSetor').AsString + ' ' +
    'order by Descricao ');
  dmPrincipal.cdsSetor.Active := False;
  dmPrincipal.cdsSetor.Active := True;
end;

procedure TfrmSetorLocal.btnCancelClick(Sender: TObject);
begin
  if dmPrincipal.cdsSetorLocal.State in [DsInsert, DsEdit] then
    dmPrincipal.cdsSetorLocal.Cancel;

  if dmPrincipal.cdsSetorLocal.ChangeCount > 0 then
    dmPrincipal.cdsSetorLocal.CancelUpdates;

  if dmPrincipal.sqlconexao.InTransaction then
    dmPrincipal.sqlconexao.Rollback(TD);

  dmPrincipal.sqlSetorLocal.Active := False;
  dmPrincipal.cdsSetorLocal.Active := False;

  dmPrincipal.sqlSetor.Active := False;
  dmPrincipal.cdsSetor.Active := False;

  dmPrincipal.sqlLocal.Active := False;
  dmPrincipal.cdsLocal.Active := False;
  inherited;

end;

procedure TfrmSetorLocal.btnDeleteClick(Sender: TObject);
var
  Erros: Integer;
begin
  if MessageBox(handle, 'Deseja excluir este registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    dmPrincipal.cdsSetorLocal.Delete;

    if not dmPrincipal.sqlconexao.InTransaction then
      dmPrincipal.sqlconexao.StartTransaction(TD);

    Erros := dmPrincipal.cdsSetorLocal.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlconexao.Commit(TD);
      showmessage('Parabéns ' + edtOperator.Text + ' Registro excluído com sucesso!');
    end
    else
    begin
      dmPrincipal.sqlconexao.Rollback(TD);
      showmessage('Atenção ' + edtOperator.Text + ' Registro não pode ser excluído!');
      Abort;
    end;

    dmPrincipal.cdsSetorLocal.Active := False;
    dmPrincipal.sqlSetorLocal.Active := False;
    dmPrincipal.sqlSetorLocal.CommandText := ('select * from Local ');

    dmPrincipal.sqlSetor.Active := False;
    dmPrincipal.cdsSetor.Active := False;

    dmPrincipal.sqlLocal.Active := False;
    dmPrincipal.cdsLocal.Active := False;
  end;
  inherited;
end;

procedure TfrmSetorLocal.btnImprimirClick(Sender: TObject);
begin
  if not dmPrincipal.cdsSetorLocal.IsEmpty then
    dmEntidadeRelatorios.pprSetorLocal.Print
  else
    raise Exception.Create(dmPrincipal.cMSGImpressao);
end;

procedure TfrmSetorLocal.btnNewClick(Sender: TObject);
begin
  dmPrincipal.sqlSetorLocal.Active := False;
  dmPrincipal.sqlSetorLocal.CommandText := ('select * from SetorLocal where id=0 ');
  dmPrincipal.cdsSetorLocal.Active := True;
  dmPrincipal.cdsSetorLocal.Append;
  dmPrincipal.cdsSetorLocal.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsSetorLocal.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsSetorLocal.FieldByName('DataLancamento').AsDateTime := Now;

  dmPrincipal.cdsSetorLocal.FieldByName('Status').AsInteger := 1;
  dmPrincipal.cdsSetorLocal.FieldByName('Ativo').AsInteger := 1;
  dmPrincipal.cdsSetorLocal.FieldByName('calcularvalorajustado').AsInteger := rgCalcularValorAjustado.ItemIndex;
  inherited;
end;

procedure TfrmSetorLocal.btnSalveClick(Sender: TObject);
var
  Erros: Integer;
begin
  if dblkSetor.KeyValue = null then
  begin
    dblkSetor.SetFocus;
    raise Exception.Create('Campo Setor não pode ser vazio');
  end;

  if dblkLocal.KeyValue = null then
  begin
    dblkLocal.SetFocus;
    raise Exception.Create('Campo Local não pode ser vazio');
  end;

  if trim(edtDescription.Text) = '' then
  begin
    edtDescription.SetFocus;
    raise Exception.Create('Campo descrição não pode ser vazio');
  end;

  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirmação', mb_Yesno) = IDYES then
  begin
    dmPrincipal.cdsSetorLocal.Edit;

    if dmPrincipal.cdsSetorLocal.State in [DsInsert, DsEdit] then
      dmPrincipal.cdsSetorLocal.Post;

    dmPrincipal.sqlconexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsSetorLocal.ChangeCount > 0 then
      Erros := dmPrincipal.cdsSetorLocal.ApplyUpdates(0);

    if Erros = 0 then
    begin
      dmPrincipal.sqlconexao.Commit(TD);
      showmessage('Parabéns... ' + edtOperator.Text + ' Registro salvo com sucesso!');
      dmPrincipal.cdsSetorLocal.Active := False;
      dmPrincipal.cdsSetor.Active := False;
      dmPrincipal.cdsLocal.Active := False;
    end
    else
    begin
      dmPrincipal.sqlconexao.Rollback(TD);
      showmessage('Atenção... ' + edtOperator.Text + ' Ocorreu algum erro, registro será cancelado!');
      dmPrincipal.cdsSetorLocal.Active := False;
      dmPrincipal.cdsSetor.Active := False;
      dmPrincipal.cdsLocal.Active := False;
    end;
    inherited;
    btnCancel.Click;
  end
  else
    Abort;

  inherited;

end;

procedure TfrmSetorLocal.btnSearchClick(Sender: TObject);
begin
  try
    dmPrincipal.sqlSetorLocal.Active := False;
    dmPrincipal.sqlSetorLocal.CommandText := ('select * from SetorLocal ' +
      'where ativo=1 ' +
      'order by descricao ');
    dmPrincipal.cdsSetorLocal.Active := False;
    dmPrincipal.cdsSetorLocal.Active := True;

    if dmPrincipal.cdsSetorLocal.IsEmpty then
    begin
      raise Exception.Create('Atenção... ' + FController
        .EntidadesEmpresaLogada
        .DadosEmpresaLogada
        .Operador + ' Registro não encontrado!');
    end
    else
    begin
      AtualizaIdSetor;
      AtualizaIdLocal;
    end;

  finally

  end;

  inherited;
end;

procedure TfrmSetorLocal.btnUpdateClick(Sender: TObject);
begin
  inherited;
  dmPrincipal.cdsSetorLocal.Edit;
end;

procedure TfrmSetorLocal.dbgCadastroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
end;

procedure TfrmSetorLocal.dbgSearchEnter(Sender: TObject);
begin
   frmSetorLocal.KeyPreview := False;
end;

procedure TfrmSetorLocal.dbgSearchExit(Sender: TObject);
begin
  frmSetorLocal.KeyPreview := True;
end;

procedure TfrmSetorLocal.dbgSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    frmSetorLocal.Close;
end;

procedure TfrmSetorLocal.dbgSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case Key of
    VK_Escape:
      frmSetorLocal.Close;
  end;

  case Key of
    VK_TAB:
      edtSearch.SetFocus;
  end;

end;

procedure TfrmSetorLocal.dblkLocalEnter(Sender: TObject);
begin
  dmPrincipal.sqlLocal.Active := False;
  dmPrincipal.sqlLocal.CommandText := ('select * from Local where Ativo=1 order by descricao ');
  dmPrincipal.cdsLocal.Active := False;
  dmPrincipal.cdsLocal.Active := True;
end;

procedure TfrmSetorLocal.dblkLocalExit(Sender: TObject);
begin
  if ((dblkSetor.KeyValue <> null) and (dblkLocal.KeyValue <> null)) then
    dmPrincipal.cdsSetorLocal.FieldByName('Descricao').AsString := dmPrincipal.cdsSetor.FieldByName('Descricao').AsString + '/' +
      dmPrincipal.cdsLocal.FieldByName('Descricao').AsString
  else
    raise Exception.Create('Favor preencher os campos Setor e Local, para continuar registro!');
end;

procedure TfrmSetorLocal.dblkSetorEnter(Sender: TObject);
begin
  dmPrincipal.sqlSetor.Active := False;
  dmPrincipal.sqlSetor.CommandText := ('select * from Setor where Ativo=1 order by Descricao ');
  dmPrincipal.cdsSetor.Active := False;
  dmPrincipal.cdsSetor.Active := True;
end;

procedure TfrmSetorLocal.dblkSetorExit(Sender: TObject);
begin
  if dblkSetor.KeyValue <> null then
    dblkLocal.SetFocus
  else
    raise Exception.Create('Favor preencher o campo Setor , para continuar registro!');
end;

procedure TfrmSetorLocal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmSetorLocal := nil;
  Action := caFree;
end;

procedure TfrmSetorLocal.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmSetorLocal.FormShow(Sender: TObject);
begin
  inherited;
  lTextoEmpresa.Caption := 'Relacionamento entre Setor/Local';
end;

procedure TfrmSetorLocal.MedtReleaseDateExit(Sender: TObject);
begin
  dblkSetor.SetFocus;
end;

procedure TfrmSetorLocal.NavigatorClick(Sender: TObject; Button: TNavigateBtn);
begin
  if not dmPrincipal.cdsSetorLocal.IsEmpty then
  begin
    AtualizaIdSetor;
    AtualizaIdLocal;
  end;
end;

end.
