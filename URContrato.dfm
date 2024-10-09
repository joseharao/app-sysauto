object frmContrato: TfrmContrato
  Left = 0
  Top = 0
  Caption = 'frmContrato'
  ClientHeight = 620
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport2: TRLReport
    Left = -17
    Top = -45
    Width = 794
    Height = 1123
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsTab
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1041
      BeforePrint = RLBand1BeforePrint
      object RLDraw10: TRLDraw
        Left = 1
        Top = 2
        Width = 716
        Height = 277
      end
      object RLDraw11: TRLDraw
        Left = 1
        Top = 374
        Width = 716
        Height = 283
      end
      object RLDraw12: TRLDraw
        Left = 534
        Top = 374
        Width = 183
        Height = 283
      end
      object RLImage1: TRLImage
        Left = 5
        Top = 6
        Width = 292
        Height = 101
        Stretch = True
      end
      object RLLabel39: TRLLabel
        Left = 312
        Top = 62
        Width = 134
        Height = 45
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -40
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw13: TRLDraw
        Left = 427
        Top = 24
        Width = 27
        Height = 25
      end
      object RLLabel40: TRLLabel
        Left = 457
        Top = 29
        Width = 61
        Height = 16
        Caption = 'COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 554
        Top = 29
        Width = 48
        Height = 16
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw14: TRLDraw
        Left = 524
        Top = 24
        Width = 27
        Height = 25
      end
      object RLLabel42: TRLLabel
        Left = 651
        Top = 29
        Width = 49
        Height = 16
        Caption = 'TROCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw15: TRLDraw
        Left = 621
        Top = 24
        Width = 27
        Height = 25
      end
      object RLLabel43: TRLLabel
        Left = 458
        Top = 62
        Width = 73
        Height = 45
        Caption = 'R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -40
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw16: TRLDraw
        Left = 537
        Top = 59
        Width = 168
        Height = 48
      end
      object RLDBText28: TRLDBText
        Left = 562
        Top = 72
        Width = 120
        Height = 22
        Alignment = taCenter
        DataField = 'VLR_TRANS'
        DataSource = dsTab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 18
        Top = 116
        Width = 685
        Height = 16
        Caption = 
          'Recebi do (a) Sr. (a) __________________________________________' +
          '______________________________________'
      end
      object RLLabel45: TRLLabel
        Left = 18
        Top = 142
        Width = 683
        Height = 16
        Caption = 
          'A import'#226'ncia de R$  ___________________________________________' +
          '____________________________________'
      end
      object RLLabel46: TRLLabel
        Left = 18
        Top = 170
        Width = 682
        Height = 16
        Caption = 
          'Referente a _____________________ do Ve'#237'culo Abaixo Caracterizad' +
          'o: _____________________________________'
      end
      object RLLabel47: TRLLabel
        Left = 18
        Top = 197
        Width = 680
        Height = 16
        Caption = 
          'Marca: __________________ Ano: _____________ Modelo: ___________' +
          '________ KM: _______________________'
      end
      object RLLabel48: TRLLabel
        Left = 18
        Top = 225
        Width = 681
        Height = 16
        Caption = 
          'Cor: ________________ Placa: ______________ Chassi: ____________' +
          '_________ Combust'#237'vel: ________________'
      end
      object RLLabel49: TRLLabel
        Left = 18
        Top = 253
        Width = 685
        Height = 16
        Caption = 
          'Forma de Pagamento: ____________________________________________' +
          '______ Renavam: ___________________'
      end
      object lblCompra1: TRLLabel
        Left = 435
        Top = 29
        Width = 13
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVEnda1: TRLLabel
        Left = 531
        Top = 29
        Width = 13
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTroca1: TRLLabel
        Left = 628
        Top = 29
        Width = 13
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 141
        Top = 115
        Width = 89
        Height = 16
        DataField = 'COMPRADOR'
        DataSource = dsTab
      end
      object RLLabel53: TRLLabel
        Left = 148
        Top = 141
        Width = 65
        Height = 16
      end
      object RLDBText30: TRLDBText
        Left = 125
        Top = 169
        Width = 70
        Height = 16
        Alignment = taCenter
        DataField = 'OPERCAO'
        DataSource = dsTab
      end
      object RLDBText31: TRLDBText
        Left = 440
        Top = 167
        Width = 80
        Height = 16
        DataField = 'DESCRICAO'
        DataSource = dsTab
      end
      object RLDBText32: TRLDBText
        Left = 96
        Top = 194
        Width = 52
        Height = 16
        Alignment = taCenter
        DataField = 'MARCA'
        DataSource = dsTab
      end
      object RLDBText33: TRLDBText
        Left = 252
        Top = 194
        Width = 32
        Height = 16
        Alignment = taCenter
        DataField = 'ANO'
        DataSource = dsTab
      end
      object RLDBText34: TRLDBText
        Left = 392
        Top = 194
        Width = 60
        Height = 16
        Alignment = taCenter
        DataField = 'MODELO'
        DataSource = dsTab
      end
      object RLDBText35: TRLDBText
        Left = 582
        Top = 194
        Width = 24
        Height = 16
        Alignment = taCenter
        DataField = 'KM'
        DataSource = dsTab
      end
      object RLDBText36: TRLDBText
        Left = 83
        Top = 222
        Width = 32
        Height = 16
        Alignment = taCenter
        DataField = 'COR'
        DataSource = dsTab
      end
      object RLDBText37: TRLDBText
        Left = 218
        Top = 222
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'PLACA'
        DataSource = dsTab
      end
      object RLDBText38: TRLDBText
        Left = 360
        Top = 222
        Width = 52
        Height = 16
        DataField = 'CHASSI'
        DataSource = dsTab
      end
      object RLDBText39: TRLDBText
        Left = 582
        Top = 222
        Width = 96
        Height = 16
        Alignment = taCenter
        DataField = 'COMBUSTIVEL'
        DataSource = dsTab
      end
      object RLDBText40: TRLDBText
        Left = 155
        Top = 249
        Width = 342
        Height = 16
        AutoSize = False
        DataField = 'F_PAG'
        DataSource = dsTab
      end
      object RLDBText41: TRLDBText
        Left = 567
        Top = 249
        Width = 122
        Height = 16
        AutoSize = False
        DataField = 'RENAVAN'
        DataSource = dsTab
      end
      object RLLabel54: TRLLabel
        Left = 5
        Top = 379
        Width = 311
        Height = 16
        Caption = 'FICA CONVENCIONADO ENTRE AS PARTES QUE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 5
        Top = 401
        Width = 486
        Height = 16
        Caption = 
          '1'#186' - O Comprador responder'#225' a partir desta data, civil e/ou crim' +
          'inalmente por danos'
      end
      object RLLabel56: TRLLabel
        Left = 5
        Top = 420
        Width = 404
        Height = 16
        Caption = 
          'recorrentes ao uso e posse do ve'#237'culo, objeto da presente transa' +
          #231#227'o.'
      end
      object RLLabel57: TRLLabel
        Left = 5
        Top = 441
        Width = 525
        Height = 16
        Caption = 
          '2'#186' - O Vendedor e respons'#225'vel pela quita'#231#227'o de todos os d'#233'bitos,' +
          ' restri'#231#245'es e aliena'#231#245'es,'
      end
      object RLLabel58: TRLLabel
        Left = 5
        Top = 460
        Width = 510
        Height = 16
        Caption = 
          'IPVA, multas de tr'#226'nsitos inclusive em processamento e defesa pr' +
          #233'via, danos pessoais'
      end
      object RLLabel59: TRLLabel
        Left = 5
        Top = 480
        Width = 440
        Height = 16
        Caption = 
          'e materiais contra terceiros que o ve'#237'culo tenha sofrido at'#233' a p' +
          'resente data.'
      end
      object RLLabel60: TRLLabel
        Left = 5
        Top = 500
        Width = 530
        Height = 16
        Caption = 
          '3'#186' - O Comprador est'#225' recebendo o ve'#237'culo '#225's ________________ no' +
          ' estado que se encon'
      end
      object RLLabel61: TRLLabel
        Left = 5
        Top = 519
        Width = 495
        Height = 16
        Caption = 
          'tra, conforme inspen'#231#227'o feita pelo mesmo, isentando-se dessa for' +
          'ma, o vendedor, de'
      end
      object RLLabel62: TRLLabel
        Left = 5
        Top = 539
        Width = 461
        Height = 16
        Caption = 
          'quaisquer problemas mec'#226'nicos e de funil'#225'ria que, eventualmente ' +
          'venha surgir.'
      end
      object RLLabel63: TRLLabel
        Left = 5
        Top = 559
        Width = 522
        Height = 16
        Caption = 
          '4'#186' - A transfer'#234'ncia defintiva ser'#225' entregue ao comprador ap'#243's a' +
          ' total quita'#231#227'o do ve'#237'culo.'
      end
      object RLLabel64: TRLLabel
        Left = 5
        Top = 580
        Width = 513
        Height = 16
        Caption = 
          '5'#186' - Para dirimir as quest'#245'es correntes do presente contrato, se' +
          'r'#225' competente o foro da '
      end
      object RLLabel65: TRLLabel
        Left = 5
        Top = 600
        Width = 525
        Height = 16
        Caption = 
          'cidade de V'#225'rzea Alegre / CE, com exclus'#227'o de qualuer outro, por' +
          ' mais especial que seja'
      end
      object RLLabel66: TRLLabel
        Left = 4
        Top = 619
        Width = 535
        Height = 16
        Caption = 
          'E por estarem as partes, assim, justas e acordadas assinam o pre' +
          'sente instrumento em 02'
      end
      object RLLabel67: TRLLabel
        Left = 4
        Top = 637
        Width = 145
        Height = 16
        Caption = '(duas) vias de igual teor.'
      end
      object RLDraw17: TRLDraw
        Left = 1
        Top = 656
        Width = 716
        Height = 71
      end
      object RLDraw18: TRLDraw
        Left = 0
        Top = 726
        Width = 716
        Height = 314
      end
      object RLLabel68: TRLLabel
        Left = 4
        Top = 730
        Width = 89
        Height = 16
        Caption = 'DE ACORDO: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText42: TRLDBText
        Left = 168
        Top = 730
        Width = 231
        Height = 16
        DataField = 'COD_TRANS'
        DataSource = frmTransacao.dsTab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'N'#250'mero da Transa'#231#227'o: '
      end
      object RLDBText43: TRLDBText
        Left = 477
        Top = 730
        Width = 163
        Height = 16
        DataField = 'DAT_CAD'
        DataSource = frmTransacao.dsTab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'V'#225'rzea Alegre: '
      end
      object RLLabel69: TRLLabel
        Left = 4
        Top = 754
        Width = 83
        Height = 16
        Caption = 'Comprador: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel70: TRLLabel
        Left = 4
        Top = 779
        Width = 704
        Height = 16
        Caption = 
          'Nome: __________________________________________________________' +
          '____________________________________'
      end
      object RLLabel71: TRLLabel
        Left = 4
        Top = 805
        Width = 704
        Height = 16
        Caption = 
          'Endere'#231'o: ______________________________________________________' +
          '_____________________________________'
      end
      object RLLabel72: TRLLabel
        Left = 4
        Top = 835
        Width = 702
        Height = 16
        Caption = 
          'CPF / CNPJ: __________________________________RG/IE: ___________' +
          '____________Fone: ____________________'
      end
      object RLLabel73: TRLLabel
        Left = 4
        Top = 863
        Width = 704
        Height = 16
        Caption = 
          'Assinatura: ____________________________________________________' +
          '______________________________________'
      end
      object RLLabel74: TRLLabel
        Left = 4
        Top = 1005
        Width = 704
        Height = 16
        Caption = 
          'Assinatura: ____________________________________________________' +
          '______________________________________'
      end
      object RLLabel75: TRLLabel
        Left = 4
        Top = 977
        Width = 702
        Height = 16
        Caption = 
          'CPF / CNPJ: __________________________________RG/IE: ___________' +
          '____________Fone: ____________________'
      end
      object RLLabel76: TRLLabel
        Left = 4
        Top = 947
        Width = 704
        Height = 16
        Caption = 
          'Endere'#231'o: ______________________________________________________' +
          '_____________________________________'
      end
      object RLLabel77: TRLLabel
        Left = 4
        Top = 921
        Width = 704
        Height = 16
        Caption = 
          'Nome: __________________________________________________________' +
          '____________________________________'
      end
      object RLLabel78: TRLLabel
        Left = 4
        Top = 896
        Width = 70
        Height = 16
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel79: TRLLabel
        Left = 4
        Top = 658
        Width = 72
        Height = 16
        Caption = 'Observa'#231#227'o'
      end
      object RLDBText44: TRLDBText
        Left = 49
        Top = 776
        Width = 649
        Height = 16
        AutoSize = False
        DataField = 'COMPRADOR'
        DataSource = dsTab
      end
      object RLDBText45: TRLDBText
        Left = 48
        Top = 918
        Width = 649
        Height = 16
        AutoSize = False
        DataField = 'VENDEDOR'
        DataSource = dsTab
      end
      object RLDBText46: TRLDBText
        Left = 72
        Top = 804
        Width = 625
        Height = 16
        AutoSize = False
        DataField = 'ENDCOMP'
        DataSource = dsTab
      end
      object RLDBText47: TRLDBText
        Left = 86
        Top = 833
        Width = 233
        Height = 16
        AutoSize = False
        DataField = 'CPFCOMP'
        DataSource = dsTab
      end
      object RLDBText48: TRLDBText
        Left = 364
        Top = 832
        Width = 156
        Height = 16
        AutoSize = False
        DataField = 'RGCOMP'
        DataSource = dsTab
      end
      object RLDBText49: TRLDBText
        Left = 564
        Top = 833
        Width = 133
        Height = 16
        AutoSize = False
        DataField = 'FONECOMP'
        DataSource = dsTab
      end
      object RLDBText50: TRLDBText
        Left = 560
        Top = 974
        Width = 133
        Height = 16
        AutoSize = False
        DataField = 'FONEVEND'
        DataSource = dsTab
      end
      object RLDBText51: TRLDBText
        Left = 360
        Top = 974
        Width = 156
        Height = 16
        AutoSize = False
        DataField = 'RGVEND'
        DataSource = dsTab
      end
      object RLDBText52: TRLDBText
        Left = 82
        Top = 974
        Width = 233
        Height = 16
        AutoSize = False
        DataField = 'CPFVEND'
        DataSource = dsTab
      end
      object RLDBText53: TRLDBText
        Left = 68
        Top = 945
        Width = 625
        Height = 16
        AutoSize = False
        DataField = 'ENDVEND'
        DataSource = dsTab
      end
      object RLDBText54: TRLDBText
        Left = 289
        Top = 499
        Width = 76
        Height = 16
        Alignment = taCenter
        DataField = 'HORA_REC'
        DataSource = dsTab
      end
      object RLDBMemo2: TRLDBMemo
        Left = 4
        Top = 677
        Width = 708
        Height = 46
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'OBS'
        DataSource = dsTab
      end
      object RLLabel80: TRLLabel
        Left = 589
        Top = 379
        Width = 85
        Height = 16
        Caption = 'Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 538
        Top = 398
        Width = 174
        Height = 254
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw19: TRLDraw
        Left = 1
        Top = 278
        Width = 716
        Height = 97
      end
      object RLLabel81: TRLLabel
        Left = 8
        Top = 315
        Width = 680
        Height = 16
        Caption = 
          'Marca: __________________ Ano: _____________ Modelo: ___________' +
          '________ KM: _______________________'
      end
      object RLDBText55: TRLDBText
        Left = 63
        Top = 312
        Width = 98
        Height = 16
        Alignment = taCenter
        DataField = 'MARCA_COMP'
        DataSource = dsTab
      end
      object RLDBText56: TRLDBText
        Left = 219
        Top = 312
        Width = 78
        Height = 16
        Alignment = taCenter
        DataField = 'ANO_COMP'
        DataSource = dsTab
      end
      object RLDBText57: TRLDBText
        Left = 360
        Top = 312
        Width = 106
        Height = 16
        Alignment = taCenter
        DataField = 'MODELO_COMP'
        DataSource = dsTab
      end
      object RLDBText58: TRLDBText
        Left = 549
        Top = 312
        Width = 70
        Height = 16
        Alignment = taCenter
        DataField = 'KM_COMP'
        DataSource = dsTab
      end
      object RLLabel82: TRLLabel
        Left = 8
        Top = 343
        Width = 681
        Height = 16
        Caption = 
          'Cor: ________________ Placa: ______________ Chassi: ____________' +
          '_________ Combust'#237'vel: ________________'
      end
      object RLDBText62: TRLDBText
        Left = 51
        Top = 340
        Width = 78
        Height = 16
        Alignment = taCenter
        DataField = 'COR_COMP'
        DataSource = dsTab
      end
      object RLDBText63: TRLDBText
        Left = 574
        Top = 340
        Width = 142
        Height = 16
        Alignment = taCenter
        DataField = 'COMBUSTIVEL_COMP'
        DataSource = dsTab
      end
      object RLDBText64: TRLDBText
        Left = 347
        Top = 340
        Width = 98
        Height = 16
        DataField = 'CHASSI_COMP'
        DataSource = dsTab
      end
      object RLDBText65: TRLDBText
        Left = 196
        Top = 340
        Width = 94
        Height = 16
        Alignment = taCenter
        DataField = 'PLACA_COMP'
        DataSource = dsTab
      end
      object RLLabel83: TRLLabel
        Left = 8
        Top = 290
        Width = 682
        Height = 16
        Caption = 
          'Ve'#237'culo da Troca: _____________________________________Renavam: ' +
          '____________________________________'
      end
      object RLDBText59: TRLDBText
        Left = 115
        Top = 288
        Width = 116
        Height = 16
        DataField = 'DESC_VEICCOMP'
        DataSource = dsTab
      end
      object RLDBText60: TRLDBText
        Left = 440
        Top = 288
        Width = 122
        Height = 16
        AutoSize = False
        DataField = 'RENAVAN_COMP'
        DataSource = dsTab
      end
    end
  end
  object RLReport1: TRLReport
    Left = 69
    Top = 48
    Width = 794
    Height = 1123
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dsTab
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1041
      BeforePrint = RLBand1BeforePrint
      object RLDraw1: TRLDraw
        Left = 1
        Top = 2
        Width = 716
        Height = 277
      end
      object RLDraw2: TRLDraw
        Left = 1
        Top = 374
        Width = 716
        Height = 283
      end
      object RLDraw3: TRLDraw
        Left = 534
        Top = 374
        Width = 183
        Height = 283
      end
      object RLLogo: TRLImage
        Left = 5
        Top = 6
        Width = 292
        Height = 101
        Stretch = True
      end
      object RLLabel1: TRLLabel
        Left = 312
        Top = 62
        Width = 134
        Height = 45
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -40
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 427
        Top = 24
        Width = 27
        Height = 25
      end
      object RLLabel2: TRLLabel
        Left = 457
        Top = 29
        Width = 61
        Height = 16
        Caption = 'COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 554
        Top = 29
        Width = 48
        Height = 16
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 524
        Top = 24
        Width = 27
        Height = 25
      end
      object RLLabel4: TRLLabel
        Left = 651
        Top = 29
        Width = 49
        Height = 16
        Caption = 'TROCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw6: TRLDraw
        Left = 621
        Top = 24
        Width = 27
        Height = 25
      end
      object RLLabel5: TRLLabel
        Left = 458
        Top = 62
        Width = 73
        Height = 45
        Caption = 'R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -40
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw7: TRLDraw
        Left = 537
        Top = 59
        Width = 168
        Height = 48
      end
      object RLDBText1: TRLDBText
        Left = 562
        Top = 72
        Width = 120
        Height = 22
        Alignment = taCenter
        DataField = 'VLR_TRANS'
        DataSource = dsTab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 18
        Top = 116
        Width = 685
        Height = 16
        Caption = 
          'Recebi do (a) Sr. (a) __________________________________________' +
          '______________________________________'
      end
      object RLLabel7: TRLLabel
        Left = 18
        Top = 142
        Width = 683
        Height = 16
        Caption = 
          'A import'#226'ncia de R$  ___________________________________________' +
          '____________________________________'
      end
      object RLLabel8: TRLLabel
        Left = 18
        Top = 170
        Width = 682
        Height = 16
        Caption = 
          'Referente a _____________________ do Ve'#237'culo Abaixo Caracterizad' +
          'o: _____________________________________'
      end
      object RLLabel9: TRLLabel
        Left = 18
        Top = 197
        Width = 680
        Height = 16
        Caption = 
          'Marca: __________________ Ano: _____________ Modelo: ___________' +
          '________ KM: _______________________'
      end
      object RLLabel10: TRLLabel
        Left = 18
        Top = 225
        Width = 681
        Height = 16
        Caption = 
          'Cor: ________________ Placa: ______________ Chassi: ____________' +
          '_________ Combust'#237'vel: ________________'
      end
      object RLLabel11: TRLLabel
        Left = 18
        Top = 253
        Width = 685
        Height = 16
        Caption = 
          'Forma de Pagamento: ____________________________________________' +
          '______ Renavam: ___________________'
      end
      object lblCompra: TRLLabel
        Left = 435
        Top = 29
        Width = 13
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVenda: TRLLabel
        Left = 531
        Top = 29
        Width = 13
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTroca: TRLLabel
        Left = 628
        Top = 29
        Width = 13
        Height = 16
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 141
        Top = 115
        Width = 89
        Height = 16
        DataField = 'COMPRADOR'
        DataSource = dsTab
      end
      object lblExtenso: TRLLabel
        Left = 148
        Top = 141
        Width = 65
        Height = 16
      end
      object RLDBText3: TRLDBText
        Left = 125
        Top = 169
        Width = 70
        Height = 16
        Alignment = taCenter
        DataField = 'OPERCAO'
        DataSource = dsTab
      end
      object RLDBText4: TRLDBText
        Left = 440
        Top = 167
        Width = 80
        Height = 16
        DataField = 'DESCRICAO'
        DataSource = dsTab
      end
      object RLDBText5: TRLDBText
        Left = 96
        Top = 194
        Width = 52
        Height = 16
        Alignment = taCenter
        DataField = 'MARCA'
        DataSource = dsTab
      end
      object RLDBText6: TRLDBText
        Left = 252
        Top = 194
        Width = 32
        Height = 16
        Alignment = taCenter
        DataField = 'ANO'
        DataSource = dsTab
      end
      object RLDBText7: TRLDBText
        Left = 392
        Top = 194
        Width = 60
        Height = 16
        Alignment = taCenter
        DataField = 'MODELO'
        DataSource = dsTab
      end
      object RLDBText8: TRLDBText
        Left = 582
        Top = 194
        Width = 24
        Height = 16
        Alignment = taCenter
        DataField = 'KM'
        DataSource = dsTab
      end
      object RLDBText9: TRLDBText
        Left = 83
        Top = 222
        Width = 32
        Height = 16
        Alignment = taCenter
        DataField = 'COR'
        DataSource = dsTab
      end
      object RLDBText10: TRLDBText
        Left = 218
        Top = 222
        Width = 48
        Height = 16
        Alignment = taCenter
        DataField = 'PLACA'
        DataSource = dsTab
      end
      object RLDBText11: TRLDBText
        Left = 360
        Top = 222
        Width = 52
        Height = 16
        DataField = 'CHASSI'
        DataSource = dsTab
      end
      object RLDBText12: TRLDBText
        Left = 582
        Top = 222
        Width = 96
        Height = 16
        Alignment = taCenter
        DataField = 'COMBUSTIVEL'
        DataSource = dsTab
      end
      object RLDBText13: TRLDBText
        Left = 155
        Top = 249
        Width = 342
        Height = 16
        AutoSize = False
        DataField = 'F_PAG'
        DataSource = dsTab
      end
      object RLDBText14: TRLDBText
        Left = 567
        Top = 249
        Width = 122
        Height = 16
        AutoSize = False
        DataField = 'RENAVAN'
        DataSource = dsTab
      end
      object RLLabel16: TRLLabel
        Left = 5
        Top = 379
        Width = 311
        Height = 16
        Caption = 'FICA CONVENCIONADO ENTRE AS PARTES QUE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 5
        Top = 401
        Width = 486
        Height = 16
        Caption = 
          '1'#186' - O Comprador responder'#225' a partir desta data, civil e/ou crim' +
          'inalmente por danos'
      end
      object RLLabel18: TRLLabel
        Left = 5
        Top = 420
        Width = 404
        Height = 16
        Caption = 
          'recorrentes ao uso e posse do ve'#237'culo, objeto da presente transa' +
          #231#227'o.'
      end
      object RLLabel19: TRLLabel
        Left = 5
        Top = 441
        Width = 525
        Height = 16
        Caption = 
          '2'#186' - O Vendedor e respons'#225'vel pela quita'#231#227'o de todos os d'#233'bitos,' +
          ' restri'#231#245'es e aliena'#231#245'es,'
      end
      object RLLabel20: TRLLabel
        Left = 5
        Top = 460
        Width = 510
        Height = 16
        Caption = 
          'IPVA, multas de tr'#226'nsitos inclusive em processamento e defesa pr' +
          #233'via, danos pessoais'
      end
      object RLLabel21: TRLLabel
        Left = 5
        Top = 480
        Width = 440
        Height = 16
        Caption = 
          'e materiais contra terceiros que o ve'#237'culo tenha sofrido at'#233' a p' +
          'resente data.'
      end
      object RLLabel22: TRLLabel
        Left = 5
        Top = 500
        Width = 530
        Height = 16
        Caption = 
          '3'#186' - O Comprador est'#225' recebendo o ve'#237'culo '#225's ________________ no' +
          ' estado que se encon'
      end
      object RLLabel23: TRLLabel
        Left = 5
        Top = 519
        Width = 495
        Height = 16
        Caption = 
          'tra, conforme inspen'#231#227'o feita pelo mesmo, isentando-se dessa for' +
          'ma, o vendedor, de'
      end
      object RLLabel24: TRLLabel
        Left = 5
        Top = 539
        Width = 461
        Height = 16
        Caption = 
          'quaisquer problemas mec'#226'nicos e de funil'#225'ria que, eventualmente ' +
          'venha surgir.'
      end
      object RLLabel25: TRLLabel
        Left = 5
        Top = 559
        Width = 522
        Height = 16
        Caption = 
          '4'#186' - A transfer'#234'ncia defintiva ser'#225' entregue ao comprador ap'#243's a' +
          ' total quita'#231#227'o do ve'#237'culo.'
      end
      object RLLabel26: TRLLabel
        Left = 5
        Top = 580
        Width = 513
        Height = 16
        Caption = 
          '5'#186' - Para dirimir as quest'#245'es correntes do presente contrato, se' +
          'r'#225' competente o foro da '
      end
      object RLLabel27: TRLLabel
        Left = 5
        Top = 600
        Width = 525
        Height = 16
        Caption = 
          'cidade de V'#225'rzea Alegre / CE, com exclus'#227'o de qualuer outro, por' +
          ' mais especial que seja'
      end
      object RLLabel28: TRLLabel
        Left = 4
        Top = 619
        Width = 535
        Height = 16
        Caption = 
          'E por estarem as partes, assim, justas e acordadas assinam o pre' +
          'sente instrumento em 02'
      end
      object RLLabel29: TRLLabel
        Left = 4
        Top = 637
        Width = 145
        Height = 16
        Caption = '(duas) vias de igual teor.'
      end
      object RLDraw8: TRLDraw
        Left = 1
        Top = 656
        Width = 716
        Height = 71
      end
      object RLDraw9: TRLDraw
        Left = 0
        Top = 726
        Width = 716
        Height = 314
      end
      object RLLabel30: TRLLabel
        Left = 4
        Top = 730
        Width = 89
        Height = 16
        Caption = 'DE ACORDO: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 168
        Top = 730
        Width = 231
        Height = 16
        DataField = 'COD_TRANS'
        DataSource = frmTransacao.dsTab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'N'#250'mero da Transa'#231#227'o: '
      end
      object RLDBText16: TRLDBText
        Left = 477
        Top = 730
        Width = 163
        Height = 16
        DataField = 'DAT_CAD'
        DataSource = frmTransacao.dsTab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'V'#225'rzea Alegre: '
      end
      object RLLabel31: TRLLabel
        Left = 4
        Top = 754
        Width = 83
        Height = 16
        Caption = 'Comprador: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 4
        Top = 779
        Width = 704
        Height = 16
        Caption = 
          'Nome: __________________________________________________________' +
          '____________________________________'
      end
      object RLLabel33: TRLLabel
        Left = 4
        Top = 805
        Width = 704
        Height = 16
        Caption = 
          'Endere'#231'o: ______________________________________________________' +
          '_____________________________________'
      end
      object RLLabel34: TRLLabel
        Left = 4
        Top = 835
        Width = 702
        Height = 16
        Caption = 
          'CPF / CNPJ: __________________________________RG/IE: ___________' +
          '____________Fone: ____________________'
      end
      object RLLabel35: TRLLabel
        Left = 4
        Top = 863
        Width = 704
        Height = 16
        Caption = 
          'Assinatura: ____________________________________________________' +
          '______________________________________'
      end
      object RLLabel36: TRLLabel
        Left = 4
        Top = 1005
        Width = 704
        Height = 16
        Caption = 
          'Assinatura: ____________________________________________________' +
          '______________________________________'
      end
      object RLLabel37: TRLLabel
        Left = 4
        Top = 977
        Width = 702
        Height = 16
        Caption = 
          'CPF / CNPJ: __________________________________RG/IE: ___________' +
          '____________Fone: ____________________'
      end
      object RLLabel38: TRLLabel
        Left = 4
        Top = 947
        Width = 704
        Height = 16
        Caption = 
          'Endere'#231'o: ______________________________________________________' +
          '_____________________________________'
      end
      object RLLabel50: TRLLabel
        Left = 4
        Top = 921
        Width = 704
        Height = 16
        Caption = 
          'Nome: __________________________________________________________' +
          '____________________________________'
      end
      object RLLabel51: TRLLabel
        Left = 4
        Top = 896
        Width = 70
        Height = 16
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 4
        Top = 658
        Width = 72
        Height = 16
        Caption = 'Observa'#231#227'o'
      end
      object RLDBText17: TRLDBText
        Left = 49
        Top = 776
        Width = 649
        Height = 16
        AutoSize = False
        DataField = 'COMPRADOR'
        DataSource = dsTab
      end
      object RLDBText18: TRLDBText
        Left = 48
        Top = 918
        Width = 649
        Height = 16
        AutoSize = False
        DataField = 'VENDEDOR'
        DataSource = dsTab
      end
      object RLDBText19: TRLDBText
        Left = 72
        Top = 804
        Width = 625
        Height = 16
        AutoSize = False
        DataField = 'ENDCOMP'
        DataSource = dsTab
      end
      object RLDBText20: TRLDBText
        Left = 86
        Top = 833
        Width = 233
        Height = 16
        AutoSize = False
        DataField = 'CPFCOMP'
        DataSource = dsTab
      end
      object RLDBText21: TRLDBText
        Left = 364
        Top = 832
        Width = 156
        Height = 16
        AutoSize = False
        DataField = 'RGCOMP'
        DataSource = dsTab
      end
      object RLDBText22: TRLDBText
        Left = 564
        Top = 833
        Width = 133
        Height = 16
        AutoSize = False
        DataField = 'FONECOMP'
        DataSource = dsTab
      end
      object RLDBText23: TRLDBText
        Left = 560
        Top = 974
        Width = 133
        Height = 16
        AutoSize = False
        DataField = 'FONEVEND'
        DataSource = dsTab
      end
      object RLDBText24: TRLDBText
        Left = 360
        Top = 974
        Width = 156
        Height = 16
        AutoSize = False
        DataField = 'RGVEND'
        DataSource = dsTab
      end
      object RLDBText25: TRLDBText
        Left = 82
        Top = 974
        Width = 233
        Height = 16
        AutoSize = False
        DataField = 'CPFVEND'
        DataSource = dsTab
      end
      object RLDBText26: TRLDBText
        Left = 68
        Top = 945
        Width = 625
        Height = 16
        AutoSize = False
        DataField = 'ENDVEND'
        DataSource = dsTab
      end
      object RLDBText27: TRLDBText
        Left = 289
        Top = 499
        Width = 76
        Height = 16
        Alignment = taCenter
        DataField = 'HORA_REC'
        DataSource = dsTab
      end
      object RLDBMemo1: TRLDBMemo
        Left = 4
        Top = 677
        Width = 708
        Height = 46
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'OBS'
        DataSource = dsTab
      end
      object RLLabel84: TRLLabel
        Left = 589
        Top = 379
        Width = 85
        Height = 16
        Caption = 'Faturamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtparcelas: TRLMemo
        Left = 538
        Top = 398
        Width = 174
        Height = 254
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw20: TRLDraw
        Left = 1
        Top = 278
        Width = 716
        Height = 97
      end
      object RLLabel85: TRLLabel
        Left = 8
        Top = 315
        Width = 680
        Height = 16
        Caption = 
          'Marca: __________________ Ano: _____________ Modelo: ___________' +
          '________ KM: _______________________'
      end
      object RLDBText61: TRLDBText
        Left = 63
        Top = 312
        Width = 98
        Height = 16
        Alignment = taCenter
        DataField = 'MARCA_COMP'
        DataSource = dsTab
      end
      object RLDBText66: TRLDBText
        Left = 219
        Top = 312
        Width = 78
        Height = 16
        Alignment = taCenter
        DataField = 'ANO_COMP'
        DataSource = dsTab
      end
      object RLDBText67: TRLDBText
        Left = 360
        Top = 312
        Width = 106
        Height = 16
        Alignment = taCenter
        DataField = 'MODELO_COMP'
        DataSource = dsTab
      end
      object RLDBText68: TRLDBText
        Left = 549
        Top = 312
        Width = 70
        Height = 16
        Alignment = taCenter
        DataField = 'KM_COMP'
        DataSource = dsTab
      end
      object RLLabel86: TRLLabel
        Left = 8
        Top = 343
        Width = 681
        Height = 16
        Caption = 
          'Cor: ________________ Placa: ______________ Chassi: ____________' +
          '_________ Combust'#237'vel: ________________'
      end
      object RLDBText69: TRLDBText
        Left = 51
        Top = 340
        Width = 78
        Height = 16
        Alignment = taCenter
        DataField = 'COR_COMP'
        DataSource = dsTab
      end
      object RLDBText70: TRLDBText
        Left = 574
        Top = 340
        Width = 142
        Height = 16
        Alignment = taCenter
        DataField = 'COMBUSTIVEL_COMP'
        DataSource = dsTab
      end
      object RLDBText71: TRLDBText
        Left = 347
        Top = 340
        Width = 98
        Height = 16
        DataField = 'CHASSI_COMP'
        DataSource = dsTab
      end
      object RLDBText72: TRLDBText
        Left = 196
        Top = 340
        Width = 94
        Height = 16
        Alignment = taCenter
        DataField = 'PLACA_COMP'
        DataSource = dsTab
      end
      object RLLabel87: TRLLabel
        Left = 8
        Top = 290
        Width = 682
        Height = 16
        Caption = 
          'Ve'#237'culo da Troca: _____________________________________Renavam: ' +
          '____________________________________'
      end
      object RLDBText73: TRLDBText
        Left = 115
        Top = 288
        Width = 116
        Height = 16
        DataField = 'DESC_VEICCOMP'
        DataSource = dsTab
      end
      object RLDBText74: TRLDBText
        Left = 440
        Top = 288
        Width = 122
        Height = 16
        AutoSize = False
        DataField = 'RENAVAN_COMP'
        DataSource = dsTab
      end
    end
  end
  object sqlTab: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_TRANS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '   T.*, C.NOME AS COMPRADOR,  V.NOME AS VENDEDOR,'
      'CASE T.TP_TRANS'
      '    WHEN '#39'V'#39' THEN '#39'Venda'#39
      '    WHEN '#39'T'#39' THEN '#39'Troca'#39
      '    WHEN '#39'C'#39' THEN '#39'Compra'#39
      
        'END AS OPERCAO, c.ENDERECO AS ENDCOMP, C.CPF_CNPJ AS CPFCOMP, C.' +
        'RG_IE AS RGCOMP, C.TELEFONE AS FONECOMP'
      
        ', V.ENDERECO AS ENDVEND, V.CPF_CNPJ AS CPFVEND, V.RG_IE AS RGVEN' +
        'D, V.TELEFONE AS FONEVEND'
      ''
      
        'FROM TRANSACAO T, COMPRADOR C, COMPRADOR V WHERE T.COD_COMP = C.' +
        'COD_COMP AND T.COD_VEND = V.COD_COMP'
      'AND T.COD_TRANS = :COD_TRANS')
    SQLConnection = Dados.DB
    Left = 259
    Top = 65524
  end
  object dspTab: TDataSetProvider
    DataSet = sqlTab
    Left = 216
    Top = 65524
  end
  object cdsTab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab'
    Left = 176
    Top = 65524
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
      DisplayFormat = '#,##0.00'
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
      Size = 4
    end
    object cdsTabHORA_REC: TTimeField
      FieldName = 'HORA_REC'
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
    object cdsTabCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 100
    end
    object cdsTabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object cdsTabOPERCAO: TStringField
      FieldName = 'OPERCAO'
      FixedChar = True
      Size = 6
    end
    object cdsTabENDCOMP: TStringField
      FieldName = 'ENDCOMP'
      Size = 100
    end
    object cdsTabCPFCOMP: TStringField
      FieldName = 'CPFCOMP'
      Size = 15
    end
    object cdsTabRGCOMP: TStringField
      FieldName = 'RGCOMP'
      Size = 15
    end
    object cdsTabFONECOMP: TStringField
      FieldName = 'FONECOMP'
      Size = 15
    end
    object cdsTabENDVEND: TStringField
      FieldName = 'ENDVEND'
      Size = 100
    end
    object cdsTabCPFVEND: TStringField
      FieldName = 'CPFVEND'
      Size = 15
    end
    object cdsTabRGVEND: TStringField
      FieldName = 'RGVEND'
      Size = 15
    end
    object cdsTabFONEVEND: TStringField
      FieldName = 'FONEVEND'
      Size = 15
    end
    object cdsTabDESC_VEICCOMP: TStringField
      FieldName = 'DESC_VEICCOMP'
      Size = 100
    end
    object cdsTabMARCA_COMP: TStringField
      FieldName = 'MARCA_COMP'
      Size = 60
    end
    object cdsTabANO_COMP: TStringField
      FieldName = 'ANO_COMP'
      Size = 4
    end
    object cdsTabKM_COMP: TStringField
      FieldName = 'KM_COMP'
      Size = 40
    end
    object cdsTabMODELO_COMP: TStringField
      FieldName = 'MODELO_COMP'
      Size = 30
    end
    object cdsTabCOR_COMP: TStringField
      FieldName = 'COR_COMP'
    end
    object cdsTabPLACA_COMP: TStringField
      FieldName = 'PLACA_COMP'
    end
    object cdsTabCHASSI_COMP: TStringField
      FieldName = 'CHASSI_COMP'
      Size = 50
    end
    object cdsTabRENAVAN_COMP: TStringField
      FieldName = 'RENAVAN_COMP'
      Size = 30
    end
    object cdsTabCOMBUSTIVEL_COMP: TStringField
      FieldName = 'COMBUSTIVEL_COMP'
      Size = 30
    end
  end
  object dsTab: TDataSource
    AutoEdit = False
    DataSet = cdsTab
    Left = 136
    Top = 65524
  end
  object Parc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_BASE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_TRANS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM GERA_FINANCEIRO(:DATA_BASE, :COD_TRANS);')
    SQLConnection = Dados.DB
    Left = 296
    Top = 538
    object ParcVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object ParcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object ParcVLR_PARC: TSingleField
      FieldName = 'VLR_PARC'
      currency = True
    end
  end
end
