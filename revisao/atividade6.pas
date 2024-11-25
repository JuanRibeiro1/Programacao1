// Um professor, muito legal, fez 3 provas durante um semestre, mas só vai levar em conta as 2 notas
// mais altas para calcular a média dos alunos. Faça programa em Pascal que leia os valores das
// 3 notas de um aluno (no programa principal). Um módulo chamado C deverá testar quais 
// são as duas notas mais altas e calcular a média desse aluno. O módulo deverá retornar para o
//programa principal a média calculada. No programa principal deverá ser impressa a média calculada pelo módulo.

program atividade6;

{$codepage utf8}

uses crt;
{ Declaração do módulo para calcular a média das duas maiores notas }
function CalculaMedia(n1, n2, n3: real): real;
var
    menorNota: real;
begin
    { Identificar a menor nota }
    if (n1 <= n2) and (n1 <= n3) then
        menorNota := n1
    else if (n2 <= n1) and (n2 <= n3) then
        menorNota := n2
    else
        menorNota := n3;

    { Calcular a média das duas maiores notas }
    CalculaMedia := (n1 + n2 + n3 - menorNota) / 2;
end;

var
    nota1, nota2, nota3, media: real;

begin
    clrscr;  { Limpa a tela }

    writeln('=== Cálculo da Média (Duas Maiores Notas) ===');
    writeln;

    { Entrada das notas }
    write('Digite a primeira nota: ');
    readln(nota1);
    write('Digite a segunda nota: ');
    readln(nota2);
    write('Digite a terceira nota: ');
    readln(nota3);

    { Chamada do módulo para calcular a média }
    media := CalculaMedia(nota1, nota2, nota3);

    { Exibição do resultado }
    writeln;
    writeln('A média das duas maiores notas é: ', media:0:2);

    writeln;
    writeln('Fim do programa. Obrigado!');
end.