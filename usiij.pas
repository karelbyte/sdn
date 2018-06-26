unit usiij;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfsiij = class(Tfbase)
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
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    nameafavor: TEdit;
    rutafavor: TEdit;
    addressautorizado: TEdit;
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure rutafavorEnter(Sender: TObject);
    procedure rutafavorExit(Sender: TObject);
    procedure rutafavorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsiij: Tfsiij;

implementation

{$R *.dfm}

procedure Tfsiij.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE EMPRESA>', nameautorizante.Text);
  findandremplace('<RUT EMPRESA>', rutautorizante.Text);
 // findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);

  findandremplace('<NOMBRE>', nameautorizado.Text);
  findandremplace('<CEDULA DE IDENTIDAD>', rutautorizado.Text);
  findandremplace('<DOMICILIO>', addressautorizado.Text);


  findandremplace('<NOMBRE A FAVOR>', nameafavor.Text);
  findandremplace('<CEDULA DE IDENTIDAD A FAVOR>', rutafavor.Text);

  footerdoc;
end;

procedure Tfsiij.rutafavorEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutafavor);
end;

procedure Tfsiij.rutafavorExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutafavor, nameafavor, nil);
end;

procedure Tfsiij.rutafavorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutafavor, key);
end;

procedure Tfsiij.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfsiij.rutautorizadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfsiij.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfsiij.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfsiij.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfsiij.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;


end.
