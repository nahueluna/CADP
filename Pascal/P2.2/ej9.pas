{9. Realizar un programa modularizado que lea información de alumnos de una facultad. Para cada alumno se
lee: número de inscripción, apellido y nombre. La lectura finaliza cuando se ingresa el alumno con número de
inscripción 1200, que debe procesarse. Se pide calcular e informar:
● Apellido de los dos alumnos con número de inscripción más chico.
● Nombre de los dos alumnos con número de inscripción más grande.
● Porcentaje de alumnos con nro de inscripción par}

//Inicializar minimos y maximos en el programa principal

program ej9;

procedure Inscripcion_minimos (apellido:string; var apellido_min1:string; var apellido_min2: string; inscripcion:integer; var inscripcion_min1:integer; var inscripcion_min2: integer);
begin
    if(inscripcion<inscripcion_min1) then
    begin
        inscripcion_min2:=inscripcion_min1;
        inscripcion_min1:=inscripcion;

        apellido_min2:=apellido_min1;
        apellido_min1:=apellido;
    end
    else if (inscripcion<inscripcion_min2) then
    begin
        inscripcion_min2:=inscripcion;
        apellido_min2:=apellido;
    end;
end;

procedure Inscripcion_maximos (nombre:string; var nombre_max1:string; var nombre_max2: string; insNum:integer; var inscripcion_max1:integer; var inscripcion_max2: integer);
begin
    if(insNum>inscripcion_max1) then
    begin
        inscripcion_max2:=inscripcion_max1;
        inscripcion_max1:=insNum;

        nombre_max2:=nombre_max1;
        nombre_max1:=nombre;
    end
    else if (insNum>inscripcion_max2) then
    begin
        inscripcion_max2:=insNum;
        nombre_max2:=nombre;
    end;
end;

function Inscripcion_par (numIns:integer):boolean;
begin
    Inscripcion_par:=((numIns MOD 2)=0);
end;

var
    nombreAlum, apellidoAlum, nombreAlum_max1, nombreAlum_max2, apellidoAlum_min1, apellidoAlum_min2: string;
    numero_inscripcion, maxIns1, maxIns2, minIns1, minIns2, insPar, cantAlum:integer;
    porcentajePar:real;

begin
    nombreAlum_max1:='';
    apellidoAlum_min1:='';
    maxIns1:=-1;
    minIns1:=32000;
    insPar:=0;
    cantAlum:=0;

    repeat
        writeln('Ingrese nombre del alumno: '); readln(nombreAlum);
        writeln('Ingrese apellido del alumno: '); readln(apellidoAlum);
        writeln('Ingrese numero de inscripcion: '); readln(numero_inscripcion);

        Inscripcion_minimos(apellidoAlum, apellidoAlum_min1, apellidoAlum_min2, numero_inscripcion, minIns1, minIns2);
        Inscripcion_maximos(nombreAlum, nombreAlum_max1, nombreAlum_max2, numero_inscripcion, maxIns1, maxIns2);

        if(Inscripcion_par(numero_inscripcion)) then
            insPar:=insPar+1;

        cantAlum:=cantAlum+1;
    until (numero_inscripcion=1200);

    porcentajePar:=(insPar/cantAlum)*100;

    writeln('Los alumnos con menor numero de inscripcion son: ',apellidoAlum_min1,' y ',apellidoAlum_min2);
    writeln('Los alumnos con mayor numero de inscripcion son: ',nombreAlum_max1, ' y ',nombreAlum_max2);
    writeln('El porcentaje de alumnos con inscripcion par es del: %',porcentajePar:1:2);

end.
