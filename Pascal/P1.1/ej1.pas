program ej1;
var
    x,y:integer;
begin
    writeln('Ingrese dos numeros enteros: ');
    readln(x);
    readln(y);

    if(x>y) then
        writeln(x,' es el mayor.')
    else
        begin
            if(x<y) then
                writeln(y,' es el mayor.')
            else
                writeln('Ambos numeros son iguales.');
        end;
end.