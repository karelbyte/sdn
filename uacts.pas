unit uacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uacrs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, ComObj, OleServer, StrUtils ;

type
  Tfacts = class(Tfacrs)
    Label4: TLabel;
    lugartraslado: TEdit;
    procedure bimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  facts: Tfacts;

implementation

{$R *.dfm}

procedure Tfacts.bimprimirClick(Sender: TObject);
begin
  queryNotaria.Close;
  queryNotaria.Open();
  Word := CreateOleObject('Word.Application');
  FileName := pathdoc;
  Word.Documents.Open(FileName, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  prtok := true;
  fol:= Random(1000) + 1;
  findandremplace('<LUGAR TRASLADO>', lugartraslado.Text);
  findandremplace('<NOMBRE NOTARIO>', queryNotariaNOTARIA.AsString);
  findandremplace('<TITULO NOTARIO>', queryNotariaTITLE.AsString);
  findandremplace('<DIRECCION NOTARIO>', queryNotariaADDRESS.AsString);
  findandremplace('<FONO/FAX NOTARIO>', queryNotariaPHONE.AsString);
  findandremplace('<COMUNA NOTARIO>', queryNotariaCOMUNE.AsString);
  findandremplace('<CIUDAD PAIS NOTARIO>', queryNotariaCOMUNE.AsString + ' ' + queryNotariaCOUNTRY.AsString);
  //******** autorizante
  findandremplace('<NOMBRE AUTORIZANTE>', nameautorizante.Text);
  findandremplace('<RUT AUTORIZANTE>', rutautorizante.Text);
  findandremplace('<DIRECCION AUTORIZANTE>', addressautorizante.Text);
    //************* autorizado
  findandremplace('<CEMENTERIO>, ', cementerio.Text);
  findandremplace('<NOMBRE FALLECIDO>', fallecido.Text);
  findandremplace('<FECHA FALLECIMIENTO>', datetostr(fechafallecido.Date));
  findandremplace('<LUGAR SEPULTURA>', lugarcep.Text);
  findandremplace('<FECHA HOY>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));
  footerdoc;
end;

end.
