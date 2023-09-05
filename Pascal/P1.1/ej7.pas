program ej7;
var
    code:integer;
    oldPrice,newPrice,aumento:real;
    condicion:boolean;
begin
    aumento:=0;
    condicion:=true;
    
    while(condicion) do
    begin
        write('Ingrese el codigo del producto: ');
        readln(code);
        write('Ingrese el precio actual del producto: ');
        readln(oldPrice);
        write('Ingrese el nuevo precio del producto: ');
        readln(newPrice);   

        aumento:=((newPrice-oldPrice)*100)/oldPrice;

        if(aumento>10.0) then
            writeln('El aumento de precio del producto ',code,' supera el 10%')
        else
            writeln('El aumento de precio del producto ',code,' no supera el 10%');
        
        if(code=32767) then
        begin
            condicion:=false;
        end;
    end;

end.
