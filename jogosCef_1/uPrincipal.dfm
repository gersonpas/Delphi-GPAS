object Form1: TForm1
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  Caption = 
    'Loterias  CEF- Jogue  e Fique Rico -Programa Elaborado  por: -  ' +
    'Gerson Pereira de Araujo Sobrinho '
  ClientHeight = 735
  ClientWidth = 681
  Color = clYellow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  ParentBiDiMode = False
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 130
    Height = 21
    Caption = ' Tipo de Loteria:  '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 67
    Width = 229
    Height = 21
    Caption = 'Quantas Dezenas quer Jogar:  '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 710
    Width = 126
    Height = 17
    Caption = ' Ver 1.4  - Maio 2023'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboJogos: TComboBox
    Left = 144
    Top = 21
    Width = 157
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'Mega Sena'
    OnChange = ComboJogosChange
    Items.Strings = (
      'Mega Sena'
      'LotoF'#225'cil'
      'Quina'
      'Dia de Sorte'
      'Dupla Sena'
      'Milion'#225'ria')
  end
  object MemResult: TMemo
    Left = 20
    Top = 112
    Width = 272
    Height = 553
    Margins.Bottom = 5
    BiDiMode = bdLeftToRight
    Color = clAqua
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Lines.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    StyleName = 'Windows'
  end
  object ComQtdeDezena: TComboBox
    Left = 236
    Top = 56
    Width = 65
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '6'
    OnChange = ComQtdeDezenaChange
    Items.Strings = (
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20')
  end
  object btnGeraJogos: TButton
    Left = 328
    Top = 21
    Width = 135
    Height = 57
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnGeraJogosClick
  end
  object ListBoxResult: TListBox
    Left = 328
    Top = 112
    Width = 329
    Height = 553
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ItemHeight = 21
    Items.Strings = (
      ''
      ''
      '')
    MultiSelect = True
    ParentFont = False
    TabOrder = 4
  end
  object btnGerar: TButton
    Left = 522
    Top = 21
    Width = 135
    Height = 57
    Caption = 'Gerar Cartelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ImageMargins.Bottom = 1
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = btnGerarClick
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 65528
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Arquivo2: TMenuItem
        Caption = 'Hist'#243'rico'
        OnClick = Arquivo2Click
      end
      object CEF1: TMenuItem
        Caption = 'CEF'
        OnClick = CEF1Click
      end
      object CEF2: TMenuItem
        Caption = 'Sair'
        OnClick = CEF2Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object Sobre2: TMenuItem
        Caption = 'Autor'
        OnClick = Sobre2Click
      end
      object Verso1: TMenuItem
        Caption = 'Vers'#227'o'
        OnClick = Verso1Click
      end
      object S1: TMenuItem
        Caption = 'Sobre o Programa'
        OnClick = S1Click
      end
    end
  end
end
