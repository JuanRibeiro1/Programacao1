program exemplo11;

uses crt,math;

var
    i: integer;
    escolha,novoCalculo: char;
    nota1,nota2,media:real;
    nome,resultado:string;

begin
    
    
    repeat
    writeln('Digite o nome do aluno: ');
    readln(nome);
    writeln('Digite a nota do grau 1: ');
    readln(nota1);
    writeln('Digite a nota do grau 2: ');
    readln(nota2);

    while (nota1<0) or (nota1>10) do
    begin
        writeln('Nota invalida, digite outra nota do grau 1: ');
        readln(nota1);
    end;
    
    while (nota2<0) or (nota2>10) do
    begin
        writeln('Nota invalida, digite outra nota do grau 2: ');
        readln(nota2);
    end;

    writeln('Os dados estao corretos?(S/N)');
    readln(escolha);

    until (escolha='S');

    media:=(nota1+nota2)/2;

    if media>=6 then
        resultado:='Aprovado';
    if media<3 then
        resultado:='Reprovado';
    if (media>=3) and (media<6) then
        resultado:='Exame';

    clrscr;

    writeln(' Aluno: ', nome);
    for i := 1 to 90 do
    write('-');
    writeln('');
    writeln('1 Avaliacao:', nota1:0:2, '       2 Avaliacao:', nota2:0:2, '       Media:', media:0:2, '                ',resultado);
    for i := 1 to 90 do
    write('-');
    writeln('');
    writeln('OBS: A nota do exame deve ser maior que 6.00 para aprovacao.');

    writeln('Novo calculo? (S/N)');
    readln(novoCalculo);

    repeat
        repeat
            writeln('Digite o nome do aluno: ');
            readln(nome);
            writeln('Digite a nota do grau 1: ');
            readln(nota1);
            writeln('Digite a nota do grau 2: ');
            readln(nota2);

        while (nota1<0) or (nota1>10) do
        begin
            writeln('Nota invalida, digite outra nota do grau 1: ');
            readln(nota1);
        end;
    
        while (nota2<0) or (nota2>10) do
        begin
            writeln('Nota invalida, digite outra nota do grau 2: ');
            readln(nota2);
        end;

        writeln('Os dados estao corretos?(S/N)');
        readln(escolha);

        until (escolha='S');

        media:=(nota1+nota2)/2;

        if media>=6 then
            resultado:='Aprovado';
        if media<3 then
            resultado:='Reprovado';
        if (media>=3) and (media<6) then
            resultado:='Exame';

        clrscr;

        writeln(' Aluno: ', nome);
        for i := 1 to 90 do
            write('-');
            writeln('');
            writeln('1 Avaliacao:', nota1:0:2, '       2 Avaliacao:', nota2:0:2, '       Media:', media:0:2, '                ',resultado);
        for i := 1 to 90 do
            write('-');
            writeln('');
            writeln('OBS: A nota do exame deve ser maior que 6.00 para aprovacao.');

        writeln('Novo calculo? (S/N)');
        readln(novoCalculo);

        until (novoCalculo='N');
        writeln('Fim do programa.');
end.
