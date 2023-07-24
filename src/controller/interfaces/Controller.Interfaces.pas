unit Controller.Interfaces;

interface

uses
  Model.Factory.Entidade.Interfaces;

type
  iController = interface
    ['{C1BD3976-7EE3-4A76-B88D-26A3581ADA88}']
    function FactoryEntidade : iFactoryEntidade;
  end;

implementation

end.
