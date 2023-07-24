unit udmPrincipal;

interface

uses
  System.SysUtils,
  System.Classes,

  MidasLib,

  Data.DBXFirebird,
  Data.DB,
  Data.SqlExpr,
  Data.FMTBcd,

  Datasnap.DBClient,
  Datasnap.Provider,

  Classes.Uteis,

  ppComm,
  ppRelatv,
  ppProd,
  ppClass,
  ppReport,
  ppVar,
  ppCtrls,
  ppPrnabl,
  ppBands,
  ppCache,
  ppDesignLayer,
  ppParameter,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,


  Whorkshop.Controller.Interfaces,
  Whorkshop.Controller,
  Model.Entidade.Config,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Entidade.Replicar.Montar.Custo;

type
  TdmPrincipal = class(TDataModule)
    sqlConexao: TSQLConnection;
    sqlFichaTecnicaItem: TSQLDataSet;
    dspFichaTecnicaItem: TDataSetProvider;
    cdsFichaTecnicaItem: TClientDataSet;
    sqlFichaTecnicaItemID: TLargeintField;
    sqlFichaTecnicaItemIDFICHATECNICA: TLargeintField;
    sqlFichaTecnicaItemIDMATERIAPRIMA: TLargeintField;
    sqlFichaTecnicaItemDESCRICAO: TStringField;
    cdsFichaTecnicaItemID: TLargeintField;
    cdsFichaTecnicaItemIDFICHATECNICA: TLargeintField;
    cdsFichaTecnicaItemIDMATERIAPRIMA: TLargeintField;
    cdsFichaTecnicaItemDESCRICAO: TStringField;
    sqlFichaTecnicaItemUN: TStringField;
    cdsFichaTecnicaItemUN: TStringField;
    sqlFichaTecnica: TSQLDataSet;
    dspFichaTecnica: TDataSetProvider;
    cdsFichaTecnica: TClientDataSet;
    sqlFichaTecnicaID: TLargeintField;
    sqlFichaTecnicaIDMODELO: TLargeintField;
    sqlFichaTecnicaQTDEPRODUCAO: TIntegerField;
    sqlFichaTecnicaOPERADOR: TStringField;
    sqlFichaTecnicaDATALANCAMENTO: TDateField;
    sqlFichaTecnicaSTATUS: TIntegerField;
    sqlFichaTecnicaATIVO: TIntegerField;
    cdsFichaTecnicaID: TLargeintField;
    cdsFichaTecnicaIDMODELO: TLargeintField;
    cdsFichaTecnicaQTDEPRODUCAO: TIntegerField;
    cdsFichaTecnicaOPERADOR: TStringField;
    cdsFichaTecnicaDATALANCAMENTO: TDateField;
    cdsFichaTecnicaSTATUS: TIntegerField;
    cdsFichaTecnicaATIVO: TIntegerField;
    sqlSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    sqlSetorID: TLargeintField;
    sqlSetorDESCRICAO: TStringField;
    sqlSetorVALORGASTO: TFMTBCDField;
    sqlSetorALIQUOTAFRETE: TFMTBCDField;
    sqlSetorDATALANCAMENTO: TDateField;
    sqlSetorOPERADOR: TStringField;
    sqlSetorSTATUS: TIntegerField;
    sqlSetorATIVO: TIntegerField;
    cdsSetorID: TLargeintField;
    cdsSetorDESCRICAO: TStringField;
    cdsSetorVALORGASTO: TFMTBCDField;
    cdsSetorALIQUOTAFRETE: TFMTBCDField;
    cdsSetorDATALANCAMENTO: TDateField;
    cdsSetorOPERADOR: TStringField;
    cdsSetorSTATUS: TIntegerField;
    cdsSetorATIVO: TIntegerField;
    sqlLocal: TSQLDataSet;
    dspLocal: TDataSetProvider;
    cdsLocal: TClientDataSet;
    sqlLocalID: TLargeintField;
    sqlLocalDESCRICAO: TStringField;
    sqlLocalSTATUS: TIntegerField;
    cdsLocalID: TLargeintField;
    cdsLocalDESCRICAO: TStringField;
    cdsLocalSTATUS: TIntegerField;
    sqlLocalDATALANCAMENTO: TDateField;
    sqlLocalOPERADOR: TStringField;
    sqlLocalATIVO: TIntegerField;
    cdsLocalDATALANCAMENTO: TDateField;
    cdsLocalOPERADOR: TStringField;
    cdsLocalATIVO: TIntegerField;
    sqlSetorLocal: TSQLDataSet;
    dspSetorLocal: TDataSetProvider;
    cdsSetorLocal: TClientDataSet;
    sqlSetorLocalID: TLargeintField;
    sqlSetorLocalIDSETOR: TLargeintField;
    sqlSetorLocalIDLOCAL: TLargeintField;
    sqlSetorLocalDESCRICAO: TStringField;
    sqlSetorLocalDATALANCAMENTO: TDateField;
    sqlSetorLocalOPERADOR: TStringField;
    sqlSetorLocalSTATUS: TIntegerField;
    sqlSetorLocalATIVO: TIntegerField;
    cdsSetorLocalID: TLargeintField;
    cdsSetorLocalIDSETOR: TLargeintField;
    cdsSetorLocalIDLOCAL: TLargeintField;
    cdsSetorLocalDESCRICAO: TStringField;
    cdsSetorLocalDATALANCAMENTO: TDateField;
    cdsSetorLocalOPERADOR: TStringField;
    cdsSetorLocalSTATUS: TIntegerField;
    cdsSetorLocalATIVO: TIntegerField;
    dsSetor: TDataSource;
    dsLocal: TDataSource;
    sqlModelo: TSQLDataSet;
    dspModelo: TDataSetProvider;
    cdsModelo: TClientDataSet;
    dsModelo: TDataSource;
    sqlModeloID: TLargeintField;
    sqlModeloDESCRICAO: TStringField;
    sqlModeloQTDEPRODUCAO: TIntegerField;
    sqlModeloOPERADOR: TStringField;
    sqlModeloDATALANCAMENTO: TDateField;
    sqlModeloSTATUS: TIntegerField;
    sqlModeloATIVO: TIntegerField;
    cdsModeloID: TLargeintField;
    cdsModeloDESCRICAO: TStringField;
    cdsModeloQTDEPRODUCAO: TIntegerField;
    cdsModeloOPERADOR: TStringField;
    cdsModeloDATALANCAMENTO: TDateField;
    cdsModeloSTATUS: TIntegerField;
    cdsModeloATIVO: TIntegerField;
    dsSetorLocal: TDataSource;
    sqlProducaoItem: TSQLDataSet;
    dspProducaoItem: TDataSetProvider;
    cdsProducaoItem: TClientDataSet;
    dsProducaoItem: TDataSource;
    sqlProducaoItemID: TLargeintField;
    sqlProducaoItemIDSETORLOCAL: TLargeintField;
    sqlProducaoItemQTDEPRODUCAO: TIntegerField;
    sqlProducaoItemVALORFRETE: TFMTBCDField;
    sqlProducaoItemVALORMAOOBRA: TFMTBCDField;
    sqlProducaoItemVALORCUSTO: TFMTBCDField;
    cdsProducaoItemID: TLargeintField;
    cdsProducaoItemIDSETORLOCAL: TLargeintField;
    cdsProducaoItemQTDEPRODUCAO: TIntegerField;
    cdsProducaoItemVALORFRETE: TFMTBCDField;
    cdsProducaoItemVALORMAOOBRA: TFMTBCDField;
    cdsProducaoItemVALORCUSTO: TFMTBCDField;
    queryAuxiliar: TSQLQuery;
    sqlProducaoItemDESCRICAO: TStringField;
    cdsProducaoItemDESCRICAO: TStringField;
    sqlProducao: TSQLDataSet;
    dspProducao: TDataSetProvider;
    cdsProducao: TClientDataSet;
    sqlProducaoID: TLargeintField;
    sqlProducaoIDMODELO: TLargeintField;
    sqlProducaoDESCRICAO: TStringField;
    sqlProducaoQTDEPRODUCAO: TIntegerField;
    sqlProducaoVALORFRETE: TFMTBCDField;
    sqlProducaoVALORMAOOBRA: TFMTBCDField;
    sqlProducaoVALORCUSTO: TFMTBCDField;
    sqlProducaoDATALANCAMENTO: TDateField;
    sqlProducaoOPERADOR: TStringField;
    sqlProducaoSTATUS: TIntegerField;
    sqlProducaoATIVO: TIntegerField;
    dsFichaTecnicaItem: TDataSource;
    sqlFichaTecnicaDESCRICAO: TStringField;
    cdsFichaTecnicaDESCRICAO: TStringField;
    sqlFichaTecnicaVALORPERDA: TFMTBCDField;
    sqlFichaTecnicaVALORFINAL: TFMTBCDField;
    cdsFichaTecnicaVALORPERDA: TFMTBCDField;
    cdsFichaTecnicaVALORFINAL: TFMTBCDField;
    sqlMontarCusto: TSQLDataSet;
    dspMontarCusto: TDataSetProvider;
    cdsMontarCusto: TClientDataSet;
    sqlMontarCustoID: TLargeintField;
    sqlMontarCustoIDMODELO: TLargeintField;
    sqlMontarCustoDESCRICAO: TStringField;
    sqlMontarCustoVALORDESPESAFIXA: TFMTBCDField;
    sqlMontarCustoVALORFICHATECNICA: TFMTBCDField;
    sqlMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField;
    sqlMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField;
    sqlMontarCustoQTDEPRODUCAO: TIntegerField;
    sqlMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField;
    sqlMontarCustoCUSTOTOTALMODELO: TFMTBCDField;
    sqlMontarCustoALIQUOTAMARKUP: TFMTBCDField;
    sqlMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField;
    sqlMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField;
    sqlMontarCustoVALORVENDAAVISTA: TFMTBCDField;
    sqlMontarCustoDATALANCAMENTO: TDateField;
    sqlMontarCustoOPERADOR: TStringField;
    sqlMontarCustoSTATUS: TIntegerField;
    sqlMontarCustoATIVO: TIntegerField;
    cdsMontarCustoID: TLargeintField;
    cdsMontarCustoIDMODELO: TLargeintField;
    cdsMontarCustoDESCRICAO: TStringField;
    cdsMontarCustoVALORDESPESAFIXA: TFMTBCDField;
    cdsMontarCustoVALORFICHATECNICA: TFMTBCDField;
    cdsMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField;
    cdsMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField;
    cdsMontarCustoQTDEPRODUCAO: TIntegerField;
    cdsMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField;
    cdsMontarCustoCUSTOTOTALMODELO: TFMTBCDField;
    cdsMontarCustoALIQUOTAMARKUP: TFMTBCDField;
    cdsMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField;
    cdsMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField;
    cdsMontarCustoVALORVENDAAVISTA: TFMTBCDField;
    cdsMontarCustoDATALANCAMENTO: TDateField;
    cdsMontarCustoOPERADOR: TStringField;
    cdsMontarCustoSTATUS: TIntegerField;
    cdsMontarCustoATIVO: TIntegerField;
    dsAuxiliar: TDataSource;
    sqlMontarCustoVALORFRETE: TFMTBCDField;
    cdsMontarCustoVALORFRETE: TFMTBCDField;
    sqlMarkupNome: TSQLDataSet;
    dspMarkupNome: TDataSetProvider;
    cdsMarkupNome: TClientDataSet;
    sqlMarkupNomeID: TLargeintField;
    sqlMarkupNomeIDREGIAO: TLargeintField;
    sqlMarkupNomeDESCRICAO: TStringField;
    sqlMarkupNomeOPERADOR: TStringField;
    sqlMarkupNomeDATALANCAMENTO: TDateField;
    sqlMarkupNomeATIVO: TIntegerField;
    cdsMarkupNomeID: TLargeintField;
    cdsMarkupNomeIDREGIAO: TLargeintField;
    cdsMarkupNomeDESCRICAO: TStringField;
    cdsMarkupNomeOPERADOR: TStringField;
    cdsMarkupNomeDATALANCAMENTO: TDateField;
    cdsMarkupNomeATIVO: TIntegerField;
    sqlMarkupNomeREGIAO: TStringField;
    cdsMarkupNomeREGIAO: TStringField;
    sqlAliquotaNome: TSQLDataSet;
    dspAliquotaNome: TDataSetProvider;
    cdsAliquotaNome: TClientDataSet;
    sqlAliquotaNomeID: TLargeintField;
    sqlAliquotaNomeSTATUS: TIntegerField;
    sqlAliquotaNomeDESCRICAO: TStringField;
    sqlAliquotaNomeALIQUOTA: TFMTBCDField;
    sqlAliquotaNomeOPERADOR: TStringField;
    sqlAliquotaNomeDATALANCAMENTO: TDateField;
    sqlAliquotaNomeFINANCEIRO: TIntegerField;
    sqlAliquotaNomeATIVO: TIntegerField;
    cdsAliquotaNomeID: TLargeintField;
    cdsAliquotaNomeSTATUS: TIntegerField;
    cdsAliquotaNomeDESCRICAO: TStringField;
    cdsAliquotaNomeALIQUOTA: TFMTBCDField;
    cdsAliquotaNomeOPERADOR: TStringField;
    cdsAliquotaNomeDATALANCAMENTO: TDateField;
    cdsAliquotaNomeFINANCEIRO: TIntegerField;
    cdsAliquotaNomeATIVO: TIntegerField;
    sqlAliquotaGrupo: TSQLDataSet;
    dspAliquotaGrupo: TDataSetProvider;
    cdsAliquotaGrupo: TClientDataSet;
    sqlAliquotaGrupoID: TLargeintField;
    sqlAliquotaGrupoIDMARKUPNOME: TLargeintField;
    sqlAliquotaGrupoMARKUPNOME: TStringField;
    sqlAliquotaGrupoIDALIQUOTANOME: TLargeintField;
    sqlAliquotaGrupoALIQUOTANOME: TStringField;
    sqlAliquotaGrupoALIQUOTA: TFMTBCDField;
    sqlAliquotaGrupoDATALANCAMENTO: TDateField;
    sqlAliquotaGrupoOPERADOR: TStringField;
    sqlAliquotaGrupoSTATUS: TIntegerField;
    sqlAliquotaGrupoATIVO: TIntegerField;
    cdsAliquotaGrupoID: TLargeintField;
    cdsAliquotaGrupoIDMARKUPNOME: TLargeintField;
    cdsAliquotaGrupoMARKUPNOME: TStringField;
    cdsAliquotaGrupoIDALIQUOTANOME: TLargeintField;
    cdsAliquotaGrupoALIQUOTANOME: TStringField;
    cdsAliquotaGrupoALIQUOTA: TFMTBCDField;
    cdsAliquotaGrupoDATALANCAMENTO: TDateField;
    cdsAliquotaGrupoOPERADOR: TStringField;
    cdsAliquotaGrupoSTATUS: TIntegerField;
    cdsAliquotaGrupoATIVO: TIntegerField;
    sqlEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sqlEmpresaID_EMP: TIntegerField;
    sqlEmpresaNOMEEMPRESA: TStringField;
    sqlEmpresaFONE: TStringField;
    cdsEmpresaID_EMP: TIntegerField;
    cdsEmpresaNOMEEMPRESA: TStringField;
    cdsEmpresaFONE: TStringField;
    sqlModeloQTDEREGISTRO: TIntegerField;
    cdsModeloQTDEREGISTRO: TIntegerField;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplDesenvolvidopor: TppLabel;
    pplSiteEmpresa: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppShape2: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine4: TppLine;
    sqlModeloProduto: TSQLDataSet;
    dspModeloProduto: TDataSetProvider;
    cdsModeloProduto: TClientDataSet;
    dsModeloProduto: TDataSource;
    sqlModeloProdutoID: TLargeintField;
    sqlModeloProdutoIDMODELO: TLargeintField;
    sqlModeloProdutoMODELO: TStringField;
    sqlModeloProdutoDATALANCAMENTO: TDateField;
    sqlModeloProdutoOPERADOR: TStringField;
    sqlModeloProdutoATIVO: TIntegerField;
    cdsModeloProdutoID: TLargeintField;
    cdsModeloProdutoIDMODELO: TLargeintField;
    cdsModeloProdutoMODELO: TStringField;
    cdsModeloProdutoDATALANCAMENTO: TDateField;
    cdsModeloProdutoOPERADOR: TStringField;
    cdsModeloProdutoATIVO: TIntegerField;
    sqlModeloProdutoItem: TSQLDataSet;
    dspModeloProdutoItem: TDataSetProvider;
    cdsModeloProdutoItem: TClientDataSet;
    dsModeloProdutoItem: TDataSource;
    sqlListaModeloProduto: TSQLDataSet;
    dspListaModeloProduto: TDataSetProvider;
    cdsListaModeloProduto: TClientDataSet;
    dsListaModeloProduto: TDataSource;
    sqlListaModeloProdutoID: TLargeintField;
    sqlListaModeloProdutoIDMODELO: TLargeintField;
    sqlListaModeloProdutoMODELO: TStringField;
    sqlListaModeloProdutoIDMODELOPRODUTO: TLargeintField;
    sqlListaModeloProdutoPRODUTO: TStringField;
    sqlListaModeloProdutoQTDEMODELO: TIntegerField;
    sqlListaModeloProdutoQTDEREGISTRO: TIntegerField;
    cdsListaModeloProdutoID: TLargeintField;
    cdsListaModeloProdutoIDMODELO: TLargeintField;
    cdsListaModeloProdutoMODELO: TStringField;
    cdsListaModeloProdutoIDMODELOPRODUTO: TLargeintField;
    cdsListaModeloProdutoPRODUTO: TStringField;
    cdsListaModeloProdutoQTDEMODELO: TIntegerField;
    cdsListaModeloProdutoQTDEREGISTRO: TIntegerField;
    sqlModeloProdutoItemID: TLargeintField;
    sqlModeloProdutoItemIDMODELOPRODUTO: TLargeintField;
    sqlModeloProdutoItemPRODUTO: TStringField;
    cdsModeloProdutoItemID: TLargeintField;
    cdsModeloProdutoItemIDMODELOPRODUTO: TLargeintField;
    cdsModeloProdutoItemPRODUTO: TStringField;
    dsMarkupNome: TDataSource;
    sqlMarkupNomeQTDEREGISTRO: TIntegerField;
    cdsMarkupNomeQTDEREGISTRO: TIntegerField;
    dsAliquotaNome: TDataSource;
    sqlAliquotaNomeQTDEREGISTRO: TIntegerField;
    cdsAliquotaNomeQTDEREGISTRO: TIntegerField;
    dsAliquotaGrupo: TDataSource;
    sqlAliquotaGrupoALIQUOTAGRUPO: TFMTBCDField;
    sqlAliquotaGrupoQTDEREGISTROGRUPO: TIntegerField;
    sqlAliquotaGrupoALIQUOTAGERAL: TFMTBCDField;
    sqlAliquotaGrupoQTDEREGISTRO: TIntegerField;
    cdsAliquotaGrupoALIQUOTAGRUPO: TFMTBCDField;
    cdsAliquotaGrupoQTDEREGISTROGRUPO: TIntegerField;
    cdsAliquotaGrupoALIQUOTAGERAL: TFMTBCDField;
    cdsAliquotaGrupoQTDEREGISTRO: TIntegerField;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine20: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    dsProducao: TDataSource;
    sqlListaProducao: TSQLDataSet;
    dspListaProducao: TDataSetProvider;
    cdsListaProducao: TClientDataSet;
    dsListaProducao: TDataSource;
    sqlListaProducaoIDMODELO: TLargeintField;
    sqlListaProducaoMODELO: TStringField;
    sqlListaProducaoID: TLargeintField;
    sqlListaProducaoIDSETORLOCAL: TLargeintField;
    sqlListaProducaoDESCRICAO: TStringField;
    sqlListaProducaoQTDEPRODUCAO: TIntegerField;
    sqlListaProducaoVALORFRETE: TFMTBCDField;
    sqlListaProducaoVALORMAOOBRA: TFMTBCDField;
    sqlListaProducaoVALORCUSTO: TFMTBCDField;
    sqlListaProducaoQTDEREGISTRO: TIntegerField;
    sqlListaProducaoVALORFRETEMODELO: TFMTBCDField;
    sqlListaProducaoVALORMAOBRAMODELO: TFMTBCDField;
    sqlListaProducaoVALORCUSTOMODELO: TFMTBCDField;
    cdsListaProducaoIDMODELO: TLargeintField;
    cdsListaProducaoMODELO: TStringField;
    cdsListaProducaoID: TLargeintField;
    cdsListaProducaoIDSETORLOCAL: TLargeintField;
    cdsListaProducaoDESCRICAO: TStringField;
    cdsListaProducaoQTDEPRODUCAO: TIntegerField;
    cdsListaProducaoVALORFRETE: TFMTBCDField;
    cdsListaProducaoVALORMAOOBRA: TFMTBCDField;
    cdsListaProducaoVALORCUSTO: TFMTBCDField;
    cdsListaProducaoQTDEREGISTRO: TIntegerField;
    cdsListaProducaoVALORFRETEMODELO: TFMTBCDField;
    cdsListaProducaoVALORMAOBRAMODELO: TFMTBCDField;
    cdsListaProducaoVALORCUSTOMODELO: TFMTBCDField;
    sqlListaProducaoQTDEPRODUCAOMODELO: TLargeintField;
    cdsListaProducaoQTDEPRODUCAOMODELO: TLargeintField;
    sqlListaFichaTecnica: TSQLDataSet;
    dspListaFichaTecnica: TDataSetProvider;
    cdsListaFichaTecnica: TClientDataSet;
    dsListaFichaTecnica: TDataSource;
    sqlModeloALIQUOTAINTERNA: TFMTBCDField;
    sqlModeloALIQUOTAEXTERNA: TFMTBCDField;
    cdsModeloALIQUOTAINTERNA: TFMTBCDField;
    cdsModeloALIQUOTAEXTERNA: TFMTBCDField;
    sqlProducaoALIQUOTAINTERNA: TFMTBCDField;
    sqlProducaoALIQUOTAEXTERNA: TFMTBCDField;
    cdsProducaoID: TLargeintField;
    cdsProducaoIDMODELO: TLargeintField;
    cdsProducaoDESCRICAO: TStringField;
    cdsProducaoQTDEPRODUCAO: TIntegerField;
    cdsProducaoVALORFRETE: TFMTBCDField;
    cdsProducaoVALORMAOOBRA: TFMTBCDField;
    cdsProducaoVALORCUSTO: TFMTBCDField;
    cdsProducaoDATALANCAMENTO: TDateField;
    cdsProducaoOPERADOR: TStringField;
    cdsProducaoSTATUS: TIntegerField;
    cdsProducaoATIVO: TIntegerField;
    cdsProducaoALIQUOTAINTERNA: TFMTBCDField;
    cdsProducaoALIQUOTAEXTERNA: TFMTBCDField;
    sqlProducaoVALORAJUSTADO: TFMTBCDField;
    cdsProducaoVALORAJUSTADO: TFMTBCDField;
    sqlSetorLocalCALCULARVALORAJUSTADO: TIntegerField;
    sqlProducaoItemVALORAJUSTADO: TFMTBCDField;
    cdsProducaoItemVALORAJUSTADO: TFMTBCDField;
    cdsSetorLocalCALCULARVALORAJUSTADO: TIntegerField;
    sqlListaProducaoVALORAJUSTADO: TFMTBCDField;
    sqlListaProducaoVALORAJUSTADOMODELO: TFMTBCDField;
    cdsListaProducaoVALORAJUSTADO: TFMTBCDField;
    cdsListaProducaoVALORAJUSTADOMODELO: TFMTBCDField;
    sqlProducaoItemIDPRODUCAO: TLargeintField;
    cdsProducaoItemIDPRODUCAO: TLargeintField;
    sqlFichaTecnicaItemVALORUNITARIO: TFMTBCDField;
    sqlFichaTecnicaItemQTDE: TFMTBCDField;
    sqlFichaTecnicaItemPERDA: TFMTBCDField;
    sqlFichaTecnicaItemSUBTOTAL: TFMTBCDField;
    sqlFichaTecnicaItemVALORPERDA: TFMTBCDField;
    sqlFichaTecnicaItemVALORFINAL: TFMTBCDField;
    cdsFichaTecnicaItemVALORUNITARIO: TFMTBCDField;
    cdsFichaTecnicaItemQTDE: TFMTBCDField;
    cdsFichaTecnicaItemPERDA: TFMTBCDField;
    cdsFichaTecnicaItemSUBTOTAL: TFMTBCDField;
    cdsFichaTecnicaItemVALORPERDA: TFMTBCDField;
    cdsFichaTecnicaItemVALORFINAL: TFMTBCDField;
    sqlListaFichaTecnicaIDMODELO: TLargeintField;
    sqlListaFichaTecnicaMODELO: TStringField;
    sqlListaFichaTecnicaID: TLargeintField;
    sqlListaFichaTecnicaIDFICHATECNICA: TLargeintField;
    sqlListaFichaTecnicaIDMATERIAPRIMA: TLargeintField;
    sqlListaFichaTecnicaDESCRICAO: TStringField;
    sqlListaFichaTecnicaUN: TStringField;
    sqlListaFichaTecnicaVALORUNITARIO: TFMTBCDField;
    sqlListaFichaTecnicaQTDE: TFMTBCDField;
    sqlListaFichaTecnicaPERDA: TFMTBCDField;
    sqlListaFichaTecnicaSUBTOTAL: TFMTBCDField;
    sqlListaFichaTecnicaVALORPERDA: TFMTBCDField;
    sqlListaFichaTecnicaVALORFINAL: TFMTBCDField;
    sqlListaFichaTecnicaQTDEREGISTRO: TIntegerField;
    sqlListaFichaTecnicaVALORMATERIAPERDAMODELO: TFMTBCDField;
    sqlListaFichaTecnicaVALORMATERIAPRIMAMODELO: TFMTBCDField;
    cdsListaFichaTecnicaIDMODELO: TLargeintField;
    cdsListaFichaTecnicaMODELO: TStringField;
    cdsListaFichaTecnicaID: TLargeintField;
    cdsListaFichaTecnicaIDFICHATECNICA: TLargeintField;
    cdsListaFichaTecnicaIDMATERIAPRIMA: TLargeintField;
    cdsListaFichaTecnicaDESCRICAO: TStringField;
    cdsListaFichaTecnicaUN: TStringField;
    cdsListaFichaTecnicaVALORUNITARIO: TFMTBCDField;
    cdsListaFichaTecnicaQTDE: TFMTBCDField;
    cdsListaFichaTecnicaPERDA: TFMTBCDField;
    cdsListaFichaTecnicaSUBTOTAL: TFMTBCDField;
    cdsListaFichaTecnicaVALORPERDA: TFMTBCDField;
    cdsListaFichaTecnicaVALORFINAL: TFMTBCDField;
    cdsListaFichaTecnicaQTDEREGISTRO: TIntegerField;
    cdsListaFichaTecnicaVALORMATERIAPERDAMODELO: TFMTBCDField;
    cdsListaFichaTecnicaVALORMATERIAPRIMAMODELO: TFMTBCDField;
    sqlMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField;
    cdsMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField;
    sqlDespesaFixa: TSQLDataSet;
    dspDespesaFixa: TDataSetProvider;
    cdsDespesaFixa: TClientDataSet;
    dsDespesaFixa: TDataSource;
    sqlDespesaFixaID: TLargeintField;
    sqlDespesaFixaIDCLASSECONTAS: TLargeintField;
    sqlDespesaFixaDESCRICAO: TStringField;
    sqlDespesaFixaVALOR: TFMTBCDField;
    sqlDespesaFixaORIGEM: TIntegerField;
    sqlDespesaFixaDATALANCAMENTO: TDateField;
    sqlDespesaFixaOPERADOR: TStringField;
    sqlDespesaFixaATIVO: TIntegerField;
    cdsDespesaFixaID: TLargeintField;
    cdsDespesaFixaIDCLASSECONTAS: TLargeintField;
    cdsDespesaFixaDESCRICAO: TStringField;
    cdsDespesaFixaVALOR: TFMTBCDField;
    cdsDespesaFixaORIGEM: TIntegerField;
    cdsDespesaFixaDATALANCAMENTO: TDateField;
    cdsDespesaFixaOPERADOR: TStringField;
    cdsDespesaFixaATIVO: TIntegerField;
    sqlDespesaFixaVALORCLASSECONTAS: TFMTBCDField;
    sqlDespesaFixaVALORGERAL: TFMTBCDField;
    sqlDespesaFixaQTDEREGISTRO: TIntegerField;
    cdsDespesaFixaVALORCLASSECONTAS: TFMTBCDField;
    cdsDespesaFixaVALORGERAL: TFMTBCDField;
    cdsDespesaFixaQTDEREGISTRO: TIntegerField;
    sqlListaMontarCusto: TSQLDataSet;
    dspListaMontarCusto: TDataSetProvider;
    cdsListaMontarCusto: TClientDataSet;
    dsListaMontarCusto: TDataSource;
    sqlListaMontarCustoID: TLargeintField;
    sqlListaMontarCustoIDMODELO: TLargeintField;
    sqlListaMontarCustoMODELO: TStringField;
    sqlListaMontarCustoMARKUPNOME: TStringField;
    sqlListaMontarCustoVALORDESPESAFIXA: TFMTBCDField;
    sqlListaMontarCustoVALORFICHATECNICA: TFMTBCDField;
    sqlListaMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField;
    sqlListaMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField;
    sqlListaMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField;
    sqlListaMontarCustoVALORFRETE: TFMTBCDField;
    sqlListaMontarCustoQTDEPRODUCAO: TIntegerField;
    sqlListaMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField;
    sqlListaMontarCustoCUSTOTOTALMODELO: TFMTBCDField;
    sqlListaMontarCustoALIQUOTAMARKUP: TFMTBCDField;
    sqlListaMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField;
    sqlListaMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField;
    sqlListaMontarCustoVALORVENDAAVISTA: TFMTBCDField;
    sqlListaMontarCustoDATALANCAMENTO: TDateField;
    sqlListaMontarCustoOPERADOR: TStringField;
    cdsListaMontarCustoID: TLargeintField;
    cdsListaMontarCustoIDMODELO: TLargeintField;
    cdsListaMontarCustoMODELO: TStringField;
    cdsListaMontarCustoMARKUPNOME: TStringField;
    cdsListaMontarCustoVALORDESPESAFIXA: TFMTBCDField;
    cdsListaMontarCustoVALORFICHATECNICA: TFMTBCDField;
    cdsListaMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField;
    cdsListaMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField;
    cdsListaMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField;
    cdsListaMontarCustoVALORFRETE: TFMTBCDField;
    cdsListaMontarCustoQTDEPRODUCAO: TIntegerField;
    cdsListaMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField;
    cdsListaMontarCustoCUSTOTOTALMODELO: TFMTBCDField;
    cdsListaMontarCustoALIQUOTAMARKUP: TFMTBCDField;
    cdsListaMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField;
    cdsListaMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField;
    cdsListaMontarCustoVALORVENDAAVISTA: TFMTBCDField;
    cdsListaMontarCustoDATALANCAMENTO: TDateField;
    cdsListaMontarCustoOPERADOR: TStringField;
    sqlListaTabelaPrazoMedio: TSQLDataSet;
    dspListaTabelaPrazoMedio: TDataSetProvider;
    cdsListaTabelaPrazoMedio: TClientDataSet;
    dsListaTabelaPrazoMedio: TDataSource;
    sqlListaTabelaPrazoMedioIDMONTARCUSTO: TLargeintField;
    sqlListaTabelaPrazoMedioMODELO: TStringField;
    sqlListaTabelaPrazoMedioMARKUP: TStringField;
    sqlListaTabelaPrazoMedioVALORVENDAAVISTA: TFMTBCDField;
    sqlListaTabelaPrazoMedioPRAZOMEDIO: TFMTBCDField;
    sqlListaTabelaPrazoMedioVALORVENDAPRAZOMEDIO: TFMTBCDField;
    cdsListaTabelaPrazoMedioIDMONTARCUSTO: TLargeintField;
    cdsListaTabelaPrazoMedioMODELO: TStringField;
    cdsListaTabelaPrazoMedioMARKUP: TStringField;
    cdsListaTabelaPrazoMedioVALORVENDAAVISTA: TFMTBCDField;
    cdsListaTabelaPrazoMedioPRAZOMEDIO: TFMTBCDField;
    cdsListaTabelaPrazoMedioVALORVENDAPRAZOMEDIO: TFMTBCDField;
    sqlMateriaPrima: TSQLDataSet;
    dspMateriaPrima: TDataSetProvider;
    cdsMateriaPrima: TClientDataSet;
    dsMateriaPrima: TDataSource;
    sqlMateriaPrimaID: TLargeintField;
    sqlMateriaPrimaID_MP: TIntegerField;
    sqlMateriaPrimaID_GMP: TStringField;
    sqlMateriaPrimaCOD_GMP: TStringField;
    sqlMateriaPrimaCOD_INSUMO: TStringField;
    sqlMateriaPrimaCOD_CLASSE: TStringField;
    sqlMateriaPrimaID_SUB_GRUPO_MP: TIntegerField;
    sqlMateriaPrimaID_SUB_GRUPO_PC: TIntegerField;
    sqlMateriaPrimaCST: TStringField;
    sqlMateriaPrimaNCM_SH: TStringField;
    sqlMateriaPrimaCOD_CTA: TStringField;
    sqlMateriaPrimaCOD_PF: TStringField;
    sqlMateriaPrimaDESCRICAO: TStringField;
    sqlMateriaPrimaUN: TStringField;
    sqlMateriaPrimaCOMP: TFMTBCDField;
    sqlMateriaPrimaLARG: TFMTBCDField;
    sqlMateriaPrimaESP_POL: TFMTBCDField;
    sqlMateriaPrimaDT_CADASTRO: TDateField;
    sqlMateriaPrimaQTDE: TFMTBCDField;
    sqlMateriaPrimaVL_ANTERIOR: TFMTBCDField;
    sqlMateriaPrimaVL_UNITARIO: TFMTBCDField;
    sqlMateriaPrimaEST_ANTERIOR: TFMTBCDField;
    sqlMateriaPrimaESTOQUE: TFMTBCDField;
    sqlMateriaPrimaDT_MOVIMENTO: TDateField;
    sqlMateriaPrimaMINIMO: TFMTBCDField;
    sqlMateriaPrimaMIN_COMP: TFMTBCDField;
    sqlMateriaPrimaICMS: TFMTBCDField;
    sqlMateriaPrimaIPI: TFMTBCDField;
    sqlMateriaPrimaCFL: TStringField;
    sqlMateriaPrimaTIPO_SAIDA: TStringField;
    sqlMateriaPrimaUSUARIO: TStringField;
    sqlMateriaPrimaATIVO: TStringField;
    sqlMateriaPrimaPATRIMONIO: TStringField;
    sqlMateriaPrimaCUSTO: TIntegerField;
    sqlMateriaPrimaALIQ_FRETE: TFMTBCDField;
    sqlMateriaPrimaVL_COM_IPI: TFMTBCDField;
    sqlMateriaPrimaVL_COM_IPI_FRETE: TFMTBCDField;
    sqlMateriaPrimaNOME_PRO_FORN: TStringField;
    sqlMateriaPrimaCONSUMO: TIntegerField;
    sqlMateriaPrimaPERC_DESC: TFMTBCDField;
    sqlMateriaPrimaVL_LIQUIDO: TFMTBCDField;
    sqlMateriaPrimaCOMP_INIC: TFMTBCDField;
    sqlMateriaPrimaLARG_INIC: TFMTBCDField;
    sqlMateriaPrimaQTDE_PILHA: TIntegerField;
    sqlMateriaPrimaNUM_PILHA: TIntegerField;
    sqlMateriaPrimaCRITICIDADE: TIntegerField;
    sqlMateriaPrimaPRANCHA: TStringField;
    sqlMateriaPrimaNARRATIVA: TStringField;
    sqlMateriaPrimaLADO: TStringField;
    sqlMateriaPrimaINS_PECA: TStringField;
    sqlMateriaPrimaSTATUS: TIntegerField;
    cdsMateriaPrimaID: TLargeintField;
    cdsMateriaPrimaID_MP: TIntegerField;
    cdsMateriaPrimaID_GMP: TStringField;
    cdsMateriaPrimaCOD_GMP: TStringField;
    cdsMateriaPrimaCOD_INSUMO: TStringField;
    cdsMateriaPrimaCOD_CLASSE: TStringField;
    cdsMateriaPrimaID_SUB_GRUPO_MP: TIntegerField;
    cdsMateriaPrimaID_SUB_GRUPO_PC: TIntegerField;
    cdsMateriaPrimaCST: TStringField;
    cdsMateriaPrimaNCM_SH: TStringField;
    cdsMateriaPrimaCOD_CTA: TStringField;
    cdsMateriaPrimaCOD_PF: TStringField;
    cdsMateriaPrimaDESCRICAO: TStringField;
    cdsMateriaPrimaUN: TStringField;
    cdsMateriaPrimaCOMP: TFMTBCDField;
    cdsMateriaPrimaLARG: TFMTBCDField;
    cdsMateriaPrimaESP_POL: TFMTBCDField;
    cdsMateriaPrimaDT_CADASTRO: TDateField;
    cdsMateriaPrimaQTDE: TFMTBCDField;
    cdsMateriaPrimaVL_ANTERIOR: TFMTBCDField;
    cdsMateriaPrimaVL_UNITARIO: TFMTBCDField;
    cdsMateriaPrimaEST_ANTERIOR: TFMTBCDField;
    cdsMateriaPrimaESTOQUE: TFMTBCDField;
    cdsMateriaPrimaDT_MOVIMENTO: TDateField;
    cdsMateriaPrimaMINIMO: TFMTBCDField;
    cdsMateriaPrimaMIN_COMP: TFMTBCDField;
    cdsMateriaPrimaICMS: TFMTBCDField;
    cdsMateriaPrimaIPI: TFMTBCDField;
    cdsMateriaPrimaCFL: TStringField;
    cdsMateriaPrimaTIPO_SAIDA: TStringField;
    cdsMateriaPrimaUSUARIO: TStringField;
    cdsMateriaPrimaATIVO: TStringField;
    cdsMateriaPrimaPATRIMONIO: TStringField;
    cdsMateriaPrimaCUSTO: TIntegerField;
    cdsMateriaPrimaALIQ_FRETE: TFMTBCDField;
    cdsMateriaPrimaVL_COM_IPI: TFMTBCDField;
    cdsMateriaPrimaVL_COM_IPI_FRETE: TFMTBCDField;
    cdsMateriaPrimaNOME_PRO_FORN: TStringField;
    cdsMateriaPrimaCONSUMO: TIntegerField;
    cdsMateriaPrimaPERC_DESC: TFMTBCDField;
    cdsMateriaPrimaVL_LIQUIDO: TFMTBCDField;
    cdsMateriaPrimaCOMP_INIC: TFMTBCDField;
    cdsMateriaPrimaLARG_INIC: TFMTBCDField;
    cdsMateriaPrimaQTDE_PILHA: TIntegerField;
    cdsMateriaPrimaNUM_PILHA: TIntegerField;
    cdsMateriaPrimaCRITICIDADE: TIntegerField;
    cdsMateriaPrimaPRANCHA: TStringField;
    cdsMateriaPrimaNARRATIVA: TStringField;
    cdsMateriaPrimaLADO: TStringField;
    cdsMateriaPrimaINS_PECA: TStringField;
    cdsMateriaPrimaSTATUS: TIntegerField;
    FDConexao: TFDConnection;
    FDQueryLucroPedido: TFDQuery;
    dsLucroPedido: TDataSource;
    sqlMontarCustoALIQUOTAMARKUPSEMLUCRO: TFMTBCDField;
    sqlMontarCustoVALORCUSTOMARKUP: TFMTBCDField;
    sqlMontarCustoVALORCUSTOCOMMARKUP: TFMTBCDField;
    cdsMontarCustoALIQUOTAMARKUPSEMLUCRO: TFMTBCDField;
    cdsMontarCustoVALORCUSTOMARKUP: TFMTBCDField;
    cdsMontarCustoVALORCUSTOCOMMARKUP: TFMTBCDField;
    sqlMontarCustoVALORLUCROREAL: TFMTBCDField;
    cdsMontarCustoVALORLUCROREAL: TFMTBCDField;
    FDQueryLucroPedidoID: TLargeintField;
    FDQueryLucroPedidoIDPEDIDO: TLargeintField;
    FDQueryLucroPedidoIDPESSOA: TLargeintField;
    FDQueryLucroPedidoNOMEPESSOA: TStringField;
    FDQueryLucroPedidoREGIAO: TStringField;
    FDQueryLucroPedidoTELEFONE: TStringField;
    FDQueryLucroPedidoDATAPEDIDO: TDateField;
    FDQueryLucroPedidoVALORPEDIDO: TFMTBCDField;
    FDQueryLucroPedidoTOTALCUSTOSEMMARKUP: TFMTBCDField;
    FDQueryLucroPedidoCUSTOMARKUP: TFMTBCDField;
    FDQueryLucroPedidoTOTALCUSTOCOMMARKUP: TFMTBCDField;
    FDQueryLucroPedidoDIFERENCAPEDIDO: TFMTBCDField;
    FDQueryLucroPedidoIDPRODUTO: TLargeintField;
    FDQueryLucroPedidoNOMEPRODUTO: TStringField;
    FDQueryLucroPedidoVALORCUSTOUNITARIO: TFMTBCDField;
    FDQueryLucroPedidoVALORCUSTOUNITARIOMARKUP: TFMTBCDField;
    FDQueryLucroPedidoVALORCUSTOUNITARIOMAISMARKUP: TFMTBCDField;
    FDQueryLucroPedidoVALORUNITARIOVENDIDO: TFMTBCDField;
    FDQueryLucroPedidoQTDE: TFMTBCDField;
    FDQueryLucroPedidoCUSTOITENSSEMMARKUP: TFMTBCDField;
    FDQueryLucroPedidoCUSTOITENSMARKUP: TFMTBCDField;
    FDQueryLucroPedidoCUSTOITENSCOMMARKUP: TFMTBCDField;
    FDQueryLucroPedidoSUBTOTALITENS: TFMTBCDField;
    FDQueryLucroPedidoDIFERENCAITENS: TFMTBCDField;
    FDQueryLucroPedidoALIQUOTAFINAL: TBCDField;
    FDQueryLucroPedidoALIQUOTAITEM: TBCDField;
    sqlMontarCustoIDREGIAO: TLargeintField;
    sqlMontarCustoNOMEREGIAO: TStringField;
    cdsMontarCustoIDREGIAO: TLargeintField;
    cdsMontarCustoNOMEREGIAO: TStringField;
    sqlModeloProdutoItemIDPRODUTO: TIntegerField;
    cdsModeloProdutoItemIDPRODUTO: TIntegerField;
    sqlListaModeloProdutoIDPRODUTO: TIntegerField;
    cdsListaModeloProdutoIDPRODUTO: TIntegerField;
    sqlListaMontarCustoIDREGIAO: TLargeintField;
    cdsListaMontarCustoIDREGIAO: TLargeintField;
    FDQuery1: TFDQuery;
    FDMemTable1: TFDMemTable;
    procedure sqlConexaoBeforeConnect(Sender: TObject);
    procedure dspFichaTecnicaItemBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dspFichaTecnicaBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspFichaTecnicaItemGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: string);
    procedure dspFichaTecnicaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspSetorBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspSetorGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspLocalBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspLocalGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspSetorLocalBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspSetorLocalGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspProducaoMaoObra1GetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspModeloBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspModeloGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspProducaoItemBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspProducaoItemGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: string);
    procedure dspProducaoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspProducaoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspMontarCustoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspMontarCustoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspMarkupNomeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspMarkupNomeGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspAliquotaNomeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspAliquotaNomeGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspAliquotaGrupoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure dspModeloProdutoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspModeloProdutoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspModeloProdutoItemBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspModeloProdutoItemGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: string);
    procedure dspDespesaFixaBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspDespesaFixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure dspAliquotaGrupoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure FDConexaoBeforeConnect(Sender: TObject);
    procedure cdsMontarCustoAfterScroll(DataSet: TDataSet);
  private
    FClasseUteis    : TClasseUteis;
    FController     : iController;
    FEntidadeConfig : TEntidadeConfig;
    FReplicarMontarCusto : TReplicarMontarCusto;

    procedure ConfifurarConexaoFDConnection;
    { Private declarations }
  public

    Alterar: Boolean;
    IdParans: Integer;

  const
    cMSGImpressao = 'Não existe registro(s) a serem impresso(s)!';
    cMSGRegistroNaoEncontrado = 'Registro não encontrado, favor tentar outro filtro!';
    cMSGAlterar = 'Para alterar o registro, antes filtro o mesmo!';
    cMSFExcluirSim = 'Registro excluído com sucesso!';
    cMSGNaoExcluir = 'Registro não será excluído por opção do Usuário!';
    procedure FecharQuery;
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;
  TD: TTransactionDesc;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmPrincipal.cdsMontarCustoAfterScroll(DataSet: TDataSet);
