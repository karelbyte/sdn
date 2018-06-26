unit ucvj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls,  StrUtils;

type
  Tfcvj = class(Tfbase)
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
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    GroupBox3: TGroupBox;
    tipovehiculo: TLabeledEdit;
    marca: TLabeledEdit;
    nmotor: TLabeledEdit;
    chasi: TLabeledEdit;
    year: TLabeledEdit;
    Modelo: TLabeledEdit;
    Color: TLabeledEdit;
    Patente: TLabeledEdit;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    canyears: TEdit;
    finicio: TDateTimePicker;
    ftermino: TDateTimePicker;
    procedure bimprimirClick(Sender: TObject);
    procedure yearKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure rutcomodatarioEnter(Sender: TObject);
    procedure rutcomodatarioExit(Sender: TObject);
    procedure rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  comodatario: string;
    { Public declarations }
  end;

var
  fcvj: Tfcvj;

implementation

{$R *.dfm}

procedure Tfcvj.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE DEL COMODANTE>', namecomodante.Text);
  findandremplace('<RUN DEL COMODANTE>', rutcomodante.Text);
  findandremplace('<DOMICILIO DEL COMODANTE>', addresscomodante.Text);

  findandremplace('<NOMBRE COMODATARIO>', namecomodatario.Text);
  findandremplace(comodatario, rutcomodatario.Text);
  findandremplace('<DOMICILIO COMODATARIO>', addresscomodatario.Text);

  findandremplace('<NOMBRE REPRESENTANTE>', nameautorizado.Text);
  findandremplace('<RUN DEL REPRESENTANTE>', rutautorizado.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  // datos del vehiculo
  findandremplace('<TIPO DE VEHICULO>', tipovehiculo.Text);
  findandremplace('<MARCA>', marca.Text);
  findandremplace('<MODELO>', modelo.Text);
  findandremplace('<MOTOR>', nmotor.Text);
  findandremplace('<CHASIS>', chasi.Text);
  findandremplace('<AÑO>', year.Text);
  findandremplace('<PPU>', patente.Text);
  findandremplace('<COLOR>', color.Text);


  findandremplace('<AÑOS>', canyears.Text);
  findandremplace('<FECHA INICIO>', datetostr(finicio.Date));
  findandremplace('<FECHA DE TERMINO>', datetostr(ftermino.Date));

  footerdoc;

end;


procedure Tfcvj.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure  Tfcvj.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure  Tfcvj.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfcvj.yearKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

procedure Tfcvj.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfcvj.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfcvj.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

procedure Tfcvj.rutcomodatarioEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodatario);
end;

procedure Tfcvj.rutcomodatarioExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodatario, namecomodatario, addresscomodatario);
end;

procedure Tfcvj.rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodatario, key);
end;
end.
