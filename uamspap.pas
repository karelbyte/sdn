unit uamspap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfamspap = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutpadre: TEdit;
    namepadre: TEdit;
    addresspadre: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutmadre: TEdit;
    namemadre: TEdit;
    addressmadre: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    direc: TLabel;
    pais: TEdit;
    hijos: TMemo;
    Label6: TLabel;
    periodo: TEdit;
    fechasalida: TDateTimePicker;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    rutacargo: TEdit;
    nameacargo: TEdit;
    procedure rutpadreExit(Sender: TObject);
    procedure rutpadreEnter(Sender: TObject);
    procedure rutpadreKeyPress(Sender: TObject; var Key: Char);
    procedure rutmadreKeyPress(Sender: TObject; var Key: Char);
    procedure rutmadreEnter(Sender: TObject);
    procedure rutmadreExit(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure rutacargoKeyPress(Sender: TObject; var Key: Char);
    procedure rutacargoExit(Sender: TObject);
    procedure rutacargoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  famspap: Tfamspap;

implementation

{$R *.dfm}

procedure Tfamspap.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE NOTARIO>', queryNotariaNOTARIA.AsString);
  findandremplace('<TITULO NOTARIO>', queryNotariaTITLE.AsString);
  findandremplace('<DIRECCION NOTARIO>', queryNotariaADDRESS.AsString);
  findandremplace('<FONO/FAX NOTARIO>', queryNotariaPHONE.AsString);
  findandremplace('<COMUNA NOTARIO>', queryNotariaCOMUNE.AsString);
  findandremplace('<CIUDAD PAIS NOTARIO>', queryNotariaCOMUNE.AsString + ' ' + queryNotariaCOUNTRY.AsString);
  //********** padre
  findandremplace('<NOMBRE PADRE>', namepadre.Text);
  findandremplace('<RUT PADRE>', rutpadre.Text);
  findandremplace('<DIRECCION PADRE>', addresspadre.Text);
  //--*-  madre
  findandremplace('<NOMBRE MADRE>', namemadre.Text);
  findandremplace('<RUT MADRE>', rutmadre.Text);
  findandremplace('<DIRECCION MADRE>', addressmadre.Text);
  // *********** hijo
  findandremplace('<HIJOS>', hijos.Text);
  findandremplace('<PAIS AUTORIZADO>, ', pais.Text);
  findandremplace('<PERIODO DE VIAJE>', periodo.Text);
  findandremplace('<FECHA SALIDA>', datetostr(fechasalida.Date));
  findandremplace('<NOMBRE PERSONA A CARGO>', nameacargo.Text);
  findandremplace('<RUT PERSONA A CARGO>', rutacargo.Text);
  findandremplace('<FECHA HOY>', datetostr(fecha.Date));
  footerdoc;
end;


procedure Tfamspap.rutacargoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutacargo);
end;

procedure Tfamspap.rutacargoExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutacargo, nameacargo, nil);
end;

procedure Tfamspap.rutacargoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutacargo, key);
end;

procedure Tfamspap.rutmadreEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutmadre);
end;

procedure Tfamspap.rutmadreExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutmadre, namemadre, addressmadre);
end;

procedure Tfamspap.rutmadreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    rutkeyp_g(rutmadre, key);
end;

procedure Tfamspap.rutpadreEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutpadre);
end;

procedure Tfamspap.rutpadreExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutpadre, namepadre, addresspadre);
end;

procedure Tfamspap.rutpadreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutpadre, key);
end;

end.
