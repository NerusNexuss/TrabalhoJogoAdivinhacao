unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    RgDificuldade: TRadioGroup;
    EdtAdivinhar: TEdit;
    BtnAdivinhar: TButton;
    BtnNovoJogo: TButton;
    ImgEmoji: TImage;
    Lbacerto: TLabel;
    LblMensagem: TLabel;
    procedure BtnAdivinharClick(Sender: TObject);
    procedure BtnNovoJogoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NumeroSorteado: Integer;


implementation

{$R *.dfm}

function SortearNumero(Dificuldade: Integer): Integer;
begin
  case Dificuldade of
    0: Result := Random(49) + 1;
    1: Result := Random(199) + 1;
    2: Result := Random(299) + 1;
  else
    Result := Random(49) + 1;
  end;
end;


function VerificarTentativa(tentativa: Integer): string;
begin
  if tentativa > NumeroSorteado then
    Result := 'Tente um número menor!'
  else if tentativa < NumeroSorteado then
    Result := 'Tente um número maior!'
  else
    Result := ' Parabéns! Você acertou o número ' + IntToStr(NumeroSorteado) + '!';
end;

 function ExibirEmojiAcerto(Imagem: TImage): Boolean;
begin
  Imagem.Visible := True;
  Result := True;
end;


procedure TForm1.BtnAdivinharClick(Sender: TObject);
var
  tentativa: Integer;
  mensagem: string;
begin
  if TryStrToInt(EdtAdivinhar.Text, tentativa) then
  begin
    if NumeroSorteado = 0 then
      NumeroSorteado := SortearNumero(RgDificuldade.ItemIndex);

    mensagem := VerificarTentativa(tentativa);


    if mensagem.Contains('Parabéns') then
      ExibirEmojiAcerto(ImgEmoji);
  end
  else
    ShowMessage('Digite um número válido.');

    LblMensagem.Caption := 'Número sorteado: ' + IntToStr(NumeroSorteado);
end;


procedure TForm1.BtnNovoJogoClick(Sender: TObject);
begin

  NumeroSorteado := SortearNumero(RgDificuldade.ItemIndex);


  EdtAdivinhar.Clear;
  EdtAdivinhar.SetFocus;
  ImgEmoji.Visible := False;

end;

end.
