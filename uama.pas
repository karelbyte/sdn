unit uama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfama = class(Tfbase)
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
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fama: Tfama;

implementation

{$R *.dfm}

procedure Tfama.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE AUTORIZANTE>', nameautorizante.Text);
  findandremplace('<RUT AUTORIZANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);
  findandremplace('<NOMBRE AUTORIZADO>', nameautorizado.Text);
  findandremplace('<RUT AUTORIZADO>', rutautorizado.Text);
  footerdoc;
end;

procedure Tfama.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizado);
end;

procedure Tfama.rutautorizadoExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfama.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfama.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfama.rutautorizanteExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfama.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

end.
