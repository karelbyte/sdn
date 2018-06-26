unit uaicp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, ComObj, OleServer;

type
  Tfaicp = class(Tfbase)
    GroupBox1: TGroupBox;
    rutautorizante: TEdit;
    Label2: TLabel;
    Nombre: TLabel;
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
    rutvisitado: TEdit;
    namevisitado: TEdit;
    cpenitenciaria: TEdit;
    procedure rutautorizanteEnter(Sender: TObject);
    procedure rutautorizanteExit(Sender: TObject);
    procedure rutautorizanteKeyPress(Sender: TObject; var Key: Char);
    procedure rutautorizadoEnter(Sender: TObject);
    procedure rutautorizadoExit(Sender: TObject);
    procedure rutautorizadoKeyPress(Sender: TObject; var Key: Char);
    procedure rutvisitadoKeyPress(Sender: TObject; var Key: Char);
    procedure rutvisitadoExit(Sender: TObject);
    procedure rutvisitadoEnter(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  faicp: Tfaicp;

implementation

{$R *.dfm}

uses ugboletas, uprincipal;


procedure Tfaicp.bimprimirClick(Sender: TObject);
begin
  inherited;
  findandremplace('<NOMBRE AUTORIZANTE>', nameautorizante.Text);
  findandremplace('<RUT AUTORIZANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);

  findandremplace('<NOMBRE AUTORIZADO>', nameautorizado.Text);
  findandremplace('<RUT AUTORIZADO>', rutautorizado.Text);

  findandremplace('<COMUNA PENITENCIARIA>', cpenitenciaria.Text);
  findandremplace('<NOMBRE VISITADO>', namevisitado.Text);
  findandremplace('<RUT VISITADO>', rutvisitado.Text);

  footerdoc;
 end;

procedure Tfaicp.rutautorizadoEnter(Sender: TObject);
begin
  inherited;
   rutenter_g(rutautorizado);
end;

procedure Tfaicp.rutautorizadoExit(Sender: TObject);
begin
  inherited;
    rutexit_g(rutautorizado, nameautorizado, addressautorizado);
end;

procedure Tfaicp.rutautorizadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizado, key);
end;

procedure Tfaicp.rutautorizanteEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutautorizante);
end;

procedure Tfaicp.rutautorizanteExit(Sender: TObject);
begin
  inherited;
  rutexit_g(rutautorizante, nameautorizante, addressautorizante);
end;

procedure Tfaicp.rutautorizanteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutautorizante, key);
end;

procedure Tfaicp.rutvisitadoEnter(Sender: TObject);
begin
  inherited;
  rutenter_g(rutvisitado);
end;

procedure Tfaicp.rutvisitadoExit(Sender: TObject);
begin
  inherited;
   rutexit_g(rutvisitado, namevisitado, nil);
end;

procedure Tfaicp.rutvisitadoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  rutkeyp_g(rutvisitado, key);
end;

end.
