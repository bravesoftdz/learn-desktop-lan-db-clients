﻿object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1089#1090#1077#1084#1072' "'#1059#1095#1077#1090' '#1087#1088#1086#1082#1072#1090#1072' '#1074#1086#1076#1085#1086#1075#1086' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072'"'
  ClientHeight = 527
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 984
    Height = 527
    ActivePage = ClientsAccountTabSheet
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object BoatsAccountTabSheet: TTabSheet
      Caption = #1059#1095#1077#1090' '#1084#1086#1088#1089#1082#1086#1075#1086' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      OnShow = BoatsAccountTabSheetShow
      object Splitter1: TSplitter
        Left = 724
        Top = 0
        Height = 499
        Align = alRight
        Color = clMedGray
        ParentColor = False
        ExplicitLeft = 496
        ExplicitTop = 312
        ExplicitHeight = 100
      end
      object GroupBox1: TGroupBox
        Left = 727
        Top = 0
        Width = 249
        Height = 499
        Align = alRight
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1091#1076#1085#1072
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 288
          Width = 86
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1077#1089#1090
        end
        object Label7: TLabel
          Left = 24
          Top = 344
          Width = 93
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1072#1083#1091#1073
        end
        object Label8: TLabel
          Left = 24
          Top = 400
          Width = 49
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object BoatDBImage: TDBImage
          Left = 24
          Top = 23
          Width = 201
          Height = 227
          DataField = 'BOAT_IMAGE'
          DataSource = ConnectionDM.BoatsDS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 304
          Width = 201
          Height = 21
          DataField = 'PLACES_COUNT'
          DataSource = ConnectionDM.BoatsDS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 360
          Width = 201
          Height = 21
          DataField = 'STAGE_COUNT'
          DataSource = ConnectionDM.BoatsDS
          TabOrder = 2
        end
        object DBMemo2: TDBMemo
          Left = 24
          Top = 416
          Width = 201
          Height = 65
          DataField = 'BOAT_DESCRIPTION'
          DataSource = ConnectionDM.BoatsDS
          TabOrder = 3
        end
        object SetImgBtn: TBitBtn
          Left = 24
          Top = 256
          Width = 75
          Height = 25
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = SetImgBtnClick
        end
        object ClearImgBtn: TBitBtn
          Left = 105
          Top = 256
          Width = 75
          Height = 25
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 5
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 724
        Height = 499
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 0
          Top = 353
          Width = 724
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = clMedGray
          ParentColor = False
          ExplicitTop = 297
          ExplicitWidth = 71
        end
        object Panel2: TPanel
          Left = 0
          Top = 356
          Width = 724
          Height = 143
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 336
            Top = 0
            Height = 143
            Color = clMedGray
            ParentColor = False
            ExplicitLeft = 248
            ExplicitTop = 64
            ExplicitHeight = 100
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 336
            Height = 143
            Align = alLeft
            Caption = #1058#1080#1087#1099' '#1089#1091#1076#1086#1074
            TabOrder = 0
            object Panel12: TPanel
              Left = 2
              Top = 100
              Width = 332
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn12: TBitBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Action = ConnectionDM.BoatTypeDSI
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
              object BitBtn13: TBitBtn
                Left = 96
                Top = 8
                Width = 75
                Height = 25
                Action = ConnectionDM.BoatTypeDSD
                Caption = #1059#1076#1072#1083#1080#1090#1100
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 1
              end
            end
            object DBGrid7: TDBGrid
              Left = 2
              Top = 15
              Width = 332
              Height = 85
              Align = alClient
              Ctl3D = True
              DataSource = ConnectionDM.BoatTypesDS
              ParentCtl3D = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = cl3DLight
                  Expanded = False
                  FieldName = 'BOAT_TYPE_ID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BOAT_TYPE_NAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 200
                  Visible = True
                end>
            end
          end
          object GroupBox4: TGroupBox
            Left = 339
            Top = 0
            Width = 385
            Height = 143
            Align = alClient
            Caption = #1057#1090#1086#1103#1085#1082#1080
            TabOrder = 1
            object Panel13: TPanel
              Left = 2
              Top = 100
              Width = 381
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object BitBtn14: TBitBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Action = ConnectionDM.LocationDSI
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
              end
              object BitBtn15: TBitBtn
                Left = 96
                Top = 8
                Width = 75
                Height = 25
                Action = ConnectionDM.LocationDSD
                Caption = #1059#1076#1072#1083#1080#1090#1100
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 1
              end
            end
            object DBGrid8: TDBGrid
              Left = 2
              Top = 15
              Width = 381
              Height = 85
              Align = alClient
              Ctl3D = True
              DataSource = ConnectionDM.LocationsDS
              ParentCtl3D = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = cl3DLight
                  Expanded = False
                  FieldName = 'LOCATION_ID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOCATION_NAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Width = 250
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOCATIONS_ADRESS'
                  Title.Caption = #1040#1076#1088#1077#1089
                  Visible = False
                end>
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 724
          Height = 353
          Align = alClient
          Caption = #1052#1086#1088#1089#1082#1086#1081' '#1090#1088#1072#1085#1089#1087#1086#1088#1090
          TabOrder = 1
          object Panel14: TPanel
            Left = 2
            Top = 310
            Width = 720
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object BitBtn16: TBitBtn
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.BoatDSI
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 0
            end
            object BitBtn17: TBitBtn
              Left = 96
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.BoatDSD
              Caption = #1059#1076#1072#1083#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 1
            end
          end
          object DBGrid6: TDBGrid
            Left = 2
            Top = 49
            Width = 720
            Height = 261
            Align = alClient
            Ctl3D = True
            DataSource = ConnectionDM.BoatsDS
            ParentCtl3D = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Color = cl3DLight
                Expanded = False
                FieldName = 'BOAT_ID'
                ReadOnly = True
                Title.Caption = 'ID'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BOAT_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REG_NUMBER'
                Title.Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BOAT_TYPE_LOOK'
                Title.Caption = #1058#1080#1087' '#1089#1091#1076#1085#1072
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BOAT_LOC_ID'
                Title.Caption = #1057#1090#1086#1103#1085#1082#1072' '#1089#1091#1076#1085#1072
                Width = 200
                Visible = True
              end>
          end
          object Panel15: TPanel
            Left = 2
            Top = 15
            Width = 720
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object BTypeFСhB: TCheckBox
              Left = 16
              Top = 8
              Width = 137
              Height = 17
              Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1091' '#1089#1091#1076#1085#1072
              TabOrder = 0
              OnClick = BTypeFСhBClick
            end
            object BLocFChB: TCheckBox
              Left = 168
              Top = 8
              Width = 159
              Height = 17
              Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1090#1086#1103#1085#1082#1077
              TabOrder = 1
              OnClick = BLocFChBClick
            end
          end
        end
      end
    end
    object ClientsAccountTabSheet: TTabSheet
      Caption = #1059#1095#1077#1090' '#1082#1083#1080#1077#1085#1090#1086#1074
      ImageIndex = 1
      OnShow = ClientsAccountTabSheetShow
      object Splitter4: TSplitter
        Left = 0
        Top = 281
        Width = 976
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clMedGray
        ParentColor = False
        ExplicitTop = 0
        ExplicitWidth = 296
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 976
        Height = 281
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter5: TSplitter
          Left = 257
          Top = 0
          Height = 281
          Color = clMedGray
          ParentColor = False
          ExplicitLeft = 231
          ExplicitTop = -3
          ExplicitHeight = 293
        end
        object Panel4: TPanel
          Left = 260
          Top = 0
          Width = 716
          Height = 281
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 716
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              Left = 419
              Top = 10
              Width = 31
              Height = 13
              Caption = #1060#1088#1072#1079#1072
            end
            object ClTypeFChB: TCheckBox
              Left = 16
              Top = 8
              Width = 193
              Height = 17
              Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1090#1080#1087#1091' '#1082#1083#1080#1077#1085#1090#1072
              TabOrder = 0
              OnClick = ClTypeFChBClick
            end
            object ClNameLikeFChB: TCheckBox
              Left = 215
              Top = 8
              Width = 186
              Height = 17
              Caption = #1055#1086' '#1074#1093#1086#1078#1076#1077#1085#1080#1102' '#1092#1088#1072#1079#1099' '#1074' '#1060#1048#1054' -->'
              TabOrder = 1
              OnClick = ClNameLikeFChBClick
            end
            object ClNameLikeWordEdit: TEdit
              Left = 456
              Top = 2
              Width = 121
              Height = 21
              TabOrder = 2
            end
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = 25
            Width = 716
            Height = 171
            Align = alClient
            Caption = #1050#1083#1080#1077#1085#1090#1099
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 712
              Height = 154
              Align = alClient
              DataSource = ConnectionDM.PersonsDS
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Color = cl3DLight
                  Expanded = False
                  FieldName = 'PERSON_ID'
                  ReadOnly = True
                  Title.Caption = 'ID'
                  Width = 25
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FAMILY'
                  Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NAME'
                  Title.Caption = #1048#1084#1103
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SURNAME'
                  Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PHONES'
                  Title.Caption = #1058#1077#1083#1077#1092#1086#1085#1099
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERS_TYPE_LOOK'
                  Title.Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
                  Width = 170
                  Visible = True
                end>
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 196
            Width = 716
            Height = 85
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object Label1: TLabel
              Left = 16
              Top = 8
              Width = 67
              Height = 13
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            end
            object Label2: TLabel
              Left = 328
              Top = 8
              Width = 96
              Height = 13
              Caption = #1069#1083#1077#1082#1088#1086#1085#1085#1099#1081' '#1072#1076#1088#1077#1089
            end
            object BitBtn3: TBitBtn
              Left = 16
              Top = 54
              Width = 75
              Height = 25
              Action = ConnectionDM.PersonDSI
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 0
            end
            object BitBtn4: TBitBtn
              Left = 104
              Top = 54
              Width = 75
              Height = 25
              Action = ConnectionDM.PersonDSD
              Caption = #1059#1076#1072#1083#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 1
            end
            object BitBtn5: TBitBtn
              Left = 192
              Top = 54
              Width = 75
              Height = 25
              Action = ConnectionDM.PersonOrdersDSI
              Caption = #1047#1072#1082#1072#1079
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 2
            end
            object DBMemo1: TDBMemo
              Left = 104
              Top = 4
              Width = 185
              Height = 44
              DataField = 'DESCRIPTION'
              DataSource = ConnectionDM.PersonsDS
              TabOrder = 3
            end
            object DBEdit1: TDBEdit
              Left = 328
              Top = 24
              Width = 201
              Height = 21
              DataField = 'EMAIL'
              DataSource = ConnectionDM.PersonsDS
              TabOrder = 4
            end
            object BitBtn22: TBitBtn
              Left = 280
              Top = 54
              Width = 89
              Height = 25
              Action = ConnectionDM.ClientsDSP
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 5
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 257
          Height = 281
          Align = alLeft
          TabOrder = 1
          object GroupBox6: TGroupBox
            Left = 1
            Top = 1
            Width = 255
            Height = 238
            Align = alClient
            Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 251
              Height = 221
              Align = alClient
              Ctl3D = True
              DataSource = ConnectionDM.PersTypesDS
              ParentCtl3D = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PERSON_TYPE_NAME'
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                  Visible = True
                end>
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 239
            Width = 255
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object BitBtn1: TBitBtn
              Left = 8
              Top = 8
              Width = 82
              Height = 25
              Action = ConnectionDM.PersonTypeDSI
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 0
            end
            object BitBtn2: TBitBtn
              Left = 96
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.PersonTypeDSD
              Caption = #1059#1076#1072#1083#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 1
            end
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 284
        Width = 976
        Height = 215
        Align = alBottom
        Caption = #1047#1072#1082#1072#1079#1099' '#1082#1083#1080#1077#1085#1090#1072
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 972
          Height = 168
          Align = alClient
          Ctl3D = True
          DataSource = ConnectionDM.PersonOrdersDS
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ORDER_NAME'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_ADD_DATE'
              Title.Caption = #1044#1086#1073#1072#1074#1083#1077#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOC_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1089#1095#1077#1090#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOC_NO'
              Title.Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_START'
              Title.Caption = #1053#1072#1095#1072#1083#1086
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_END'
              Title.Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORD_MAN_LOOK'
              Title.Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
              Width = 150
              Visible = True
            end>
        end
        object Panel18: TPanel
          Left = 2
          Top = 183
          Width = 972
          Height = 30
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn21: TBitBtn
            Left = 7
            Top = 6
            Width = 89
            Height = 25
            Action = ConnectionDM.ClientOrdersDSP
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
        end
      end
    end
    object OrdersAccountTabSheet: TTabSheet
      Caption = #1059#1095#1077#1090' '#1072#1088#1077#1085#1076#1099' '#1084#1086#1088#1089#1082#1086#1075#1086' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      ImageIndex = 2
      OnShow = OrdersAccountTabSheetShow
      object Splitter7: TSplitter
        Left = 0
        Top = 281
        Width = 976
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clMedGray
        ParentColor = False
        ExplicitTop = 0
        ExplicitWidth = 296
      end
      object TPanel
        Left = 0
        Top = 284
        Width = 976
        Height = 215
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter6: TSplitter
          Left = 633
          Top = 0
          Height = 215
          Color = clMedGray
          ParentColor = False
          ExplicitLeft = 194
          ExplicitTop = 3
        end
        object GroupBox9: TGroupBox
          Left = 0
          Top = 0
          Width = 633
          Height = 215
          Align = alLeft
          Caption = #1040#1088#1077#1085#1076#1099' '#1089#1091#1076#1086#1074' '#1079#1072#1082#1072#1079#1072
          TabOrder = 0
          object Panel9: TPanel
            Left = 2
            Top = 172
            Width = 629
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object BitBtn6: TBitBtn
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.OrderUItemsDSI
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 0
            end
            object BitBtn7: TBitBtn
              Left = 96
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.OrderUItemsDSD
              Caption = #1059#1076#1072#1083#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 1
            end
            object BitBtn20: TBitBtn
              Left = 184
              Top = 8
              Width = 89
              Height = 25
              Action = ConnectionDM.OrderItemsDSP
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 2
            end
          end
          object DBGrid4: TDBGrid
            Left = 2
            Top = 15
            Width = 629
            Height = 157
            Align = alClient
            Ctl3D = True
            DataSource = ConnectionDM.OrderUItemsDS
            ParentCtl3D = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ORDER_ITEM_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMM'
                Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORDER_ITEM_START'
                Title.Caption = #1053#1072#1095#1072#1083#1086
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORDER_ITEM_END'
                Title.Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BOAT_LOOK'
                Title.Caption = #1057#1091#1076#1085#1086
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOC_LOOK'
                Title.Caption = #1057#1090#1086#1103#1085#1082#1072
                Width = 120
                Visible = True
              end>
          end
        end
        object GroupBox10: TGroupBox
          Left = 636
          Top = 0
          Width = 340
          Height = 215
          Align = alClient
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1091#1089#1083#1091#1075#1080' '#1079#1072#1082#1072#1079#1072
          TabOrder = 1
          object Panel10: TPanel
            Left = 2
            Top = 172
            Width = 336
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object BitBtn8: TBitBtn
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.OrderWorksDSI
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 0
            end
            object BitBtn9: TBitBtn
              Left = 96
              Top = 8
              Width = 75
              Height = 25
              Action = ConnectionDM.OrderWorksDSD
              Caption = #1059#1076#1072#1083#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 1
            end
            object BitBtn10: TBitBtn
              Left = 184
              Top = 8
              Width = 89
              Height = 25
              Action = ConnectionDM.OrderWorksDSP
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              DoubleBuffered = True
              ParentDoubleBuffered = False
              TabOrder = 2
            end
          end
          object DBGrid5: TDBGrid
            Left = 2
            Top = 15
            Width = 336
            Height = 157
            Align = alClient
            Ctl3D = True
            DataSource = ConnectionDM.OrderWorksDS
            ParentCtl3D = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'WORK_NAME'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WORK_PRICE'
                Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
                Visible = True
              end>
          end
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 976
        Height = 281
        Align = alClient
        Caption = #1057#1087#1080#1089#1086#1082' '#1079#1072#1082#1072#1079#1086#1074
        TabOrder = 1
        object Panel11: TPanel
          Left = 2
          Top = 238
          Width = 972
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn11: TBitBtn
            Left = 8
            Top = 6
            Width = 75
            Height = 25
            Action = ConnectionDM.OrdersDSD
            Caption = #1059#1076#1072#1083#1080#1090#1100
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
        end
        object DBGrid9: TDBGrid
          Left = 2
          Top = 50
          Width = 972
          Height = 188
          Align = alClient
          Ctl3D = True
          DataSource = ConnectionDM.OrdersDS
          ParentCtl3D = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = cl3DLight
              Expanded = False
              FieldName = 'ORDER_ID'
              ReadOnly = True
              Title.Caption = 'ID'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_NAME'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_ADD_DATE'
              Title.Caption = #1044#1086#1073#1072#1074#1083#1077#1085
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOC_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1089#1095#1077#1090#1072
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOC_NO'
              Title.Caption = #1053'-'#1088' '#1089#1095#1077#1090#1072
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_START'
              Title.Caption = #1053#1072#1095#1072#1083#1086
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORDER_END'
              Title.Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USAGE_SUMM'
              Title.Caption = #1055#1088#1086#1082#1072#1090
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WORK_SUMM'
              Title.Caption = #1056#1072#1073#1086#1090#1099
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMM'
              Title.Caption = #1042#1089#1077#1075#1086
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORD_MAN_LOOK'
              Title.Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERSON_LOOK'
              Title.Caption = #1050#1083#1080#1077#1085#1090
              Width = 130
              Visible = True
            end>
        end
        object Panel17: TPanel
          Left = 2
          Top = 15
          Width = 972
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            Left = 136
            Top = 10
            Width = 7
            Height = 13
            Caption = #1057
          end
          object Label6: TLabel
            Left = 264
            Top = 10
            Width = 13
            Height = 13
            Caption = #1055#1086
          end
          object OrderIntervalFChB: TCheckBox
            Left = 16
            Top = 8
            Width = 105
            Height = 17
            Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
            TabOrder = 0
            OnClick = OrderIntervalFChBClick
          end
          object OrdStartDTPick: TDateTimePicker
            Left = 149
            Top = 2
            Width = 100
            Height = 21
            Date = 41762.257070995370000000
            Time = 41762.257070995370000000
            TabOrder = 1
          end
          object OrdEndDTPick: TDateTimePicker
            Left = 288
            Top = 2
            Width = 97
            Height = 21
            Date = 41762.257531817130000000
            Time = 41762.257531817130000000
            TabOrder = 2
          end
        end
      end
    end
    object ManagersTabSheet: TTabSheet
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
      ImageIndex = 3
      OnShow = ManagersTabSheetShow
      object GroupBox11: TGroupBox
        Left = 0
        Top = 0
        Width = 976
        Height = 499
        Align = alClient
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
        TabOrder = 0
        object Panel16: TPanel
          Left = 2
          Top = 456
          Width = 972
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn18: TBitBtn
            Left = 8
            Top = 8
            Width = 75
            Height = 25
            Action = ConnectionDM.MansDSI
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
          object BitBtn19: TBitBtn
            Left = 96
            Top = 8
            Width = 75
            Height = 25
            Action = ConnectionDM.MansDSD
            Caption = #1059#1076#1072#1083#1080#1090#1100
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
          end
        end
        object DBGrid10: TDBGrid
          Left = 2
          Top = 15
          Width = 972
          Height = 441
          Align = alClient
          DataSource = ConnectionDM.MansDS
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = cl3DLight
              Expanded = False
              FieldName = 'MANAGER_ID'
              ReadOnly = True
              Title.Caption = 'ID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_FAMILY'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_NAME'
              Title.Caption = #1048#1084#1103
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_SURNAME'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WPLACE_NAME'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COME_DATE'
              Title.Caption = #1050#1086#1075#1076#1072' '#1087#1088#1080#1085#1103#1090
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAN_BOAT_LOOK'
              Title.Caption = #1058#1088'. '#1089#1088#1077#1076#1089#1090#1074#1086
              Width = 145
              Visible = True
            end>
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 65520
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N3: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N4: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1072#1084' '#1079#1072' '#1087#1077#1088#1080#1086#1076'...'
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091'...'
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080' '#1089#1091#1076#1085#1072'...'
        Visible = False
      end
      object N7: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091'...'
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
    end
  end
  object BoatOpenPictureDialog: TOpenPictureDialog
    Left = 688
    Top = 8
  end
end
