program ej4;
var
    num1,num2:real;
begin
    writeln('Ingrese dos numeros reales: ');
    readln(num1);
    readln(num2);

    while(num2 <> (num1*2)) do
        begin
            write('Ingrese un numero real: ');
            readln(num2);
        end;
end.