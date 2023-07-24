unit Supremo.Entidade.Soma.Aliquota.Grupo;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

type
  TSomaAliquotaGrupo = class (TInterfacedObject, iModelEntidade)
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

{ TSomaAliquotaGrupo }

constructor TSomaAliquotaGrupo.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TSomaAliquotaGrupo.Destroy;
begin
  inherited;
end;

class function TSomaAliquotaGrupo.New: iModelEntidade;
begin
  Result := Self.Create;
end;


function TSomaAliquotaGrupo.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TSomaAliquotaGrupo.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TSomaAliquotaGrupo.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TSomaAliquotaGrupo.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TSomaAliquotaGrupo.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result:= Self;
  FEscolhaTipoLancamento := aValue;
end;

function TSomaAliquotaGrupo.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TSomaAliquotaGrupo.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TSomaAliquotaGrupo.Status(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TSomaAliquotaGrupo.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TSomaAliquotaGrupo.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TSomaAliquotaGrupo.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TSomaAliquotaGrupo.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TSomaAliquotaGrupo.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TSomaAliquotaGrupo.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TSomaAliquotaGrupo.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TSomaAliquotaGrupo.ValorLancamento1(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TSomaAliquotaGrupo.ValorLancamento2(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TSomaAliquotaGrupo.ValorLancamento3(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TSomaAliquotaGrupo.ValorLancamento4(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TSomaAliquotaGrupo.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TSomaAliquotaGrupo.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TSomaAliquotaGrupo.Aliquota1(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TSomaAliquotaGrupo.Aliquota2(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TSomaAliquotaGrupo.Aliquota3(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TSomaAliquotaGrupo.Aliquota4(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TSomaAliquotaGrupo.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TSomaAliquotaGrupo.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TSomaAliquotaGrupo.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TSomaAliquotaGrupo.Buscar(aValue: String): iModelEntidade;
const
  cSQL = (
          'select '+
          'IdMarkupNome, '+
          'MarkupNome, '+
          'SomaAliquota, '+
          '((Maximo-SomaAliquota)/Maximo) IndiceDivisao , '+
          '(Maximo/((Maximo-SomaAliquota))) IndiceMultiplicacao '+
          'from '+
          ' ( '+
          '  select '+
          '  ag.idmarkupnome, '+
          '  mn.descricao MarkupNome, '+
          '  coalesce(cast(sum(ag.aliquota) as numeric(10,6)),0) SomaAliquota, '+
          '  100 Maximo '+
          'from AliquotaGrupo ag '+
          'inner join MarkupNome   mn on mn.id = ag.idmarkupnome '+
          'inner join AliquotaNome an on an.id = ag.idaliquotanome '
         );
var
  lWhere, lGrupo: String;
begin
  Result := Self;
  lWhere := '';
  lGrupo := '';

  lWhere := ('where ag.Ativo=' + IntToStr(FAtivo) + ' '+
             'and an.financeiro=0 ');

  if FTextoFiltro <> '' then
    case FEscolhaFiltro of
      0: lWhere := lWhere + ('and ag.IdMarkupNome=' +IntToStr(StrToInt(aValue)) + ' ');
      1: lWhere := lWhere + ('and ag.IdAliquotaNome=' +IntToStr(StrToInt(aValue)) + ' ');
      2: lWhere := lWhere + ('and mn.Descricao CONTAINING ''' + aValue + ''' ');
      3: lWhere := lWhere + ('and an.Descricao CONTAINING ''' + aValue + ''' ');
      4: lWhere := lWhere + ('and ag.Operador CONTAINING ''' + aValue + ''' ');
    end;

  lGrupo :=('group by 1,2 )');

  FQuery.Open(cSQL + lWhere + lGrupo);
end;

function TSomaAliquotaGrupo.Insert: iModelEntidade;
begin
  Result := Self;
  //FQuery.ExecSQL(lInsert);
end;

function TSomaAliquotaGrupo.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Json quando precisar
end;

function TSomaAliquotaGrupo.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TSomaAliquotaGrupo.Update(aValue: String): iModelEntidade;
//const
//  cUpdate = ('update AliquotaGrupo set ');
begin
  Result := Self;

  {
  FQuery.ExecSQL(cUpdate +
    'Descricao=''' + FDescricao + ''',' +
    'IdGrupoAliquota='+FIdParametro1+','+
    'IdAliquota='+FIdParametro2+','+
    'Aliquota='+StringReplace(CurrToStr(FAliquota), ',', '.', [RFReplaceAll]) + ',' +
    'Status=' + IntToStr(FStatus) + ', ' +
    'Ativo=' + IntToStr(FAtivo) + ' ' +
    'where Id=' + aValue + ' ');
  }
end;

function TSomaAliquotaGrupo.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
  //FQuery.ExecSQL('delete from AliquotaGrupo where Id='+aValue+'');
end;

function TSomaAliquotaGrupo.PegarGenId: Integer;
begin
  Result := 0;
  //Criar PegarGenId quando precisar
end;


//JSON
function TSomaAliquotaGrupo.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Delete quando precisar
end;

end.
