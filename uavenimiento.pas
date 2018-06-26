unit uavenimiento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfavenimiento = class(Tfbase)
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
    patenteafectado: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    patentedeudor: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    comunajuz: TEdit;
    causa: TEdit;
    Label9: TLabel;
    fpago: TEdit;
    Label10: TLabel;
    valor: TEdit;
    Label11: TLabel;
    letras: TEdit;
    fdatos: TDateTimePicker;
    Label12: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label13: TLabel;
    comunacoli: TEdit;
    Label14: TLabel;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  favenimiento: Tfavenimiento;

implementation

{$R *.dfm}

procedure Tfavenimiento.bimprimirClick(Sender: TObject);
begin
  inherited;
   findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE AFECTADO>', nameautorizante.Text);
  findandremplace('<RUT AFECTADO>', rutautorizante.Text);
  findandremplace('<DOMICILIO AFECTADO>', addressautorizante.Text);
  findandremplace('<PATENTE AFECTADO>', patenteafectado.Text);

  findandremplace('<NOMBRE DEUDOR>', nameautorizado.Text);
  findandremplace('<RUN  DEUDOR>', rutautorizado.Text);
  findandremplace('<DOMICILIO DEUDOR>', addressautorizado.Text);
  findandremplace('<PATENTE>', patentedeudor.Text);

  findandremplace('<FECHA COLISION>', datetostr(fdatos.date));
  findandremplace('<HORA DE COLISION>', timetostr(fdatos.time));
  findandremplace('<COMUNA COLISION>', comunacoli.Text);
  findandremplace('<VALOR>', valor.Text);
  findandremplace('<VALOR EN LETRAS>', letras.Text);
  findandremplace('<FORMA DE PAGO>', fpago.Text);

  findandremplace('<NUMERO DE CAUSA>', causa.Text);
  findandremplace('<COMUNA DEL JUZGADO>', comunajuz.Text);

  footerdoc;
end;


procedure Tfavenimiento.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfavenimiento.rutautorizadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfavenimiento.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;


procedure Tfavenimiento.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfavenimiento.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfavenimiento.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

end.
