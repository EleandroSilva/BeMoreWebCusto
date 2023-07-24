program SupremoCusto;

uses
  Vcl.Forms,
  frmSupremoCusto in 'Principal\frmSupremoCusto.pas' {frmSupremoHome},
  Whorkshop.Controller.Interfaces in '..\Controller\Whorkshop.Controller.Interfaces.pas',
  Whorkshop.Controller in '..\Controller\Whorkshop.Controller.pas',
  Whorkshop.Model.Entidades.RedeInfocon.Factory in '..\Model\Entidades\RedeInfocon\Whorkshop.Model.Entidades.RedeInfocon.Factory.pas',
  Whorkshop.Model.Entidades.RedeInfocon.Interfaces in '..\Model\Entidades\RedeInfocon\Whorkshop.Model.Entidades.RedeInfocon.Interfaces.pas',
  Whorkshop.Model.Entidades.RedeInfocon in '..\Model\Entidades\RedeInfocon\Whorkshop.Model.Entidades.RedeInfocon.pas',
  Whorkshop.Model.Connection.Config in '..\Model\Conexao\Whorkshop.Model.Connection.Config.pas',
  DataSetConverter4D.Helper in '..\Model\Useful\DataSetConverter4D.Helper.pas',
  DataSetConverter4D.Impl in '..\Model\Useful\DataSetConverter4D.Impl.pas',
  DataSetConverter4D in '..\Model\Useful\DataSetConverter4D.pas',
  DataSetConverter4D.Util in '..\Model\Useful\DataSetConverter4D.Util.pas',
  Whorkshop.Model.Connection.Interfaces in '..\Model\Conexao\Whorkshop.Model.Connection.Interfaces.pas',
  Whorkshop.Model.Connection.Factory in '..\Model\Conexao\Whorkshop.Model.Connection.Factory.pas',
  Whorkshop.Model.Connection.Firedac.Query in '..\Model\Conexao\Whorkshop.Model.Connection.Firedac.Query.pas',
  Whorkshop.Model.Connection.Firedac in '..\Model\Conexao\Whorkshop.Model.Connection.Firedac.pas',
  Whorkshop.Model.Entidades.Interfaces in '..\Model\Entidades\Whorkshop.Model.Entidades.Interfaces.pas',
  Whorkshop.Model.Entidades.Factory in '..\Model\Entidades\Whorkshop.Model.Entidades.Factory.pas',
  Whorkshop.Model.Entidades.EmpresaLogada.Interfaces in '..\Model\Entidades\EmpresaLogada\Whorkshop.Model.Entidades.EmpresaLogada.Interfaces.pas',
  Whorkshop.Model.Entidades.EmpresaLogada.Factory in '..\Model\Entidades\EmpresaLogada\Whorkshop.Model.Entidades.EmpresaLogada.Factory.pas',
  Whorkshop.Model.Entidades.EmpresaLogada in '..\Model\Entidades\EmpresaLogada\Whorkshop.Model.Entidades.EmpresaLogada.pas',
  Supremo.Entidade.Model in '..\Model\Entidades\Model\Supremo.Entidade.Model.pas',
  Supremo.Entidade.Model.Product in '..\Model\Entidades\ModelProduct\Supremo.Entidade.Model.Product.pas',
  Supremo.Entidade.Product in '..\Model\Entidades\Product\Supremo.Entidade.Product.pas',
  Supremo.Entidade.Fixed.Expense in '..\Model\Entidades\FixedExpense\Supremo.Entidade.Fixed.Expense.pas',
  Supremo.Entidade.Classe.Contas in '..\Model\Entidades\AccountClass\Supremo.Entidade.Classe.Contas.pas',
  Supremo.Entidade.Custo.ContasPagar in '..\Model\Entidades\ContasPagar\Supremo.Entidade.Custo.ContasPagar.pas',
  Supremo.Entidade.Materia.Prima in '..\Model\Entidades\MateriaPrima\Supremo.Entidade.Materia.Prima.pas',
  ufrmFixedExpense in 'Register\ufrmFixedExpense.pas' {frmFixedExpense},
  ufrmModel in 'Register\ufrmModel.pas' {frmModel},
  ufrmModelProduct in 'Register\ufrmModelProduct.pas' {frmModelProduct},
  ufrmSearchModel in 'Search\ufrmSearchModel.pas' {frmSearchModel},
  Supremo.Entidade.Aliquota.Nome in '..\Model\Entidades\Markup\Supremo.Entidade.Aliquota.Nome.pas',
  Supremo.Entidade.Aliquota.Grupo in '..\Model\Entidades\Markup\Supremo.Entidade.Aliquota.Grupo.pas',
  Supremo.Entidade.Custo.Financeiro in '..\Model\Entidades\Markup\Supremo.Entidade.Custo.Financeiro.pas',
  Supremo.Entidade.Custo.Markup in '..\Model\Entidades\Markup\Supremo.Entidade.Custo.Markup.pas',
  ufrmCustoMarkup in 'Register\ufrmCustoMarkup.pas' {frmCustoMarkup},
  Supremo.Entidade.Markup.Nome in '..\Model\Entidades\Markup\Supremo.Entidade.Markup.Nome.pas',
  ufrmSearchAccountClass in 'Search\ufrmSearchAccountClass.pas' {frmSearchAccountClass},
  Supremo.Entidade.Prazo.Pagamento in '..\Model\Entidades\PrazoPagamento\Supremo.Entidade.Prazo.Pagamento.pas',
  Supremo.Entidade.Regiao.Pessoa in '..\Model\Entidades\Regiao\Supremo.Entidade.Regiao.Pessoa.pas',
  ufrmSearchRegiaoPessoa in 'Search\ufrmSearchRegiaoPessoa.pas' {frmPesquisaRegiaoPessoa},
  Supremo.Entidade.Ficha.Tecnica in '..\Model\Entidades\FichaTecnica\Supremo.Entidade.Ficha.Tecnica.pas',
  Supremo.Entidade.Ficha.Tecnica.Item in '..\Model\Entidades\FichaTecnica\Supremo.Entidade.Ficha.Tecnica.Item.pas',
  Supremo.Entidade.Model.Product.Item in '..\Model\Entidades\ModelProduct\Supremo.Entidade.Model.Product.Item.pas',
  Supremo.Entidade.Qtde.Producao in '..\Model\Entidades\QtdeProducao\Supremo.Entidade.Qtde.Producao.pas',
  ufrmSearchMateriaPrima in 'Search\ufrmSearchMateriaPrima.pas' {frmSearchMaterial},
  StringGridHack in 'StringGridHack.pas',
  udmPrincipal in '..\Model\DMPrincipal\udmPrincipal.pas' {dmPrincipal: TDataModule},
  Classes.Uteis in '..\Model\DMPrincipal\Classes.Uteis.pas',
  Supremo.Entidade.Custo.Receita.Despesa in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Custo.Receita.Despesa.pas',
  Supremo.Entidade.Montar.Custo in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Montar.Custo.pas',
  Supremo.Entidade.Soma.Aliquota.Grupo in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Soma.Aliquota.Grupo.pas',
  Supremo.Entidade.Soma.Custo.Modelo in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Soma.Custo.Modelo.pas',
  Supremo.Entidade.Soma.Despesa.Fixa in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Soma.Despesa.Fixa.pas',
  Supremo.Entidade.Soma.Ficha.Tecnica in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Soma.Ficha.Tecnica.pas',
  Supremo.Entidade.Tabela.Preco in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Tabela.Preco.pas',
  Whorkshop.Model.Entidades.Setores.Interfaces in '..\Model\Entidades\Whorkshop.Model.Entidades.Setores.Interfaces.pas',
  ufrmLocalProducao in 'Register\ufrmLocalProducao.pas' {frmLocalProducao},
  ufrmMontarProducaoMaoObra in 'Register\ufrmMontarProducaoMaoObra.pas' {frmMontarProducaoMaoObra},
  ufrmSetorLocal in 'Register\ufrmSetorLocal.pas' {frmSetorLocal},
  ufrmSetorProducao in 'Register\ufrmSetorProducao.pas' {frmSetorProducao},
  ufrmFichaTecnica in 'Register\ufrmFichaTecnica.pas' {frmFichaTecnica},
  ufrmMontarCusto in 'Register\ufrmMontarCusto.pas' {frmMontarCusto},
  ufrmMontarCusto1 in 'Register\ufrmMontarCusto1.pas' {frmMontarCusto1},
  udmEntidade.Relatorios in '..\Model\DMPrincipal\udmEntidade.Relatorios.pas' {dmEntidadeRelatorios: TDataModule},
  ufrmModelo in 'Modelos\ufrmModelo.pas' {frmModelo},
  ufrmSearchMarkupNome in 'Search\ufrmSearchMarkupNome.pas' {frmSearchMarkupNome},
  Entidade.Recalcular.Ficha.Tecnica in '..\Model\Entidades\Recalcular\Entidade.Recalcular.Ficha.Tecnica.pas',
  Entidade.Recalcular.Mao.Obra in '..\Model\Entidades\Recalcular\Entidade.Recalcular.Mao.Obra.pas',
  ufrmAguarde in 'ufrmAguarde.pas' {frmAguarde},
  Entidade.Recalcular.Custo in '..\Model\Entidades\Recalcular\Entidade.Recalcular.Custo.pas',
  ufrmModelodbEdit in 'Modelos\ufrmModelodbEdit.pas' {frmModelodbEdit},
  ufrmMateriaPrima in 'Register\ufrmMateriaPrima.pas' {frmMateriaPrima},
  ufrmModeloPesquisa in 'Modelos\ufrmModeloPesquisa.pas' {frmModeloPesquisa},
  ufrmMargemLucroPedido in 'Search\ufrmMargemLucroPedido.pas' {frmMargemLucroPedido},
  Model.Entidade.Lucro.Pedido in '..\Model\Entidades\MontarCusto\Model.Entidade.Lucro.Pedido.pas',
  Model.Entidade.Config in '..\Model\Entidades\Model.Entidade.Config.pas',
  Entidade.Replicar.Montar.Custo in '..\Model\Entidades\Recalcular\Entidade.Replicar.Montar.Custo.pas',
  Supremo.Entidade.Relatorio.Lucro.Pedido in '..\Model\Entidades\MontarCusto\Supremo.Entidade.Relatorio.Lucro.Pedido.pas',
  Model.Entidade.Aliquota.Markup.Interfaces in '..\..\src\model\entidade\interfaces\Model.Entidade.Aliquota.Markup.Interfaces.pas',
  Model.Imp.Entidade.Aliquota.Markup in '..\..\src\model\entidade\imp\Model.Imp.Entidade.Aliquota.Markup.pas',
  Model.Factory.Entidade.Interfaces in '..\..\src\model\entidade\factory\interfaces\Model.Factory.Entidade.Interfaces.pas',
  Model.Imp.Factory.Entidade in '..\..\src\model\entidade\factory\imp\Model.Imp.Factory.Entidade.pas',
  Model.Conexao.Configuracao.Interfaces in '..\..\src\model\conexao\interfaces\Model.Conexao.Configuracao.Interfaces.pas',
  Model.Conexao.Firedac.Interfaces in '..\..\src\model\conexao\interfaces\Model.Conexao.Firedac.Interfaces.pas',
  Model.Query in '..\..\src\model\conexao\interfaces\Model.Query.pas',
  Model.Imp.Conexao.Firedac in '..\..\src\model\conexao\imp\Model.Imp.Conexao.Firedac.pas',
  Model.Imp.Configuracao in '..\..\src\model\conexao\imp\Model.Imp.Configuracao.pas',
  Model.Imp.Query in '..\..\src\model\conexao\imp\Model.Imp.Query.pas',
  Model.DAO.Aliquota.Markup.Interfaces in '..\..\src\model\dao\interfaces\Model.DAO.Aliquota.Markup.Interfaces.pas',
  Model.DAO.Imp.Aliquota.Markup in '..\..\src\model\dao\imp\Model.DAO.Imp.Aliquota.Markup.pas',
  Controller.Interfaces in '..\..\src\controller\interfaces\Controller.Interfaces.pas',
  Controller in '..\..\src\controller\imp\Controller.pas',
  Model.Entidade.Aliquota.Nome.Interfaces in '..\..\src\model\entidade\interfaces\Model.Entidade.Aliquota.Nome.Interfaces.pas',
  Model.Imp.Entidade.Aliquota.Nome in '..\..\src\model\entidade\imp\Model.Imp.Entidade.Aliquota.Nome.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TdmEntidadeRelatorios, dmEntidadeRelatorios);
  Application.CreateForm(TfrmSupremoHome, frmSupremoHome);
  Application.Run;
end.
