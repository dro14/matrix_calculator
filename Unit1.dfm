object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Matrix Calculator'
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
  object additionButton: TButton
    Left = 439
    Top = 102
    Width = 74
    Height = 32
    Caption = 'A + B'
    TabOrder = 0
    OnClick = additionButtonClick
  end
  object subtractionButton: TButton
    Left = 439
    Top = 140
    Width = 74
    Height = 32
    Caption = 'A - B'
    TabOrder = 1
    OnClick = subtractionButtonClick
  end
  object multiplicationButton: TButton
    Left = 439
    Top = 178
    Width = 74
    Height = 32
    Caption = 'A x B'
    TabOrder = 2
    OnClick = multiplicationButtonClick
  end
  object swapmatricesButton: TButton
    Left = 439
    Top = 64
    Width = 74
    Height = 32
    Caption = ' <-->'
    TabOrder = 3
    OnClick = swapmatricesButtonClick
  end
  object matrixA: TGroupBox
    Left = 8
    Top = 8
    Width = 352
    Height = 425
    Caption = 'MATRIX A'
    Color = clHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object cleanButtonA: TButton
      Left = 16
      Top = 227
      Width = 321
      Height = 32
      Caption = 'Clean'
      TabOrder = 0
      OnClick = cleanButtonAClick
    end
    object memoInputMatrixA: TMemo
      Left = 16
      Top = 21
      Width = 321
      Height = 200
      Color = clCream
      Lines.Strings = (
        'memo1')
      OEMConvert = True
      ScrollBars = ssBoth
      TabOrder = 1
      Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    end
    object rowEchelonButtonA: TButton
      Left = 16
      Top = 265
      Width = 160
      Height = 32
      Caption = 'Row-echelon form'
      TabOrder = 2
      OnClick = rowEchelonButtonAClick
    end
    object reducedRowEchelonButtonA: TButton
      Left = 182
      Top = 265
      Width = 160
      Height = 32
      Caption = 'Reduced row-echelon form'
      TabOrder = 3
      OnClick = reducedRowEchelonButtonAClick
    end
    object determinantButtonA: TButton
      Left = 182
      Top = 303
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Determinant'
      TabOrder = 4
      OnClick = determinantButtonAClick
    end
    object rankButtonA: TButton
      Left = 16
      Top = 303
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Rank'
      TabOrder = 5
      OnClick = rankButtonAClick
    end
    object inverseButtonA: TButton
      Left = 16
      Top = 341
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Inverse'
      TabOrder = 6
      OnClick = inverseButtonAClick
    end
    object multiplyButtonA: TButton
      Left = 16
      Top = 379
      Width = 160
      Height = 32
      Caption = 'Multiply by             '
      TabOrder = 7
      OnClick = multiplyButtonAClick
    end
    object constantSelectionAEdit: TEdit
      Left = 105
      Top = 384
      Width = 39
      Height = 21
      TabOrder = 8
    end
    object powerButtonA: TButton
      Left = 182
      Top = 379
      Width = 160
      Height = 32
      Caption = 'Raise to the power of               '
      TabOrder = 9
      OnClick = powerButtonAClick
    end
    object powerSelectionAEdit: TEdit
      Left = 301
      Top = 384
      Width = 36
      Height = 21
      TabOrder = 10
    end
    object transposeButtonA: TButton
      Left = 182
      Top = 341
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Transpose'
      TabOrder = 11
      OnClick = transposeButtonAClick
    end
  end
  object matrixB: TGroupBox
    Left = 594
    Top = 8
    Width = 352
    Height = 425
    Caption = 'MATRIX B'
    Color = clHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    object cleanButtonB: TButton
      Left = 16
      Top = 227
      Width = 321
      Height = 32
      Caption = 'Clean'
      TabOrder = 0
      OnClick = cleanButtonBClick
    end
    object memoInputMatrixB: TMemo
      Left = 16
      Top = 21
      Width = 321
      Height = 200
      Color = clCream
      Lines.Strings = (
        'memo1')
      OEMConvert = True
      ScrollBars = ssBoth
      TabOrder = 1
      Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
    end
    object rowEchelonButtonB: TButton
      Left = 16
      Top = 265
      Width = 160
      Height = 32
      Caption = 'Row-echelon form'
      TabOrder = 2
      OnClick = rowEchelonButtonBClick
    end
    object reducedRowEchelonButtonB: TButton
      Left = 182
      Top = 265
      Width = 160
      Height = 32
      Caption = 'Reduced row-echelon form'
      TabOrder = 3
      OnClick = reducedRowEchelonButtonBClick
    end
    object determinantButtonB: TButton
      Left = 182
      Top = 303
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Determinant'
      TabOrder = 4
      OnClick = determinantButtonBClick
    end
    object rankButtonB: TButton
      Left = 16
      Top = 303
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Rank'
      TabOrder = 5
      OnClick = rankButtonBClick
    end
    object inverseButtonB: TButton
      Left = 16
      Top = 341
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Inverse'
      TabOrder = 6
      OnClick = inverseButtonBClick
    end
    object multiplyButtonB: TButton
      Left = 16
      Top = 379
      Width = 160
      Height = 32
      Caption = 'Multiply by             '
      TabOrder = 7
      OnClick = multiplyButtonBClick
    end
    object constantSelectionBEdit: TEdit
      Left = 105
      Top = 384
      Width = 39
      Height = 21
      TabOrder = 8
    end
    object powerButtonB: TButton
      Left = 182
      Top = 379
      Width = 160
      Height = 32
      Caption = 'Raise to the power of               '
      TabOrder = 9
      OnClick = powerButtonBClick
    end
    object powerSelectionBEdit: TEdit
      Left = 300
      Top = 384
      Width = 36
      Height = 21
      TabOrder = 10
    end
    object transposeButtonB: TButton
      Left = 182
      Top = 341
      Width = 160
      Height = 32
      Align = alCustom
      Caption = 'Transpose'
      TabOrder = 11
      OnClick = transposeButtonBClick
    end
  end
  object output: TGroupBox
    Left = 80
    Top = 439
    Width = 785
    Height = 250
    Caption = 'RESULT'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object memoOutputMatrix: TMemo
      Left = 16
      Top = 16
      Width = 753
      Height = 223
      Color = clCream
      Lines.Strings = (
        'outputMemo')
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object insertIntoA: TButton
    Left = 366
    Top = 397
    Width = 107
    Height = 36
    Caption = 'Insert result into A'
    TabOrder = 7
    OnClick = insertIntoAClick
  end
  object insertIntoB: TButton
    Left = 481
    Top = 397
    Width = 107
    Height = 36
    Caption = 'Insert result into B'
    TabOrder = 8
    OnClick = insertIntoBClick
  end
end
