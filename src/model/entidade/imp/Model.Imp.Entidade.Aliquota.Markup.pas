{*******************************************************}
{                  API-HORSE-REST-JSON                  }
{                      ES Sistemas                      }
{            In�cio do projeto 27/05/2023               }
{                 www.bemoreweb.com.br                  }
{                     (17)98169-5336                    }
{                        2003/2023                      }
{         Analista desenvolvedor (Eleandro Silva)       }
{*******************************************************}
unit Model.Imp.Entidade.Aliquota.Markup;

interface

uses
  Model.Entidade.Aliquota.MArkup.Interfaces,
  Model.Entidade.Aliquota.Nome.Interfaces,
  Model.Imp.Entidade.Aliquota.Nome;

type
  TAliquotaMarkup<T : iInterface> = class(TInterfacedObject, iAliquotaMarkup<T>)
    private
     [Weak]
     FParent                  : T;
     FId                      : Integer;
     FIdRegiao                : Integer;
     FStatusAliquotaNome      : Integer;
     FNomeMarkup              : String;
     FValorVendaaVista        : Currency;
     FValorFichaTecnica       : Currency;
     FAliquotaMarkupComLucro  : Currency;
     FAliquotaMarkupSemLucro  : Currency;
     FValorAliquota           : Currency;
     FValorMarkupComLucro     : Currency;
     FValorMarkupSemLucro     : Currency;
     FValorFichatecnicaMarkup : Currency;
     FValorLucroReal          : Currency;
     FAliquotaNome : iAliquotaNome<iAliquotaMarkup<T>>;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iAliquotaMarkup<T>;

      function Id(value : Integer)                       : iAliquotaMarkup<T>; overload;
      function Id : Integer;                                                   overload;
      function IdRegiao(Value : Integer)                 : iAliquotaMarkup<T>; overload;
      function IdRegiao : Integer;                                             overload;
      function StatusAliquotaNome(Value : Integer)       : iAliquotaMarkup<T>; overload;
      function StatusAliquotaNome : Integer;                                   overload;
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

constructor TAliquotaMarkup<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TAliquotaMarkup<T>.Destroy;
begin
  inherited;
end;

function TAliquotaMarkup<T>.&End: T;
begin
  Result := FParent;
end;

class function TAliquotaMarkup<T>.New(Parent: T) : iAliquotaMarkup<T>;
begin
  Result := Self.Create(Parent);
end;

function TAliquotaMarkup<T>.Id(Value: Integer): iAliquotaMarkup<T>;
begin
  Result := Self;
  FId    := Value;
end;

function TAliquotaMarkup<T>.Id: Integer;
begin
  Result := FId;
end;

function TAliquotaMarkup<T>.IdRegiao(Value: Integer): iAliquotaMarkup<T>;
begin
  Result := Self;
  FIdRegiao := Value;
end;

function TAliquotaMarkup<T>.IdRegiao: Integer;
begin
  Result := FIdRegiao;
end;

function TAliquotaMarkup<T>.StatusAliquotaNome(Value: Integer): iAliquotaMarkup<T>;
begin
  Result := Self;
  FStatusAliquotaNome := Value;
end;

function TAliquotaMarkup<T>.StatusAliquotaNome: Integer;
begin
  Result := FStatusAliquotaNome;
end;

function TAliquotaMarkup<T>.NomeMarkup(Value: String): iAliquotaMarkup<T>;
begin
  Result := Self;
  FNomeMarkup := Value;
end;

function TAliquotaMarkup<T>.NomeMarkup: String;
begin
  Result := FNomeMarkup;
end;

function TAliquotaMarkup<T>.ValorVendaAvista(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FValorVendaaVista := Value;
end;

function TAliquotaMarkup<T>.ValorVendaAvista: Currency;
begin
  Result := FValorVendaAVista;
end;

function TAliquotaMarkup<T>.ValorFichaTecnica(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FValorFichaTecnica := Value;
end;

function TAliquotaMarkup<T>.ValorFichaTecnica: Currency;
begin
  Result := FValorFichaTecnica;
end;

function TAliquotaMarkup<T>.AliquotaMarkupSemLucro(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FAliquotaMarkupSemLucro := Value;
end;

function TAliquotaMarkup<T>.AliquotaMarkupComLucro(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FAliquotaMarkupComLucro := Value;
end;

function TAliquotaMarkup<T>.AliquotaMarkupComLucro: Currency;
begin
  Result := FAliquotaMarkupComLucro;
end;

function TAliquotaMarkup<T>.AliquotaMarkupSemLucro: Currency;
begin
  Result := FAliquotaMarkupSemLucro;
end;

function TAliquotaMarkup<T>.ValorAliquota(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FValorAliquota := Value;
end;

function TAliquotaMarkup<T>.ValorAliquota: Currency;
begin
  Result := FValorAliquota;
end;

function TAliquotaMarkup<T>.ValorMarkupComLucro(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FValorMarkupComLucro := Value;
end;

function TAliquotaMarkup<T>.ValorMarkupComLucro: Currency;
begin
  Result := FValorMarkupComLucro;
end;

function TAliquotaMarkup<T>.ValorMarkupSemLucro(Value: Currency): iALiquotaMarkup<T>;
begin
  Result := Self;
  FValorMarkupSemLucro := Value;
end;

function TAliquotaMarkup<T>.ValorMarkupSemLucro: Currency;
begin
  Result := FValorMarkupSemLucro;
end;

function TAliquotaMarkup<T>.ValorFichatecnicaMarkup(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FValorFichatecnicaMarkup := Value;
end;

function TAliquotaMarkup<T>.ValorFichatecnicaMarkup: Currency;
begin
  Result := FValorFichatecnicaMarkup;
end;

function TAliquotaMarkup<T>.ValorLucroReal: Currency;
begin
  Result := FValorLucroReal;
end;

function TAliquotaMarkup<T>.ValorLucroReal(Value: Currency): iAliquotaMarkup<T>;
begin
  Result := Self;
  FValorLucroReal := Value;
end;




//inje��o de depend�ncia iAliquotaNome
function TAliquotaMarkup<T>.AliquotaNome: iAliquotaNome<iAliquotaMarkup<T>>;
begin
  FAliquotaNome := TAliquotaNome<iAliquotaMarkup<T>>.New(Self);
end;
end.
