unit uamsps2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfamsps2 = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutpadre: TEdit;
    namepadre: TEdit;
    addresspadre: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    direc: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pais: TEdit;
    hijos: TMemo;
    periodo: TEdit;
    fechasalida: TDateTimePicker;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    rutacargo: TEdit;
    nameacargo: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutpadreExit(Sender: TObject);
    procedure rutpadreEnter(Sender: TObject);
    procedure rutpadreKeyPress(Sender: TObject; var Key: Char);
    procedure rutacargoKeyPress(Sender: TObject; var Key: Char);
    procedure rutacargoExit(Sender: TObject);
    procedure rutacargoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  famsps2: Tfamsps2;

implementation

{$R *.dfm}

procedure Tfamsps2.bimprimirClick(Sender: TObject);
begin
  inherited;
  //********** padre
  findandremplace('<NOMBRE AUTORIZANTE>', namepadre.Text);
  findandremplace('<RUT AUTORIZANTE>', rutpadre.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addresspadre.Text);

  // *********** hijo
  findandremplace('<HIJOS>', hijos.Text);
  findandremplace('<PAIS AUTORIZADO>, ', pais.Text);
  findandremplace('<PERIODO DE VIAJE>', periodo.Text);
  findandremplace('<FECHA SALIDA>', datetostr(fechasalida.Date));
  findandremplace('<NOMBRE PERSONA A CARGO>', nameacargo.Text);
  findandremplace('<RUT PERSONA A CARGO>', rutacargo.Text);

  footerdoc;
end;


procedure Tfamsps2.rutacargoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutacargo);
end;

procedure Tfamsps2.rutacargoExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutacargo, nameacargo, nil);
end;

procedure Tfamsps2.rutacargoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutacargo, key);
end;


procedure Tfamsps2.rutpadreEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutpadre);
end;

procedure Tfamsps2.rutpadreExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutpadre, namepadre, addresspadre);
end;

procedure Tfamsps2.rutpadreKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutpadre, key);
end;


end.
