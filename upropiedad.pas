unit upropiedad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfpropiedad = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutcomodante: TEdit;
    namecomodante: TEdit;
    addresscomodante: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    erf: TLabel;
    Label4: TLabel;
    nombred: TEdit;
    cedula: TEdit;
    domicilio: TEdit;
    rol: TEdit;
    Label3: TLabel;
    tpropiedad: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure cedulaKeyPress(Sender: TObject; var Key: Char);
    procedure cedulaEnter(Sender: TObject);
    procedure cedulaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpropiedad: Tfpropiedad;

implementation

{$R *.dfm}

procedure Tfpropiedad.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE>', namecomodante.Text);
  findandremplace('<CEDULA DE IDENTIDAD>', rutcomodante.Text);
  findandremplace('<DOMICILIO>', addresscomodante.Text);
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE MANDATARIO>', nombred.Text);
  findandremplace('<CEDULA DE IDENTIDAD MANDATARIO>', cedula.Text);
  findandremplace('<DOMICILIO DE PROPIEDAD PARA ARRENDAR', domicilio.Text);
  findandremplace('<ROL DE AVALUO>', rol.Text);
  findandremplace('<TIPO DE PROPIEDAD>', tpropiedad.Text);

  footerdoc;
end;

procedure Tfpropiedad.cedulaEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(cedula);
end;

procedure Tfpropiedad.cedulaExit(Sender: TObject);
begin
  inherited;
  rutexit_g(cedula, nil, nil);
end;

procedure Tfpropiedad.cedulaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(cedula, key);
end;

procedure Tfpropiedad.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfpropiedad.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfpropiedad.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

end.
