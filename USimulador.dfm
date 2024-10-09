object frmSimulador: TfrmSimulador
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Simulador Financeiro'
  ClientHeight = 413
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
  end
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 82
    Height = 13
    Caption = 'Margem de Juros'
  end
  object Label3: TLabel
    Left = 264
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Parcelas'
  end
  object txtBase: TCurrencyEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 0
  end
  object txtJuros: TCurrencyEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 1
  end
  object txtParcelas: TCurrencyEdit
    Left = 264
    Top = 24
    Width = 121
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DisplayFormat = ',0; -,0'
    TabOrder = 2
  end
  object pnTotal: TPanel
    Left = 8
    Top = 64
    Width = 492
    Height = 41
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnParcela: TPanel
    Left = 8
    Top = 115
    Width = 492
    Height = 41
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object btCalcular: TButton
    Left = 400
    Top = 24
    Width = 100
    Height = 25
    Caption = 'Calcular'
    TabOrder = 5
    OnClick = btCalcularClick
  end
end
