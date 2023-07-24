unit uRecalcularCusto;

interface

uses udmPrincipal;

Type
  TRecalcularCusto = class
  public
    FValorGasto: Currency;
    FQtdeProducao: Integer;
    FAliquotaFrete: Currency;

  private
    Function CalcularFreteProducaoMaoObra: Currency;
  end;

implementation

{ TRecalcularCusto }

function TRecalcularCusto.CalcularFreteProducaoMaoObra: Currency;
begin
  Result := 0;
  if FAliquotaFrete > 0 then
    Result := (FValorGasto / FQtdeProducao * FAliquotaFrete / 100)
  else
    Result := 0;
end;

end.
