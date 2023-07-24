{*******************************************************}
{                    API PDV - JSON                     }
{                      ES Sistemas                      }
{            In�cio do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Aliquota.Nome.Interfaces;

interface

type
  iAliquotaNome<T> = interface
    ['{AED7EF63-D89B-4010-9C52-4A812B817DCD}']
    function Id(Value : Integer)               : iAliquotaNome<T>; overload;
    function Id : Integer;                                         overload;
    {Status uso para definir se o registro da tabela � margem de lucro da empresa 1-Sim margem de lucro 2-N�o � margem de lucro}
    function Status(Value : Integer)           : iAliquotaNome<T>; overload;
    function Status : Integer;                                     overload;
    function Descricao(Value : String)         : iAliquotaNome<T>; overload;
    function Descricao : String;                                   overload;
    function Aliquota(Value : Currency)        : iAliquotaNome<T>; overload;
    function Aliquota : Currency;                                  overload;
    function Operador(Value : String)          : iAliquotaNome<T>; overload;
    function Operador : String;                                    overload;
    function DataLancamento(Value : TDateTime) : iAliquotaNome<T>; overload;
    function DataLancamento : TDateTime;                           overload;
    function Financeiro(Value : Integer)       : iAliquotaNome<T>; overload;
    function Financeiro : Integer;                                 overload;
    function Ativo(Value : Integer)            : iAliquotaNome<T>; overload;
    function Ativo : Integer;                                      overload;

    function &End : T;
  end;

implementation

end.
