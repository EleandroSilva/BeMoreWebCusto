unit Whorkshop.Model.Entidades.RedeInfocon;

interface

uses
  System.SysUtils,
  System.IniFiles,

  Whorkshop.Model.Entidades.RedeInfocon.Interfaces;

type
  TModelEntidadeRedeInfocon = class(TInterfacedObject, iModelEntidadeRedeInfocon)
  private
    FFileName: String;
    FNomeEmpresa: String;
    FNomeFantasia: String;
    FSite: String;
    FTelefone: String;
    FCelular: String;
    FCNPJ: String;
    { private }
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidadeRedeInfocon;

    function NomeEmpresa: String;
    function NomeFantasia: String;
    function Site: String;
    function Telefone: String;
    function Celular: String;
    function CNPJ: String;

    function DadosCompletos: String;
  end;

implementation

{ TModelEntidadeRedeInfocon }

constructor TModelEntidadeRedeInfocon.Create;
var
  IniFile: TIniFile;
begin
  if FFileName = EmptyStr then
    FFileName := ExtractFilePath(ParamStr(0)) + 'DadosRedeInfocon.ini';

  IniFile := TIniFile.Create(FFileName);
  try
    FNomeEmpresa := IniFile.ReadString('Informacao', 'NomeEmpresa', FNomeEmpresa);
    FNomeFantasia := IniFile.ReadString('Informacao', 'NomeFantasia', FNomeFantasia);
    FSite := IniFile.ReadString('Informacao', 'Site', FSite);
    FTelefone := IniFile.ReadString('Informacao', 'Telefone', FTelefone);
    FCelular := IniFile.ReadString('Informacao', 'Celular', FCelular);
    FCNPJ := IniFile.ReadString('Informacao', 'CNPJ', FCNPJ);
  finally
    FreeAndNil(IniFile);
  end;
end;

destructor TModelEntidadeRedeInfocon.Destroy;
begin
  inherited;
end;

class function TModelEntidadeRedeInfocon.New: iModelEntidadeRedeInfocon;
begin
  Result := Self.Create;
end;

function TModelEntidadeRedeInfocon.Celular: String;
begin
  Result := FCelular;
end;

function TModelEntidadeRedeInfocon.CNPJ: String;
begin
  Result := FCNPJ;
end;

function TModelEntidadeRedeInfocon.DadosCompletos: String;
begin
  Result :=
    FNomeEmpresa + ' (' +
    FNomeFantasia + ') ' + ' - ' +
    FCelular + ' ' +
    FSite;
end;

function TModelEntidadeRedeInfocon.NomeEmpresa: String;
begin
  Result := FNomeEmpresa;
end;

function TModelEntidadeRedeInfocon.NomeFantasia: String;
begin
  Result := FNomeFantasia;
end;

function TModelEntidadeRedeInfocon.Site: String;
begin
  Result := FSite;
end;

function TModelEntidadeRedeInfocon.Telefone: String;
begin
  Result := FTelefone;
end;

end.
