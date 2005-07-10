object FMain: TFMain
  Left = 372
  Top = 249
  AutoSize = True
  BorderStyle = bsDialog
  BorderWidth = 8
  Caption = 'FMain'
  ClientHeight = 185
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 38
    Height = 13
    Caption = 'Journ'#233'e'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 56
    Top = 0
    Width = 57
    Height = 21
    Date = 38535.375000000000000000
    Format = 'HH:mm'
    Time = 38535.375000000000000000
    Kind = dtkTime
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 120
    Top = 0
    Width = 57
    Height = 21
    Date = 38535.750001412040000000
    Format = 'HH:mm'
    Time = 38535.750001412040000000
    Kind = dtkTime
    TabOrder = 1
  end
  object Button1: TButton
    Left = 262
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 342
    Top = 160
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Annuler'
    ModalResult = 2
    TabOrder = 3
  end
end
