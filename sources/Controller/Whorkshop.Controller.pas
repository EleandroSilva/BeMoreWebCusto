unit Whorkshop.Controller;

interface

uses
  Whorkshop.Controller.Interfaces,
  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Entidades.Factory,
  Whorkshop.Model.Entidades.RedeInfocon.Interfaces,
  Whorkshop.Model.Entidades.RedeInfocon.Factory,
  Whorkshop.Model.Entidades.EmpresaLogada.Interfaces,
  Whorkshop.Model.Entidades.EmpresaLogada.Factory,
  Model.Factory.Entidade.Interfaces,
  Model.Imp.Factory.Entidade;

Type
  TController = class(TInterfacedObject, iController)
    private
      FModelEntidades              : iModelEntidadeFactory;
      FModelEntidadesRedeInfocon   : iModelEntidadeRedeInfoconFactory;
      FModelEntidadesEmpresaLogada : iModelEntidadeEmpresaLogadaFactory;
      FFactoryEntidade             : iFactoryEntidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Entidades              : iModelEntidadeFactory;
      function EntidadesRedeInfocon   : iModelEntidadeRedeInfoconFactory;
      function EntidadesEmpresaLogada : iModelEntidadeEmpresaLogadaFactory;
      function FactoryEntidade        : iFactoryEntidade;
  end;

implementation

uses
  System.SysUtils;

{ TController }

constructor TController.Create;
begin
  FModelEntidades := TModelEntidadesFactory.New;
  FModelEntidadesRedeInfocon := TModelEntidadeRedeInfoconFactory.New;
  FModelEntidadesEmpresaLogada := TModelEntidadesEmpresaLogadaFatory.New;
end;

destructor TController.Destroy;
begin
  inherited;
end;

function TController.Entidades: iModelEntidadeFactory;
begin
  Result := FModelEntidades;
end;

function TController.EntidadesEmpresaLogada: iModelEntidadeEmpresaLogadaFactory;
begin
  Result := FModelEntidadesEmpresaLogada;
end;

function TController.EntidadesRedeInfocon: iModelEntidadeRedeInfoconFactory;
begin
  Result := FModelEntidadesRedeInfocon;
end;

function TController.FactoryEntidade: iFactoryEntidade;
begin
  if not Assigned(FFactoryEntidade) then
    FFactoryEntidade := TFactoryEntidade.New;

  Result := FFactoryEntidade;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

end.
