object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 828
  Width = 1094
  object sqlConexao: TSQLConnection
    ConnectionName = 'sicic3.0'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver230.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=23.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver230.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=23.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=C:\RedeInfocon\BeMoreWeb\Executaveis\Supremo\Fdb\MegaBo' +
        'ats \SICIC3.0.FDB'
      'User_Name=sicic3.0'
      'Password=delphi'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    BeforeConnect = sqlConexaoBeforeConnect
    Connected = True
    Left = 32
    Top = 8
  end
  object sqlFichaTecnicaItem: TSQLDataSet
    CommandText = 
      'select'#13#10'  fti.id,'#13#10'  fti.idfichatecnica,'#13#10'  fti.idmateriaprima,'#13 +
      #10'  mp.descricao,'#13#10'  mp.un,'#13#10'  fti.valorunitario,'#13#10'  fti.qtde,'#13#10' ' +
      ' fti.perda,'#13#10'  fti.subtotal,'#13#10'  fti.valorperda,'#13#10'  fti.valorfina' +
      'l'#13#10'from FichaTecnicaItem fti'#13#10'inner join cad_gmp mp on mp.id_mp ' +
      '= fti.idmateriaprima'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 119
    Top = 202
    object sqlFichaTecnicaItemID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlFichaTecnicaItemIDFICHATECNICA: TLargeintField
      FieldName = 'IDFICHATECNICA'
    end
    object sqlFichaTecnicaItemIDMATERIAPRIMA: TLargeintField
      FieldName = 'IDMATERIAPRIMA'
      Required = True
    end
    object sqlFichaTecnicaItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object sqlFichaTecnicaItemUN: TStringField
      FieldName = 'UN'
      ProviderFlags = []
      Size = 3
    end
    object sqlFichaTecnicaItemVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object sqlFichaTecnicaItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      Precision = 18
      Size = 6
    end
    object sqlFichaTecnicaItemPERDA: TFMTBCDField
      FieldName = 'PERDA'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object sqlFichaTecnicaItemSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object sqlFichaTecnicaItemVALORPERDA: TFMTBCDField
      FieldName = 'VALORPERDA'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object sqlFichaTecnicaItemVALORFINAL: TFMTBCDField
      FieldName = 'VALORFINAL'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
  end
  object dspFichaTecnicaItem: TDataSetProvider
    DataSet = sqlFichaTecnicaItem
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspFichaTecnicaItemBeforeUpdateRecord
    OnGetTableName = dspFichaTecnicaItemGetTableName
    Left = 119
    Top = 250
  end
  object cdsFichaTecnicaItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnicaItem'
    Left = 119
    Top = 298
    object cdsFichaTecnicaItemID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaItemIDFICHATECNICA: TLargeintField
      FieldName = 'IDFICHATECNICA'
    end
    object cdsFichaTecnicaItemIDMATERIAPRIMA: TLargeintField
      FieldName = 'IDMATERIAPRIMA'
      Required = True
    end
    object cdsFichaTecnicaItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsFichaTecnicaItemUN: TStringField
      FieldName = 'UN'
      ProviderFlags = []
      Required = True
      Size = 3
    end
    object cdsFichaTecnicaItemVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsFichaTecnicaItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '#,##0.000000'
      EditFormat = '#,##0.000000'
      Precision = 18
      Size = 6
    end
    object cdsFichaTecnicaItemPERDA: TFMTBCDField
      FieldName = 'PERDA'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsFichaTecnicaItemSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsFichaTecnicaItemVALORPERDA: TFMTBCDField
      FieldName = 'VALORPERDA'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsFichaTecnicaItemVALORFINAL: TFMTBCDField
      FieldName = 'VALORFINAL'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
  end
  object sqlFichaTecnica: TSQLDataSet
    CommandText = 
      'select'#13#10'  ft.Id,'#13#10'  ft.IdModelo,'#13#10'  m.descricao, '#13#10'  ft.ValorPer' +
      'da,'#13#10'  ft.ValorFinal,'#13#10'  ft.QtdeProducao,'#13#10'  ft.Operador,'#13#10'  ft.' +
      'DataLancamento,'#13#10'  ft.Status,'#13#10'  ft.Ativo'#13#10'from FichaTecnica ft'#13 +
      #10'inner join Modelo m on m.id = ft.idmodelo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 29
    Top = 202
    object sqlFichaTecnicaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlFichaTecnicaIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlFichaTecnicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object sqlFichaTecnicaVALORPERDA: TFMTBCDField
      FieldName = 'VALORPERDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlFichaTecnicaVALORFINAL: TFMTBCDField
      FieldName = 'VALORFINAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlFichaTecnicaQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object sqlFichaTecnicaOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlFichaTecnicaDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlFichaTecnicaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlFichaTecnicaATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sqlFichaTecnica
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspFichaTecnicaBeforeUpdateRecord
    OnGetTableName = dspFichaTecnicaGetTableName
    Left = 29
    Top = 250
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 29
    Top = 298
    object cdsFichaTecnicaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaTecnicaIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsFichaTecnicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsFichaTecnicaVALORPERDA: TFMTBCDField
      FieldName = 'VALORPERDA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsFichaTecnicaVALORFINAL: TFMTBCDField
      FieldName = 'VALORFINAL'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsFichaTecnicaQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object cdsFichaTecnicaOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsFichaTecnicaDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object cdsFichaTecnicaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsFichaTecnicaATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object sqlSetor: TSQLDataSet
    CommandText = 'select * from Setor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 64
    Top = 456
    object sqlSetorID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlSetorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object sqlSetorVALORGASTO: TFMTBCDField
      FieldName = 'VALORGASTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlSetorALIQUOTAFRETE: TFMTBCDField
      FieldName = 'ALIQUOTAFRETE'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlSetorDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlSetorOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlSetorSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlSetorATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspSetor: TDataSetProvider
    DataSet = sqlSetor
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspSetorBeforeUpdateRecord
    OnGetTableName = dspSetorGetTableName
    Left = 64
    Top = 504
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    Left = 64
    Top = 552
    object cdsSetorID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object cdsSetorVALORGASTO: TFMTBCDField
      FieldName = 'VALORGASTO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsSetorALIQUOTAFRETE: TFMTBCDField
      FieldName = 'ALIQUOTAFRETE'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsSetorDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsSetorOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsSetorSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsSetorATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object sqlLocal: TSQLDataSet
    CommandText = 'select * from local'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 136
    Top = 456
    object sqlLocalID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlLocalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object sqlLocalDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlLocalOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlLocalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlLocalATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspLocal: TDataSetProvider
    DataSet = sqlLocal
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspLocalBeforeUpdateRecord
    OnGetTableName = dspLocalGetTableName
    Left = 136
    Top = 504
  end
  object cdsLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocal'
    Left = 136
    Top = 552
    object cdsLocalID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsLocalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object cdsLocalDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsLocalOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsLocalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsLocalATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object sqlSetorLocal: TSQLDataSet
    CommandText = 'select * from SetorLocal'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 208
    Top = 456
    object sqlSetorLocalID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlSetorLocalIDSETOR: TLargeintField
      FieldName = 'IDSETOR'
      Required = True
    end
    object sqlSetorLocalIDLOCAL: TLargeintField
      FieldName = 'IDLOCAL'
      Required = True
    end
    object sqlSetorLocalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object sqlSetorLocalDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlSetorLocalOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlSetorLocalCALCULARVALORAJUSTADO: TIntegerField
      FieldName = 'CALCULARVALORAJUSTADO'
      Required = True
    end
    object sqlSetorLocalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlSetorLocalATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspSetorLocal: TDataSetProvider
    DataSet = sqlSetorLocal
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspSetorLocalBeforeUpdateRecord
    OnGetTableName = dspSetorLocalGetTableName
    Left = 208
    Top = 504
  end
  object cdsSetorLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetorLocal'
    Left = 208
    Top = 552
    object cdsSetorLocalID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetorLocalIDSETOR: TLargeintField
      FieldName = 'IDSETOR'
      Required = True
    end
    object cdsSetorLocalIDLOCAL: TLargeintField
      FieldName = 'IDLOCAL'
      Required = True
    end
    object cdsSetorLocalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object cdsSetorLocalDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsSetorLocalOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsSetorLocalSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsSetorLocalATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object cdsSetorLocalCALCULARVALORAJUSTADO: TIntegerField
      FieldName = 'CALCULARVALORAJUSTADO'
      Required = True
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 64
    Top = 608
  end
  object dsLocal: TDataSource
    DataSet = cdsLocal
    Left = 136
    Top = 608
  end
  object sqlModelo: TSQLDataSet
    CommandText = 
      'select'#13#10'    m.Id,'#13#10'    m.Descricao,'#13#10'    m.QtdeProducao,'#13#10'    m.' +
      'Operador,'#13#10'    m.DataLancamento,'#13#10'    m.Status,'#13#10'    m.Ativo,'#13#10' ' +
      '   m.AliquotaInterna,'#13#10'    m.AliquotaExterna,'#13#10'    '#13#10'    ('#13#10'    ' +
      ' select'#13#10'       count(*) QtdeRegistro'#13#10'     from Modelo'#13#10'    )'#13#10 +
      '    from modelo m'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 432
    Top = 8
    object sqlModeloID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlModeloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object sqlModeloQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object sqlModeloOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlModeloDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlModeloSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlModeloATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object sqlModeloQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object sqlModeloALIQUOTAINTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAINTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlModeloALIQUOTAEXTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAEXTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dspModelo: TDataSetProvider
    DataSet = sqlModelo
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspModeloBeforeUpdateRecord
    OnGetTableName = dspModeloGetTableName
    Left = 432
    Top = 56
  end
  object cdsModelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModelo'
    Left = 432
    Top = 104
    object cdsModeloID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsModeloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object cdsModeloQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object cdsModeloOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsModeloDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object cdsModeloSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsModeloATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object cdsModeloQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object cdsModeloALIQUOTAINTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAINTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsModeloALIQUOTAEXTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAEXTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsModelo: TDataSource
    DataSet = cdsModelo
    Left = 432
    Top = 152
  end
  object dsSetorLocal: TDataSource
    DataSet = cdsSetorLocal
    Left = 208
    Top = 607
  end
  object sqlProducaoItem: TSQLDataSet
    CommandText = 
      'select'#13#10'  ProItem.id,'#13#10'  ProItem.IdProducao,'#13#10'  ProItem.idsetorl' +
      'ocal,'#13#10'  sl.descricao,'#13#10'  ProItem.qtdeproducao,'#13#10'  ProItem.valor' +
      'frete,'#13#10'  ProItem.valormaoobra,'#13#10'  ProItem.valorajustado,'#13#10'  Pro' +
      'Item.valorcusto'#13#10'from ProducaoItem ProItem'#13#10'inner join setorloca' +
      'l sl on sl.id = ProItem.idsetorlocal'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 372
    Top = 456
    object sqlProducaoItemID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlProducaoItemIDPRODUCAO: TLargeintField
      FieldName = 'IDPRODUCAO'
      Required = True
    end
    object sqlProducaoItemIDSETORLOCAL: TLargeintField
      FieldName = 'IDSETORLOCAL'
      Required = True
    end
    object sqlProducaoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 30
    end
    object sqlProducaoItemQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
    end
    object sqlProducaoItemVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object sqlProducaoItemVALORMAOOBRA: TFMTBCDField
      FieldName = 'VALORMAOOBRA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object sqlProducaoItemVALORAJUSTADO: TFMTBCDField
      FieldName = 'VALORAJUSTADO'
      Precision = 18
      Size = 2
    end
    object sqlProducaoItemVALORCUSTO: TFMTBCDField
      FieldName = 'VALORCUSTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspProducaoItem: TDataSetProvider
    DataSet = sqlProducaoItem
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspProducaoItemBeforeUpdateRecord
    OnGetTableName = dspProducaoItemGetTableName
    Left = 372
    Top = 504
  end
  object cdsProducaoItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProducaoItem'
    Left = 372
    Top = 552
    object cdsProducaoItemID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsProducaoItemIDPRODUCAO: TLargeintField
      FieldName = 'IDPRODUCAO'
      Required = True
    end
    object cdsProducaoItemIDSETORLOCAL: TLargeintField
      FieldName = 'IDSETORLOCAL'
      Required = True
    end
    object cdsProducaoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 30
    end
    object cdsProducaoItemQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
    end
    object cdsProducaoItemVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoItemVALORMAOOBRA: TFMTBCDField
      FieldName = 'VALORMAOOBRA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoItemVALORAJUSTADO: TFMTBCDField
      FieldName = 'VALORAJUSTADO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoItemVALORCUSTO: TFMTBCDField
      FieldName = 'VALORCUSTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsProducaoItem: TDataSource
    DataSet = cdsProducaoItem
    Left = 372
    Top = 605
  end
  object queryAuxiliar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 32
    Top = 56
  end
  object sqlProducao: TSQLDataSet
    CommandText = 
      'select'#13#10' p.id,'#13#10' p.idmodelo,'#13#10' m.descricao,'#13#10' m.AliquotaInterna,' +
      #13#10' m.AliquotaExterna, '#13#10' p.qtdeproducao,'#13#10' p.valorfrete,'#13#10' p.val' +
      'ormaoobra,'#13#10' p.ValorAjustado,'#13#10' p.valorcusto,'#13#10' p.datalancamento' +
      ','#13#10' p.operador,'#13#10' p.status,'#13#10' p.ativo'#13#10'from Producao p'#13#10'inner jo' +
      'in Modelo m on m.id = p.idmodelo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 296
    Top = 456
    object sqlProducaoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlProducaoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlProducaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object sqlProducaoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
    end
    object sqlProducaoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Precision = 18
      Size = 2
    end
    object sqlProducaoVALORMAOOBRA: TFMTBCDField
      FieldName = 'VALORMAOOBRA'
      Precision = 18
      Size = 2
    end
    object sqlProducaoVALORAJUSTADO: TFMTBCDField
      FieldName = 'VALORAJUSTADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlProducaoVALORCUSTO: TFMTBCDField
      FieldName = 'VALORCUSTO'
      Precision = 18
      Size = 2
    end
    object sqlProducaoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
    end
    object sqlProducaoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlProducaoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlProducaoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object sqlProducaoALIQUOTAINTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAINTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlProducaoALIQUOTAEXTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAEXTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dspProducao: TDataSetProvider
    DataSet = sqlProducao
    BeforeUpdateRecord = dspProducaoBeforeUpdateRecord
    OnGetTableName = dspProducaoGetTableName
    Left = 296
    Top = 504
  end
  object cdsProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProducao'
    Left = 296
    Top = 552
    object cdsProducaoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsProducaoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsProducaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object cdsProducaoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
    end
    object cdsProducaoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoVALORMAOOBRA: TFMTBCDField
      FieldName = 'VALORMAOOBRA'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoVALORAJUSTADO: TFMTBCDField
      FieldName = 'VALORAJUSTADO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoVALORCUSTO: TFMTBCDField
      FieldName = 'VALORCUSTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
    end
    object cdsProducaoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsProducaoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsProducaoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object cdsProducaoALIQUOTAINTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAINTERNA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProducaoALIQUOTAEXTERNA: TFMTBCDField
      FieldName = 'ALIQUOTAEXTERNA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsFichaTecnicaItem: TDataSource
    DataSet = cdsFichaTecnicaItem
    Left = 119
    Top = 346
  end
  object sqlMontarCusto: TSQLDataSet
    CommandText = 
      'select'#13#10'   mc.ID,'#13#10'   mc.IdModelo,'#13#10'   mc.IdRegiao,'#13#10'   m.Descri' +
      'cao,'#13#10'   mn.Descricao NomeRegiao,'#13#10'   mc.ValorDespesaFixa,'#13#10'   m' +
      'c.ValorFichaTecnica,'#13#10'   mc.ValorMaoObraInterna,'#13#10'   mc.ValorMao' +
      'ObraExterna,'#13#10'   mc.ValorMaoObraAjustado,'#13#10'   mc.ValorFrete,'#13#10'  ' +
      ' mc.QtdeProducao,'#13#10'   mc.CustoModeloDespesaFixa,'#13#10'   mc.CustoTot' +
      'alModelo,'#13#10'   mc.AliquotaMarkup,'#13#10'   mc.AliquotaMarkupSemLucro,'#13 +
      #10'   mc.ValorCustoMarkup,'#13#10'   mc.ValorCustoComMarkup,'#13#10'   mc.Indi' +
      'ceaVistaMultiplicar,'#13#10'   mc.IndiceaVistaDividir,'#13#10'   mc.ValorVen' +
      'daaVista,'#13#10'   mc.ValorLucroReal,'#13#10'   mc.DataLancamento,'#13#10'   mc.O' +
      'perador,'#13#10'   mc.Status,'#13#10'   mc.Ativo'#13#10'from MontarCusto mc'#13#10'inner' +
      ' join Modelo      m on m.id  = mc.idmodelo'#13#10'inner join MarkupNom' +
      'e mn on mn.idregiao = mc.idregiao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 592
    Top = 448
    object sqlMontarCustoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlMontarCustoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlMontarCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object sqlMontarCustoIDREGIAO: TLargeintField
      FieldName = 'IDREGIAO'
      Required = True
    end
    object sqlMontarCustoNOMEREGIAO: TStringField
      FieldName = 'NOMEREGIAO'
      Required = True
      Size = 40
    end
    object sqlMontarCustoVALORDESPESAFIXA: TFMTBCDField
      FieldName = 'VALORDESPESAFIXA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORFICHATECNICA: TFMTBCDField
      FieldName = 'VALORFICHATECNICA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAINTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAEXTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField
      FieldName = 'VALORMAOOBRAAJUSTADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object sqlMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField
      FieldName = 'CUSTOMODELODESPESAFIXA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoCUSTOTOTALMODELO: TFMTBCDField
      FieldName = 'CUSTOTOTALMODELO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoALIQUOTAMARKUP: TFMTBCDField
      FieldName = 'ALIQUOTAMARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoALIQUOTAMARKUPSEMLUCRO: TFMTBCDField
      FieldName = 'ALIQUOTAMARKUPSEMLUCRO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORCUSTOMARKUP: TFMTBCDField
      FieldName = 'VALORCUSTOMARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORCUSTOCOMMARKUP: TFMTBCDField
      FieldName = 'VALORCUSTOCOMMARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField
      FieldName = 'INDICEAVISTAMULTIPLICAR'
      Required = True
      Precision = 18
      Size = 6
    end
    object sqlMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField
      FieldName = 'INDICEAVISTADIVIDIR'
      Required = True
      Precision = 18
      Size = 6
    end
    object sqlMontarCustoVALORVENDAAVISTA: TFMTBCDField
      FieldName = 'VALORVENDAAVISTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoVALORLUCROREAL: TFMTBCDField
      FieldName = 'VALORLUCROREAL'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object sqlMontarCustoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlMontarCustoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlMontarCustoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlMontarCustoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspMontarCusto: TDataSetProvider
    DataSet = sqlMontarCusto
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspMontarCustoBeforeUpdateRecord
    OnGetTableName = dspMontarCustoGetTableName
    Left = 592
    Top = 496
  end
  object cdsMontarCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMontarCusto'
    AfterScroll = cdsMontarCustoAfterScroll
    Left = 592
    Top = 544
    object cdsMontarCustoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsMontarCustoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsMontarCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsMontarCustoIDREGIAO: TLargeintField
      FieldName = 'IDREGIAO'
      Required = True
    end
    object cdsMontarCustoNOMEREGIAO: TStringField
      FieldName = 'NOMEREGIAO'
      Size = 40
    end
    object cdsMontarCustoVALORDESPESAFIXA: TFMTBCDField
      FieldName = 'VALORDESPESAFIXA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORFICHATECNICA: TFMTBCDField
      FieldName = 'VALORFICHATECNICA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAINTERNA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAEXTERNA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField
      FieldName = 'VALORMAOOBRAAJUSTADO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object cdsMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField
      FieldName = 'CUSTOMODELODESPESAFIXA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoCUSTOTOTALMODELO: TFMTBCDField
      FieldName = 'CUSTOTOTALMODELO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoALIQUOTAMARKUP: TFMTBCDField
      FieldName = 'ALIQUOTAMARKUP'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoALIQUOTAMARKUPSEMLUCRO: TFMTBCDField
      FieldName = 'ALIQUOTAMARKUPSEMLUCRO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORCUSTOMARKUP: TFMTBCDField
      FieldName = 'VALORCUSTOMARKUP'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORCUSTOCOMMARKUP: TFMTBCDField
      FieldName = 'VALORCUSTOCOMMARKUP'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField
      FieldName = 'INDICEAVISTAMULTIPLICAR'
      Required = True
      DisplayFormat = '#,##0.000000'
      EditFormat = '#,##0.000000'
      Precision = 18
      Size = 6
    end
    object cdsMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField
      FieldName = 'INDICEAVISTADIVIDIR'
      Required = True
      DisplayFormat = '#,##0.000000'
      EditFormat = '#,##0.000000'
      Precision = 18
      Size = 6
    end
    object cdsMontarCustoVALORVENDAAVISTA: TFMTBCDField
      FieldName = 'VALORVENDAAVISTA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoVALORLUCROREAL: TFMTBCDField
      FieldName = 'VALORLUCROREAL'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMontarCustoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsMontarCustoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsMontarCustoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsMontarCustoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dsAuxiliar: TDataSource
    Left = 32
    Top = 104
  end
  object sqlMarkupNome: TSQLDataSet
    CommandText = 
      'select  '#13#10'  mn.id,'#13#10'  mn.idregiao,'#13#10'  r.descricao regiao,'#13#10'  mn.' +
      'descricao,'#13#10'  mn.operador,'#13#10'  mn.datalancamento,'#13#10'  mn.ativo,'#13#10#13 +
      #10'('#13#10'   select'#13#10'     count(*) QtdeRegistro'#13#10'   from MarkupNome'#13#10' ' +
      ' )'#13#10#13#10'from MarkupNome mn'#13#10'inner join cad_regiao r on r.id = mn.i' +
      'dregiao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 536
    Top = 14
    object sqlMarkupNomeID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlMarkupNomeIDREGIAO: TLargeintField
      FieldName = 'IDREGIAO'
      Required = True
    end
    object sqlMarkupNomeREGIAO: TStringField
      FieldName = 'REGIAO'
      ProviderFlags = []
      Size = 30
    end
    object sqlMarkupNomeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object sqlMarkupNomeOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlMarkupNomeDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlMarkupNomeATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object sqlMarkupNomeQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
  end
  object dspMarkupNome: TDataSetProvider
    DataSet = sqlMarkupNome
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspMarkupNomeBeforeUpdateRecord
    OnGetTableName = dspMarkupNomeGetTableName
    Left = 536
    Top = 62
  end
  object cdsMarkupNome: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarkupNome'
    Left = 536
    Top = 110
    object cdsMarkupNomeID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsMarkupNomeIDREGIAO: TLargeintField
      FieldName = 'IDREGIAO'
      Required = True
    end
    object cdsMarkupNomeREGIAO: TStringField
      FieldName = 'REGIAO'
      ProviderFlags = []
      Size = 30
    end
    object cdsMarkupNomeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object cdsMarkupNomeOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsMarkupNomeDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsMarkupNomeATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object cdsMarkupNomeQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
  end
  object sqlAliquotaNome: TSQLDataSet
    CommandText = 
      'select'#13#10'  an.id,'#13#10'  an.status,'#13#10'  an.descricao,'#13#10'  an.aliquota,'#13 +
      #10'  an.datalancamento,'#13#10'  an.operador,'#13#10'  an.financeiro,'#13#10'  an.at' +
      'ivo,'#13#10#13#10'  ('#13#10'    select'#13#10'      count(*) QtdeRegistro'#13#10'    from A' +
      'liquotaNome'#13#10'   )'#13#10#13#10'from AliquotaNome an'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 640
    Top = 14
    object sqlAliquotaNomeID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlAliquotaNomeSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlAliquotaNomeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
    end
    object sqlAliquotaNomeALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlAliquotaNomeOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlAliquotaNomeDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlAliquotaNomeFINANCEIRO: TIntegerField
      FieldName = 'FINANCEIRO'
      Required = True
    end
    object sqlAliquotaNomeATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object sqlAliquotaNomeQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
  end
  object dspAliquotaNome: TDataSetProvider
    DataSet = sqlAliquotaNome
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspAliquotaNomeBeforeUpdateRecord
    OnGetTableName = dspAliquotaNomeGetTableName
    Left = 640
    Top = 62
  end
  object cdsAliquotaNome: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAliquotaNome'
    Left = 640
    Top = 110
    object cdsAliquotaNomeID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAliquotaNomeSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsAliquotaNomeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object cdsAliquotaNomeALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsAliquotaNomeOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsAliquotaNomeDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsAliquotaNomeFINANCEIRO: TIntegerField
      FieldName = 'FINANCEIRO'
      Required = True
    end
    object cdsAliquotaNomeATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object cdsAliquotaNomeQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
  end
  object sqlAliquotaGrupo: TSQLDataSet
    CommandText = 
      'select'#13#10'  ag.id,'#13#10'  ag.idmarkupnome,'#13#10'  mn.descricao MarkupNome,' +
      #13#10'  ag.idaliquotanome,'#13#10'  an.descricao AliquotaNome,'#13#10'  ag.aliqu' +
      'ota,'#13#10'  ag.datalancamento,'#13#10'  ag.operador,'#13#10'  ag.status,'#13#10'  ag.a' +
      'tivo,'#13#10#13#10'  ('#13#10'   select'#13#10'     coalesce(cast(sum(ag1.aliquota) as' +
      ' Numeric(10,2)),0) AliquotaGrupo'#13#10'   from aliquotagrupo ag1'#13#10'   ' +
      'where ag1.idmarkupnome = ag.idmarkupnome'#13#10'  ),'#13#10#13#10'  ('#13#10'   select' +
      #13#10'     count(*) QtdeRegistroGrupo'#13#10'   from aliquotagrupo ag2'#13#10'  ' +
      ' where ag2.idmarkupnome = ag.idmarkupnome'#13#10'  ),'#13#10#13#10'  ('#13#10'   selec' +
      't'#13#10'     coalesce(cast(sum(ag3.aliquota) as Numeric(10,2)),0) Ali' +
      'quotaGeral'#13#10'   from aliquotagrupo ag3'#13#10'  ),'#13#10#13#10'  ('#13#10'   select'#13#10' ' +
      '    count(*) QtdeRegistro'#13#10'   from aliquotagrupo ag4'#13#10'  )'#13#10#13#10#13#10'f' +
      'rom AliquotaGrupo ag'#13#10'inner join MarkupNome   mn on mn.id = ag.i' +
      'dmarkupnome'#13#10'inner join AliquotaNome an on an.id = ag.idaliquota' +
      'nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 728
    Top = 14
    object sqlAliquotaGrupoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlAliquotaGrupoIDMARKUPNOME: TLargeintField
      FieldName = 'IDMARKUPNOME'
      Required = True
    end
    object sqlAliquotaGrupoMARKUPNOME: TStringField
      FieldName = 'MARKUPNOME'
      ProviderFlags = []
      Size = 40
    end
    object sqlAliquotaGrupoIDALIQUOTANOME: TLargeintField
      FieldName = 'IDALIQUOTANOME'
      Required = True
    end
    object sqlAliquotaGrupoALIQUOTANOME: TStringField
      FieldName = 'ALIQUOTANOME'
      ProviderFlags = []
      Size = 40
    end
    object sqlAliquotaGrupoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlAliquotaGrupoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlAliquotaGrupoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlAliquotaGrupoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object sqlAliquotaGrupoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object sqlAliquotaGrupoALIQUOTAGRUPO: TFMTBCDField
      FieldName = 'ALIQUOTAGRUPO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object sqlAliquotaGrupoQTDEREGISTROGRUPO: TIntegerField
      FieldName = 'QTDEREGISTROGRUPO'
      ProviderFlags = []
    end
    object sqlAliquotaGrupoALIQUOTAGERAL: TFMTBCDField
      FieldName = 'ALIQUOTAGERAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object sqlAliquotaGrupoQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
      ProviderFlags = []
    end
  end
  object dspAliquotaGrupo: TDataSetProvider
    DataSet = sqlAliquotaGrupo
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspAliquotaGrupoBeforeUpdateRecord
    OnGetTableName = dspAliquotaGrupoGetTableName
    Left = 728
    Top = 62
  end
  object cdsAliquotaGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAliquotaGrupo'
    Left = 728
    Top = 110
    object cdsAliquotaGrupoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAliquotaGrupoIDMARKUPNOME: TLargeintField
      FieldName = 'IDMARKUPNOME'
      Required = True
    end
    object cdsAliquotaGrupoMARKUPNOME: TStringField
      FieldName = 'MARKUPNOME'
      ProviderFlags = []
      Size = 40
    end
    object cdsAliquotaGrupoIDALIQUOTANOME: TLargeintField
      FieldName = 'IDALIQUOTANOME'
      Required = True
    end
    object cdsAliquotaGrupoALIQUOTANOME: TStringField
      FieldName = 'ALIQUOTANOME'
      ProviderFlags = []
      Size = 40
    end
    object cdsAliquotaGrupoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsAliquotaGrupoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsAliquotaGrupoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsAliquotaGrupoSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object cdsAliquotaGrupoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object cdsAliquotaGrupoALIQUOTAGRUPO: TFMTBCDField
      FieldName = 'ALIQUOTAGRUPO'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsAliquotaGrupoQTDEREGISTROGRUPO: TIntegerField
      FieldName = 'QTDEREGISTROGRUPO'
      ProviderFlags = []
    end
    object cdsAliquotaGrupoALIQUOTAGERAL: TFMTBCDField
      FieldName = 'ALIQUOTAGERAL'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsAliquotaGrupoQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
      ProviderFlags = []
    end
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 
      'select'#13#10'  emp.id_emp,'#13#10' case'#13#10'   when emp.nome is null then emp.' +
      'razao_social'#13#10'   else emp.nome'#13#10'  end NomeEmpresa,'#13#10'  emp.fone'#13#10 +
      'from cad_razao_social emp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 136
    Top = 8
    object sqlEmpresaID_EMP: TIntegerField
      FieldName = 'ID_EMP'
      Required = True
    end
    object sqlEmpresaNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 30
    end
    object sqlEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sqlEmpresa
    Left = 136
    Top = 56
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 136
    Top = 104
    object cdsEmpresaID_EMP: TIntegerField
      FieldName = 'ID_EMP'
      Required = True
    end
    object cdsEmpresaNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 30
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 136
    Top = 152
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 752
    Top = 592
    Version = '19.04'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 11639
        mmLeft = 2646
        mmTop = 1323
        mmWidth = 193146
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 4498
        mmTop = 2910
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Listagem de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 81756
        mmTop = 2910
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'lNomeEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 61119
        mmTop = 7673
        mmWidth = 60325
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 158221
        mmTop = 2910
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 2646
        mmTop = 14817
        mmWidth = 193147
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label51'
        Border.mmPadding = 0
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 3704
        mmTop = 16404
        mmWidth = 4234
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label52'
        Border.mmPadding = 0
        Caption = 'Nome Setor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 8996
        mmTop = 16404
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1584
        mmLeft = 2646
        mmTop = 20902
        mmWidth = 193147
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = 'Valor Gasto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 79375
        mmTop = 16404
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label54'
        Border.mmPadding = 0
        Caption = 'Al'#237'quota Frete:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 100806
        mmTop = 16404
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label55'
        Border.mmPadding = 0
        Caption = 'Data Lan'#231'amento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 16404
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label56'
        Border.mmPadding = 0
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 16404
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object pplDesenvolvidopor: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lDesenvolvidopor'
        Border.mmPadding = 0
        Caption = 'Desenvolvido por -> '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1588
        mmWidth = 34396
        BandType = 8
        LayerName = Foreground
      end
      object pplSiteEmpresa: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lSiteEmpresa'
        Border.mmPadding = 0
        Caption = 'lSiteEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 39158
        mmTop = 1588
        mmWidth = 31485
        BandType = 8
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 4
        Weight = 3.000000000000000000
        mmHeight = 1323
        mmLeft = 128588
        mmTop = 529
        mmWidth = 67998
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Qtde Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 130704
        mmTop = 1588
        mmWidth = 27517
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object sqlModeloProduto: TSQLDataSet
    CommandText = 
      'select'#13#10' mp.id,'#13#10' mp.idmodelo,'#13#10' m.descricao Modelo,'#13#10' mp.datala' +
      'ncamento,'#13#10' mp.operador,'#13#10' mp.ativo'#13#10'from ModeloProduto mp'#13#10'inne' +
      'r join Modelo m on m.id = mp.idmodelo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 640
    Top = 208
    object sqlModeloProdutoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlModeloProdutoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlModeloProdutoMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 50
    end
    object sqlModeloProdutoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlModeloProdutoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlModeloProdutoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspModeloProduto: TDataSetProvider
    DataSet = sqlModeloProduto
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspModeloProdutoBeforeUpdateRecord
    OnGetTableName = dspModeloProdutoGetTableName
    Left = 640
    Top = 253
  end
  object cdsModeloProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModeloProduto'
    Left = 640
    Top = 299
    object cdsModeloProdutoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsModeloProdutoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsModeloProdutoMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 50
    end
    object cdsModeloProdutoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsModeloProdutoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsModeloProdutoATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dsModeloProduto: TDataSource
    DataSet = cdsModeloProduto
    Left = 640
    Top = 345
  end
  object sqlModeloProdutoItem: TSQLDataSet
    CommandText = 
      'select'#13#10' mpi.id,'#13#10' mpi.idmodeloproduto,'#13#10' mpi.idProduto,'#13#10' pro.d' +
      'escricao Produto'#13#10'from ModeloProdutoItem mpi'#13#10'inner join Cad_Pro' +
      ' pro on pro.id_Pro = mpi.IdProduto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 743
    Top = 208
    object sqlModeloProdutoItemID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlModeloProdutoItemIDMODELOPRODUTO: TLargeintField
      FieldName = 'IDMODELOPRODUTO'
      Required = True
    end
    object sqlModeloProdutoItemIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object sqlModeloProdutoItemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 100
    end
  end
  object dspModeloProdutoItem: TDataSetProvider
    DataSet = sqlModeloProdutoItem
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspModeloProdutoItemBeforeUpdateRecord
    OnGetTableName = dspModeloProdutoItemGetTableName
    Left = 743
    Top = 253
  end
  object cdsModeloProdutoItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModeloProdutoItem'
    Left = 743
    Top = 299
    object cdsModeloProdutoItemID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsModeloProdutoItemIDMODELOPRODUTO: TLargeintField
      FieldName = 'IDMODELOPRODUTO'
      Required = True
    end
    object cdsModeloProdutoItemIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object cdsModeloProdutoItemPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 100
    end
  end
  object dsModeloProdutoItem: TDataSource
    DataSet = cdsModeloProdutoItem
    Left = 743
    Top = 345
  end
  object sqlListaModeloProduto: TSQLDataSet
    CommandText = 
      'select'#13#10' mpi.id,'#13#10' mp.idmodelo,'#13#10' m.descricao Modelo,'#13#10' mpi.idmo' +
      'deloproduto,'#13#10' mpi.idProduto,'#13#10#13#10' case when cor.descricao='#39'.'#39' th' +
      'en pro.descricao'#13#10'       else (pro.descricao||'#39' '#39'||cor.descricao' +
      ')'#13#10' end Produto,'#13#10#13#10' ('#13#10'  select'#13#10'    count(*) QtdeModelo'#13#10'  fro' +
      'm ModeloProdutoItem mpi'#13#10'  inner join ModeloProduto mp1 on mp1.i' +
      'd = mpi.idmodeloproduto'#13#10'  where mp1.idmodelo = mp.IdModelo'#13#10' ),' +
      #13#10#13#10' ('#13#10'  select'#13#10'    count(*) QtdeRegistro'#13#10'  from ModeloProdut' +
      'oItem mpi'#13#10'  inner join ModeloProduto mp1 on mp1.id = mpi.idmode' +
      'loproduto'#13#10' )'#13#10#13#10'from ModeloProdutoItem mpi'#13#10'inner join ModeloPr' +
      'oduto mp on mp.id          = mpi.idmodeloproduto'#13#10'inner join Mod' +
      'elo         m on m.id           = mp.idmodelo'#13#10'inner join Cad_Pr' +
      'o      pro on pro.id_Pro     = mpi.IdProduto'#13#10'inner join cad_cor' +
      'es    cor on cor.id_cod_cor = pro.id_cod_cor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 743
    Top = 400
    object sqlListaModeloProdutoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlListaModeloProdutoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlListaModeloProdutoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object sqlListaModeloProdutoIDMODELOPRODUTO: TLargeintField
      FieldName = 'IDMODELOPRODUTO'
      Required = True
    end
    object sqlListaModeloProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 121
    end
    object sqlListaModeloProdutoQTDEMODELO: TIntegerField
      FieldName = 'QTDEMODELO'
    end
    object sqlListaModeloProdutoQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object sqlListaModeloProdutoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
  end
  object dspListaModeloProduto: TDataSetProvider
    DataSet = sqlListaModeloProduto
    Left = 743
    Top = 445
  end
  object cdsListaModeloProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaModeloProduto'
    Left = 743
    Top = 493
    object cdsListaModeloProdutoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaModeloProdutoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsListaModeloProdutoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object cdsListaModeloProdutoIDMODELOPRODUTO: TLargeintField
      FieldName = 'IDMODELOPRODUTO'
      Required = True
    end
    object cdsListaModeloProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 121
    end
    object cdsListaModeloProdutoQTDEMODELO: TIntegerField
      FieldName = 'QTDEMODELO'
    end
    object cdsListaModeloProdutoQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object cdsListaModeloProdutoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
  end
  object dsListaModeloProduto: TDataSource
    DataSet = cdsListaModeloProduto
    Left = 743
    Top = 541
  end
  object dsMarkupNome: TDataSource
    DataSet = cdsMarkupNome
    Left = 536
    Top = 158
  end
  object dsAliquotaNome: TDataSource
    DataSet = cdsAliquotaNome
    Left = 640
    Top = 158
  end
  object dsAliquotaGrupo: TDataSource
    DataSet = cdsAliquotaGrupo
    Left = 728
    Top = 158
  end
  object dsProducao: TDataSource
    DataSet = cdsProducao
    Left = 296
    Top = 600
  end
  object sqlListaProducao: TSQLDataSet
    CommandText = 
      'select'#13#10'  p.idmodelo,'#13#10'  m.descricao Modelo,'#13#10'  ProItem.id,'#13#10'  P' +
      'roItem.idsetorlocal,'#13#10'  sl.descricao,'#13#10'  ProItem.qtdeproducao,'#13#10 +
      '  ProItem.valorfrete,'#13#10'  ProItem.valorajustado,'#13#10'  ProItem.valor' +
      'maoobra,'#13#10'  ProItem.valorcusto'#13#10'  ,'#13#10'  ('#13#10'   select'#13#10'    count(*' +
      ') QtdeRegistro'#13#10'   from ProducaoItem ProItem1'#13#10'   inner join Pro' +
      'ducao p1 on p1.id  = ProItem1.id'#13#10'   where p1.idmodelo = p.idmod' +
      'elo'#13#10#13#10'  )'#13#10'  ,'#13#10#13#10#13#10' ('#13#10'   select'#13#10'    coalesce(cast(sum(ProIte' +
      'm1.qtdeproducao) as Numeric (10,0)),0) QtdeProducaoModelo'#13#10'   fr' +
      'om ProducaoItem ProItem1'#13#10'   inner join Producao p1 on p1.id  = ' +
      'ProItem1.id'#13#10'   where p1.idmodelo = p.idmodelo'#13#10'  ),'#13#10#13#10'  ('#13#10'   ' +
      'select'#13#10'    coalesce(cast(sum(ProItem2.valorfrete) as Numeric (1' +
      '0,2)),0) ValorFreteModelo'#13#10'   from ProducaoItem ProItem2'#13#10'   inn' +
      'er join Producao p2 on p2.id  = ProItem2.id'#13#10'   where p2.idmodel' +
      'o = p.idmodelo'#13#10'  )'#13#10#13#10'  ,'#13#10#13#10'  ('#13#10'   select'#13#10'    coalesce(cast(' +
      'sum(ProItem3.valormaoobra) as Numeric (10,2)),0) ValorMaobraMode' +
      'lo'#13#10'   from ProducaoItem ProItem3'#13#10'   inner join Producao p3 on ' +
      'p3.id  = ProItem3.id'#13#10'   where p3.idmodelo = p.idmodelo'#13#10'  )'#13#10#13#10 +
      '  ,'#13#10#13#10'  ('#13#10'   select'#13#10'    coalesce(cast(sum(ProItem3.valorajust' +
      'ado) as Numeric (10,2)),0) ValorAjustadoModelo'#13#10'   from Producao' +
      'Item ProItem3'#13#10'   inner join Producao p3 on p3.id  = ProItem3.id' +
      #13#10'   where p3.idmodelo = p.idmodelo'#13#10'  )'#13#10#13#10'  ,'#13#10#13#10'  ('#13#10'   selec' +
      't'#13#10'    coalesce(cast(sum(ProItem3.valorcusto) as Numeric (10,2))' +
      ',0) ValorCustoModelo'#13#10'   from ProducaoItem ProItem3'#13#10'   inner jo' +
      'in Producao p3 on p3.id  = ProItem3.id'#13#10'   where p3.idmodelo = p' +
      '.idmodelo'#13#10'  )'#13#10#13#10'from ProducaoItem ProItem'#13#10'inner join Producao' +
      '    p on p.id  = ProItem.id'#13#10'inner join Modelo      m on m.id  =' +
      ' p.idmodelo'#13#10'inner join setorlocal sl on sl.id = ProItem.idsetor' +
      'local'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 472
    Top = 456
    object sqlListaProducaoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlListaProducaoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object sqlListaProducaoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlListaProducaoIDSETORLOCAL: TLargeintField
      FieldName = 'IDSETORLOCAL'
      Required = True
    end
    object sqlListaProducaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object sqlListaProducaoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
    end
    object sqlListaProducaoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoVALORMAOOBRA: TFMTBCDField
      FieldName = 'VALORMAOOBRA'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoVALORCUSTO: TFMTBCDField
      FieldName = 'VALORCUSTO'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object sqlListaProducaoQTDEPRODUCAOMODELO: TLargeintField
      FieldName = 'QTDEPRODUCAOMODELO'
    end
    object sqlListaProducaoVALORFRETEMODELO: TFMTBCDField
      FieldName = 'VALORFRETEMODELO'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoVALORMAOBRAMODELO: TFMTBCDField
      FieldName = 'VALORMAOBRAMODELO'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoVALORCUSTOMODELO: TFMTBCDField
      FieldName = 'VALORCUSTOMODELO'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoVALORAJUSTADO: TFMTBCDField
      FieldName = 'VALORAJUSTADO'
      Precision = 18
      Size = 2
    end
    object sqlListaProducaoVALORAJUSTADOMODELO: TFMTBCDField
      FieldName = 'VALORAJUSTADOMODELO'
      Precision = 18
      Size = 2
    end
  end
  object dspListaProducao: TDataSetProvider
    DataSet = sqlListaProducao
    Left = 472
    Top = 504
  end
  object cdsListaProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaProducao'
    Left = 472
    Top = 552
    object cdsListaProducaoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsListaProducaoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object cdsListaProducaoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaProducaoIDSETORLOCAL: TLargeintField
      FieldName = 'IDSETORLOCAL'
      Required = True
    end
    object cdsListaProducaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object cdsListaProducaoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
    end
    object cdsListaProducaoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoVALORMAOOBRA: TFMTBCDField
      FieldName = 'VALORMAOOBRA'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoVALORCUSTO: TFMTBCDField
      FieldName = 'VALORCUSTO'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object cdsListaProducaoQTDEPRODUCAOMODELO: TLargeintField
      FieldName = 'QTDEPRODUCAOMODELO'
    end
    object cdsListaProducaoVALORFRETEMODELO: TFMTBCDField
      FieldName = 'VALORFRETEMODELO'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoVALORMAOBRAMODELO: TFMTBCDField
      FieldName = 'VALORMAOBRAMODELO'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoVALORCUSTOMODELO: TFMTBCDField
      FieldName = 'VALORCUSTOMODELO'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoVALORAJUSTADO: TFMTBCDField
      FieldName = 'VALORAJUSTADO'
      Precision = 18
      Size = 2
    end
    object cdsListaProducaoVALORAJUSTADOMODELO: TFMTBCDField
      FieldName = 'VALORAJUSTADOMODELO'
      Precision = 18
      Size = 2
    end
  end
  object dsListaProducao: TDataSource
    DataSet = cdsListaProducao
    Left = 472
    Top = 600
  end
  object sqlListaFichaTecnica: TSQLDataSet
    CommandText = 
      'select'#13#10'  ft.idmodelo,'#13#10'  m.descricao Modelo,'#13#10'  fti.id,'#13#10'  fti.' +
      'idfichatecnica,'#13#10'  fti.idmateriaprima,'#13#10'  mp.descricao,'#13#10'  mp.un' +
      ','#13#10'  fti.valorunitario,'#13#10'  fti.qtde,'#13#10'  fti.perda,'#13#10'  fti.subtot' +
      'al,'#13#10'  fti.valorperda,'#13#10'  fti.valorfinal,'#13#10#13#10'  ('#13#10'   Select'#13#10'   ' +
      '  Count(*) QtdeRegistro'#13#10'   from FichaTecnicaItem fti1'#13#10'   inner' +
      ' join FichaTecnica ft1 on ft1.id = fti1.idfichatecnica'#13#10'   inner' +
      ' join Modelo        m1 on m1.id  = ft1.idmodelo'#13#10'   where ft1.id' +
      ' = ft.id'#13#10'   and m1.id = m.id'#13#10'  )'#13#10'  ,'#13#10#13#10'  ('#13#10'   Select'#13#10'     ' +
      'coalesce(cast(sum(fti1.valorperda) as Numeric(10,4)),0) ValorMat' +
      'eriaPerdaModelo'#13#10'   from FichaTecnicaItem fti1'#13#10'   inner join Fi' +
      'chaTecnica ft1 on ft1.id = fti1.idfichatecnica'#13#10'   inner join Mo' +
      'delo        m1 on m1.id  = ft1.idmodelo'#13#10'   where ft1.id = ft.id' +
      #13#10'   and m1.id = m.id'#13#10'  )'#13#10'  ,'#13#10#13#10'  ('#13#10'   Select'#13#10'     coalesce' +
      '(cast(sum(fti1.valorfinal) as Numeric(10,4)),0) ValorMateriaPrim' +
      'aModelo'#13#10'   from FichaTecnicaItem fti1'#13#10'   inner join FichaTecni' +
      'ca ft1 on ft1.id = fti1.idfichatecnica'#13#10'   inner join Modelo    ' +
      '    m1 on m1.id  = ft1.idmodelo'#13#10'   where ft1.id = ft.id'#13#10'   and' +
      ' m1.id = m.id'#13#10'  )'#13#10#13#10#13#10'from FichaTecnicaItem fti'#13#10'inner join Fi' +
      'chaTecnica ft on  ft.id   = fti.idfichatecnica'#13#10'inner join Model' +
      'o        m on m.id     = ft.idmodelo'#13#10'inner join cad_gmp      mp' +
      ' on mp.id_mp = fti.idmateriaprima'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 222
    Top = 202
    object sqlListaFichaTecnicaIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlListaFichaTecnicaMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object sqlListaFichaTecnicaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlListaFichaTecnicaIDFICHATECNICA: TLargeintField
      FieldName = 'IDFICHATECNICA'
      Required = True
    end
    object sqlListaFichaTecnicaIDMATERIAPRIMA: TLargeintField
      FieldName = 'IDMATERIAPRIMA'
      Required = True
    end
    object sqlListaFichaTecnicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object sqlListaFichaTecnicaUN: TStringField
      FieldName = 'UN'
      Required = True
      Size = 3
    end
    object sqlListaFichaTecnicaVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlListaFichaTecnicaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      Precision = 18
      Size = 6
    end
    object sqlListaFichaTecnicaPERDA: TFMTBCDField
      FieldName = 'PERDA'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlListaFichaTecnicaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlListaFichaTecnicaVALORPERDA: TFMTBCDField
      FieldName = 'VALORPERDA'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlListaFichaTecnicaVALORFINAL: TFMTBCDField
      FieldName = 'VALORFINAL'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlListaFichaTecnicaQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object sqlListaFichaTecnicaVALORMATERIAPERDAMODELO: TFMTBCDField
      FieldName = 'VALORMATERIAPERDAMODELO'
      Precision = 18
      Size = 4
    end
    object sqlListaFichaTecnicaVALORMATERIAPRIMAMODELO: TFMTBCDField
      FieldName = 'VALORMATERIAPRIMAMODELO'
      Precision = 18
      Size = 4
    end
  end
  object dspListaFichaTecnica: TDataSetProvider
    DataSet = sqlListaFichaTecnica
    Left = 222
    Top = 250
  end
  object cdsListaFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaFichaTecnica'
    Left = 222
    Top = 298
    object cdsListaFichaTecnicaIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsListaFichaTecnicaMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object cdsListaFichaTecnicaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaFichaTecnicaIDFICHATECNICA: TLargeintField
      FieldName = 'IDFICHATECNICA'
      Required = True
    end
    object cdsListaFichaTecnicaIDMATERIAPRIMA: TLargeintField
      FieldName = 'IDMATERIAPRIMA'
      Required = True
    end
    object cdsListaFichaTecnicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object cdsListaFichaTecnicaUN: TStringField
      FieldName = 'UN'
      Required = True
      Size = 3
    end
    object cdsListaFichaTecnicaVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsListaFichaTecnicaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '#,##0.000000'
      EditFormat = '#,##0.000000'
      Precision = 18
      Size = 6
    end
    object cdsListaFichaTecnicaPERDA: TFMTBCDField
      FieldName = 'PERDA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object cdsListaFichaTecnicaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsListaFichaTecnicaVALORPERDA: TFMTBCDField
      FieldName = 'VALORPERDA'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsListaFichaTecnicaVALORFINAL: TFMTBCDField
      FieldName = 'VALORFINAL'
      Required = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsListaFichaTecnicaQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object cdsListaFichaTecnicaVALORMATERIAPERDAMODELO: TFMTBCDField
      FieldName = 'VALORMATERIAPERDAMODELO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object cdsListaFichaTecnicaVALORMATERIAPRIMAMODELO: TFMTBCDField
      FieldName = 'VALORMATERIAPRIMAMODELO'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
  end
  object dsListaFichaTecnica: TDataSource
    DataSet = cdsListaFichaTecnica
    Left = 222
    Top = 346
  end
  object sqlDespesaFixa: TSQLDataSet
    CommandText = 
      'select'#13#10'    df.id,'#13#10'    df.idclassecontas,'#13#10'    ccc.descricao,'#13#10 +
      '    df.valor,'#13#10'    df.origem,'#13#10'    df.datalancamento,'#13#10'    df.op' +
      'erador,'#13#10'    df.ativo,'#13#10#13#10'   ('#13#10'    select'#13#10'      coalesce(cast(' +
      'sum(df1.valor) as numeric(10,2)),0) ValorClasseContas'#13#10'    from ' +
      'DespesaFixa df1'#13#10'    where df1.idclassecontas = df.idclasseconta' +
      's'#13#10'   ),'#13#10#13#10'   ('#13#10'    select'#13#10'      coalesce(cast(sum(df1.valor)' +
      ' as numeric(10,2)),0) ValorGeraL'#13#10'    from DespesaFixa df1'#13#10'   )' +
      ','#13#10#13#10'   ('#13#10'    select'#13#10'      count(*) QtdeRegistro'#13#10'    from Des' +
      'pesaFixa df1'#13#10'   )'#13#10#13#10#13#10'from despesafixa df'#13#10'inner join cad_clas' +
      'se_contas ccc on ccc.id_ccc = df.IdClasseContas'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 224
    Top = 8
    object sqlDespesaFixaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlDespesaFixaIDCLASSECONTAS: TLargeintField
      FieldName = 'IDCLASSECONTAS'
      Required = True
    end
    object sqlDespesaFixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object sqlDespesaFixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlDespesaFixaVALORCLASSECONTAS: TFMTBCDField
      FieldName = 'VALORCLASSECONTAS'
      Precision = 18
      Size = 2
    end
    object sqlDespesaFixaVALORGERAL: TFMTBCDField
      FieldName = 'VALORGERAL'
      Precision = 18
      Size = 2
    end
    object sqlDespesaFixaQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object sqlDespesaFixaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object sqlDespesaFixaDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlDespesaFixaOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object sqlDespesaFixaATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dspDespesaFixa: TDataSetProvider
    DataSet = sqlDespesaFixa
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspDespesaFixaBeforeUpdateRecord
    OnGetTableName = dspDespesaFixaGetTableName
    Left = 224
    Top = 54
  end
  object cdsDespesaFixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDespesaFixa'
    Left = 224
    Top = 99
    object cdsDespesaFixaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsDespesaFixaIDCLASSECONTAS: TLargeintField
      FieldName = 'IDCLASSECONTAS'
      Required = True
    end
    object cdsDespesaFixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 40
    end
    object cdsDespesaFixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDespesaFixaVALORCLASSECONTAS: TFMTBCDField
      FieldName = 'VALORCLASSECONTAS'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDespesaFixaVALORGERAL: TFMTBCDField
      FieldName = 'VALORGERAL'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDespesaFixaQTDEREGISTRO: TIntegerField
      FieldName = 'QTDEREGISTRO'
    end
    object cdsDespesaFixaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object cdsDespesaFixaDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
      EditMask = '99/99/9999;1;_'
    end
    object cdsDespesaFixaOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsDespesaFixaATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
  end
  object dsDespesaFixa: TDataSource
    DataSet = cdsDespesaFixa
    Left = 224
    Top = 144
  end
  object sqlListaMontarCusto: TSQLDataSet
    CommandText = 
      'select'#13#10' mt.id,'#13#10' mt.idmodelo,'#13#10' m.descricao Modelo,'#13#10' mt.idregi' +
      'ao,'#13#10' mn.descricao MarkupNome,'#13#10' mt.valordespesafixa,'#13#10' mt.valor' +
      'fichatecnica,'#13#10' mt.valormaoobrainterna,'#13#10' mt.valormaoobraexterna' +
      ','#13#10' mt.valormaoobraajustado,'#13#10' mt.valorfrete,'#13#10' mt.qtdeproducao,' +
      #13#10' mt.customodelodespesafixa,'#13#10' mt.custototalmodelo,'#13#10' mt.aliquo' +
      'tamarkup,'#13#10' mt.indiceavistamultiplicar,'#13#10' mt.indiceavistadividir' +
      ','#13#10' mt.valorvendaavista,'#13#10' mt.datalancamento,'#13#10' mt.operador'#13#10#13#10'f' +
      'rom MontarCusto mt'#13#10'inner join Modelo      m on m.id  = mt.idmod' +
      'elo'#13#10'inner join MarkupNome mn on mn.id = mt.idregiao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 334
    Top = 202
    object sqlListaMontarCustoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlListaMontarCustoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object sqlListaMontarCustoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object sqlListaMontarCustoIDREGIAO: TLargeintField
      FieldName = 'IDREGIAO'
      Required = True
    end
    object sqlListaMontarCustoMARKUPNOME: TStringField
      FieldName = 'MARKUPNOME'
      Required = True
      Size = 40
    end
    object sqlListaMontarCustoVALORDESPESAFIXA: TFMTBCDField
      FieldName = 'VALORDESPESAFIXA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoVALORFICHATECNICA: TFMTBCDField
      FieldName = 'VALORFICHATECNICA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAINTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAEXTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField
      FieldName = 'VALORMAOOBRAAJUSTADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object sqlListaMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField
      FieldName = 'CUSTOMODELODESPESAFIXA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoCUSTOTOTALMODELO: TFMTBCDField
      FieldName = 'CUSTOTOTALMODELO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoALIQUOTAMARKUP: TFMTBCDField
      FieldName = 'ALIQUOTAMARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField
      FieldName = 'INDICEAVISTAMULTIPLICAR'
      Required = True
      Precision = 18
      Size = 6
    end
    object sqlListaMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField
      FieldName = 'INDICEAVISTADIVIDIR'
      Required = True
      Precision = 18
      Size = 6
    end
    object sqlListaMontarCustoVALORVENDAAVISTA: TFMTBCDField
      FieldName = 'VALORVENDAAVISTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaMontarCustoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object sqlListaMontarCustoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
  end
  object dspListaMontarCusto: TDataSetProvider
    DataSet = sqlListaMontarCusto
    Left = 334
    Top = 250
  end
  object cdsListaMontarCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaMontarCusto'
    Left = 334
    Top = 298
    object cdsListaMontarCustoID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaMontarCustoIDMODELO: TLargeintField
      FieldName = 'IDMODELO'
      Required = True
    end
    object cdsListaMontarCustoMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object cdsListaMontarCustoMARKUPNOME: TStringField
      FieldName = 'MARKUPNOME'
      Required = True
      Size = 40
    end
    object cdsListaMontarCustoVALORDESPESAFIXA: TFMTBCDField
      FieldName = 'VALORDESPESAFIXA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoVALORFICHATECNICA: TFMTBCDField
      FieldName = 'VALORFICHATECNICA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoVALORMAOOBRAINTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAINTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoVALORMAOOBRAEXTERNA: TFMTBCDField
      FieldName = 'VALORMAOOBRAEXTERNA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoVALORMAOOBRAAJUSTADO: TFMTBCDField
      FieldName = 'VALORMAOOBRAAJUSTADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoVALORFRETE: TFMTBCDField
      FieldName = 'VALORFRETE'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoQTDEPRODUCAO: TIntegerField
      FieldName = 'QTDEPRODUCAO'
      Required = True
    end
    object cdsListaMontarCustoCUSTOMODELODESPESAFIXA: TFMTBCDField
      FieldName = 'CUSTOMODELODESPESAFIXA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoCUSTOTOTALMODELO: TFMTBCDField
      FieldName = 'CUSTOTOTALMODELO'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoALIQUOTAMARKUP: TFMTBCDField
      FieldName = 'ALIQUOTAMARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoINDICEAVISTAMULTIPLICAR: TFMTBCDField
      FieldName = 'INDICEAVISTAMULTIPLICAR'
      Required = True
      Precision = 18
      Size = 6
    end
    object cdsListaMontarCustoINDICEAVISTADIVIDIR: TFMTBCDField
      FieldName = 'INDICEAVISTADIVIDIR'
      Required = True
      Precision = 18
      Size = 6
    end
    object cdsListaMontarCustoVALORVENDAAVISTA: TFMTBCDField
      FieldName = 'VALORVENDAAVISTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaMontarCustoDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
      Required = True
    end
    object cdsListaMontarCustoOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Required = True
    end
    object cdsListaMontarCustoIDREGIAO: TLargeintField
      FieldName = 'IDREGIAO'
      Required = True
    end
  end
  object dsListaMontarCusto: TDataSource
    AutoEdit = False
    DataSet = cdsListaMontarCusto
    Left = 334
    Top = 346
  end
  object sqlListaTabelaPrazoMedio: TSQLDataSet
    CommandText = 
      'select distinct'#13#10'          tp.IdMontarCusto,'#13#10'          m.descri' +
      'cao Modelo,'#13#10'          mn.descricao Markup,'#13#10'          tp.valorv' +
      'endaavista,'#13#10'          cf.prazomedio,'#13#10'          tp.valorvendapr' +
      'azomedio'#13#10'          from tabelapreco tp'#13#10'          inner join Mo' +
      'delo           m on m.id  = tp.idmodelo'#13#10'          inner join Ma' +
      'rkupNome      mn on mn.id = tp.idmodelo'#13#10'          inner join cu' +
      'stofinanceiro cf on cf.id = tp.idpagamento'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 449
    Top = 202
    object sqlListaTabelaPrazoMedioIDMONTARCUSTO: TLargeintField
      FieldName = 'IDMONTARCUSTO'
      Required = True
    end
    object sqlListaTabelaPrazoMedioMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object sqlListaTabelaPrazoMedioMARKUP: TStringField
      FieldName = 'MARKUP'
      Required = True
      Size = 40
    end
    object sqlListaTabelaPrazoMedioVALORVENDAAVISTA: TFMTBCDField
      FieldName = 'VALORVENDAAVISTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaTabelaPrazoMedioPRAZOMEDIO: TFMTBCDField
      FieldName = 'PRAZOMEDIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlListaTabelaPrazoMedioVALORVENDAPRAZOMEDIO: TFMTBCDField
      FieldName = 'VALORVENDAPRAZOMEDIO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dspListaTabelaPrazoMedio: TDataSetProvider
    DataSet = sqlListaTabelaPrazoMedio
    Left = 449
    Top = 248
  end
  object cdsListaTabelaPrazoMedio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaTabelaPrazoMedio'
    Left = 449
    Top = 296
    object cdsListaTabelaPrazoMedioIDMONTARCUSTO: TLargeintField
      FieldName = 'IDMONTARCUSTO'
      Required = True
    end
    object cdsListaTabelaPrazoMedioMODELO: TStringField
      FieldName = 'MODELO'
      Required = True
      Size = 50
    end
    object cdsListaTabelaPrazoMedioMARKUP: TStringField
      FieldName = 'MARKUP'
      Required = True
      Size = 40
    end
    object cdsListaTabelaPrazoMedioVALORVENDAAVISTA: TFMTBCDField
      FieldName = 'VALORVENDAAVISTA'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsListaTabelaPrazoMedioPRAZOMEDIO: TFMTBCDField
      FieldName = 'PRAZOMEDIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsListaTabelaPrazoMedioVALORVENDAPRAZOMEDIO: TFMTBCDField
      FieldName = 'VALORVENDAPRAZOMEDIO'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsListaTabelaPrazoMedio: TDataSource
    DataSet = cdsListaTabelaPrazoMedio
    Left = 449
    Top = 346
  end
  object sqlMateriaPrima: TSQLDataSet
    CommandText = 'select * from cad_gmp mp'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 824
    Top = 16
    object sqlMateriaPrimaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object sqlMateriaPrimaID_MP: TIntegerField
      FieldName = 'ID_MP'
      Required = True
    end
    object sqlMateriaPrimaID_GMP: TStringField
      FieldName = 'ID_GMP'
      Size = 5
    end
    object sqlMateriaPrimaCOD_GMP: TStringField
      FieldName = 'COD_GMP'
      Required = True
      Size = 5
    end
    object sqlMateriaPrimaCOD_INSUMO: TStringField
      FieldName = 'COD_INSUMO'
      Size = 5
    end
    object sqlMateriaPrimaCOD_CLASSE: TStringField
      FieldName = 'COD_CLASSE'
      Required = True
      Size = 5
    end
    object sqlMateriaPrimaID_SUB_GRUPO_MP: TIntegerField
      FieldName = 'ID_SUB_GRUPO_MP'
    end
    object sqlMateriaPrimaID_SUB_GRUPO_PC: TIntegerField
      FieldName = 'ID_SUB_GRUPO_PC'
    end
    object sqlMateriaPrimaCST: TStringField
      FieldName = 'CST'
      Required = True
      Size = 3
    end
    object sqlMateriaPrimaNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object sqlMateriaPrimaCOD_CTA: TStringField
      FieldName = 'COD_CTA'
    end
    object sqlMateriaPrimaCOD_PF: TStringField
      FieldName = 'COD_PF'
    end
    object sqlMateriaPrimaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object sqlMateriaPrimaUN: TStringField
      FieldName = 'UN'
      Required = True
      Size = 3
    end
    object sqlMateriaPrimaCOMP: TFMTBCDField
      FieldName = 'COMP'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaLARG: TFMTBCDField
      FieldName = 'LARG'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaESP_POL: TFMTBCDField
      FieldName = 'ESP_POL'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object sqlMateriaPrimaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaVL_ANTERIOR: TFMTBCDField
      FieldName = 'VL_ANTERIOR'
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaEST_ANTERIOR: TFMTBCDField
      FieldName = 'EST_ANTERIOR'
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
    end
    object sqlMateriaPrimaMINIMO: TFMTBCDField
      FieldName = 'MINIMO'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaMIN_COMP: TFMTBCDField
      FieldName = 'MIN_COMP'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaICMS: TFMTBCDField
      FieldName = 'ICMS'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMateriaPrimaIPI: TFMTBCDField
      FieldName = 'IPI'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMateriaPrimaCFL: TStringField
      FieldName = 'CFL'
      Required = True
      Size = 1
    end
    object sqlMateriaPrimaTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Required = True
      Size = 3
    end
    object sqlMateriaPrimaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 15
    end
    object sqlMateriaPrimaATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object sqlMateriaPrimaPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
      Required = True
      Size = 3
    end
    object sqlMateriaPrimaCUSTO: TIntegerField
      FieldName = 'CUSTO'
      Required = True
    end
    object sqlMateriaPrimaALIQ_FRETE: TFMTBCDField
      FieldName = 'ALIQ_FRETE'
      Required = True
      Precision = 18
      Size = 2
    end
    object sqlMateriaPrimaVL_COM_IPI: TFMTBCDField
      FieldName = 'VL_COM_IPI'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaVL_COM_IPI_FRETE: TFMTBCDField
      FieldName = 'VL_COM_IPI_FRETE'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaNOME_PRO_FORN: TStringField
      FieldName = 'NOME_PRO_FORN'
      Size = 60
    end
    object sqlMateriaPrimaCONSUMO: TIntegerField
      FieldName = 'CONSUMO'
      Required = True
    end
    object sqlMateriaPrimaPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 18
      Size = 6
    end
    object sqlMateriaPrimaVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      Required = True
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaCOMP_INIC: TFMTBCDField
      FieldName = 'COMP_INIC'
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaLARG_INIC: TFMTBCDField
      FieldName = 'LARG_INIC'
      Precision = 18
      Size = 4
    end
    object sqlMateriaPrimaQTDE_PILHA: TIntegerField
      FieldName = 'QTDE_PILHA'
    end
    object sqlMateriaPrimaNUM_PILHA: TIntegerField
      FieldName = 'NUM_PILHA'
    end
    object sqlMateriaPrimaCRITICIDADE: TIntegerField
      FieldName = 'CRITICIDADE'
    end
    object sqlMateriaPrimaPRANCHA: TStringField
      FieldName = 'PRANCHA'
      Size = 10
    end
    object sqlMateriaPrimaNARRATIVA: TStringField
      FieldName = 'NARRATIVA'
      Size = 300
    end
    object sqlMateriaPrimaLADO: TStringField
      FieldName = 'LADO'
      FixedChar = True
      Size = 1
    end
    object sqlMateriaPrimaINS_PECA: TStringField
      FieldName = 'INS_PECA'
      FixedChar = True
      Size = 1
    end
    object sqlMateriaPrimaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
  end
  object dspMateriaPrima: TDataSetProvider
    DataSet = sqlMateriaPrima
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 824
    Top = 64
  end
  object cdsMateriaPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMateriaPrima'
    Left = 824
    Top = 112
    object cdsMateriaPrimaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsMateriaPrimaID_MP: TIntegerField
      FieldName = 'ID_MP'
      Required = True
    end
    object cdsMateriaPrimaID_GMP: TStringField
      FieldName = 'ID_GMP'
      Size = 5
    end
    object cdsMateriaPrimaCOD_GMP: TStringField
      FieldName = 'COD_GMP'
      Required = True
      Size = 5
    end
    object cdsMateriaPrimaCOD_INSUMO: TStringField
      FieldName = 'COD_INSUMO'
      Size = 5
    end
    object cdsMateriaPrimaCOD_CLASSE: TStringField
      FieldName = 'COD_CLASSE'
      Required = True
      Size = 5
    end
    object cdsMateriaPrimaID_SUB_GRUPO_MP: TIntegerField
      FieldName = 'ID_SUB_GRUPO_MP'
    end
    object cdsMateriaPrimaID_SUB_GRUPO_PC: TIntegerField
      FieldName = 'ID_SUB_GRUPO_PC'
    end
    object cdsMateriaPrimaCST: TStringField
      FieldName = 'CST'
      Required = True
      Size = 3
    end
    object cdsMateriaPrimaNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object cdsMateriaPrimaCOD_CTA: TStringField
      FieldName = 'COD_CTA'
    end
    object cdsMateriaPrimaCOD_PF: TStringField
      FieldName = 'COD_PF'
    end
    object cdsMateriaPrimaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object cdsMateriaPrimaUN: TStringField
      FieldName = 'UN'
      Required = True
      Size = 3
    end
    object cdsMateriaPrimaCOMP: TFMTBCDField
      FieldName = 'COMP'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaLARG: TFMTBCDField
      FieldName = 'LARG'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaESP_POL: TFMTBCDField
      FieldName = 'ESP_POL'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Required = True
    end
    object cdsMateriaPrimaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaVL_ANTERIOR: TFMTBCDField
      FieldName = 'VL_ANTERIOR'
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaEST_ANTERIOR: TFMTBCDField
      FieldName = 'EST_ANTERIOR'
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaDT_MOVIMENTO: TDateField
      FieldName = 'DT_MOVIMENTO'
    end
    object cdsMateriaPrimaMINIMO: TFMTBCDField
      FieldName = 'MINIMO'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaMIN_COMP: TFMTBCDField
      FieldName = 'MIN_COMP'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaICMS: TFMTBCDField
      FieldName = 'ICMS'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsMateriaPrimaIPI: TFMTBCDField
      FieldName = 'IPI'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsMateriaPrimaCFL: TStringField
      FieldName = 'CFL'
      Required = True
      Size = 1
    end
    object cdsMateriaPrimaTIPO_SAIDA: TStringField
      FieldName = 'TIPO_SAIDA'
      Required = True
      Size = 3
    end
    object cdsMateriaPrimaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 15
    end
    object cdsMateriaPrimaATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      Size = 3
    end
    object cdsMateriaPrimaPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
      Required = True
      Size = 3
    end
    object cdsMateriaPrimaCUSTO: TIntegerField
      FieldName = 'CUSTO'
      Required = True
    end
    object cdsMateriaPrimaALIQ_FRETE: TFMTBCDField
      FieldName = 'ALIQ_FRETE'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsMateriaPrimaVL_COM_IPI: TFMTBCDField
      FieldName = 'VL_COM_IPI'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaVL_COM_IPI_FRETE: TFMTBCDField
      FieldName = 'VL_COM_IPI_FRETE'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaNOME_PRO_FORN: TStringField
      FieldName = 'NOME_PRO_FORN'
      Size = 60
    end
    object cdsMateriaPrimaCONSUMO: TIntegerField
      FieldName = 'CONSUMO'
      Required = True
    end
    object cdsMateriaPrimaPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 18
      Size = 6
    end
    object cdsMateriaPrimaVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaCOMP_INIC: TFMTBCDField
      FieldName = 'COMP_INIC'
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaLARG_INIC: TFMTBCDField
      FieldName = 'LARG_INIC'
      Precision = 18
      Size = 4
    end
    object cdsMateriaPrimaQTDE_PILHA: TIntegerField
      FieldName = 'QTDE_PILHA'
    end
    object cdsMateriaPrimaNUM_PILHA: TIntegerField
      FieldName = 'NUM_PILHA'
    end
    object cdsMateriaPrimaCRITICIDADE: TIntegerField
      FieldName = 'CRITICIDADE'
    end
    object cdsMateriaPrimaPRANCHA: TStringField
      FieldName = 'PRANCHA'
      Size = 10
    end
    object cdsMateriaPrimaNARRATIVA: TStringField
      FieldName = 'NARRATIVA'
      Size = 300
    end
    object cdsMateriaPrimaLADO: TStringField
      FieldName = 'LADO'
      FixedChar = True
      Size = 1
    end
    object cdsMateriaPrimaINS_PECA: TStringField
      FieldName = 'INS_PECA'
      FixedChar = True
      Size = 1
    end
    object cdsMateriaPrimaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
  end
  object dsMateriaPrima: TDataSource
    DataSet = cdsMateriaPrima
    Left = 824
    Top = 160
  end
  object FDConexao: TFDConnection
    Params.Strings = (
      'ConnectionDef=BeMoreWebSICIC3.0')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConexaoBeforeConnect
    Left = 888
    Top = 304
  end
  object FDQueryLucroPedido: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select'
      '  Id,'
      '  IdPedido,'
      '  IdPessoa,'
      '  NomePessoa,'
      '  Regiao,'
      '  Telefone,'
      '  '
      '  DataPedido,'
      '  ValorPedido,'
      ''
      '  TotalCustoSemMarkup,'
      '  CustoMarkup,'
      '  TotalCustoComMarkup,'
      '  AliquotaFinal,'
      '  DiferencaPedido,'
      ''
      '  IdProduto,'
      '  NomeProduto,'
      '  ValorCustoUnitario,'
      '  ValorCustoUnitarioMarkup,'
      '  ValorCustoUnitarioMaisMarkup,'
      '  ValorUnitarioVendido,'
      '  Qtde,'
      '  CustoItensSemMarkup,'
      '  CustoItensMarkup,'
      '  CustoItensComMarkup,'
      '  SubTotalItens,'
      '  (SubTotalItens - CustoItensComMarkup) DiferencaItens,'
      '  AliquotaItem'
      '  '
      '  from'
      '   ('
      '     select'
      '       lp.Id,'
      '       p.IdPessoa,'
      '       c.Razao_Social NomePessoa,'
      
        '       case when ((C.Fone is null) or (c.Fone='#39#39')) then c.Celula' +
        'r else c.Fone'
      '       end Telefone,'
      '       r.descricao Regiao,'
      '       lp.IdPedido,'
      '       p.dt_cadastro DataPedido,'
      '       p.Total ValorPedido,'
      '       pro.id IdProduto,'
      '       pro.descricao NomeProduto,'
      '       lp.ValorUnitario ValorUnitarioVendido,'
      '       lp.Qtde,'
      '       lp.SomarItem SubTotalItens,'
      '       lp.ValorCusto ValorCustoUnitario,'
      '       lp.ValorCustoMarkup ValorCustoUnitarioMarkup,'
      '       lp.valorcustocommarkup ValorCustoUnitarioMaisMarkup,'
      '       lp.SomarCusto CustoItensSemMarkup,'
      '       lp.SomarValorCustoMarkup CustoItensComMarkup,'
      '       lp.AliquotaItem,'
      '       lp.AliquotaFinal,'
      '    ('
      '      select'
      
        '        coalesce(cast(sum(lp1.SomarCusto) as numeric(10,2)),0) T' +
        'otalCustoSemMarkup'
      '      from LucroPedido lp1'
      '      where lp1.idpedido = p.Id'
      '    ),'
      '    '
      '    ('
      '      select'
      
        '        coalesce(cast(sum(lp1.valorcustomarkup* qtde) as numeric' +
        '(10,2)),0) CustoMarkup'
      '      from LucroPedido lp1'
      '      where lp1.idpedido = p.Id'
      '    ),'
      '    '
      '    ('
      '      select'
      
        '        coalesce(cast(sum(lp1.somarvalorcustomarkup) as numeric(' +
        '10,2)),0) TotalCustoComMarkup'
      '      from LucroPedido lp1'
      '      where lp1.idpedido = p.Id'
      '    ),'
      ''
      '    ('
      '      select'
      
        '        coalesce(cast(sum(lp1.valorcustomarkup* qtde) as numeric' +
        '(10,2)),0) CustoItensMarkup'
      '      from LucroPedido lp1'
      '      where lp1.idpedido = p.Id'
      '      and lp1.idproduto = lp.idproduto'
      '    ),'
      '    '
      '    ('
      '      select'
      '        p.Total-sum(lp2.SomarValorCustoMarkup) DiferencaPedido'
      '      from LucroPedido lp2'
      '      where lp2.idpedido = p.Id'
      '    )'
      '    '
      ''
      'from cad_ped P'
      'inner join LucroPedido  LP on LP.idpedido = P.Id'
      'inner join Cad_Pro     pro on pro.id      = LP.idproduto'
      'inner join Cad_Cli       c on c.id        = p.idpessoa'
      'inner join Cad_Regiao    r on r.id        = c.cod_rep'
      '   )'
      'where DataPedido between '#39'01.08.2021'#39'and '#39'25.08.2021'#39
      'and IdPedido=37023'
      
        'group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,2' +
        '2,23,24,25,26'
      '       ')
    Left = 888
    Top = 360
    object FDQueryLucroPedidoID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryLucroPedidoIDPEDIDO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'IDPEDIDO'
      Origin = 'IDPEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryLucroPedidoIDPESSOA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'IDPESSOA'
      Origin = 'IDPESSOA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryLucroPedidoNOMEPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPESSOA'
      Origin = 'NOMEPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQueryLucroPedidoREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQueryLucroPedidoTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object FDQueryLucroPedidoDATAPEDIDO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
      ProviderFlags = []
      ReadOnly = True
      EditMask = '99/99/9999'
    end
    object FDQueryLucroPedidoVALORPEDIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPEDIDO'
      Origin = 'VALORPEDIDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoTOTALCUSTOSEMMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCUSTOSEMMARKUP'
      Origin = 'TOTALCUSTOSEMMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoCUSTOMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMARKUP'
      Origin = 'CUSTOMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoTOTALCUSTOCOMMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCUSTOCOMMARKUP'
      Origin = 'TOTALCUSTOCOMMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoALIQUOTAFINAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQUOTAFINAL'
      Origin = 'ALIQUOTAFINAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
    end
    object FDQueryLucroPedidoDIFERENCAPEDIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIFERENCAPEDIDO'
      Origin = 'DIFERENCAPEDIDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoIDPRODUTO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryLucroPedidoNOMEPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQueryLucroPedidoVALORCUSTOUNITARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCUSTOUNITARIO'
      Origin = 'VALORCUSTOUNITARIO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoVALORCUSTOUNITARIOMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCUSTOUNITARIOMARKUP'
      Origin = 'VALORCUSTOUNITARIOMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoVALORCUSTOUNITARIOMAISMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCUSTOUNITARIOMAISMARKUP'
      Origin = 'VALORCUSTOUNITARIOMAISMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoVALORUNITARIOVENDIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORUNITARIOVENDIDO'
      Origin = 'VALORUNITARIOVENDIDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoQTDE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoCUSTOITENSSEMMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOITENSSEMMARKUP'
      Origin = 'CUSTOITENSSEMMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoCUSTOITENSMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOITENSMARKUP'
      Origin = 'CUSTOITENSMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoCUSTOITENSCOMMARKUP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOITENSCOMMARKUP'
      Origin = 'CUSTOITENSCOMMARKUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoSUBTOTALITENS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTALITENS'
      Origin = 'SUBTOTALITENS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object FDQueryLucroPedidoALIQUOTAITEM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQUOTAITEM'
      Origin = 'ALIQUOTAITEM'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Precision = 18
    end
    object FDQueryLucroPedidoDIFERENCAITENS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIFERENCAITENS'
      Origin = 'DIFERENCAITENS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsLucroPedido: TDataSource
    DataSet = FDQueryLucroPedido
    Left = 888
    Top = 416
  end
  object FDQuery1: TFDQuery
    Connection = FDConexao
    Left = 568
    Top = 248
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 568
    Top = 304
  end
end