begin
  if cdsMontarCusto.FieldByName('id').AsInteger>0 then
  begin
    FReplicarMontarCusto.IdModelo :=cdsMontarCusto.FieldByName('idModelo').AsInteger;
    FReplicarMontarCusto.ListaTabelaPrazoMedio;
  end;
end;

procedure TdmPrincipal.ConfifurarConexaoFDConnection;
begin
  FEntidadeConfig := TEntidadeConfig.Create;
  FEntidadeConfig.ConfiguracaoBasedeDados;

  fdConexao.Connected := False;
  fdConexao.Close;
  fdConexao.DriverName                 := FEntidadeConfig.DriverId;
  fdConexao.Params.Values['Database']  := FEntidadeConfig.DiretorioBaseDados;
  fdConexao.Params.Values['User_Name'] := FEntidadeConfig.UserName;
  fdConexao.Params.Values['Password']  := FEntidadeConfig.Password;
  fdConexao.Params.Values['Server']    := FEntidadeConfig.NomeServidor;
  fdConexao.Params.Values['Port']      := FEntidadeConfig.PortaBaseDados;
  fdConexao.Params.Values['VendorLib'] := FEntidadeConfig.VendorLib;
end;


procedure TdmPrincipal.FDConexaoBeforeConnect(Sender: TObject);
begin
  ConfifurarConexaoFDConnection;
