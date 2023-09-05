program ej6;
var
    legajo,cantAlu,cantPromMedio,cantPromAlto,cantAluLegajo:integer;
    promedio,porcentajeDestacado:real;
    condicion:boolean;
begin
    condicion:=false;
    cantAlu:=0;
    cantAluLegajo:=0;
    cantPromMedio:=0;
    cantPromAlto:=0;
    write('Ingrese el numero de legajo del alumno: ');
    readln(legajo);
    
    if(legajo<>-1) then
        begin
            write('Ingrese el promedio del alumno: ');
            readln(promedio);
            condicion:=true;
        end;

    while(legajo <> -1) do
        begin
            cantAlu:=cantAlu+1;
            if(legajo<2500) then
                cantAluLegajo:=cantAluLegajo+1;
            if (promedio>6.5) then
                cantPromMedio:=cantPromMedio+1;
            if ((promedio>8.5) and (legajo<2500)) then
                cantPromAlto:=cantPromAlto+1;
            
            write('Ingrese el numero de legajo del alumno: ');
            readln(legajo);
            if(legajo<>-1) then
                begin
                    write('Ingrese el promedio del alumno: ');
                    readln(promedio);
                end;
        end;

    
    if(condicion) then
        begin
            porcentajeDestacado:=(cantPromAlto*100)/cantAluLegajo;

            writeln('La cantidad de alumnos leida fue de: ',cantAlu);
            writeln('La cantidad de alumnos con promedio mayor a 6.5 es de: ',cantPromMedio);
            writeln('El porcentaje de alumnos destacados es de: %',porcentajeDestacado:1:2);
        end;
end.