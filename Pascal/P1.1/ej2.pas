program ej2;
var
    x:real;
begin
    write('Ingrese un numero real: ');
    readln(x);

    if(x>=0) then
        writeln('|',x:1:2,'| = ',x:1:2)
    else
        writeln('|',x:1:2,'| = ',x*-1:1:2);
end.