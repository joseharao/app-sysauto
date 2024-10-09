inherited frmCCaixa: TfrmCCaixa
  Caption = 'Lan'#231'amentos No Caixa'
  OnShow = FormShow
  ExplicitWidth = 638
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited Panel3: TPanel
        inherited Label1: TLabel
          Width = 258
          Caption = 'Formul'#225'rio usado para cadastro lan'#231'amentos no caixa'
          ExplicitWidth = 258
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 92
        Width = 568
        Height = 149
        Caption = 'Dados do Lan'#231'amento'
        TabOrder = 2
        object Label5: TLabel
          Left = 9
          Top = 17
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 9
          Top = 60
          Width = 50
          Height = 13
          Caption = 'Hist'#243'rico *'
          FocusControl = DBEdit2
        end
        object Label7: TLabel
          Left = 432
          Top = 17
          Width = 108
          Height = 13
          Caption = 'Data do Lan'#231'amento *'
        end
        object Label8: TLabel
          Left = 9
          Top = 104
          Width = 89
          Height = 13
          Caption = 'Valor da Opera'#231#227'o'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 33
          Width = 113
          Height = 21
          Color = 16744448
          DataField = 'COD_LANCA'
          DataSource = dsTab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 128
          Top = 12
          Width = 297
          Height = 46
          Caption = 'Tipo de Lan'#231'amento *'
          Columns = 3
          DataField = 'OPERACAO'
          DataSource = dsTab
          Items.Strings = (
            'Entrada'
            'Sa'#237'da'
            'Recebimento')
          ParentBackground = True
          TabOrder = 1
          Values.Strings = (
            'E'
            'S'
            'R')
        end
        object DBEdit2: TDBEdit
          Left = 9
          Top = 76
          Width = 551
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HISTORICO'
          DataSource = dsTab
          TabOrder = 2
        end
        object DBDateEdit1: TDBDateEdit
          Left = 432
          Top = 33
          Width = 125
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'DAT_LANCA'
          DataSource = dsTab
          NumGlyphs = 2
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 9
          Top = 120
          Width = 156
          Height = 21
          DataField = 'VLR_LANCA'
          DataSource = dsTab
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
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_LANCA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM LANCA WHERE COD_LANCA = :COD_LANCA')
  end
end
