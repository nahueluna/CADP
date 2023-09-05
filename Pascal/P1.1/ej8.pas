program ej8;
var
    car1,car2,car3:char;
    contador:integer;
begin
    contador:=0;
    
    writeln('Ingrese tres caracteres: ');
    readln(car1);
    readln(car2);
    readln(car3);

    case (car1) of
        'a':contador:=contador+1;
        'e':contador:=contador+1;
        'i':contador:=contador+1;
        'o':contador:=contador+1;
        'u':contador:=contador+1;
    end;
    case car2 of
        'a':contador:=contador+1;
        'e':contador:=contador+1;
        'i':contador:=contador+1;
        'o':contador:=contador+1;
        'u':contador:=contador+1;
    end;
    case car3 of
        'a':contador:=contador+1;
        'e':contador:=contador+1;
        'i':contador:=contador+1;
        'o':contador:=contador+1;
        'u':contador:=contador+1;
    end;

    if(contador=3) then
        writeln('Los tres caracteres ingresados son vocales')
    else
        writeln('Al menos uno de los caracteres no es vocal');       
end.