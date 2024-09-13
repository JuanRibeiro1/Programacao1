program exemplo4;

uses crt,math;

var
    valor1,valor2,valor3:integer;

begin

    writeln('Digite um valor inteiro: ');
    readln(valor1);
    writeln('Digite mais um valor inteiro: ');
    readln(valor2);
    writeln('Digite mais um valor inteiro: ');
    readln(valor3);

    if (valor1>valor2) and (valor1>valor3)then
        writeln('Maior valor: ', valor1)
    else if (valor2>valor1) and (valor2>valor3)then
        writeln('Maior valor: ',valor2)
    else
        writeln('Maior valor: ',valor3)

end.