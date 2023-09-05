program ej1;
var
    num,resultado,i,cantNum:integer;
begin
    resultado:=0;
    cantNum:=0;
    for i:= 1 to 10 do
      begin
        write('Ingrese un numero entero: ');
        readln(num);
        resultado:=resultado+num;
        
        if(num>5) then
            cantNum:=cantNum+1;
      end;
    writeln('La suma de numeros ingresados es: ',resultado); writeln('La cantidad de numeros mayores a 5 fueron: ',cantNum);
end.