{*******************************************************}
{                    API PDV - JSON                     }
{                      ES Sistemas                      }
{            In�cio do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Entidade.Aliquota.Markup.Interfaces;

interface

uses
  Model.Entidade.Aliquota.Nome.Interfaces;

type
  iAliquotaMarkup<T> = interface
    ['{EB0E1BBF-B252-4D72-AF07-C23980C15B0C}']
    function Id(value : Integer)                       : iAliquotaMarkup<T>; overload;
    function Id : Integer;                                                   overload;
    function IdRegiao(Value : Integer)                 : iAliquotaMarkup<T>; overload;
    function IdRegiao : Integer;                                             overload;
    function NomeMarkup(Value : String)                : iAliquotaMarkup<T>; overload;
    function NomeMarkup : String;                                            overload;
    function ValorVendaAvista(Value : Currency)        : iAliquotaMarkup<T>; overload;
    function ValorVendaaVista : Currency;                                    overload;
    function ValorFichaTecnica(Value : Currency)       : iAliquotaMarkup<T>; overload;
    function ValorFichaTecnica : Currency;                                   overload;
    function AliquotaMarkupComLucro(Value : Currency)  : iAliquotaMarkup<T>; overload;
    function AliquotaMarkupComLucro : Currency;                              overload;
    function AliquotaMarkupSemLucro(Value : Currency)  : iAliquotaMarkup<T>; overload;
    function AliquotaMarkupSemLucro : Currency;                              overload;
    function ValorAliquota(Value : Currency)           : iAliquotaMarkup<T>; overload;
    function ValorAliquota : Currency;                                       overload;
    function ValorMarkupComLucro(Value : Currency)     : iAliquotaMarkup<T>; overload;
    function ValorMarkupComLucro : Currency;                                 overload;
    function ValorMarkupSemLucro(Value : Currency)     : iALiquotaMarkup<T>; overload;
    function ValorMarkupSemLucro : Currency;                                 overload;
    function ValorFichatecnicaMarkup(Value : Currency) : iAliquotaMarkup<T>; overload;
    function ValorFichatecnicaMarkup : Currency;                             overload;
    function ValorLucroReal(Value : Currency)          : iAliquotaMarkup<T>; overload;
    function ValorLucroReal : Currency;                                      overload;

    //Inje��o de depend�ncia
    function AliquotaNome : iAliquotaNome<iAliquotaMarkup<T>>;

    function &End : T;
  end;


implementation

end.
