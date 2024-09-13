program exemplo10;

uses crt,math;

var
    numeroDigitado,numeroMaisAlto,numeroMenor,contador:integer;

begin

    contador:=0;
    numeroMaisAlto:=0;

    writeln('Digite um numero inteiro maior que 0, quando quiser terminar digite "0".');
    readln(numeroDigitado);

    while numeroDigitado<0 do
    begin
        writeln('Numero invalido, digite outro numero: ');
        readln(numeroDigitado);
    end;


    if (numeroDigitado>0) then
    begin
        while numeroDigitado>0 do
        begin
            contador:=contador + 1;
            writeln('Digite outro numero: ');
            readln(numeroDigitado);
        if (numeroDigitado>numeroMaisAlto) then
        begin
            numeroMaisAlto:= numeroDigitado;
        end;
        if (numeroDigitado<numeroMenor) then
        begin
            numeroMenor:= numeroDigitado;
        end;
        end;
    end;
    
    if (numeroDigitado=0) then
    begin
        writeln('Numero mais alto digitado: ', numeroMaisAlto);
        writeln('Menor numero digitado: ', numeroMenor);
        writeln('Contador de numeros: ',contador);
    end;    
end.