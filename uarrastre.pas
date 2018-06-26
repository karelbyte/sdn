unit uarrastre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfarrastre = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutcomodante: TEdit;
    namecomodante: TEdit;
    addresscomodante: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    erf: TLabel;
    Label4: TLabel;
    year: TEdit;
    ejes: TEdit;
    kg: TEdit;
    ancho: TEdit;
    Label7: TLabel;
    ruedas: TEdit;
    Label8: TLabel;
    aros: TEdit;
    Label9: TLabel;
    color: TEdit;
    Label3: TLabel;
    largo: TEdit;
    Label10: TLabel;
    altura: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure yearKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  farrastre: Tfarrastre;

implementation

{$R *.dfm}

procedure Tfarrastre.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE>', namecomodante.Text);
  findandremplace('<RUN>', rutcomodante.Text);
  findandremplace('<DOMICILIO>', addresscomodante.Text);
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<AÑO>', year.Text);
  findandremplace('<NUMEROEJE>', ejes.Text);
  findandremplace('<NUMERORUEDA>', ruedas.Text);
  findandremplace('<NUMEROARO>', aros.Text);
  findandremplace('<COLOR>', color.Text);
  findandremplace('<KILOS>', kg.Text);
  findandremplace('<ANCHO>', ancho.Text);
  findandremplace('<LARGO>', largo.Text);
  findandremplace('<ALTURA>', altura.Text);

   footerdoc;
end;


procedure Tfarrastre.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfarrastre.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfarrastre.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;


procedure Tfarrastre.yearKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

end.
