unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TfrmInicio = class(TForm)
    MainMenu1: TMainMenu;
    Cidades1: TMenuItem;
    Cidades2: TMenuItem;
    Piltos1: TMenuItem;
    Panel1: TPanel;
    sbCidade: TSpeedButton;
    sbPiloto: TSpeedButton;
    sbTreino: TSpeedButton;
    cmbTema: TComboBox;
    lblTema: TLabel;
    procedure Cidades1Click(Sender: TObject);
    procedure Cidades2Click(Sender: TObject);
    procedure Piltos1Click(Sender: TObject);
    procedure sbCidadeClick(Sender: TObject);
    procedure sbPilotoClick(Sender: TObject);
    procedure sbTreinoClick(Sender: TObject);
    procedure cmbTemaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

{$R *.dfm}

uses uCidades, uPilotos, uTreinos;

procedure TfrmInicio.Cidades1Click(Sender: TObject);
begin
  frmCidades.Show;
end;

procedure TfrmInicio.Cidades2Click(Sender: TObject);
begin
  frmTreinos.Show;
end;

procedure TfrmInicio.cmbTemaChange(Sender: TObject);
begin
  //Customização pessoal
  if cmbTema.ItemIndex = 1 then
  begin
    frmInicio.Color := clBlack;
    frmCidades.Color := clBlack;
    frmPilotos.Color := clBlack;
    frmTreinos.Color := clBlack;
  end
  else
  begin
    frmInicio.Color := clWindow;
    frmCidades.Color := clWindow;
    frmPilotos.Color := clWindow;
    frmTreinos.Color := clWindow;
  end;


end;

procedure TfrmInicio.Piltos1Click(Sender: TObject);
begin
 frmPilotos.Show;
end;

procedure TfrmInicio.sbCidadeClick(Sender: TObject);
begin
  frmCidades.Show;
end;

procedure TfrmInicio.sbPilotoClick(Sender: TObject);
begin
  frmPilotos.Show;
end;

procedure TfrmInicio.sbTreinoClick(Sender: TObject);
begin
  frmTreinos.Show;
end;

end.