end;

procedure TdmPrincipal.FecharQuery;
begin
  sqlEmpresa.Active := False;
  cdsEmpresa.Active := False;

  sqlDespesaFixa.Active := False;
  cdsDespesaFixa.Active := False;

  sqlModelo.Active := False;
  cdsModelo.Active := False;

  sqlMarkupNome.Active := False;
  cdsMarkupNome.Active := False;

  sqlAliquotaNome.Active := False;
  cdsAliquotaNome.Active := False;

  sqlAliquotaGrupo.Active := False;
  cdsAliquotaGrupo.Active := False;

  sqlMateriaPrima.Active := False;
  cdsMateriaPrima.Active := False;

  sqlFichaTecnica.Active := False;
  cdsFichaTecnica.Active := False;

  sqlFichaTecnicaItem.Active := False;
  cdsFichaTecnicaItem.Active := False;

  sqlListaFichaTecnica.Active := False;
  cdsListaFichaTecnica.Active := False;

  sqlListaMontarCusto.Active := False;
  cdsListaMontarCusto.Active := False;

  sqlListaTabelaPrazoMedio.Active := False;
  cdsListaTabelaPrazoMedio.Active := False;

  sqlModeloProduto.Active := False;
  cdsModeloProduto.Active := False;

  sqlModeloProdutoItem.Active := False;
  cdsModeloProdutoItem.Active := False;

  sqlSetor.Active := False;
  cdsSetor.Active := False;

  sqlLocal.Active := False;
  cdsLocal.Active := False;

  sqlSetorLocal.Active := False;
  cdsSetorLocal.Active := False;

  sqlProducao.Active := False;
  cdsProducao.Active := False;

  sqlProducaoItem.Active := False;
  cdsProducaoItem.Active := False;

  sqlListaProducao.Active := False;
  cdsListaProducao.Active := False;

  sqlMontarCusto.Active := False;
  cdsMontarCusto.Active := False;

  sqlListaModeloProduto.Active := False;
  cdsListaModeloProduto.Active := False;
