object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 691
  ClientWidth = 954
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object matrixAlabel: TLabel
    Left = 56
    Top = -3
    Width = 40
    Height = 13
    Caption = 'Matrix A'
  end
  object matrixBlabel: TLabel
    Left = 465
    Top = -3
    Width = 39
    Height = 13
    Caption = 'Matrix B'
  end
  object matrixAmemo: TMemo
    Left = 56
    Top = 16
    Width = 280
    Height = 153
    Color = clCream
    Lines.Strings = (
      'memo1')
    OEMConvert = True
    ScrollBars = ssBoth
    TabOrder = 0
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
  end
  object MatrixBmemo: TMemo
    Left = 465
    Top = 16
    Width = 280
    Height = 153
    Color = clCream
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object rowechelonButtonA: TButton
    Left = 32
    Top = 168
    Width = 160
    Height = 32
    Caption = 'Row-echelon form'
    TabOrder = 2
  end
  object rankButtonA: TButton
    Left = 32
    Top = 225
    Width = 160
    Height = 32
    Align = alCustom
    Caption = 'Rank'
    TabOrder = 3
  end
  object determinantButtonA: TButton
    Left = 32
    Top = 198
    Width = 160
    Height = 32
    Align = alCustom
    Caption = 'Determinant'
    TabOrder = 4
  end
  object additionButton: TButton
    Left = 367
    Top = 92
    Width = 74
    Height = 32
    Caption = 'A + B'
    TabOrder = 5
  end
  object subtractionButton: TButton
    Left = 367
    Top = 54
    Width = 74
    Height = 32
    Caption = 'A - B'
    TabOrder = 6
  end
  object multiplicationButton: TButton
    Left = 367
    Top = 130
    Width = 74
    Height = 32
    Caption = 'A x B'
    TabOrder = 7
  end
  object inverseButtonA: TButton
    Left = 191
    Top = 198
    Width = 160
    Height = 32
    Align = alCustom
    Caption = 'Inverse'
    TabOrder = 8
  end
  object multiplyButtonA: TButton
    Left = 191
    Top = 225
    Width = 160
    Height = 32
    Caption = 'Multiply by             '
    TabOrder = 9
  end
  object constantselectionAEdit: TEdit
    Left = 303
    Top = 230
    Width = 39
    Height = 21
    NumbersOnly = True
    TabOrder = 10
  end
  object outputMemo: TMemo
    Left = 283
    Top = 341
    Width = 280
    Height = 153
    Color = clCream
    Lines.Strings = (
      'outputMemo')
    TabOrder = 11
  end
  object rowechelonButtonB: TButton
    Left = 447
    Top = 168
    Width = 160
    Height = 32
    Caption = 'Row-echelon form'
    TabOrder = 12
  end
  object rankButtonB: TButton
    Left = 447
    Top = 225
    Width = 160
    Height = 32
    Caption = 'Rank'
    TabOrder = 13
  end
  object inverseButtonB: TButton
    Left = 606
    Top = 198
    Width = 160
    Height = 32
    Caption = 'Inverse'
    TabOrder = 14
  end
  object determinantButtonB: TButton
    Left = 447
    Top = 198
    Width = 160
    Height = 32
    Caption = 'Determinant'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object multiplyButtonB: TButton
    Left = 606
    Top = 225
    Width = 160
    Height = 32
    Caption = 'Multiply by             '
    TabOrder = 16
  end
  object constantselectionBEdit: TEdit
    Left = 716
    Top = 230
    Width = 36
    Height = 21
    NumbersOnly = True
    TabOrder = 17
  end
  object cleanButtonA: TButton
    Left = 191
    Top = 254
    Width = 160
    Height = 32
    Caption = 'Clean'
    TabOrder = 18
  end
  object powerButtonA: TButton
    Left = 32
    Top = 254
    Width = 160
    Height = 32
    Caption = 'Raise to the power of               '
    TabOrder = 19
  end
  object powerselectionAEdit: TEdit
    Left = 149
    Top = 259
    Width = 36
    Height = 21
    NumbersOnly = True
    TabOrder = 20
  end
  object reducedrowechelonButtonA: TButton
    Left = 191
    Top = 168
    Width = 160
    Height = 32
    Caption = 'Reduced row-echelon form'
    TabOrder = 21
  end
  object reducedrowechelonButtonB: TButton
    Left = 606
    Top = 168
    Width = 160
    Height = 32
    Caption = 'Reduced row-echelon form'
    TabOrder = 22
  end
  object powerButtonB: TButton
    Left = 447
    Top = 254
    Width = 160
    Height = 32
    Caption = ' Raise to the power of                '
    TabOrder = 23
  end
  object powerselectionBEdit: TEdit
    Left = 564
    Top = 259
    Width = 36
    Height = 21
    NumbersOnly = True
    TabOrder = 24
  end
  object cleanButtonB: TButton
    Left = 606
    Top = 254
    Width = 160
    Height = 32
    Caption = 'Clean'
    TabOrder = 25
  end
  object swapmatricesButton: TButton
    Left = 367
    Top = 16
    Width = 74
    Height = 32
    Caption = ' <-->'
    TabOrder = 26
  end
  object equationlistBox: TComboBox
    Left = 308
    Top = 312
    Width = 181
    Height = 21
    Cursor = crIBeam
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 27
    Text = '2A + 3B'
    Items.Strings = (
      'rank(A)'
      'determinant(A)'
      'transpose(A)')
  end
  object equalsButton: TButton
    Left = 487
    Top = 310
    Width = 41
    Height = 25
    Caption = '='
    TabOrder = 28
  end
end
