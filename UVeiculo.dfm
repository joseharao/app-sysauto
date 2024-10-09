inherited frmVeiculo: TfrmVeiculo
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 427
  ExplicitWidth = 638
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 427
    inherited Panel2: TPanel
      Left = 12
      Top = 11
      Height = 402
      ExplicitLeft = 12
      ExplicitTop = 11
      ExplicitHeight = 402
      inherited Panel3: TPanel
        inherited Label1: TLabel
          Width = 208
          Caption = 'Formul'#225'rio usado para cadastro de ve'#237'culos'
          ExplicitWidth = 208
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 71
        Top = 335
        ExplicitLeft = 71
        ExplicitTop = 335
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 91
        Width = 558
        Height = 238
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
          Width = 106
          Height = 13
          Caption = 'Descri'#231#227'o do Ve'#237'culo *'
          FocusControl = DBEdit2
        end
        object lblCPF: TLabel
          Left = 9
          Top = 98
          Width = 29
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit4
        end
        object lblRG: TLabel
          Left = 154
          Top = 98
          Width = 34
          Height = 13
          Caption = 'Modelo'
          FocusControl = DBEdit5
        end
        object Label17: TLabel
          Left = 9
          Top = 137
          Width = 31
          Height = 13
          Caption = 'Chassi'
          FocusControl = DBEdit13
        end
        object Label20: TLabel
          Left = 9
          Top = 177
          Width = 19
          Height = 13
          Caption = 'Ano'
          FocusControl = DBEdit15
        end
        object Label21: TLabel
          Left = 86
          Top = 177
          Width = 17
          Height = 13
          Caption = 'Cor'
          FocusControl = DBEdit16
        end
        object Label26: TLabel
          Left = 275
          Top = 137
          Width = 43
          Height = 13
          Caption = 'Renavan'
          FocusControl = DBEdit19
        end
        object Label7: TLabel
          Left = 339
          Top = 98
          Width = 25
          Height = 13
          Caption = 'Placa'
          FocusControl = DBEdit3
        end
        object Label9: TLabel
          Left = 257
          Top = 177
          Width = 59
          Height = 13
          Caption = 'Prc. Compra'
          FocusControl = DBEdit6
        end
        object Label10: TLabel
          Left = 360
          Top = 177
          Width = 52
          Height = 13
          Caption = 'Prc. Venda'
          FocusControl = DBEdit7
        end
        object Label11: TLabel
          Left = 460
          Top = 177
          Width = 39
          Height = 13
          Caption = 'Estoque'
          FocusControl = DBEdit8
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 33
          Width = 124
          Height = 21
          Color = 16744448
          DataField = 'COD_VEICULO'
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
          DataField = 'DESCRICAO'
          DataSource = dsTab
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 9
          Top = 114
          Width = 139
          Height = 21
          DataField = 'MARCA'
          DataSource = dsTab
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 154
          Top = 114
          Width = 181
          Height = 21
          DataField = 'MODELO'
          DataSource = dsTab
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 9
          Top = 153
          Width = 262
          Height = 21
          DataField = 'CHASSI'
          DataSource = dsTab
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 9
          Top = 193
          Width = 71
          Height = 21
          DataField = 'ANO'
          DataSource = dsTab
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 86
          Top = 193
          Width = 165
          Height = 21
          Color = clWhite
          DataField = 'COR'
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
          Left = 275
          Top = 153
          Width = 270
          Height = 21
          DataField = 'RENAVAN'
          DataSource = dsTab
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 341
          Top = 117
          Width = 181
          Height = 21
          DataField = 'PLACA'
          DataSource = dsTab
          TabOrder = 9
        end
        object DBEdit6: TDBEdit
          Left = 257
          Top = 193
          Width = 97
          Height = 21
          DataField = 'PRC_COMPRA'
          DataSource = dsTab
          TabOrder = 10
        end
        object DBEdit7: TDBEdit
          Left = 360
          Top = 193
          Width = 97
          Height = 21
          DataField = 'PRC_VENDA'
          DataSource = dsTab
          TabOrder = 11
        end
        object DBEdit8: TDBEdit
          Left = 460
          Top = 193
          Width = 85
          Height = 21
          Color = 16744448
          DataField = 'UNID_ESTOQUE'
          DataSource = dsTab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 268
          Top = 17
          Width = 185
          Height = 43
          Caption = 'Tipo de Ve'#237'culo'
          Columns = 2
          DataField = 'TIPO'
          DataSource = dsTab
          Items.Strings = (
            'Motocicleta'
            'Autom'#243'vel')
          ParentBackground = True
          TabOrder = 13
        end
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      Required = True
    end
    object cdsTabDAT_CAD: TDateField
      FieldName = 'DAT_CAD'
    end
    object cdsTabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTabTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsTabPLACA: TStringField
      FieldName = 'PLACA'
      Size = 50
    end
    object cdsTabMARCA: TStringField
      FieldName = 'MARCA'
      Size = 100
    end
    object cdsTabMODELO: TStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object cdsTabANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object cdsTabCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 100
    end
    object cdsTabRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 100
    end
    object cdsTabCOR: TStringField
      FieldName = 'COR'
      Size = 100
    end
    object cdsTabPRC_VENDA: TSingleField
      FieldName = 'PRC_VENDA'
      currency = True
    end
    object cdsTabPRC_COMPRA: TSingleField
      FieldName = 'PRC_COMPRA'
      currency = True
    end
    object cdsTabUNID_ESTOQUE: TSingleField
      FieldName = 'UNID_ESTOQUE'
    end
  end
  inherited sqlTab: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VEICULO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM VEICULOS WHERE COD_VEICULO = :COD_VEICULO')
  end
end
