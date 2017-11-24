unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button0: TButton;
    ButtonMinus1: TButton;
    ButtonPlus: TButton;
    ButtonEqual: TButton;
    ButtonMinus: TButton;
    ButtonMul: TButton;
    ButtonDiv: TButton;
    ButtonSwitch: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonErase: TButton;
    ButtonSwap: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonEraseClick(Sender: TObject);
    procedure ButtonMinus1Click(Sender: TObject);
    procedure ButtonMinusClick(Sender: TObject);
    procedure ButtonMulClick(Sender: TObject);
    procedure ButtonPlusClick(Sender: TObject);
    procedure ButtonSwapClick(Sender: TObject);
    procedure ButtonSwitchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

function power(a, f : longint) : longint;
function HexToDec(x : String) : longint;
function DecToHex(x : longint) : String;

var
  Form1 : TForm1;
  box   : Integer;

implementation

{$R *.lfm}

{ TForm1 }

function power(a, f : longint) : longint;
begin
	if f = 0 then power := 1
	else power := a * power(a, f-1);
end;

function HexToDec(x : String) : longint;
var
	i, f, s	: longint;
begin
	s := 0;
	f := 0;
	if x[1] = '-' then
	begin
		for i := length(x) downto 1 do
                begin
                        case x[i] of
                                '0' : begin s := s - 0*power(16, f); end;
                                '1' : begin s := s - 1*power(16, f); end;
                                '2' : begin s := s - 2*power(16, f); end;
                                '3' : begin s := s - 3*power(16, f); end;
                                '4' : begin s := s - 4*power(16, f); end;
                                '5' : begin s := s - 5*power(16, f); end;
                                '6' : begin s := s - 6*power(16, f); end;
                                '7' : begin s := s - 7*power(16, f); end;
                                '8' : begin s := s - 8*power(16, f); end;
                                '9' : begin s := s - 9*power(16, f); end;
                                'A' : begin s := s - 10*power(16, f); end;
                                'B' : begin s := s - 11*power(16, f); end;
                                'C' : begin s := s - 12*power(16, f); end;
                                'D' : begin s := s - 13*power(16, f); end;
                                'E' : begin s := s - 14*power(16, f); end;
                                'F' : begin s := s - 15*power(16, f); end;
                        end;
                        inc(f);
                end;
		//s := s * -1;
	end else begin
		for i := length(x) downto 0 do
		begin
			case x[i] of
				'0' : begin s := s + 0*power(16, f); end;
				'1' : begin s := s + 1*power(16, f); end;
				'2' : begin s := s + 2*power(16, f); end;
				'3' : begin s := s + 3*power(16, f); end;
				'4' : begin s := s + 4*power(16, f); end;
				'5' : begin s := s + 5*power(16, f); end;
				'6' : begin s := s + 6*power(16, f); end;
				'7' : begin s := s + 7*power(16, f); end;
				'8' : begin s := s + 8*power(16, f); end;
				'9' : begin s := s + 9*power(16, f); end;
				'A' : begin s := s + 10*power(16, f); end;
				'B' : begin s := s + 11*power(16, f); end;
				'C' : begin s := s + 12*power(16, f); end;
				'D' : begin s := s + 13*power(16, f); end;
				'E' : begin s := s + 14*power(16, f); end;
				'F' : begin s := s + 15*power(16, f); end;
			end;
			inc(f);
		end;
	end;
	HexToDec := s;
end;

function DecToHex(x : longint) : String;
var
	temp, liczba	: longint;
	hex 		: String;
begin
	liczba := abs(x);
	hex := ''; {pusty ciąg znaków}
	repeat
		temp := liczba MOD 16;
                if temp = 0 then hex := '0' + hex;
		if temp = 1 then hex := '1' + hex;
		if temp = 2 then hex := '2' + hex;
		if temp = 3 then hex := '3' + hex;
		if temp = 4 then hex := '4' + hex;
		if temp = 5 then hex := '5' + hex;
		if temp = 6 then hex := '6' + hex;
		if temp = 7 then hex := '7' + hex;
		if temp = 8 then hex := '8' + hex;
		if temp = 9 then hex := '9' + hex;
		if temp = 10 then hex := 'A' + hex;
		if temp = 11 then hex := 'B' + hex;
		if temp = 12 then hex := 'C' + hex;
		if temp = 13 then hex := 'D' + hex;
		if temp = 14 then hex := 'E' + hex;
		if temp = 15 then hex := 'F' + hex;
		liczba := liczba DIV 16;
	until liczba = 0;
	if x < 0 then hex := '-' + hex;
	DecToHex := hex;
