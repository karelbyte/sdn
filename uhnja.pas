unit uhnja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, StrUtils;

type
  Tfhnja = class(Tfbase)
    GroupBox2: TGroupBox;
    addressarrendador: TEdit;
    Label5: TLabel;
    rutarrendador: TEdit;
    Label8: TLabel;
    namearrendador: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutcomodante: TEdit;
    namecomodante: TEdit;
    grepre: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    GroupBox4: TGroupBox;
    arrendatario: TEdit;
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
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
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
  fhnja: Tfhnja;

implementation

{$R *.dfm}

procedure Tfhnja.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE ARRENDADOR>', namearrendador.Text);
  findandremplace('<RUN ARRENDADOR>', rutarrendador.Text);
  findandremplace('<ARRENDADOR>', addressarrendador.Text);

  findandremplace('<NOMBRE SOCIEDAD>', namecomodante.Text);
  findandremplace('<RUT SOCIEDAD>', rutcomodante.Text);

  findandremplace('<NOMBRE REPRESENTANTE>', nameautorizado.Text);
  findandremplace('<RUN REPRESENTANTE>', rutautorizado.Text);

  findandremplace('<DOMICILIO ARRENDATARIO>', arrendatario.Text);

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

procedure Tfhnja.diasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

procedure Tfhnja.rutarrendadorEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutarrendador);
end;

procedure Tfhnja.rutarrendadorExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutarrendador, namearrendador, addressarrendador);
end;

procedure Tfhnja.rutarrendadorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(rutarrendador, key);
end;

procedure Tfhnja.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfhnja.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, nil);
end;

procedure Tfhnja.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

procedure Tfhnja.ruttestigo1Enter(Sender: TObject);
begin
  inherited;
    rutenter_g(ruttestigo1);
end;

procedure Tfhnja.ruttestigo1Exit(Sender: TObject);
begin
  inherited;
    rutexit_g(ruttestigo1, nametestigo1, addresstestigo1);
end;

procedure Tfhnja.ruttestigo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(ruttestigo1, key);
end;

procedure Tfhnja.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure Tfhnja.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure  Tfhnja.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

end.
