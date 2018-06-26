unit ucpn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfcpn = class(Tfbase)
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
    GroupBox3: TGroupBox;
    direcInmueble: TLabeledEdit;
    deslindenorte: TLabeledEdit;
    deslindeoriente: TLabeledEdit;
    fojas: TLabeledEdit;
    deslindeponiente: TLabeledEdit;
    numero: TLabeledEdit;
    deslindesur: TLabeledEdit;
    registro: TLabeledEdit;
    concervador: TLabeledEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    canyears: TEdit;
    finicio: TDateTimePicker;
    Label5: TLabel;
    ftermino: TDateTimePicker;
    procedure canyearsKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure rutcomodatarioEnter(Sender: TObject);
    procedure rutcomodatarioExit(Sender: TObject);
    procedure rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcpn: Tfcpn;

implementation

{$R *.dfm}

procedure Tfcpn.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE COMODANTE>', namecomodante.Text);
  findandremplace('<RUN COMODANTE>', rutcomodante.Text);
  findandremplace('<DOMICILIO COMODANTE>', addresscomodante.Text);

  findandremplace('<NOMBRE COMODATARIO>', namecomodatario.Text);
  findandremplace('<RUT COMODATARIO>', rutcomodatario.Text);
  findandremplace('<DOMICILIO COMODATARIO>', addresscomodatario.Text);

   findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  // datos del vehiculo
  findandremplace('<DIRECCION DE LA PROPIEDAD>', direcInmueble.Text);
  findandremplace('<DESLINDE AL NORTE>', deslindenorte.Text);
  findandremplace('<DESLINDE AL SUR>',deslindesur.Text);
  findandremplace('<DESLINDE AL ORIENTE>', deslindeoriente.Text);
  findandremplace('<DESLINDE AL PONIENTE>', deslindeponiente.Text);
  findandremplace('<FOJAS>', fojas.Text);
  findandremplace('<NUMERO>', numero.Text);
  findandremplace('<AÑO DE REGISTRO>', registro.Text);
  findandremplace('<CONSERVADOR>', concervador.Text);
  findandremplace('<CANTIDAD DE AÑOS>', canyears.Text);
  findandremplace('<FECHA DE INICIO>', datetostr(finicio.Date));
  findandremplace('<FECHA DE TERMINO>', datetostr(ftermino.Date));

  footerdoc;
end;

procedure Tfcpn.canyearsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

procedure Tfcpn.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfcpn.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfcpn.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

procedure Tfcpn.rutcomodatarioEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodatario);
end;

procedure Tfcpn.rutcomodatarioExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodatario, namecomodatario, addresscomodatario);
end;

procedure Tfcpn.rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodatario, key);
end;

end.
