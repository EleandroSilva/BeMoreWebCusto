{*******************************************************}
{                    API PDV - JSON                     }
{                      ES Sistemas                      }
{            In�cio do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Conexao.Configuracao.Interfaces;

interface

type
  iConfiguracao = interface
    ['{E8BB92F6-51EC-4543-A42D-BF5567C7F175}']
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

end.
