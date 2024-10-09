inherited frmChamados: TfrmChamados
  Caption = 'Abertura de Chamado'
  ClientWidth = 788
  OnShow = FormShow
  ExplicitWidth = 804
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 788
    inherited Panel2: TPanel
      Width = 761
      ExplicitWidth = 761
      inherited Panel3: TPanel
        Width = 759
        inherited Label1: TLabel
          Width = 213
          Caption = 'Formul'#225'rio usado para abertura de chamado'
          ExplicitWidth = 213
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 152
        Top = 408
        ExplicitLeft = 152
        ExplicitTop = 408
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 90
        Width = 745
        Height = 310
        Caption = 'Dados do Chamado'
        TabOrder = 2
        object Label5: TLabel
          Left = 9
          Top = 17
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label29: TLabel
          Left = 137
          Top = 17
          Width = 86
          Height = 13
          Caption = 'Data do Chamado'
        end
        object Label9: TLabel
          Left = 9
          Top = 58
          Width = 87
          Height = 13
          Caption = 'Nome do Cliente *'
        end
        object Label6: TLabel
          Left = 9
          Top = 97
          Width = 33
          Height = 13
          Caption = 'Ve'#237'culo'
          FocusControl = DBEdit2
        end
        object Label7: TLabel
          Left = 9
          Top = 138
          Width = 81
          Height = 13
          Caption = 'Assunto Alegado'
        end
        object Label8: TLabel
          Left = 371
          Top = 138
          Width = 100
          Height = 13
          Caption = 'Solu'#231#227'o do Chamado'
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 33
          Width = 124
          Height = 21
          Color = 16744448
          DataField = 'COD_CHAMADO'
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
        object DBDateEdit3: TDBDateEdit
          Left = 137
          Top = 33
          Width = 137
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'DAT_CHAMADO'
          DataSource = dsTab
          ReadOnly = True
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 9
          Top = 74
          Width = 720
          Height = 21
          DataField = 'COD_CLIE'
          DataSource = dsTab
          KeyField = 'COD_COMP'
          ListField = 'COMPRADOR'
          ListSource = Dados.dsComprador
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 9
          Top = 113
          Width = 720
          Height = 21
          DataField = 'VEICULO'
          DataSource = dsTab
          TabOrder = 3
        end
        object DBMemo1: TDBMemo
          Left = 9
          Top = 154
          Width = 356
          Height = 145
          DataField = 'ASSUNTO_ALEGADO'
          DataSource = dsTab
          TabOrder = 4
        end
        object DBMemo2: TDBMemo
          Left = 371
          Top = 154
          Width = 356
          Height = 145
          DataField = 'SOLUCAO'
          DataSource = dsTab
          TabOrder = 5
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
  end
  inherited sqlTab: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_CHAMADO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM CHAMADOS WHERE COD_CHAMADO = :COD_CHAMADO')
  end
end
