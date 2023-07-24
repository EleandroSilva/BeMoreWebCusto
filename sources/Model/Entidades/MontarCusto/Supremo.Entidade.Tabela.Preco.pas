unit Supremo.Entidade.Tabela.Preco;

interface

uses
  Data.DB,
  System.SysUtils,

  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Connection.Interfaces,
  Whorkshop.Model.Connection.Factory;

type
  TTabelaPreco = class (TInterfacedObject, iModelEntidade)
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

constructor TTabelaPreco.Create;
begin
  FQuery := TModelConnectionFactory.New.Query;
end;

destructor TTabelaPreco.Destroy;
begin
  inherited;
end;

class function TTabelaPreco.New: iModelEntidade;
begin
  Result := Self.Create;
end;


function TTabelaPreco.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TTabelaPreco.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

function TTabelaPreco.EscolhaFiltro(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaFiltro := aValue;
end;

function TTabelaPreco.EscolhaTipoData(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FEscolhaTipoData := aValue;
end;

function TTabelaPreco.EscolhaTipoLancamento(aValue: Integer): iModelEntidade;
begin
  Result:= Self;
  FEscolhaTipoLancamento := aValue;
end;

function TTabelaPreco.TextoFiltro(aValue: String): iModelEntidade;
begin
  Result := Self;
  FTextoFiltro := aValue;
end;

function TTabelaPreco.Ativo(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FAtivo := aValue;
end;

function TTabelaPreco.Status(aValue: Integer): iModelEntidade;
begin
  Result := Self;
  FStatus := aValue;
end;

function TTabelaPreco.Descricao(aValue: String): iModelEntidade;
begin
  Result := Self;
  FDescricao := aValue;
end;

function TTabelaPreco.Operador(aValue: String): iModelEntidade;
begin
  Result := Self;
  FOperador := aValue;
end;

function TTabelaPreco.DataLancamento(aValue: TDateTime): iModelEntidade;
begin
  Result := Self;
  FDataLancamento := aValue;
end;

function TTabelaPreco.IdModelo(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdModelo := aValue;
end;

function TTabelaPreco.IdProduto(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdProduto := aValue;
end;

function TTabelaPreco.IdParametro1(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro1 := aValue;
end;

function TTabelaPreco.IdParametro2(aValue: String): iModelEntidade;
begin
  Result := Self;
  FIdParametro2 := aValue;
end;

function TTabelaPreco.ValorLancamento1(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento1 := aValue;
end;

function TTabelaPreco.ValorLancamento2(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento2 := aValue;
end;

function TTabelaPreco.ValorLancamento3(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento3 := aValue;
end;

function TTabelaPreco.ValorLancamento4(aValue: currency): iModelEntidade;
begin
  Result := Self;
  FValorLancamento4 := aValue;
end;

function TTabelaPreco.Qtde(aValue : Integer) : iModelEntidade;
begin
  Result := Self;
  FQtdeInteger := aValue;
end;

function TTabelaPreco.Qtde(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FQtdeCurrency := aValue;
end;

function TTabelaPreco.Aliquota1(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota1 := aValue;
end;

function TTabelaPreco.Aliquota2(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota2 := aValue;
end;

function TTabelaPreco.Aliquota3(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota3 := aValue;
end;

function TTabelaPreco.Aliquota4(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FAliquota4 := aValue;
end;

function TTabelaPreco.PrazoMedio(aValue : Currency) : iModelEntidade;
begin
  Result := Self;
  FPrazoMedio := aValue;
end;

function TTabelaPreco.InicioPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FInicioPeriodo := aValue;
end;

function TTabelaPreco.FimPeriodo(aValue : TDateTime) : iModelEntidade;
begin
  Result := Self;
  FFimPeriodo := aValue;
end;

function TTabelaPreco.Buscar(aValue: String): iModelEntidade;
const
  cSQL = (
          'select distinct '+
          'tp.IdMontarCusto, '+
          'm.descricao Modelo, '+
          'mn.descricao Markup, '+
          'tp.valorvendaavista, '+
          'cf.prazomedio, '+
          'tp.valorvendaprazomedio '+
          'from tabelapreco tp '+
          'inner join Modelo           m on m.id  = tp.idmodelo '+
          'inner join MarkupNome      mn on mn.id = tp.idmarkupnome '+
          'inner join custofinanceiro cf on cf.id = tp.idpagamento '
         );
var
  lWhere, lOrdem: String;
begin
  Result := Self;
  lWhere := '';
  lOrdem := '';

  //lWhere := ('where ag.Ativo=' + IntToStr(FAtivo) + ' ');

  if FTextoFiltro <> '' then
    case FEscolhaFiltro of
      0: lWhere := ('where tp.IdMontarCusto=' +IntToStr(StrToInt(aValue)) + ' ');
      1: lWhere := ('where ag.IdAliquotaNome=' +IntToStr(StrToInt(aValue)) + ' ');
      2: lWhere := ('where mn.Descricao CONTAINING ''' + aValue + ''' ');
      3: lWhere := ('where am.Descricao CONTAINING ''' + aValue + ''' ');
      4: lWhere := ('where ag.Operador CONTAINING ''' + aValue + ''' ');
    end;

  lOrdem:=('order by m.descricao, cf.prazomedio asc ');
  FQuery.Open(cSQL + lWhere + lOrdem);
end;

function TTabelaPreco.Insert: iModelEntidade;
const
    cInsert = (
               'insert into TabelaPreco ' +
               '( ' +
               'IdMontarCusto, '+
               'IDMODELO, '+
               'IDMARKUPNOME, '+
               'IDPAGAMENTO, '+
               'ALIQUOTAMARKUP, '+
               'ALIQUOTAFINANCEIRO, '+
               'INDICEMARKUPAVISTA,'+
               'INDICEMARKUPAPRAZO,'+
               'VALORCUSTO, '+
               'VALORVENDAAVISTA, '+
               'VALORVENDAPRAZOMEDIO, '+
               'DataLancamento, '+
               'Operador, '+
               'Status, '+
               'Ativo '+
               ') '
              );
var
  lInsert: String;
  lSomaMarkup, lSomaValor, lValorVendaaPrazo: Currency;
begin
  Result := Self;
  lInsert := '';
  lSomaMarkup :=0;
  lSomaValor := 0;
  lValorVendaaPrazo:=0;

  lSomaMarkup :=FAliquota1+FAliquota2;
  lSomaValor :=100-lSomaMarkup;
  lSomaMarkup:=100/lSomaValor;

  lValorVendaaPrazo := FValorLancamento1* lSomaMarkup;

  lInsert := cInsert +
    'values ' +
    '( ' +
    ''+FIdProduto+', '+ // igual ao IdMontarCusto
    ''+FIdModelo+', '+
    ''+FIdParametro1+', '+// igual id markup
    ''+FIdParametro2+', '+// igual id pagamento
    StringReplace(CurrToStr(FAliquota1), ',', '.', [RFReplaceAll]) + ',' +//Aliquota Markup
    StringReplace(CurrToStr(FAliquota2), ',', '.', [RFReplaceAll]) + ',' +//Aliquota Financeiro
    StringReplace(CurrToStr(FAliquota3), ',', '.', [RFReplaceAll]) + ',' +//IndiceMarkupaVista vem pronta da view
    StringReplace(CurrToStr(lSomaMarkup), ',', '.', [RFReplaceAll]) + ',' +//IndiceMarkupaPrazo fazendo a conta acima
    StringReplace(CurrToStr(FValorLancamento1), ',', '.', [RFReplaceAll]) + ',' +//valor custo
    StringReplace(CurrToStr(FValorLancamento2), ',', '.', [RFReplaceAll]) + ',' +//valor venda à vista vem pronto da view
    StringReplace(CurrToStr(lValorVendaaPrazo), ',', '.', [RFReplaceAll]) + ',' +//valor venda à prazo
    '''' + FormatDateTime('dd.mm.yyyy', FDataLancamento) + ''',' +
    '''' + FOperador + ''',' +
    IntToStr(1)+', '+//Status
    IntToStr(1)+' '+//Ativo 0->Inativo  - 1 Ativo
    ') ';
  FQuery.ExecSQL(lInsert);
end;

function TTabelaPreco.Insert(aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Json quando precisar
end;

function TTabelaPreco.Append : iModelEntidade;
begin
  Result := Self;
  FQuery.Append('');
end;

function TTabelaPreco.Update(aValue: String): iModelEntidade;
const
  cUpdate = ('update TabelaPreco set ');
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

function TTabelaPreco.Delete(aValue: String): iModelEntidade;
begin
  Result := Self;
  FQuery.ExecSQL('delete from TabelaPreco where IdMontarCusto='+IntToStr(PegarGenId)+''+
  'and IdModelo='+aValue+' ');
end;

function TTabelaPreco.PegarGenId: Integer;
const
  cPegarGenId = ('select gen_id(GEN_MONTARCUSTO_ID,0) from rdb$database ');
begin
  Result := 0;
  Result:=FQuery.PegarGenId(cPegarGenId);
  FGenId := Result;
end;


//JSON
function TTabelaPreco.Get(const aValue: String): iModelEntidade;
begin
  Result := Self;
  //Criar Delete quando precisar
end;

end.
