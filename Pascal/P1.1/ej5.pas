program ej5;
var
    num1,num2:real;
    i:integer;
begin
    i:=0;
    writeln('Ingrese dos numeros reales: ');
    readln(num1);
    readln(num2);
    while((num2<>num1*2) and (i<10)) do
        begin
            writeln('Ingrese un numero real: ');
            readln(num2);
            i:=i+1;
        end;
    if(num2<>num1*2) then
        writeln('No se ha ingresado el doble de ',num1:1:2);
end.