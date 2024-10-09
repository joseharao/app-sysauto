inherited frmOrCCaixa: TfrmOrCCaixa
  Caption = 'Controle de Caixa'
  ClientHeight = 366
  ExplicitHeight = 405
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 366
    ExplicitHeight = 366
    inherited Panel2: TPanel
      Height = 333
      ExplicitHeight = 333
      inherited Panel3: TPanel
        inherited Label1: TLabel
          Width = 231
          Caption = 'Formul'#225'rio usado para imprimir controle de caixa'
          ExplicitWidth = 231
        end
      end
      inherited btImprimir: TPngBitBtn
        Left = 15
        Top = 287
        OnClick = btImprimirClick
        ExplicitLeft = 15
        ExplicitTop = 287
      end
      inherited btCancelar: TPngBitBtn
        Left = 103
        Top = 287
        ExplicitLeft = 103
        ExplicitTop = 287
      end
      inherited GroupBox1: TGroupBox
        Height = 191
        ExplicitHeight = 191
        inherited txtOrdernado: TRadioGroup
          Height = 81
          ItemIndex = 1
          Items.Strings = (
            'Data do Lan'#231'amento'
            'Opera'#231#227'o')
          ExplicitHeight = 81
        end
        object GroupBox3: TGroupBox
          Left = 164
          Top = 17
          Width = 283
          Height = 49
          Caption = 'Per'#237'odo de Movimenta'#231#227'o'
          TabOrder = 1
          object Label2: TLabel
            Left = 134
            Top = 22
            Width = 17
            Height = 13
            Caption = 'At'#233
          end
          object txtInicio: TDateEdit
            Left = 9
            Top = 19
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
          end
          object txtTermino: TDateEdit
            Left = 156
            Top = 19
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object txtAgrupado: TRadioGroup
          Left = 10
          Top = 101
          Width = 143
          Height = 81
          Caption = 'Agrupado Por: '
          ItemIndex = 1
          Items.Strings = (
            'Data do Lan'#231'amento'
            'Opera'#231#227'o')
          TabOrder = 2
        end
      end
    end
  end
end
