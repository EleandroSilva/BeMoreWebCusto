unit Whorkshop.Model.Connection.Config;

interface

uses
  System.SysUtils,
  Vcl.Forms,
  System.IniFiles,

  Whorkshop.Model.Connection.Interfaces;

type
  TModelConnectionConfig = class(TInterfacedObject, iModelConnectionConfig)
  private
    FConfig: TIniFile;

    { private }
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConnectionConfig;

    function DriverName : String;
    function Database : String;
    function UserName : String;
    function Password : String;
    function Server : String;
    function Port : String;
    function VendorLib : String;
    function ServerName : String;
  end;

implementation

{ TModelConexaoConfig }

constructor TModelConnectionConfig.Create;
var
  lDiretorio: String;
begin
  lDiretorio := (ExtractFilePath(Application.ExeName));
  if not Assigned(FConfig) then
    FConfig := TIniFile.Create(lDiretorio + 'ConfigFirebird.ini');
end;

function TModelConnectionConfig.Database: String;
begin
  Result := FConfig.ReadString('Config', 'DataBase', Result);
end;

destructor TModelConnectionConfig.Destroy;
begin
  if Assigned(FConfig) then
    FreeAndNil(FConfig);
  inherited;
end;

function TModelConnectionConfig.DriverName: String;
begin
  Result := FConfig.ReadString('Config', 'DriverID', Result);
end;

function TModelConnectionConfig.ServerName: String;
begin
  Result := FConfig.ReadString('Config', 'NomeServidor', Result);
end;

class function TModelConnectionConfig.New: iModelConnectionConfig;
begin
  Result := Self.Create;
end;

function TModelConnectionConfig.Password: String;
begin
  Result := FConfig.ReadString('Config', 'Password', Result);
end;

function TModelConnectionConfig.Port: String;
begin
  Result := FConfig.ReadString('Config', 'Port', Result);
end;

function TModelConnectionConfig.Server: String;
begin
  Result := FConfig.ReadString('Config', 'Server', Result);
end;

function TModelConnectionConfig.UserName: String;
begin
  Result := FConfig.ReadString('Config', 'UserName', Result);
end;

function TModelConnectionConfig.VendorLib: String;
begin
  Result := FConfig.ReadString('Config', 'VendorLib', Result);
end;

end.
