program VerificaFinanciamento;

{$codepage utf8}

uses crt;

{ Declaração do módulo para testar o financiamento }
function TestaFinanciamento(salario, financiamento: real): string;
begin
    if financiamento <= 5 * salario then
        TestaFinanciamento := 'Financiamento Concedido'
    else
        TestaFinanciamento := 'Financiamento Negado';
end;

var
    salario, financiamento: real;
    resultado: string;

begin
    clrscr;  { Limpa a tela }

    writeln('=== Verificação de Financiamento ===');
    writeln;

    { Entrada dos dados }
    write('Digite o valor do salário: R$ ');
    readln(salario);
    write('Digite o valor do financiamento pretendido: R$ ');
    readln(financiamento);

    { Chamada do módulo para testar o financiamento }
    resultado := TestaFinanciamento(salario, financiamento);

    { Exibição do resultado }
    writeln;
    writeln('Resultado: ', resultado);

    writeln;
    writeln('Fim do programa. Obrigado!');
end.
