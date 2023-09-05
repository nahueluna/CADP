program alcance4;
function cuatro: integer;
    begin
        cuatro:= 4;
    end;
var a: integer;
begin
    cuatro;
    writeln(a);
end.

{
El programa se compone de una función "cuatro" que retorna un entero, definido en el código. Luego, se declara una variable local "a" 
en el cuerpo del programa. Se llama a la función "cuatro" y se imprime "a". Podemos hallar dos problemas:
1- La función no está siendo asignada a una variable o utilizada en una estructura de control, por lo que, aunque el compilador no
detecte error por ello, no es una práctica recomendable, pues el retorno de la función resulta inutil.
2- Se intenta escribir "a", pero esta no fue inicializada. El compilador le asigna por defecto el valor 0, pero se emite una advertencia
acerca de ello. 
}
