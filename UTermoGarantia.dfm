object frmTermoGarantia: TfrmTermoGarantia
  Left = 0
  Top = 0
  Caption = 'Termo de Garantia'
  ClientHeight = 444
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = frmTransacao.dsTab
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 115
      Margins.LeftMargin = 50.000000000000000000
      Margins.TopMargin = 5.000000000000000000
      Margins.RightMargin = 50.000000000000000000
      Margins.BottomMargin = 5.000000000000000000
      BandType = btColumnHeader
      BeforePrint = RLBand1BeforePrint
      object Logo: TRLImage
        Left = 189
        Top = 19
        Width = 340
        Height = 77
        Align = faClient
        Stretch = True
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 52
      Margins.LeftMargin = 5.000000000000000000
      Margins.RightMargin = 5.000000000000000000
      BeforePrint = RLBand2BeforePrint
      object lblTexto: TRLLabel
        Left = 19
        Top = 0
        Width = 680
        Height = 16
        Align = faClientTop
        Caption = 
          'A GIL MOTOS MULTIMARCAS, garante a parte de fuma'#231'a do motor dura' +
          'nte tr'#234's meses de uso, ap'#243's a compra do ve'#237'culo.'
      end
      object Linhas: TRLMemo
        Left = 19
        Top = 36
        Width = 680
        Height = 16
        Align = faClientBottom
        Behavior = [beSiteExpander]
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 205
      Width = 718
      Height = 111
      Margins.LeftMargin = 5.000000000000000000
      Margins.TopMargin = 5.000000000000000000
      Margins.RightMargin = 5.000000000000000000
      BandType = btColumnFooter
      object RLMemo1: TRLMemo
        Left = 19
        Top = 19
        Width = 680
        Height = 48
        Align = faClientTop
        Behavior = [beSiteExpander]
        Lines.Strings = (
          
            '                      __________________________________________' +
            '___________'
          
            '                                                      (Assinatur' +
            'a do Cliente)'
          '    ')
      end
    end
  end
end
