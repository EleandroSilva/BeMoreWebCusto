unit Whorkshop.Controller.Interfaces;

interface

uses
  Whorkshop.Model.Entidades.Interfaces,
  Whorkshop.Model.Entidades.RedeInfocon.Interfaces,
  Whorkshop.Model.Entidades.EmpresaLogada.Interfaces,
  Model.Factory.Entidade.Interfaces;

type

  iController = interface
    ['{98311B51-7289-4FDB-8221-2AF54B789AF3}']
    function Entidades              : iModelEntidadeFactory;
    function EntidadesRedeInfocon   : iModelEntidadeRedeInfoconFactory;
    function EntidadesEmpresaLogada : iModelEntidadeEmpresaLogadaFactory;
    function FactoryEntidade        : iFactoryEntidade;
  end;
implementation

end.
