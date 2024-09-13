program exemplo7;

uses crt,math;

var
    senha,senhadigitada:integer;

begin

    senha:= 12345678;
    writeln('Digite a senha: ');
    readln(senhadigitada);

    if senha = senhadigitada then
        writeln('Acesso autorizado')
    else
        writeln('Acesso negado');

end.