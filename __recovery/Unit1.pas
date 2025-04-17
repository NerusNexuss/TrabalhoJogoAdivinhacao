unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    LbNomeJogo: TLabel;
    EdtNumeroAdivinhar: TEdit;
    BtnAdivinhar: TButton;
    BtnNovoJogo: TButton;
    LbAcertou: TLabel;
    RadioGroup1: TRadioGroup;
    Image1: TImage;
    procedure BtnAdivinharClick(Sender: TObject);
    procedure BtnNovoJogoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Sorteado: Integer;

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
    AdivinharNumero,Sortear,nivel: integer;
    resultado:String;
begin
  AdivinharNumero := StrToInt(EdtNumeroAdivinhar.Text);


  if ( AdivinharNumero = Sorteado)
  resultado := ''

end;

procedure TForm1.BtnNovoJogoClick(Sender: TObject);
  var
    nivel: integer;
begin
   nivel = (RadioGroup1.ItemIndex);
   Sorteado := sortearValorSecreto(nivel);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

end.
