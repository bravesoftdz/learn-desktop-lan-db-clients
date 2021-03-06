object ReportDMod: TReportDMod
  OldCreateOrder = False
  Height = 394
  Width = 499
  object BOATfrxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 80
    Top = 8
  end
  object OrdersInIntervalfrxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41770.800442268520000000
    ReportOptions.LastChange = 41789.217621087960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure button1OnClick(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '      '
      'end;'
      ''
      'procedure EndDateEditOnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure StartTimeEditOnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 80
    Top = 64
    Datasets = <
      item
        DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
        DataSetName = 'OrdersInIntervalADOQuery'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object OrdersInIntervalADOQuery: TfrxADOQuery
        UserName = 'OrdersInIntervalADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OSTART'
            DataType = ftLargeint
            Expression = 'Round(StartDateEdit.Date)-36527'
          end
          item
            Name = 'OEND'
            DataType = ftLargeint
            Expression = 'Round(EndDateEdit.Date)-36527'
          end>
        SQL.Strings = (
          'SELECT O.ORDER_NAME, O.ORDER_START, '
          'O.ORDER_END, M.MAN_FAMILY, M.MAN_NAME, '
          'M.MAN_SURNAME,O.SUMM, O.DOC_NO, O.DOC_DATE, '
          'O.USAGE_SUMM, O.WORK_SUMM, P.NAME, P.FAMILY,'
          'P.SURNAME                    '
          'FROM '
          '       ORDERS O LEFT JOIN                          '
          '       MANAGER M ON (M.MANAGER_ID=O.MANAGER_ID)              '
          '       LEFT JOIN PERSON P '
          '       ON (P.PERSON_ID=O.PERSON_ID)'
          'WHERE                  '
          
            '    (DATEDIFF(DAY, date '#39'2000-01-01'#39', O.ORDER_START)>=:OSTART) a' +
            'nd'
          
            '    (DATEDIFF(DAY, date '#39'2000-01-01'#39', O.ORDER_END)<=:OEND)      ' +
            '                        '
          '')
        SQLSchema = 
          'eAF1kU8LgjAYxu+C32SHTZ3pYYfVlkTO0aZEjJBFHqTokH1/0mXRYbIXdvg97/u8' +
          'fwyzL7u2Q3cOA30oSZThLMUJypMwMLW93LthJJJIxbjSAOEpIgjHD4aBIIJWtOAK' +
          'xBmIcAJ+xBTP/jpmwk9mW1HBwVxEAgSge2GAZq5rqmqfIJoFvGI+HE8dtFsqduUJ' +
          'fJsRfwaJEzh7H8YO60YtKlKiGyF83ivC5KatpI9ljjFae6fOSaPHtbVLlREkR6n2' +
          'i9yU/eM2HeYN+atqfA=='
        CommandTimeout = 30
        Database = OrdersInIntervalfrxReport.BoatsADOD
        LockType = ltReadOnly
        pLeft = 80
        pTop = 100
        Parameters = <
          item
            Name = 'OSTART'
            DataType = ftLargeint
            Expression = 'Round(StartDateEdit.Date)-36527'
          end
          item
            Name = 'OEND'
            DataType = ftLargeint
            Expression = 'Round(EndDateEdit.Date)-36527'
          end>
      end
      object BoatsADOD: TfrxADODatabase
        DatabaseName = 
          'Provider=MSDASQL.1;Password=masterkey;Persist Security Info=True' +
          ';User ID=SYSDBA;Data Source=BOAT_FBDB'
        LoginPrompt = False
        pLeft = 80
        pTop = 24
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 8.500000000000000000
      RightMargin = 8.500000000000000000
      TopMargin = 8.500000000000000000
      BottomMargin = 8.500000000000000000
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 132.000000000000000000
        Width = 729.449290000000000000
        DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
        DataSetName = 'OrdersInIntervalADOQuery'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_NAME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ORDER_START'
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_START"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ORDER_END'
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_END"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 45.354360000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'DOC_NO'
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."DOC_NO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 355.275820000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'DOC_DATE'
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."DOC_DATE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'SUMM'
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."SUMM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<OrdersInIntervalADOQuery."MAN_FAMILY">+'#39' '#39'+<OrdersInIntervalAD' +
              'OQuery."MAN_NAME">+'#39' '#39'+<OrdersInIntervalADOQuery."MAN_SURNAME">]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = OrdersInIntervalfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<OrdersInIntervalADOQuery."FAMILY">+'#39' '#39'+<OrdersInIntervalADOQue' +
              'ry."NAME">+'#39' '#39'+<OrdersInIntervalADOQuery."SURNAME">]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 16.000000000000000000
        Width = 729.449290000000000000
        object Memo2: TfrxMemoView
          Left = 219.212740000000000000
          Top = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[DateTimeToStr(StartDateEdit.Date)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1055#1048#1057#1054#1050' '#1047#1040#1050#1040#1047#1054#1042)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[DateTimeToStr(EndDateEdit.Date)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 355.275820000000000000
          Top = 30.236240000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1087#1086)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 196.535560000000000000
          Top = 30.236240000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 88.000000000000000000
        Width = 729.449290000000000000
        object Line2: TfrxLineView
          Top = 22.677180000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 113.385900000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1086)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1082#1086#1085#1095#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 294.803340000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #8470' '#1076#1086#1075'.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 355.275820000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1076#1086#1075'.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 445.984540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 619.842920000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1083#1080#1077#1085#1090)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 30.236240000000000000
        Top = 196.000000000000000000
        Width = 729.449290000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<OrdersInIntervalADOQuery."SUMM">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1072#1084' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Height = 283.000000000000000000
      ClientHeight = 239.000000000000000000
      Left = 436.000000000000000000
      Top = 142.000000000000000000
      Width = 383.000000000000000000
      ClientWidth = 367.000000000000000000
      object StartDateEdit: TfrxDateEditControl
        Left = 80.000000000000000000
        Top = 60.000000000000000000
        Width = 209.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 41770.824657256950000000
        Time = 41770.824657256950000000
        WeekNumbers = False
      end
      object EndDateEdit: TfrxDateEditControl
        Left = 80.000000000000000000
        Top = 128.000000000000000000
        Width = 209.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 41770.824752395830000000
        Time = 41770.824752395830000000
        WeekNumbers = False
        OnClick = 'EndDateEditOnClick'
      end
      object button1: TfrxButtonControl
        Left = 96.000000000000000000
        Top = 188.000000000000000000
        Width = 83.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = 'OK'
        ModalResult = 1
      end
      object Label1: TfrxLabelControl
        Left = 80.000000000000000000
        Top = 36.000000000000000000
        Width = 91.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = #1047#1072#1082#1072#1079#1099' '#1089' '#1076#1072#1090#1099':'
        Color = clBtnFace
      end
      object Label2: TfrxLabelControl
        Left = 80.000000000000000000
        Top = 104.000000000000000000
        Width = 53.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = #1044#1086' '#1076#1072#1090#1099':'
        Color = clBtnFace
      end
      object Button2: TfrxButtonControl
        Left = 196.000000000000000000
        Top = 188.000000000000000000
        Width = 79.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
    end
  end
  object ClientOrdersfrxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41770.802499872700000000
    ReportOptions.LastChange = 41789.218636851850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure PRSIDDBLookCBOnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 80
    Top = 120
    Datasets = <
      item
        DataSet = ClientOrdersfrxReport.ClientsDictADOQ
        DataSetName = 'ClientsDictADOQ'
      end
      item
        DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
        DataSetName = 'OrdersInIntervalADOQuery'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object BoatsADODB: TfrxADODatabase
        DatabaseName = 
          'Provider=MSDASQL.1;Password=masterkey;Persist Security Info=True' +
          ';User ID=SYSDBA;Data Source=BOAT_FBDB'
        LoginPrompt = False
        pLeft = 68
        pTop = 28
      end
      object ClientsDictADOQ: TfrxADOQuery
        UserName = 'ClientsDictADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'SELECT (FAMILY||'#39' '#39'||NAME||'#39' '#39'||SURNAME) as FIO,'
          'PERSON_ID FROM PERSON'
          
            'ORDER BY (FAMILY||'#39' '#39'||NAME||'#39' '#39'||SURNAME) ASC                  ' +
            '                 ')
        CommandTimeout = 30
        Database = ClientOrdersfrxReport.BoatsADODB
        LockType = ltReadOnly
        pLeft = 68
        pTop = 100
        Parameters = <>
      end
      object OrdersInIntervalADOQuery: TfrxADOQuery
        UserName = 'OrdersInIntervalADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PRSID'
            DataType = ftInteger
            Expression = 'StrToInt(VarToStr(PRSIDDBLookCB.KeyValue))'
          end>
        SQL.Strings = (
          'SELECT O.ORDER_NAME, O.ORDER_START, '
          'O.ORDER_END, M.MAN_FAMILY, M.MAN_NAME, '
          'M.MAN_SURNAME,O.SUMM, O.DOC_NO, O.DOC_DATE, '
          'O.USAGE_SUMM, O.WORK_SUMM, P.NAME, P.FAMILY,'
          'P.SURNAME                    '
          'FROM '
          '       ORDERS O LEFT JOIN                          '
          '       MANAGER M ON (M.MANAGER_ID=O.MANAGER_ID)              '
          '       LEFT JOIN PERSON P '
          '       ON (P.PERSON_ID=O.PERSON_ID)'
          'WHERE  '
          
            '       O.PERSON_ID=:PRSID                                       ' +
            '    ')
        CommandTimeout = 30
        Database = ClientOrdersfrxReport.BoatsADODB
        LockType = ltReadOnly
        pLeft = 68
        pTop = 168
        Parameters = <
          item
            Name = 'PRSID'
            DataType = ftInteger
            Expression = 'StrToInt(VarToStr(PRSIDDBLookCB.KeyValue))'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 132.000000000000000000
        Width = 718.110700000000000000
        DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
        DataSetName = 'OrdersInIntervalADOQuery'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_NAME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ORDER_START'
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_START"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ORDER_END'
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_END"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 45.354360000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'DOC_NO'
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."DOC_NO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 355.275820000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'DOC_DATE'
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."DOC_DATE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'SUMM'
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."SUMM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<OrdersInIntervalADOQuery."MAN_FAMILY">+'#39' '#39'+<OrdersInIntervalAD' +
              'OQuery."MAN_NAME">+'#39' '#39'+<OrdersInIntervalADOQuery."MAN_SURNAME">]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = ClientOrdersfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<OrdersInIntervalADOQuery."FAMILY">+'#39' '#39'+<OrdersInIntervalADOQue' +
              'ry."NAME">+'#39' '#39'+<OrdersInIntervalADOQuery."SURNAME">]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 234.330860000000000000
          Top = 30.236240000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[ClientsDictADOQ."FIO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1055#1048#1057#1054#1050' '#1047#1040#1050#1040#1047#1054#1042)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 162.519790000000000000
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1083#1080#1077#1085#1090#1072)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 88.000000000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 113.385900000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1086)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1082#1086#1085#1095#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 294.803340000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #8470' '#1076#1086#1075'.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 355.275820000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1076#1086#1075'.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 445.984540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 619.842920000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1083#1080#1077#1085#1090)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 30.236240000000000000
        Top = 196.000000000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<OrdersInIntervalADOQuery."SUMM">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #1047#1072#1082#1072#1079#1099' '#1082#1083#1080#1077#1085#1090#1072
      Height = 250.000000000000000000
      ClientHeight = 206.000000000000000000
      Left = 437.000000000000000000
      Top = 164.000000000000000000
      Width = 364.000000000000000000
      ClientWidth = 348.000000000000000000
      object PRSIDDBLookCB: TfrxDBLookupComboBox
        Left = 48.000000000000000000
        Top = 72.000000000000000000
        Width = 257.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        AutoOpenDataSet = True
        DataSet = ClientOrdersfrxReport.ClientsDictADOQ
        DataSetName = 'ClientsDictADOQ'
        ListField = 'FIO'
        KeyField = 'PERSON_ID'
        DropDownWidth = 0
        DropDownRows = 7
        OnClick = 'PRSIDDBLookCBOnClick'
      end
      object Button1: TfrxButtonControl
        Left = 88.000000000000000000
        Top = 128.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1050
        ModalResult = 1
      end
      object Label1: TfrxLabelControl
        Left = 48.000000000000000000
        Top = 48.000000000000000000
        Width = 41.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = #1050#1083#1080#1077#1085#1090
        Color = clBtnFace
      end
      object Button2: TfrxButtonControl
        Left = 188.000000000000000000
        Top = 128.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
      end
    end
  end
  object BoatWorksfrxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41770.802561990700000000
    ReportOptions.LastChange = 41771.019848912000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Label1OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 80
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #1069#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1103' '#1089#1091#1076#1085#1072
      Height = 299.000000000000000000
      ClientHeight = 255.000000000000000000
      Left = 430.000000000000000000
      Top = 150.000000000000000000
      Width = 412.000000000000000000
      ClientWidth = 396.000000000000000000
      object DBLookupComboBox1: TfrxDBLookupComboBox
        Left = 56.000000000000000000
        Top = 80.000000000000000000
        Width = 285.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        DropDownWidth = 0
        DropDownRows = 7
      end
      object Label1: TfrxLabelControl
        Left = 56.000000000000000000
        Top = 52.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1077' '#1089#1088#1077#1076#1089#1090#1074#1086
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object Button1: TfrxButtonControl
        Left = 100.000000000000000000
        Top = 148.000000000000000000
        Width = 99.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = 'OK'
        ModalResult = 1
      end
      object Button2: TfrxButtonControl
        Left = 208.000000000000000000
        Top = 148.000000000000000000
        Width = 95.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
    end
  end
  object ManagerWorksfrxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41771.014957951400000000
    ReportOptions.LastChange = 41789.219595335650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 80
    Top = 232
    Datasets = <
      item
        DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
        DataSetName = 'OrdersInIntervalADOQuery'
      end
      item
        DataSet = ManagerWorksfrxReport.ManagersADOQ
        DataSetName = 'ManagersADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object BoatsADODB: TfrxADODatabase
        DatabaseName = 
          'Provider=MSDASQL.1;Password=masterkey;Persist Security Info=True' +
          ';User ID=SYSDBA;Data Source=BOAT_FBDB'
        LoginPrompt = False
        pLeft = 80
        pTop = 28
      end
      object OrdersInIntervalADOQuery: TfrxADOQuery
        UserName = 'OrdersInIntervalADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'MAN_ID'
            DataType = ftInteger
            Expression = 'StrToInt(VarToStr(<ManagersADOQ."MANAGER_ID">))'
          end>
        SQL.Strings = (
          'SELECT O.ORDER_NAME, O.ORDER_START, '
          'O.ORDER_END, M.MAN_FAMILY, M.MAN_NAME, '
          'M.MAN_SURNAME,O.SUMM, O.DOC_NO, O.DOC_DATE, '
          'O.USAGE_SUMM, O.WORK_SUMM, P.NAME, P.FAMILY,'
          'P.SURNAME                    '
          'FROM '
          '       ORDERS O LEFT JOIN                          '
          '       MANAGER M ON (M.MANAGER_ID=O.MANAGER_ID)              '
          '       LEFT JOIN PERSON P '
          '       ON (P.PERSON_ID=O.PERSON_ID)'
          'WHERE  '
          
            '       O.MANAGER_ID=:MAN_ID                                     ' +
            '      ')
        CommandTimeout = 30
        Database = ManagerWorksfrxReport.BoatsADODB
        LockType = ltReadOnly
        pLeft = 80
        pTop = 168
        Parameters = <
          item
            Name = 'MAN_ID'
            DataType = ftInteger
            Expression = 'StrToInt(VarToStr(<ManagersADOQ."MANAGER_ID">))'
          end>
      end
      object ManagersADOQ: TfrxADOQuery
        UserName = 'ManagersADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'SELECT M.MANAGER_ID, '
          '(M.WPLACE_NAME||'#39' '#39'||M.MAN_FAMILY||'#39' '#39'||'
          'M.MAN_NAME||'#39' '#39'||M.MAN_SURNAME) as FIO                   '
          'FROM'
          '    MANAGER M')
        SQLSchema = 
          'eAGLdkksSXRKLE6N5eUKDvSxNTQzMzczsTQxseDlig5JTMpJLQbK+Nr6Ovo5ursG' +
          '6RiagpCRgQGQMgAqcS/KTAEqMIApiPd00YGp9dUx1DEAQ14uQ5CCeD9HX1es0kZg' +
          'aTdHX0+fSKwKjMEKgkODcBphYhse4OPo7IrbkmifzLxskHcAAxA7UA=='
        CommandTimeout = 30
        Database = ManagerWorksfrxReport.BoatsADODB
        LockType = ltReadOnly
        pLeft = 80
        pTop = 100
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 132.000000000000000000
        Width = 718.110700000000000000
        DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
        DataSetName = 'OrdersInIntervalADOQuery'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_NAME"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ORDER_START'
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_START"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ORDER_END'
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."ORDER_END"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 45.354360000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'DOC_NO'
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."DOC_NO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 355.275820000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'DOC_DATE'
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."DOC_DATE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'SUMM'
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[OrdersInIntervalADOQuery."SUMM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<OrdersInIntervalADOQuery."MAN_FAMILY">+'#39' '#39'+<OrdersInIntervalAD' +
              'OQuery."MAN_NAME">+'#39' '#39'+<OrdersInIntervalADOQuery."MAN_SURNAME">]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = ManagerWorksfrxReport.OrdersInIntervalADOQuery
          DataSetName = 'OrdersInIntervalADOQuery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<OrdersInIntervalADOQuery."FAMILY">+'#39' '#39'+<OrdersInIntervalADOQue' +
              'ry."NAME">+'#39' '#39'+<OrdersInIntervalADOQuery."SURNAME">]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 272.126160000000000000
          Top = 30.236240000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[ManagersADOQ."FIO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1057#1055#1048#1057#1054#1050' '#1047#1040#1050#1040#1047#1054#1042)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 181.417440000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1086#1090#1088#1091#1076#1085#1080#1082#1072)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 88.000000000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 98.267780000000000000
          Top = 22.677180000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 113.385900000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1053#1072#1095#1072#1083#1086)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1082#1086#1085#1095#1072#1085#1080#1077)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 294.803340000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #8470' '#1076#1086#1075'.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 355.275820000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1076#1086#1075'.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 445.984540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 619.842920000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1083#1080#1077#1085#1090)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 30.236240000000000000
        Top = 196.000000000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<OrdersInIntervalADOQuery."SUMM">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Caption = #1053#1072#1075#1088#1091#1079#1082#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Height = 266.000000000000000000
      ClientHeight = 222.000000000000000000
      Left = 447.000000000000000000
      Top = 143.000000000000000000
      Width = 462.000000000000000000
      ClientWidth = 446.000000000000000000
      object MangDBLookCB: TfrxDBLookupComboBox
        Left = 32.000000000000000000
        Top = 76.000000000000000000
        Width = 381.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        AutoOpenDataSet = True
        DataSet = ManagerWorksfrxReport.ManagersADOQ
        DataSetName = 'ManagersADOQ'
        ListField = 'FIO'
        KeyField = 'MANAGER_ID'
        DropDownWidth = 0
        DropDownRows = 7
      end
      object Label1: TfrxLabelControl
        Left = 32.000000000000000000
        Top = 52.000000000000000000
        Width = 136.000000000000000000
        Height = 16.000000000000000000
        ShowHint = True
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082' ('#1084#1077#1085#1077#1076#1078#1077#1088')'
        Color = clBtnFace
      end
      object Button1: TfrxButtonControl
        Left = 104.000000000000000000
        Top = 140.000000000000000000
        Width = 103.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1050
        ModalResult = 1
      end
      object Button2: TfrxButtonControl
        Left = 240.000000000000000000
        Top = 140.000000000000000000
        Width = 103.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
    end
  end
end
