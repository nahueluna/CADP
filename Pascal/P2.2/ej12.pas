//1: muy fertil, 2: estandar, 3: arida

{b. ARBA desea procesar información obtenida de imágenes satelitales de campos sembrados con soja en la
provincia de Buenos Aires. De cada campo se lee: localidad, cantidad de hectáreas sembradas y el tipo de zona
(1, 2 ó 3). La lectura finaliza al leer un campo de 900 ha en la localidad ‘Saladillo’, que debe procesarse. El precio
de la soja es de U$S320 por tn. Informar:
● La cantidad de campos de la localidad Tres de Febrero con rendimiento estimado superior a U$S 10.000.
● La localidad del campo con mayor rendimiento económico esperado.
● La localidad del campo con menor rendimiento económico esperado.
● El rendimiento económico promedio.}

program ej12;
const
    precio=320;

procedure RendimientoEconomico (zona:char; hectareas:real; var rendEcon:real);
begin
    case zona of
        '1': rendEcon:= (6*hectareas*precio);
        '2': rendEcon:= (2.6*hectareas*precio);
        '3': rendEcon:= (1.4*hectareas*precio)
        else writeln('El tipo de zona ingresado no es valido');
    end;
                            
end;

function TresdeFebrero(rendEstimado:real):boolean;
begin
    TresdeFebrero:=(rendEstimado>10000);
end;

procedure MayorRendimiento(ubic:string; var ubicMax:string; rendimiento:real; var rendimientoMax:real);
begin
    if(rendimiento>rendimientoMax) then
    begin
        ubicMax:=ubic;
        rendimientoMax:=rendimiento;
    end;
end;

procedure MenorRendimiento(ubicacion:string; var ubicacionMin:string; rend:real; var rendMin:real);
begin
    if (rend<rendMin) then
    begin
        ubicacionMin:=ubicacion;
        rendMin:=rend;
    end;
end;

var
    tipoZona:char;
    localidad, localidadMax, localidadMin:string;
    hectarea, produccion, produccionMax, produccionMin, promedioRend, totalRend:real;
    totalLocalidad, cantTresdeFebrero:integer;
begin
    produccionMax:=-1;
    produccionMin:=99999;
    totalRend:=0;
    totalLocalidad:=0;
    cantTresdeFebrero:=0;

    repeat
        writeln('Ingrese la localidad: '); readln(localidad);
        writeln('Ingrese el tipo de zona (1,2,3): '); readln(tipoZona);
        writeln('Ingrese la cantidad de hectareas: '); readln(hectarea);

        RendimientoEconomico(tipoZona, hectarea, produccion);
        MayorRendimiento(localidad, localidadMax, produccion, produccionMax);
        MenorRendimiento(localidad, localidadMin, produccion, produccionMin);

        if(localidad='Tres de Febrero') then
        begin
            if (TresdeFebrero(produccion)) then
                cantTresdeFebrero:=cantTresdeFebrero+1;
        end;

        totalRend:=totalRend+produccion;
        totalLocalidad:=totalLocalidad+1;
    
    until((localidad='Saladillo') and (hectarea=900));

    promedioRend:=totalRend/totalLocalidad;

    writeln('Los campos en Tres de Febrero con rendimiento mayor a 10.000USD fueron: ',cantTresdeFebrero);
    writeln('El campo con mayor rendimiento esperado esta en: ',localidadMax);
    writeln('El campo con menor rendimiento esperado esta en: ',localidadMin);
    writeln('El rendimiento economico promedio es de: USD',promedioRend:1:2);
end.