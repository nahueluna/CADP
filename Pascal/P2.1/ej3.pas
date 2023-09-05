program alcance3;
var a: integer;
procedure uno;
var b: integer;
    begin
        b:= 2;
        writeln(b);
    end;
begin
    a:= 1;
    uno;
    writeln(a, b);
end.

{
Declarada variable global "a" y variable local al proceso "b". Comienza la ejecución del programa, se le asigna "a:=1" a la 
variable global (pues no hay variable local). Luego se invoca el procedimiento, se establece "b:=2" para la variable local del mismo, y
se imprime dicho valor. Luego se vuelve al programa, se imprime el valor "a:=1" de la variable global y, cuando intenta imprimir "b",
se encuentra que esta no existe en memoria, pues fue declarada en el procedimiento, pero una vez terminó su ejecución se borró de
memoria. Por ello el compilador detecta error.
}
