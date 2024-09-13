program exemplo9;

uses crt,math;

var
    cont:integer;

begin

    cont:=100;
    while cont<1000 do
    begin
        if (cont/cont=1) then
        cont+=1;
        write(cont, ' ');
    end;
end.