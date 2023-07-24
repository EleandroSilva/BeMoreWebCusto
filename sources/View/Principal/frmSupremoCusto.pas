unit frmSupremoCusto;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.ImageList,

  Vcl.ActnList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ImgList,
  Vcl.VirtualImageList,
  Vcl.BaseImageCollection,
  Vcl.ImageCollection,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Vcl.Menus,

  ufrmModel,
  ufrmModelProduct,
  ufrmFixedExpense,
  ufrmCustoMarkup,
  ufrmFichaTecnica,
  ufrmMontarCusto,
  ufrmSetorProducao,
  ufrmLocalProducao,
  ufrmSetorLocal,
  ufrmMontarProducaoMaoObra,

  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller,
  Model.Entidade.Config, Vcl.ComCtrls;

type
  TfrmSupremoHome = class(TForm)
    Panel2: TPanel;
    lTextoEmpresa: TLabel;
    lNow: TLabel;
    Panel3: TPanel;
    lHora: TLabel;
    pMenuLateral: TPanel;
    Image1: TImage;
    pFeedstock: TPanel;
    pExit: TPanel;
    iExit: TImage;
    spExit: TSpeedButton;
    pFixedExpense: TPanel;
    Image4: TImage;
    spFixedExpense: TSpeedButton;
    Timer1: TTimer;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    ActionList1: TActionList;
    ActExit: TAction;
    ActHome: TAction;
    ActSettings: TAction;
    ActMateriaPrima: TAction;
    ActDespesaFixa: TAction;
    ActCustoMarkup: TAction;
    ActFichaTecnica: TAction;
    ActCostCalculation: TAction;
    spFeedstock: TSpeedButton;
    Image2: TImage;
    pMarkup: TPanel;
    spMarkup: TSpeedButton;
    Image5: TImage;
    pDataSheet: TPanel;
    spDataSheet: TSpeedButton;
    Image6: TImage;
    pCalculodoCusto: TPanel;
    spCostCalculation: TSpeedButton;
    Image7: TImage;
    pProductGroup: TPanel;
    spProductGroup: TSpeedButton;
    Image8: TImage;
    ActModel: TAction;
    ActProductModel: TAction;
    pProduct: TPanel;
    spProduct: TSpeedButton;
    Image9: TImage;
    ActMontarCusto: TAction;
    MainMenu1: TMainMenu;
    GrupodeProducao: TMenuItem;
    Setores: TMenuItem;
    Local1: TMenuItem;
    Produo1: TMenuItem;
    ModeloProduto1: TMenuItem;
    Modelo1: TMenuItem;
    RelacionarModeloProdutos1: TMenuItem;
    Relacionar1: TMenuItem;
    RelacionarModelocomProduto1: TMenuItem;
    Produo2: TMenuItem;
    ActSetorProducao: TAction;
    ActLocalProducao: TAction;
    ActRelacionarSetorLocal: TAction;
    ActMontarProducaoMaoObra: TAction;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Image3: TImage;
    pLucroPedido: TPanel;
    sbMargemLucroPedido: TSpeedButton;
    ActMargemLucroPedido: TAction;
    StatusBar1: TStatusBar;
    Image10: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure ActExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActModelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActProductModelExecute(Sender: TObject);
    procedure ActDespesaFixaExecute(Sender: TObject);
    procedure ActCustoMarkupExecute(Sender: TObject);
    procedure ActFichaTecnicaExecute(Sender: TObject);
    procedure ActMontarCustoExecute(Sender: TObject);
    procedure ActSetorProducaoExecute(Sender: TObject);
    procedure ActLocalProducaoExecute(Sender: TObject);
    procedure ActRelacionarSetorLocalExecute(Sender: TObject);
    procedure ActMontarProducaoMaoObraExecute(Sender: TObject);
    procedure ActMargemLucroPedidoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FController: iController;
    FEntidadeConfig: TEntidadeConfig;

    procedure ChamarFormLucroPedido;
  public
    { Public declarations }
  end;

var
  frmSupremoHome: TfrmSupremoHome;

implementation

uses
  ufrmMargemLucroPedido;

{$R *.dfm}


procedure TfrmSupremoHome.ActDespesaFixaExecute(Sender: TObject);
begin
  if frmFixedExpense = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmFixedExpense, frmFixedExpense);
    LockWindowUpdate(handle);
    frmFixedExpense.FormStyle := fsMDIChild;
    frmFixedExpense.WindowState := wsMaximized;
    frmFixedExpense.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActMargemLucroPedidoExecute(Sender: TObject);
begin
  ChamarFormLucroPedido;
end;

procedure TfrmSupremoHome.ActModelExecute(Sender: TObject);
begin
  if frmModel = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmModel, frmModel);
    LockWindowUpdate(handle);
    frmModel.FormStyle := fsMDIChild;
    frmModel.WindowState := wsMaximized;
    frmModel.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActMontarCustoExecute(Sender: TObject);
begin
  if frmMontarCusto = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmMontarCusto, frmMontarCusto);
    LockWindowUpdate(handle);
    frmMontarCusto.FormStyle := fsMDIChild;
    frmMontarCusto.WindowState := wsMaximized;
    frmMontarCusto.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActMontarProducaoMaoObraExecute(Sender: TObject);
begin
  if frmMontarProducaoMaoObra = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmMontarProducaoMaoObra, frmMontarProducaoMaoObra);
    LockWindowUpdate(handle);
    frmMontarProducaoMaoObra.FormStyle := fsMDIChild;
    frmMontarProducaoMaoObra.WindowState := wsMaximized;
    frmMontarProducaoMaoObra.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActProductModelExecute(Sender: TObject);
