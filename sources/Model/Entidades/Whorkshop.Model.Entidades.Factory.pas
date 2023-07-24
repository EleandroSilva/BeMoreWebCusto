unit Whorkshop.Model.Entidades.Factory;

interface

uses
  Whorkshop.Model.Entidades.Interfaces,
  Supremo.Entidade.Model,
  Supremo.Entidade.Model.Product,
  Supremo.Entidade.Product,
  Supremo.Entidade.Fixed.Expense,
  Supremo.Entidade.Classe.Contas,
  Supremo.Entidade.Custo.ContasPagar,
  Supremo.Entidade.Materia.Prima,
  Supremo.Entidade.Aliquota.Nome,
  Supremo.Entidade.Aliquota.Grupo,
  Supremo.Entidade.Custo.Financeiro,
  Supremo.Entidade.Custo.Markup,
  Supremo.Entidade.Markup.Nome,
  Supremo.Entidade.Prazo.Pagamento,
  Supremo.Entidade.Regiao.Pessoa,
  Supremo.Entidade.Custo.Receita.Despesa,
  Supremo.Entidade.Model.Product.Item,
  Supremo.Entidade.Ficha.Tecnica,
  Supremo.Entidade.Ficha.Tecnica.Item,
  Supremo.Entidade.Soma.Aliquota.Grupo,
  Supremo.Entidade.Montar.Custo,
  Supremo.Entidade.Soma.Despesa.Fixa,
  Supremo.Entidade.Soma.Custo.Modelo,
  Supremo.Entidade.Tabela.Preco;

type
  TModelEntidadesFactory = class(TInterfacedObject, iModelEntidadeFactory)
  private
    FProduct: iModelEntidade;
    FModel: iModelEntidade;
    FModelProduct: iModelEntidade;
    FModelProductItem : iModelEntidade;
    FFixedExpense: iModelEntidade;
    FClasseContas: iModelEntidade;
    FContasPagar: iModelEntidade;
    FMateriaPrima: iModelEntidade;
    FMarkupNome : iModelEntidade;
    FAliquotaNome: iModelEntidade;
    FAliquotaGrupo : iModelEntidade;
    FCustoFinanceiro : iModelEntidade;
    FMarkupCusto : iModelEntidade;
    FPrazoPagamento : iModelEntidade;
    FRegiaoPessoa : iModelEntidade;
    FReceitaDespesa : iModelEntidade;
    FFichaTecnica : iModelEntidade;
    FFichaTecnicaItem : iModelEntidade;
    FMontarCusto : iModelEntidade;
    FSomaAliquotaGrupo : iModelEntidade;
    FSomaDespesaFixa : iModelEntidade;
    FSomaCustoModelo : iModelEntidade;
    FTabelaPreco : iModelEntidade;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidadeFactory;

    function Model: iModelEntidade;
    function ModelProduct: iModelEntidade;
    function ModelProductItem : iModelEntidade;
    function Product: iModelEntidade;
    function FixedExpense: iModelEntidade;
    function ClasseContas: iModelEntidade;
    function ContasPagar: iModelEntidade;
    function MateriaPrima: iModelEntidade;
    function MarkupNome : iModelEntidade;
    function AliquotaNome: iModelEntidade;
    function AliquotaGrupo : iModelEntidade;
    function CustoFinanceiro : iModelEntidade;
    function MarkupCusto : iModelEntidade;
    function PrazoPagamento : iModelEntidade;
    function RegiaoPessoa : iModelEntidade;
    function ReceitaDespesa : iModelEntidade;
    function FichaTecnica : iModelEntidade;
    function FichaTecnicaItem : iModelEntidade;
    function MontarCusto : iModelEntidade;
    function SomaAliquotaGrupo : iModelEntidade;
    function SomaDespesaFixa : iModelEntidade;
    function SomaCustoModelo : iModelEntidade;
    function TabelaPreco : iModelEntidade;
  end;

implementation

{ TModelEntidadesFactory }

constructor TModelEntidadesFactory.Create;
begin
  inherited;
end;

destructor TModelEntidadesFactory.Destroy;
begin
  inherited;
end;

class function TModelEntidadesFactory.New: iModelEntidadeFactory;
begin
  Result := Self.Create;
end;

function TModelEntidadesFactory.ContasPagar: iModelEntidade;
begin
  if not Assigned(FContasPagar) then
    FContasPagar := TContasPagar.New;
  Result := FContasPagar;
end;

function TModelEntidadesFactory.ClasseContas: iModelEntidade;
begin
  if not Assigned(FClasseContas) then
    FClasseContas := TClasseContas.New;
  Result := FClasseContas;
end;

function TModelEntidadesFactory.FichaTecnica: iModelEntidade;
begin
  if not Assigned(FFichaTecnica) then
    FFichaTecnica := TFichaTecnica.New;
  Result := FFichaTecnica;
