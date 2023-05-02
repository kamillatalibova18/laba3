unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
const
 SIZE=5; //размермассива
var
 a:array[1..SIZE]of string[30]; // массив
 n: integer; // количество строк, введенных в поле Memo
 i:integer; // индекс элемента массива
 st:string;
begin
 n:=Memo1.Lines.Count;
// в поле Memo текста нет
if n = 0 then
begin
ShowMessage('Исходные данные не введены!');
Exit; // выход из процедуры обработки события
end;
// вполеMemoестьтекст
if n> SIZE then
begin
ShowMessage('Количество введенных строк превышает размер массива');
 n:=SIZE; // будем вводить только первые SIZE строк
end;
for i:=1 to n do
a[i]:=Form1.Memo1.Lines[i-1]; // строки Memo пронумерованыснуля
// вывод массива в окно сообщения
if n> 0 then
begin
st:='Введенный массив:'+#13;
for i:=1 to n do
st:=st+IntToStr(i)+' '+ a[i]+#13;
ShowMessage(st);
end;
end;



end.

