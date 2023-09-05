//Versión 1
program anidamientos;

procedure leer;
var
    letra : char;
    function analizarLetra : boolean
    begin
        if (letra >= ‘a’) and (letra <= ‘z’) then
            analizarLetra := true
        else
            if (letra >= ‘A’) and (letra <= ‘Z’) then
            analizarletra := false;
    end;
begin
    readln(letra);
    if (analizarLetra) then
        writeln(‘Se trata de una minúscula’)
    else
        writeln(‘Se trata de una mayúscula’);
end; 

var
    ok : boolean;
begin
    leer;
    ok := analizarLetra;
    if ok then
    writeln(‘Gracias, vuelva prontosss’);
end.


{
a)
I- Identificamos dos problemas principales:
> Se intenta asignar la función del procedimiento a una variable en el programa principal, pero dicha función es local al proceso,
por lo que no puede utilizarse en el cuerpo principal.
> En caso de que el caracter ingresado no sea una letra mayúscula o minúscula (ej: caracter especial), no se ingresará a ninguno
de los if de la función, por lo que la misma no tendrá retorno.
}

//Version 2
program anidamientos;

function analizarLetra : boolean;
var
    letra : char;
begin
    readln(letra);
    if (letra >= 'a') and (letra <= 'z') then
        analizarLetra := true
    else
        if (letra >= 'A') and (letra <= 'Z') then
            analizarletra := false;
end;

procedure leer;
begin
    if (analizarLetra) then
        writeln('Se trata de una minúscula')
    else
        writeln('Se trata de una mayúscula');
end; 

var
    ok : boolean;
begin
    leer;
    ok := analizarLetra;
    if ok then
    writeln('Gracias, vuelva prontosss');
end.

{
II- El problema puede resolverse declarando la función "analizarLetra" fuera del proceso. Dicha función será la encargada de leer
la variable "letra" (aunque leer dentro de una función no sea una práctica que se recomiende).
Luego, el proceso llamará a la función y la utilizará en sus condiciones tal como está expresado.

b)
I- Como se mencionó anteriormente, la función no tiene en cuenta los caracteres especiales y los digitos.
II- Cuando se ingrese alguno de estos caracteres, la función no tendrá retorno, por lo que este dependerá del valor por defecto
que le asigne el compilador.
III- Se puede solucionar teniendo en cuenta dichos caracteres en la condición del if. Para ello, se requerirá una función que permita
mas de dos posibles estados/valores.
}

//Versión 3
program anidamientos;

function analizarLetra : integer;
var
    letra : char;
    opcion: integer;
begin
    readln(letra);
    if (letra >= 'a') and (letra <= 'z') then
        opcion:= 0
    else if (letra >= 'A') and (letra <= 'Z') then
        opcion:= 1
    else if (letra>='0') and (letra<='9') then
        opcion:=2
    else
        opcion:=3;
    analizarLetra:=opcion;
end;

procedure leer;
var
    condicion:integer;
begin
    condicion:=analizarLetra;   //Se asigna el retorno de la funcion a "condicion". 
    if (condicion=0) then       //Si se usa la misma función para comparar, esta se ejecuta multiples veces, perdiendo lo ingresado.
        writeln('Se trata de una minuscula')
    else if (condicion=1) then
        writeln('Se trata de una mayuscula')
    else if (condicion=2) then
        writeln('Se trata de un digito')
    else
        writeln('Se trata de un caracter especial');
end; 

var
    caracter:integer;
begin
    leer;
    caracter:= analizarLetra;
    if (caracter=0) then
    writeln('Gracias, vuelva prontosss');
end.