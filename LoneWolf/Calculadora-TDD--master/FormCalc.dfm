object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'CalculadoraEd 1.0'
  ClientHeight = 347
  ClientWidth = 297
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 46
    Width = 82
    Height = 13
    Caption = 'Primeiro N'#250'mero:'
  end
  object Label2: TLabel
    Left = 32
    Top = 94
    Width = 86
    Height = 13
    Caption = 'Segundo N'#250'mero:'
  end
  object Label3: TLabel
    Left = 32
    Top = 155
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object Label4: TLabel
    Left = 0
    Top = 0
    Width = 297
    Height = 347
    Align = alClient
    Alignment = taCenter
    Caption = 'Calculadora '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 321
    ExplicitHeight = 18
  end
  object edtNum1: TEdit
    Left = 32
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 32
    Top = 113
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btSomar: TButton
    Left = 184
    Top = 46
    Width = 89
    Height = 25
    Caption = 'Adi'#231#227'o'
    TabOrder = 2
    OnClick = btSomarClick
  end
  object btSubt: TButton
    Left = 184
    Top = 77
    Width = 89
    Height = 25
    Caption = 'Subtra'#231#227'o'
    TabOrder = 3
    OnClick = btSubtClick
  end
  object btMulti: TButton
    Left = 184
    Top = 108
    Width = 89
    Height = 25
    Caption = 'Multiplica'#231#227'o'
    TabOrder = 4
    OnClick = btMultiClick
  end
  object btDivi: TButton
    Left = 184
    Top = 139
    Width = 89
    Height = 25
    Caption = 'Divis'#227'o'
    TabOrder = 5
    OnClick = btDiviClick
  end
  object btExpo: TButton
    Left = 184
    Top = 170
    Width = 89
    Height = 25
    Caption = 'Exponencia'#231#227'o'
    TabOrder = 6
    OnClick = btExpoClick
  end
  object btRaiz: TButton
    Left = 184
    Top = 201
    Width = 89
    Height = 25
    Caption = 'Radicia'#231#227'o'
    TabOrder = 7
    OnClick = btRaizClick
  end
  object MemoResult: TMemo
    Left = 32
    Top = 174
    Width = 137
    Height = 155
    Align = alCustom
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object btSair: TButton
    Left = 184
    Top = 300
    Width = 97
    Height = 29
    Caption = 'Fechar Calc'
    TabOrder = 9
    OnClick = btSairClick
  end
end
