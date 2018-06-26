unit uprovisorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfprovisorio = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutcomodante: TEdit;
    namecomodante: TEdit;
    addresscomodante: TEdit;
    datos: TLabeledEdit;
    comuna: TLabeledEdit;
    procedure bimprimirClick(Sender: TObject);
    procedure rutcomodanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutcomodanteExit(Sender: TObject);
    procedure rutcomodanteEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprovisorio: Tfprovisorio;

implementation

{$R *.dfm}

procedure Tfprovisorio.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE>', namecomodante.Text);
  findandremplace('<RUN>', rutcomodante.Text);
  findandremplace('<DOMICILIO>', addresscomodante.Text);
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));

  findandremplace('<NUMERO>', datos.Text);
  findandremplace('<COMUNA>', comuna.Text);
  footerdoc;
end;


procedure Tfprovisorio.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfprovisorio.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfprovisorio.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

end.
