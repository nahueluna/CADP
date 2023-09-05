program ej3;
var
    x,y,z:integer;
begin
    writeln('Ingrese 3 numeros enteros: ');
    readln(x);
    readln(y);
    readln(z);

    if((x>y) and (x>z)) then
        begin
            if(y>z) then
                writeln(x,' ',y,' ',z)
            else
                writeln(x,' ',z,' ',y);
        end;
    
    if((y>x) and (y>z)) then
        begin
            if(x>z) then
                writeln(y,' ',x,' ',z)
            else
                writeln(y,' ',z,' ',x);
        end
    
    else
        begin
            if(x>y) then
                writeln(z,' ',x,' ',y)
            else
                writeln(z,' ',y,' ',x);
        end;
end.