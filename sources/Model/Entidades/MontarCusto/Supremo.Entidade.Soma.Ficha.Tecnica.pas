unit Supremo.Entidade.Soma.Ficha.Tecnica;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

Type
  TSomaFichaTecnica = class (TInterfacedObject, iModelEntidade)
    private
    FQuery: iModelQuery;

    FEscolhaFiltro: Integer;
    FEscolhaTipoData: Integer;
    FEscolhaTipoLancamento : Integer;
    FTextoFiltro: String;
    FAtivo: Integer;
    FStatus: Integer;

    FDescricao: String;
    FOperador: String;
    FDataLancamento: TDateTime;
    FIdModelo: String;
    FIdProduto: String;
    FIdParametro1: String;
    FIdParametro2 : String;
    FValorLancamento1 : Currency;
    FValorLancamento2 : Currency;
    FValorLancamento3 : Currency;
    FValorLancamento4 : Currency;
    FQtdeInteger : Integer;
    FQtdeCurrency : Currency;
    FAliquota1: Currency;
    FAliquota2: Currency;
    FAliquota3: Currency;
    FAliquota4: Currency;
    FPrazoMedio : Currency;
    FInicioPeriodo : TDateTime;
    FFimPeriodo : TDateTime;


    FGenId: Integer;

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidade;

    function DataSet(aValue: TDataSource): iModelEntidade; overload;
    function DataSet(aValue: TDataSet): iModelEntidade; overload;

    function EscolhaFiltro(aValue: Integer): iModelEntidade;
    function EscolhaTipoData(aValue: Integer): iModelEntidade;
    function EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
    function TextoFiltro(aValue: String): iModelEntidade;
    function Ativo(aValue: Integer): iModelEntidade;
    function Status(aValue: Integer): iModelEntidade;

    function Descricao(aValue: String): iModelEntidade;
    function Operador(aValue: String): iModelEntidade;
    function DataLancamento(aValue: TDateTime): iModelEntidade;
    function IdModelo(aValue: String): iModelEntidade;
    function IdProduto(aValue: String): iModelEntidade;
    function IdParametro1(aValue: String): iModelEntidade;
    function IdParametro2(aValue: String): iModelEntidade;
    function ValorLancamento1(aValue: currency): iModelEntidade;
    function ValorLancamento2(aValue: currency): iModelEntidade;
    function ValorLancamento3(aValue : Currency) : iModelEntidade;
    function ValorLancamento4(aValue : Currency) : iModelEntidade;
    function Qtde(aValue : Integer) : iModelEntidade; overload;
    function Qtde(aValue : Currency) : iModelEntidade; overload;
    function Aliquota1(aValue : Currency) : iModelEntidade;
    function Aliquota2(aValue : Currency) : iModelEntidade;
    function Aliquota3(aValue : Currency) : iModelEntidade;
    function Aliquota4(aValue : Currency) : iModelEntidade;
    function PrazoMedio(aValue : Currency) : iModelEntidade;
    function InicioPeriodo(aValue : TDateTime) : iModelEntidade;
    function FimPeriodo(aValue : TDateTime) : iModelEntidade;

    function Buscar(aValue: String): iModelEntidade;
    function Insert: iModelEntidade; overload;
    function Insert(aValue: String): iModelEntidade; overload;
    function Append : iModelEntidade;
    function Update(aValue: String): iModelEntidade;
    function Delete(aValue: String): iModelEntidade;
    function PegarGenId: Integer;

    function Get(const aValue: String = ''): iModelEntidade;
  end;

implementation

{ TSomaFichaTecnica }

constructor TSomaFichaTecnica.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TSomaFichaTecnica.Destroy;
begin
  inherited;
end;

class function TSomaFichaTecnica.New: iModelEntidade;
begin
  Result := Self.Create;
end;


function TSomaFichaTecnica.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TSomaFichaTecnica.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TSomaFichaTecnica.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TSomaFichaTecnica.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TSomaFichaTecnica.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result:= Self;
  FEscolhaTipoLancamento := aValue;
end;

function TSomaFichaTecnica.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TSomaFichaTecnica.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TSomaFichaTecnica.Status(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TSomaFichaTecnica.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TSomaFichaTecnica.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TSomaFichaTecnica.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TSomaFichaTecnica.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TSomaFichaTecnica.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TSomaFichaTecnica.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TSomaFichaTecnica.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TSomaFichaTecnica.ValorLancamento1(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TSomaFichaTecnica.ValorLancamento2(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TSomaFichaTecnica.ValorLancamento3(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TSomaFichaTecnica.ValorLancamento4(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TSomaFichaTecnica.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TSomaFichaTecnica.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TSomaFichaTecnica.Aliquota1(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TSomaFichaTecnica.Aliquota2(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TSomaFichaTecnica.Aliquota3(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TSomaFichaTecnica.Aliquota4(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TSomaFichaTecnica.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TSomaFichaTecnica.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TSomaFichaTecnica.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TSomaFichaTecnica.Buscar(aValue: String): iModelEntidade;
const
  cSQL = (
          'select '+
          'ft.idmodelo, '+
          'coalesce(cast(sum(fti.valorfinal) as numeric(10,3)),0)SomaFichaTecnica '+
          'from fichatecnica ft '+
          'inner join fichatecnicaitem fti on fti.idfichatecnica = ft.id '
         );
var
  lWhere: String;
begin
  Result := Self;
  lWhere := '';

  lWhere := ('where df.Ativo=' + IntToStr(FAtivo) + ' ');

  FQuery.Open(cSQL + lWhere);
end;

function TSomaFichaTecnica.Insert: iModelEntidade;
begin
  Result := Self;
  //FQuery.ExecSQL(lInsert);
end;

function TSomaFichaTecnica.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Json quando precisar
end;

function TSomaFichaTecnica.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TSomaFichaTecnica.Update(aValue: String): iModelEntidade;
begin
  Result := Self;
//  FQuery.ExecSQL();
end;

function TSomaFichaTecnica.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
  //FQuery.ExecSQL('');
end;

function TSomaFichaTecnica.PegarGenId: Integer;
begin
  Result := 0;
  //Criar PegarGenId quando precisar
end;


//JSON
function TSomaFichaTecnica.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Delete quando precisar
end;

end.
