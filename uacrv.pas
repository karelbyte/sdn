unit uacrv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfacrv = class(Tfbase)
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    erf: TLabel;
    Label3: TLabel;
    cementerio: TEdit;
    fallecido: TEdit;
    lugarcep: TEdit;
    GroupBox1: TGroupBox;
    Nombre: TLabel;
    addressautorizante: TEdit;
    fechafallecido: TDateTimePicker;
    direc: TLabel;
    nameautorizante: TMemo;
    procedure bimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  facrv: Tfacrv;

implementation

{$R *.dfm}

procedure Tfacrv.bimprimirClick(Sender: TObject);
begin
  inherited;
  //******** autorizante
  findandremplace('<NOMBRES Y RUT AUTORIZANTES>', nameautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTES>', addressautorizante.Text);
    //************* autorizado
  findandremplace('<CEMENTERIO>, ', cementerio.Text);
  findandremplace('<NOMBRE FALLECIDO>', fallecido.Text);
  findandremplace('<FECHA FALLECIMIENTO>', datetostr(fechafallecido.Date));
  findandremplace('<LUGAR SEPULTURA>', lugarcep.Text);

  footerdoc;
end;


end.
