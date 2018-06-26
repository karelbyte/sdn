unit ubase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils, Vcl.ComCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ComObj, OleServer, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  tdvres = record
    dv : string;
  pass : boolean;
  end;
  Tfbase = class(TForm)
    fecha: TDateTimePicker;
    Label1: TLabel;
    Bevel1: TBevel;
    bcerrar: TButton;
    bimprimir: TButton;
    rutfind: TFDQuery;
    rutfindNAMES: TStringField;
    rutfindADDRESS: TStringField;
    queryNotaria: TFDQuery;
    queryNotariaNOTARIA: TStringField;
    queryNotariaTITLE: TStringField;
    queryNotariaADDRESS: TStringField;
    queryNotariaPHONE: TStringField;
    queryNotariaCOMUNE: TStringField;
    queryNotariaCOUNTRY: TStringField;
    queryNotariaLOGO: TBlobField;
    gboleta: TButton;
    qrysave: TFDQuery;
    procedure bcerrarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gboletaClick(Sender: TObject);
  private
    { Private declarations }
  public
  fol: integer;
  pathdoc : string;
      doc : string;
  Word: Variant;
  prtok: Boolean;
  FileName: OleVariant;
  function dv(rutstr: string): tdvres;
  procedure rutenter_g(rt: TEdit);
  procedure rutexit_g(rt: TEdit; name: TEdit; adress: TEdit);
  procedure rutkeyp_g(rt: TEdit; Key: Char);
  procedure findandremplace(tag: string; str: string);
  procedure footerdoc();
  function ToLetras(Numero:LongInt):String;
  procedure sevecliente();
    { Public declarations }
  end;

var
  fbase: Tfbase;

implementation

{$R *.dfm}

uses udm, uprincipal, ugboletas;


// funciones genereicas para el para el rut  ********************************************

