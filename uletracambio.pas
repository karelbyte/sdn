unit uletracambio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, ComObj, OleServer, StrUtils;

type
  Tfletradecambio = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutautorizante: TEdit;
    nameautorizante: TEdit;
    addressautorizante: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    addressautorizado: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    no: TEdit;
    nden: TEdit;
    fvencimiento: TDateTimePicker;
    Label7: TLabel;
    valorpesos: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    ciudad: TEdit;
    Label10: TLabel;
    comuna: TEdit;
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure gboletaClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure celremplace(find: string; rep: string);
    { Public declarations }
  end;

var
  fletradecambio: Tfletradecambio;

implementation

{$R *.dfm}

uses uprincipal, ugboletas;

procedure Tfletradecambio.bimprimirClick(Sender: TObject);
var camino : string;
begin
  queryNotaria.Close;
  queryNotaria.Open();
  Word := CreateOleObject('Excel.Application');
  FileName := pathdoc;
  Word.Application.Workbooks.Open(FileName);
  prtok := true;
  fol:= Random(1000) + 1;
  Word.Visible := true;
  celremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  celremplace('<NOMBRE ACREEDOR>', nameautorizante.Text);
  celremplace('<RUN ACREEDOR>', rutautorizante.Text);
  celremplace('<DOMICILIO AFECTADO>', addressautorizante.Text);

  celremplace('<NOMBRE DEUDOR>', nameautorizado.Text);
  celremplace('<RUN DEUDOR>', rutautorizado.Text);
  celremplace('<DOMICILIO DEUDOR>', addressautorizado.Text);

  celremplace('<NUMEROD>', nden.Text);
  celremplace('<NUMERO>', no.Text);
  celremplace('<FECHA DE VENCIMIENTO>', datetostr(fvencimiento.date));
  celremplace('<VALOR>', valorpesos.Text);

  celremplace('<CIUDAD>', ciudad.Text);
  celremplace('<COMUNA>', comuna.Text);

  camino := fprincipal.credenciales.docdirectory + '\' + doc + ' ' + inttostr(fol) + '.xls';
  Word.Application.Workbooks[1].SaveAs(camino, 51);

  sevecliente;
end;

procedure Tfletradecambio.celremplace(find: string; rep: string);
begin
 Word.Application.Workbooks[1].ActiveSheet.cells.Replace(find, rep, 2, 1, false, false, false);
end;

procedure Tfletradecambio.gboletaClick(Sender: TObject);
begin
  fgboleta.td := doc;
  if not DirectoryExists(fprincipal.credenciales.docdirectory) then CreateDir(fprincipal.credenciales.docdirectory);
  fgboleta.doc := fprincipal.credenciales.docdirectory + '\' + doc + ' ' +  inttostr(fol) + '.xls';
  fgboleta.emit := fecha.Date;
  fgboleta.label1.Caption := 'Se ha generado bien la boleta?';
  fgboleta.ShowModal;
end;

procedure Tfletradecambio.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfletradecambio.rutautorizadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfletradecambio.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;


procedure Tfletradecambio.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfletradecambio.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfletradecambio.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

end.
