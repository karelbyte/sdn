unit uupdateboleta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, StrUtils;

type
  Tfupboleta = class(TForm)
    Label2: TLabel;
    folio: TEdit;
    cap: TLabel;
    costo: TJvValidateEdit;
    Bevel1: TBevel;
    Button1: TButton;
    Button2: TButton;
    qgticket: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  id: integer;
    { Public declarations }
  end;

var
  fupboleta: Tfupboleta;

implementation

{$R *.dfm}

procedure Tfupboleta.Button1Click(Sender: TObject);
var
 p : string;
 price: string;
begin
 if (folio.Text <> '') and (costo.Text <> '') then
  begin
    qgticket.close;
    price := ReplaceStr(costo.Text, '$', '');
    price := ReplaceStr(price, '.', '');
    qgticket.Params[0].Value := strtoint(folio.Text);
    qgticket.Params[1].Value := strtoint(price);
    qgticket.Params[2].Value := id;
    qgticket.ExecSQL;
    close;
  end;
end;

procedure Tfupboleta.Button2Click(Sender: TObject);
begin
 close;
end;

end.
