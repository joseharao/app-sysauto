object frmOrRecibo: TfrmOrRecibo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Recibo de Pagamento'
  ClientHeight = 163
  ClientWidth = 459
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
    Top = 24
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 74
    Height = 13
    Caption = 'Valor do Recibo'
  end
  object Label3: TLabel
    Left = 199
    Top = 64
    Width = 82
    Height = 13
    Caption = 'Motivo do Recibo'
  end
  object txtNome: TEdit
    Left = 8
    Top = 40
    Width = 409
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object txtValor: TCurrencyEdit
    Left = 8
    Top = 80
    Width = 185
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 116
    Width = 121
    Height = 31
    Caption = 'Imprimir Recibo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object txtMotivo: TEdit
    Left = 199
    Top = 80
    Width = 218
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
end