end;

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  FController := TController.New;
  FReplicarMontarCusto := TReplicarMontarCusto.Create;
  FecharQuery;
end;

procedure TdmPrincipal.DataModuleDestroy(Sender: TObject);
begin
  FreeANdNil(FClasseUteis);
  FreeAndNil(FEntidadeConfig);
  FreeAndNil(FReplicarMontarCusto);
end;

procedure TdmPrincipal.dspProducaoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  if UpdateKind in [UkInsert] then
  begin
    queryAuxiliar.Active := False;
    queryAuxiliar.SQL.Clear;
    queryAuxiliar.SQL.Text := 'select gen_id(GEN_PRODUCAO_ID,1) from rdb$database';
    queryAuxiliar.Active := True;

    DeltaDS.FieldByName('ID').NewValue := queryAuxiliar.FieldByName('GEN_ID').AsInteger;
    dmPrincipal.IdParans := DeltaDS.FieldByName('ID').NewValue;

    sqlProducao.Params.ParamValues['ID'] := queryAuxiliar.FieldByName('GEN_ID').AsInteger;

    queryAuxiliar.Active := False;
  end;
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('DESCRICAO').ProviderFlags := [];
  DeltaDS.FieldByName('ALIQUOTAINTERNA').ProviderFlags := [];
  DeltaDS.FieldByName('ALIQUOTAEXTERNA').ProviderFlags := [];
