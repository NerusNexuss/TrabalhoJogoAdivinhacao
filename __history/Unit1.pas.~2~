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
function sortearValorSecreto(nivel: Integer): Integer;
begin
  case nivel of
    0:
      sortearValorSecreto:= (Random(49)+1);
    1:
      sortearValorSecreto := (Random(99)+1);
    2:
      sortearValorSecreto := (Random(199)+1);

  end;
end;

procedure TForm1.BtnAdivinharClick(Sender: TObject);
  var
    AdivinharNumero: integer;
begin
  AdivinharNumero := StrToInt(EdtNumeroAdivinhar.Text);
end;

end.
