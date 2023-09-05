program ej2;
var
    x,y,suma:integer;
begin
    writeln('Ingrese dos numeros:');
    readln(x,y);
    suma:=x+y;
    writeln('La suma de los numeros ingresados (con variable) es: ',suma);

    writeln('La suma de los numeros ingresados (sin variable) es: ',(x+y));
end.