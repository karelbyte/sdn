unit ualzamiento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, StrUtils;

type
  Tfalzamiento = class(Tfbase)
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
    Label3: TLabel;
    Label4: TLabel;
    nombred: TEdit;
    cedula: TEdit;
    patente: TEdit;
    fechad: TDateTimePicker;
    repertorio: TEdit;
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
  falzamiento: Tfalzamiento;

implementation

{$R *.dfm}

procedure Tfalzamiento.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE>', namecomodante.Text);
  findandremplace('<RUN>', rutcomodante.Text);
  findandremplace('<DOMICILIO>', addresscomodante.Text);
  findandremplace('<FECHA>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));
  findandremplace('< FECHADECLARACION>', datetostr(fechad.Date));

  findandremplace('<NOMBRE COMPRADOR>', nombred.Text);
  findandremplace('<PATENTE DEL VEHICULO>', patente.Text);
  findandremplace('<CEDULA COMPRADOR>', cedula.Text);
  findandremplace('<REPERTORIO>', repertorio.Text);
  footerdoc;
end;

procedure Tfalzamiento.rutcomodanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutcomodante);
end;

procedure Tfalzamiento.rutcomodanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutcomodante, namecomodante, addresscomodante);
end;

procedure Tfalzamiento.rutcomodanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutcomodante, key);
end;

end.