end;

procedure TdmPrincipal.dspProducaoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUCAO';
end;

procedure TdmPrincipal.dspAliquotaGrupoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('MARKUPNOME').ProviderFlags := [];
  DeltaDS.FieldByName('ALIQUOTANOME').ProviderFlags := [];
end;

procedure TdmPrincipal.dspAliquotaGrupoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'ALIQUOTAGRUPO';
end;

procedure TdmPrincipal.dspAliquotaNomeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmPrincipal.dspAliquotaNomeGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'ALIQUOTANOME';
end;

procedure TdmPrincipal.dspDespesaFixaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('DESCRICAO').ProviderFlags := [];
  DeltaDS.FieldByName('VALORCLASSECONTAS').ProviderFlags := [];
  DeltaDS.FieldByName('VALORGERAL').ProviderFlags := [];
  DeltaDS.FieldByName('QTDEREGISTRO').ProviderFlags := [];
end;

procedure TdmPrincipal.dspDespesaFixaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'DESPESAFIXA';
end;

procedure TdmPrincipal.dspFichaTecnicaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  if UpdateKind in [UkInsert] then
  begin
    queryAuxiliar.Active := False;
    queryAuxiliar.SQL.Clear;
    queryAuxiliar.SQL.Text := 'select gen_id(GEN_FICHATECNICA_ID,1) from rdb$database';
    queryAuxiliar.Active := True;

    DeltaDS.FieldByName('ID').NewValue := queryAuxiliar.FieldByName('GEN_ID').AsInteger;
    dmPrincipal.IdParans := DeltaDS.FieldByName('ID').NewValue;

    sqlFichaTecnica.Params.ParamValues['ID'] := queryAuxiliar.FieldByName('GEN_ID').AsInteger;

    queryAuxiliar.Active := False;
  end;
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('DESCRICAO').ProviderFlags := [];
end;

