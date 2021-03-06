unit uCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCidades = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Principal1: TMenuItem;
    Pilotos1: TMenuItem;
    reinos1: TMenuItem;
    Label_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    DataSource_Cidades: TDataSource;
    Label_Nome: TLabel;
    DBEdit_Nome: TDBEdit;
    Label_Sigla: TLabel;
    DBEdit_Sigla: TDBEdit;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    procedure Principal1Click(Sender: TObject);
    procedure Pilotos1Click(Sender: TObject);
    procedure reinos1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure AtivaBotoesCidade();
    procedure DataSource_CidadesStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

uses uPilotos, uPrincipal, uTreinos, uDatabase;

procedure TfrmCidades.btnCancelarClick(Sender: TObject);
begin
  DataSource_Cidades.DataSet.Cancel;
end;

procedure TfrmCidades.btnExcluirClick(Sender: TObject);
begin
  if(Application.MessageBox('Tem certeza que deseja excluir o registro?',
                            'Aviso',
                            MB_ICONQUESTION+MB_YESNO) = IDNO) then Exit;
  DataSource_Cidades.DataSet.Delete;
end;

procedure TfrmCidades.btnNovoClick(Sender: TObject);
begin
  DataSource_Cidades.DataSet.Append;
  DBEdit_Codigo.SetFocus;
end;

procedure TfrmCidades.btnSalvarClick(Sender: TObject);
begin
  DataSource_Cidades.DataSet.Post;
end;

procedure TfrmCidades.DataSource_CidadesStateChange(Sender: TObject);
begin
  AtivaBotoesCidade;
end;

procedure TfrmCidades.Pilotos1Click(Sender: TObject);
begin
 frmPilotos.Show;
end;

procedure TfrmCidades.Principal1Click(Sender: TObject);
begin
 frmCidades.Show;
end;

procedure TfrmCidades.reinos1Click(Sender: TObject);
begin
 frmTreinos.Show;
end;

procedure TfrmCidades.AtivaBotoesCidade;
begin
  //Ativa os bot?es de acordo com as intera??es do usu?rio
  btnNovo.Enabled := DataSource_Cidades.State in [dsBrowse];
  btnSalvar.Enabled := DataSource_Cidades.State in [dsEdit, dsInsert];
  btnCancelar.Enabled := DataSource_Cidades.State in [dsEdit, dsInsert];
  btnExcluir.Enabled := DataSource_Cidades.State in [dsBrowse];
end;

end.
