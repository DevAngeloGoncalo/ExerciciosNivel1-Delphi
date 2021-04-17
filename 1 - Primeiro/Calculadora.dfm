object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 170
    Top = 11
    Width = 8
    Height = 13
    Caption = '='
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 75
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 89
    Top = 8
    Width = 75
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 89
    Top = 48
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 79
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 89
    Top = 79
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Edit3: TEdit
    Left = 184
    Top = 8
    Width = 57
    Height = 21
    TabOrder = 6
  end
end
