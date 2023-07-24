unit Whorkshop.Model.Connection.Firedac.Query;

interface

uses
  System.SysUtils,
  System.JSON,

  Vcl.Dialogs,

  Firedac.Stan.Intf,
  Firedac.Stan.Option,
  Firedac.Stan.Param,
  Firedac.Stan.Error,
  Firedac.DatS,
  Firedac.Phys.Intf,
  Firedac.DApt.Intf,
  Firedac.Stan.Async,
  Firedac.DApt,
  Firedac.Comp.DataSet,
  Firedac.Comp.Client,

  Data.DB,

  Whorkshop.Model.Connection.Interfaces,

  DataSetConverter4D.Helper,
  DataSetConverter4D.Impl;

Type
  TModelConnectionFiredacQuery = class(TInterfacedObject, iModelQuery)
  private
    FQuery      : TFDQuery;
    FConnection : iModelConnection;
  public
    constructor Create(Parent: iModelConnection);
    destructor Destroy; override;
    class function New(Parent: iModelConnection): iModelQuery;

    function Query: TDataSet;
    function Open(aSQL : String) : iModelQuery;
    function ExecSQL(aSQL: string): iModelQuery;
    function Append(aSQL : String): iModelQuery;

    function PegarGenId(aSQL: String): Integer;

    function Get(const aSQL: String = ''): TJSONArray;
  end;

implementation

{ TModelConnectionFiredacQuery }

function TModelConnectionFiredacQuery.Append(aSQL : String): iModelQuery;
begin
  Result := Self;
  try
    try
      if not FQuery.Active  then
      FQuery.Open(aSQL);
      FQuery.Append;
    except
      on E: EFDDBEngineException do
        raise Exception.Create('Ocorreu erro ao tentar salvar registro ')
    end;

  finally
   //ShowMessage('Registro salvo com sucesso!');
  end;
end;

constructor TModelConnectionFiredacQuery.Create(Parent: iModelConnection);
begin
  FConnection := Parent;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FConnection.Connection);
end;

destructor TModelConnectionFiredacQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelConnectionFiredacQuery.ExecSQL(aSQL: string): iModelQuery;
begin
  Result := Self;
  try
    try
      FQuery.ExecSQL(aSQL);
    except
      on E: EFDDBEngineException do
        raise Exception.Create('Ocorreu erro ao tentar salvar registro ')
    end;

  finally
   //ShowMessage('Registro salvo com sucesso!');
  end;
end;

class function TModelConnectionFiredacQuery.New(Parent: iModelConnection): iModelQuery;
begin
  Result := Self.Create(Parent);
end;

function TModelConnectionFiredacQuery.Open(aSQL: string): iModelQuery;
begin
  Result := Self;

  FQuery.Open(aSQL);

  if FQuery.IsEmpty then
  //  raise Exception.Create('Registro n�o encontrado, favor tentar outro filtro!');
end;

function TModelConnectionFiredacQuery.PegarGenId(aSQL: String): Integer;
begin
  Result := 0;
  FQuery.Open(aSQL);
  Result := FQuery.FieldByName('Gen_Id').AsInteger;
end;

function TModelConnectionFiredacQuery.Get(const aSQL: String): TJSONArray;
begin
  FQuery.Open(aSQL);
  Result := FQuery.AsJSONArray;
end;

function TModelConnectionFiredacQuery.Query: TDataSet;
begin
  Result := FQuery;
end;

end.
