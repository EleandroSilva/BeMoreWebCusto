unit Whorkshop.Controller.Pedido.Interfaces;

interface

uses
  Data.DB,

  Whorkshop.Model.Entidades.Pedidos;

type
  iControllerPedido = interface
    ['{740B7ED0-B179-4BA6-9730-39207DDED093}']
    function DataSource(aDataSource : TDataSource) : iControllerPedido;
    function Buscar : iControllerPedido; overload;
    function Buscar (aId : Integer): iControllerPedido; overload;
    function Insert : iControllerPedido;
    function Delete : iControllerPedido;
    function Update : iControllerPedido;
    function Entidade : TCAD_PED;
  end;

implementation

end.
