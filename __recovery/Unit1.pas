unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    LbNomeJogo: TLabel;
    EdtNumeroAdivinhar: TEdit;
    BtnAdivinhar: TButton;
    BtnNovoJogo: TButton;
    LbAcertou: TLabel;
    RadioGroup1: TRadioGroup;
    procedure BtnAdivinharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function gerarNumero(gerarNumero: integer): integer;
begin

end;
function escolherDificuldade(escolhas: Double; escolha: Integer): Double;
begin
  case escolha of
    0:
      escolherDificuldade := randomize (Random(50));
    1:
      escolherDificuldade :=
    2:
      escolherDificuldade :=
  else
    escolherDificuldade := escolhas;
  end;
end;

procedure TForm1.BtnAdivinharClick(Sender: TObject);
begin

end;

end.
