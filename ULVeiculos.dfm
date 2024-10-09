inherited frmLVeiculos: TfrmLVeiculos
  Caption = 'Listagem de Cadastros de Ve'#237'culos'
  ExplicitWidth = 755
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited GroupBox1: TGroupBox
        Top = 7
        ExplicitTop = 7
        object Label1: TLabel [0]
          Left = 8
          Top = 13
          Width = 41
          Height = 13
          Caption = 'Localizar'
        end
        object Label2: TLabel [1]
          Left = 373
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Campo'
        end
        inherited btEditar: TPngBitBtn
          OnClick = btEditarClick
        end
        object txtLocalizar: TEdit
          Left = 7
          Top = 29
          Width = 362
          Height = 21
          TabOrder = 2
        end
        object txtCampo: TComboBox
          Left = 373
          Top = 29
          Width = 129
          Height = 21
          Style = csDropDownList
          ItemIndex = 2
          TabOrder = 3
          Text = 'Placa'
          Items.Strings = (
            'C'#243'digo'
            'Nome do Ve'#237'culo'
            'Placa')
        end
      end
      inherited GroupBox2: TGroupBox
        inherited grdDados: TDBGrid
          Left = 12
          Top = 19
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_VEICULO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_CAD'
              Title.Caption = 'Data do Cadastro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Nome do Ve'#237'culo'
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODELO'
              Title.Caption = 'Modelo'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANO'
              Title.Caption = 'Ano'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PLACA'
              Title.Caption = 'Placa'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CHASSI'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'RENAVAN'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'COR'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'UNID_ESTOQUE'
              Title.Caption = 'Estoque'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PRC_VENDA'
              Title.Caption = 'Prc. Venda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRC_COMPRA'
              Visible = False
            end>
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
    SQL.Strings = (
      'SELECT * FROM VEICULOS')
  end
end
