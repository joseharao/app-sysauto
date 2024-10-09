inherited frmLCCaixa: TfrmLCCaixa
  Caption = 'Controle de Caixa'
  ExplicitWidth = 755
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited GroupBox1: TGroupBox
        inherited btEditar: TPngBitBtn
          OnClick = btEditarClick
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 18
          Width = 283
          Height = 43
          Caption = 'Data da Movimenta'#231#227'o'
          TabOrder = 2
          object Label1: TLabel
            Left = 134
            Top = 19
            Width = 17
            Height = 13
            Caption = 'At'#233
          end
          object txtInicio: TDateEdit
            Left = 9
            Top = 16
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
          end
          object txtTermino: TDateEdit
            Left = 156
            Top = 16
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
          end
        end
      end
      inherited GroupBox2: TGroupBox
        object Label30: TLabel [0]
          Left = 169
          Top = 286
          Width = 43
          Height = 13
          Caption = 'Entradas'
        end
        object Label31: TLabel [1]
          Left = 295
          Top = 286
          Width = 31
          Height = 13
          Caption = 'Sa'#237'das'
        end
        object Label34: TLabel [2]
          Left = 422
          Top = 286
          Width = 62
          Height = 13
          Caption = 'Recebimento'
        end
        object Label2: TLabel [3]
          Left = 551
          Top = 286
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object Shape1: TShape [4]
          Left = 8
          Top = 288
          Width = 17
          Height = 17
          Brush.Color = 10485760
          Shape = stRoundSquare
        end
        object Label3: TLabel [5]
          Left = 31
          Top = 290
          Width = 43
          Height = 13
          Caption = 'Entradas'
        end
        object Label4: TLabel [6]
          Left = 31
          Top = 309
          Width = 31
          Height = 13
          Caption = 'Sa'#237'das'
        end
        object Shape2: TShape [7]
          Left = 8
          Top = 307
          Width = 17
          Height = 17
          Brush.Color = clRed
          Shape = stRoundSquare
        end
        object Label5: TLabel [8]
          Left = 100
          Top = 291
          Width = 62
          Height = 13
          Caption = 'Recebimento'
        end
        object Shape3: TShape [9]
          Left = 77
          Top = 289
          Width = 17
          Height = 17
          Brush.Color = 4227072
          Shape = stRoundSquare
        end
        inherited grdDados: TDBGrid
          Height = 265
          OnDrawColumnCell = grdDadosDrawColumnCell
          OnDblClick = grdDadosDblClick
          OnKeyDown = grdDadosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_LANCA'
              Title.Caption = 'C'#243'd. Lanca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_LANCA'
              Title.Caption = 'Data do Lanc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_TRANSACAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Width = 370
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERACAO'
              Title.Caption = 'Operacao'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VLR_LANCA'
              Title.Caption = 'Vlr. Lanca'
              Width = 99
              Visible = True
            end>
        end
        object txtAReceber: TCurrencyEdit
          Left = 169
          Top = 302
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object txtVencida: TCurrencyEdit
          Left = 295
          Top = 302
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object txtGeral: TCurrencyEdit
          Left = 422
          Top = 302
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object txtSaldo: TCurrencyEdit
          Left = 551
          Top = 302
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_LANCA: TIntegerField
      FieldName = 'COD_LANCA'
      Required = True
    end
    object cdsTabDAT_LANCA: TDateField
      FieldName = 'DAT_LANCA'
    end
    object cdsTabCOD_TRANSACAO: TIntegerField
      FieldName = 'COD_TRANSACAO'
    end
    object cdsTabHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object cdsTabOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 2
    end
    object cdsTabVLR_LANCA: TSingleField
      FieldName = 'VLR_LANCA'
      currency = True
    end
  end
  inherited sqlTab: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM LANCA')
  end
end
