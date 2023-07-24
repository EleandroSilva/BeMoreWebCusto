unit Whorkshop.Model.Connection.Factory;

interface

uses
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Firedac,
  Whorkshop.Model.Connection.Firedac.Query;

type
  TModelConnectionFactory = class(TInterfacedObject, iModelConnectionFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConnectionFactory;

    function Connection: iModelConnection;
    function Query: iModelQuery;
  end;

implementation



{ TModelConnectionFactory }

function TModelConnectionFactory.Connection: iModelConnection;
begin
  Result := TModelConnectionFiredac.New;
end;

constructor TModelConnectionFactory.Create;
begin
  //
end;

destructor TModelConnectionFactory.Destroy;
begin
  //
  inherited;
end;

class function TModelConnectionFactory.New: iModelConnectionFactory;
begin
  Result := Self.Create;
end;

function TModelConnectionFactory.Query: iModelQuery;
begin
  Result := TModelConnectionFiredacQuery.New(Self.Connection);
end;

end.
