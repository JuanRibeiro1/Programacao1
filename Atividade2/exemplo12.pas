program exemplo12;

uses crt,math;

var
    nome:string;
    idade:integer;

begin

    writeln('Digite o nome do nadador: ');
    readln(nome);
    writeln('Digite a idade do nadador: ');
    readln(idade);

    case idade of
        5..7:writeln(nome, ' e da Categoria Infantil A.');
        8..10:writeln(nome, ' e da categoria Infantil B.');
        11..13:writeln(nome, ' e da categoria Juvenil A.');
        14..17:writeln(nome, ' e da categoria Juvenil B.');
        18..60:writeln(nome, ' e da categoria Adulto.');
    else
        writeln('Nao compete.');
    end;

end.