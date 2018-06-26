unit urecidencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfrecidencia = class(Tfbase)
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
    rutrequitiente: TEdit;
    namerequiriente: TEdit;
    addressrequiriente: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure rutrequitienteKeyPress(Sender: TObject; var Key: Char);
    procedure rutrequitienteExit(Sender: TObject);
    procedure rutrequitienteEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frecidencia: Tfrecidencia;

implementation

{$R *.dfm}

procedure Tfrecidencia.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE TESTIGO 1>', nameautorizante.Text);
  findandremplace('<RUT TESTIGO 1>', rutautorizante.Text);
  findandremplace('<DIRECCION TESTIGO 1>', addressautorizante.Text);

  findandremplace('<NOMBRE TESTIGO 2>', nameautorizado.Text);
  findandremplace('<RUT TESTIGO 2>', rutautorizado.Text);
  findandremplace('<DIRECCION TESTIGO 2>', addressautorizado.Text);

  findandremplace('<NOMBRE REQUIRENTE>', namerequiriente.Text);
  findandremplace('<RUT REQUIRENTE>', rutrequitiente.Text);
  findandremplace('<DOMICILIO REQUIRENTE>', addressrequiriente.Text);

  footerdoc;
end;


procedure Tfrecidencia.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure Tfrecidencia.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfrecidencia.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfrecidencia.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfrecidencia.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfrecidencia.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

procedure Tfrecidencia.rutrequitienteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutrequitiente);
end;

procedure Tfrecidencia.rutrequitienteExit(Sender: TObject);
begin
  inherited;
      rutexit_g(rutrequitiente, namerequiriente, addressrequiriente);
end;

procedure Tfrecidencia.rutrequitienteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutrequitiente, key);
end;

end.
