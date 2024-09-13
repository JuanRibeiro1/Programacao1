program exemplo7;

uses crt,math;

var
    salario,reajuste,porcento,total:real;

begin
    write('Digite o salario atual do colaborador: ');
    readln(salario);
    write('Digite a porcentagem de reajuste: ');
    readln(reajuste);
    porcento:=salario/100;
    total:=porcento*reajuste;
    write('O valor atualizado do salario sera de: ', salario+total:3:2);
end.

