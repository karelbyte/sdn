unit uctrabajo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfctrabajo = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutautorizante: TEdit;
    nameautorizante: TEdit;
    addressautorizante: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    nameautorizado: TEdit;
    periodo: TEdit;
    Label3: TLabel;
    pais: TEdit;
    p: TLabel;
    Label5: TLabel;
    fechaautorizo: TDateTimePicker;
    Label6: TLabel;
    valor: TEdit;
    Label7: TLabel;
    pasaporte: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure valorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fctrabajo: Tfctrabajo;

implementation

{$R *.dfm}

procedure Tfctrabajo.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE CERTIFICANTE>', nameautorizante.Text);
  findandremplace('<RUT CERTIFICANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION CERTIFICANTE>', addressautorizante.Text);

  findandremplace('<NOMBRE TRABAJADOR>', nameautorizado.Text);
  findandremplace('<PAIS>', pais.Text);
  findandremplace('<NRO PASAPORTE >', pasaporte.Text);
  findandremplace('<FECHA>', datetostr(fechaautorizo.Date));
  findandremplace('<PERIODO>', periodo.Text);
  findandremplace('<VALOR>', valor.Text);

  footerdoc;
end;

procedure Tfctrabajo.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfctrabajo.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfctrabajo.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;


procedure Tfctrabajo.valorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (CharInSet(key, ['0'..'9', #8])) then abort;
end;

end.
