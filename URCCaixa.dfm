inherited frmRCCaixa: TfrmRCCaixa
  Caption = 'frmRCCaixa'
  ClientWidth = 806
  OnCreate = FormCreate
  ExplicitWidth = 822
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    Left = -176
    Top = 8
    ExplicitLeft = -176
    ExplicitTop = 8
    inherited RLBand1: TRLBand
      Height = 107
      Font.Height = -11
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 107
      object RLLabel9: TRLLabel [0]
        Left = 4
        Top = 98
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object RLLabel8: TRLLabel [1]
        Left = 4
        Top = 74
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      inherited RLLabel1: TRLLabel
        Left = 169
        Width = 357
        Caption = 'Relat'#243'rio de Controle de Caixa'
        ExplicitLeft = 169
        ExplicitWidth = 357
      end
      object RLLabel3: TRLLabel
        Left = 4
        Top = 87
        Width = 50
        Height = 14
        Caption = 'Registro'
      end
      object RLLabel4: TRLLabel
        Left = 86
        Top = 87
        Width = 114
        Height = 14
        Caption = 'Data do Lan'#231'amento'
      end
      object RLLabel5: TRLLabel
        Left = 211
        Top = 87
        Width = 52
        Height = 14
        Caption = 'Hist'#243'rico'
      end
      object RLLabel6: TRLLabel
        Left = 460
        Top = 87
        Width = 103
        Height = 14
        Caption = 'Valor da Opera'#231#227'o'
      end
      object RLLabel7: TRLLabel
        Left = 617
        Top = 87
        Width = 55
        Height = 14
        Caption = 'Opera'#231#227'o'
      end
    end
    inherited RLBand2: TRLBand
      Top = 241
      ExplicitTop = 241
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 145
      Width = 718
      Height = 70
      DataFields = 'OP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 21
        BandType = btColumnHeader
        object RLLabel10: TRLLabel
          Left = 4
          Top = 10
          Width = 711
          Height = 15
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '-------------------------------------------------'
        end
        object txtCab: TRLDBText
          Left = 2
          Top = 1
          Width = 146
          Height = 15
          DataField = 'OPERACAO'
          DataSource = dsTab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Registros de: '
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 21
        Width = 718
        Height = 17
        BeforePrint = RLBand4BeforePrint
        object RLDBText2: TRLDBText
          Left = 4
          Top = 0
          Width = 76
          Height = 15
          AutoSize = False
          DataField = 'COD_LANCA'
          DataSource = dsTab
        end
        object RLDBText3: TRLDBText
          Left = 86
          Top = 0
          Width = 114
          Height = 15
          AutoSize = False
          DataField = 'DATA'
          DataSource = dsTab
        end
        object RLDBText4: TRLDBText
          Left = 211
          Top = 0
          Width = 238
          Height = 15
          AutoSize = False
          DataField = 'HISTORICO'
          DataSource = dsTab
        end
        object RLDBText5: TRLDBText
          Left = 460
          Top = 0
          Width = 103
          Height = 15
          AutoSize = False
          DataField = 'VLR_OPE'
          DataSource = dsTab
        end
        object RLDBText6: TRLDBText
          Left = 617
          Top = 0
          Width = 76
          Height = 15
          AutoSize = False
          DataField = 'OP'
          DataSource = dsTab
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 38
        Width = 718
        Height = 28
        BandType = btSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        object RLLabel11: TRLLabel
          Left = 4
          Top = -6
          Width = 711
          Height = 15
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '-------------------------------------------------'
        end
        object RLDBResult1: TRLDBResult
          Left = 559
          Top = 8
          Width = 156
          Height = 15
          Alignment = taRightJustify
          DataField = 'VLR_OPE'
          DataSource = dsTab
          DisplayMask = 'R$ #,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic, fsUnderline]
          Info = riSum
          ParentFont = False
          Text = 'Sub-Total: '
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 215
      Width = 718
      Height = 26
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      BeforePrint = RLBand6BeforePrint
      object RLLabel12: TRLLabel
        Left = 4
        Top = -5
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object txtSaldo: TRLLabel
        Left = 576
        Top = 7
        Width = 57
        Height = 16
      end
      object txtEntrada: TRLLabel
        Left = 5
        Top = 7
        Width = 69
        Height = 16
      end
      object txtSaida: TRLLabel
        Left = 338
        Top = 7
        Width = 57
        Height = 16
      end
    end
  end
  object RLReport2: TRLReport [1]
    Left = 120
    Top = 269
    Width = 794
    Height = 1123
    DataSource = dsTab
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand7: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 107
      BandType = btColumnHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel13: TRLLabel
        Left = 4
        Top = 98
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object RLLabel14: TRLLabel
        Left = 4
        Top = 74
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object RLLabel15: TRLLabel
        Left = 169
        Top = 11
        Width = 357
        Height = 29
        Caption = 'Relat'#243'rio de Controle de Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 0
        Top = 50
        Width = 130
        Height = 14
        Align = faLeftOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Data da Emiss'#227'o: '
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 471
        Top = 49
        Width = 247
        Height = 14
        Align = faRightOnly
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPagePreview
        ParentFont = False
        Text = 'P'#225'gina: # de #'
      end
      object RLLabel16: TRLLabel
        Left = 4
        Top = 87
        Width = 50
        Height = 14
        Caption = 'Registro'
      end
      object RLLabel17: TRLLabel
        Left = 86
        Top = 87
        Width = 114
        Height = 14
        Caption = 'Data do Lan'#231'amento'
      end
      object RLLabel18: TRLLabel
        Left = 211
        Top = 87
        Width = 52
        Height = 14
        Caption = 'Hist'#243'rico'
      end
      object RLLabel19: TRLLabel
        Left = 460
        Top = 87
        Width = 103
        Height = 14
        Caption = 'Valor da Opera'#231#227'o'
      end
      object RLLabel20: TRLLabel
        Left = 617
        Top = 87
        Width = 55
        Height = 14
        Caption = 'Opera'#231#227'o'
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 14
      BandType = btFooter
      object RLLabel21: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 14
        Align = faClient
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'SISCOFI - Sistema Financeiro Integrado [Vers'#227'o: [8.0.0] Desenvol' +
          'vidoPor: InforCENTER Sistemas]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6447714
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 162
      Width = 718
      Height = 26
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      BeforePrint = RLBand6BeforePrint
      object RLLabel24: TRLLabel
        Left = 4
        Top = -5
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object txtSaldo2: TRLLabel
        Left = 576
        Top = 7
        Width = 64
        Height = 16
      end
      object txtEntrada2: TRLLabel
        Left = 5
        Top = 7
        Width = 76
        Height = 16
      end
      object txtSaida2: TRLLabel
        Left = 338
        Top = 7
        Width = 64
        Height = 16
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 17
      BeforePrint = RLBand4BeforePrint
      object RLDBText7: TRLDBText
        Left = 4
        Top = 0
        Width = 76
        Height = 15
        AutoSize = False
        DataField = 'COD_LANCA'
        DataSource = dsTab
      end
      object RLDBText8: TRLDBText
        Left = 86
        Top = 0
        Width = 114
        Height = 15
        AutoSize = False
        DataField = 'DATA'
        DataSource = dsTab
      end
      object RLDBText9: TRLDBText
        Left = 211
        Top = 0
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'HISTORICO'
        DataSource = dsTab
      end
      object RLDBText10: TRLDBText
        Left = 460
        Top = 0
        Width = 103
        Height = 15
        AutoSize = False
        DataField = 'VLR_OPE'
        DataSource = dsTab
      end
      object RLDBText11: TRLDBText
        Left = 617
        Top = 0
        Width = 76
        Height = 15
        AutoSize = False
        DataField = 'OP'
        DataSource = dsTab
      end
    end
  end
  object RLReport3: TRLReport [2]
    Left = 512
    Top = 377
    Width = 794
    Height = 1123
    DataSource = dsRes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand9: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 107
      BandType = btColumnHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel22: TRLLabel
        Left = 4
        Top = 98
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object RLLabel23: TRLLabel
        Left = 4
        Top = 74
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object RLLabel25: TRLLabel
        Left = 125
        Top = 11
        Width = 493
        Height = 29
        Caption = 'Relat'#243'rio de Resumo de Controle de Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        Left = 0
        Top = 50
        Width = 130
        Height = 14
        Align = faLeftOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Data da Emiss'#227'o: '
      end
      object RLSystemInfo6: TRLSystemInfo
        Left = 471
        Top = 49
        Width = 247
        Height = 14
        Align = faRightOnly
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPagePreview
        ParentFont = False
        Text = 'P'#225'gina: # de #'
      end
      object RLLabel26: TRLLabel
        Left = 4
        Top = 87
        Width = 36
        Height = 14
        Caption = 'Turno'
      end
      object RLLabel27: TRLLabel
        Left = 154
        Top = 87
        Width = 114
        Height = 14
        Caption = 'Data do Lan'#231'amento'
      end
      object RLLabel28: TRLLabel
        Left = 274
        Top = 87
        Width = 52
        Height = 14
        Caption = 'Hist'#243'rico'
      end
      object RLLabel29: TRLLabel
        Left = 525
        Top = 87
        Width = 55
        Height = 14
        Caption = 'Opera'#231#227'o'
      end
      object RLLabel30: TRLLabel
        Left = 612
        Top = 87
        Width = 103
        Height = 14
        Caption = 'Valor da Opera'#231#227'o'
      end
      object RLLabel36: TRLLabel
        Left = 84
        Top = 87
        Width = 63
        Height = 14
        Caption = 'Num. Caixa'
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 14
      BandType = btFooter
      object RLLabel31: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 14
        Align = faClient
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'SISCOFI - Sistema Financeiro Integrado [Vers'#227'o: [8.0.0] Desenvol' +
          'vidoPor: InforCENTER Sistemas]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6447714
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand13: TRLBand
      Left = 38
      Top = 162
      Width = 718
      Height = 26
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      BeforePrint = RLBand6BeforePrint
      object RLLabel32: TRLLabel
        Left = 4
        Top = -5
        Width = 711
        Height = 14
        Caption = 
          '================================================================' +
          '======================================================'
      end
      object txtEntrada3: TRLDBResult
        Left = 45
        Top = 8
        Width = 168
        Height = 16
        DataField = 'VLR_OPE'
        DataSource = dsRes
        DisplayMask = 'R$ #,##0.00'
        Info = riSum
        Text = 'Entradas: '
        OnCompute = txtEntrada3Compute
      end
      object txtSaida3: TRLDBResult
        Left = 268
        Top = 8
        Width = 156
        Height = 16
        DataField = 'VLR_OPE'
        DataSource = dsRes
        DisplayMask = 'R$ #,##0.00'
        Info = riSum
        Text = 'Sa'#237'das: '
        OnCompute = txtSaida3Compute
      end
      object RLDBResult2: TRLDBResult
        Left = 492
        Top = 8
        Width = 258
        Height = 16
        DataFormula = 'txtEntrada3 - txtSaida3'
        DataSource = dsRes
        DisplayMask = 'R$ #,##0.00'
        Text = 'Saldo: '
      end
    end
    object RLBand14: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 17
      BeforePrint = RLBand4BeforePrint
      object RLDBText1: TRLDBText
        Left = 4
        Top = 0
        Width = 76
        Height = 15
        AutoSize = False
        DataField = 'COD_TURNO'
        DataSource = dsRes
      end
      object RLDBText12: TRLDBText
        Left = 154
        Top = 0
        Width = 114
        Height = 15
        AutoSize = False
        DataField = 'DATA'
        DataSource = dsRes
      end
      object RLDBText13: TRLDBText
        Left = 274
        Top = 0
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'HISTORICO'
        DataSource = dsRes
      end
      object RLDBText14: TRLDBText
        Left = 612
        Top = 0
        Width = 103
        Height = 15
        AutoSize = False
        DataField = 'VLR_OPE'
        DataSource = dsRes
      end
      object RLDBText15: TRLDBText
        Left = 525
        Top = 3
        Width = 76
        Height = 15
        AutoSize = False
        DataField = 'OP'
        DataSource = dsRes
      end
      object RLDBText16: TRLDBText
        Left = 84
        Top = 0
        Width = 66
        Height = 15
        AutoSize = False
        DataField = 'NUM_CAIXA'
        DataSource = dsRes
      end
    end
  end
  inherited cdsTab: TClientDataSet
    object cdsTabCOD_LANCA: TIntegerField
      FieldName = 'COD_LANCA'
      Required = True
    end
    object cdsTabDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsTabHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object cdsTabOP: TStringField
      FieldName = 'OP'
      Size = 11
    end
    object cdsTabVLR_OPE: TSingleField
      FieldName = 'VLR_OPE'
      currency = True
    end
  end
  inherited sqlTab: TSQLQuery
    SQL.Strings = (
      'SELECT'
      
        ' C.COD_LANCA, C.DATA, C.HISTORICO, CAST(C.VLR_OPE AS FLOAT) AS V' +
        'LR_OPE,'
      '    CASE C.OP'
      '        WHEN '#39'E'#39' THEN '#39'Entrada'#39
      '        WHEN '#39'S'#39' THEN '#39'Sa'#237'da'#39
      '        WHEN '#39'R'#39' THEN '#39'Recebimento'#39
      '    END AS OPERACAO, C.OP'
      'FROM LANCA C')
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 576
    Top = 312
  end
  object dsRes: TDataSource
    DataSet = cdsRes
    Left = 448
    Top = 56
  end
  object dspRes: TDataSetProvider
    DataSet = sqlRes
    Left = 487
    Top = 56
  end
  object cdsRes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRes'
    Left = 531
    Top = 56
    object cdsResCOD_TURNO: TIntegerField
      FieldName = 'COD_TURNO'
    end
    object cdsResNUM_CAIXA: TIntegerField
      FieldName = 'NUM_CAIXA'
    end
    object cdsResDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsResOP: TStringField
      FieldName = 'OP'
      Size = 11
    end
    object cdsResHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object cdsResVLR_OPE: TSingleField
      FieldName = 'VLR_OPE'
      currency = True
    end
  end
  object sqlRes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        '   L.COD_TURNO, L.NUM_CAIXA, L.DATA, L.OP, '#39'FECHAMENTO DE TURNO ' +
        #39' || L.COD_TURNO AS HISTORICO, CAST(SUM(COALESCE(L.VLR_OPE, 0)) ' +
        'AS FLOAT) AS VLR_OPE'
      'FROM LANCA L WHERE L.COD_VENDA > 0 AND L.OP = '#39'Entrada'#39
      'GROUP BY L.COD_TURNO, L.NUM_CAIXA, L.DATA, L.OP'
      ''
      'UNION ALL'
      ''
      'SELECT'
      
        '     L.COD_TURNO, L.NUM_CAIXA, L.DATA, L.OP, L.HISTORICO, CAST(L' +
        '.VLR_OPE AS FLOAT)'
      'FROM LANCA L WHERE L.OP = '#39'Sa'#237'da'#39
      ''
      'ORDER BY 3, 4')
    SQLConnection = Dados.DB
    Left = 573
    Top = 56
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 440
    Top = 232
  end
end
