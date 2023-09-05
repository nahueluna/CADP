program ej8;
const
    dias=5;
var
    monto,totalDia,totalMes,maxMonto:real;
    i,maxDia:integer;
begin
    totalDia:=0;
    totalMes:=0;
    maxMonto:=-1;

    for i:= 1 to dias do
        begin
            repeat
                write('Ingrese el monto de la venta: '); readln(monto);
                totalDia:=totalDia+monto;
            until(monto=0);
            writeln('Las ventas del dia ',i,' fueron de $',totalDia:1:2);
            
            if(totalDia>maxMonto) then
                begin
                    maxMonto:=totalDia;
                    maxDia:=i;
                end;
                
            totalMes:=totalMes+totalDia;
            totalDia:=0;
        end;
    
    writeln('El monto total del mes es de: $',totalMes:1:2);
    writeln('La mayor cantidad de ventas se realizo en el dia ',maxDia,' del mes');
end.