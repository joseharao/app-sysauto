inherited frmLCrec: TfrmLCrec
  Caption = 'Listagem de Contas a Receber'
  ClientHeight = 568
  ClientWidth = 869
  ExplicitLeft = -96
  ExplicitWidth = 885
  ExplicitHeight = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 869
    Height = 568
    ExplicitWidth = 869
    ExplicitHeight = 568
    inherited Panel2: TPanel
      Width = 848
      Height = 512
      ExplicitWidth = 848
      ExplicitHeight = 512
      object Label30: TLabel [0]
        Left = 10
        Top = 470
        Width = 50
        Height = 13
        Caption = 'A Receber'
      end
      object Label31: TLabel [1]
        Left = 136
        Top = 470
        Width = 42
        Height = 13
        Caption = 'Vencidas'
      end
      object Label32: TLabel [2]
        Left = 262
        Top = 470
        Width = 41
        Height = 13
        Caption = 'Caducas'
      end
      object Label33: TLabel [3]
        Left = 389
        Top = 470
        Width = 51
        Height = 13
        Caption = 'Valor Pago'
      end
      object Label34: TLabel [4]
        Left = 515
        Top = 470
        Width = 52
        Height = 13
        Caption = 'Devolvidos'
      end
      object Label3: TLabel [5]
        Left = 642
        Top = 470
        Width = 52
        Height = 13
        Caption = 'Total Geral'
      end
      inherited GroupBox2: TGroupBox [6]
        Top = 110
        Width = 831
        Height = 351
        Caption = 
          'Resultado da Busca (Clique sobre a coluna desajada para ordenar)' +
          ' Pressione F10 para caducar a conta'
        ExplicitTop = 110
        ExplicitWidth = 831
        ExplicitHeight = 351
        inherited grdDados: TDBGrid
          Width = 816
          Height = 309
          OnDrawColumnCell = grdDadosDrawColumnCell
          OnDblClick = grdDadosDblClick
          OnKeyDown = grdDadosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_REC'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_LANC'
              Title.Caption = 'Data Lanc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_CLIE'
              Title.Caption = 'C'#243'd Clie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Niome do Cliente'
              Width = 276
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Title.Caption = 'Parcela'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_DOC'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VENCIMENTO'
              Title.Caption = 'Vencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_PRINC'
              Title.Caption = 'Valor Principal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JUROS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SALDO_DEV'
              Title.Caption = 'Saldo Devedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'TP_DOC'
              Visible = False
            end>
        end
      end
      inherited Panel3: TPanel [7]
        Top = 494
        Width = 846
        TabOrder = 8
        ExplicitTop = 494
        ExplicitWidth = 846
        inherited lblRegistro: TLabel
          Left = 21
          Top = 439
          ExplicitLeft = 21
          ExplicitTop = 439
        end
      end
      inherited GroupBox1: TGroupBox [8]
        Width = 831
        Height = 98
        ExplicitWidth = 831
        ExplicitHeight = 98
        object Label2: TLabel [0]
          Left = 8
          Top = 56
          Width = 86
          Height = 13
          Caption = 'Dados Para Busca'
        end
        object GroupBox3: TGroupBox [1]
          Left = 6
          Top = 13
          Width = 251
          Height = 43
          Caption = 'Data do Vencimento'
          TabOrder = 2
          object Label1: TLabel
            Left = 117
            Top = 19
            Width = 17
            Height = 13
            Caption = 'At'#233
          end
          object txtInicio: TDateEdit
            Left = 9
            Top = 16
            Width = 103
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
          end
          object txtTermino: TDateEdit
            Left = 139
            Top = 16
            Width = 102
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        inherited btConsultar: TPngBitBtn
          Left = 738
          Top = 16
          ExplicitLeft = 738
          ExplicitTop = 16
        end
        inherited btEditar: TPngBitBtn
          Left = 738
          Top = 50
          OnClick = btEditarClick
          ExplicitLeft = 738
          ExplicitTop = 50
        end
        object txtLocaliza: TEdit
          Left = 8
          Top = 71
          Width = 641
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object GroupBox4: TGroupBox
          Left = 262
          Top = 13
          Width = 129
          Height = 43
          Caption = 'Campo de Consulta'
          TabOrder = 4
          object txtCampo: TComboBox
            Left = 6
            Top = 17
            Width = 115
            Height = 21
            Style = csDropDownList
            ItemIndex = 2
            TabOrder = 0
            Text = 'Nome do Cliente'
            Items.Strings = (
              'C'#243'digo da Conta'
              'C'#243'digo do Cliente'
              'Nome do Cliente')
          end
        end
        object GroupBox6: TGroupBox
          Left = 397
          Top = 13
          Width = 121
          Height = 43
          Caption = 'Posi'#231#227'o do Documento'
          TabOrder = 5
          object txtPosicao: TComboBox
            Left = 6
            Top = 17
            Width = 107
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = 'Em Aberto'
            Items.Strings = (
              'Em Aberto'
              'A Vencer'
              'Vencidos'
              'Quitados'
              'Devolvidos'
              'Caducas'
              'Todos')
          end
        end
        object txtOrdem: TRadioGroup
          Left = 652
          Top = 13
          Width = 84
          Height = 79
          Caption = 'Ordenado Por'
          ItemIndex = 3
          Items.Strings = (
            'Cliente'
            'Lan'#231'amento'
            'Vencimento'
            'Posi'#231#227'o')
          TabOrder = 6
        end
      end
      object txtAReceber: TCurrencyEdit
        Left = 10
        Top = 486
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
        TabOrder = 2
      end
      object txtVencida: TCurrencyEdit
        Left = 136
        Top = 486
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
        TabOrder = 3
      end
      object txtJuros: TCurrencyEdit
        Left = 262
        Top = 486
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 33023
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object txtPago: TCurrencyEdit
        Left = 389
        Top = 486
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object txtDevolvido: TCurrencyEdit
        Left = 515
        Top = 486
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object txtGeral: TCurrencyEdit
        Left = 642
        Top = 486
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
        TabOrder = 7
      end
    end
    inherited status: TPanel
      Top = 542
      Width = 867
      ExplicitTop = 542
      ExplicitWidth = 867
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTabDAT_LANC: TDateField
      FieldName = 'DAT_LANC'
    end
    object cdsTabCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
    end
    object cdsTabNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInWhere]
      Size = 100
    end
    object cdsTabPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 50
    end
    object cdsTabVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsTabVLR_PRINC: TSingleField
      FieldName = 'VLR_PRINC'
      currency = True
    end
    object cdsTabVLR_ACRES: TSingleField
      FieldName = 'VLR_ACRES'
      currency = True
    end
    object cdsTabSALDO_DEV: TSingleField
      FieldName = 'SALDO_DEV'
      currency = True
    end
    object cdsTabPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 1
    end
  end
  inherited dspTab: TDataSetProvider
    UpdateMode = upWhereKeyOnly
  end
  inherited sqlTab: TSQLQuery
    SQL.Strings = (
      'SELECT'
      
        '   C.COD_REC, C.DAT_LANC, C.COD_CLIE, CC.NOME, C.PARCELA,C.VENCI' +
        'MENTO, C.VLR_PRINC, C.VLR_ACRES, C.SALDO_DEV,'
      '   C.POSICAO'
      'FROM CREC C, COMPRADOR CC WHERE C.COD_CLIE = CC.COD_COMP')
    object sqlTabCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlTabDAT_LANC: TDateField
      FieldName = 'DAT_LANC'
    end
    object sqlTabCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
    end
    object sqlTabNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInWhere]
      Size = 100
    end
    object sqlTabPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 50
    end
    object sqlTabVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object sqlTabVLR_PRINC: TSingleField
      FieldName = 'VLR_PRINC'
    end
    object sqlTabVLR_ACRES: TSingleField
      FieldName = 'VLR_ACRES'
    end
    object sqlTabSALDO_DEV: TSingleField
      FieldName = 'SALDO_DEV'
    end
    object sqlTabPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 1
    end
  end
end
