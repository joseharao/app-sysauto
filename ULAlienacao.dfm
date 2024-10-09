inherited frmLAlienacao: TfrmLAlienacao
  Caption = 'Listagem de Cadastro de Aliena'#231#245'es'
  ExplicitWidth = 755
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited GroupBox1: TGroupBox
        object Label1: TLabel [0]
          Left = 8
          Top = 17
          Width = 86
          Height = 13
          Caption = 'Dados Para Busca'
        end
        object txtLocaliza: TEdit
          Left = 8
          Top = 32
          Width = 501
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
      end
      inherited GroupBox2: TGroupBox
        inherited grdDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ALIENACAO'
              Title.Caption = 'Aliena'#231#227'o'
              Width = 643
              Visible = True
            end>
        end
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabALIENACAO: TStringField
      FieldName = 'ALIENACAO'
      Size = 100
    end
  end
  inherited sqlTab: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM ALIENACAO')
  end
end
