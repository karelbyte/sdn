unit uhpna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, StrUtils;

type
  Tfhpna = class(Tfbase)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    addressarrendador: TEdit;
    rutarrendador: TEdit;
    namearrendador: TEdit;
    GroupBox4: TGroupBox;
    addressarrendatario: TEdit;
    Label2: TLabel;
    rutarrendatario: TEdit;
    Label3: TLabel;
    namearrendatario: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    ruttestigo1: TEdit;
    nametestigo1: TEdit;
    addresstestigo1: TEdit;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label9: TLabel;
    domicilio: TEdit;
    valor: TJvValidateEdit;
    prorroga: TEdit;
    uso: TEdit;
    reajuste: TEdit;
    dias: TEdit;
    estado: TEdit;
    finicio: TDateTimePicker;
    fechatermino: TDateTimePicker;
    valorgarantia: TJvValidateEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutarrendadorEnter(Sender: TObject);
    procedure rutarrendadorExit(Sender: TObject);
    procedure rutarrendadorKeyPress(Sender: TObject; var Key: Char);
    procedure rutarrendatarioKeyPress(Sender: TObject; var Key: Char);
    procedure rutarrendatarioExit(Sender: TObject);
    procedure rutarrendatarioEnter(Sender: TObject);
    procedure ruttestigo1Enter(Sender: TObject);
    procedure ruttestigo1Exit(Sender: TObject);
    procedure ruttestigo1KeyPress(Sender: TObject; var Key: Char);
    procedure diasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhpna: Tfhpna;

implementation

{$R *.dfm}

procedure Tfhpna.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE ARRENDADOR>', namearrendador.Text);
  findandremplace('<RUN ARRENDADOR>', rutarrendador.Text);
  findandremplace('<ARRENDADOR>', addressarrendador.Text);

  findandremplace('<NOMBRE ARRENDATARIO>', namearrendatario.Text);
  findandremplace('<RUN ARRENDATARIO>', rutarrendatario.Text);
  findandremplace('<ARRENDATARIO>', addressarrendador.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  // datos del vehiculo
  findandremplace('<DOMICILIO DE PROPIEDAD A ARRENDAR>', domicilio.Text);
  findandremplace('<FECHA INICIO>', datetostr(finicio.date));
  findandremplace('<FECHA TERMINO>', datetostr(fechatermino.date));

  findandremplace('<PRORROGA DE ARRIENDO>', prorroga.Text);
  findandremplace('$ <VALOR ARRIENDO>', valor.Text);
  findandremplace('<DIAS>', dias.Text);


  findandremplace('<NOMBRE CODEUDOR>', nametestigo1.Text);
  findandremplace('<RUT CODEUDOR>', ruttestigo1.Text);
  findandremplace('<DIRECCION CODEUDOR>', addresstestigo1.Text);

  //findandremplace('$ <VALOR>.- (VALOR EN PESOS) ', valor.Text + ' (' + ToLetras( valor.Value) + ') ');

  findandremplace('<NRO MESES REAJUSTE>', reajuste.Text);
  findandremplace('<USO DE LA PROPIEDAD>', uso.Text);
  findandremplace('<ESTADO EN QUE SE ENCUENTRA>', uso.Text);
  findandremplace('$<VALOR DE GARANTIA>', valorgarantia.Text);

  footerdoc;
end;


procedure Tfhpna.ruttestigo1Enter(Sender: TObject);
begin
  inherited;
    rutenter_g(ruttestigo1);
end;

procedure Tfhpna.ruttestigo1Exit(Sender: TObject);
begin
  inherited;
    rutexit_g(ruttestigo1, nametestigo1, addresstestigo1);
end;

procedure Tfhpna.ruttestigo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(ruttestigo1, key);
end;

procedure Tfhpna.diasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

procedure Tfhpna.rutarrendadorEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutarrendador);
end;

procedure Tfhpna.rutarrendadorExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutarrendador, namearrendador, addressarrendador);
end;

procedure Tfhpna.rutarrendadorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutarrendador, key);
end;

procedure Tfhpna.rutarrendatarioEnter(Sender: TObject);
begin
  inherited;
    rutenter_g(rutarrendatario);
end;

procedure Tfhpna.rutarrendatarioExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutarrendatario, namearrendatario, addressarrendatario);
end;

procedure Tfhpna.rutarrendatarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutarrendatario, key);
end;

end.
