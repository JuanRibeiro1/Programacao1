program exemplo6;

var
  nome, nomeMaisAlta: String;
  altura, alturaMaisAlta: Real;
  numeroMocas: Integer;

begin
  alturaMaisAlta := 0.0;
  numeroMocas := 0;
  nomeMaisAlta := '';

  repeat
    writeln('Digite o primeiro nome da modelo (ou FIM para encerrar):');
    readln(nome);

    if UpCase(nome) <> 'FIM' then
    begin
      writeln('Digite a altura da modelo (em metros):');
      readln(altura);
      
      numeroMocas := numeroMocas + 1;

      if altura > alturaMaisAlta then
      begin
        alturaMaisAlta := altura;
        nomeMaisAlta := nome;
      end;
    end;

  until UpCase(nome) = 'FIM';

  if numeroMocas > 0 then
  begin
    writeln('A modelo mais alta e: ', nomeMaisAlta, ' com ', alturaMaisAlta:0:2, ' metros.');
    writeln('Numero total de modelos no concurso: ', numeroMocas);
  end
  else
    writeln('Nenhuma modelo foi inscrita no concurso.');

end.
