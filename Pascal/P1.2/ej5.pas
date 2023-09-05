program ej5;
var
    num,resultado,min,max:integer;
begin
    resultado:=0;
    min:=32767;
    max:=-32768;

    repeat
        write('Ingrese un numero entero: '); readln(num);

        resultado:=resultado+num;
        if(num>max) then
            max:=num;
        if(num<min) then
            min:=num;
    until(num=100);

    writeln('El menor numero ingresado fue: ',min); writeln('El mayor numero ingresado fue: ',max); 
    writeln('La suma de numeros ingresados es: ',resultado);
end.