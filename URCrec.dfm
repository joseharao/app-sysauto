inherited frmRCrec: TfrmRCrec
  Caption = 'frmRCrec'
  ExplicitWidth = 798
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    inherited RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 103
      Font.Height = -11
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 19
      ExplicitTop = 19
      ExplicitWidth = 756
      ExplicitHeight = 103
      object RLLabel9: TRLLabel [0]
        Left = 4
        Top = 93
        Width = 753
        Height = 14
        Caption = 
          '================================================================' +
          '============================================================='
      end
      inherited RLLabel1: TRLLabel
        Left = 190
        Top = 9
        Width = 354
        Caption = 'Relat'#243'rio de Contas a Receber'
        ExplicitLeft = 190
        ExplicitTop = 9
        ExplicitWidth = 354
      end
      inherited RLSystemInfo2: TRLSystemInfo
        Left = 509
        ExplicitLeft = 509
      end
      object RLLabel3: TRLLabel
        Left = 4
        Top = 82
        Width = 42
        Height = 14
        Caption = 'C'#243'digo'
      end
      object RLLabel8: TRLLabel
        Left = 4
        Top = 69
        Width = 753
        Height = 14
        Caption = 
          '================================================================' +
          '============================================================='
      end
      object RLLabel4: TRLLabel
        Left = 69
        Top = 82
        Width = 42
        Height = 14
        Caption = 'Cliente'
      end
      object RLLabel5: TRLLabel
        Left = 257
        Top = 82
        Width = 70
        Height = 14
        Caption = 'Vencimento'
      end
      object RLLabel6: TRLLabel
        Left = 334
        Top = 82
        Width = 82
        Height = 14
        Caption = 'Valor Principal'
      end
      object RLLabel7: TRLLabel
        Left = 681
        Top = 82
        Width = 70
        Height = 14
        Caption = 'Tipo de Doc.'
      end
      object RLLabel10: TRLLabel
        Left = 429
        Top = 82
        Width = 35
        Height = 14
        Caption = 'Juros'
      end
      object RLLabel12: TRLLabel
        Left = 477
        Top = 82
        Width = 55
        Height = 14
        Caption = 'Desconto'
      end
      object RLLabel13: TRLLabel
        Left = 540
        Top = 82
        Width = 62
        Height = 14
        Caption = 'Valor Pago'
      end
      object RLLabel14: TRLLabel
        Left = 607
        Top = 82
        Width = 59
        Height = 14
        Caption = 'Saldo Dev.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited RLBand2: TRLBand
      Left = 19
      Top = 185
      Width = 756
      ExplicitLeft = 19
      ExplicitTop = 185
      ExplicitWidth = 756
      inherited RLLabel2: TRLLabel
        Width = 756
        ExplicitWidth = 756
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 122
      Width = 756
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBText2: TRLDBText
        Left = 4
        Top = 0
        Width = 61
        Height = 15
        AutoSize = False
        DataField = 'COD_REC'
        DataSource = dsTab
      end
      object RLDBText3: TRLDBText
        Left = 69
        Top = 0
        Width = 186
        Height = 15
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsTab
      end
      object RLDBText4: TRLDBText
        Left = 257
        Top = 0
        Width = 70
        Height = 15
        AutoSize = False
        DataField = 'VENCIMENTO'
        DataSource = dsTab
      end
      object RLDBText5: TRLDBText
        Left = 334
        Top = 0
        Width = 80
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'VLR_PRIC'
        DataSource = dsTab
      end
      object RLDBText6: TRLDBText
        Left = 682
        Top = 0
        Width = 76
        Height = 15
        AutoSize = False
        DataField = 'FINALIZADORA'
        DataSource = dsTab
      end
      object RLDBText1: TRLDBText
        Left = 421
        Top = 0
        Width = 54
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'JUROS'
        DataSource = dsTab
      end
      object RLDBText7: TRLDBText
        Left = 477
        Top = 0
        Width = 56
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'VLR_DESC'
        DataSource = dsTab
      end
      object RLDBText8: TRLDBText
        Left = 539
        Top = 0
        Width = 62
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'VLR_PAGO'
        DataSource = dsTab
      end
      object RLDBText9: TRLDBText
        Left = 607
        Top = 0
        Width = 64
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'SALDO_DEV'
        DataSource = dsTab
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 139
      Width = 756
      Height = 46
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel11: TRLLabel
        Left = 4
        Top = -6
        Width = 751
        Height = 14
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-----------------------------------------------------------'
      end
      object RLDBResult1: TRLDBResult
        Left = 4
        Top = 8
        Width = 172
        Height = 15
        DataField = 'VLR_PRIC'
        DataSource = dsTab
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Vlr Principal: '
      end
      object RLDBResult2: TRLDBResult
        Left = 268
        Top = 8
        Width = 119
        Height = 15
        DataField = 'JUROS'
        DataSource = dsTab
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Juros: '
      end
      object RLDBResult3: TRLDBResult
        Left = 268
        Top = 29
        Width = 161
        Height = 15
        DataField = 'VLR_DESC'
        DataSource = dsTab
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Desconto: '
      end
      object RLDBResult4: TRLDBResult
        Left = 548
        Top = 6
        Width = 160
        Height = 15
        DataField = 'VLR_PAGO'
        DataSource = dsTab
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Vlr. Pago: '
      end
      object RLDBResult5: TRLDBResult
        Left = 548
        Top = 27
        Width = 175
        Height = 15
        DataField = 'SALDO_DEV'
        DataSource = dsTab
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Saldo Dev.: '
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      Required = True
    end
    object cdsTabVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsTabVLR_PRIC: TSingleField
      FieldName = 'VLR_PRIC'
      currency = True
    end
    object cdsTabJUROS: TSingleField
      FieldName = 'JUROS'
      currency = True
    end
    object cdsTabVLR_DESC: TSingleField
      FieldName = 'VLR_DESC'
      currency = True
    end
    object cdsTabVLR_PAGO: TSingleField
      FieldName = 'VLR_PAGO'
      currency = True
    end
    object cdsTabSALDO_DEV: TSingleField
      FieldName = 'SALDO_DEV'
      currency = True
    end
    object cdsTabFINALIZADORA: TStringField
      FieldName = 'FINALIZADORA'
      Size = 100
    end
    object cdsTabNOME: TStringField
      FieldName = 'NOME'
      Size = 114
    end
  end
  inherited sqlTab: TSQLQuery
    SQL.Strings = (
      'SELECT'
      
        ' C.COD_REC, C.COD_CLIE || '#39' - '#39' || CC.NOME AS NOME, C.VENCIMENTO' +
        ', CAST(COALESCE(C.VLR_PRIC, 0) AS FLOAT) AS VLR_PRIC, CAST(COALE' +
        'SCE(C.JUROS, 0) AS FLOAT) AS JUROS, CAST(COALESCE(C.VLR_DESC, 0)' +
        ' AS FLOAT) AS VLR_DESC, CAST(COALESCE(C.VLR_PAGO, 0) AS FLOAT) A' +
        'S VLR_PAGO, CAST(COALESCE(C.SALDO_DEV, 0) AS FLOAT) AS SALDO_DEV' +
        ','
      
        ' (SELECT F.DESCRICAO FROM FINALIZ F WHERE F.FINALIZADORA = C.TP_' +
        'DOC) AS FINALIZADORA'
      'FROM CREC C, CLIEN CC WHERE C.COD_CLIE = CC.COD_CLIE')
  end
end
