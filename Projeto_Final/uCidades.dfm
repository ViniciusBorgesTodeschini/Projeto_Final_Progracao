object frmCidades: TfrmCidades
  Left = 0
  Top = 0
  Caption = 'Cidades'
  ClientHeight = 322
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 145
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    object Label_Codigo: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Label_Nome: TLabel
      Left = 16
      Top = 53
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit_Nome
    end
    object Label_Sigla: TLabel
      Left = 16
      Top = 96
      Width = 22
      Height = 13
      Caption = 'Sigla'
      FocusControl = DBEdit_Sigla
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 32
      Width = 57
      Height = 21
      DataField = 'ID'
      DataSource = DataSource_Cidades
      TabOrder = 0
    end
    object DBEdit_Nome: TDBEdit
      Left = 16
      Top = 72
      Width = 380
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource_Cidades
      TabOrder = 1
    end
    object DBEdit_Sigla: TDBEdit
      Left = 16
      Top = 112
      Width = 30
      Height = 21
      DataField = 'SIGLA'
      DataSource = DataSource_Cidades
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 202
    Width = 414
    Height = 120
    Align = alBottom
    DataSource = DataSource_Cidades
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnNovo: TButton
    Left = 24
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 128
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Default = True
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 232
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnExcluir: TButton
    Left = 333
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object MainMenu1: TMainMenu
    Left = 280
    Top = 16
    object Principal1: TMenuItem
      Caption = 'In'#237'cio'
      OnClick = Principal1Click
    end
    object Pilotos1: TMenuItem
      Caption = 'Pilotos'
      OnClick = Pilotos1Click
    end
    object reinos1: TMenuItem
      Caption = 'Treinos'
      OnClick = reinos1Click
    end
  end
  object DataSource_Cidades: TDataSource
    DataSet = DataModule1.FDTable_Cidades
    OnStateChange = DataSource_CidadesStateChange
    Left = 352
    Top = 16
  end
end
