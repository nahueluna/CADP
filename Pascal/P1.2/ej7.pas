program ej7;
const
    autos=5;
var
    nombre,piloto_alto1,piloto_alto2,piloto_bajo1,piloto_bajo2:string;
    tiempo,tiempo_min1,tiempo_min2,tiempo_max1,tiempo_max2:real;
    i:integer;
begin
    tiempo_min1:=999;
    tiempo_min2:=999;
    tiempo_max1:=-1;
    tiempo_max2:=-1;
    piloto_alto1:='';
    piloto_bajo1:='';

    for i:= 1 to autos do
        begin
            write('Ingrese el nombre del piloto: '); readln(nombre);
            write('Ingrese el tiempo en el que finalizo la carrera: '); readln(tiempo);

            //Guardo nombres y tiempos de los dos pilotos con mayor tiempo (ultimos)
            if(tiempo>tiempo_max1) then
                begin
                    piloto_alto2:= piloto_alto1;
                    piloto_alto1:= nombre;

                    tiempo_max2:=tiempo_max1;
                    tiempo_max1:=tiempo;
                end
            else if (tiempo>tiempo_max2) then
                begin
                    piloto_alto2:=nombre;

                    tiempo_max2:=tiempo;
                end;

            //Guardo nombres y tiempos de los dos pilotos con menor tiempo (primeros)
            if(tiempo<tiempo_min1) then
                begin
                    piloto_bajo2:= piloto_bajo1;
                    piloto_bajo1:= nombre;

                    tiempo_min2:= tiempo_min1;
                    tiempo_min1:=tiempo;
                end
            else if (tiempo<tiempo_min2) then
                begin
                    piloto_bajo2:=nombre;

                    tiempo_min2:=tiempo;
                end;            
        end;

        writeln('Los dos pilotos en los primeros puestos son: ',piloto_bajo1,' y ',piloto_bajo2);
        writeln('Los dos pilotos en los ultimos puestos son: ',piloto_alto2,' y ',piloto_alto1);
end.