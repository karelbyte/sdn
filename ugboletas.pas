unit ugboletas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExStdCtrls, JvEdit, JvValidateEdit, StrUtils;

type
  Tfgboleta = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    folio: TEdit;
    cap: TLabel;
    Bevel1: TBevel;
    qgticket: TFDQuery;
    costo: TJvValidateEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure folioKeyPress(Sender: TObject; var Key: Char);
    procedure costoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    doc: string;
    td : string;
    emit: tdate;
  end;

var
  fgboleta: Tfgboleta;

implementation

{$R *.dfm}

uses udm, uprincipal;

procedure Tfgboleta.Button1Click(Sender: TObject);
var
 p : string;
 price: string;
begin
 if (folio.Text <> '') and (costo.Text <> '') then
  begin
    if  fprincipal.querydocNAME.AsString <> 'Letra de cambio' then p := fprincipal.credenciales.docdirectory + '\' + fprincipal.querydocNAME.AsString +' (' + folio.Text+ ').doc' else
    p := fprincipal.credenciales.docdirectory + '\' + fprincipal.querydocNAME.AsString +' (' + folio.Text+ ').xls';
    RenameFile(doc, p);
    qgticket.close;
    price := ReplaceStr(costo.Text, '$', '');
    price := ReplaceStr(price, '.', '');
    qgticket.Params.ParamByName('user_id').Value := fprincipal.credenciales.id;
    qgticket.Params.ParamByName('ticket').Value := strtoint(folio.Text);
    qgticket.Params.ParamByName('price').Value := strtoint(price);
    qgticket.Params.ParamByName('typedoc').Value := td;
    qgticket.Params.ParamByName('emit').Value := emit;
    qgticket.ExecSQL;
    fgboleta.ModalResult := mrok;
    close;
  end;
end;

procedure Tfgboleta.Button2Click(Sender: TObject);
var
  ca : TCloseAction;
begin
 FormClose(sender, ca);
end;

procedure Tfgboleta.costoKeyPress(Sender: TObject; var Key: Char);
begin
 if not (CharInSet(key, ['0'..'9', #8])) then abort;
end;

procedure Tfgboleta.folioKeyPress(Sender: TObject; var Key: Char);
begin
  if not (CharInSet(key, ['0'..'9', #8])) then abort;
end;

procedure Tfgboleta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if FileExists(doc) then DeleteFile(doc);
 close;
end;

end.
