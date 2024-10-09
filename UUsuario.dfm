inherited frmUsuarios: TfrmUsuarios
  Caption = 'Cadastro de Usu'#225'rios'
  ExplicitTop = -63
  ExplicitWidth = 638
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      inherited Panel3: TPanel
        inherited Label1: TLabel
          Width = 195
          Caption = 'Formul'#225'rio usado para cadastro usu'#225'rios'
          ExplicitWidth = 195
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 92
        Width = 568
        Height = 181
        Caption = 'Dados do Usu'#225'rio'
        TabOrder = 2
        object Label5: TLabel
          Left = 9
          Top = 17
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 9
          Top = 60
          Width = 90
          Height = 13
          Caption = 'Nome do Usu'#225'rio *'
          FocusControl = DBEdit2
        end
        object Label7: TLabel
          Left = 9
          Top = 101
          Width = 91
          Height = 13
          Caption = 'Senha de Acesso *'
          FocusControl = DBEdit3
        end
        object Label9: TLabel
          Left = 324
          Top = 61
          Width = 34
          Height = 13
          Caption = 'Login *'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 33
          Width = 113
          Height = 21
          Color = 16744448
          DataField = 'COD_USU'
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
        object DBRadioGroup1: TDBRadioGroup
          Left = 128
          Top = 12
          Width = 153
          Height = 46
          Caption = 'Posi'#231#227'o do Usu'#225'rio *'
          Columns = 2
          DataField = 'POSICAO'
          DataSource = dsTab
          Items.Strings = (
            'Ativo'
            'Bloqueado')
          ParentBackground = True
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit2: TDBEdit
          Left = 9
          Top = 76
          Width = 312
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dsTab
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 9
          Top = 117
          Width = 232
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SENHA'
          DataSource = dsTab
          PasswordChar = '*'
          TabOrder = 3
          OnExit = DBEdit3Exit
        end
        object DBEdit4: TDBEdit
          Left = 324
          Top = 77
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'LOGIN'
          DataSource = dsTab
          TabOrder = 4
        end
      end
    end
  end
  inherited dspTab: TDataSetProvider
    Left = 455
    Top = 24
  end
  inherited dsTab: TDataSource
    Left = 416
    Top = 24
  end
  inherited cdsTab: TClientDataSet
    Left = 499
    Top = 24
    object cdsTabCOD_USU: TIntegerField
      FieldName = 'COD_USU'
      Required = True
    end
    object cdsTabDAT_CAD: TDateField
      FieldName = 'DAT_CAD'
    end
    object cdsTabNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsTabLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 80
    end
    object cdsTabSENHA: TStringField
      FieldName = 'SENHA'
      Size = 200
    end
    object cdsTabPOSICAO: TStringField
      FieldName = 'POSICAO'
      Size = 1
    end
  end
  inherited sqlTab: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_USU'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM USUARIO WHERE COD_USU = :COD_USU')
    Left = 541
    Top = 24
  end
end