end;

procedure TForm1.Button1Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $1;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $1;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + 'A';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + 'A';
     end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + 'B';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + 'B';
     end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + 'C';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + 'C';
     end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + 'D';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + 'D';
     end;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + 'E';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + 'E';
     end;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + 'F';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + 'F';
     end;
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
     if box = 1 then
     begin
          Memo1.Caption := Memo1.Caption + '0';
     end;
     if box = 2 then
     begin
          Memo2.Caption := Memo2.Caption + '0';
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $2;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $2;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $3;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $3;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $4;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $4;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var x : Integer;
begin
    if box = 1 then
     begin
          x := $5;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $5;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $6;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $6;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $7;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $7;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $8;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $8;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var x : Integer;
begin
     if box = 1 then
     begin
          x := $9;
          Memo1.Caption := Memo1.Caption + IntToStr(x);
     end;
     if box = 2 then
     begin
          x := $9;
          Memo2.Caption := Memo2.Caption + IntToStr(x);
     end;
end;

procedure TForm1.ButtonDivClick(Sender: TObject);
begin
     Memo3.Caption := '/';
end;

procedure TForm1.ButtonEqualClick(Sender: TObject);
begin
     if Memo3.Caption = '+' then Memo1.Caption := DecToHex(HexToDec(Memo1.Caption) + HexToDec(Memo2.Caption));
     if Memo3.Caption = '-' then Memo1.Caption := DecToHex(HexToDec(Memo1.Caption) - HexToDec(Memo2.Caption));
     if Memo3.Caption = '*' then Memo1.Caption := DecToHex(HexToDec(Memo1.Caption) * HexToDec(Memo2.Caption));
     if Memo3.Caption = '/' then Memo1.Caption := DecToHex(HexToDec(Memo1.Caption) div HexToDec(Memo2.Caption));
end;

procedure TForm1.ButtonEraseClick(Sender: TObject);
var
     query : String;
begin
     if box = 1 then
     begin
          query := Memo1.Caption;
          delete(query,length(query),1);
          Memo1.Caption := query;
     end;
     if box = 2 then
     begin
          query := Memo2.Caption;
          delete(query,length(query),1);
          Memo2.Caption := query;
     end;
end;

procedure TForm1.ButtonMinus1Click(Sender: TObject);
var pom : String;
begin
     if box = 1 then
     begin
          Memo1.Caption := DecToHex(HexToDec(Memo1.Caption) * -1);
     end;
     if box = 2 then
     begin
          Memo2.Caption := DecToHex(HexToDec(Memo2.Caption) * -1);
     end;
end;

procedure TForm1.ButtonMinusClick(Sender: TObject);
begin
     Memo3.Caption := '-';
end;

procedure TForm1.ButtonMulClick(Sender: TObject);
begin
     Memo3.Caption := '*';
end;

procedure TForm1.ButtonPlusClick(Sender: TObject);
begin
     Memo3.Caption := '+';
end;

procedure TForm1.ButtonSwapClick(Sender: TObject);
var pom : String;
begin
     pom := Memo1.Caption;
     Memo1.Caption := Memo2.Caption;
     Memo2.Caption := pom;
end;

procedure TForm1.ButtonSwitchClick(Sender: TObject);
begin
     if box = 1 then box := 2
     else if box = 2 then box := 1;
     Label1.Caption := IntToStr(box);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     Memo1.Caption := '';
     Memo2.Caption := '';
     Memo3.Caption := '+';
     box := 1;
     Label1.Caption := IntToStr(box);
end;
end.

