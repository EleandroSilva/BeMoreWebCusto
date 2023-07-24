unit ufrmMateriaPrima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmModelodbEdit, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, udmPrincipal;

type
  TfrmMateriaPrima = class(TfrmModelodbEdit)
  private
    function SalvarUnidade(aValue: Integer): String;
    function ValidarUnidade(aValue : String ) : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMateriaPrima: TfrmMateriaPrima;

implementation

{$R *.dfm}

{ TfrmMateriaPrima }

function TfrmMateriaPrima.SalvarUnidade(aValue: Integer): String;
begin
  case aValue of
    0: Result := 'PC';
    1: Result := 'KG';
    2: Result := 'LT';
    3: Result := 'ML';
    4: Result := 'M2';
    5: Result := 'M3';
    6: Result := 'CE';
    7: Result := 'MI';
    8: Result := 'PAR';
    9: Result := 'GR';
  end;
end;


function TfrmMateriaPrima.ValidarUnidade(aValue: String): Integer;
begin
  if aValue = 'PC' then Result :=0;
  if aValue = 'KG' then Result :=1;
  if aValue = 'LT' then Result :=2;
  if aValue = 'ML' then Result :=3;
  if aValue = 'M2' then Result :=4;
  if aValue = 'M3' then Result :=5;
  if aValue = 'CE' then Result :=6;
  if aValue = 'MI' then Result :=7;
  if aValue = 'PAR' then Result :=8;
  if aValue = 'GR' then Result :=9;
end;

end.
