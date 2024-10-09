inherited frmLComprador: TfrmLComprador
  Caption = 'Listagem de Cadastro de Clientes'
  ExplicitWidth = 755
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited GroupBox1: TGroupBox
        object Label1: TLabel [0]
          Left = 8
          Top = 22
          Width = 41
          Height = 13
          Caption = 'Localizar'
        end
        object Label2: TLabel [1]
          Left = 373
          Top = 22
          Width = 33
          Height = 13
          Caption = 'Campo'
        end
        inherited btEditar: TPngBitBtn
          OnClick = btEditarClick
        end
        object txtLocalizar: TEdit
          Left = 7
          Top = 38
          Width = 362
          Height = 21
          TabOrder = 2
        end
        object txtCampo: TComboBox
          Left = 373
          Top = 38
          Width = 129
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 3
          Text = 'Nome do Cliente'
          Items.Strings = (
            'C'#243'digo'
            'Nome do Cliente')
        end
      end
      inherited GroupBox2: TGroupBox
        inherited grdDados: TDBGrid
          OnDblClick = grdDadosDblClick
          OnKeyDown = grdDadosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_COMP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_CAD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APELIDO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CPF_CNPJ'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'RG_IE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ENDERECO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Visible = False
            end>
        end
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_COMP: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_COMP'
      Required = True
    end
    object cdsTabDAT_CAD: TDateField
      DisplayLabel = 'Data Cad.'
      FieldName = 'DAT_CAD'
    end
    object cdsTabNOME: TStringField
      DisplayLabel = 'Nome do Comprador'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsTabAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsTabCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 15
    end
    object cdsTabRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object cdsTabENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsTabBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 80
    end
    object cdsTabCIDADE: TStringField
      DisplayLabel = 'Cidade'
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
      Size = 15
    end
  end
  inherited sqlTab: TSQLQuery
    MaxBlobSize = 1
    SQL.Strings = (
      'SELECT * FROM COMPRADOR')
  end
end
