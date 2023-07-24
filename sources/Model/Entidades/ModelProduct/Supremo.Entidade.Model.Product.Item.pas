unit Supremo.Entidade.Model.Product.Item;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory,
  Whorkshop.Model.Entidades.Interfaces;

Type
  TModelProductItem = class(TInterfacedObject, iModelEntidade)
  private
    FQuery: iModelQuery;

    FEscolhaFiltro: Integer;
    FEscolhaTipoData: Integer;
    FEscolhaTipoLancamento: Integer;
    FTextoFiltro: String;
    FAtivo: Integer;
    FStatus: Integer;

    FDescricao: String;
    FOperador: String;
    FDataLancamento: TDateTime;
    FIdModelo: String;
    FIdProduto: String;
    FIdParametro1: String;
    FIdParametro2: String;
    FValorLancamento1: Currency;
    FValorLancamento2: Currency;
    FValorLancamento3 : Currency;
    FValorLancamento4 : Currency;
    FQtdeInteger: Integer;
    FQtdeCurrency: Currency;
    FAliquota1: Currency;
    FAliquota2: Currency;
    FAliquota3: Currency;
    FAliquota4: Currency;
    FPrazoMedio: Currency;
    FInicioPeriodo: TDateTime;
    FFimPeriodo: TDateTime;

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
    function ValorLancamento1(aValue: Currency): iModelEntidade;
    function ValorLancamento2(aValue: Currency): iModelEntidade;
    function ValorLancamento3(aValue : Currency) : iModelEntidade;
    function ValorLancamento4(aValue : Currency) : iModelEntidade;
    function Qtde(aValue: Integer): iModelEntidade; overload;
    function Qtde(aValue: Currency): iModelEntidade; overload;
    function Aliquota1(aValue: Currency): iModelEntidade;
    function Aliquota2(aValue: Currency): iModelEntidade;
    function Aliquota3(aValue: Currency): iModelEntidade;
    function Aliquota4(aValue: Currency): iModelEntidade;
    function PrazoMedio(aValue: Currency): iModelEntidade;
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
{ TModelProduct }

constructor TModelProductItem.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TModelProductItem.Destroy;
begin
  inherited;
end;

class function TModelProductItem.New: iModelEntidade;
begin
  Result := Self.Create;
end;

function TModelProductItem.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TModelProductItem.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TModelProductItem.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TModelProductItem.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TModelProductItem.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoLancamento := aValue;
end;

function TModelProductItem.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TModelProductItem.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TModelProductItem.Status(aValue : Integer) :iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TModelProductItem.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TModelProductItem.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TModelProductItem.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TModelProductItem.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TModelProductItem.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TModelProductItem.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TModelProductItem.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TModelProductItem.ValorLancamento1(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TModelProductItem.ValorLancamento2(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TModelProductItem.ValorLancamento3(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TModelProductItem.ValorLancamento4(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TModelProductItem.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TModelProductItem.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TModelProductItem.Aliquota1(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TModelProductItem.Aliquota2(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TModelProductItem.Aliquota3(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TModelProductItem.Aliquota4(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TModelProductItem.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TModelProductItem.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TModelProductItem.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TModelProductItem.Buscar(aValue: String): iModelEntidade;
const
 cSQL = (
         'select distinct '+
         'mp.id, '+
         'imp.idmodelo, '+
         'm.descricao Modelo, '+
         'mp.datalancamento, '+
         'mp.operador, '+
         'mp.ativo, '+
         'imp.idproduto, '+
         'pro.descricao produto '+
         'from ModeloProduto mp '+
         'inner join ModeloProdutoItem imp on imp.id = mp.id ' +
         'inner join Modelo              m on m.id   = imp.idmodelo '+
         'inner join cad_pro           pro on pro.id_pro = imp.idproduto '
        );
var
  lWhere: String;
begin
  Result := Self;
  lWhere := '';

  lWhere := ('where mp.Ativo=' + IntToStr(FAtivo) + ' ');

  if FTextoFiltro <> '' then
    case FEscolhaFiltro of
      0: lWhere := lWhere + ('and mp.Id=' + aValue + ' ');
      1: lWhere := lWhere + ('and imp.IdModelo=' + aValue + ' ');
      2: lWhere := lWhere + ('and m.Descricao CONTAINING ''' + aValue + ''' ');
      3: lWhere := lWhere + ('and mp.Operador CONTAINING ''' + aValue + ''' ');
    end;

  FQuery.Open(cSQL + lWhere);
end;

function TModelProductItem.Insert: iModelEntidade;
const
  cInsert = (
      'insert into modeloprodutoitem ' +
      '( ' +
      'Id, ' +
      'IdModelo, ' +
      'IdProduto ' +
      ') '
      );
var
  lInsert: String;
begin
  Result := Self;
  lInsert := '';
  lInsert := cInsert +
    'values ' +
    '( ' +
    IntToStr(PegarGenId) + ',' +
    '''' + FIdModelo + ''',' +
    '''' + FIdProduto + '''' +
    ') ';
  FQuery.ExecSQL(lInsert);
end;

function TModelProductItem.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TModelProductItem.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TModelProductItem.Update(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TModelProductItem.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TModelProductItem.PegarGenId : Integer;
const
  cPegarGenId = ('select gen_id(GEN_MODELOPRODUTO_ID,0) from rdb$database ');
begin
  Result := 0;
  Result:=FQuery.PegarGenId(cPegarGenId);
  FGenId := Result;
end;

//JSON
function TModelProductItem.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
end;

end.
