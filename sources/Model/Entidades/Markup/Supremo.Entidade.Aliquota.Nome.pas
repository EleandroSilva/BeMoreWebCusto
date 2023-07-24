unit Supremo.Entidade.Aliquota.Nome;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

type
  TAliquotaNome = class(TInterfacedObject, iModelEntidade)
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

{ TMarkupAliquota }

constructor TAliquotaNome.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TAliquotaNome.Destroy;
begin
  inherited;
end;

class function TAliquotaNome.New: iModelEntidade;
begin
  Result := Self.Create;
end;

function TAliquotaNome.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TAliquotaNome.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TAliquotaNome.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TAliquotaNome.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TAliquotaNome.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoLancamento := aValue;
end;

function TAliquotaNome.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TAliquotaNome.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TAliquotaNome.Status(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TAliquotaNome.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TAliquotaNome.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TAliquotaNome.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TAliquotaNome.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TAliquotaNome.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TAliquotaNome.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TAliquotaNome.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TAliquotaNome.ValorLancamento1(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TAliquotaNome.ValorLancamento2(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TAliquotaNome.ValorLancamento3(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TAliquotaNome.ValorLancamento4(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TAliquotaNome.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TAliquotaNome.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TAliquotaNome.Aliquota1(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TAliquotaNome.Aliquota2(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TAliquotaNome.Aliquota3(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TAliquotaNome.Aliquota4(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TAliquotaNome.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TAliquotaNome.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TAliquotaNome.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TAliquotaNome.Buscar(aValue: String): iModelEntidade;
const
  cSQL = (
          'select ' +
          'an.Id, '+
          'an.Status, '+
          'an.Aliquota, '+
          'an.Descricao, ' +
          'an.Operador,' +
          'an.DataLancamento, '+
          'an.Ativo '+
          'from AliquotaNome an '
         );
var
  lWhere: String;
begin
  Result := Self;
  lWhere := '';

  lWhere := ('where an.Ativo=' + IntToStr(FAtivo) + ' ');

  lWhere:=lWhere+('and an.Financeiro='+IntToStr(FStatus)+' ');


  if FTextoFiltro <> '' then
    case FEscolhaFiltro of
      0: lWhere := lWhere + ('and an.Id=' +aValue + ' ');
      1: lWhere := lWhere + ('and an.Descricao CONTAINING ''' + aValue + ''' ');
      2: lWhere := lWhere + ('and an.Operador CONTAINING ''' + aValue + ''' ');
    end;

  FQuery.Open(cSQL + lWhere);
end;

function TAliquotaNome.Insert: iModelEntidade;
const
    cInsert = (
               'insert into AliquotaNome ' +
               '( ' +
               'Descricao, ' +
               'Aliquota, '+
               'Operador, ' +
               'DataLancamento, ' +
               'Status, '+
               'Financeiro, '+
               'Ativo ' +
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
    '''' + copy(FDescricao, 1,40) + ''',' +
    StringReplace(CurrToStr(FAliquota1), ',', '.', [RFReplaceAll]) + ',' + // Aliquota
    '''' + FOperador + ''',' +
    '''' + FormatDateTime('dd.mm.yyyy', FDataLancamento) + ''',' +
    IntToStr(1)+', '+//status
    IntToStr(FStatus)+', '+//Informando se é financeiro ou não
    IntToStr(1)+' '+//Ativo 0->Inativo  - 1 Ativo
    ') ';
  FQuery.ExecSQL(lInsert);
end;

function TAliquotaNome.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TAliquotaNome.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Json quando precisar
end;

function TAliquotaNome.Update(aValue: String): iModelEntidade;
const
  cUpdate = ('update AliquotaNome set ');
begin
  Result := Self;
  FQuery.ExecSQL(cUpdate +
    'descricao=''' + FDescricao + ''',' +
    'Aliquota= '+StringReplace(CurrToStr(FAliquota1), ',', '.', [RFReplaceAll]) + ',' +
    'status='+ IntToStr(1) + ',' +
    'ativo=' + IntToStr(FAtivo) + '' +
    'where Id=' + aValue + ' ');
end;

function TAliquotaNome.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
  FQuery.ExecSQL('delete from AliquotaNome where Id='+aValue+'');
end;

function TAliquotaNome.PegarGenId: Integer;
begin
  Result := 0;
  //Criar PegarGenId quando precisar
end;


//JSON
function TAliquotaNome.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Delete quando precisar
end;

end.
