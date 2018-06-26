unit ucarabinerospapa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls,  StrUtils;

type
  Tfcarabinerospapa = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutcomodante: TEdit;
    namecomodante: TEdit;
    addresscomodante: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ruthijo: TEdit;
    namehijo: TEdit;
    addresshijo: TEdit;
    Label5: TLabel;
    estadocivil: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure ruthijoKeyPress(Sender: TObject; var Key: Char);
    procedure ruthijoExit(Sender: TObject);
    procedure ruthijoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcarabinerospapa: Tfcarabinerospapa;

implementation

{$R *.dfm}

procedure Tfcarabinerospapa.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE>', namecomodante.Text);
  findandremplace('<RUN>', rutcomodante.Text);
  findandremplace('<DOMICILIO>', addresscomodante.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NOMBRE MENOR>', namehijo.Text);
  findandremplace('<RUN MENOR>', ruthijo.Text);
  findandremplace('<DOMICILIO MENOR>', addresshijo.Text);
  findandremplace('<ESTADO CIVIL>', estadocivil.Text);
  footerdoc;
end;


procedure Tfcarabinerospapa.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfcarabinerospapa.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfcarabinerospapa.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;


procedure Tfcarabinerospapa.ruthijoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(ruthijo);
end;

procedure Tfcarabinerospapa.ruthijoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(ruthijo, namehijo, addresshijo);
end;

procedure Tfcarabinerospapa.ruthijoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   rutkeyp_g(ruthijo, key);
end;

end.
