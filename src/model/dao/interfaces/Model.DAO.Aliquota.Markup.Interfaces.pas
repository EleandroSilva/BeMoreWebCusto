unit Model.DAO.Aliquota.Markup.Interfaces;

interface

uses
  Data.DB,
  Model.Entidade.Aliquota.Markup.Interfaces;

type
  iDAOAliquotaMarkup = Interface
    ['{430E4C83-D9FD-4AE3-905B-743051D6A2BE}']
    function DataSet(DataSource : TDataSource) : iDAOAliquotaMarkup; overload;
    function DataSet                           : TDataSet;      overload;
    function GetAll                            : iDAOAliquotaMarkup;
    function GetbyId(Id : Variant)             : iDAOAliquotaMarkup;
    function GetbyIdRegiao(IdRegiao : Variant) : iDAOAliquotaMarkup;
    function GetbyParams                       : iDAOAliquotaMarkup;
    function Post                              : iDAOAliquotaMarkup;
    function Put                               : iDAOAliquotaMarkup;
    function Delete                            : iDAOAliquotaMarkup;

    function This : iAliquotaMarkup<iDAOAliquotaMarkup>;
  End;

implementation

end.
