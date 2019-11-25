object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 1  -  Classes de convers'#227'o  de texto '
  ClientHeight = 240
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 240
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 240
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 0
      object lblTextoOriginal: TLabel
        Left = 10
        Top = 10
        Width = 213
        Height = 13
        Align = alTop
        Caption = 'Texto Original'
        ExplicitWidth = 67
      end
      object memTextoOriginal: TMemo
        Left = 10
        Top = 23
        Width = 213
        Height = 207
        Align = alClient
        TabOrder = 0
      end
    end
    object pnlOpcoes: TPanel
      Left = 233
      Top = 0
      Width = 216
      Height = 240
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 1
      object rgOpcoes: TRadioGroup
        Left = 10
        Top = 23
        Width = 196
        Height = 171
        Align = alBottom
        Caption = 'Op'#231#245'es de convers'#227'o'
        Items.Strings = (
          'Invertido'
          'Primeira Mai'#250'scula '
          'Ordenado')
        TabOrder = 0
      end
      object btnConverter: TButton
        Left = 10
        Top = 194
        Width = 196
        Height = 36
        Align = alBottom
        Caption = 'Converter'
        TabOrder = 1
        OnClick = btnConverterClick
        ExplicitLeft = 9
      end
    end
    object pnlRight: TPanel
      Left = 449
      Top = 0
      Width = 233
      Height = 240
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 2
      object lblTextoConvertido: TLabel
        Left = 10
        Top = 10
        Width = 213
        Height = 13
        Align = alTop
        Caption = 'Texto Convertido'
        ExplicitWidth = 84
      end
      object memTextoConvertido: TMemo
        Left = 10
        Top = 23
        Width = 213
        Height = 207
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
