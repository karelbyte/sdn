unit uctj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls,  StrUtils;

type
  Tfctj = class(Tfbase)
    grepre: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    addressarrendador: TEdit;
    rutarrendador: TEdit;
    namearrendador: TEdit;
    GroupBox1: TGroupBox;
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
    Label2: TLabel;
    procedure bimprimirClick(Sender: TObject);
    procedure rutarrendadorEnter(Sender: TObject);
    procedure rutarrendadorExit(Sender: TObject);
    procedure rutarrendadorKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fctj: Tfctj;

implementation

{$R *.dfm}

procedure Tfctj.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE EMPRESA>', namearrendador.Text);
  findandremplace('<RUT EMPRESA>', rutarrendador.Text);
  findandremplace('<DOMICILIO EMPRESA>', addressarrendador.Text);

  findandremplace('<NOMBRE REPRESENTANTE>', nameautorizado.Text);
  findandremplace('<RUN REPRESENTANTE>', rutautorizado.Text);


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


procedure Tfctj.rutarrendadorExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutarrendador, namearrendador, addressarrendador);
end;

procedure Tfctj.rutarrendadorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutarrendador, key);
end;

procedure Tfctj.rutarrendadorEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutarrendador);
end;


procedure Tfctj.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure Tfctj.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure Tfctj.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

end.
