program exemplo6;

uses crt,math;

var
    kminicio,kmfinal,preco,litros,recebido,kilometragem,kmlitros,consumo:real;

begin
    write('Digite os kms iniciais: ');
    readln(kminicio);
    write('Digite os kms finais: ');
    readln(kmfinal);
    write('Digite o preco do combustivel: ');
    readln(preco);
    write('Digite os litros gastos: ' );
    readln(litros);
    write('Digite o valor recebido dos cliente: ');
    readln(recebido);
    kilometragem:= kmfinal-kminicio;
    kmlitros:= kilometragem/litros;
    consumo:=kmlitros*preco;
    writeln('Foram percorridos: ',kilometragem:3:2, ' quilometros durante o dia.');
    writeln('Media de: ',kmlitros:3:2, ' quilometros por litro.');
    writeln('Total gasto com gasolina: ',consumo:3:2, ' reais.');
    writeln('O lucro do dia foi de: ',recebido-consumo:3:2 , ' reais.');
end.