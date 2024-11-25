program CalculoMediaViagem;

{$codepage utf8}

uses crt;

{ Declaração do módulo para calcular a média }
function MediaViagem(km: real; horas: real): real;
begin
    if horas = 0 then
    begin
        writeln('Erro: O número de horas não pode ser zero.');
        MediaViagem := 0;
    end
    else
        MediaViagem := km / horas;
end;

var
    quilometros, horas, media: real;

begin
    clrscr;  { Limpa a tela }

    writeln('=== Cálculo da Média de Velocidade ===');
    writeln;

    { Entrada de dados }
    write('Digite a quantidade total de quilômetros percorridos (Km): ');
    readln(quilometros);

    write('Digite o número total de horas gastas (H): ');
    readln(horas);

    { Chamada do módulo para calcular a média }
    media := MediaViagem(quilometros, horas);

    { Exibição do resultado }
    if media > 0 then
    begin
        writeln;
        writeln('A média de velocidade foi de: ', media:0:2, ' Km/H');
    end;

    writeln;
    writeln('Fim do programa. Obrigado!');
end.
