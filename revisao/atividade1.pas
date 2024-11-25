{$codepage utf8}
program atividade1;

function somaEntreNumeros(a, b: integer): integer;
var
    i, soma: integer;
begin
    soma := 0;

    { Garante que o intervalo seja percorrido corretamente }
    if a > b then
    begin
        a := a + b;
        b := a - b;
        a := a - b;
    end;

    { Soma os números do intervalo [a, b] }
    for i := a to b do
        soma := soma + i;

    somaEntreNumeros := soma;
end;

{ Programa principal para testar a função }
var
    num1, num2, resultado: integer;
begin
    writeln('Digite o primeiro número: ');
    readln(num1);
    writeln('Digite o segundo número: ');
    readln(num2);

    resultado := somaEntreNumeros(num1, num2);

    writeln('A soma dos números entre ', num1, ' e ', num2, ' é: ', resultado);
end.
