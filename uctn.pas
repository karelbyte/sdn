unit uctn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls,  StrUtils;

type
  Tfctn = class(Tfbase)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    addressarrendador: TEdit;
    rutarrendador: TEdit;
    namearrendador: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    nombre: TLabeledEdit;
    nacionalidad: TLabeledEdit;
    domicilio: TLabeledEdit;
    fnacimiento: TDateTimePicker;
    passaporte: TLabeledEdit;
    estadocivil: TLabeledEdit;
    trabajodes: TLabeledEdit;
    domiciliot: TLabeledEdit;
    sueldo: TLabeledEdit;
    diapago: TLabeledEdit;
    periodo: TLabeledEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutarrendadorEnter(Sender: TObject);
    procedure rutarrendadorExit(Sender: TObject);
    procedure rutarrendadorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fctn: Tfctn;

implementation

{$R *.dfm}

procedure Tfctn.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE EMPLEADOR>', namearrendador.Text);
  findandremplace('<RUN EMPLEADOR>', rutarrendador.Text);
  findandremplace('<DOMICILIO EMPLEADOR>', addressarrendador.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<FNACIMIENTO>', datetostr(fnacimiento.date));
  // datos del vehiculo
  findandremplace('<NOMBRE DEL TRABAJADOR>', nombre.Text);
  findandremplace('<NACIONALIDAD>', nacionalidad.Text);
  findandremplace('<NUMERO PASAPORTE>', passaporte.Text);

  findandremplace('<ESTADO CIVIL>', estadocivil.Text);
  findandremplace('<DOMICILIO TRABAJADOR>', domicilio.Text);
  findandremplace('<TRABAJO A DESEMPEÑAR>', trabajodes.Text);


  findandremplace('<DOMICILIO>', domiciliot.Text);
  findandremplace('<SUELDO>', sueldo.Text);

  //findandremplace('$ <VALOR>.- (VALOR EN PESOS) ', valor.Text + ' (' + ToLetras( valor.Value) + ') ');

  findandremplace('<DIA DE PAGO>', diapago.Text);
  findandremplace('<PERIODO DE TRABAJO>', periodo.Text);


  footerdoc;
end;

procedure Tfctn.rutarrendadorExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutarrendador, namearrendador, addressarrendador);
end;

procedure Tfctn.rutarrendadorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutarrendador, key);
end;

procedure Tfctn.rutarrendadorEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutarrendador);
end;

end.
