{$codepage utf8}
program atividade3;

//Crie uma procedure capaz de dizer se um número é perfeito ou não (um número é perfeito se a soma de seus divisores próprios for igual ao próprio número.

procedure verificaNumeroPerfeito(numero: integer);
var
    soma, i: integer;
begin
    soma := 0;

    { Calcula a soma dos divisores próprios do número }
    for i := 1 to numero div 2 do
        if numero mod i = 0 then
            soma := soma + i;

    { Verifica se o número é perfeito }
    if soma = numero then
        writeln(numero, ' é um número perfeito.')
    else
        writeln(numero, ' não é um número perfeito.');
end;

{ Programa principal para testar a procedure }
var
    num: integer;
begin
    writeln('Digite um número para verificar se é perfeito: ');
    readln(num);

    verificaNumeroPerfeito(num);
end.
