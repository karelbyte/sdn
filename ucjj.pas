unit ucjj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, StrUtils;

type
  Tfcjj = class(Tfbase)
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
    grepre: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    rutautorizado: TEdit;
    nameautorizado: TEdit;
    GroupBox3: TGroupBox;
    tipovehiculo: TLabeledEdit;
    modelo: TLabeledEdit;
    nmotor: TLabeledEdit;
    combustible: TLabeledEdit;
    year: TLabeledEdit;
    chasi: TLabeledEdit;
    Color: TLabeledEdit;
    Patente: TLabeledEdit;
    marca: TLabeledEdit;
    pbv: TLabeledEdit;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    comuna: TEdit;
    precioventa: TJvValidateEdit;
    valorimpuesto: TJvValidateEdit;
    valortasacion: TJvValidateEdit;
    Label5: TLabel;
    repertorio: TEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
    procedure rutcomodatarioEnter(Sender: TObject);
    procedure rutcomodatarioExit(Sender: TObject);
    procedure rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure yearKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcjj: Tfcjj;

implementation

{$R *.dfm}

procedure Tfcjj.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<REPERTORIO>', repertorio.Text);

  findandremplace('<NOMBRE DEL VENDEDOR>', namecomodante.Text);  findandremplace('<NOMBRE DE VENDEDOR>', namecomodante.Text);
  findandremplace('<RUN DEL VENDEDOR', rutcomodante.Text);   findandremplace('<RUN VENDEDOR>', rutcomodante.Text);
  findandremplace('<DOMICILIO DEL VENDEDOR>', addresscomodante.Text);

  findandremplace('<NOMBRE DEL COMPRADOR>', namecomodatario.Text);    findandremplace('<NOMBRE COMPRADOR>', namecomodatario.Text);
  findandremplace('<RUT DEl COMPRADOR>', rutcomodatario.Text);    findandremplace('<RUN COMPRADOR>', rutcomodatario.Text);
  findandremplace('<DOMICILIO DEl COMPRADOR>', addresscomodatario.Text);

  findandremplace('<NOMBRE DEL REPRESENTANTE>', nameautorizado.Text);
  findandremplace('<RUN DEL REPRESENTANTE>', rutautorizado.Text);

  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  // datos del vehiculo
  findandremplace('<PLACA PATENTE>', patente.Text);
  findandremplace('<TIPO DE VEHICULO>', tipovehiculo.Text);
  findandremplace('<AÑO>', year.Text);
  findandremplace('<MARCA>', marca.Text);
  findandremplace('<MODELO>', modelo.Text);
  findandremplace('<MOTOR>', nmotor.Text);
  findandremplace('<CHASIS>', chasi.Text);
  findandremplace('<COLOR>', color.Text);
  findandremplace('<PBV>', pbv.Text);
  findandremplace('<COMBUSTIBLE>', combustible.Text);


  findandremplace('<COMUNA PERMISO DE CIRCULACIÓN>', comuna.Text);
  findandremplace('<COMUNA PERMISO DE CIRCULACION>', comuna.Text);
  findandremplace('$<PRECIO DE VENTA>', precioventa.Text + ' (' + ToLetras( precioventa.Value) + ') ');

  findandremplace('$<VALOR IMPUESTO>', valorimpuesto.Text);
  findandremplace('$<VALOR TASACION>', valortasacion.Text);
  footerdoc;
end;


procedure Tfcjj.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure  Tfcjj.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, nil);
end;

procedure  Tfcjj.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfcjj.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfcjj.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfcjj.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

procedure Tfcjj.rutcomodatarioEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodatario);
end;

procedure Tfcjj.rutcomodatarioExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodatario, namecomodatario, addresscomodatario);
end;

procedure Tfcjj.rutcomodatarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodatario, key);
end;

procedure Tfcjj.yearKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(key, ['0'..'9', #8]) then abort;
end;

end.
