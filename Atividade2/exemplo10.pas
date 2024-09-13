program exemplo10;

uses crt,math;

var
    numeroConta,saldo,debito,credito,saldoAtual:real;

begin

    writeln('Digite o numero da conta: ');
    readln(numeroConta);
    writeln('Digite o debito da conta: ');
    readln(debito);
    writeln('Digite o credito da conta: ');
    readln(credito);

    saldo:=2000;

    saldoAtual:=(saldo+credito-debito);
    writeln('Saldo atual:', saldoAtual:3:2);
    
    if saldoAtual>=0 then
                writeln('SALDO POSITIVO =)')
            else
                writeln('SALDO NEGATIVO =(');
end.