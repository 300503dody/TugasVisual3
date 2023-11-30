object Form3: TForm3
  Left = 275
  Top = 229
  Width = 928
  Height = 449
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l2: TLabel
    Left = 52
    Top = 120
    Width = 3
    Height = 13
  end
  object l1: TLabel
    Left = 4
    Top = 8
    Width = 64
    Height = 15
    Caption = 'ID_DETAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 212
    Top = 12
    Width = 81
    Height = 16
    Caption = 'ID_PESANAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l6: TLabel
    Left = 512
    Top = 8
    Width = 73
    Height = 16
    Caption = 'ID_PRODUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l4: TLabel
    Left = 0
    Top = 44
    Width = 51
    Height = 16
    Caption = 'JUMLAH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l7: TLabel
    Left = 188
    Top = 48
    Width = 105
    Height = 16
    Caption = 'HARGA_SATUAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 12
    Top = 260
    Width = 761
    Height = 157
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_Detail_Pesanan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_Pesanan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_Produk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jumlah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Harga_Satuan'
        Visible = True
      end>
  end
  object b1: TButton
    Left = 116
    Top = 228
    Width = 75
    Height = 29
    Caption = 'Baru'
    TabOrder = 1
    OnClick = b1Click
  end
  object b2: TButton
    Left = 224
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TButton
    Left = 332
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Edit'
    TabOrder = 3
    OnClick = b3Click
  end
  object b4: TButton
    Left = 432
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = b4Click
  end
  object b5: TButton
    Left = 540
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Batal'
    TabOrder = 5
    OnClick = b5Click
  end
  object b6: TButton
    Left = 644
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Print'
    TabOrder = 6
  end
  object e_1: TEdit
    Left = 72
    Top = 8
    Width = 101
    Height = 21
    TabOrder = 7
  end
  object e_2: TEdit
    Left = 296
    Top = 8
    Width = 149
    Height = 21
    TabOrder = 8
  end
  object e_3: TEdit
    Left = 600
    Top = 8
    Width = 205
    Height = 21
    TabOrder = 9
  end
  object e_4: TEdit
    Left = 72
    Top = 44
    Width = 113
    Height = 21
    TabOrder = 10
  end
  object e_5: TEdit
    Left = 296
    Top = 44
    Width = 153
    Height = 21
    TabOrder = 11
  end
  object con1: TZConnection
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
    Left = 8
    Top = 220
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 40
    Top = 220
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from detail_pesanan'
      '')
    Params = <>
    Left = 76
    Top = 224
  end
end
