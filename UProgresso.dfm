object frmProgresso: TfrmProgresso
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Progresso do Processo'
  ClientHeight = 70
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 70
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 262
    ExplicitWidth = 70
    ExplicitHeight = 185
    object Panel2: TPanel
      Left = 13
      Top = 13
      Width = 420
      Height = 41
      BevelOuter = bvLowered
      TabOrder = 0
      object lblStatus: TLabel
        Left = 7
        Top = 2
        Width = 406
        Height = 13
        AutoSize = False
        Caption = 'lblStatus'
      end
      object P: TProgressBar
        Left = 7
        Top = 17
        Width = 405
        Height = 17
        TabOrder = 0
      end
    end
  end
end
