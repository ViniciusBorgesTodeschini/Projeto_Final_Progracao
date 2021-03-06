unit uPilotos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPilotos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Incio1: TMenuItem;
    Incio2: TMenuItem;
    reinos1: TMenuItem;
    Label_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    DataSource_Piltos: TDataSource;
    Label_Nome: TLabel;
    DBEdit_Nome: TDBEdit;
    Label_Telefone: TLabel;
    DBEdit_Telefone: TDBEdit;
    Label_cod_cidade: TLabel;
    DBEdit_cod_cidade: TDBEdit;
    Label_Endereco: TLabel;
    DBEdit_Endereco: TDBEdit;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Incio1Click(Sender: TObject);
    procedure Incio2Click(Sender: TObject);
    procedure reinos1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure AtivaBotoesPilotos();
    procedure DataSource_PiltosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPilotos: TfrmPilotos;

implementation

{$R *.dfm}

uses uCidades, uPrincipal, uTreinos;

procedure TfrmPilotos.btnCancelarClick(Sender: TObject);
begin
  DataSource_Piltos.DataSet.Cancel;
end;

procedure TfrmPilotos.btnExcluirClick(Sender: TObject);
begin
  if(Application.MessageBox('Tem certeza que deseja excluir o registro?',
                            'Aviso',
                            MB_ICONQUESTION+MB_YESNO) = IDNO) then Exit;
  DataSource_Piltos.DataSet.Delete;
end;

procedure TfrmPilotos.btnNovoClick(Sender: TObject);
begin
  DataSource_Piltos.DataSet.Append;
  DBEdit_Codigo.SetFocus;
end;

procedure TfrmPilotos.btnSalvarClick(Sender: TObject);
begin
  DataSource_Piltos.DataSet.Post;
end;

procedure TfrmPilotos.DataSource_PiltosStateChange(Sender: TObject);
begin
  AtivaBotoesPilotos;
end;

procedure TfrmPilotos.Incio1Click(Sender: TObject);
begin
 frmInicio.Show;
end;

procedure TfrmPilotos.Incio2Click(Sender: TObject);
begin
 frmCidades.Show;
end;

procedure TfrmPilotos.reinos1Click(Sender: TObject);
begin
 frmTreinos.Show;
end;

procedure TfrmPilotos.AtivaBotoesPilotos;
begin
  //Ativa os bot?es de acordo com as intera??es do usu?rio
  btnNovo.Enabled := DataSource_Piltos.State in [dsBrowse];
  btnSalvar.Enabled := DataSource_Piltos.State in [dsEdit, dsInsert];
  btnCancelar.Enabled := DataSource_Piltos.State in [dsEdit, dsInsert];
  btnExcluir.Enabled := DataSource_Piltos.State in [dsBrowse];
end;

end.
