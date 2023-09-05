program ej5;
const
    precio=1.6;
var
    caramelos,clientes:integer;
begin
    writeln('Ingrese la cantidad de caramelos y clientes: ');
    readln(caramelos,clientes);

    writeln('A cada cliente le corresponden ',caramelos DIV clientes,' caramelos. El kioskero se queda con ', caramelos MOD clientes);
    writeln('El kioskero gana $',(caramelos DIV clientes)*precio:1:2);
end.