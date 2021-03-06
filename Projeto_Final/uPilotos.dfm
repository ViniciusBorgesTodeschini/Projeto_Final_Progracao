object frmPilotos: TfrmPilotos
  Left = 0
  Top = 0
  Caption = 'Pilotos'
  ClientHeight = 415
  ClientWidth = 528
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
    Width = 528
    Height = 225
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    object Label_Codigo: TLabel
      Left = 16
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Label_Nome: TLabel
      Left = 16
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit_Nome
    end
    object Label_Telefone: TLabel
      Left = 16
      Top = 96
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit_Telefone
    end
    object Label_cod_cidade: TLabel
      Left = 16
      Top = 136
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit_cod_cidade
    end
    object Label_Endereco: TLabel
      Left = 16
      Top = 176
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit_Endereco
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 32
      Width = 50
      Height = 21
      DataField = 'ID'
      DataSource = DataSource_Piltos
      TabOrder = 0
    end
    object DBEdit_Nome: TDBEdit
      Left = 16
      Top = 72
      Width = 500
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource_Piltos
      TabOrder = 1
    end
    object DBEdit_Telefone: TDBEdit
      Left = 16
      Top = 112
      Width = 136
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DataSource_Piltos
      MaxLength = 14
      TabOrder = 2
    end
    object DBEdit_cod_cidade: TDBEdit
      Left = 16
      Top = 149
      Width = 40
      Height = 21
      DataField = 'ID_CIDADE'
      DataSource = DataSource_Piltos
      TabOrder = 3
    end
    object DBEdit_Endereco: TDBEdit
      Left = 16
      Top = 192
      Width = 500
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DataSource_Piltos
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 67
      Top = 149
      Width = 145
      Height = 21
      DataField = 'nome_cidade'
      DataSource = DataSource_Piltos
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 284
    Width = 528
    Height = 131
    Align = alBottom
    DataSource = DataSource_Piltos
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnNovo: TButton
    Left = 16
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 116
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Default = True
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 216
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnExcluir: TButton
    Left = 313
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object MainMenu1: TMainMenu
    Left = 360
    Top = 8
    object Incio1: TMenuItem
      Caption = 'In'#237'cio'
      OnClick = Incio1Click
    end
    object Incio2: TMenuItem
      Caption = 'Cidades'
      OnClick = Incio2Click
    end
    object reinos1: TMenuItem
      Caption = 'Treinos'
      OnClick = reinos1Click
    end
  end
  object DataSource_Piltos: TDataSource
    DataSet = DataModule1.FDTable_Pilotos
    OnStateChange = DataSource_PiltosStateChange
    Left = 440
    Top = 8
  end
end
