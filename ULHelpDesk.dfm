inherited frmLChamados: TfrmLChamados
  Caption = 'Listagem de Help Desk'
  ExplicitWidth = 755
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited GroupBox1: TGroupBox
        object Label1: TLabel [0]
          Left = 10
          Top = 17
          Width = 100
          Height = 13
          Caption = 'Dados Para Consulta'
        end
        inherited btEditar: TPngBitBtn
          OnClick = btEditarClick
        end
        object txtConsulta: TEdit
          Left = 10
          Top = 32
          Width = 499
          Height = 21
          TabOrder = 2
        end
      end
      inherited GroupBox2: TGroupBox
        inherited grdDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_CHAMADO'
              Title.Caption = 'C'#243'd. Chamado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_CHAMADO'
              Title.Caption = 'Data do Chamado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_CLIE'
              Title.Caption = 'C'#243'd. Clie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VEICULO'
              Title.Caption = 'Ve'#237'culo'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASSUNTO_ALEGADO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SOLUCAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'STATUS_CHAMADO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome do Cliente'
              Width = 211
              Visible = True
            end>
        end
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_CHAMADO: TIntegerField
      FieldName = 'COD_CHAMADO'
      Required = True
    end
    object cdsTabDAT_CHAMADO: TDateField
      FieldName = 'DAT_CHAMADO'
    end
    object cdsTabCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
    end
    object cdsTabVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 100
    end
    object cdsTabASSUNTO_ALEGADO: TStringField
      FieldName = 'ASSUNTO_ALEGADO'
      Size = 1000
    end
    object cdsTabSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 1000
    end
    object cdsTabSTATUS_CHAMADO: TStringField
      FieldName = 'STATUS_CHAMADO'
      Size = 1
    end
    object cdsTabNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  inherited sqlTab: TSQLQuery
    SQL.Strings = (
      'SELECT C.*, CC.NOME FROM CHAMADOS C, COMPRADOR CC'
      'WHERE C.COD_CLIE = CC.COD_COMP')
  end
end
