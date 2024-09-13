program exemplo9;

uses crt,math;

var
    metros,voltas,abastecimento,consumo,kmstotais,litros,consumodocarro,totalkms:real;

begin
    write('Digite o tamanho da pista: ');
    readln(metros);
    write('Digite o numero de voltas da corrida: ');
    readln(voltas);
    write('Digite o numero desejado de abastecimentos: ');
    readln(abastecimento);
    write('Digite a media de kms por litro do veiculo: ');
    readln(consumo);
    totalkms:=metros*voltas;
    consumodocarro:=totalkms/consumo;
    litros:=consumodocarro/abastecimento;
    write('E preciso abastecer ',litros:3:2,' litros ate o primeiro abastecimento.');
end.