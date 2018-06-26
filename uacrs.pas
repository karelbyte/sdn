unit uacrs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfacrs = class(Tfbase)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Nombre: TLabel;
    rutautorizante: TEdit;
    nameautorizante: TEdit;
    addressautorizante: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cementerio: TEdit;
    fallecido: TEdit;
    lugarcep: TEdit;
    erf: TLabel;
    Label3: TLabel;
    Direc: TLabel;
    fechafallecido: TDateTimePicker;
    procedure bimprimirClick(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  facrs: Tfacrs;

implementation

{$R *.dfm}

procedure Tfacrs.bimprimirClick(Sender: TObject);
begin
  inherited;

  //******** autorizante
  findandremplace('<NOMBRE AUTORIZANTE>', nameautorizante.Text);
  findandremplace('<RUT AUTORIZANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);
    //************* autorizado
  findandremplace('<CEMENTERIO>, ', cementerio.Text);
  findandremplace('<NOMBRE FALLECIDO>', fallecido.Text);
  findandremplace('<FECHA FALLECIMIENTO>', datetostr(fechafallecido.Date));
  findandremplace('<LUGAR SEPULTURA>', lugarcep.Text);

  footerdoc;
end;

procedure Tfacrs.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfacrs.rutautorizanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfacrs.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

end.
