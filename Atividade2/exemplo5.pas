program exemplo5;

uses crt,math;

var
    homem1,homem2,mulher1,mulher2:integer;

begin

    writeln('Digite a idade do homem 1: ');
    readln(homem1);
    writeln('Digite a idade do homem 2: ');
    readln(homem2);
    writeln('Digite a idade da mulher 1: ');
    readln(mulher1);
    writeln('Digite a idade da mulher 2: ');
    readln(mulher2);
    
    if (homem1>homem2) and (mulher1>mulher2)then
        writeln('Idade somada: ', homem1+mulher1)
    else if (homem2>homem1) and (mulher2>mulher1)then
        writeln('Idade somada: ', homem2+mulher2)
    else if (homem1>homem2) and (mulher2>mulher1)then
        writeln('Idade somada: ', homem1+mulher2)
    else
        writeln('Idade somada: ', homem2+mulher1);

end.