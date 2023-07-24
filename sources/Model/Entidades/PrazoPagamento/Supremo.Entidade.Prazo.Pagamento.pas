unit Supremo.Entidade.Prazo.Pagamento;

interface

uses
  Data.DB,

  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

type
  TPrazoPagamento = class (TInterfacedObject, iModelEntidade)
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
    FIdParametro1: String;
    FIdParametro2 : String;
    FValorLancamento1 : Currency;
    FValorLancamento2 : Currency;
    FValorLancamento3 : Currency;
    FValorLancamento4 : Currency;
    FQtdeInteger : Integer;
    FQtdeCurrency: Currency;
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
    function EscolhaTipoData(aValue : Integer) : iModelEntidade;
    function EscolhaTipoLancamento(aValue : Integer) : iModelEntidade;
    function TextoFiltro(aValue: String): iModelEntidade;
    function Ativo(aValue: Integer): iModelEntidade;
    function Status(aValue : Integer) :iModelEntidade;

    function Descricao(aValue: String): iModelEntidade;
    function Operador(aValue: String): iModelEntidade;
    function DataLancamento(aValue: TDateTime): iModelEntidade;
    function IdModelo(aValue: String): iModelEntidade;
    function IdProduto(aValue: String): iModelEntidade;
    function IdParametro1(aValue : String) : iModelEntidade;
    function IdParametro2(aValue : String) : iModelEntidade;
    function ValorLancamento1(aValue : Currency) : iModelEntidade;
    function ValorLancamento2(aValue : Currency) : iModelEntidade;
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

    function Buscar(aValue: String): iModelEntidade; overload;
    function Buscar(aValue: Integer): iModelEntidade; overload;
    function Insert: iModelEntidade; overload;
    function Insert(aValue: String): iModelEntidade; overload;
    function Append : iModelEntidade;
    function Update(aValue: String): iModelEntidade;
    function Delete(aValue: String): iModelEntidade;
    function PegarGenId: Integer;

    function Get(const aValue: String = ''): iModelEntidade;
  end;

implementation

{ TPrazoPagamento }

constructor TPrazoPagamento.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TPrazoPagamento.Destroy;
begin
  inherited;
end;

class function TPrazoPagamento.New: iModelEntidade;
begin
  Result := Self.Create;
end;

function TPrazoPagamento.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TPrazoPagamento.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TPrazoPagamento.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TPrazoPagamento.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TPrazoPagamento.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoLancamento := aValue;
end;

function TPrazoPagamento.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TPrazoPagamento.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TPrazoPagamento.Status(aValue : Integer) :iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TPrazoPagamento.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TPrazoPagamento.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TPrazoPagamento.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TPrazoPagamento.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TPrazoPagamento.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TPrazoPagamento.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TPrazoPagamento.IdParametro2(aValue : String) : iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TPrazoPagamento.ValorLancamento1(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TPrazoPagamento.ValorLancamento2(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TPrazoPagamento.ValorLancamento3(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TPrazoPagamento.ValorLancamento4(aValue: Currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TPrazoPagamento.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TPrazoPagamento.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TPrazoPagamento.Aliquota1(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TPrazoPagamento.Aliquota2(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TPrazoPagamento.Aliquota3(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TPrazoPagamento.Aliquota4(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TPrazoPagamento.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TPrazoPagamento.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TPrazoPagamento.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TPrazoPagamento.Buscar(aValue: String): iModelEntidade;
const
  cSQL =(
         'select '+
         'pp.id, '+
         'pp.status, '+
         'pp.descricao, '+
         'cast(pp.TT_Dias/pp.Qtde_Pgto as numeric(10,2)) PrazoMedio, '+
         'pp.usuario Operador '+
         'from cad_prazo pp '
        );
var
  lWhere: String;
begin
  Result := Self;
  lWhere := '';

  if FTextoFiltro <> '' then
    case FEscolhaFiltro of
      0: lWhere:=('Where pp.Id=' + aValue + ' ');
      1: lWhere:=('Where pp.Descricao CONTAINING ''' + aValue + ''' ');
      2: lWhere:=('Where pp.Usuario CONTAINING ''' + aValue + ''' ');
    end;

  FQuery.Open(cSQL + lWhere);
end;

function TPrazoPagamento.Buscar(aValue: Integer): iModelEntidade;
begin
  Result := Self;
end;

function TPrazoPagamento.Insert: iModelEntidade;
begin
  Result := Self;
  //Criar insert quando precisar
end;

function TPrazoPagamento.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar insert quando precisar
end;

function TPrazoPagamento.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TPrazoPagamento.Update(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar update quando precisar
end;

function TPrazoPagamento.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
end;

function TPrazoPagamento.PegarGenId: Integer;
begin
  Result := 0;
end;

function TPrazoPagamento.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Json quando precisar
end;

end.
