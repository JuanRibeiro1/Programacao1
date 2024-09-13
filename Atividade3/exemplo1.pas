program exemplo1;

uses crt,math;

var num1,num2:real;

begin

    writeln('Digite um numero: ');
    readln(num1);
    writeln('Digite outro numero: ');
    readln(num2);

    while num2<=0 do
    begin
        writeln('Numero invalido, digite outro numero: ');
        readln(num2);
    end;

    writeln('Valor da divisao: ', num1/num2:3:2);

end.