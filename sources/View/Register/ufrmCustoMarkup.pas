unit ufrmCustoMarkup;

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
  ufrmSearchRegiaoPessoa,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller,
  udmEntidade.Relatorios;

type
  TfrmCustoMarkup = class(TfrmModelo)
    DBGrid1: TDBGrid;
    tsMarkupNome: TTabSheet;
    tsAliquotaNome: TTabSheet;
    tsAliquotaGrupo: TTabSheet;
    Panel11: TPanel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel12: TPanel;
    rgChoiceAliquotaGrupo: TRadioGroup;
    gbBetweenDatesAliquotaGrupo: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    StartDateAliquotaGrupo: TDateTimePicker;
    EndDateAliquotaGrupo: TDateTimePicker;
    Panel13: TPanel;
    Label16: TLabel;
    edtSearchAliquotaGrupo: TEdit;
    tsCustoFinanceiro: TTabSheet;
    Panel14: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel15: TPanel;
    rgChoiceMarkupNome: TRadioGroup;
    gbBetweenDatesMarkupNome: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    StartDateMarkupNome: TDateTimePicker;
    EndDateMarkupNome: TDateTimePicker;
    Panel16: TPanel;
    Label23: TLabel;
    edtSearchMarkupNome: TEdit;
    dbgMarkupNome: TDBGrid;
    Panel7: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel8: TPanel;
    rgChoiceAliquotaNome: TRadioGroup;
    gbBetweenDatesAliquotaNome: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    StartDateAliquotaNome: TDateTimePicker;
    EndDateAliquotaNome: TDateTimePicker;
    Panel10: TPanel;
    Label10: TLabel;
    edtSearchAliquotaNome: TEdit;
    dbgAliquotaNome: TDBGrid;
    Label7: TLabel;
    Panel3: TPanel;
    Panel5: TPanel;
    dbgAliquotaGrupo: TDBGrid;
    dbgAliquotaNomeFiltro: TDBGrid;
    pPesquisaAliquotaNome: TPanel;
    Label13: TLabel;
    edtSearchAliquotaNomeFiltro: TEdit;
    Panel17: TPanel;
    rbAliquotaNomeFiltro: TRadioGroup;
    btnPesquisaAliquotaNomeFiltro: TBitBtn;
    Panel18: TPanel;
    dbnAliquotaNomeFiltro: TDBNavigator;
    Panel19: TPanel;
    dbgMarkupNomeFiltro: TDBGrid;
    Panel20: TPanel;
    dbgCustoFinanceiro: TDBGrid;
    Panel21: TPanel;
    dbgAliquotaNomeCustoFinanceiro: TDBGrid;
    Panel22: TPanel;
    dbgPrazoPagamento: TDBGrid;
    Panel23: TPanel;
    dbnPrazoPagamento: TDBNavigator;
    Panel24: TPanel;
    rgChoiceCustoFinanceiro: TRadioGroup;
    gbBetweenDatesCustoFinanceiro: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    StartDateCustoFinanceiro: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Panel25: TPanel;
    Label25: TLabel;
    edtSearchCustoFinanceiro: TEdit;
    Panel26: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    lCustoFinanceiroAliquotaNome: TLabel;
    edtIdCustoFinanceiroAliquotaNome: TEdit;
    edtIdCustoFinanceiro: TEdit;
    MedtReleaseDateCustoFinanceiro: TMaskEdit;
    Panel27: TPanel;
    Label31: TLabel;
    edtSearchPrazoPagamento: TEdit;
    btnBuscarPrazoPagamento: TBitBtn;
    Panel28: TPanel;
    rbPrazoPagamento: TRadioGroup;
    dsCustoFinanceiro: TDataSource;
    dsPrazoPagamento: TDataSource;
    pMarcaTodosPrazoPagamento: TPanel;
    cbMarcaTodosPrazoPagamento: TCheckBox;
    Label30: TLabel;
    dbgRegiaoNome: TDBGrid;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    dsAuxiliar: TDataSource;
    tsVendasPeriodo: TTabSheet;
    dsReceitaDespesa: TDataSource;
    pdbgReceitaDespesa: TPanel;
    pCabecalhoReceitaDespesa: TPanel;
    rgPeriodoContas: TRadioGroup;
    pReceita: TPanel;
    pDespesa: TPanel;
    pResultado: TPanel;
    dbgReceita: TDBGrid;
    dbgDespesa: TDBGrid;
    dbgResultado: TDBGrid;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    dsReceita: TDataSource;
    dsDespesa: TDataSource;
    btnGerarReceitaDespesa: TBitBtn;
    rdTipoDespesa: TRadioGroup;
    rgChoiceTypeAccount: TRadioGroup;
    rgFinanceiro: TRadioGroup;
    edtIdMarkupNome: TDBEdit;
    MedtReleaseDateMarkupNome: TDBEdit;
    edtIdRegiaoPessoa: TDBEdit;
    dbtRegiao: TDBText;
    edtDescriptionMarkupNome: TDBEdit;
    edtIdAliquotaNome: TDBEdit;
    MedtReleaseDateAliquotaNome: TDBEdit;
    edtDescriptionAliquotaNome: TDBEdit;
    edtAliquota: TDBEdit;
    edtIdAliquotaGrupo: TDBEdit;
    MedtReleaseDateAliquotaGrupo: TDBEdit;
    edtIdMarkupNomeFiltro: TDBEdit;
    DBText1: TDBText;
    lMarkupNome: TDBText;
    btnImprimeMarkupNome: TBitBtn;
    btnPrintAliquotaNome: TBitBtn;
    btnPrintAliquotaGrupo: TBitBtn;
    BitBtn4: TBitBtn;
    rgLucro: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dbgAliquotaGrupoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnNewClick(Sender: TObject);
    procedure edtDescriptionExit(Sender: TObject);
    procedure btnSalveClick(Sender: TObject);
    procedure dbgAliquotaNomeFiltroColEnter(Sender: TObject);
    procedure btnPesquisaAliquotaNomeFiltroClick(Sender: TObject);
    procedure dbgAliquotaNomeFiltroDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgAliquotaNomeFiltroCellClick(Column: TColumn);
    procedure dsAliquotaNomeDataChange(Sender: TObject; Field: TField);
    procedure dbgAliquotaNomeFiltroEnter(Sender: TObject);
    procedure dbgAliquotaNomeFiltroExit(Sender: TObject);
    procedure dbgMarkupNomeFiltroDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dsAliquotaGrupoDataChange(Sender: TObject; Field: TField);
    procedure dbgAliquotaNomeCustoFinanceiroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgCustoFinanceiroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsCustoFinanceiroDataChange(Sender: TObject; Field: TField);
    procedure dbgPrazoPagamentoCellClick(Column: TColumn);
    procedure dbgPrazoPagamentoColEnter(Sender: TObject);
    procedure dbgPrazoPagamentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBuscarPrazoPagamentoClick(Sender: TObject);
    procedure cbMarcaTodosPrazoPagamentoClick(Sender: TObject);
    procedure edtIdCustoFinanceiroAliquotaNomeExit(Sender: TObject);
    procedure dsPrazoPagamentoDataChange(Sender: TObject; Field: TField);
    procedure edtAliquota1Exit(Sender: TObject);
    procedure dbgAliquotaNomeColEnter(Sender: TObject);
    procedure dbgAliquotaNomeCellClick(Column: TColumn);
    procedure dbgAliquotaGrupoCellClick(Column: TColumn);
    procedure dbgAliquotaGrupoColEnter(Sender: TObject);
    procedure dbgAliquotaNomeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMarkupNomeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cCellClick(Column: TColumn);
    procedure dbgMarkupNomeColEnter(Sender: TObject);
    procedure dbgMarkupNomeCellClick(Column: TColumn);
    procedure dbgCustoFinanceiroCellClick(Column: TColumn);
    procedure dbgCustoFinanceiroColEnter(Sender: TObject);
    procedure dbgRegiaoNomeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtIdCustoFinanceiroAliquotaNomeKeyPress(Sender: TObject;
      var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnGerarReceitaDespesaClick(Sender: TObject);
    procedure edtIdRegiaoPessoaExit(Sender: TObject);
    procedure edtIdRegiaoPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtIdRegiaoPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescriptionMarkupNomeExit(Sender: TObject);
    procedure edtAliquotaExit(Sender: TObject);
    procedure edtAliquotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdMarkupNomeFiltroExit(Sender: TObject);
    procedure edtIdMarkupNomeFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimeMarkupNomeClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPrintAliquotaNomeClick(Sender: TObject);
    procedure btnPrintAliquotaGrupoClick(Sender: TObject);
    procedure edtIdMarkupNomeFiltroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FController: iController;
    FInsereNovo: Boolean;

    // Markup Nome
    procedure InserirMarkupNome;
    procedure SalvarMarkupNome;
    procedure DeleteMarkupNome(aValue: String);
    function PesquisaMarkupNome(aValue: String): Boolean;

    // Aliquota Nome
    procedure InserirAliquotaNome;
    procedure SalvarAliquotaNome;

    procedure DeleteAliquotaNome(aValue: String);
    function PesquisaAliquotaNome(aValue: String): Boolean;
    function StatusAliquotaNome : Integer;

    // Aliquota Grupo
    procedure InserirAliquotaGrupo;
    procedure SalvarAliquotaGrupo;
    procedure SalvarAlteracaoAliquotaGrupo;
    procedure DeleteAliquotaGrupo(aValue: String; aExcluiRegistro: Boolean);
    function PesquisaAliquotaGrupo(aValue: String): Boolean;
    function VerificoSeExisteAliquotaGrupo(aValue: String): Boolean;

    procedure PesquisaRegiaoNome;

    function PesquisaMarkupNomeFiltro(aValue: String; aFiltro: Integer): Boolean;

    procedure PesquisaAliquotaNomeFiltro;
    procedure PesquisaAliquotaNomeCustoFinanceiro;

    procedure PesquisaCustoFinanceiro;
    procedure InsertCustoFinanceiro;

    procedure PesquisaPrazoPagamento;
    procedure MarcaTodosPrazoPagamento;

    procedure PesquisaAliquotaDespesaFixaRepresenta;

    procedure ConfiguraDbNavigator;

    procedure Limpaedt;

    procedure MSGAviso(InsereNovo: Boolean);

    procedure AtualizarSearch;
    procedure AtualizarSalve;
    procedure AtualizaNew;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustoMarkup: TfrmCustoMarkup;

implementation

{$R *.dfm}


uses udmPrincipal, ufrmModel, ufrmSearchMarkupNome;

procedure TfrmCustoMarkup.SalvarAlteracaoAliquotaGrupo;
var
  Erros: Integer;
begin
  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirma��o', mb_Yesno) = IDYES then
  begin
    dmPrincipal.cdsAliquotaGrupo.Post;

    dmPrincipal.sqlconexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsAliquotaGrupo.ChangeCount > 0 then
      Erros := dmPrincipal.cdsAliquotaGrupo.ApplyUpdates(0);

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

procedure TfrmCustoMarkup.AtualizarSearch;
begin
  btnCancel.Enabled := True;
  btnUpdate.Enabled := True;
  btnDelete.Enabled := True;
  btnCancel.Enabled := True;
  btnUpdate.Enabled := True;
  btnNew.Enabled := False;
end;

procedure TfrmCustoMarkup.AtualizarSalve;
begin
  btnNew.Enabled := True;
  btnCancel.Enabled := False;
  btnUpdate.Enabled := False;
  btnDelete.Enabled := False;
  btnSalve.Enabled := False;
  btnSearch.Enabled := True;
  btnNew.SetFocus;
end;

procedure TfrmCustoMarkup.AtualizaNew;
begin
  btnNew.Enabled := False;
  btnCancel.Enabled := True;
  btnUpdate.Enabled := False;
  btnDelete.Enabled := False;
  btnSalve.Enabled := True;
  btnSearch.Enabled := False;
end;

procedure TfrmCustoMarkup.btnPesquisaAliquotaNomeFiltroClick(Sender: TObject);
begin
  if frmCustoMarkup.PesquisaAliquotaNome(edtSearchAliquotaNomeFiltro.Text) then
  begin
    btnSalve.Enabled := True;
    dbgAliquotaNomeFiltro.SetFocus;
    dbgAliquotaNomeFiltro.ReadOnly := False;
    dbgAliquotaNomeFiltro.Fields[0].ReadOnly := True;
    dbgAliquotaNomeFiltro.Fields[2].ReadOnly := True;
    TFloatField(dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Aliquota')).DisplayFormat := '0.00';
  end;
end;

procedure TfrmCustoMarkup.btnPrintAliquotaGrupoClick(Sender: TObject);
begin
  if dmPrincipal.cdsAliquotaGrupo.IsEmpty then
    raise Exception.Create(dmPrincipal.cMSGImpressao)
  else
    dmEntidadeRelatorios.pprAliquotaGrupo.Print;
end;

procedure TfrmCustoMarkup.btnPrintAliquotaNomeClick(Sender: TObject);
begin
  if dmPrincipal.cdsAliquotaNome.IsEmpty then
    raise Exception.Create(dmPrincipal.cMSGImpressao)
  else
    dmEntidadeRelatorios.pprAliquotaNome.Print;
end;

procedure TfrmCustoMarkup.btnBuscarPrazoPagamentoClick(Sender: TObject);
begin
  PesquisaPrazoPagamento;
end;

procedure TfrmCustoMarkup.btnCancelClick(Sender: TObject);
begin
  FInsereNovo := False;
  inherited;
  dmPrincipal.FecharQuery;
  pgMain.ActivePageIndex := 2;
end;

procedure TfrmCustoMarkup.btnDeleteClick(Sender: TObject);
begin
  case pgMain.ActivePageIndex of
    2:
      if not dmPrincipal.cdsMarkupNome.IsEmpty then
        DeleteMarkupNome(dmPrincipal.cdsMarkupNome.FieldByName('ID').AsString);
    3:
      if not dmPrincipal.cdsAliquotaNome.IsEmpty then
        DeleteAliquotaNome(dmPrincipal.cdsAliquotaNome.FieldByName('ID').AsString);
    4:
      if not dmPrincipal.cdsAliquotaGrupo.IsEmpty then
        if MessageBox(handle, 'Deseja excluir registro completo, caso quiser excluir apenas a linha clique em n�o!', 'Aviso',
          mb_IconQuestion or mb_Yesno) = mrYes then
          DeleteAliquotaGrupo(dmPrincipal.cdsAliquotaGrupo.FieldByName('IdMarkupNome').AsString, True)
        else
          DeleteAliquotaGrupo(dmPrincipal.cdsAliquotaGrupo.FieldByName('ID').AsString, False);
  end;
  dmPrincipal.FecharQuery;
end;

procedure TfrmCustoMarkup.btnGerarReceitaDespesaClick(Sender: TObject);
begin
  FController
    .Entidades
    .ContasPagar
    .DataSet(dsDespesa)
    .EscolhaFiltro(rgPeriodoContas.ItemIndex)
    .EscolhaTipoData(rgChoiceTypeAccount.ItemIndex)
    .EscolhaTipoLancamento(rdTipoDespesa.ItemIndex)
    .Buscar('');

end;

procedure TfrmCustoMarkup.btnImprimeMarkupNomeClick(Sender: TObject);
begin
  if dmPrincipal.cdsMarkupNome.IsEmpty then
    raise Exception.Create(dmPrincipal.cMSGImpressao)
  else
    dmEntidadeRelatorios.pprMarkupNome.Print;
end;

procedure TfrmCustoMarkup.btnNewClick(Sender: TObject);
begin
  FInsereNovo := True;
  case pgMain.ActivePageIndex of
    2: InserirMarkupNome;
    3: InserirAliquotaNome;
    4: InserirAliquotaGrupo;
    5:
      begin
        MedtReleaseDateCustoFinanceiro.SetFocus;
        MedtReleaseDateCustoFinanceiro.Text := FormatDateTime('dd/mm/yyyy', Now);
      end;
  end;
  AtualizaNew;
end;

procedure TfrmCustoMarkup.btnSalveClick(Sender: TObject);
begin
  case pgMain.ActivePageIndex of
    2: SalvarMarkupNome;
    3: SalvarAliquotaNome;
    4:
      if FInsereNovo then
        SalvarAliquotaGrupo
      else
        SalvarAlteracaoAliquotaGrupo;
    5: InsertCustoFinanceiro;
  end;
  Limpaedt;
  AtualizarSalve;
  dmPrincipal.FecharQuery;
  FInsereNovo := False;
end;

procedure TfrmCustoMarkup.btnSearchClick(Sender: TObject);
begin
  dmPrincipal.FecharQuery;
  case pgMain.ActivePageIndex of
    2:
      if not PesquisaMarkupNome(edtSearchMarkupNome.Text) then
        ShowMessage('Registro n�o encontrado, favor tentar outro filtro!');
    3:
      if not PesquisaAliquotaNome(edtSearchAliquotaNome.Text) then
        ShowMessage('Registro n�o encontrado, favor tentar outro filtro!')
        else rgLucro.ItemIndex:= StatusAliquotaNome;
    4:
      if not PesquisaAliquotaGrupo(edtSearchAliquotaGrupo.Text) then
        ShowMessage('Registro n�o encontrado, favor tentar outro filtro!');
    5:
      PesquisaCustoFinanceiro;
  end;

  ConfiguraDbNavigator;
  FInsereNovo := False;
  frmCustoMarkup.AtualizarSearch;
end;

procedure TfrmCustoMarkup.btnUpdateClick(Sender: TObject);
begin
  FInsereNovo := False;
  case pgMain.ActivePageIndex of
    2:
      begin
        dmPrincipal.cdsMarkupNome.Edit;
        MedtReleaseDateMarkupNome.SetFocus;
        btnSalve.Enabled := False;
      end;
    3:
      begin
        dmPrincipal.cdsAliquotaNome.Edit;
        MedtReleaseDateAliquotaNome.SetFocus;
        btnSalve.Enabled := False;
      end;
    4:
      begin
        dmPrincipal.cdsAliquotaGrupo.Active := True;
        dmPrincipal.cdsAliquotaGrupo.Edit;
        MedtReleaseDateAliquotaGrupo.SetFocus;
        btnSalve.Enabled := True;
        dbgAliquotaGrupo.ReadOnly := False;
        dbgAliquotaGrupo.Fields[0].ReadOnly := True;
        dbgAliquotaGrupo.Fields[1].ReadOnly := True;
        dbgAliquotaGrupo.Fields[2].ReadOnly := True;
        dbgAliquotaGrupo.Fields[4].ReadOnly := True;
        dbgAliquotaGrupo.Fields[5].ReadOnly := True;
        dbgAliquotaGrupo.Fields[6].ReadOnly := True;
      end;
  end;

end;

procedure TfrmCustoMarkup.cbMarcaTodosPrazoPagamentoClick(Sender: TObject);
begin
  if not dsPrazoPagamento.DataSet.IsEmpty then
    MarcaTodosPrazoPagamento;
end;

procedure TfrmCustoMarkup.ConfiguraDbNavigator;
begin
  case pgMain.ActivePageIndex of
    0:
      Navigator.DataSource := DataSource1;
    1:
      Navigator.DataSource := DataSource1;
    2:
      Navigator.DataSource := dmPrincipal.dsMarkupNome;
    3:
      Navigator.DataSource := dmPrincipal.dsAliquotaNome;
    4:
      Navigator.DataSource := dmPrincipal.dsAliquotaGrupo;
    5:
      Navigator.DataSource := dsCustoFinanceiro;
  end;
end;

procedure TfrmCustoMarkup.edtDescriptionMarkupNomeExit(Sender: TObject);
begin
  btnSalve.Enabled := True;
  btnSalve.SetFocus;
end;

procedure TfrmCustoMarkup.dbgAliquotaGrupoCellClick(Column: TColumn);
begin
  if not dbgAliquotaGrupo.Fields[5].IsNull then
    if Column.Field = dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo') then
    begin
      dmPrincipal.dsAliquotaGrupo.DataSet.Edit;

      if dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo').AsInteger = 1 then
        dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo').AsInteger := 0
      else
        dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgAliquotaGrupoColEnter(Sender: TObject);
begin
  if dbgAliquotaGrupo.SelectedField = dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo') then
    dbgAliquotaGrupo.Options := dbgAliquotaGrupo.Options - [DgEditing]
  else
    dbgAliquotaGrupo.Options := dbgAliquotaGrupo.Options + [DgEditing];
end;

procedure TfrmCustoMarkup.dbgAliquotaGrupoDrawColumnCell(Sender: TObject;
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

  // pinta checkbox
  if Column.Field = dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo') then
  begin
    dbgAliquotaGrupo.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgAliquotaGrupo.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dmPrincipal.dsAliquotaGrupo.DataSet.FieldByName('Ativo').AsInteger = 1 then
      ImageList1.Draw(dbgAliquotaGrupo.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgAliquotaGrupo.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeFiltroCellClick(Column: TColumn);
begin
  if not dbgAliquotaNomeFiltro.Fields[1].IsNull then
    if Column.Field = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status') then
    begin
      dmPrincipal.dsAliquotaNome.DataSet.Edit;

      if dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger = 1 then
        dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger := 0
      else
        dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeFiltroColEnter(Sender: TObject);
begin
  if dbgAliquotaNomeFiltro.SelectedField = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status') then
    dbgAliquotaNomeFiltro.Options := dbgAliquotaNomeFiltro.Options - [DgEditing]
  else
    dbgAliquotaNomeFiltro.Options := dbgAliquotaNomeFiltro.Options + [DgEditing];
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeFiltroDrawColumnCell(Sender: TObject;
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

  // pinta checkbox
  if Column.Field = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status') then
  begin
    dbgAliquotaNomeFiltro.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgAliquotaNomeFiltro.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger = 1 then
      ImageList1.Draw(dbgAliquotaNomeFiltro.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgAliquotaNomeFiltro.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeFiltroEnter(Sender: TObject);
begin
  frmCustoMarkup.KeyPreview := False;
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeFiltroExit(Sender: TObject);
begin
  frmCustoMarkup.KeyPreview := True;
end;

procedure TfrmCustoMarkup.cCellClick(Column: TColumn);
begin
  if not dbgMarkupNome.Fields[4].IsNull then
    if Column.Field = dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo') then
    begin
      dmPrincipal.dsMarkupNome.DataSet.Edit;

      if dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger = 1 then
        dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger := 0
      else
        dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgMarkupNomeCellClick(Column: TColumn);
begin
  if not dbgMarkupNome.Fields[4].IsNull then
    if Column.Field = dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo') then
    begin
      dmPrincipal.dsMarkupNome.DataSet.Edit;

      if dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger = 1 then
        dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger := 0
      else
        dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgMarkupNomeColEnter(Sender: TObject);
begin
  if dbgMarkupNome.SelectedField = dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo') then
    dbgMarkupNome.Options := dbgMarkupNome.Options - [DgEditing]
  else
    dbgMarkupNome.Options := dbgMarkupNome.Options + [DgEditing];
end;

procedure TfrmCustoMarkup.dbgMarkupNomeDrawColumnCell(Sender: TObject;
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

  // pinta checkbox

  if Column.Field = dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo') then
  begin
    dbgMarkupNome.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgMarkupNome.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dmPrincipal.dsMarkupNome.DataSet.FieldByName('Ativo').AsInteger = 1 then
      ImageList1.Draw(dbgMarkupNome.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgMarkupNome.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmCustoMarkup.dbgMarkupNomeFiltroDrawColumnCell(Sender: TObject;
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

procedure TfrmCustoMarkup.dbgPrazoPagamentoCellClick(
  Column: TColumn);
begin
  if not dbgAliquotaNomeCustoFinanceiro.Fields[1].IsNull then
    if Column.Field = dsPrazoPagamento.DataSet.FieldByName('Status') then
    begin
      dsPrazoPagamento.DataSet.Edit;

      if dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger = 1 then
        dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger := 0
      else
        dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgPrazoPagamentoColEnter(
  Sender: TObject);
begin
  if dbgPrazoPagamento.SelectedField = dsPrazoPagamento.DataSet.FieldByName('Status') then
    dbgPrazoPagamento.Options := dbgAliquotaNomeFiltro.Options - [DgEditing]
  else
    dbgPrazoPagamento.Options := dbgAliquotaNomeFiltro.Options + [DgEditing];
end;

procedure TfrmCustoMarkup.dbgPrazoPagamentoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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

  // pinta checkbox
  if Column.Field = dsPrazoPagamento.DataSet.FieldByName('Status') then
  begin
    dbgPrazoPagamento.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgPrazoPagamento.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger = 1 then
      ImageList1.Draw(dbgPrazoPagamento.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgPrazoPagamento.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;

end;

procedure TfrmCustoMarkup.dbgRegiaoNomeDrawColumnCell(Sender: TObject;
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

procedure TfrmCustoMarkup.DeleteAliquotaGrupo(aValue: String; aExcluiRegistro: Boolean);
begin
  if MessageBox(handle, 'Deseja excluir este registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    dmPrincipal.queryAuxiliar.Active := False;
    dmPrincipal.queryAuxiliar.SQL.Clear;
    if aExcluiRegistro then
      dmPrincipal.queryAuxiliar.SQL.Text := ('delete from AliquotaGrupo ' +
        'where IdMarkupNome=' + aValue + ' ')
    else
      dmPrincipal.queryAuxiliar.SQL.Text := ('delete from AliquotaGrupo ' +
        'where id=' + aValue + ' ');

    dmPrincipal.queryAuxiliar.ExecSQL();
    dmPrincipal.queryAuxiliar.Active := False;
    btnSearch.Click;
    ShowMessage('Registro exclu�do com sucesso!');
  end;
end;

procedure TfrmCustoMarkup.DeleteAliquotaNome(aValue: String);
begin
  if MessageBox(handle, 'Deseja excluir este registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    dmPrincipal.queryAuxiliar.Active := False;
    dmPrincipal.queryAuxiliar.SQL.Clear;
    dmPrincipal.queryAuxiliar.SQL.Text := ('delete from AliquotaNome ' +
      'where id=' + aValue + ' ');
    dmPrincipal.queryAuxiliar.ExecSQL();
    dmPrincipal.queryAuxiliar.Active := False;
    btnSearch.Click;
    ShowMessage('Registro exclu�do com sucesso!');
  end;
end;

procedure TfrmCustoMarkup.DeleteMarkupNome(aValue: String);
begin
  if MessageBox(handle, 'Deseja excluir este registro?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
  begin
    dmPrincipal.queryAuxiliar.Active := False;
    dmPrincipal.queryAuxiliar.SQL.Clear;
    dmPrincipal.queryAuxiliar.SQL.Text := ('delete from MarkupNome ' +
      'where id=' + aValue + ' ');
    dmPrincipal.queryAuxiliar.ExecSQL();
    dmPrincipal.queryAuxiliar.Active := False;
    btnSearch.Click;
    ShowMessage('Registro exclu�do com sucesso!');
  end;
end;

procedure TfrmCustoMarkup.dbgCustoFinanceiroCellClick(Column: TColumn);
begin
  if not dbgCustoFinanceiro.Fields[1].IsNull then
    if Column.Field = dsCustoFinanceiro.DataSet.FieldByName('Ativo') then
    begin
      dsCustoFinanceiro.DataSet.Edit;

      if dsCustoFinanceiro.DataSet.FieldByName('Ativo').AsInteger = 1 then
        dsCustoFinanceiro.DataSet.FieldByName('Ativo').AsInteger := 0
      else
        dsCustoFinanceiro.DataSet.FieldByName('Ativo').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgCustoFinanceiroColEnter(Sender: TObject);
begin
  if dbgCustoFinanceiro.SelectedField = dsCustoFinanceiro.DataSet.FieldByName('Ativo') then
    dbgCustoFinanceiro.Options := dbgCustoFinanceiro.Options - [DgEditing]
  else
    dbgCustoFinanceiro.Options := dbgCustoFinanceiro.Options + [DgEditing];
end;

procedure TfrmCustoMarkup.dbgCustoFinanceiroDrawColumnCell(Sender: TObject;
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

  // pinta checkbox
  if Column.Field = dsCustoFinanceiro.DataSet.FieldByName('Ativo') then
  begin
    dbgCustoFinanceiro.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgCustoFinanceiro.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dsCustoFinanceiro.DataSet.FieldByName('Ativo').AsInteger = 1 then
      ImageList1.Draw(dbgCustoFinanceiro.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgCustoFinanceiro.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeCellClick(Column: TColumn);
begin
  if not dbgAliquotaNome.Fields[1].IsNull then
    if Column.Field = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status') then
    begin
      dmPrincipal.dsAliquotaNome.DataSet.Edit;

      if dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger = 1 then
        dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger := 0
      else
        dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger := 1;
    end;

  if not dbgAliquotaNome.Fields[5].IsNull then
    if Column.Field = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Ativo') then
    begin
      dmPrincipal.dsAliquotaNome.DataSet.Edit;

      if dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Ativo').AsInteger = 1 then
        dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Ativo').AsInteger := 0
      else
        dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Ativo').AsInteger := 1;
    end;
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeColEnter(Sender: TObject);
begin
  if dbgAliquotaNome.SelectedField = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status') then
    dbgAliquotaNome.Options := dbgAliquotaNome.Options - [DgEditing]
  else
    dbgAliquotaNome.Options := dbgAliquotaNome.Options + [DgEditing];
end;

procedure TfrmCustoMarkup.dbgAliquotaNomeCustoFinanceiroDrawColumnCell(Sender: TObject;
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

procedure TfrmCustoMarkup.dbgAliquotaNomeDrawColumnCell(Sender: TObject;
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

  // pinta checkbox

  if Column.Field = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status') then
  begin
    dbgAliquotaNome.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgAliquotaNome.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Status').AsInteger = 1 then
      ImageList1.Draw(dbgAliquotaNome.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgAliquotaNome.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

  end;

  if Column.Field = dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Ativo') then
  begin
    dbgAliquotaNome.Canvas.FillRect(Rect);
    ImageList1.Draw(dbgAliquotaNome.Canvas, Rect.Left + 10, Rect.Top + 1, 0);

    if dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Ativo').AsInteger = 1 then
      ImageList1.Draw(dbgAliquotaNome.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(dbgAliquotaNome.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
  end;
end;

procedure TfrmCustoMarkup.dsAliquotaGrupoDataChange(Sender: TObject;
  Field: TField);
begin
  TNumericField(dbgAliquotaGrupo.Fields[2]).DisplayFormat := '#,##0.00';
end;

procedure TfrmCustoMarkup.dsAliquotaNomeDataChange(Sender: TObject;
  Field: TField);
begin
  TNumericField(dbgAliquotaNomeFiltro.Fields[3]).DisplayFormat := '#,##0.00';
end;

procedure TfrmCustoMarkup.dsCustoFinanceiroDataChange(Sender: TObject;
  Field: TField);
begin
  TNumericField(dbgAliquotaNomeCustoFinanceiro.Fields[3]).DisplayFormat := '#,##0.00';
  TNumericField(dbgAliquotaNomeCustoFinanceiro.Fields[4]).DisplayFormat := '#,##0.0000';

  TNumericField(dbgCustoFinanceiro.Fields[2]).DisplayFormat := '#,##0.00';
  TNumericField(dbgCustoFinanceiro.Fields[3]).DisplayFormat := '#,##0.00';
end;

procedure TfrmCustoMarkup.dsPrazoPagamentoDataChange(Sender: TObject;
  Field: TField);
begin
  TNumericField(dbgPrazoPagamento.Fields[3]).DisplayFormat := '#,##0.00';
end;

procedure TfrmCustoMarkup.edtAliquota1Exit(Sender: TObject);
var
  TextOnEdit: UnicodeString;
  Value: Currency;
begin
  TextOnEdit := edtAliquota.Text;

  if TryStrToCurr(TextOnEdit, Value) then
    edtAliquota.Text := FormatFloat('#,##0.00', Value)
  else
    edtAliquota.Text := '0,00'; // se caso n�o conseguiu converter o valor digitado em n�mero, mostra 0

  Value := StrToFloat(edtAliquota.Text);

  if Value > 0 then
  begin
    btnSalve.Enabled := True;
    btnSalve.SetFocus;
  end
  else
    raise Exception.Create('Valor n�o pode ser menor ou igual a 0')
end;

procedure TfrmCustoMarkup.edtAliquotaExit(Sender: TObject);
var
  TextOnEdit: UnicodeString;
  Value: Currency;
begin
  TextOnEdit := edtAliquota.Text;

  if TryStrToCurr(TextOnEdit, Value) then
    edtAliquota.Text := FormatFloat('0.00', Value)
  else
    edtAliquota.Text := '0,00'; // se caso n�o conseguiu converter o valor digitado em n�mero, mostra 0

  Value := StrToFloat(edtAliquota.Text);

  if Value >= 0 then
  begin
    btnSalve.Enabled := True;
    btnSalve.SetFocus;
  end
  else
    raise Exception.Create('Valor n�o pode ser menor ou igual a 0');
end;

procedure TfrmCustoMarkup.edtAliquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8]) then
    Key := #0;
end;

procedure TfrmCustoMarkup.edtDescriptionExit(Sender: TObject);
begin
  btnSalve.Enabled := True;
  btnSalve.SetFocus;
end;

procedure TfrmCustoMarkup.edtIdCustoFinanceiroAliquotaNomeExit(Sender: TObject);
begin
  PesquisaAliquotaNomeCustoFinanceiro;
end;

procedure TfrmCustoMarkup.edtIdCustoFinanceiroAliquotaNomeKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmCustoMarkup.edtIdMarkupNomeFiltroExit(Sender: TObject);
begin
  if not frmCustoMarkup.PesquisaMarkupNomeFiltro(edtIdMarkupNomeFiltro.Text, 0) then
  begin
    edtIdMarkupNomeFiltro.SetFocus;
    raise Exception.Create(dmPrincipal.cMSGRegistroNaoEncontrado);
  end;
end;

procedure TfrmCustoMarkup.edtIdMarkupNomeFiltroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmSearchMarkupNome, frmSearchMarkupNome);
        frmSearchMarkupNome.lfrmExecutando.Caption := 'frmCustoMarkupMarkupNome';
        frmSearchMarkupNome.ShowModal;
      end;
  end;
end;

procedure TfrmCustoMarkup.edtIdMarkupNomeFiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmCustoMarkup.edtIdRegiaoPessoaExit(Sender: TObject);
begin
  PesquisaRegiaoNome;
end;

procedure TfrmCustoMarkup.edtIdRegiaoPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1:
      begin
        Application.CreateForm(TfrmPesquisaRegiaoPessoa, frmPesquisaRegiaoPessoa);
        frmPesquisaRegiaoPessoa.lfrmExecutando.Caption := 'frmCustoMarkupRegiaoPessoaNome';
        frmPesquisaRegiaoPessoa.ShowModal;
      end;
  end;
end;

procedure TfrmCustoMarkup.edtIdRegiaoPessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', Chr(8), Chr(6)]) then
    Key := #0;
end;

procedure TfrmCustoMarkup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmPrincipal.FecharQuery;
  frmCustoMarkup := nil;
  Action := caFree;
end;

procedure TfrmCustoMarkup.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TController.New;
  FInsereNovo := False;

  lSite.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .Site;
end;

procedure TfrmCustoMarkup.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape:
      frmCustoMarkup.Close;
  end;
end;

procedure TfrmCustoMarkup.FormShow(Sender: TObject);
begin
  inherited;

  lTextoEmpresa.Caption := 'Conjunto Custo Markup';

  edtOperator.Text := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
end;

procedure TfrmCustoMarkup.InserirMarkupNome;
begin
  dmPrincipal.sqlMarkupNome.Active := False;
  dmPrincipal.sqlMarkupNome.CommandText := ('select ' +
    'mn.id, ' +
    'mn.idregiao, ' +
    'r.descricao regiao, ' +
    'mn.descricao, ' +
    'mn.operador, ' +
    'mn.datalancamento, ' +
    'mn.ativo, ' +

    ' ( ' +
    'select ' +
    ' count(*) QtdeRegistro ' +
    'from MarkupNome ' +
    ') ' +

    'from MarkupNome mn ' +
    'inner join cad_regiao r on r.id = mn.idregiao ' +
    'where mn.id=:Id ');

  dmPrincipal.sqlMarkupNome.Params.ParamByName('ID').DataType := ftInteger;
  dmPrincipal.sqlMarkupNome.Params.ParamValues['ID'] := 0;

  dmPrincipal.cdsMarkupNome.Active := True;
  dmPrincipal.cdsMarkupNome.Append;

  dmPrincipal.cdsMarkupNome.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsMarkupNome.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsMarkupNome.FieldByName('DataLancamento').AsDateTime := Now;
  dmPrincipal.cdsMarkupNome.FieldByName('Ativo').AsInteger := 1;
  MedtReleaseDateMarkupNome.SetFocus;
end;

procedure TfrmCustoMarkup.InserirAliquotaGrupo;
begin
  FInsereNovo := True;
  if not dmPrincipal.cdsAliquotaGrupo.Active then
  begin
    dmPrincipal.sqlAliquotaGrupo.Active := False;
    dmPrincipal.sqlAliquotaGrupo.CommandText := ('select ' +
      'ag.id, ' +
      'ag.idmarkupnome, ' +
      'mn.descricao MarkupNome, ' +
      'ag.idaliquotanome, ' +
      'an.descricao AliquotaNome, ' +
      'ag.aliquota, ' +
      'ag.datalancamento, ' +
      'ag.operador, ' +
      'ag.status, ' +
      'ag.ativo, ' +

      '  ( ' +
      ' select ' +
      '   coalesce(cast(sum(ag1.aliquota) as Numeric(10,2)),0) AliquotaGrupo ' +
      ' from aliquotagrupo ag1 ' +
      ' where ag1.idmarkupnome = ag.idmarkupnome ' +
      '), ' +

      '( ' +
      ' select ' +
      '   count(*) QtdeRegistroGrupo ' +
      ' from aliquotagrupo ag2 ' +
      ' where ag2.idmarkupnome = ag.idmarkupnome ' +
      '), ' +

      '( ' +
      ' select ' +
      '   coalesce(cast(sum(ag3.aliquota) as Numeric(10,2)),0) AliquotaGeral ' +
      ' from aliquotagrupo ag3 ' +
      'where ag3.idmarkupnome=ag.idmarkupnome '+
      '), ' +

      '( ' +
      ' select ' +
      '   count(*) QtdeRegistro ' +
      ' from aliquotagrupo ag4 ' +
      'where ag4.idmarkupnome=ag.idmarkupnome '+
      ') ' +

      'from AliquotaGrupo ag ' +
      'inner join MarkupNome   mn on mn.id = ag.idmarkupnome ' +
      'inner join AliquotaNome an on an.id = ag.idaliquotanome ' +
      'where ag.id=:Id ');

    dmPrincipal.sqlAliquotaGrupo.Params.ParamByName('ID').DataType := ftInteger;
    dmPrincipal.sqlAliquotaGrupo.Params.ParamValues['ID'] := 0;

    dmPrincipal.cdsAliquotaGrupo.Active := True;
  end;

  dmPrincipal.cdsAliquotaGrupo.Append;

  dmPrincipal.cdsAliquotaGrupo.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsAliquotaGrupo.FieldByName('IdAliquotaNome').AsInteger := 0;
  dmPrincipal.cdsAliquotaGrupo.FieldByName('AliquotaNome').AsString := '0';
  dmPrincipal.cdsAliquotaGrupo.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsAliquotaGrupo.FieldByName('Aliquota').AsCurrency := 0;
  dmPrincipal.cdsAliquotaGrupo.FieldByName('DataLancamento').AsDateTime := Now;
  dmPrincipal.cdsAliquotaGrupo.FieldByName('Status').AsInteger := 1;
  dmPrincipal.cdsAliquotaGrupo.FieldByName('Ativo').AsInteger := 1;

  MedtReleaseDateAliquotaGrupo.SetFocus;
end;

procedure TfrmCustoMarkup.InserirAliquotaNome;
begin
  dmPrincipal.sqlAliquotaNome.Active := False;
  dmPrincipal.sqlAliquotaNome.CommandText := ('select ' +
    'an.id, ' +
    'an.status, ' +
    'an.descricao, ' +
    'an.aliquota, ' +
    'an.datalancamento, ' +
    'an.operador, ' +
    'an.financeiro, ' +
    'an.ativo, ' +

    '( ' +
    '  select  ' +
    '    count(*) QtdeRegistro ' +
    '  from AliquotaNome ' +
    ' ) ' +

    'from AliquotaNome an ' +
    'where an.id=:Id ');

  dmPrincipal.sqlAliquotaNome.Params.ParamByName('ID').DataType := ftInteger;
  dmPrincipal.sqlAliquotaNome.Params.ParamValues['ID'] := 0;

  dmPrincipal.cdsAliquotaNome.Active := True;
  dmPrincipal.cdsAliquotaNome.Append;

  dmPrincipal.cdsAliquotaNome.FieldByName('ID').AsInteger := 0;
  dmPrincipal.cdsAliquotaNome.FieldByName('Operador').AsString := FController
    .EntidadesEmpresaLogada
    .DadosEmpresaLogada
    .Operador;
  dmPrincipal.cdsAliquotaNome.FieldByName('DataLancamento').AsDateTime := Now;
  dmPrincipal.cdsAliquotaNome.FieldByName('Ativo').AsInteger := 1;
  MedtReleaseDateAliquotaNome.SetFocus;
end;

procedure TfrmCustoMarkup.SalvarAliquotaGrupo;
begin
  if not frmCustoMarkup.VerificoSeExisteAliquotaGrupo(edtIdMarkupNomeFiltro.Text) then
    if MessageBox(handle, 'Consta este markup no sistema, deseja substituir o mesmo?', 'Aviso', mb_IconQuestion or mb_Yesno) = mrYes then
    begin
      dmPrincipal.queryAuxiliar.Active := False;
      dmPrincipal.queryAuxiliar.SQL.Clear;
      dmPrincipal.queryAuxiliar.SQL.Text := ('delete from AliquotaGrupo ' +
        'where IdMarkupNome=' + edtIdMarkupNomeFiltro.Text + ' ');
      dmPrincipal.queryAuxiliar.ExecSQL;
      dmPrincipal.queryAuxiliar.Active := False;
    end
    else
      Exit;

  if not dmPrincipal.cdsMarkupNome.IsEmpty then
    if not dmPrincipal.cdsAliquotaNome.IsEmpty then
    begin
      dmPrincipal.cdsAliquotaNome.First;
      while not dmPrincipal.cdsAliquotaNome.Eof do
      begin
        if dmPrincipal.cdsAliquotaNome.FieldByName('Status').AsInteger = 1 then
        begin
          dmPrincipal.queryAuxiliar.Active := False;
          dmPrincipal.queryAuxiliar.SQL.Clear;
          dmPrincipal.queryAuxiliar.SQL.Text := ('insert into AliquotaGrupo ' +
            '( ' +
            'IdMarkupNome, ' +
            'IdAliquotaNome,' +
            'Aliquota, ' +
            'Operador, ' +
            'DataLancamento, ' +
            'Status, ' +
            'Ativo ' +
            ') ' +
            'values ' +
            '( ' +
            '' + dmPrincipal.cdsAliquotaGrupo.FieldByName('IdMarkupNome').AsString + ', ' +
            '' + dbgAliquotaNomeFiltro.Fields[0].AsString + ', ' +
            StringReplace(CurrToStr(dbgAliquotaNomeFiltro.Fields[3].AsCurrency), ',', '.', [RFReplaceAll]) + ',' +
            '''' + dmPrincipal.cdsAliquotaGrupo.FieldByName('Operador').AsString + ''',' +
            '''' + FormatDateTime('dd.mm.yyyy', Now) + ''',' +
            IntToStr(1) + ', ' + // Status 0 N�o 1 - Sim serve para o enviar
            IntToStr(1) + ' ' + // Ativo 0->Inativo  - 1 Ativo
            ') ');
          dmPrincipal.queryAuxiliar.ExecSQL();
          dmPrincipal.queryAuxiliar.Active := False;
        end;
        dmPrincipal.cdsAliquotaNome.Next;
      end;
    end;
end;

procedure TfrmCustoMarkup.InsertCustoFinanceiro;
begin
  if not dsPrazoPagamento.DataSet.IsEmpty then
  begin
    dsPrazoPagamento.DataSet.First;
    while not dsPrazoPagamento.DataSet.Eof do
    begin
      if dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger = 1 then
        FController
          .Entidades
          .CustoFinanceiro
          .DataSet(dsCustoFinanceiro)
          .IdParametro1(edtIdCustoFinanceiroAliquotaNome.Text)
          .IdParametro2(dsPrazoPagamento.DataSet.FieldByName('Id').AsString)
          .PrazoMedio(dsPrazoPagamento.DataSet.FieldByName('PrazoMedio').AsCurrency)
          .Operador(edtOperator.Text)
          .DataLancamento(StrToDate(MedtReleaseDateCustoFinanceiro.Text))
          .Insert;

      dsPrazoPagamento.DataSet.Next;
    end;
  end;
end;

procedure TfrmCustoMarkup.SalvarAliquotaNome;
var
  Erros: Integer;
begin
  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirma��o', mb_Yesno) = IDYES then
  begin
    if dmPrincipal.cdsAliquotaNome.State in [DsInsert, DsEdit] then
    begin
      dmPrincipal.cdsAliquotaNome.FieldByName('Ativo').AsInteger      := 1;
      dmPrincipal.cdsAliquotaNome.FieldByName('Status').AsInteger     := rgLucro.ItemIndex;
      dmPrincipal.cdsAliquotaNome.FieldByName('Financeiro').AsInteger := rgFinanceiro.ItemIndex;
      dmPrincipal.cdsAliquotaNome.Post;
    end;
    dmPrincipal.sqlconexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsAliquotaNome.ChangeCount > 0 then
      Erros := dmPrincipal.cdsAliquotaNome.ApplyUpdates(0);

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

procedure TfrmCustoMarkup.SalvarMarkupNome;
var
  Erros: Integer;
begin
  if Application.MessageBox('Deseja realmente salvar este registro?', 'Confirma��o', mb_Yesno) = IDYES then
  begin
    if dmPrincipal.cdsMarkupNome.State in [DsInsert, DsEdit] then
      dmPrincipal.cdsMarkupNome.Post;

    dmPrincipal.sqlconexao.StartTransaction(TD);
    Erros := 0;

    if dmPrincipal.cdsMarkupNome.ChangeCount > 0 then
      Erros := dmPrincipal.cdsMarkupNome.ApplyUpdates(0);

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

function TfrmCustoMarkup.StatusAliquotaNome: Integer;
begin
  Result := dmPrincipal.cdsAliquotaNome.FieldByName('status').AsInteger;
end;

function TfrmCustoMarkup.VerificoSeExisteAliquotaGrupo(aValue: String): Boolean;
begin
  dmPrincipal.queryAuxiliar.Active := False;
  dmPrincipal.queryAuxiliar.SQL.Clear;
  dmPrincipal.queryAuxiliar.SQL.Text := ('select ' +
    ' ag.idmarkupnome, ' +
    ' ag.idaliquotanome ' +
    'from AliquotaGrupo ag ' +
    'where ag.IdMarkupNome=' + aValue + ' ');
  dmPrincipal.queryAuxiliar.Active := True;

  if dmPrincipal.queryAuxiliar.IsEmpty then
    Result := True
  else
    Result := False;
  dmPrincipal.queryAuxiliar.Active := False;
end;

procedure TfrmCustoMarkup.Limpaedt;
begin
  edtDescription.Clear;
  edtDescriptionMarkupNome.Clear;
  edtDescriptionAliquotaNome.Clear;
  edtIdMarkupNomeFiltro.Clear;
  edtIdCustoFinanceiroAliquotaNome.Clear;
end;

procedure TfrmCustoMarkup.MarcaTodosPrazoPagamento;
begin
  if cbMarcaTodosPrazoPagamento.Checked then
  begin
    dsPrazoPagamento.DataSet.First;
    //dsPrazoPagamento.DataSet.DisableControls;
    while not dsPrazoPagamento.DataSet.Eof do
    begin
      dsPrazoPagamento.DataSet.Edit;
      dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger := 1;
      dsPrazoPagamento.DataSet.Next;
    end;
    dsPrazoPagamento.DataSet.First;
    //dsPrazoPagamento.DataSet.EnableControls;
  end;

  if not cbMarcaTodosPrazoPagamento.Checked then
  begin
    dsPrazoPagamento.DataSet.First;
    //dsPrazoPagamento.DataSet.DisableControls;
    while not dsPrazoPagamento.DataSet.Eof do
    begin
      dsPrazoPagamento.DataSet.Edit;
      dsPrazoPagamento.DataSet.FieldByName('Status').AsInteger := 0;
      dsPrazoPagamento.DataSet.Next;
    end;
    dsPrazoPagamento.DataSet.First;
    //dsPrazoPagamento.DataSet.EnableControls;
  end;

end;

procedure TfrmCustoMarkup.MSGAviso(InsereNovo: Boolean);
begin
  if not InsereNovo then
    raise Exception.Create('Favor clicar em novo para inserir registro!');
end;

procedure TfrmCustoMarkup.PesquisaAliquotaDespesaFixaRepresenta;
begin
  FController
    .Entidades
    .ReceitaDespesa
    .DataSet(dsReceitaDespesa)

end;

function TfrmCustoMarkup.PesquisaAliquotaGrupo(aValue: String): Boolean;
var
  lSQL, lWhere, lOrdem: String;
begin
  lSQL := '';
  lWhere := '';

  lSQL := ('select ' +
    'ag.id, ' +
    'ag.idmarkupnome, ' +
    'mn.descricao MarkupNome, ' +
    'ag.idaliquotanome, ' +
    'an.descricao AliquotaNome, ' +
    'ag.aliquota, ' +
    'ag.datalancamento, ' +
    'ag.operador, ' +
    'ag.status, ' +
    'ag.ativo, ' +

    '  ( ' +
    ' select ' +
    '   coalesce(cast(sum(ag1.aliquota) as Numeric(10,2)),0) AliquotaGrupo ' +
    ' from aliquotagrupo ag1 ' +
    ' where ag1.idmarkupnome = ag.idmarkupnome ' +
    '), ' +

    '( ' +
    ' select ' +
    '   count(*) QtdeRegistroGrupo ' +
    ' from aliquotagrupo ag2 ' +
    ' where ag2.idmarkupnome = ag.idmarkupnome ' +
    '), ' +

    '( ' +
    ' select ' +
    '   coalesce(cast(sum(ag3.aliquota) as Numeric(10,2)),0) AliquotaGeral ' +
    ' from aliquotagrupo ag3 ' +
    '), ' +

    '( ' +
    ' select ' +
    '   count(*) QtdeRegistro ' +
    ' from aliquotagrupo ag4 ' +
    ') ' +

    'from AliquotaGrupo ag ' +
    'inner join MarkupNome   mn on mn.id = ag.idmarkupnome ' +
    'inner join AliquotaNome an on an.id = ag.idaliquotanome ');

  if aValue <> '' then
    case rgChoiceAliquotaNome.ItemIndex of
      0:
        lWhere := ('where ag.Id=' + aValue + ' ');
      1:
        lWhere := ('where ag.IdMarkupNome=' + aValue + ' ');
      2:
        lWhere := ('where ag.IdAliquotaNome=' + aValue + ' ');
      3:
        lWhere := ('where mn.Descricao CONTAINING ''' + aValue + ''' ');
      4:
        lWhere := ('where an.Descricao CONTAINING ''' + aValue + ''' ');
      5:
        lWhere := ('where ag.Operador CONTAINING ''' + aValue + ''' ');
    end;

  lOrdem := ('order by mn.Descricao ');

  dmPrincipal.sqlAliquotaGrupo.Active := False;
  dmPrincipal.sqlAliquotaGrupo.CommandText := (lSQL + lWhere + lOrdem);
  dmPrincipal.cdsAliquotaGrupo.Active := False;
  dmPrincipal.cdsAliquotaGrupo.Active := True;

  if not dmPrincipal.cdsAliquotaGrupo.IsEmpty then
    Result := True
  else
    Result := False;

  AtualizarSearch;
end;

procedure TfrmCustoMarkup.PesquisaAliquotaNomeCustoFinanceiro;
var
  lStatus: Integer;
begin
  if pgMain.ActivePageIndex = 5 then
    lStatus := 1
  else
    lStatus := 0;
  MSGAviso(FInsereNovo);
  FController
    .Entidades
    .AliquotaNome
    .DataSet(dmPrincipal.dsAliquotaNome)
    .Ativo(rgActive.ItemIndex)
    .Status(lStatus)
    .EscolhaFiltro(0)
    .EscolhaTipoLancamento(1)
    .TextoFiltro(edtIdCustoFinanceiroAliquotaNome.Text)
    .Buscar(edtIdCustoFinanceiroAliquotaNome.Text);

  if Not dmPrincipal.dsAliquotaNome.DataSet.IsEmpty then
  begin
    lCustoFinanceiroAliquotaNome.Caption := dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Descricao').AsString;
    btnBuscarPrazoPagamento.Click;
    btnSalve.Enabled := True;
    btnSalve.SetFocus;
  end
  else
  begin
    btnSalve.Enabled := False;
    lCustoFinanceiroAliquotaNome.Caption := '...';

    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Registro n�o encontrado. Verifique ' + #13 +
      'a tabela Nome de Al�quota, se consta um cadastro com, ' + #13 +
      'Al�quota de Financeiro > que 0, Estando com a op��o de ' + #13 +
      'Financeiro marcada como 1 - Sim. Caso n�o encontrar, ' +
      'Cadastre apenas uma op��o na tabela Nome de Al�quota. ' + #13 +
      'Op��o encontrada na tela Conjunto Custo ' + #13 +
      'Markup na segunda aba Nome Al�quota no canto ' + #13 +
      'direito da tela um quadrado com duas op��es Financeiro 0 - N�o e 1 - Sim. Marque a Op��o 1 - Sim e faz o cadastro');
  end;
end;

procedure TfrmCustoMarkup.PesquisaAliquotaNomeFiltro;
begin
  FController
    .Entidades
    .AliquotaNome
    .DataSet(dmPrincipal.dsAliquotaNome)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rbAliquotaNomeFiltro.ItemIndex)
    .TextoFiltro(edtSearchAliquotaNomeFiltro.Text)
    .Buscar(edtSearchAliquotaNomeFiltro.Text);

  if not dmPrincipal.dsAliquotaNome.DataSet.IsEmpty then
  begin
    btnSalve.Enabled := True;
    dbgAliquotaNomeFiltro.SetFocus;
    dbgAliquotaNomeFiltro.ReadOnly := False;
    dbgAliquotaNomeFiltro.Fields[0].ReadOnly := True;
    dbgAliquotaNomeFiltro.Fields[2].ReadOnly := True;
    TFloatField(dmPrincipal.dsAliquotaNome.DataSet.FieldByName('Aliquota')).DisplayFormat := '0.00';
  end;
end;

procedure TfrmCustoMarkup.PesquisaCustoFinanceiro;
begin
  FController
    .Entidades
    .CustoFinanceiro
    .DataSet(dsCustoFinanceiro)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rgChoiceCustoFinanceiro.ItemIndex)
    .TextoFiltro(edtSearchCustoFinanceiro.Text)
    .Buscar(edtSearchCustoFinanceiro.Text);
end;

function TfrmCustoMarkup.PesquisaMarkupNome(aValue: String): Boolean;
var
  lSQL, lWhere, lOrdem: String;
begin
  lSQL := '';
  lWhere := '';

  lSQL := ('select ' +
    'mn.id, ' +
    'mn.idregiao, ' +
    'r.descricao regiao, ' +
    'mn.descricao, ' +
    'mn.operador, ' +
    'mn.datalancamento, ' +
    'mn.ativo, ' +

    '( ' +
    'select ' +
    ' count(*) QtdeRegistro ' +
    'from MarkupNome ' +
    ') ' +

    'from MarkupNome mn ' +
    'inner join cad_regiao r on r.id = mn.idregiao ');

  if aValue <> '' then
    case rgChoiceMarkupNome.ItemIndex of
      0:
        lWhere := ('where mn.id=' + aValue + ' ');
      1:
        lWhere := ('where mn.Descricao CONTAINING ''' + aValue + ''' ');
      2:
        lWhere := ('where mn.IdRegiao=' + aValue + ' ');
      3:
        lWhere := ('where r.Descricao CONTAINING ''' + aValue + ''' ');
      4:
        lWhere := ('where mn.Operador CONTAINING ''' + aValue + ''' ');
    end;

  lOrdem := ('order by mn.Descricao ');

  dmPrincipal.sqlMarkupNome.Active := False;
  dmPrincipal.sqlMarkupNome.CommandText := (lSQL + lWhere + lOrdem);
  dmPrincipal.cdsMarkupNome.Active := False;
  dmPrincipal.cdsMarkupNome.Active := True;

  if not dmPrincipal.cdsMarkupNome.IsEmpty then
    Result := True
  else
    Result := False;

  AtualizarSearch;
end;

function TfrmCustoMarkup.PesquisaAliquotaNome(aValue: String): Boolean;
var
  lSQL, lWhere, lOrdem: String;
begin
  lSQL := '';
  lWhere := '';

  lSQL := ('select ' +
    '  an.id, ' +
    '  an.status, ' +
    '  an.descricao, ' +
    '  an.aliquota, ' +
    '  an.datalancamento, ' +
    '  an.operador, ' +
    '  an.financeiro, ' +
    '  an.ativo, ' +

    '  ( ' +
    '    select ' +
    '      count(*) QtdeRegistro ' +
    '    from AliquotaNome ' +
    '   ) ' +

    'from AliquotaNome an ');

  if ((pgMain.ActivePageIndex = 3) or (pgMain.ActivePageIndex = 4)) then
    case rgFinanceiro.ItemIndex of
      0: lWhere := lWhere + ('Where an.Financeiro=' + IntToStr(rgFinanceiro.ItemIndex) + ' ');
      1: lWhere := lWhere + ('Where an.Financeiro=' + IntToStr(rgFinanceiro.ItemIndex) + ' ');
    end;

  //if pgMain.ActivePageIndex <> 3 then
  //  lWhere := lWhere + ('Where an.Financeiro=' + IntToStr(0) + ' ');

  if aValue <> '' then
    case rgChoiceAliquotaNome.ItemIndex of
      0: lWhere := lWhere + ('and an.id=' + aValue + ' ');
      1: lWhere := lWhere + ('and an.Descricao CONTAINING ''' + aValue + ''' ');
      2: lWhere := lWhere + ('and an.Operador CONTAINING ''' + aValue + ''' ');
    end;

  case rgFinanceiro.ItemIndex of
   0: lOrdem := ('order by an.Descricao ');
   1: lOrdem := ('order by an.Descricao ');
   2: lOrdem := ('order by an.Financeiro asc, an.Descricao ');
  end;

  dmPrincipal.sqlAliquotaNome.Active := False;
  dmPrincipal.sqlAliquotaNome.CommandText := (lSQL + lWhere + lOrdem);
  dmPrincipal.cdsAliquotaNome.Active := False;
  dmPrincipal.cdsAliquotaNome.Active := True;

  if dmPrincipal.cdsAliquotaNome.IsEmpty then
    Result := False
  else
    Result := True;

  AtualizarSearch;
end;

function TfrmCustoMarkup.PesquisaMarkupNomeFiltro(aValue: String; aFiltro: Integer): Boolean;
var
  lSQL, lWhere, lOrdem: String;
begin
  MSGAviso(FInsereNovo);

  lSQL := ('select ' +
    'mn.id, ' +
    'mn.idregiao, ' +
    'r.descricao regiao, ' +
    'mn.descricao, ' +
    'mn.operador, ' +
    'mn.datalancamento, ' +
    'mn.ativo, ' +

    '( ' +
    '   select ' +
    '     count(*) QtdeRegistro ' +
    '   from MarkupNome ' +
    '  ) ' +

    'from MarkupNome mn ' +
    'inner join cad_regiao r on r.id = mn.idregiao ');

  if aValue <> '' then
    case aFiltro of
      0:
        lWhere := ('and mn.Id=' + IntToStr(StrToInt(aValue)) + ' ');
      1:
        lWhere := ('and mn.Descricao CONTAINING ''' + aValue + ''' ');
      2:
        lWhere := ('and mn.Operador CONTAINING ''' + aValue + ''' ');
    end;

  lOrdem := 'Order By mn.Descricao ';

  dmPrincipal.sqlMarkupNome.Active := False;
  dmPrincipal.sqlMarkupNome.CommandText := lSQL + lWhere + lOrdem;
  dmPrincipal.cdsMarkupNome.Active := False;
  dmPrincipal.cdsMarkupNome.Active := True;

  if not dmPrincipal.cdsMarkupNome.IsEmpty then
  begin
    Result := True;
    dmPrincipal.cdsAliquotaGrupo.FieldByName('MarkupNome').AsString := dmPrincipal.cdsMarkupNome.FieldByName('Descricao').AsString;

    btnPesquisaAliquotaNomeFiltro.Click;
  end
  else
  begin
    Result := False;
    dmPrincipal.cdsAliquotaGrupo.FieldByName('MarkupNome').Clear;
  end;
end;

procedure TfrmCustoMarkup.PesquisaPrazoPagamento;
begin
  FController
    .Entidades
    .PrazoPagamento
    .DataSet(dsPrazoPagamento)
    .Ativo(rgActive.ItemIndex)
    .EscolhaFiltro(rbPrazoPagamento.ItemIndex)
    .TextoFiltro(edtSearchPrazoPagamento.Text)
    .Buscar(edtSearchPrazoPagamento.Text);
end;

procedure TfrmCustoMarkup.PesquisaRegiaoNome;
begin
  MSGAviso(FInsereNovo);
  FController
    .Entidades
    .RegiaoPessoa
    .DataSet(dsAuxiliar)
    .EscolhaFiltro(0)
    .TextoFiltro(edtIdRegiaoPessoa.Text)
    .Buscar(edtIdRegiaoPessoa.Text);

  if not dsAuxiliar.DataSet.IsEmpty then
  begin
    dmPrincipal.cdsMarkupNome.FieldByName('Regiao').AsString := dsAuxiliar.DataSet.FieldByName('Descricao').AsString;
    edtDescriptionMarkupNome.SetFocus;
  end
  else
  begin
    dmPrincipal.cdsMarkupNome.FieldByName('Regiao').Clear;
    raise Exception.Create('Aten��o... ' + edtOperator.Text + ' Registro n�o encontrado, tente outro filtro!');
  end;
end;

end.
