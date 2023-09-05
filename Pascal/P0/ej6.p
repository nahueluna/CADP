program ej6;
const
    dolar=207.43;
var
    pago:real;
begin
    writeln('Ingrese el monto de la transaccion en dolares: ');
    readln(pago);
    writeln('El total a pagar en pesos es de $',(pago*207.43)*1.04:1:2);
end.