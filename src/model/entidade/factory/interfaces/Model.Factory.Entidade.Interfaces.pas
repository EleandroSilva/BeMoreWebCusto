{*******************************************************}
{                    API PDV - JSON                     }
{                      ES Sistemas                      }
{            In�cio do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Factory.Entidade.Interfaces;

interface

uses
  Model.DAO.Aliquota.Markup.Interfaces;

type
  iFactoryEntidade = interface
    ['{DD4DB681-A424-4AD5-BB0F-FB97062A6BB6}']
    function AliquotaMarkup : iDAOAliquotaMarkup;
  end;

implementation

end.
