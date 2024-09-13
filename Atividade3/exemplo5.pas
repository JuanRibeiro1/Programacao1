program exemplo5;

uses crt,math;

var
  nota1, nota2, media: Real;
  resposta: Char;
  aprovados, reprovados, exame: Integer;

begin

  aprovados := 0;
  reprovados := 0;
  exame := 0;

  repeat
    writeln('Digite a primeira nota do aluno:');
    readln(nota1);
    writeln('Digite a segunda nota do aluno:');
    readln(nota2);

    media := (nota1 + nota2) / 2;

    writeln('Media final do aluno: ', media:0:2);

    if media >= 6.0 then
    begin
      writeln('Aluno aprovado.');
      aprovados := aprovados + 1;
    end
    else if media < 3.0 then
    begin
      writeln('Aluno reprovado.');
      reprovados := reprovados + 1;
    end
    else
    begin
      writeln('Aluno em exame.');
      exame := exame + 1;
    end;

    writeln('Calcular a media de outro aluno [S]im [N]ão?');
    readln(resposta);

  until resposta = 'N';

  writeln('Total de alunos aprovados: ', aprovados);
  writeln('Total de alunos reprovados: ', reprovados);
  writeln('Total de alunos em exame: ', exame);

end.
