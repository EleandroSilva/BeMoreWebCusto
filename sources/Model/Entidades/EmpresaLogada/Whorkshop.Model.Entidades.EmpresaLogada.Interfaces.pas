unit Whorkshop.Model.Entidades.EmpresaLogada.Interfaces;

interface

type
  iModelEntidadeEmpresaLogada = interface
    ['{44839549-25EE-48E5-ACFB-9C4478ED75C0}']
    function IdEmpresa : String;
    function NomeEmpresa : String;
    function Operador : String;
  end;

  iModelEntidadeEmpresaLogadaFactory = Interface
    ['{DA6A61BD-CD20-4DD7-BEC1-E7175990E126}']
    function DadosEmpresaLogada : iModelEntidadeEmpresaLogada;
  End;



implementation

end.
