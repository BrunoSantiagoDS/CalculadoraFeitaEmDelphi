unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TFormCalculadora = class(TForm)
    visor: TEdit;
    bt7: TSpeedButton;
    bt4: TSpeedButton;
    bt1: TSpeedButton;
    bt8: TSpeedButton;
    bt5: TSpeedButton;
    bt2: TSpeedButton;
    bt9: TSpeedButton;
    bt6: TSpeedButton;
    bt3: TSpeedButton;
    bt0: TSpeedButton;
    btLimpar: TSpeedButton;
    btIgual: TSpeedButton;
    btMais: TSpeedButton;
    btMenos: TSpeedButton;
    btVezes: TSpeedButton;
    btDividir: TSpeedButton;
    procedure bt8Click(Sender: TObject);
    procedure btMaisClick(Sender: TObject);
    procedure btMenosClick(Sender: TObject);
    procedure btVezesClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btIgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  FormCalculadora: TFormCalculadora;
  valor1: real;
  valor2: real;
  operacao: integer;

implementation

{$R *.dfm}

procedure TFormCalculadora.FormShow(Sender: TObject);
begin
 valor1 := 0;
 valor2 := 0;
end;

// NUMEROS
procedure TFormCalculadora.bt8Click(Sender: TObject);
begin
  //todos os numeros estão aqui sendo concatenados no momento do clique.
  visor.text := visor.text +  (Sender as TSpeedButton).Caption;
end;


// LIMPAR VISOR
procedure TFormCalculadora.btLimparClick(Sender: TObject);
begin
  //deixa o visor sem nada e seta o valor 0 para as variaveis.
  visor.Text := '';
  valor1 := 0;
  valor2 := 0;
end;

// SOMA
procedure TFormCalculadora.btMaisClick(Sender: TObject);
begin
  //transforma a string do visor em float e armazena no "valor1" (todas as operações fazem isso)
  valor1 := StrToFloat(visor.Text);
  visor.text := '';
  // variavel para ser usada no case
  operacao := 1;
end;

// SUBTRAÇÂO
procedure TFormCalculadora.btMenosClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  operacao := 2;
end;

// MULTIPLICAÇÂO
procedure TFormCalculadora.btVezesClick(Sender: TObject);
begin
    valor1 := StrToFloat(visor.Text);
    visor.Text := '';
    operacao :=  3;
end;

// DIVISÂO
procedure TFormCalculadora.btDividirClick(Sender: TObject);
begin
  valor1 := StrToFLoat(visor.Text);
  visor.text := '';
  operacao := 4;
end;

procedure TFormCalculadora.btIgualClick(Sender: TObject);
var resultado: real;
begin
  valor2 := StrToFloat(visor.Text);
  case (operacao) of
    1:
    begin
      // armazena em resultado o resultado da operação.
      resultado := valor1 + valor2;
      // mostra o resultado no visor
      visor.Text := FloatToStr(resultado);
    end;

    2:
    begin
       resultado := valor1 - valor2;
       visor.Text := FloatToStr(resultado);
    end;

    3:
    begin
       resultado := valor1 * valor2;
       visor.Text := FloatToStr(resultado);
    end;

    4:
    begin
      // varifica se a multiplicação é por 0 e dá erro.
      if(valor2<>0)then
        begin
          resultado := valor1 / valor2;
          visor.Text := FloatToStr(resultado);
        end
      else
        begin
          visor.Text := 'Divisão por zero! ERRO';
        end;

    end;

  end;

end;

end.
