{$codepage utf8}
program comanda;

uses crt, math;

var
    nomeCliente, opcaoSelecionada: string;
    i, codigoItem, quantidadeDesejada, totalPedido: integer;
    valorPastel, valorPizza, valorPao, valorCafe, valorSuco, valorTotal, valorPago, valorTroco: real;

begin
    writeln('Digite o nome do cliente: ');
    readln(nomeCliente);
    
    totalPedido := 0;
    valorTotal := 0;

    repeat
        clrscr; { Limpa a tela }

        { Desenho da linha superior }
        gotoxy(5, 2); write('+'); for i := 1 to 38 do write('-'); write('+');
        gotoxy(5, 3); write('| Código |   Item    |  Valor unitário |');
        { Desenho da linha separadora }
        gotoxy(5, 4); write('+'); for i := 1 to 38 do write('-'); write('+');
        gotoxy(5, 5); write('|    10  |  PASTEL   |    R$ 6.00      |');
        gotoxy(5, 6); write('|    11  |  PIZZA    |    R$ 4.50      |');
        gotoxy(5, 7); write('|    12  |  PÃO      |    R$ 0.15      |');
        gotoxy(5, 8); write('|    13  |  CAFÉ     |    R$ 4.00      |');
        gotoxy(5, 9); write('|    14  |  SUCO     |    R$ 3.00      |');
        { Desenho da linha inferior }
        gotoxy(5, 10); write('+'); for i := 1 to 38 do write('-'); writeln('+');

        { Escolhe código do item e valida }
        writeln('Digite o código do item que deseja: ');
        readln(codigoItem);
        while (codigoItem > 14) or (codigoItem < 10) do
        begin
            writeln('Código inválido, digite outro código: ');
            readln(codigoItem);
        end;

        { Escolhe a quantidade e valida }
        writeln('Digite a quantidade desejada: ');
        readln(quantidadeDesejada);
        while (quantidadeDesejada <= 0) do
        begin
            writeln('Quantidade mínima é 1, digite outro valor: ');
            readln(quantidadeDesejada);
        end;

        { Atualiza o valor total do pedido com base no item selecionado }
        case codigoItem of
            10: begin
                valorPastel := quantidadeDesejada * 6;
                writeln('Produto: Pastel');
                writeln('Quantidade: ', quantidadeDesejada);
                writeln('Valor total: R$ ', valorPastel:0:2);
                valorTotal := valorTotal + valorPastel;
                totalPedido := totalPedido + quantidadeDesejada;
            end;
            11: begin
                valorPizza := quantidadeDesejada * 4.5;
                writeln('Produto: Pizza');
                writeln('Quantidade: ', quantidadeDesejada);
                writeln('Valor total: R$ ', valorPizza:0:2);
                valorTotal := valorTotal + valorPizza;
                totalPedido := totalPedido + quantidadeDesejada;
            end;
            12: begin
                valorPao := quantidadeDesejada * 0.15;
                writeln('Produto: Pão');
                writeln('Quantidade: ', quantidadeDesejada);
                writeln('Valor total: R$ ', valorPao:0:2);
                valorTotal := valorTotal + valorPao;
                totalPedido := totalPedido + quantidadeDesejada;
            end;
            13: begin
                valorCafe := quantidadeDesejada * 4;
                writeln('Produto: Café');
                writeln('Quantidade: ', quantidadeDesejada);
                writeln('Valor total: R$ ', valorCafe:0:2);
                valorTotal := valorTotal + valorCafe;
                totalPedido := totalPedido + quantidadeDesejada;
            end;
            14: begin
                valorSuco := quantidadeDesejada * 3;
                writeln('Produto: Suco');
                writeln('Quantidade: ', quantidadeDesejada);
                writeln('Valor total: R$ ', valorSuco:0:2);
                valorTotal := valorTotal + valorSuco;
                totalPedido := totalPedido + quantidadeDesejada;
            end;
        end;

        writeln('Digite a operação que deseja fazer: Incluir item no pedido (I), Finalizar pedido e mostrar o total (F), Sair do programa (S).');
        readln(opcaoSelecionada);

    {Finaliza a adição de itens}
    until UpCase(opcaoSelecionada) = 'F'; 
    clrscr;
    if UpCase(opcaoSelecionada) = 'F' then
    begin
        writeln('Nome do cliente: ', nomeCliente);
        writeln('Total de itens no pedido: ', totalPedido);
        writeln('Total a pagar: R$ ', valorTotal:0:2);
        writeln('__________________________________');
        write('Valor pago pelo cliente: R$ ');
        readln(valorPago);
        valorTroco := valorPago - valorTotal;
        
        while valorTroco < 0 do
        begin
            write('Valor insuficiente, digite outro valor: R$ ');
            readln(valorPago);
            valorTroco := valorPago - valorTotal;
        end;

        writeln('Valor do troco: R$ ', valorTroco:0:2 );
    end;

    if UpCase(opcaoSelecionada) = 'S' then
        writeln('Saindo do programa...');
end.
