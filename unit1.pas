unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SpinEx, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Spin, ExtCtrls, ButtonPanel;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.caption:='Euros (€)';
  Label2.caption:='Dollars ($)';
  RadioButton1.Checked:=true;
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  FloatSpinEdit1.Value := 0;
  FloatSpinEdit2.Value := 0;
  Label1.caption:='Euros (€)';
  Label2.caption:='Dollars ($)';
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  FloatSpinEdit1.Value := 0;
  FloatSpinEdit2.Value := 0;
  Label2.caption:='Euros (€)';
  Label1.caption:='Dollars ($)';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
     FloatSpinEdit2.Value := FloatSpinEdit1.Value * 1.15;
  if RadioButton2.Checked = true then
     FloatSpinEdit2.Value := FloatSpinEdit1.Value * 0.87;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FloatSpinEdit1.Value := 0;
  FloatSpinEdit2.Value := 0;
  RadioButton1.Checked:=true;
  RadioButton2.Checked:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

