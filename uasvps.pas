unit uasvps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfasvps = class(Tfbase)
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
    Label5: TLabel;
    tipovehiculo: TLabeledEdit;
    marca: TLabeledEdit;
    nmotor: TLabeledEdit;
    chasi: TLabeledEdit;
    year: TLabeledEdit;
    Modelo: TLabeledEdit;
    Color: TLabeledEdit;
    Patente: TLabeledEdit;
    Pais: TLabeledEdit;
    fechasalida: TDateTimePicker;
    dias: TLabeledEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    rutrepresentado: TEdit;
    namerepresentado: TEdit;
    personeria: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure yearKeyPress(Sender: TObject; var Key: Char);
    procedure diasKeyPress(Sender: TObject; var Key: Char);
    procedure rutrepresentadoKeyPress(Sender: TObject; var Key: Char);
    procedure rutrepresentadoExit(Sender: TObject);
    procedure rutrepresentadoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fasvps: Tfasvps;

implementation

{$R *.dfm}

procedure Tfasvps.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE AUTORIZANTE>', nameautorizante.Text);
  findandremplace('<RUT AUTORIZANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);
  findandremplace('<NOMBRE AUTORIZADO>', nameautorizado.Text);
  findandremplace('<RUT AUTORIZADO>', rutautorizado.Text);

  findandremplace('<NOMBRE REPRESENTADO>', namerepresentado.Text);
  findandremplace('<PERSONERIA REPRESENTADO>', personeria.Text);
  findandremplace('<RUT REPRESENTADO>', rutrepresentado.Text);

  // datos del vehiculo
  findandremplace('<TIPO VEHICULO>', tipovehiculo.Text);
  findandremplace('<MARCA VEHICULO>', marca.Text);
  findandremplace('<MODELO VEHICULO>', modelo.Text);
  findandremplace('<NRO MOTOR VEHICULO>', nmotor.Text);
  findandremplace('<NRO CHASIS VEHICULO>', chasi.Text);
  findandremplace('<AÑO VEHICULO>', year.Text);
  findandremplace('<NRO PATENTE VEHICULO>', patente.Text);
  findandremplace('<PAIS AUTORIZADO>', pais.Text);
  findandremplace('<COLOR VEHICULO>', color.Text);
  findandremplace('<NRO DIAS>', dias.Text);
  findandremplace('<FECHA SALIDA>', datetostr(fechasalida.Date));

  footerdoc;
end;

procedure  Tfasvps.diasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

procedure Tfasvps.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure  Tfasvps.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure  Tfasvps.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure  Tfasvps.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure  Tfasvps.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure  Tfasvps.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

procedure Tfasvps.rutrepresentadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutrepresentado);
end;

procedure Tfasvps.rutrepresentadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutrepresentado, namerepresentado, nil);
end;

procedure Tfasvps.rutrepresentadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    rutkeyp_g(rutrepresentado, key);
end;

procedure Tfasvps.yearKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

end.
