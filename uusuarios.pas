unit uusuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, DateUtils, StrUtils;

type
 tdvres = record
    dv : string;
  pass : boolean;
  end;
  Tfusurios = class(TForm)
    Bevel1: TBevel;
    grid: TDBGrid;
    Label1: TLabel;
    names: TEdit;
    Label2: TLabel;
    nick: TEdit;
    Label3: TLabel;
    password: TEdit;
    Label4: TLabel;
    roles: TComboBox;
    Label5: TLabel;
    nuevo: TButton;
    save: TButton;
    Cerrar: TButton;
    rutmask: TMaskEdit;
    DataSource1: TDataSource;
    eliminar: TButton;
    rutedit: TEdit;
    procedure rutmaskChange(Sender: TObject);
    procedure CerrarClick(Sender: TObject);
    procedure nuevoClick(Sender: TObject);
    procedure rutmaskKeyPress(Sender: TObject; var Key: Char);
    procedure gridDblClick(Sender: TObject);
    procedure saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eliminarClick(Sender: TObject);
    procedure ruteditEnter(Sender: TObject);
    procedure ruteditExit(Sender: TObject);
    procedure ruteditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  edit : Boolean;
  rutuser, aux, rutdigito : string;
  rut, digito, contador, multiplo, acumulador, ID :integer;
  function getrut(srt : string): integer;
  function dv(rutstr: string): tdvres;
    { Public declarations }
  end;

var
  fusurios: Tfusurios;

implementation

{$R *.dfm}

uses udm, ueliminar;

procedure Tfusurios.nuevoClick(Sender: TObject);
begin
 fusurios.edit := false;
 roles.ItemIndex := 0;
 rutedit.Text := '';
 nick.Text := '';
 names.Text := '';
 password.Text := '';
 rutedit.SetFocus;
 ID := 0;
end;

procedure Tfusurios.saveClick(Sender: TObject);
begin
 if rutedit.Text = '' then abort;
 if (dv(rutedit.text).pass) and (nick.Text <> '') and (names.Text <> '') and (password.Text <> '') then
 begin
  if not fusurios.edit then
  begin
  if (ID <> 1)  then
    begin
     dm.fdqueryAddUser.Close;
     dm.fdqueryAddUser.ParamByName('id').Value := DateTimeToUnix(Now());
     dm.fdqueryAddUser.ParamByName('rut').Value := rutedit.Text;
     dm.fdqueryAddUser.ParamByName('name').Value := names.Text;
     dm.fdqueryAddUser.ParamByName('nick').Value := nick.Text;
     dm.fdqueryAddUser.ParamByName('pass').Value := password.Text;
     dm.fdqueryAddUser.ParamByName('rol').Value := roles.ItemIndex + 1;
     dm.fdqueryAddUser.Execute();
     fusurios.nuevoClick(sender);
     dm.fdqueryAllUser.Refresh;
    end;
  end else begin
  if (ID <> 1)  then
    begin
     dm.fdqueryEditUser.Close;
     dm.fdqueryEditUser.ParamByName('id').Value := dm.fdqueryAllUserID.AsLargeInt;
     dm.fdqueryEditUser.ParamByName('rut').Value := rutedit.Text;
     dm.fdqueryEditUser.ParamByName('name').Value := names.Text;
     dm.fdqueryEditUser.ParamByName('nick').Value := nick.Text;
     dm.fdqueryEditUser.ParamByName('pass').Value := password.Text;
     dm.fdqueryEditUser.ParamByName('rol').Value := roles.ItemIndex + 1;
     dm.fdqueryEditUser.Execute();
     fusurios.nuevoClick(sender);
     dm.fdqueryAllUser.Refresh;
    end;
  end;
 end else Application.MessageBox('Faltan datos o son incorrectos!', 'Error')
end;

function Tfusurios.dv(rutstr: string): tdvres;
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

procedure Tfusurios.eliminarClick(Sender: TObject);
begin
 feliminar.texteliminar.Caption := 'Eliminará este usuario?';
 feliminar.ShowModal;
 if (feliminar.action) and (dm.fdqueryAllUserID.Value <> 1) then
 begin
   dm.fdqueryKillUser.Close;
   dm.fdqueryKillUser.ParamByName('id').Value := dm.fdqueryAllUserID.AsLargeInt;
   dm.fdqueryKillUser.Execute();
   dm.fdqueryAllUser.Refresh;
 end;
end;

procedure Tfusurios.CerrarClick(Sender: TObject);
begin
 close;
end;

procedure Tfusurios.FormShow(Sender: TObject);
begin
 fusurios.nuevoClick(sender);
end;

function Tfusurios.getrut(srt: string): integer;
begin

end;

procedure Tfusurios.gridDblClick(Sender: TObject);
begin
 roles.ItemIndex := dm.fdqueryAllUserROLL_ID.AsInteger - 1;
 rutedit.Text := dm.fdqueryAllUserRUT.AsString;
 names.Text := dm.fdqueryAllUserNAMES.AsString;
 nick.Text := dm.fdqueryAllUserNICK.AsString;
 ID := dm.fdqueryAllUserID.Value;
 fusurios.edit := true;
 rutedit.SetFocus;
end;

procedure Tfusurios.ruteditEnter(Sender: TObject);
begin
  rutedit.Text := ReplaceStr(rutedit.Text, '.', '');
  rutedit.Text := ReplaceStr(rutedit.Text, '-', '');
  rutedit.Font.Color := clBlack
end;

procedure Tfusurios.ruteditExit(Sender: TObject);
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

procedure Tfusurios.ruteditKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9', #8, 'K', 'k']) then abort;
 if (Length(rutedit.Text) > 8) and (key <> #8) then abort
end;

procedure Tfusurios.rutmaskChange(Sender: TObject);
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

procedure Tfusurios.rutmaskKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then names.SetFocus
end;

end.
