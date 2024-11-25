program LojaDeGames;

{$codepage utf8}
uses crt;

type
    TProduto = record
        codigo: integer;
        nome: string[50];
        descricao: string[100];
        preco: real;
    end;

var
    produtos: array[1..500] of TProduto;
    i, totalProdutos: integer;
    cadastrarNovo: char;

begin
    totalProdutos := 0;
    cadastrarNovo := 'S';

    writeln('=== Sistema de Cadastro de Produtos ===');

    while (UpCase(cadastrarNovo) = 'S') and (totalProdutos < 500) do
    begin
        clrscr;  { Limpa a tela para cada novo cadastro }

        { Incrementa o índice do produto }
        totalProdutos := totalProdutos + 1;
        i := totalProdutos;

        writeln('Cadastro do Produto ', i);
        writeln('========================');

        { Leitura dos dados do produto }
        writeln('Digite o código do jogo: ');
        readln(produtos[i].codigo);
        
        writeln('Digite o nome do jogo: ');
        readln(produtos[i].nome);
        
        writeln('Digite a descrição do jogo: ');
        readln(produtos[i].descricao);
        
        writeln('Digite o preço do jogo (em R$): ');
        readln(produtos[i].preco);

        { Pergunta se deseja cadastrar outro produto }
        writeln;
        writeln('Cadastrar novo produto (S/N)?');
        readln(cadastrarNovo);
    end;

    clrscr;  { Limpa a tela para exibir o resumo final }
    
    { Impressão dos produtos cadastrados }
    writeln('=== Produtos Cadastrados ===');
    writeln('Total de produtos cadastrados: ', totalProdutos);
    writeln('==============================');
    
    for i := 1 to totalProdutos do
    begin
        writeln('Produto ', i, ':');
        writeln('  Código: ', produtos[i].codigo);
        writeln('  Nome: ', produtos[i].nome);
        writeln('  Descrição: ', produtos[i].descricao);
        writeln('  Preço: R$ ', produtos[i].preco:0:2);
        writeln('------------------------------');
    end;

    writeln('Fim do programa. Obrigado por usar o sistema!');
end.