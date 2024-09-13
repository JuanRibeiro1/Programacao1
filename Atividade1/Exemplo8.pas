program exemplo6;

uses crt,math;

var a,b,temp:real;

begin
    write('Digite o valor de A: ');
    readln(a);
    write('Digite o valor de B: ');
    readln(b);
    writeln('O valor atual de A e: ',a:3:2,', o valor atual de B e: ',b:3:2);
    temp:=a;
    a:= b;
    b:=temp;
    write('O novo valor de A e: ',a:3:2,' o novo valor de B e: ',b:3:2);
end.