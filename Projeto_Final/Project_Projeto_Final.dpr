program Project_Projeto_Final;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uCidades in 'uCidades.pas' {frmCidades},
  uPilotos in 'uPilotos.pas' {frmPilotos},
  uTreinos in 'uTreinos.pas' {frmTreinos},
  uDatabase in 'uDatabase.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInicio, frmInicio);
  Application.CreateForm(TfrmCidades, frmCidades);
  Application.CreateForm(TfrmPilotos, frmPilotos);
  Application.CreateForm(TfrmTreinos, frmTreinos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
