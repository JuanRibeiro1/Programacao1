program exemplo8;

uses crt,math;

var
    valor1,valor2:real;

begin

    writeln('Digite o primeiro valor: ');
    readln(valor1);
    writeln('Digite o segundo valor: ');
    readln(valor2);

    if (valor1>valor2)then
        writeln('Valor um maior: ', valor1:3:2)
    else if (valor2>valor1)then
        writeln('Valor dois maior: ', valor2:3:2)
    else
        writeln('Valores iguais.');
        
end.