program alcance1;
var a,b: integer;
procedure uno;
    var b: integer;
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
El programa tiene declarado las variables "a" y "b" como globales y enteras. Luego tenemos el proceso "uno" donde se declara una
variable local al proceso llamada "b". Comienza la ejecución del programa y se le asigna el valor 1 y 2 a las variables "a" y "b"
respectivamente. El programa intenta hallar una variable local con esos nombres. Como no las encuentra, asigna dichos valores a las
variables globales. Luego se invoca y ejecuta el proceso "uno", donde se asigna "b:=8" a la variable local al mismo. Luego se la
imprime. Finalmente, se ejecuta la sentencia siguiente a la invocación del proceso, imprimiendo los valores de las variables globales
"a" y "b". Por lo tanto, se imprime 3, 2, 1 en ese orden.
}