object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 318
  Width = 304
  object FDTable_Cidades: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_SQLite_DB
    TableName = 'CIDADES'
    Left = 200
    Top = 104
    object FDTable_CidadesID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_CidadesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDTable_CidadesSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
  end
  object FDTable_Pilotos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_SQLite_DB
    TableName = 'PILOTOS'
    Left = 200
    Top = 184
    object FDTable_PilotosID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_PilotosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDTable_PilotosTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)00000-0000;1;_'
    end
    object FDTable_PilotosID_CIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDTable_PilotosENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 50
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDTable_Pilotosnome_cidade: TStringField
      DisplayLabel = 'Nome da Cidade'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'nome_cidade'
      LookupDataSet = FDTable_Cidades
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CIDADE'
      Size = 100
      Lookup = True
    end
  end
  object FDTable_Treinos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_SQLite_DB
    TableName = 'TREINOS3'
    Left = 200
    Top = 256
    object FDTable_TreinosID: TIntegerField
      DisplayLabel = 'C'#243'digo do Treino'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_TreinosID_PILOTO: TIntegerField
      DisplayLabel = 'C'#243'digo do Piloto'
      FieldName = 'ID_PILOTO'
      Origin = 'ID_PILOTO'
    end
    object FDTable_TreinosDATA_CADASTRO: TStringField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object FDTable_TreinosNUMERO_CARRO: TIntegerField
      DisplayLabel = 'N'#250'mero do Carro'
      FieldName = 'NUMERO_CARRO'
      Origin = 'NUMERO_CARRO'
    end
    object FDTable_TreinosQTD_VOLTAS: TIntegerField
      DisplayLabel = 'Quantidade de Voltas'
      FieldName = 'QTD_VOLTAS'
      Origin = 'QTD_VOLTAS'
    end
    object FDTable_TreinosTEMPO_VOLTAS: TStringField
      DisplayLabel = 'Tempo das Voltas'
      FieldName = 'TEMPO_VOLTAS'
      Origin = 'TEMPO_VOLTAS'
      EditMask = '!90:00:00;1;_'
      Size = 10
    end
    object FDTable_Treinosnome_piloto: TStringField
      DisplayLabel = 'Nome do Piloto'
      FieldKind = fkLookup
      FieldName = 'nome_piloto'
      LookupDataSet = FDTable_Pilotos
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PILOTO'
      Size = 100
      Lookup = True
    end
  end
  object FDConnection_SQLite_DB: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\vini_\Documents\Embarcadero\Studio\Projects\Pr' +
        'ojeto_Final\conexaoDB'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection_SQLite_DBAfterConnect
    BeforeConnect = FDConnection_SQLite_DBBeforeConnect
    Left = 56
    Top = 16
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 200
    Top = 16
  end
  object FDQuery_Cidades: TFDQuery
    Connection = FDConnection_SQLite_DB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS CIDADES'
      '('
      ' ID INTEGER,'
      ' NOME VARCHAR(50),'
      ' SIGLA VARCHAR(3),'
      ' PRIMARY KEY(ID)'
      ')')
    Left = 48
    Top = 104
  end
  object FDQuery_Pilotos: TFDQuery
    Connection = FDConnection_SQLite_DB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS PILOTOS'
      '('
      ' ID INTEGER,'
      ' NOME VARCHAR(100),'
      ' TELEFONE VARCHAR(20),'
      ' ID_CIDADE INTEGER,'
      ' ENDERECO VARCHAR(100),'
      ' PRIMARY KEY(ID)'
      ')')
    Left = 48
    Top = 184
  end
  object FDQuery_Treinos: TFDQuery
    Connection = FDConnection_SQLite_DB
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS TREINOS3'
      '('
      ' ID INTEGER,'
      ' ID_PILOTO INTEGER,'
      ' DATA_CADASTRO VARCHAR(10),'
      ' NUMERO_CARRO INTEGER,'
      ' QTD_VOLTAS INTEGER,'
      ' TEMPO_VOLTAS VARCHAR(10),'
      ' PRIMARY KEY(ID)'
      ')')
    Left = 48
    Top = 256
  end
end
