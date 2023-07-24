unit Whorkshop.Model.Connection.Mensagem;

interface

uses
  Whorkshop.Model.Connection.Interfaces;

type
  TMensagem = class (TInterfacedObject, iModelMSG)
    private
    FTipoMSG : Integer;
    FMSG : iModelMSG;
    public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelMSG;

    function TipoMSG(aValue : Integer) : iModelMSG;
    function MSG : String;

  end;

implementation

{ TMensagem }

constructor TMensagem.Create;
begin
 //
end;

destructor TMensagem.Destroy;
begin
  inherited;
end;

function TMensagem.MSG: String;
const
  constMSG = 'Parabéns... ';
  constMSG1 = 'Atenção... ';
begin
  case FTipoMSG of
   0:Result:=constMSG1+'Registro não encontrado, Favor tentar outro filtro!';
   1:Result:=constMSG+ 'Registro salvo com sucesso!';
   2:Result:=constMSG+'Registro excluído com sucesso!';
  end;
end;

class function TMensagem.New: iModelMSG;
begin
  Result := Self.Create;
end;

function TMensagem.TipoMSG(aValue: Integer): iModelMSG;
begin
  Result := Self;
  FTipoMSG := aValue;
end;

end.
