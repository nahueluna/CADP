program ej4;
var
    num,min1,min2:integer;
begin
    min1:=32767;
    min2:=32767;

    write('Ingrese un numero entero o 0 para finalizar: '); readln(num);

    while (num<>0) do
        begin
            if(num<min1) then
                begin
                    min2:=min1;
                    min1:=num;
                end
            else if (num<min2) then
                min2:=num;

            write('Ingrese un numero entero o 0 para finalizar: '); readln(num);
        end;
    if(min1=32767) then
        min1:=0;
    
    if(min2=32767) then
        min2:=0; 
    writeln('Los dos minimos guardados son: ',min1,' y ',min2);
end.