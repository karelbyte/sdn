unit ubmuebles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,  StrUtils;

type
  Tfbmueble = class(Tfbase)
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
    GroupBox5: TGroupBox;
    Label5: TLabel;
    fpago: TEdit;
    Label3: TLabel;
    costo: TJvValidateEdit;
    datos: TMemo;
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
  fbmueble: Tfbmueble;

implementation

{$R *.dfm}

procedure Tfbmueble.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE VENDEDOR>', namecomodante.Text);
  findandremplace('<RUN VENDEDOR>', rutcomodante.Text);
  findandremplace('<DOMICILIO VENDEDOR>', addresscomodante.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE COMPRADOR>', namecomodatario.Text);
  findandremplace('<RUN COMPRADOR>', rutcomodatario.Text);
  findandremplace('<DOMICILIO DEL COMPRADOR>', addresscomodatario.Text);

  findandremplace('<GLOSA DE LO QUE SE VA A VENDER>', datos.Text);
  findandremplace('$<PRECIO DE VENTA>', costo.Text + ' (' + ToLetras( costo.Value) + ')');
  findandremplace('<FORMA DE PAGO>', fpago.Text);

  footerdoc;
end;


procedure Tfbmueble.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfbmueble.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfbmueble.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

procedure Tfbmueble.rutcomodatarioEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodatario);
end;

procedure Tfbmueble.rutcomodatarioExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodatario, namecomodatario, addresscomodatario);
end;

procedure Tfbmueble.rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodatario, key);
end;

end.
