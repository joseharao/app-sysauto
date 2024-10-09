object Dados: TDados
  OldCreateOrder = False
  Height = 344
  Width = 630
  object DB: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver140.' +
        'bpl'
      'VendorLib=fbclient.DLL')
    VendorLib = 'fbclient.dll'
    Left = 32
    Top = 24
  end
  object sqlBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DB
    Left = 88
    Top = 24
  end
  object sqlUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    SQLConnection = DB
    Left = 152
    Top = 32
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 205
    Top = 32
    object cdsUsuarioCOD_USU: TIntegerField
      FieldName = 'COD_USU'
      Required = True
    end
    object cdsUsuarioDAT_CAD: TDateField
      FieldName = 'DAT_CAD'
    end
    object cdsUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 80
    end
    object cdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 200
    end
    object cdsUsuarioPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 1
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = sqlUsuario
    Left = 261
    Top = 32
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 314
    Top = 34
  end
  object sqlParam: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PARAM')
    SQLConnection = DB
    Left = 368
    Top = 32
    object sqlParamLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
  end
  object cdsParam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParam'
    Left = 421
    Top = 32
    object cdsParamLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
  end
  object dspParam: TDataSetProvider
    DataSet = sqlParam
    UpdateMode = upWhereKeyOnly
    Left = 477
    Top = 32
  end
  object dsParam: TDataSource
    DataSet = cdsParam
    Left = 530
    Top = 34
  end
  object sqlComprador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        'C.COD_COMP,   C.NOME || '#39' - '#39' || C.ENDERECO || '#39' - '#39' || C.CIDADE' +
        ' AS COMPRADOR'
      'FROM COMPRADOR C ORDER BY C.NOME')
    SQLConnection = DB
    Left = 40
    Top = 96
  end
  object cdsComprador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComprador'
    Left = 93
    Top = 96
    object cdsCompradorCOD_COMP: TIntegerField
      FieldName = 'COD_COMP'
      Required = True
    end
    object cdsCompradorCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 256
    end
  end
  object dspComprador: TDataSetProvider
    DataSet = sqlComprador
    Left = 149
    Top = 96
  end
  object dsComprador: TDataSource
    DataSet = cdsComprador
    Left = 202
    Top = 98
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 325
    Top = 104
    object cdsVendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
    object cdsVendedorCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Required = True
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 434
    Top = 106
  end
  object dspVendedor: TDataSetProvider
    DataSet = sqlVendedor
    Left = 381
    Top = 104
  end
  object sqlVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        '   C.COD_COMP AS COD_VEND, C.NOME || '#39' - '#39' || C.ENDERECO || '#39' - ' +
        #39' || C.CIDADE AS VENDEDOR'
      'FROM COMPRADOR C ORDER BY C.NOME')
    SQLConnection = DB
    Left = 272
    Top = 104
  end
  object cdsVeiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVeiculo'
    Left = 93
    Top = 160
    object cdsVeiculoCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      Required = True
    end
    object cdsVeiculoVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 359
    end
  end
  object dsVeiculo: TDataSource
    DataSet = cdsVeiculo
    Left = 202
    Top = 162
  end
  object dspVeiculo: TDataSetProvider
    DataSet = sqlVeiculo
    Left = 149
    Top = 160
  end
  object sqlVeiculo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        '   C.COD_VEICULO, C.DESCRICAO || '#39' - '#39' || COALESCE(C.MARCA, '#39#39') ' +
        '|| '#39' - '#39' || COALESCE(C.MARCA, '#39#39') || '#39' - '#39' || COALESCE(C.PLACA, ' +
        #39#39') AS VEICULO'
      'FROM VEICULOS C ORDER BY C.DESCRICAO')
    SQLConnection = DB
    Left = 40
    Top = 160
  end
end
