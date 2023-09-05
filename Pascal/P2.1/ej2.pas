program alcance2;
var a,b: integer;
procedure uno;
    begin
        b := 3;
        writeln(b);
    end;
begin
    a:= 1;
    b:= 2;
    uno;
    writeln(b, a);
end.

{
A diferencia del primer programa, el proceso no declaró una variable local. Únicamente están las variables globales "a" y "b". Comienza
la ejecución del programa, se le asigna "a:=1" y "b:=2" a las variables globales. Luego se llama al proceso y se le asigna el valor 3
a la variable "b". Debido a que no hay variable local ni parámetro, el valor se asigna a la variable global. A continuación se imprime.
Luego se retorna al cuerpo del programa, imprimiendo "a" y "b". Dicha b, siendo la variable global, ahora posee el valor que fue
guardado durante la ejecución del proceso, por lo que el asignado anteriormente en el programa principal fue sobreescrito. Por lo tanto,
se imprime 3, 3, 1.
}
