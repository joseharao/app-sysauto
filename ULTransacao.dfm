inherited frmLTransacao: TfrmLTransacao
  Caption = 'Listagem de Transa'#231#245'es de Vendas / Trocas / Compras'
  ClientWidth = 1049
  ExplicitWidth = 1065
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1049
    ExplicitWidth = 1049
    inherited Panel2: TPanel
      Width = 1030
      ExplicitWidth = 1030
      inherited GroupBox1: TGroupBox
        Width = 1010
        ExplicitWidth = 1010
        object Label1: TLabel [0]
          Left = 8
          Top = 14
          Width = 41
          Height = 13
          Caption = 'Localizar'
        end
        object Label2: TLabel [1]
          Left = 373
          Top = 14
          Width = 33
          Height = 13
          Caption = 'Campo'
        end
        inherited btEditar: TPngBitBtn
          OnClick = btEditarClick
        end
        object txtLocalizar: TEdit
          Left = 7
          Top = 30
          Width = 362
          Height = 21
          TabOrder = 2
        end
        object txtCampo: TComboBox
          Left = 373
          Top = 30
          Width = 129
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 3
          Text = 'Placa'
          Items.Strings = (
            'C'#243'digo'
            'Placa'
            'Chassi'
            'Vendedor'
            'Comprador')
        end
      end
      inherited GroupBox2: TGroupBox
        Width = 1010
        ExplicitWidth = 1010
        inherited grdDados: TDBGrid
          Width = 994
          OnDblClick = grdDadosDblClick
          OnKeyDown = grdDadosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_TRANS'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_CAD'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERCAO'
              Title.Caption = 'Transa'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o do Ve'#237'culo'
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PLACA'
              Title.Caption = 'Placa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_COMP'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'COMPRADOR'
              Title.Caption = 'Comprador'
              Width = 153
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_VEND'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Title.Caption = 'Vendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TRANS'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ANO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'KM'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'MODELO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'COR'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CHASSI'
              Title.Caption = 'Chassi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RENAVAN'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'COMBUSTIVEL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'F_PAG'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'BASE_CALCULO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PERCENTUAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PRAZO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PARCELAS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ENTRADA_VEIC'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OBS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'POSICAO'
              Visible = False
            end>
        end
      end
      inherited Panel3: TPanel
        Width = 1028
        ExplicitWidth = 1028
      end
    end
    inherited status: TPanel
      Width = 1047
      ExplicitWidth = 1047
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object cdsTabCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 100
    end
    object cdsTabCOD_TRANS: TIntegerField
      FieldName = 'COD_TRANS'
      Required = True
    end
    object cdsTabDAT_CAD: TDateField
      FieldName = 'DAT_CAD'
    end
    object cdsTabTP_TRANS: TStringField
      FieldName = 'TP_TRANS'
      Size = 1
    end
    object cdsTabCOD_COMP: TIntegerField
      FieldName = 'COD_COMP'
    end
    object cdsTabCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
    end
    object cdsTabVLR_TRANS: TSingleField
      FieldName = 'VLR_TRANS'
    end
    object cdsTabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTabMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cdsTabANO: TStringField
      FieldName = 'ANO'
    end
    object cdsTabKM: TStringField
      FieldName = 'KM'
      Size = 40
    end
    object cdsTabMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsTabCOR: TStringField
      FieldName = 'COR'
    end
    object cdsTabPLACA: TStringField
      FieldName = 'PLACA'
    end
    object cdsTabCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 50
    end
    object cdsTabRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 30
    end
    object cdsTabCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 30
    end
    object cdsTabF_PAG: TStringField
      FieldName = 'F_PAG'
      Size = 100
    end
    object cdsTabBASE_CALCULO: TSingleField
      FieldName = 'BASE_CALCULO'
    end
    object cdsTabPERCENTUAL: TSingleField
      FieldName = 'PERCENTUAL'
    end
    object cdsTabPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object cdsTabPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
    object cdsTabENTRADA: TSingleField
      FieldName = 'ENTRADA'
    end
    object cdsTabENTRADA_VEIC: TSingleField
      FieldName = 'ENTRADA_VEIC'
    end
    object cdsTabOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsTabPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 1
    end
    object cdsTabHORA_REC: TTimeField
      FieldName = 'HORA_REC'
    end
    object cdsTabOPERCAO: TStringField
      FieldName = 'OPERCAO'
      FixedChar = True
      Size = 6
    end
  end
  inherited sqlTab: TSQLQuery
    MaxBlobSize = 1
    SQL.Strings = (
      'SELECT'
      '   T.*, C.NOME AS COMPRADOR,  V.NOME AS VENDEDOR,'
      'CASE T.TP_TRANS'
      '    WHEN '#39'V'#39' THEN '#39'Venda'#39
      '    WHEN '#39'T'#39' THEN '#39'Troca'#39
      '    WHEN '#39'C'#39' THEN '#39'Compra'#39
      'END AS OPERCAO'
      ''
      
        'FROM TRANSACAO T, COMPRADOR C, COMPRADOR V WHERE T.COD_COMP = C.' +
        'COD_COMP AND T.COD_VEND = V.COD_COMP')
  end
end
