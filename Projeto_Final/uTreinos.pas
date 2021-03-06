unit uTreinos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmTreinos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Incio1: TMenuItem;
    Incio2: TMenuItem;
    Pilotos1: TMenuItem;
    Label_cod_treino: TLabel;
    DBEdit_cod_treino: TDBEdit;
    DataSource_Treinos: TDataSource;
    Label_cod_piloto: TLabel;
    DBEdit_cod_piloto: TDBEdit;
    Label_carro: TLabel;
    DBEdit_carro: TDBEdit;
    Label_qtd_voltas: TLabel;
    DBEdit_qtd_voltas: TDBEdit;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure Incio2Click(Sender: TObject);
    procedure Incio1Click(Sender: TObject);
    procedure Pilotos1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure AtivaBotoesTreinos();
    procedure DataSource_TreinosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTreinos: TfrmTreinos;

implementation

{$R *.dfm}

uses uCidades, uPilotos, uPrincipal;

procedure TfrmTreinos.btnCancelarClick(Sender: TObject);
begin
  DataSource_Treinos.DataSet.Cancel;
end;

procedure TfrmTreinos.btnExcluirClick(Sender: TObject);
begin
  if(Application.MessageBox('Tem certeza que deseja excluir o registro?',
                            'Aviso',
                            MB_ICONQUESTION+MB_YESNO) = IDNO) then Exit;
  DataSource_Treinos.DataSet.Delete;
end;

procedure TfrmTreinos.btnNovoClick(Sender: TObject);
begin
  DataSource_Treinos.DataSet.Append;
  DBEdit_cod_treino.SetFocus;
end;

procedure TfrmTreinos.btnSalvarClick(Sender: TObject);
begin
  DataSource_Treinos.DataSet.Post;
end;

procedure TfrmTreinos.DataSource_TreinosStateChange(Sender: TObject);
begin
  AtivaBotoesTreinos;
end;

procedure TfrmTreinos.Incio1Click(Sender: TObject);
begin
 frmInicio.Show;
end;

procedure TfrmTreinos.Incio2Click(Sender: TObject);
begin
 frmCidades.Show;
end;

procedure TfrmTreinos.Pilotos1Click(Sender: TObject);
begin
 frmPilotos.Show;
end;

procedure TfrmTreinos.AtivaBotoesTreinos;
begin
  //Ativa os bot?es de acordo com as intera??es do usu?rio
  btnNovo.Enabled := DataSource_Treinos.State in [dsBrowse];
  btnSalvar.Enabled := DataSource_Treinos.State in [dsEdit, dsInsert];
  btnCancelar.Enabled := DataSource_Treinos.State in [dsEdit, dsInsert];
  btnExcluir.Enabled := DataSource_Treinos.State in [dsBrowse];
end;

end.
