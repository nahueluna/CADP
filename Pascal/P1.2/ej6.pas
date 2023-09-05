program ej6;
const
    numero_productos= 200;
var
    codigo, i, cantProducto:integer;
    numero_correcto:boolean;
    precio, min1, min2:real;
begin
    cantProducto:=0;
    min1:=32767;
    numero_correcto:=true;

    for i:= 1 to numero_productos do
        begin
            //Bucle para preguntar codigo. Si se ingresa uno erroneo, se itera la pregunta sin agotar repeticiones del for
            while(numero_correcto) do 
                begin
                    write('Ingrese el codigo del producto: '); readln(codigo);
                    if((codigo<1) or (codigo>200)) then
                        writeln('El codigo ingresado no es valido. Intente nuevamente.')
                    else
                        numero_correcto:=false;
                end;
            numero_correcto:=true;
            write('Ingrese precio del producto: '); readln(precio);

            //Calculo de minimo 1 y minimo 2
            if(precio<min1) then
                begin
                    min2:=min1;
                    min1:=precio;
                end
            else if (precio<min2) then
                min2:=precio;
            
            //Contador de productos mayores a 16 pesos con codigo par
            if((precio>16) and (codigo MOD 2=0)) then
                cantProducto:=cantProducto+1;
        end;

        writeln('Los dos precios minimos son: $',min1:1:2, ' y $',min2:1:2);
        writeln('La cantidad de productos con precio mayor a $16 y codigo par es: ',cantProducto);
end.