procedure TdmPrincipal.dspFichaTecnicaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'FICHATECNICA';
end;

procedure TdmPrincipal.dspFichaTecnicaItemBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('DESCRICAO').ProviderFlags := [];
  DeltaDS.FieldByName('UN').ProviderFlags := [];

  if ((dmPrincipal.Alterar = False) and (UpdateKind in [UkInsert])) then
    DeltaDS.FieldByName('IDFICHATECNICA').NewValue := sqlFichaTecnica.ParamByname('ID').AsString;
end;

procedure TdmPrincipal.dspFichaTecnicaItemGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'FICHATECNICAITEM';
end;

procedure TdmPrincipal.dspLocalBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmPrincipal.dspLocalGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  TableName := 'LOCAL';
end;

procedure TdmPrincipal.dspMarkupNomeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('REGIAO').ProviderFlags := [];
  DeltaDS.FieldByName('QTDEREGISTRO').ProviderFlags := [];
end;

procedure TdmPrincipal.dspMarkupNomeGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'MARKUPNOME';
end;

procedure TdmPrincipal.dspModeloBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmPrincipal.dspModeloGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  TableName := 'MODELO';
end;

procedure TdmPrincipal.dspModeloProdutoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  if UpdateKind in [UkInsert] then
  begin
    queryAuxiliar.Active := False;
    queryAuxiliar.SQL.Clear;
    queryAuxiliar.SQL.Text := 'select gen_id(GEN_MODELOPRODUTO_ID,1) from rdb$database';
    queryAuxiliar.Active := True;

    DeltaDS.FieldByName('ID').NewValue := queryAuxiliar.FieldByName('GEN_ID').AsInteger;
    dmPrincipal.IdParans := DeltaDS.FieldByName('ID').NewValue;

    sqlModeloProduto.Params.ParamValues['ID'] := queryAuxiliar.FieldByName('GEN_ID').AsInteger;

    queryAuxiliar.Active := False;
  end;

  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('MODELO').ProviderFlags := [];
