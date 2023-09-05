{10. Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el patrón
A$B#, donde:
- A es una secuencia de sólo letras vocales
- B es una secuencia de sólo caracteres alfabéticos sin letras vocales
- los caracteres $ y # seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió}

//Funciones para evaluar A y B.
//Procesos para leer y verificar donde falla

program ej10;

function esVocal (c1:char):boolean;
begin
    esVocal:=((c1='a') or (c1='A') or (c1='e') or (c1='E') or (c1='i') or (c1='I') or (c1= 'o') or (c1='O') or (c1='u') or (c1='U'));
end;

function esConsonante (c2:char):boolean;
var
    ok:boolean;
begin
    
    ok:= ((c2<>'a') and (c2<>'A') and (c2<>'e') and (c2<>'E') and (c2<>'i') and (c2<>'I') and (c2<> 'o') and (c2<>'O') and (c2<>'u') and (c2<>'U'));
    esConsonante:=(((c2>='B') and (c2<='Z')) or ((c2>='b') and (c2<='z')) and ok);
end;

procedure cumpleA (var condicionA:boolean);
var
    caracter1:char;
begin
    writeln('Ingrese caracteres: '); readln(caracter1);

    while ((caracter1 <> '$') and condicionA) do
        if (not esVocal(caracter1)) then
            condicionA:=false
        else
            readln(caracter1);
end;

procedure cumpleB (var condicionB:boolean);
var
    caracter2:char;
begin
    writeln('Ingrese caracteres: '); readln(caracter2);

    while ((caracter2 <> '#') and condicionB) do
        if (not esConsonante(caracter2)) then
            condicionB:=false
        else
            readln(caracter2);
end;

var
    condA, condB:boolean;
begin
    condA:=true;
    condB:=true;

    cumpleA(condA);
    if (not condA) then
        writeln('El patron falla en A')
    else
        cumpleB(condB);
    
    if(not condB) then
        writeln('El patron falla en B')
    else if (condB and condA) then
        writeln('El patron se cumple');

end.