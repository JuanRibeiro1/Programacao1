program exemplo13;

uses crt,math;

var
    comum,funcionario,vip,totalCompra,codCliente,desconto:real;

begin

    writeln('Digite o valor total da compra: ');
    readln(totalCompra);
    writeln('Digite o codigo do cliente, 1 cliente comum, 2 funcionario e 3 cliente VIP');
    readln(codCliente);
    
    if codCliente = 2 then
    begin
        desconto:= (totalCompra/100)*10;
        writeln('Desconto de: ', desconto:3:2);
        write('Total com desconto: ', totalCompra-desconto:3:2);
    end

    else if codCliente = 3 then
    begin
        desconto:=(totalCompra/100)*5;
        writeln('Desconto de: ', desconto:3:2);
        writeln('Total com desconto: ', totalCompra-desconto:3:2);
    end
    
    else
        writeln('Total da compra: ', totalCompra:3:2);
end.