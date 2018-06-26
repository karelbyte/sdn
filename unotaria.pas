unit unotaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,  FileCtrl,
  Vcl.ExtDlgs, JPeg, Data.DB, JvBaseDlg, JvBrowseFolder;

type
  Tfnotaria = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    notary: TEdit;
    Label2: TLabel;
    title: TEdit;
    Label3: TLabel;
    address: TEdit;
    Label4: TLabel;
    phone: TEdit;
    comune: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    country: TEdit;
    Label7: TLabel;
    docdirectory: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    logo: TImage;
    Shape1: TShape;
    openlogo: TOpenPictureDialog;
    opendir: TJvBrowseForFolderDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure logoClick(Sender: TObject);
    procedure phoneKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fnotaria: Tfnotaria;

implementation

{$R *.dfm}

uses udm, uprincipal;

procedure Tfnotaria.Button1Click(Sender: TObject);
begin
 if opendir.Execute then docdirectory.Text := opendir.Directory;
end;

procedure Tfnotaria.Button2Click(Sender: TObject);
var
 linesconfig : TStrings;
 bmp : TBitmap;
begin
  linesconfig := TStringList.Create();
  dm.fdspnotary.close;
  if (dm.fdqueryNotary.RecordCount > 0) then  dm.fdspnotary.Params[0].Value := 0  else   dm.fdspnotary.Params[0].Value := 1;
    dm.fdspnotary.Params[1].Value := notary.Text;
    dm.fdspnotary.Params[2].Value := title.Text;
    dm.fdspnotary.Params[3].Value := address.Text;
    dm.fdspnotary.Params[4].Value := phone.Text;
    dm.fdspnotary.Params[5].Value := comune.Text;
    dm.fdspnotary.Params[6].Value := country.Text;
    if logo.picture.graphic <> nil then
    begin
      bmp := TBitmap.Create;
      bmp.Width:= logo.Picture.Graphic.Width;
      bmp.Height:= logo.Picture.Graphic.Height;
      bmp.Canvas.Draw(0,0, logo.Picture.Graphic);
      dm.fdspnotary.ParamByName('LOGO').Assign(bmp);
    end else dm.fdspnotary.ParamByName('LOGO').Clear();
    dm.fdspnotary.Execute();
    dm.fdqueryNotary.Close;
    dm.fdqueryNotary.Open();
  // guardando directorio de ficheros
  if (docdirectory.Text <> '') and (DirectoryExists(docdirectory.Text)) then
   begin
    linesconfig.LoadFromFile(ExtractFilePath(Application.ExeName) + 'config.ini');
    linesconfig.strings[7] := docdirectory.Text;
    fprincipal.credenciales.docdirectory := docdirectory.Text;
    linesconfig.SaveToFile(ExtractFilePath(Application.ExeName) + 'config.ini');
   end;
  Application.MessageBox('Datos guardados correctamente!', 'Exelente')
end;

procedure Tfnotaria.Button3Click(Sender: TObject);
begin
 close;
end;

procedure Tfnotaria.logoClick(Sender: TObject);
begin
 if openlogo.Execute() then
  begin
    logo.Picture.LoadFromFile(openlogo.FileName);
  end
end;

procedure Tfnotaria.phoneKeyPress(Sender: TObject; var Key: Char);
begin
 if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

end.
