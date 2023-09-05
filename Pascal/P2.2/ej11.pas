{11. Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón
A%B*, donde:
- A es una secuencia de caracteres en la que no existe el carácter ‘$’.
- B es una secuencia con la misma cantidad de caracteres que aparecen en A y en la que aparece a lo sumo
3 veces el carácter ‘@’.
- Los caracteres % y * seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.}

program ej11;

function esA (c1:char):boolean;
begin
    esA:=(c1<>'$');
end;

function esB (c2:char):boolean;
begin
    esB:=(c2='@');
end;

procedure cumpleA (var condicionA:boolean; var longCadena:integer);
var
    caracterA:char;
begin
    longCadena:=0;
    writeln('Ingrese caracteres: '); readln(caracterA);

    while ((caracterA<>'%') and condicionA) do
    begin
        if (not esA(caracterA)) then
            condicionA:=false
        else
            readln(caracterA);
        
        longCadena:=longCadena+1;
    end;
end;

procedure cumpleB (var condicionB:boolean; longCadenaA:integer);
var
    caracterB:char;
    contadorCharEsp, longCadenaB:integer;
begin
    longCadenaB:=1; //El primer caracter se lee fuera del while, asi que el contador empieza en 1 por esa lectura
    contadorCharEsp:=0;
    writeln('Ingrese caracteres: '); readln(caracterB);

    while ((caracterB<>'*') and (longCadenaB<=longCadenaA)) do
    begin
        if(esB(caracterB)) then
            contadorCharEsp:=contadorCharEsp+1;
        
        readln(caracterB);
        longCadenaB:=longCadenaB+1;
    end;

    if((contadorCharEsp>3) or (longCadenaB<>longCadenaA)) then
        condicionB:=false;
end;

var
    condA, condB:boolean;
    longString:integer;
begin
    condA:=true;    //Si no los inicializo aca, B puede no llegar a evaluarse y su condicion no posee valor, por lo que no podria
    condB:=true;    //evaluar que parte del patron falla
    
    cumpleA(condA, longString);

    if(not condA) then
        writeln('El patron falla en A')
    else
        cumpleB(condB, longString);
    
    if(not condB) then
        writeln('El patron falla en B')
    else if (condA and condB) then
        writeln('El patron se cumple');
end.
