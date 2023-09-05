program alcanceYFunciones;
var
suma, cant : integer;
function calcularPromedio : real;
var
prom : real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;
    calcularPromedio:=prom; //a) Se le debe agregar el retorno
end;
begin
    readln(suma);
    readln(cant);
    if (calcularPromedio <> -1) then begin
        cant := 0;
        writeln('El promedio es: ' , calcularPromedio:1:2);
    end
    else
        writeln('Dividir por cero no parece ser una buena idea');
end.

{
b) Para invocar a la función una única vez, puedo utilizar el valor de la variable "cant" como condición del if.

    ...
    if(cant<>o) then begin
        writeln('El promedio es: ',calcularPromedio);
    end
    else
        writeln('Dividir por cero no parece ser buena idea');
    ...



c) Al ingresar suma="48" y cant="6":
I- El programa principal no imprimirá nada, o lo que tenga guardado en memoria. Esto se debe a que la función no tiene retorno, por lo
que no puede imprimir "prom".
II- El programa con el retorno añadido devuelve "-1". Esto debido a que, dentro del if del programa principal se asigna "cant:=0"
antes de volver a llamar a la función, por lo que dicho valor queda asignado en la variable global y la función trabaja con él.
III- Modificar la condición if del programa principal y quitar "cant:=0" de dentro del mismo me permite imprimir el valor correcto
(48/6=8).
}