unit usaveplantilla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, StrUtils;

type
  Tfsaveplantilla = class(TForm)
    Label1: TLabel;
    docname: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    open: TOpenDialog;
    qry: TFDQuery;
    update: TFDQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
  filedoc : string;
  action: Boolean;
  id: Integer;
    { Public declarations }
  end;

var
  fsaveplantilla: Tfsaveplantilla;

implementation

{$R *.dfm}

uses udm;

procedure Tfsaveplantilla.Button1Click(Sender: TObject);
begin
 if open.Execute then begin
 filedoc := open.FileName;
 docname.Text :=  ExtractFileName(open.FileName);
 end;

end;

procedure Tfsaveplantilla.Button2Click(Sender: TObject);
var
 ms : TMemoryStream;
begin
 if (filedoc <> '') and (docname.Text <> '')  then
 begin
   if not action then
   begin
    ms := TMemoryStream.Create;
    ms.LoadFromFile(open.FileName);
    qry.Close;
    qry.Params[0].Value := ReplaceStr(ExtractFileName(open.FileName), ExtractFileExt(open.FileName), '');
    qry.Params[1].LoadFromStream(ms,ftBlob);
    qry.Execute();
    close();
   end else
   begin
    ms := TMemoryStream.Create;
    ms.LoadFromFile(open.FileName);
    update.Close;
    update.Params[1].Value := id;
    update.Params[0].LoadFromStream(ms,ftBlob);
    update.Execute();
    close();
   end;

 end;

end;

procedure Tfsaveplantilla.Button3Click(Sender: TObject);
begin
 close;
end;

end.
