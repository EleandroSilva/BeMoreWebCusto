unit Whorkshop.Model.Entidades.EmpresaLogada.Factory;

interface

uses
  Whorkshop.Model.Entidades.EmpresaLogada.Interfaces,
  Whorkshop.Model.Entidades.EmpresaLogada;

type
  TModelEntidadesEmpresaLogadaFatory = class(TInterfacedObject, iModelEntidadeEmpresaLogadaFactory)
    private
     FEmpresaLogada : iModelEntidadeEmpresaLogada;
    public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelEntidadeEmpresaLogadaFactory;

    function DadosEmpresaLogada : iModelEntidadeEmpresaLogada;
  end;

implementation


{ TModelEntidadesEmpresaLogada }

constructor TModelEntidadesEmpresaLogadaFatory.Create;
begin
  inherited;
end;

function TModelEntidadesEmpresaLogadaFatory.DadosEmpresaLogada: iModelEntidadeEmpresaLogada;
begin
  if not Assigned(FEmpresaLogada) then
    FEmpresaLogada := TModelEntidadesEmpresaLogada.New;

  Result := FEmpresaLogada;
end;

destructor TModelEntidadesEmpresaLogadaFatory.Destroy;
begin
  inherited;
end;

class function TModelEntidadesEmpresaLogadaFatory.New: iModelEntidadeEmpresaLogadaFactory;
begin
  Result := Self.Create;
end;

end.
