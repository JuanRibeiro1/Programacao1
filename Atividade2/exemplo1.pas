program exemplo1;

uses crt;

var
    numero:integer;

begin
    writeln('Digite um numero de 1 a 11: ');
    readln(numero);
    case numero of
        1:writeln('Sul');
        2:writeln('Norte');
        3:writeln('Leste');
        4:writeln('Oeste');
        5,6:writeln('Nordeste');
        7,8,9:writeln('Sudeste');
        10:writeln('Centro-oeste');
        11:writeln('Noroeste');
        else
            writeln('E importado o produto.');
    end;
end.        