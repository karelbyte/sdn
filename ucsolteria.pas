unit ucsolteria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfcsolteria = class(Tfbase)
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
    Label5: TLabel;
    Label6: TLabel;
    rutsoltero: TEdit;
    namesoltero: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure rutsolteroKeyPress(Sender: TObject; var Key: Char);
    procedure rutsolteroExit(Sender: TObject);
    procedure rutsolteroEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcsolteria: Tfcsolteria;

implementation

{$R *.dfm}

procedure Tfcsolteria.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE TESTIGO 1>', nameautorizante.Text);
  findandremplace('<RUT TESTIGO 1>', rutautorizante.Text);
  findandremplace('<DIRECCION TESTIGO 1>', addressautorizante.Text);

  findandremplace('<NOMBRE TESTIGO 2>', nameautorizado.Text);
  findandremplace('<RUT TESTIGO 2>', rutautorizado.Text);
  findandremplace('<DIRECCION TESTIGO 2>', addressautorizado.Text);

  findandremplace('<NOMBRE SOLTERO>', namesoltero.Text);
  findandremplace('<RUT SOLTERO>', rutsoltero.Text);

  footerdoc;
end;


procedure Tfcsolteria.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure Tfcsolteria.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfcsolteria.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfcsolteria.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfcsolteria.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfcsolteria.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;


procedure Tfcsolteria.rutsolteroEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutsoltero);
end;

procedure Tfcsolteria.rutsolteroExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutsoltero, namesoltero, nil);
end;

procedure Tfcsolteria.rutsolteroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutsoltero, key);
end;

end.
