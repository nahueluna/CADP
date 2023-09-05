program ej2;
var
    max,num,i,posicion:integer;
begin
    max:=-32768;
    for i:= 1 to 10 do
      begin
        write('Ingrese un numero entero: ');
        readln(num);
        if(num>max) then
            begin
                max:=num;
                posicion:=i;
            end;
      end;
    writeln('El mayor numero ingresado fue: ',max,' en la posicion ',posicion);
end.