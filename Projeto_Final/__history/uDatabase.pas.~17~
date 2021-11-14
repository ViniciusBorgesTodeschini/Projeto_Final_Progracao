unit uDatabase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Phys.SQLiteWrapper.Stat, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDTable_Cidades: TFDTable;
    FDTable_Pilotos: TFDTable;
    FDTable_Treinos: TFDTable;
    FDConnection_SQLite_DB: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery_Cidades: TFDQuery;
    FDQuery_Pilotos: TFDQuery;
    FDQuery_Treinos: TFDQuery;
    FDTable_CidadesID: TIntegerField;
    FDTable_CidadesNOME: TStringField;
    FDTable_CidadesSIGLA: TStringField;
    FDTable_PilotosID: TIntegerField;
    FDTable_PilotosNOME: TStringField;
    FDTable_PilotosTELEFONE: TStringField;
    FDTable_PilotosID_CIDADE: TIntegerField;
    FDTable_PilotosENDERECO: TStringField;
    FDTable_Pilotosnome_cidade: TStringField;
    FDTable_TreinosID: TIntegerField;
    FDTable_TreinosID_PILOTO: TIntegerField;
    FDTable_TreinosDATA_CADASTRO: TDateField;
    FDTable_TreinosNUMERO_CARRO: TIntegerField;
    FDTable_TreinosQTD_VOLTAS: TIntegerField;
    FDTable_TreinosNome_Piloto: TStringField;
    FDTable_TreinosTEMPO_VOLTAS: TLargeintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnection_SQLite_DBAfterConnect(Sender: TObject);
    procedure FDConnection_SQLite_DBBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  FDConnection_SQLite_DB.Connected := true;
end;

procedure TDataModule1.FDConnection_SQLite_DBAfterConnect(Sender: TObject);
begin
  FDQuery_Cidades.ExecSQL;
  FDTable_Cidades.Active := true;

  FDQuery_Pilotos.ExecSQL;
  FDTable_Pilotos.Active := True;

  FDQuery_Treinos.ExecSQL;
  FDTable_Treinos.Active := true;
end;

procedure TDataModule1.FDConnection_SQLite_DBBeforeConnect(Sender: TObject);
begin
  FDConnection_SQLite_DB.Params.Database := ExtractFilePath(ParamStr(0)) + 'dados.sdb';
end;

end.
