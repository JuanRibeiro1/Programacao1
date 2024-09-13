program exemplo9;

uses crt,math;

var
    atual,maximo,minimo,media:real;

begin

    writeln('Digite o valor atual em estoque: ');
    readln(atual);
    writeln('Digite o valor maximo em estoque: ');
    readln(maximo);
    writeln('Digite o valor minimo em estoque: ');
    readln(minimo);

    media:=(maximo+minimo)/2;
    writeln('Media do estoque: ', media:3:2);

    if atual>=media then
    writeln('Nao precisa ser feito compra: ', media:3:2)
    else 
        writeln('Estoque hoje: ', atual:3:2, ', efetuar compra.');
end.    