program exemplo2;

uses crt,math;

var
    g1,g2,substituicao,media:real;

begin

    writeln('Digite a nota do grau 1: ');
    readln(g1);
    writeln('Digite a nota do grau 2: ');
    readln(g2);
    writeln('Digite a nota da substituicao, -1 se o aluno nao fez: ');
    readln(substituicao);

    if substituicao <> -1 then
    begin
        if (substituicao>g1) and (g1 <=g2)then
            g1:= substituicao
        else if (substituicao>g2) and (g2<=g1)then
            g2:= substituicao;
    end;

    media:=(g1+g2)/2;
    writeln('Media do semestre: ', media:3:2);

    if media >= 6.0 then
        writeln('Aprovado')
    else if media < 3.0 then
        writeln('Reprovado')
    else
        writeln('Exame')
end.