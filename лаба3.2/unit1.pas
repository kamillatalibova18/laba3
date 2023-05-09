unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
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
var
a : array[1..5] of integer; // массив
summ: integer; // сумма элементов
sr: real; // среднее арифметическое
i: integer; // индекс
begin
  // ввод массива
// считаем, что если ячейка пустая, то соответствующий
// ей элемент массива равен нулю
for i:= 1 to 5 do
if Length(StringGrid1.Cells[i-1,0]) <> 0
then a[i] := StrToInt(StringGrid1.Cells[i-1,0])
else a[i] := 0;
 // обработка массива
summ := 0;
for i :=1 to 5 do
summ := summ + a[i];
sr := summ / 5;
 // вывод результата
Label2.Caption :='Сумма элементов: ' + IntToStr(summ) + #13 + 'Среднее арифметическое:'  + FloatToStr(sr);
end;

end.

