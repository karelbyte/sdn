unit upagare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfpagare = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutautorizante: TEdit;
    nameautorizante: TEdit;
    addressautorizante: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    addressautorizado: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    rutsuscrip: TEdit;
    namesuscrip: TEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    valor: TEdit;
    valorcuotas: TEdit;
    fvencimiento: TDateTimePicker;
    valorpesos: TEdit;
    folio: TEdit;
    ncuotas: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure rutsuscripEnter(Sender: TObject);
    procedure rutsuscripExit(Sender: TObject);
    procedure rutsuscripKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpagare: Tfpagare;

implementation

{$R *.dfm}

procedure Tfpagare.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE DEL DEUDOR>', nameautorizado.Text);
  findandremplace('<RUN DEL DEUDOR>', rutautorizado.Text);
  findandremplace('<DOMICILIO DEL DEUDOR>', addressautorizado.Text);


  findandremplace('<NOMBRE DEL ACREEDOR>', nameautorizante.Text);
  findandremplace('<RUT DEL ACREEDOR>', rutautorizante.Text);
  findandremplace('<DOMICILIO DEUDOR>', addressautorizante.Text);


  findandremplace('<VALOR>', '$' + valor.Text);
  findandremplace('<VALOR EN LETRAS>', valorpesos.Text + ' PESOS');
  findandremplace('<NUMERO DE CUOTAS>', ncuotas.Text);
  findandremplace('<VALOR CUOTAS>', '$' + valorcuotas.Text);
  findandremplace('<FECHA DEL PRIMER VENCIMIENTO>', datetostr(fvencimiento.Date));

  findandremplace('<NOMBRE DEL SUSCRIPTOR>', namesuscrip.Text);
  findandremplace('<RUN DEL SUSCRIPTOR>', rutsuscrip.Text);
  findandremplace('<NUMERO DE FOLIO>', folio.Text);

  footerdoc;
end;


procedure Tfpagare.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfpagare.rutsuscripEnter(Sender: TObject);
begin
  inherited;
    rutenter_g(rutsuscrip);
end;

procedure Tfpagare.rutsuscripExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutsuscrip, namesuscrip, nil);
end;

procedure Tfpagare.rutsuscripKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    rutkeyp_g(rutsuscrip, key);
end;

procedure Tfpagare.rutautorizadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure tfpagare.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;


procedure tfpagare.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure tfpagare.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure tfpagare.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

end.