end;

procedure TdmPrincipal.dspModeloProdutoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'MODELOPRODUTO';
end;

procedure TdmPrincipal.dspModeloProdutoItemBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  if ((dmPrincipal.Alterar = False) and (UpdateKind in [UkInsert])) then
    DeltaDS.FieldByName('IDModeloProduto').NewValue := sqlModeloProduto.ParamByname('ID').AsString;

  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('PRODUTO').ProviderFlags := [];
end;

procedure TdmPrincipal.dspModeloProdutoItemGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'MODELOPRODUTOITEM';
end;

procedure TdmPrincipal.dspMontarCustoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('DESCRICAO').ProviderFlags := [];
  DeltaDS.FieldByName('NOMEREGIAO').ProviderFlags := [];
end;

procedure TdmPrincipal.dspMontarCustoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'MONTARCUSTO';
end;

procedure TdmPrincipal.dspProducaoMaoObra1GetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUCAO';
end;

procedure TdmPrincipal.dspProducaoItemBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('IDSETORLOCAL').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
  DeltaDS.FieldByName('DESCRICAO').ProviderFlags := [];

  if ((dmPrincipal.Alterar = False) and (UpdateKind in [UkInsert])) then
    DeltaDS.FieldByName('IDPRODUCAO').NewValue := sqlProducao.ParamByname('ID').AsString;
end;

procedure TdmPrincipal.dspProducaoItemGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'PRODUCAOITEM';
end;

procedure TdmPrincipal.dspSetorBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmPrincipal.dspSetorGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: string);
begin
  TableName := 'SETOR';
end;

procedure TdmPrincipal.dspSetorLocalBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  DeltaDS.FieldByName('ID').ProviderFlags := [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmPrincipal.dspSetorLocalGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'SETORLOCAL';
end;

procedure TdmPrincipal.sqlConexaoBeforeConnect(Sender: TObject);
begin
  if not Assigned(FClasseUteis) then
    FClasseUteis := TClasseUteis.Create;

  If FClasseUteis.Servidor = 'SIM' Then
  Begin
    sqlConexao.Connected := False;
    sqlConexao.ConnectionName := 'SICIC3.0';
    sqlConexao.Params.Values['DATABASE'] := FClasseUteis.NomeServidor + ':' + FClasseUteis.DiretorioBase;
  End;

  If FClasseUteis.Cliente = 'SIM' Then
  Begin
    sqlConexao.Connected := False;
    sqlConexao.ConnectionName := 'SICIC3.0';
    sqlConexao.Params.Values['DATABASE'] := FClasseUteis.DiretorioServidor;
  End;
end;

end.
