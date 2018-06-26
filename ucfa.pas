unit ucfa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfcfa = class(Tfbase)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    domicilio: TLabeledEdit;
    marca: TLabeledEdit;
    nmotor: TLabeledEdit;
    year: TLabeledEdit;
    Modelo: TLabeledEdit;
    Color: TLabeledEdit;
    Patente: TLabeledEdit;
    tvehiculo: TLabeledEdit;
    horas: TDateTimePicker;
    cfotos: TLabeledEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure cfotosKeyPress(Sender: TObject; var Key: Char);
    procedure yearKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfa: Tfcfa;

implementation

{$R *.dfm}

procedure Tfcfa.bimprimirClick(Sender: TObject);
begin
  inherited;

  findandremplace('<NOMBRE REQUIRENTE>', nameautorizado.Text);
  findandremplace('<RUT REQUIRENTE>', rutautorizado.Text);

  // datos del vehiculo
  findandremplace('<TIPO DE VEHICULO>', tvehiculo.Text);
  findandremplace('<MARCA>', marca.Text);
  findandremplace('<MODELO>', modelo.Text);
  findandremplace('<NRO MOTOR VEHICULO>', nmotor.Text);
  findandremplace('<DOMICILIO>', domicilio.Text);
  findandremplace('<AÑO>', year.Text);
  findandremplace('<PATENTE>', patente.Text);
  findandremplace('<COLOR>', color.Text);
  findandremplace('<HORAS>', TimeToStr(horas.Time));
  findandremplace('<CANTIDAD DE FOTOS>', cfotos.Text);
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));
  footerdoc;
end;

procedure Tfcfa.cfotosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

procedure Tfcfa.yearKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;


procedure Tfcfa.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure  Tfcfa.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure  Tfcfa.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

end.
