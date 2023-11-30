object Form1: TForm1
  Left = 357
  Top = 335
  Width = 928
  Height = 480
  Caption = 'Form1'
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
    Left = 212
    Top = 68
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Label2: TLabel
    Left = 212
    Top = 152
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object e_1: TEdit
    Left = 184
    Top = 92
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_2: TEdit
    Left = 180
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 192
    Top = 228
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_vapestore'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\visual3\libmysql.dll'
    Left = 104
    Top = 100
  end
  object zqry1: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select*from tb_user')
    Params = <>
    Left = 104
    Top = 172
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 108
    Top = 236
  end
end
