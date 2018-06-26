unit udatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls, StrUtils;

type
tdvres = record
    dv : string;
  pass : boolean;
  end;
  Tfdatos = class(TForm)
    DBGrid1: TDBGrid;
    qryruts: TFDQuery;
    qryrutsRUT: TStringField;
    qryrutsNAMES: TStringField;
    qryrutsADDRESS: TStringField;
    dsruts: TDataSource;
    Label1: TLabel;
    buscar: TEdit;
    nombre: TLabeledEdit;
    direccion: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qryupdate: TFDQuery;
    qrykill: TFDQuery;
    qryrutall: TFDQuery;
    qryrutallRUT: TStringField;
    qryrutallNAMES: TStringField;
    qryrutallADDRESS: TStringField;
    ruts: TLabeledEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure buscarChange(Sender: TObject);
    procedure rutsKeyPress(Sender: TObject; var Key: Char);
    procedure rutsEnter(Sender: TObject);
    procedure rutsExit(Sender: TObject);
  private
    { Private declarations }
  public
  edit : Boolean;
  rutuser, aux, rutdigito : string;
  rut, digito, contador, multiplo, acumulador, ID :integer;
  function getrut(srt : string): integer;
  function dv(rutstr: string): tdvres;
    { Public declarations }
  end;

var
  fdatos: Tfdatos;

implementation

{$R *.dfm}

uses udm, ueliminar;

procedure Tfdatos.buscarChange(Sender: TObject);
begin
 if buscar.Text <> '' then
 begin
    qryruts.Close;
    qryruts.Params[0].Value :=   buscar.Text;
    qryruts.Open();
    fdatos.dsruts.DataSet := nil;
    fdatos.dsruts.DataSet := fdatos.qryruts;
 end else
 begin
    fdatos.dsruts.DataSet := nil;
    fdatos.dsruts.DataSet := fdatos.qryrutall;
 end;

end;

procedure Tfdatos.Button1Click(Sender: TObject);
begin
 if (dv(ruts.text).pass) and (ruts.Text <> '') and (nombre.Text <> '') and (direccion.Text <> '') then
 begin
   qryupdate.Close;
   qryupdate.Params[0].Value := ruts.Text;
   qryupdate.Params[1].Value := nombre.Text;
   qryupdate.Params[2].Value := direccion.Text;
    if dsruts.DataSet = qryruts then  qryupdate.Params[3].Value :=  qryrutsRUT.AsString else qryupdate.Params[3].Value :=  qryrutallRUT.AsString;
   qryupdate.ExecSQL;
    if dsruts.DataSet = qryruts then
    begin
     qryruts.Close;
     qryruts.Open();
    end else begin
     qryrutall.Close;
     qryrutall.Open();
    end;
   ruts.Text := '';
   nombre.Text := '';
   direccion.Text := '';
 end;
end;

procedure Tfdatos.Button2Click(Sender: TObject);
begin
 feliminar.texteliminar.Caption := 'Eliminara estos datos?';
 feliminar.ShowModal;
 if feliminar.action then
 begin
   qrykill.Close;
   if dsruts.DataSet = qryruts then  qrykill.Params[0].Value := qryrutsRUT.AsString else qrykill.Params[0].Value := qryrutallRUT.AsString;
   qrykill.Execute();
    if dsruts.DataSet = qryruts then
    begin
     qryruts.Close;
     qryruts.Open();
    end else begin
     qryrutall.Close;
     qryrutall.Open();
    end;

 end;
end;

procedure Tfdatos.Button3Click(Sender: TObject);
begin
close;
end;

procedure Tfdatos.DBGrid1DblClick(Sender: TObject);
begin
if dsruts.DataSet = qryruts then
begin
 ruts.Text := qryrutsRUT.AsString;
 nombre.Text := qryrutsNAMES.AsString;
 direccion.Text := qryrutsADDRESS.AsString;
end
 else
 begin
 ruts.Text := qryrutallRUT.AsString;
 nombre.Text := qryrutallNAMES.AsString;
 direccion.Text := qryrutallADDRESS.AsString;
 end;

end;

function Tfdatos.dv(rutstr: string): tdvres;
var
 Digito, Contador, Multiplo,  Acumulador, rut : integer;
 RutDigito :string;
 res : tdvres;
begin
  rutstr := ReplaceStr(rutstr, '.', '');
  rutstr := ReplaceStr(rutstr, '-', '');
   rut := strtoint(copy(rutstr, 1, Length(rutstr) - 1));
   Contador := 2;
   Acumulador := 0;
   while (rut <> 0) do
   begin
    Multiplo := (rut mod 10) * Contador;
    Acumulador := Acumulador + Multiplo;
    rut := rut div 10;
    Contador := Contador + 1;
    if (Contador = 8 ) then  Contador := 2;
   end;
   Digito := 11 - (Acumulador mod 11);
   RutDigito := trim(inttostr(Digito));
   if (Digito = 10 ) then RutDigito := 'K';
   if (Digito = 11) then RutDigito := '0';
   res.dv := RutDigito;
   res.pass := copy(rutstr,  Length(rutstr), 1) = RutDigito;
   result := res;
end;

function Tfdatos.getrut(srt: string): integer;
begin

end;

procedure Tfdatos.rutsEnter(Sender: TObject);
begin
  ruts.Text := ReplaceStr(ruts.Text, '.', '');
  ruts.Text := ReplaceStr(ruts.Text, '-', '');
  ruts.Font.Color := clBlack
end;

procedure Tfdatos.rutsExit(Sender: TObject);
var str : string;
begin
 if (Length(ruts.text) > 8) then
 begin
  if dv(ruts.text).pass then begin ruts.Font.Color := clGreen; ruts.Hint := '' end else
  begin
  ruts.Font.Color := clred;
  ruts.Hint := 'El digito verificador es ' + dv(ruts.Text).dv;
  end;
  str := ruts.Text;
  Insert('.', str, 3);
  Insert('.', str, 7);
  Insert('-', str, 11);
  ruts.Text :=  str;
 end else ruts.Font.Color := clred;
end;

procedure Tfdatos.rutsKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9', #8, 'K', 'k']) then abort;
 if (Length(ruts.Text) > 8) and (key <> #8) then abort
end;

end.
