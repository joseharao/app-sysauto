inherited frmOrCp: TfrmOrCp
  Caption = 'Relat'#243'rio de Contas a Pagar'
  ClientHeight = 334
  OnShow = FormShow
  ExplicitHeight = 373
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 334
    ExplicitHeight = 334
    inherited Panel2: TPanel
      Height = 309
      ExplicitHeight = 309
      inherited Panel3: TPanel
        inherited Label1: TLabel
          Width = 221
          Caption = 'Formul'#225'rio usado para imprimir contas a pagar'
          ExplicitWidth = 221
        end
      end
      inherited btImprimir: TPngBitBtn
        Top = 272
        OnClick = btImprimirClick
        ExplicitTop = 272
      end
      inherited btCancelar: TPngBitBtn
        Top = 272
        ExplicitTop = 272
      end
      inherited GroupBox1: TGroupBox
        Height = 175
        ExplicitHeight = 175
        object Label9: TLabel [0]
          Left = 10
          Top = 126
          Width = 78
          Height = 13
          Caption = 'Nome do Cliente'
        end
        inherited txtOrdernado: TRadioGroup
          Width = 103
          Height = 105
          ItemIndex = 2
          Items.Strings = (
            'C'#243'digo'
            'Cliente'
            'Vencimento')
          ExplicitWidth = 103
          ExplicitHeight = 105
        end
        object GroupBox3: TGroupBox
          Left = 119
          Top = 16
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
        object GroupBox2: TGroupBox
          Left = 119
          Top = 71
          Width = 178
          Height = 50
          Caption = 'Posi'#231#227'o do Documento'
          TabOrder = 2
          object txtPosicao: TComboBox
            Left = 9
            Top = 20
            Width = 160
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = 'Em Aberto'
            Items.Strings = (
              'Em Aberto'
              'A Vencer'
              'Vencidas'
              'Caducas'
              'Quitadas'
              'Devolvidas'
              'Todas')
          end
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 10
          Top = 142
          Width = 503
          Height = 21
          KeyField = 'COD_COMP'
          ListField = 'COMPRADOR'
          ListSource = Dados.dsComprador
          TabOrder = 3
        end
      end
    end
  end
end