procedure Tfbase.bimprimirClick(Sender: TObject);
begin
  queryNotaria.Close;
  queryNotaria.Open();
  Word := CreateOleObject('Word.Application');
  FileName := pathdoc;
  Word.Documents.Open(FileName, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  prtok := true;
  fol:= Random(1000) + 1;
    //**** notario ***
  findandremplace('<NOMBRE NOTARIO>', queryNotariaNOTARIA.AsString);
  findandremplace('<TITULO NOTARIO>', queryNotariaTITLE.AsString);
  findandremplace('<DIRECCION NOTARIO>', queryNotariaADDRESS.AsString);
  findandremplace('<FONO/FAX NOTARIO>', queryNotariaPHONE.AsString);
  findandremplace('<COMUNA NOTARIO>', queryNotariaCOMUNE.AsString);
  findandremplace('<CIUDAD PAIS NOTARIO>', queryNotariaCOMUNE.AsString + ' ' + queryNotariaCOUNTRY.AsString);
  findandremplace('<FECHA HOY>', ReplaceStr(formatdatetime('dd mmmm yyyy', fecha.Date), ' ', ' de '));
end;

procedure Tfbase.gboletaClick(Sender: TObject);
begin
  fgboleta.td := doc;
  if not DirectoryExists(fprincipal.credenciales.docdirectory) then CreateDir(fprincipal.credenciales.docdirectory);
  fgboleta.doc := fprincipal.credenciales.docdirectory + '\' + doc + ' ' +  inttostr(fol) + '.doc';
  fgboleta.emit := fecha.Date;
  fgboleta.label1.Caption := 'Se ha generado bien la boleta?';
  fgboleta.ShowModal;
end;

procedure Tfbase.footerdoc;
var camino : string;
begin
  camino := fprincipal.credenciales.docdirectory + '\' + doc + ' ' + inttostr(fol) + '.doc';
  Word.ActiveDocument.SaveAs(camino,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam);
  Word.Visible := true;
  sevecliente;
end;

function Tfbase.dv(rutstr: string): tdvres;        // buscando digito verificador
var
 Digito, Contador, Multiplo,  Acumulador, rut : integer;
 RutDigito :string;
 res : tdvres;
begin
   rut := strtoint(copy(rutstr, 1, Length(rutstr) - 1));
   Contador := 2;
   Acumulador := 0;
   while (rut <> 0) do
   begin
    Multiplo := (rut mod 10) * Contador;
    Acumulador := Acumulador + Multiplo;
    rut := rut div 10;
    Contador := Contador + 1;
    if (Contador = 8 ) then  Contador := 2;
   end;
   Digito := 11 - (Acumulador mod 11);
   RutDigito := trim(inttostr(Digito));
   if (Digito = 10 ) then RutDigito := 'K';
   if (Digito = 11) then RutDigito := '0';
   res.dv := RutDigito;
   res.pass := copy(rutstr,  Length(rutstr), 1) = RutDigito;
   result := res;
end;


procedure Tfbase.findandremplace(tag, str: string);       // procedimiento de encontrar y remplazar en word
begin
  Word.Selection.Find.ClearFormatting;
  Word.Selection.Find.Text :=tag;
  Word.Selection.Find.Replacement.Text := str;
  Word.Selection.Find.Forward := True;
  Word.Selection.Find.Wrap := 1; //wdFindContinue;
  Word.Selection.Find.Format := False;
  Word.Selection.Find.MatchCase := False;
  Word.Selection.Find.MatchWholeWord := False;
  Word.Selection.Find.MatchWildcards := False;
  Word.Selection.Find.MatchSoundsLike := False;
  Word.Selection.Find.MatchAllWordForms := False;
  Word.Selection.Find.Execute(EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                     EmptyParam, 2, EmptyParam,
                                     EmptyParam, EmptyParam, EmptyParam);
end;

procedure Tfbase.FormShow(Sender: TObject);   // limpiando todo los componentes
var
 i : integer;
begin
 for i := 0 to ComponentCount-1 do
 begin
    if Components[i] is TEdit then begin (Components[i] as TEdit).Text := ''; (Components[i] as TEdit).ShowHint := true; end;
    if Components[i] is TMemo then  (Components[i] as TMemo).Lines.Clear;
    if Components[i] is TDateTimePicker then (Components[i] as TDateTimePicker).Date := Now;
    if Components[i] is TLabeledEdit then (Components[i] as TLabeledEdit).Text := '';
    if Components[i] is TJvValidateEdit then (Components[i] as TJvValidateEdit).Text := '$ 0';
 end;
 top := 8;
 Left:= (Screen.Width div 2) - (Width div 2);
end;

procedure Tfbase.rutexit_g(rt: TEdit; name: TEdit; adress: TEdit);
var str : string;
begin
 if (Length(rt.Text) > 8) then
 begin
    if dv(rt.Text).pass then
    begin
      rt.Font.Color := clGreen;
      rt.Hint := '';
      str := rt.Text;
      Insert('.', str, 3);
      Insert('.', str, 7);
      Insert('-', str, 11);
      rt.Text :=  str;
     // buscando en la db la signature
      rutfind.Close;
      rutfind.Params[0].Value := rt.Text;
      rutfind.Open();
      if name <> nil then name.Text := rutfindNAMES.AsString;
      if adress <> nil then adress.Text := rutfindADDRESS.AsString
    end else
    begin
      {str := rt.Text;
      Insert('.', str, 3);
      Insert('.', str, 7);
      Insert('-', str, 11);
      rt.Text :=  str;    }
      if name <> nil then name.Text := '';
      if adress <> nil then adress.Text := '';
      rt.Font.Color := clred;
      rt.Hint := 'El digito verificador es ' + dv(rt.Text).dv;
    end;

 end else
 begin
  if name <> nil then name.Text := '';
  if adress <> nil then adress.Text := '';
  rt.Font.Color := clred;
 end;
end;

procedure Tfbase.rutkeyp_g(rt: TEdit; Key: Char);
begin
 if not (CharInSet(key, ['0'..'9', #8, 'K', 'k'])) then abort;
 if (Length(rt.Text) > 8) and (key <> #8) then abort
end;

procedure Tfbase.sevecliente;
var
 i, j : integer;
 rut, names, address: string;
begin
 for i := 1 to tag do
 begin
 rut := ''; name := ''; address := '';
     for j := 0 to ComponentCount-1 do
     begin
        if (Components[j] is TEdit) then
        begin
          if ((Components[j] as TEdit).Tag = i) and ( AnsiPos('rut',(Components[j] as TEdit).Name) <> 0) then rut := (Components[j] as TEdit).Text;
          if ((Components[j] as TEdit).Tag = i) and ( AnsiPos('name',(Components[j] as TEdit).Name) <> 0) then names := (Components[j] as TEdit).Text;
          if ((Components[j] as TEdit).Tag = i) and ( AnsiPos('address',(Components[j] as TEdit).Name) <> 0) then address := (Components[j] as TEdit).Text;
        end;
     end;
  qrysave.Params[0].Value := rut;
  qrysave.Params[1].Value := names;
  qrysave.Params[2].Value := address;
  qrysave.ExecSQL;
 end;
end;

procedure Tfbase.rutenter_g(rt: TEdit);
begin
  rt.Text := ReplaceStr(rt.Text, '.', '');
  rt.Text := ReplaceStr(rt.Text, '-', '');
  rt.Font.Color := clBlack
end;


procedure Tfbase.bcerrarClick(Sender: TObject);
begin
 // if prtok then Word.quit;
 if FileExists(pathdoc) then DeleteFile(pathdoc);
 close();
end;


function  Tfbase.ToLetras(Numero:LongInt):String;

  function xxIntToLletras(Valor:LongInt):String;
  const
   aUnidad : array[1..15] of string =
     ('UN','DOS','TRES','CUATRO','CINCO','SEIS',
      'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
      'TRECE','CATORCE','QUINCE');
   aCentena: array[1..9]  of string =
     ('CIENTO','DOSCIENTOS','TRESCIENTOS',
      'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
      'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS');
   aDecena : array[1..9]  of string =
    ('DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
     'SESENTA','SETENTA','OCHENTA','NOVENTA');
  var
   Centena, Decena, Unidad, Doble: LongInt;
   Linea: String;
  begin
   if valor=100 then Linea:=' CIEN '
   else begin
     Linea:='';
     Centena := Valor div 100;
     Doble   := Valor - (Centena*100);
     Decena  := (Valor div 10) - (Centena*10);
     Unidad  := Valor - (Decena*10) - (Centena*100);

     if Centena>0 then Linea := Linea + Acentena[centena]+' ';

     if Doble>0 then begin
       if Doble=20 then Linea := Linea +' VEINTE '
         else begin
          if doble<16 then Linea := Linea + aUnidad[Doble]
            else begin
                 Linea := Linea +' '+ Adecena[Decena];
                 if (Decena>2) and (Unidad<>0) then Linea := Linea+' Y ';
                 if Unidad>0 then Linea := Linea + aUnidad[Unidad];
            end;
         end;
     end;
   end;
   Result := Linea;
  end;

var
   Millones,Miles,Unidades: Longint;
   Linea : String;
begin
  {Inicializamos el string que contendrá las letras según el valor
  numérico}
  if numero=0 then Linea := 'CERO'
  else if numero<0 then Linea := 'MENOS '
       else if numero=1 then
            begin
              Linea := 'UN';
              ToLetras := Linea;
              exit
            end
            else if numero>1 then Linea := '';

  {Determinamos el Nº de millones, miles y unidades de numero en
  positivo}
  Numero   := Abs(Numero);
  Millones := numero div 1000000;
  Miles     := (numero - (Millones*1000000)) div 1000;
  Unidades  := numero - ((Millones*1000000)+(Miles*1000));

  {Vamos poniendo en el string las cadenas de los números(llamando
  a subfuncion)}
  if Millones=1 then Linea:= Linea + ' UN MILLON '
  else if Millones>1 then Linea := Linea + xxIntToLletras(Millones)
                                   + ' MILLONES ';

  if Miles =1 then Linea:= Linea + ' MIL '
  else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+
                                ' MIL ';

  if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);

  ToLetras := Linea;
end;

end.
