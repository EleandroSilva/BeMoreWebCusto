{*******************************************************}
{                    API PDV - JSON                     }
{                      ES Sistemas                      }
{            Início do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Imp.Factory.Entidade;

interface

uses
  Model.Factory.Entidade.Interfaces,
  Model.DAO.Aliquota.Markup.Interfaces,
  Model.DAO.Imp.Aliquota.Markup;

type
  TFactoryEntidade = Class(TInterfacedObject, iFactoryEntidade)
    private
      FAliquotaMarkup : iDAOAliquotaMarkup;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFactoryEntidade;

      function AliquotaMarkup : iDAOAliquotaMarkup;
  End;


implementation


function TFactoryEntidade.AliquotaMarkup: iDAOAliquotaMarkup;
begin
  if not Assigned(FAliquotaMarkup) then
    FAliquotaMarkup := TDAOAliquotaMarkup.New;

  Result := FAliquotaMarkup;
end;

constructor TFactoryEntidade.Create;
begin
  //
end;

destructor TFactoryEntidade.Destroy;
begin
  inherited;
end;

class function TFactoryEntidade.New: iFactoryEntidade;
begin
  Result := Self.Create;
end;

end.
