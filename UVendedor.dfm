inherited frmVendedor: TfrmVendedor
  Caption = 'Cadastro de Vendedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited Panel3: TPanel
        inherited Label1: TLabel
          Width = 227
          Caption = 'Formul'#225'rio usado para cadastro de vendedores'
          ExplicitWidth = 227
        end
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 95
        Width = 558
        Height = 310
        Caption = 'Dados Cadastrais'
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
          Left = 137
          Top = 17
          Width = 94
          Height = 13
          Caption = 'Data do Cadastro *'
        end
        object lblNome: TLabel
          Left = 9
          Top = 57
          Width = 36
          Height = 13
          Caption = 'Nome *'
          FocusControl = DBEdit2
        end
        object lblCPF: TLabel
          Left = 9
          Top = 98
          Width = 19
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit4
        end
        object lblRG: TLabel
          Left = 154
          Top = 98
          Width = 14
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit5
        end
        object Label17: TLabel
          Left = 9
          Top = 137
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit13
        end
        object Label20: TLabel
          Left = 9
          Top = 182
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit15
        end
        object Label21: TLabel
          Left = 277
          Top = 182
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit16
        end
        object Label26: TLabel
          Left = 448
          Top = 182
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit19
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 33
          Width = 124
          Height = 21
          Color = 16744448
          DataField = 'COD_VEND'
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
        object DBDateEdit1: TDBDateEdit
          Left = 137
          Top = 33
          Width = 125
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'DAT_CAD'
          DataSource = dsTab
          NumGlyphs = 2
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 9
          Top = 73
          Width = 536
          Height = 21
          DataField = 'NOME'
          DataSource = dsTab
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 9
          Top = 114
          Width = 139
          Height = 21
          DataField = 'CPF_CNPJ'
          DataSource = dsTab
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 154
          Top = 114
          Width = 181
          Height = 21
          DataField = 'RG_IE'
          DataSource = dsTab
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 9
          Top = 153
          Width = 536
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dsTab
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 9
          Top = 198
          Width = 264
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dsTab
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 277
          Top = 198
          Width = 165
          Height = 21
          Color = clWhite
          DataField = 'CIDADE'
          DataSource = dsTab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 448
          Top = 198
          Width = 97
          Height = 21
          DataField = 'TELEFONE'
          DataSource = dsTab
          TabOrder = 8
        end
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Required = True
    end
    object cdsTabDAT_CAD: TDateField
      FieldName = 'DAT_CAD'
    end
    object cdsTabNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsTabCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      EditMask = '###.###.###-##;0;_'
      Size = 15
    end
    object cdsTabRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object cdsTabENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsTabBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object cdsTabCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsTabUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsTabCEP: TStringField
      FieldName = 'CEP'
      Size = 13
    end
    object cdsTabTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '(##) ####-####;1;_'
      Size = 15
    end
  end
  inherited sqlTab: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VEND'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM VENDEDOR WHERE COD_VEND = :COD_VEND')
  end
end
