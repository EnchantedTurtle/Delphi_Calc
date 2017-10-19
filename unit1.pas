unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BAdd: TButton;
    BSubtract: TButton;
    BTimes: TButton;
    BDivide: TButton;
    BRoot: TButton;
    BXdouble: TButton;
    EOtherResult: TEdit;
    EOther: TEdit;
    EResult: TEdit;
    ETwo: TEdit;
    EOne: TEdit;
    LEquals: TLabel;
    LCalc: TLabel;
    procedure BAddClick(Sender: TObject);
    procedure BDivideClick(Sender: TObject);
    procedure BRootClick(Sender: TObject);
    procedure BSubtractClick(Sender: TObject);
    procedure BTimesClick(Sender: TObject);
    procedure BXdoubleClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  rNumberOne,rNumberTwo,rResult: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BAddClick(Sender: TObject);
begin
     rNumberOne := StrToFloat(EOne.Text);
     rNumberTwo := StrToFloat(ETwo.Text);

     rResult := rNumberOne + rNumberTwo;

     EResult.Text:= FloatToStr(rResult);
end;

procedure TForm1.BDivideClick(Sender: TObject);
begin
     rNumberOne := StrToFloat(EOne.Text);
     rNumberTwo := StrToFloat(ETwo.Text);

     rResult := rNumberOne / rNumberTwo;

     EResult.Text:= FloatToStr(rResult);
end;

procedure TForm1.BRootClick(Sender: TObject);
begin
   rNumberOne := StrToFloat(EOther.Text);

   rResult := Sqrt(rNumberOne);

   EOtherResult.text := FloatToStr(rResult);

end;

procedure TForm1.BSubtractClick(Sender: TObject);
begin
     rNumberOne := StrToFloat(EOne.Text);
     rNumberTwo := StrToFloat(ETwo.Text);

     rResult := rNumberOne - rNumberTwo;

     EResult.Text:= FloatToStr(rResult);
end;

procedure TForm1.BTimesClick(Sender: TObject);
begin
     rNumberOne := StrToFloat(EOne.Text);
     rNumberTwo := StrToFloat(ETwo.Text);

     rResult := rNumberOne * rNumberTwo;

     EResult.Text:= FloatToStr(rResult);
end;

procedure TForm1.BXdoubleClick(Sender: TObject);
begin
     rNumberOne := StrToFloat(EOther.Text);

     rResult := rNumberOne * rNumberOne;

     EOtherResult.text := FloatToStr(rResult);
end;

end.

