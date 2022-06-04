object FormCalculadora: TFormCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 380
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bt7: TSpeedButton
    Left = 32
    Top = 98
    Width = 57
    Height = 57
    Caption = '7'
    OnClick = bt8Click
  end
  object bt4: TSpeedButton
    Left = 32
    Top = 161
    Width = 57
    Height = 57
    Caption = '4'
    OnClick = bt8Click
  end
  object bt1: TSpeedButton
    Left = 32
    Top = 224
    Width = 57
    Height = 57
    Caption = '1'
    OnClick = bt8Click
  end
  object bt8: TSpeedButton
    Left = 103
    Top = 98
    Width = 57
    Height = 57
    Caption = '8'
    OnClick = bt8Click
  end
  object bt5: TSpeedButton
    Left = 103
    Top = 161
    Width = 57
    Height = 57
    Caption = '5'
    OnClick = bt8Click
  end
  object bt2: TSpeedButton
    Left = 103
    Top = 224
    Width = 57
    Height = 57
    Caption = '2'
    OnClick = bt8Click
  end
  object bt9: TSpeedButton
    Left = 176
    Top = 98
    Width = 57
    Height = 57
    Caption = '9'
    OnClick = bt8Click
  end
  object bt6: TSpeedButton
    Left = 176
    Top = 161
    Width = 57
    Height = 57
    Caption = '6'
    OnClick = bt8Click
  end
  object bt3: TSpeedButton
    Left = 176
    Top = 224
    Width = 57
    Height = 57
    Caption = '3'
    OnClick = bt8Click
  end
  object bt0: TSpeedButton
    Left = 103
    Top = 287
    Width = 57
    Height = 57
    Caption = '0'
    OnClick = bt8Click
  end
  object btLimpar: TSpeedButton
    Left = 32
    Top = 287
    Width = 57
    Height = 57
    Caption = 'LIMPAR'
    OnClick = btLimparClick
  end
  object btIgual: TSpeedButton
    Left = 176
    Top = 287
    Width = 57
    Height = 57
    Caption = '='
    OnClick = btIgualClick
  end
  object btMais: TSpeedButton
    Left = 248
    Top = 98
    Width = 57
    Height = 57
    Caption = '+'
    OnClick = btMaisClick
  end
  object btMenos: TSpeedButton
    Left = 248
    Top = 161
    Width = 57
    Height = 57
    Caption = '-'
    OnClick = btMenosClick
  end
  object btVezes: TSpeedButton
    Left = 248
    Top = 224
    Width = 57
    Height = 57
    Caption = 'X'
    OnClick = btVezesClick
  end
  object btDividir: TSpeedButton
    Left = 248
    Top = 287
    Width = 57
    Height = 57
    Caption = '/'
    OnClick = btDividirClick
  end
  object visor: TEdit
    Left = 32
    Top = 40
    Width = 273
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
  end
end
