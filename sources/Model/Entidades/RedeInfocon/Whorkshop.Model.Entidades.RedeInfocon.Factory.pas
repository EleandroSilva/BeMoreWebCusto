unit Whorkshop.Model.Entidades.RedeInfocon.Factory;

interface

uses
  Whorkshop.Model.Entidades.RedeInfocon.Interfaces,
  Whorkshop.Model.Entidades.RedeInfocon;

type
  TModelEntidadeRedeInfoconFactory = class(TInterfacedObject, iModelEntidadeRedeInfoconFactory)
  private
    FDadosRedeInfocon : iModelEntidadeRedeInfocon;
    { private }
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidadeRedeInfoconFactory;

    function DadosRedeInfocon: iModelEntidadeRedeInfocon;
  end;

implementation

{ TModelEntidadeRedeInfoconFactory }

constructor TModelEntidadeRedeInfoconFactory.Create;
begin
  inherited;
end;

function TModelEntidadeRedeInfoconFactory.DadosRedeInfocon: iModelEntidadeRedeInfocon;
begin
  if not Assigned(FDadosRedeInfocon) then
    FDadosRedeInfocon := TModelEntidadeRedeInfocon.New;

  Result := FDadosRedeInfocon;
end;

destructor TModelEntidadeRedeInfoconFactory.Destroy;
begin
  inherited;
end;

class function TModelEntidadeRedeInfoconFactory.New: iModelEntidadeRedeInfoconFactory;
begin
  Result := Self.Create;
end;

end.
