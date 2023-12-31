{*******************************************************}
{                    API PDV - JSON                     }
{                      ES Sistemas                      }
{            In�cio do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}

unit Model.Imp.Configuracao;

interface

uses
  System.SysUtils,
  System.IniFiles,

  Vcl.Forms,

  Model.Conexao.Configuracao.Interfaces;


type
  TConfiguracaoBasedados= class(TInterfacedObject, iConfiguracao)
    private
      FArquivoIni   : TIniFile;
      FDiretorioexe : String;
      procedure CriarArquivo;
    public
      constructor Create;

      destructor Destroy; override;
      class function New : iConfiguracao;
      function ServerHost     : String;
      function Port           : String;
      function Database       : String;
      function UserName       : String;
      function Password       : String;
      function DriverName     : String;
      function LibraryName    : String;
      function VendorLib      : String;
      function GetDriveFunc   : String;
      function ConnectionName : String;
end;

implementation

{ TConfiguracaoBasedados }

constructor TConfiguracaoBasedados.Create;
begin
  FDiretorioexe := (ExtractFilePath(Application.ExeName));
  if not FileExists(ExtractFilePath(Application.ExeName)+'ConfiguracaoFirebird.ini') then
    CriarArquivo;

  FArquivoIni := TIniFile.Create(FDiretorioexe + 'ConfiguracaoFirebird.ini');
end;

procedure TConfiguracaoBasedados.CriarArquivo;
begin
  {
  FDiretorioexe := (ExtractFilePath(Application.ExeName));

  FArquivoIni := TIniFile.Create(FDiretorioexe + 'ConfigFirebird.ini');
  try
    FArquivoIni.WriteString('ConfigFirebird', 'ServerHost'     , 'mysql670.umbler.com');
    FArquivoIni.WriteString('ConfigFirebird', 'Port'           , '41890');
    FArquivoIni.WriteString('ConfigFirebird', 'Database'       , 'essistemas');
    FArquivoIni.WriteString('ConfigFirebird', 'UserName'       , 'esilva');
    FArquivoIni.WriteString('ConfigFirebird', 'Password'       , 'EleandroSilva');
    FArquivoIni.WriteString('ConfigFirebird', 'DriverName'     , 'MySQL');
    FArquivoIni.WriteString('ConfigFirebird', 'LibraryName'    , 'dbxmys.dll');
    FArquivoIni.WriteString('ConfigFirebird', 'VendorLib'      , FDiretorioexe+'libmysql.dll');
    FArquivoIni.WriteString('ConfigFirebird', 'GetDriveFunc'   , 'getSQLDriverMySQL');
    FArquivoIni.WriteString('ConfigFirebird', 'ConnectionName' , 'MYSQLCONNECTION');
  finally
    FreeAndNil(FArquivoIni);
  end;
  }
end;

class function TConfiguracaoBasedados.New: iConfiguracao;
begin
  Result := Self.Create;
end;

destructor TConfiguracaoBasedados.Destroy;
begin
  FreeAndNil(FArquivoIni);
  inherited;
end;

function TConfiguracaoBasedados.ServerHost: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'ServerHost', Result);
end;

function TConfiguracaoBasedados.Port: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'Port', Result);
end;

function TConfiguracaoBasedados.Database: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'Database', Result);
end;

function TConfiguracaoBasedados.UserName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'UserName', Result);
end;

function TConfiguracaoBasedados.Password: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'Password', Result);
end;

function TConfiguracaoBasedados.DriverName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'DriverName', Result);
end;

function TConfiguracaoBasedados.LibraryName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'LibraryName', Result);
end;

function TConfiguracaoBasedados.VendorLib: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'VendorLib', Result);
end;

function TConfiguracaoBasedados.GetDriveFunc: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'GetDriveFunc', Result);
end;

function TConfiguracaoBasedados.ConnectionName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoFirebird', 'CoonectionName', Result);
end;

end.
