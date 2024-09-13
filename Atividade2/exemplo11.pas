program exemplo11;

uses crt,math;

var
    fah,cel,escolha,temperaturaAtual,temperaturaNova:real;

begin

    writeln('Para converter Celsius em Fahrenheit digite 1, Fahrenheit em Celsius 2: ');
    readln(escolha);
    writeln('Digite a temperatura que deseja converter: ');
    readln(temperaturaAtual);

    if escolha = 1 then
        temperaturaNova:= (temperaturaAtual*1.8)+32
    else if escolha = 2 then
        temperaturaNova:= (temperaturaAtual-32)/1.8
    else
        writeln('Valor de conversao invalido.');

    if escolha = 1 then
        writeln('Temperatura em Fahrenheit e: ', temperaturaNova:3:2)
    else if escolha = 2 then
        writeln('Temperatura em Celsius e: ', temperaturaNova:3:2);

end.