{$codepage utf8}
program atividade2;

//Crie a função principal para ler dois números, e validar o funcionamento da função anterior

function somaEntreNumeros(a, b: integer):integer;
var
    i, soma : integer;

begin
    soma := 0;
    if a > b then
    begin
        a := a + b;
        b := a - b;
        a := a - b;
    end;

    for i := a to b do
        soma := soma + i;

    somaEntreNumeros := soma;
end;

var
    num1, num2, resultado: integer;
begin
    writeln('Digite o primeiro numero: ');
    readln(num1);
    writeln('Digite o segundo numero: ');
    readln(num2);

    resultado := somaEntreNumeros(num1, num2);

    writeln('A soma dos números entre ', num1, ' e ', num2, ' é: ', resultado);
end.
