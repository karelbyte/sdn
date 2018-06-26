unit ufirmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ExtDlgs, Data.DB, Vcl.ComCtrls, DateUtils, StrUtils, JPEG;

type
 tdvres = record
    dv : string;
  pass : boolean;
  end;
  Tffirmas = class(TForm)
    Label3: TLabel;
    address: TEdit;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    rutmask: TMaskEdit;
    Label2: TLabel;
    names: TEdit;
    phone: TEdit;
    Observaciones: TLabel;
    firm: TImage;
    Shape1: TShape;
    Bevel1: TBevel;
    bsave: TButton;
    Button2: TButton;
    cbtype: TComboBox;
    openlogo: TOpenPictureDialog;
    obser: TRichEdit;
    datefirm: TDateTimePicker;
    Label6: TLabel;
    rutedit: TEdit;
    Button1: TButton;
    procedure firmClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure rutmaskChange(Sender: TObject);
    procedure rutmaskKeyPress(Sender: TObject; var Key: Char);
    procedure bsaveClick(Sender: TObject);
    procedure phoneKeyPress(Sender: TObject; var Key: Char);
    procedure ruteditKeyPress(Sender: TObject; var Key: Char);
    procedure ruteditExit(Sender: TObject);
    procedure ruteditEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  edit : Boolean;
  rutuser, aux, rutdigito : string;
  rut, digito, contador, multiplo, acumulador, action :integer;
  function dv(rutstr: string): tdvres;
  end;

var
  ffirmas: Tffirmas;

implementation

{$R *.dfm}

uses udm;

procedure Tffirmas.bsaveClick(Sender: TObject);
var
 bmp : TBitmap;
 ID : integer;
begin
 if rutedit.Text = '' then abort;
 if action = 1 then  ID := DateTimeToUnix(Now()) else  ID := dm.fdqueryfirmID.Value;
 if (dv(rutedit.text).pass) and (names.Text <> '') and (rutuser = rutdigito) then
 begin
  dm.fdfirms.Close;
  dm.fdfirms.Params[0].Value := action;
  dm.fdfirms.Params[1].Value := ID;
  dm.fdfirms.Params[2].Value := cbtype.ItemIndex + 1;
  dm.fdfirms.Params[3].Value := rutedit.Text;
  dm.fdfirms.Params[4].Value := names.Text;
  dm.fdfirms.Params[5].Value := address.Text;
  dm.fdfirms.Params[6].Value := phone.Text;
  dm.fdfirms.Params[7].Value := obser.Text;
  if firm.picture.graphic <> nil then
    begin
      bmp := TBitmap.Create;
      bmp.Width:= firm.Picture.Graphic.Width;
      bmp.Height:= firm.Picture.Graphic.Height;
      bmp.Canvas.Draw(0,0, firm.Picture.Graphic);
      dm.fdfirms.Params[8].Assign(bmp);
    end else dm.fdfirms.Params[8].Clear();
  dm.fdfirms.Params[9].Value := datefirm.Date;
  dm.fdfirms.ExecSQL;
  close;
 end;

end;

procedure Tffirmas.Button1Click(Sender: TObject);
begin
  firm.picture.graphic := nil
end;

procedure Tffirmas.Button2Click(Sender: TObject);
begin
 close;
end;

function Tffirmas.dv(rutstr: string): tdvres;
var
 Digito, Contador, Multiplo,  Acumulador, rut : integer;
 RutDigito :string;
 res : tdvres;
begin
  rutstr := ReplaceStr(rutstr, '.', '');
  rutstr := ReplaceStr(rutstr, '-', '');
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

procedure Tffirmas.firmClick(Sender: TObject);
begin
  if openlogo.Execute() then
  begin
    firm.Picture.LoadFromFile(openlogo.FileName);
  end;
end;

procedure Tffirmas.phoneKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tffirmas.ruteditEnter(Sender: TObject);
begin
  rutedit.Text := ReplaceStr(rutedit.Text, '.', '');
  rutedit.Text := ReplaceStr(rutedit.Text, '-', '');
  rutedit.Font.Color := clBlack
end;

procedure Tffirmas.ruteditExit(Sender: TObject);
var str : string;
begin
 if (Length(rutedit.text) > 8) then
 begin
  if dv(rutedit.text).pass then begin rutedit.Font.Color := clGreen; rutedit.Hint := '' end else
  begin
  rutedit.Font.Color := clred;
  rutedit.Hint := 'El digito verificador es ' + dv(rutedit.Text).dv;
  end;
  str := rutedit.Text;
  Insert('.', str, 3);
  Insert('.', str, 7);
  Insert('-', str, 11);
  rutedit.Text :=  str;
 end else rutedit.Font.Color := clred;
end;

procedure Tffirmas.ruteditKeyPress(Sender: TObject; var Key: Char);
begin
 if not CharInSet(key, ['0'..'9', #8, 'K', 'k'] ) then abort;
 if (Length(rutedit.Text) > 8) and (key <> #8) then abort
end;

procedure Tffirmas.rutmaskChange(Sender: TObject);
begin
   rutmask.Font.Color := clDefault;
   aux := copy(rutmask.Text, 1, 10);
   rutuser := copy(rutmask.Text, 12, 1);
   delete(aux, 3, 1);  delete(aux, 6, 1);
   aux :=  trim(StringReplace(aux,' ', '',[rfReplaceAll]));
   if (aux <> '') and (Length(aux) = 8)  then
   begin
   rut := strtoint(trim(aux));
   // algoritmo
   contador := 2;
   acumulador := 0;
    while (rut <> 0) do
    begin
      multiplo := (rut mod 10) * contador;
      acumulador := acumulador + multiplo;
      rut := rut div 10;
      contador := contador + 1;
      if (contador = 8) then  contador := 2;
     end;
      digito := 11 - (acumulador mod 11);
      RutDigito := inttostr(digito);
      if (Digito = 10 ) then  rutdigito := 'K';
      if (Digito = 11) then  rutdigito := '0';
      if (rutuser <> rutdigito) then
      begin
        rutmask.Font.Color := clRed;
      end else   rutmask.Font.Color := clDefault;
   end;
end;

procedure Tffirmas.rutmaskKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then names.SetFocus
end;

end.
