unit Whorkshop.Model.Entidades.EmpresaLogada;

interface

uses
  System.SysUtils,
  System.IniFiles,

  Whorkshop.Model.Entidades.EmpresaLogada.Interfaces;

type
  TModelEntidadesEmpresaLogada = class(TInterfacedObject, iModelEntidadeEmpresaLogada)
  private
    FFileName: String;
    FIdEmpresa: String;
    FNomeEmpresa: String;
    FOperador: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidadeEmpresaLogada;

    function IdEmpresa: String;
    function NomeEmpresa: String;
    function Operador: String;
  end;

implementation

{ TModelEntidadesEmpresaLogada }

constructor TModelEntidadesEmpresaLogada.Create;
var
  IniFile: TIniFile;
begin
  if FFileName = EmptyStr then
    FFileName := ExtractFilePath(ParamStr(0)) + 'llempresa.Ini';

  if not Assigned(IniFile) then
    IniFile := TIniFile.Create(FFileName);
  try
    FIdEmpresa := IniFile.ReadString('Informacao', 'codempresa', FIdEmpresa);
    FNomeEmpresa := IniFile.ReadString('Informacao', 'nome', FNomeEmpresa);
    FOperador := IniFile.ReadString('Informacao', 'usuario', FOperador);
  finally
    if Assigned(IniFile) then
      FreeAndNil(IniFile);
  end;
end;

destructor TModelEntidadesEmpresaLogada.Destroy;
begin
  inherited;
end;

class function TModelEntidadesEmpresaLogada.New: iModelEntidadeEmpresaLogada;
begin
  Result := Self.Create;
end;

function TModelEntidadesEmpresaLogada.IdEmpresa: String;
begin
  Result := FIdEmpresa;
end;

function TModelEntidadesEmpresaLogada.NomeEmpresa: String;
begin
  Result := FNomeEmpresa;
end;

function TModelEntidadesEmpresaLogada.Operador: String;
begin
  Result := FOperador;
end;

end.