object frmTreinos: TfrmTreinos
  Left = 0
  Top = 0
  Caption = 'Treinos'
  ClientHeight = 410
  ClientWidth = 595
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
    Width = 595
    Height = 225
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    object Label_cod_treino: TLabel
      Left = 16
      Top = 16
      Width = 81
      Height = 13
      Caption = 'C'#243'digo do Treino'
      FocusControl = DBEdit_cod_treino
    end
    object Label_cod_piloto: TLabel
      Left = 16
      Top = 56
      Width = 77
      Height = 13
      Caption = 'C'#243'digo do Piloto'
      FocusControl = DBEdit_cod_piloto
    end
    object Label_carro: TLabel
      Left = 19
      Top = 96
      Width = 82
      Height = 13
      Caption = 'N'#250'mero do Carro'
      FocusControl = DBEdit_carro
    end
    object Label_qtd_voltas: TLabel
      Left = 16
      Top = 176
      Width = 103
      Height = 13
      Caption = 'Quantidade de Voltas'
      FocusControl = DBEdit_qtd_voltas
    end
    object Label1: TLabel
      Left = 16
      Top = 139
      Width = 85
      Height = 13
      Caption = 'Data do Cadastro'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 168
      Top = 176
      Width = 84
      Height = 13
      Caption = 'Tempo das Voltas'
      FocusControl = DBEdit2
    end
    object DBEdit_cod_treino: TDBEdit
      Left = 16
      Top = 32
      Width = 85
      Height = 21
      DataField = 'ID'
      DataSource = DataSource_Treinos
      TabOrder = 0
    end
    object DBEdit_cod_piloto: TDBEdit
      Left = 16
      Top = 72
      Width = 85
      Height = 21
      DataField = 'ID_PILOTO'
      DataSource = DataSource_Treinos
      TabOrder = 1
    end
    object DBEdit_carro: TDBEdit
      Left = 16
      Top = 115
      Width = 85
      Height = 21
      DataField = 'NUMERO_CARRO'
      DataSource = DataSource_Treinos
      TabOrder = 2
    end
    object DBEdit_qtd_voltas: TDBEdit
      Left = 16
      Top = 193
      Width = 134
      Height = 21
      DataField = 'QTD_VOLTAS'
      DataSource = DataSource_Treinos
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 107
      Top = 72
      Width = 478
      Height = 21
      DataField = 'Nome_Piloto'
      DataSource = DataSource_Treinos
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 153
      Width = 132
      Height = 21
      DataField = 'DATA_CADASTRO'
      DataSource = DataSource_Treinos
      MaxLength = 10
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 193
      Width = 132
      Height = 21
      DataField = 'TEMPO_VOLTAS'
      DataSource = DataSource_Treinos
      MaxLength = 8
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 273
    Width = 595
    Height = 137
    Align = alBottom
    DataSource = DataSource_Treinos
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnNovo: TButton
    Left = 18
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 120
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Default = True
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 223
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnExcluir: TButton
    Left = 328
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btnExcluirClick
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 16
    object Incio1: TMenuItem
      Caption = 'In'#237'cio'
      OnClick = Incio1Click
    end
    object Incio2: TMenuItem
      Caption = 'Cidades'
      OnClick = Incio2Click
    end
    object Pilotos1: TMenuItem
      Caption = 'Pilotos'
      OnClick = Pilotos1Click
    end
  end
  object DataSource_Treinos: TDataSource
    DataSet = DataModule1.FDTable_Treinos
    OnStateChange = DataSource_TreinosStateChange
    Left = 504
    Top = 16
  end
end
