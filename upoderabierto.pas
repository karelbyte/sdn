unit upoderabierto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfpoderabierto = class(Tfbase)
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
    nombred: TEdit;
    cedula: TEdit;
    glosa: TMemo;
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
  fpoderabierto: Tfpoderabierto;

implementation

{$R *.dfm}

procedure Tfpoderabierto.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE>', namecomodante.Text);
  findandremplace('<CEDULA DE IDENTIDAD>', rutcomodante.Text);
  findandremplace('<DOMICILIO>', addresscomodante.Text);
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE APODERADO>', nombred.Text);
  findandremplace('<CEDULAIDENTIDAD>', cedula.Text);
  findandremplace('<GLOSA>', glosa.Text);

  footerdoc;
end;

procedure Tfpoderabierto.cedulaEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(cedula);
end;

procedure Tfpoderabierto.cedulaExit(Sender: TObject);
begin
  inherited;
  rutexit_g(cedula, nil, nil);
end;

procedure Tfpoderabierto.cedulaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(cedula, key);
end;

procedure Tfpoderabierto.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfpoderabierto.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfpoderabierto.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;


end.
