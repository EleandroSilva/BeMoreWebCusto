unit Supremo.Entidade.Aliquota.Grupo;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

type
  TAliquotaGrupo = class(TInterfacedObject, iModelEntidade)
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

{ TMarkupAliquotaGrupo }

constructor TAliquotaGrupo.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TAliquotaGrupo.Destroy;
begin
  inherited;
end;

class function TAliquotaGrupo.New: iModelEntidade;
begin
  Result := Self.Create;
end;


function TAliquotaGrupo.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TAliquotaGrupo.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TAliquotaGrupo.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TAliquotaGrupo.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TAliquotaGrupo.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result:= Self;
  FEscolhaTipoLancamento := aValue;
end;

function TAliquotaGrupo.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TAliquotaGrupo.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TAliquotaGrupo.Status(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TAliquotaGrupo.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TAliquotaGrupo.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TAliquotaGrupo.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TAliquotaGrupo.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TAliquotaGrupo.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TAliquotaGrupo.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TAliquotaGrupo.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TAliquotaGrupo.ValorLancamento1(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TAliquotaGrupo.ValorLancamento2(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TAliquotaGrupo.ValorLancamento3(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TAliquotaGrupo.ValorLancamento4(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TAliquotaGrupo.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TAliquotaGrupo.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TAliquotaGrupo.Aliquota1(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TAliquotaGrupo.Aliquota2(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TAliquotaGrupo.Aliquota3(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TAliquotaGrupo.Aliquota4(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TAliquotaGrupo.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TAliquotaGrupo.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TAliquotaGrupo.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TAliquotaGrupo.Buscar(aValue: String): iModelEntidade;
const
  cSQL = (
          'select '+
          'ag.idmarkupnome, '+
          'mn.descricao MarkupNome, '+
          'ag.idaliquotanome, '+
          'am.descricao AliquotaNome, '+
          'ag.Aliquota, '+
          'ag.Operador, '+
          'ag.DataLancamento, '+
          'ag.Ativo '+
          'from AliquotaGrupo ag '+
          'inner join MarkupNome   mn on mn.id = ag.idmarkupnome '+
          'inner join AliquotaNome am on am.id = ag.idaliquotanome '
         );
var
  lWhere: String;
begin
  Result := Self;
  lWhere := '';

  lWhere := ('where ag.Ativo=' + IntToStr(FAtivo) + ' ');

  if FTextoFiltro <> '' then
    case FEscolhaFiltro of
      0: lWhere := lWhere + ('and ag.IdMarkupNome=' +IntToStr(StrToInt(aValue)) + ' ');
      1: lWhere := lWhere + ('and ag.IdAliquotaNome=' +IntToStr(StrToInt(aValue)) + ' ');
      2: lWhere := lWhere + ('and mn.Descricao CONTAINING ''' + aValue + ''' ');
      3: lWhere := lWhere + ('and am.Descricao CONTAINING ''' + aValue + ''' ');
      4: lWhere := lWhere + ('and ag.Operador CONTAINING ''' + aValue + ''' ');
    end;

  FQuery.Open(cSQL + lWhere);
end;

function TAliquotaGrupo.Insert: iModelEntidade;
const
    cInsert = (
               'insert into AliquotaGrupo ' +
               '( ' +
               'IdMarkupNome, ' +
               'IdAliquotaNome,'+
               'Aliquota, '+
               'Operador, ' +
               'DataLancamento, ' +
               'Status, '+
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
    ''+FIdParametro1+', '+
    ''+FIdParametro2+', '+
    StringReplace(CurrToStr(FAliquota1), ',', '.', [RFReplaceAll]) + ',' +
    '''' + FOperador + ''',' +
    '''' + FormatDateTime('dd.mm.yyyy', FDataLancamento) + ''',' +
    IntToStr(1)+', '+//Status 0 N�o 1 - Sim serve para o enviar
    IntToStr(1)+' '+//Ativo 0->Inativo  - 1 Ativo
    ') ';
  FQuery.ExecSQL(lInsert);
end;

function TAliquotaGrupo.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Json quando precisar
end;

function TAliquotaGrupo.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TAliquotaGrupo.Update(aValue: String): iModelEntidade;
const
  cUpdate = ('update AliquotaGrupo set ');
begin
  Result := Self;
  FQuery.ExecSQL(cUpdate +
    'Descricao=''' + FDescricao + ''',' +
    'IdGrupoAliquota='+FIdParametro1+','+
    'IdAliquota='+FIdParametro2+','+
    'Aliquota='+StringReplace(CurrToStr(FAliquota1), ',', '.', [RFReplaceAll]) + ',' +
    'Status=' + IntToStr(FStatus) + ', ' +
    'Ativo=' + IntToStr(FAtivo) + ' ' +
    'where Id=' + aValue + ' ');
end;

function TAliquotaGrupo.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
  FQuery.ExecSQL('delete from AliquotaGrupo where Id='+aValue+'');
end;

function TAliquotaGrupo.PegarGenId: Integer;
begin
  Result := 0;
  //Criar PegarGenId quando precisar
end;


//JSON
function TAliquotaGrupo.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Delete quando precisar
end;



end.