begin
  if frmModelProduct = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmModelProduct, frmModelProduct);
    LockWindowUpdate(handle);
    frmModelProduct.FormStyle := fsMDIChild;
    frmModelProduct.WindowState := wsMaximized;
    frmModelProduct.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActRelacionarSetorLocalExecute(Sender: TObject);
begin
  if frmSetorLocal = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmSetorLocal, frmSetorLocal);
    LockWindowUpdate(handle);
    frmSetorLocal.FormStyle := fsMDIChild;
    frmSetorLocal.WindowState := wsMaximized;
    frmSetorLocal.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActSetorProducaoExecute(Sender: TObject);
begin
  if frmSetorProducao = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmSetorProducao, frmSetorProducao);
    LockWindowUpdate(handle);
    frmSetorProducao.FormStyle := fsMDIChild;
    frmSetorProducao.WindowState := wsMaximized;
    frmSetorProducao.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ChamarFormLucroPedido;
begin
  if frmMargemLucroPedido = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmMargemLucroPedido, frmMargemLucroPedido);
    LockWindowUpdate(handle);
    if FEntidadeConfig.ChamarFormLucroPedido = 1 then
      frmMargemLucroPedido.cbFiltrarPeriodo.Checked := False
    else
      frmMargemLucroPedido.cbFiltrarPeriodo.Checked := True;
    frmMargemLucroPedido.lIdEmpresa.Caption := FEntidadeConfig.Id;
    frmMargemLucroPedido.FormStyle := fsMDIChild;
    frmMargemLucroPedido.WindowState := wsMaximized;
    if FEntidadeConfig.ChamarFormLucroPedido = 1 then
     frmMargemLucroPedido.edtPesquisar.Text := IntToStr(FEntidadeConfig.IdPedidoLucro)
     else
     frmMargemLucroPedido.edtPesquisar.Clear;
    frmMargemLucroPedido.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActCustoMarkupExecute(Sender: TObject);
begin
  if frmCustoMarkup = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmCustoMarkup, frmCustoMarkup);
    LockWindowUpdate(handle);
    frmCustoMarkup.FormStyle := fsMDIChild;
    frmCustoMarkup.WindowState := wsMaximized;
    frmCustoMarkup.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActFichaTecnicaExecute(Sender: TObject);
begin
  if frmFichaTecnica = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmFichaTecnica, frmFichaTecnica);
    LockWindowUpdate(handle);
    frmFichaTecnica.FormStyle := fsMDIChild;
    frmFichaTecnica.WindowState := wsMaximized;
    frmFichaTecnica.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActLocalProducaoExecute(Sender: TObject);
begin
  if frmLocalProducao = nil then
  begin
    IF (ActiveMDIChild <> NIL) AND (ActiveMDIChild.Visible = True) then
      ActiveMDIChild.Close;

    Application.CreateForm(TfrmLocalProducao, frmLocalProducao);
    LockWindowUpdate(handle);
    frmLocalProducao.FormStyle := fsMDIChild;
    frmLocalProducao.WindowState := wsMaximized;
    frmLocalProducao.Show;
    LockWindowUpdate(0);
  end
  else
    exit;
end;

procedure TfrmSupremoHome.ActExitExecute(Sender: TObject);
var
  Result: Integer;
begin
  try
    Result := Application.MessageBox('Tem certeza que deseja sair do sistema?  ', 'FECHAR',
      mb_yesno + mb_defButton2 + mb_iconQuestion);
    if (Result <> IDyes) then
      Abort
    else
    begin
      Application.Terminate;
    end;
  except
    on E: Exception do
      showmessage('Aten��o! sistema n�o ser� encerrado!');
  end;
end;

procedure TfrmSupremoHome.FormCreate(Sender: TObject);
begin
  FController := TController.New;

  FEntidadeConfig := TEntidadeConfig.Create;

  lTextoEmpresa.Caption := FController
    .EntidadesRedeInfocon
    .DadosRedeInfocon
    .DadosCompletos;
end;

procedure TfrmSupremoHome.FormDestroy(Sender: TObject);
begin
  frmSupremoHome := nil;
  FreeAndNil(FEntidadeConfig);
end;

procedure TfrmSupremoHome.FormShow(Sender: TObject);
begin
  FEntidadeConfig.EmpresaLogada;
  StatusBar1.Panels[0].Text := 'Usu�rio Logado: ' + FEntidadeConfig.Operador;
  StatusBar1.Panels[1].Text := 'Id Empresa: ' + FEntidadeConfig.Id;
  StatusBar1.Panels[2].Text := 'Nome Empresa: ' + FEntidadeConfig.NomeEmpresaLogada;
  try
   FEntidadeConfig.IniPegarUltimoIdPedido;
  if FEntidadeConfig.IdPedidoLucro > 0 then
    if FEntidadeConfig.ChamarFormLucroPedido = 1 then
      sbMargemLucroPedido.Click;
  finally
   FEntidadeConfig.IdPedidoLucro := FEntidadeConfig.IdPedidoLucro;
   FEntidadeConfig.ChamarFormLucroPedido := 0;
   FEntidadeCOnfig.SalvarUltimoIdPedido;
  end;
end;

procedure TfrmSupremoHome.Timer1Timer(Sender: TObject);
begin
  lNow.Caption := FormatDateTime('dddd ", " dd " de " mmmm " de " yyyy', now());
  lHora.Caption := FormatDateTime('hh":"nn":"ss"', now());
end;

end.
