//Programa 1
program alcance4a;
var a,b: integer;
procedure uno;
    begin
        a := 1;
        writeln(a);
    end;
begin
    a:= 1;
    b:= 2;
    uno;
    writeln(b, a);
end.

{
Variables "a" y "b" globales. En el cuerpo del programa se asigna "a:=1" y "b:=2". Se invoca el proceso, se asigna "a:=1" y se imprime
dicho valor. Luego se retorna al programa principal, se imprime "2" como estableció el cuerpo principal el valor de b y "1" como
estableció el proceso para "a" (aunque en este caso el programa principal le da el mismo valor, es el proceso el último en modificar
la variable global).
}

//Programa 2
program alcance4b;
procedure uno;
    begin
        a := 1;
        writeln(a);
    end;
var a,b: integer;
begin
    a:= 1;
    b:= 2;
    uno;
    writeln(b, a);
end.

{
Variables "a" y "b" locales del cuerpo del programa. Comienza la ejecución del código, le asigno "a:=1"
y "b:=2" a las variables locales del cuerpo principal. Luego invoco el proceso, que establece "a:=1". Sin embargo, no existe variable
local del proceso, parámetro ni variable global "a", por lo que constituye un error que impedirá la compilación del código.
}

{
La diferencia entre uno y otro es que en el primero se declaran variables globales, por lo que la asignación de valor dentro del
proceso y el cuerpo principal están permitidas. En el segundo, las variables son locales al programa principal, por lo que la asignación
de valor solo se puede hacer mediante este. Cuando intenta hacerlo el proceso, se encuentra con que no hay ninguna variable que pueda
modificar.
}