end;

function TModelEntidadesFactory.FichaTecnicaItem: iModelEntidade;
begin
  if not Assigned(FFichaTecnicaItem) then
    FFichaTecnicaItem := TFichaTecnicaItem.New;
  Result := FFichaTecnicaItem;
end;

function TModelEntidadesFactory.FixedExpense: iModelEntidade;
begin
  if not Assigned(FFixedExpense) then
    FFixedExpense := TFixedExpense.New;
  Result := FFixedExpense;
end;

function TModelEntidadesFactory.PrazoPagamento: iModelEntidade;
begin
  if not Assigned(FPrazoPagamento) then
    FPrazoPagamento := TPrazoPagamento.New;
  Result := FPrazoPagamento;
end;

function TModelEntidadesFactory.Product: iModelEntidade;
begin
  if not Assigned(FProduct) then
    FProduct := TProduct.New;
  Result := FProduct;
end;

function TModelEntidadesFactory.ReceitaDespesa: iModelEntidade;
begin
  if not Assigned(FReceitaDespesa) then
    FReceitaDespesa := TReceitaDespesa.New;
  Result := FReceitaDespesa;
end;

function TModelEntidadesFactory.RegiaoPessoa: iModelEntidade;
begin
  if not Assigned(FRegiaoPessoa) then
    FRegiaoPessoa := TRegiaoPessoa.New;
  Result := FRegiaoPessoa;
end;

function TModelEntidadesFactory.SomaAliquotaGrupo: iModelEntidade;
begin
  if not Assigned(FSomaAliquotaGrupo) then
    FSomaAliquotaGrupo := TSomaAliquotaGrupo.New;
  Result := FSomaAliquotaGrupo;
end;

function TModelEntidadesFactory.SomaCustoModelo: iModelEntidade;
begin
  if not Assigned(FSomaCustoModelo) then
    FSomaCustoModelo := TSomaCustoModelo.New;
  Result := FSomaCustoModelo;
end;

function TModelEntidadesFactory.SomaDespesaFixa: iModelEntidade;
begin
  if not Assigned(FSomaDespesaFixa) then
    FSomaDespesaFixa := TSomaDespesaFixa.New;
  Result := FSomaDespesaFixa;
end;

function TModelEntidadesFactory.TabelaPreco: iModelEntidade;
begin
  if not Assigned(FTabelaPreco) then
    FTabelaPreco := TTabelaPreco.New;
  Result := FTabelaPreco;
end;

function TModelEntidadesFactory.MarkupCusto: iModelEntidade;
begin
  if not Assigned(FMarkupCusto) then
    FMarkupCusto := TMarkupCusto.New;
  Result := FMarkupCusto;
end;

function TModelEntidadesFactory.MarkupNome: iModelEntidade;
begin
  if not Assigned(FMarkupNome) then
    FMarkupNome := TMarkupNome.New;
  Result := FMarkupNome;
end;

function TModelEntidadesFactory.AliquotaNome: iModelEntidade;
begin
  if not Assigned(FAliquotaNome) then
    FAliquotaNome := TAliquotaNome.New;
  Result := FAliquotaNome;
end;

function TModelEntidadesFactory.AliquotaGrupo: iModelEntidade;
begin
  if not Assigned(FAliquotaGrupo) then
    FAliquotaGrupo := TAliquotaGrupo.New;
  Result := FAliquotaGrupo;
end;

function TModelEntidadesFactory.CustoFinanceiro: iModelEntidade;
begin
  if not Assigned(FCustoFinanceiro) then
    FCustoFinanceiro := TCustoFinanceiro.New;
  Result := FCustoFinanceiro;
end;

function TModelEntidadesFactory.MateriaPrima: iModelEntidade;
begin
  if not Assigned(FMateriaPrima) then
    FMateriaPrima := TMateriaPrima.New;
  Result := FMateriaPrima;
end;

function TModelEntidadesFactory.Model: iModelEntidade;
begin
  if not Assigned(FModel) then
    FModel := TModel.New;
  Result := FModel;
end;

function TModelEntidadesFactory.ModelProduct: iModelEntidade;
begin
  if not Assigned(FModelProduct) then
    FModelProduct := TModelProduct.New;
  Result := FModelProduct;
end;

function TModelEntidadesFactory.ModelProductItem: iModelEntidade;
begin
  if not Assigned(FModelProductItem) then
    FModelProductItem := TModelProductItem.New;
  Result := FModelProductItem;
end;

function TModelEntidadesFactory.MontarCusto: iModelEntidade;
begin
  if not Assigned(FMontarCusto) then
    FMontarCusto := TMontarCusto.New;
  Result := FMontarCusto;
end;

end.
