unit Supremo.Entidade.Custo.ContasPagar;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

type
  TContasPagar = class(TInterfacedObject, iModelEntidade)
  private
    FQuery: iModelQuery;
    FEscolhaFiltro: Integer;
    FEscolhaTipoData : Integer;
    FEscolhaTipoLancamento : Integer;
    FTextoFiltro: String;
    FAtivo: Integer;
    FStatus : Integer;
    FDescricao: String;
    FOperador: String;
    FDataLancamento: TDateTime;
    FIdModelo : String;
    FIdProduto : String;
    FIdParametro1 : String;
    FIdParametro2 : String;
    FValorLancamento1 : Currency;
    FValorLancamento2 : Currency;
    FValorLancamento3 : Currency;
    FValorLancamento4 : Currency;
    FQtdeInteger : Integer;
    FQtdeCurrency : Currency;
    FAliquota1 : Currency;
    FAliquota2 : Currency;
    FAliquota3 : Currency;
    FAliquota4 : Currency;
    FPrazoMedio : Currency;
    FInicioPeriodo : TDateTime;
    FFimPeriodo : TDateTime;


    FGenId : Integer;

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
    function IdParametro2(aValue : String) : iModelEntidade;
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
    function InicioPeriodo(aValue: TDateTime): iModelEntidade;
    function FimPeriodo(aValue: TDateTime): iModelEntidade;

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

{ TContasPagar }

constructor TContasPagar.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TContasPagar.Destroy;
begin
  inherited;
end;

class function TContasPagar.New: iModelEntidade;
begin
  Result := Self.Create;
end;

function TContasPagar.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TContasPagar.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TContasPagar.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TContasPagar.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TContasPagar.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoLancamento := aValue;
end;

function TContasPagar.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TContasPagar.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TContasPagar.Status(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TContasPagar.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TContasPagar.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TContasPagar.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TContasPagar.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TContasPagar.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TContasPagar.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TContasPagar.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TContasPagar.ValorLancamento1(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TContasPagar.ValorLancamento2(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TContasPagar.ValorLancamento3(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TContasPagar.ValorLancamento4(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TContasPagar.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TContasPagar.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TContasPagar.Aliquota1(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TContasPagar.Aliquota2(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TContasPagar.Aliquota3(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TContasPagar.Aliquota4(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TContasPagar.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TContasPagar.InicioPeriodo(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TContasPagar.FimPeriodo(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TContasPagar.Buscar(aValue: String): iModelEntidade;
const
  cSQL = ('select '+
    'ccc.codigo, '+
    'ccc.id_ccc IdClasseContas, '+
    'ccc.Status, '+
    'ccc.descricao ClasseContas, '+
    'coalesce(cast(sum(cp.vl_parcela) as numeric(10,2)),0) ValorClasse '+
    'from cad_classe_contas ccc '+
    'inner join cad_ct_pagar cp on cp.cod_classe=ccc.codigo ' );
var
  lWhere, lGrupo, lOrdem, lParansData: String;
  lHoje: TDateTime;
begin
  Result := Self;
  lWhere := '';
  lParansData := '';
  lHoje := Now;

  case FEscolhaTipoData of
    0: lParansData := 'cp.dt_emissao';
    1: lParansData := 'cp.dt_pgto';
  end;


  case FEscolhaFiltro of
    0: lHoje := Now - 30;
    1: lHoje := Now - 90;
    2: lHoje := Now - 180;
    3: lHoje := Now - 360;
  end;

  lWhere := FormatDateTime('dd.mm.yyyy', lHoje);

  lWhere := ('where ' + lParansData + ' between ''' + FormatDateTime('dd.mm.yyyy', lHoje) + '''' +
    'and ''' + FormatDateTime('dd.mm.yyyy', Now) + '''');

  case FEscolhaTipoLancamento of
    1: lWhere:=('and cp.desp_fixa=0 ');
    2: lWhere:=('and cp.desp_fixa=1 ');
  end;


  lGrupo := ('group by 1,2,3,4 ');

  FQuery.Open(cSQL + lWhere + lGrupo);
end;

function TContasPagar.Insert: iModelEntidade;
begin
  Result := Self;
end;

function TContasPagar.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TContasPagar.Append : iModelEntidade;
begin
  Result:= Self;
  FQuery.Append('');
end;

function TContasPagar.Update(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TContasPagar.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TContasPagar.PegarGenId: Integer;
begin
  Result := 0; // Criar quando precisar
end;

function TContasPagar.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  // criar Json quando precisar
end;

end.
