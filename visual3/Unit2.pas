unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm2 = class(TForm)
    l1: TLabel;
    l3: TLabel;
    l6: TLabel;
    l4: TLabel;
    l7: TLabel;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    e_1: TEdit;
    e_2: TEdit;
    e_3: TEdit;
    e_4: TEdit;
    e_5: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    zqry1: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    zqry2: TZQuery;
    Label1: TLabel;
    e_8: TEdit;
    Label2: TLabel;
    e_7: TEdit;
    Label3: TLabel;
    e_6: TEdit;
    dbgrd1: TDBGrid;
    frxReport1: TfrxReport;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure bersih;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ID: string;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.b1Click(Sender: TObject);
begin
bersih;
b1.Enabled:= True;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;
e_7.Enabled:= True;
e_8.Enabled:= True;
end;

procedure TForm2.b2Click(Sender: TObject);
begin
 if e_1.Text='' then
  begin
    ShowMessage('ID PRODUK BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('Nama Produk BELUM DIISI DENGAN BENAR');
    end else
    if e_3.text=''then
    begin
     ShowMessage('Deskripsi BELUM DIISI DENGAN BENAR');
    end else
    if e_4.text=''then
    begin
    ShowMessage('Harga BELUM SESUAI');
    end else
    if e_5.text=''then
    begin
     ShowMessage('Stok BELUM SESUAI');
     end else
    if e_6.text=''then
    begin
     ShowMessage('Merek BELUM SESUAI');
     end else
    if e_7.text=''then
    begin
     ShowMessage('Tanggal Rilis BELUM SESUAI');
     end else
    if e_8.text=''then
    begin
     ShowMessage('Kategori BELUM SESUAI');
     end else
  if Form3.zqry1.Locate('ID_Produk',e_1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into produk values("'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'","'+e_5.Text+'","'+e_6.Text+'","'+e_7.Text+'","'+e_8.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from produk');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
end;
end;

procedure TForm2.b3Click(Sender: TObject);
begin
if(e_1.Text ='')or(e_2.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_2.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update produk set Nama_Produk= "'+e_2.Text+'",Deskripsi="'+e_3.Text+'",Harga="'+e_4.Text+'",Stok="'+e_5.Text+'",Merek="'+e_6.Text+'",Tanggal_Rilis="'+e_7.Text+'",Kategori="'+e_8.Text+'" where ID_Produk="'+ID+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from produk');
zqry1.Open;

end;
end;

procedure TForm2.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from produk where ID_Produk="'+ID+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from produk');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');

end;
end;

procedure TForm2.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.posisiawal;
begin
bersih;
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b5.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
e_5.Enabled:= false;
e_6.Enabled:= false;
e_7.Enabled:= false;
e_8.Enabled:= false;
end;
procedure TForm2.FormShow(Sender: TObject);
begin
bersih;
b1.Enabled:=true;
b2.Enabled:=false;
b3.Enabled:=false;
b4.Enabled:=false;
b5.Enabled:=false;
b6.Enabled:=false;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
e_5.Enabled:= false;
e_6.Enabled:= false;
e_7.Enabled:= false;
e_8.Enabled:= false;
end;
procedure TForm2.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
e_5.Clear;
e_6.Clear;
e_7.Clear;
e_8.Clear;
end;
procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
ID:= zqry1.Fields[0].AsString;
e_2.Text:= zqry1.Fields[1].AsString;
e_3.Text:= zqry1.Fields[2].AsString;
e_4.Text:= zqry1.Fields[3].AsString;
e_5.Text:= zqry1.Fields[4].AsString;
e_6.Text:= zqry1.Fields[5].AsString;
e_7.Text:= zqry1.Fields[6].AsString;
e_8.Text:= zqry1.Fields[7].AsString;
e_1.Enabled:= False;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
e_5.Enabled:= True;
e_6.Enabled:= True;
e_7.Enabled:= True;
e_8.Enabled:= True;

b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;

end;

end.
