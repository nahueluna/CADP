program ej3;
var
    nota,alumDestacado,alumAprobado:integer;
    nombre:string;
begin
    alumAprobado:=0;
    alumDestacado:=0;
    repeat
        write('Ingrese el nombre del alumno: '); readln(nombre);
        write('Ingrese la nota del alumno: '); readln(nota);
        if((nota>=1) and (nota<=10)) then
            begin
                if(nota>=8) then
                    alumDestacado:=alumDestacado+1
                else if(nota=7) then
                    alumAprobado:=alumAprobado+1;
            end
        else
            writeln('La nota ingresada no es valida. Ingrese nuevamente.');
    until (nombre='Zidane Zinedine');

    writeln('La cantidad de alumnos con nota 7 es de: ',alumAprobado);
    writeln('La cantidad de alumnos con nota 8 o mayor es de: ',alumDestacado);
end.