unit udoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus;

type
  Tfdoc = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    querydoc: TFDQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    add: TMenuItem;
    update: TMenuItem;
    extrac: TMenuItem;
    N1: TMenuItem;
    Eliminar3: TMenuItem;
    querydocID: TSmallintField;
    querydocNAME: TStringField;
    querydocDOC: TBlobField;
    procedure Button1Click(Sender: TObject);
    procedure addClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure extracClick(Sender: TObject);
    procedure updateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdoc: Tfdoc;

implementation

{$R *.dfm}

uses udm, usaveplantilla;


procedure Tfdoc.addClick(Sender: TObject);
begin
 fsaveplantilla.action := false;
 fsaveplantilla.ShowModal;
 querydoc.Close;
 querydoc.Open();
end;

procedure Tfdoc.Button1Click(Sender: TObject);
begin
 close;
end;

procedure Tfdoc.extracClick(Sender: TObject);
begin
  try
   if not DirectoryExists('c:\plantillas') then createdir('c:\plantillas');
   if (querydocID.Value <> 79) then  querydocDOC.SaveToFile('c:\plantillas' + querydocNAME.AsString + '.doc')
   else  querydocDOC.SaveToFile('c:\plantillas' + querydocNAME.AsString + '.xlsx');
   Application.MessageBox('Plantilla extraida!', 'Exito', 0 )
   except on E: Exception do
    Application.MessageBox('A ocurrido un error al extraer!', 'Error', 0 )
  end;

end;

procedure Tfdoc.FormActivate(Sender: TObject);
begin
  querydoc.Close;
  querydoc.Open();
end;

procedure Tfdoc.updateClick(Sender: TObject);
begin
 fsaveplantilla.id := querydocID.AsInteger;
 fsaveplantilla.action := true;
 fsaveplantilla.ShowModal;
 querydoc.Close;
 querydoc.Open();
end;

end.
