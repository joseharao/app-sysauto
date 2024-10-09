object frmRecibo: TfrmRecibo
  Left = 0
  Top = 0
  Caption = 'frmRecibo'
  ClientHeight = 540
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -5
    Top = -16
    Width = 794
    Height = 1123
    DataSource = dsTab
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 459
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 218
        Top = 137
        Width = 302
        Height = 29
        Caption = 'RECIBO DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 31
        Top = 188
        Width = 659
        Height = 16
        Caption = 
          'Recebi(emos) de ________________________________________________' +
          '_______________________________'
      end
      object RLLabel3: TRLLabel
        Left = 31
        Top = 216
        Width = 659
        Height = 16
        Caption = 
          'a quantia de R$ ________________________________________________' +
          '________________________________'
      end
      object RLLabel4: TRLLabel
        Left = 31
        Top = 275
        Width = 661
        Height = 16
        Caption = 
          'correspondente a _______________________________________________' +
          '________________________________'
      end
      object RLLabel5: TRLLabel
        Left = 31
        Top = 246
        Width = 663
        Height = 16
        Caption = 
          '(_______________________________________________________________' +
          '______________________________)'
      end
      object RLLabel6: TRLLabel
        Left = 31
        Top = 305
        Width = 662
        Height = 16
        Caption = 
          'e para clareza firmo(amos) o presente na cidade de _____________' +
          '______________________________________'
      end
      object RLLabel7: TRLLabel
        Left = 31
        Top = 337
        Width = 659
        Height = 16
        Caption = 
          'no dia _________________________________________________________' +
          '_______________________________'
      end
      object RLLabel8: TRLLabel
        Left = 124
        Top = 380
        Width = 494
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______'
      end
      object RLLabel9: TRLLabel
        Left = 329
        Top = 402
        Width = 66
        Height = 16
        Caption = 'Assinatura'
      end
      object RLDBText2: TRLDBText
        Left = 335
        Top = 302
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = dsTab
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 77
        Top = 336
        Width = 60
        Height = 16
        Info = itFullDate
      end
      object txtQuantia: TRLLabel
        Left = 132
        Top = 214
        Width = 64
        Height = 16
      end
      object txtQuantiaExtenso: TRLLabel
        Left = 43
        Top = 245
        Width = 120
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtParcelas: TRLLabel
        Left = 139
        Top = 273
        Width = 70
        Height = 16
      end
      object RLLogo: TRLImage
        Left = 248
        Top = 16
        Width = 217
        Height = 105
        Stretch = True
      end
      object txtNome: TRLLabel
        Left = 133
        Top = 186
        Width = 53
        Height = 16
      end
    end
  end
  object sqlTab: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PARAM')
    SQLConnection = Dados.DB
    Left = 549
  end
  object cdsTab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab'
    Left = 507
    object cdsTabCOD_LOJA: TSmallintField
      FieldName = 'COD_LOJA'
      Required = True
    end
    object cdsTabRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 80
    end
    object cdsTabNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 100
    end
    object cdsTabCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsTabINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 30
    end
    object cdsTabENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsTabCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object cdsTabBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 90
    end
    object cdsTabPROCESSO_BANCO: TStringField
      FieldName = 'PROCESSO_BANCO'
      Size = 1
    end
    object cdsTabUSA_TERMOGARANTIA: TStringField
      FieldName = 'USA_TERMOGARANTIA'
      Size = 1
    end
    object cdsTabUSA_RECIBO: TStringField
      FieldName = 'USA_RECIBO'
      Size = 1
    end
    object cdsTabUSA_SENHAESPECIAL: TStringField
      FieldName = 'USA_SENHAESPECIAL'
      Size = 1
    end
    object cdsTabCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object cdsTabESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 16
    end
    object cdsTabTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsTabFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object cdsTabEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsTabUSA_ALTERAPRECOPA: TStringField
      FieldName = 'USA_ALTERAPRECOPA'
      Size = 1
    end
    object cdsTabUSA_CARNE: TStringField
      FieldName = 'USA_CARNE'
      Size = 1
    end
    object cdsTabWEB_PAGE: TStringField
      FieldName = 'WEB_PAGE'
      Size = 80
    end
    object cdsTabUSA_ALTERAPRECOPDV: TStringField
      FieldName = 'USA_ALTERAPRECOPDV'
      Size = 1
    end
    object cdsTabUSA_IMPRIMIRPV: TStringField
      FieldName = 'USA_IMPRIMIRPV'
      Size = 1
    end
    object cdsTabLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object cdsTabTX_RECCT: TStringField
      FieldName = 'TX_RECCT'
      Size = 10
    end
    object cdsTabUSA_CONTRATO: TStringField
      FieldName = 'USA_CONTRATO'
      Size = 1
    end
    object cdsTabTX_CHEQUE: TStringField
      FieldName = 'TX_CHEQUE'
      Size = 10
    end
    object cdsTabUSA_ALTERACREC: TStringField
      FieldName = 'USA_ALTERACREC'
      Size = 1
    end
    object cdsTabPRZ_PADRAO: TIntegerField
      FieldName = 'PRZ_PADRAO'
    end
    object cdsTabUSA_REGRELATORIO: TFMTBCDField
      FieldName = 'USA_REGRELATORIO'
      Precision = 15
      Size = 2
    end
    object cdsTabPRZ_PD_CHEQUE: TSmallintField
      FieldName = 'PRZ_PD_CHEQUE'
    end
    object cdsTabDESC_MAXIMO: TStringField
      FieldName = 'DESC_MAXIMO'
      Size = 6
    end
    object cdsTabMSG_VENDA: TStringField
      FieldName = 'MSG_VENDA'
      Size = 100
    end
    object cdsTabCOMP_VENDA: TSmallintField
      FieldName = 'COMP_VENDA'
    end
    object cdsTabDIAS_CAR: TFMTBCDField
      FieldName = 'DIAS_CAR'
      Precision = 15
      Size = 2
    end
    object cdsTabTP_CARNE: TSmallintField
      FieldName = 'TP_CARNE'
    end
    object cdsTabDIAS_ORCAMENTO: TIntegerField
      FieldName = 'DIAS_ORCAMENTO'
    end
    object cdsTabPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Size = 1
    end
    object cdsTabNR_CAIXA: TIntegerField
      FieldName = 'NR_CAIXA'
    end
    object cdsTabNCAIXA: TIntegerField
      FieldName = 'NCAIXA'
    end
    object cdsTabU_ACESSO: TDateField
      FieldName = 'U_ACESSO'
    end
    object cdsTabIMP_COMP: TStringField
      FieldName = 'IMP_COMP'
      Size = 1
    end
    object cdsTabBASE: TStringField
      FieldName = 'BASE'
      Size = 5
    end
    object cdsTabP_EXCLUSAO: TStringField
      FieldName = 'P_EXCLUSAO'
      Size = 1
    end
    object cdsTabSA: TStringField
      FieldName = 'SA'
      Size = 1
    end
    object cdsTabSU: TStringField
      FieldName = 'SU'
      Size = 1
    end
    object cdsTabDIAS_REL: TIntegerField
      FieldName = 'DIAS_REL'
    end
    object cdsTabCLASSE_A: TStringField
      FieldName = 'CLASSE_A'
      Size = 3
    end
    object cdsTabCLASSE_B: TStringField
      FieldName = 'CLASSE_B'
      Size = 3
    end
    object cdsTabCLASSE_C: TStringField
      FieldName = 'CLASSE_C'
      Size = 3
    end
    object cdsTabEXEC: TStringField
      FieldName = 'EXEC'
      FixedChar = True
      Size = 1
    end
    object cdsTabMENSAL: TDateField
      FieldName = 'MENSAL'
    end
    object cdsTabSEMANAL: TDateField
      FieldName = 'SEMANAL'
    end
    object cdsTabACAIXA: TStringField
      FieldName = 'ACAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsTabULT_REDU: TDateField
      FieldName = 'ULT_REDU'
    end
    object cdsTabHORA_REDU: TTimeField
      FieldName = 'HORA_REDU'
    end
    object cdsTabCEP: TStringField
      FieldName = 'CEP'
      Size = 13
    end
    object cdsTabCONTA_ANA: TIntegerField
      FieldName = 'CONTA_ANA'
    end
    object cdsTabBAIXA_ESTOQUE_TA: TStringField
      FieldName = 'BAIXA_ESTOQUE_TA'
      Size = 1
    end
    object cdsTabUSAR_EMBALAGEM: TStringField
      FieldName = 'USAR_EMBALAGEM'
      Size = 1
    end
    object cdsTabUSA_AVISO_C_COBRANCAO: TStringField
      FieldName = 'USA_AVISO_C_COBRANCAO'
      Size = 1
    end
    object cdsTabUSA_ATUALIZA_ESTOQUE_CADASTRO: TStringField
      FieldName = 'USA_ATUALIZA_ESTOQUE_CADASTRO'
      Size = 1
    end
    object cdsTabUSA_TRAVA_MUDAR_CLIENTE_PDV: TStringField
      FieldName = 'USA_TRAVA_MUDAR_CLIENTE_PDV'
      Size = 1
    end
    object cdsTabCONTA_CAIXA_LOCAL: TIntegerField
      FieldName = 'CONTA_CAIXA_LOCAL'
    end
    object cdsTabUSA_IMP_CLIENTE_COMP: TStringField
      FieldName = 'USA_IMP_CLIENTE_COMP'
      Size = 1
    end
    object cdsTabUSA_PERNOITE: TStringField
      FieldName = 'USA_PERNOITE'
      Size = 1
    end
    object cdsTabUSA_CONT_QUANTIDADE: TStringField
      FieldName = 'USA_CONT_QUANTIDADE'
      Size = 1
    end
    object cdsTabCOD_GPRS_PRC: TStringField
      FieldName = 'COD_GPRS_PRC'
      Size = 200
    end
  end
  object dspTab: TDataSetProvider
    DataSet = sqlTab
    Left = 463
  end
  object dsTab: TDataSource
    DataSet = cdsTab
    Left = 424
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.71B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 616
    Top = 208
  end
end
