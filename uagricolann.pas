unit uagricolann;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, StrUtils;

type
  Tfagricolann = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutcomodante: TEdit;
    namecomodante: TEdit;
    addresscomodante: TEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    rutcomodatario: TEdit;
    namecomodatario: TEdit;
    addresscomodatario: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    ruttestigo1: TEdit;
    nametestigo1: TEdit;
    addresstestigo1: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    ruttestigo2: TEdit;
    nametestigo2: TEdit;
    addresstestigo2: TEdit;
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
    domicilio: TEdit;
    valor: TJvValidateEdit;
    canthectareas: TEdit;
    hectareas: TEdit;
    fpago: TEdit;
    rol: TEdit;
    presunta: TEdit;
    finicio: TDateTimePicker;
    fechatermino: TDateTimePicker;
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure rutcomodatarioEnter(Sender: TObject);
    procedure rutcomodatarioExit(Sender: TObject);
    procedure rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
    procedure ruttestigo1Enter(Sender: TObject);
    procedure ruttestigo1Exit(Sender: TObject);
    procedure ruttestigo1KeyPress(Sender: TObject; var Key: Char);
    procedure ruttestigo2KeyPress(Sender: TObject; var Key: Char);
    procedure ruttestigo2Exit(Sender: TObject);
    procedure ruttestigo2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fagricolann: Tfagricolann;

implementation

{$R *.dfm}

procedure Tfagricolann.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE ARRENDADOR>', namecomodante.Text);
  findandremplace('<RUT ARRENDADOR>', rutcomodante.Text);
  findandremplace('<RUN ARRENDADOR>', rutcomodante.Text);
  findandremplace('<ARRENDADOR>', addresscomodante.Text);

  findandremplace('<NOMBRE SOCIEDAD ARRENDADORA>', namecomodante.Text);
  findandremplace('<RUT SOCIEDAD ARRENDADORA>', rutcomodante.Text);
  findandremplace('<DOMICILIO ARRENDADOR>', addresscomodante.Text);

  findandremplace('<NOMBRE ARRENDATARIO>', namecomodatario.Text);
  findandremplace('<RUN ARRENDATARIO>', rutcomodatario.Text);
  findandremplace('<DOMICILIO ARRENDATARIO>', addresscomodatario.Text);

  findandremplace('<NOMBRE TESTIGO 1>', nametestigo1.Text);
  findandremplace('<RUN TESTIGO 1>', ruttestigo1.Text);


  findandremplace('<NOMBRE TESTIGO 2>', nametestigo2.Text);
  findandremplace('<RUN TESTIGO 2>', ruttestigo2.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  // datos del vehiculo
  findandremplace('<DOMICILIO ARRENDADO>', domicilio.Text);
  findandremplace('<CANTIDAD HECTAREAS>', canthectareas.Text);
  findandremplace('<HECTAREAS>', hectareas.Text);
  findandremplace('<NUMERO DE ROL>', rol.Text);
  findandremplace('<FECHA INICIO>', datetostr(finicio.date));
  findandremplace('<FECHA TERMINO>', datetostr(fechatermino.date));

  findandremplace('$ <VALOR>.- (VALOR EN PESOS) ', valor.Text + ' (' + ToLetras( valor.Value) + ') ');

  findandremplace('<FORMA DE PAGO>', fpago.Text);
  findandremplace('<PRESUNTA>', presunta.Text);

  footerdoc;
end;


procedure Tfagricolann.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfagricolann.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfagricolann.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

procedure Tfagricolann.rutcomodatarioEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodatario);
end;

procedure Tfagricolann.rutcomodatarioExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodatario, namecomodatario, addresscomodatario);
end;

procedure Tfagricolann.rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodatario, key);
end;


procedure Tfagricolann.ruttestigo1Enter(Sender: TObject);
begin
  inherited;
    rutenter_g(ruttestigo1);
end;

procedure Tfagricolann.ruttestigo1Exit(Sender: TObject);
begin
  inherited;
    rutexit_g(ruttestigo1, nametestigo1, addresstestigo1);
end;

procedure Tfagricolann.ruttestigo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(ruttestigo1, key);
end;

procedure Tfagricolann.ruttestigo2Enter(Sender: TObject);
begin
  inherited;
  rutenter_g(ruttestigo2);
end;

procedure Tfagricolann.ruttestigo2Exit(Sender: TObject);
begin
  inherited;
   rutexit_g(ruttestigo2, nametestigo2, addresstestigo2);
end;

procedure Tfagricolann.ruttestigo2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    rutkeyp_g(ruttestigo2, key);
end;

end.
