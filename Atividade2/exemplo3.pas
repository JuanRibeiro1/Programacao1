program exemplo3;

uses crt,math;

var
    valor1,valor2,operacao:integer;
    adicao,subtracao,divisao,multiplicacao:real;

begin

    writeln('Digite um numero inteiro: ');
    readln(valor1);
    writeln('Digite outro numero inteiro: ');
    readln(valor2);
    writeln('Digite a opcao do calculo 1: Adicao, 2: Subtracao, 3: Divisao, 4: Multiplicacao: ');
    readln(operacao);

    case operacao of
        1:writeln('Selecionado adicao, resultado: ', valor1+valor2);
        2:writeln('Selecionado subtracao, resultado: ', valor1-valor2);
        3:writeln('Selecionado divisao, resultado: ', valor1/valor2);
        4:writeln('Selecionado multiplicacao, resultado: ', valor1*valor2);
    else
        writeln('Nao e um valor valido.');
    end;
end.