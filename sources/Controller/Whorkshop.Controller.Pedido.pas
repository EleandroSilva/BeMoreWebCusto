unit Whorkshop.Controller.Pedido;

interface

uses
  Data.DB,
  System.SysUtils,
  System.Generics.Collections,

  Whorkshop.Controller.Pedido.Interfaces,
  Whorkshop.Model.Entidades.Pedidos,
  Whorkshop.Model.Pedido.Interfaces,
  Whorkshop.Model;

type
  TControllerPedido = class(TInterfacedObject, iControllerPedido)
  private
    FModel: iModelPedido;
    FDataSource: TDataSource;
    FList : TObjectList<TCAD_PED>;
    FEntidade: TCAD_PED;
    { private }
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerPedido;

    function DataSource(aDataSource: TDataSource): iControllerPedido;

    function Buscar : iControllerPedido; overload;
    function Buscar (aId : Integer): iControllerPedido; overload;

    function Insert : iControllerPedido;
    function Delete : iControllerPedido;
    function Update : iControllerPedido;

    function Entidade : TCAD_PED;
  end;

implementation

{ TControllerPedido }

function TControllerPedido.Buscar: iControllerPedido;
begin
  Result := Self;

  if Assigned(FList) then
    FList.Free;

  FList := FModel.DAO.Find;
end;

function TControllerPedido.Buscar(aID: Integer): iControllerPedido;
begin
  Result := Self;

  if Assigned(FEntidade) then
    FEntidade.Free;

  FEntidade := FModel.DAO.Find(aID);
end;

constructor TControllerPedido.Create;
begin
  FModel := TModel.New.Pedido;
end;

function TControllerPedido.DataSource(
  aDataSource: TDataSource): iControllerPedido;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
end;

function TControllerPedido.Delete: iControllerPedido;
begin
  Result := Self;

  FModel.DAO.Delete(FModel.Entidade);
end;

destructor TControllerPedido.Destroy;
begin
  if Assigned(FList) then
    FList.Free;

  if Assigned(FEntidade) then
    FEntidade.Free;

  inherited;
end;

function TControllerPedido.Entidade: TCAD_PED;
begin
  Result := FModel.Entidade;
end;

function TControllerPedido.Insert: iControllerPedido;
begin
  Result := Self;

  FModel.DAO.Insert(FModel.Entidade);
end;

class function TControllerPedido.New: iControllerPedido;
begin
  Result := Self.Create;
end;

function TControllerPedido.Update: iControllerPedido;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;

end.
