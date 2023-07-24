unit Classes.Uteis;

interface

uses
  System.IniFiles,
  System.SysUtils,
  Vcl.Forms;

Type
  TClasseUteis = class
    private
    FConfig: TIniFile;
    FConfigBase :TIniFile;
    FServidor : String;
    FCliente : String;
    FMaquina : String;
    FNomeServidor : String;
    FDiretorioBase : String;
    FDiretorioServidor : String;
    public
    constructor Create;
    destructor Destroy; override;
    function Servidor : String;
    function Cliente : String;
    function Maquina : String;
    function NomeServidor : String;
    function DiretorioBase : String;
    function DiretorioServidor : String;
  end;

implementation

{ TClasseUteis }

constructor TClasseUteis.Create;
var
  lDiretorio: String;
begin
  lDiretorio := (ExtractFilePath(Application.ExeName));
  FConfig := TIniFile.Create(lDiretorio + 'SERVIDOR_CLIENTE.ini');
  FConfigBase :=TIniFile.Create(lDiretorio + 'SICIC3_0.ini');
end;

destructor TClasseUteis.Destroy;
begin
  FreeAndNil(FConfig);
  FreeAndNil(FConfigBase);
  inherited;
end;

function TClasseUteis.DiretorioBase: String;
begin
  Result := FConfigBase.ReadString('SICIC3.0.FDB', 'Caminho_Base_Dados', Result);
end;

function TClasseUteis.DiretorioServidor: String;
begin
   Result := FConfigBase.ReadString('SICIC3.0.FDB', 'Diretorio_Servidor', Result);
end;

function TClasseUteis.Cliente: String;
begin
  Result := FConfig.ReadString('Informacao', 'Cliente', Result);
end;

function TClasseUteis.Maquina: String;
begin
  Result := FConfig.ReadString('Informacao', 'Maquina', Result);
end;

function TClasseUteis.NomeServidor: String;
begin
  Result := FConfigBase.ReadString('SICIC3.0.FDB', 'Nome_Servidor', Result);
end;

function TClasseUteis.Servidor: String;
begin
  Result := FConfig.ReadString('Informacao', 'Servidor', Result);
end;

end.
