program exemplo3;

uses crt,math;

var a1,a2:real;

begin

    writeln('Digite a nota da primeira avaliacao: ');
    readln(a1);
    writeln('Digite a nota da segunda avaliacao: ');
    readln(a2);

    while (a1<0) or (a1>10) do
    begin
        writeln('Nota da avaliacao 1 invalida, digite outro valor: ');
        readln(a1);
    end;

    while (a2<0) or (a2>10) do
    begin
        writeln('Nota da avaliacao 2 invalida, digite outro valor: ');
        readln(a2);
    end;

    writeln('Media do aluno: ', (a1+a2)/2:3:2);
end.