program exemplo5;

uses crt,math;

var 
    comp,larg,alt,espaco,caixas:real ;

begin
    write('Digite o comprimento do comodo: ');
    readln(comp);
    write('Digite a largura do comodo: ');
    readln(larg);
    write('digite a altura do comodo: ');
    readln(alt);
    espaco:= comp*larg*alt;
    caixas:= espaco/1.5;
    write('Sao necessarias ', caixas:3:2 ,' caixas de azulejos');
	readkey;
end.