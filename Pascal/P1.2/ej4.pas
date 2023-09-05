program ej4;
var
    num,i,min1,min2:integer;
begin
    min1:=32767;
    min2:=32766;

    for i:= 1 to 1000 do
        begin
            write('Ingrese un numero entero: '); readln(num);

            if(num<min1) then
                begin
                    min2:=min1;
                    min1:=num;
                end
            else if (num<min2) then
                min2:=num;
        end;
        writeln('Los dos minimos guardados son: ',min1,' y ',min2);
end.