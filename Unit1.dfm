object Form1: TForm1
  Left = 0
  Top = 0
  Hint = 'Do everything!'
  Caption = 'Form1'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 377
    Height = 265
    Lines.Strings = (
      'Memo1')
    OEMConvert = True
    ScrollBars = ssBoth
    TabOrder = 0
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
  end
  object Button1: TButton
    Left = 8
    Top = 288
    Width = 105
    Height = 43
    Caption = 'INPUT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 398
    Top = 8
    Width = 378
    Height = 265
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
