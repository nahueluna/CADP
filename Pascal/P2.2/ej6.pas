program ej6;
const
    CantProd=100;

procedure PantCaro (tipoPant:string; var codigoMaxPant:integer; var precioMaxPant:real; precioPant:real; codigoPant:integer);
begin
    if (tipoPant='pantalon') and (precioMaxPant<precioPant) then
    begin
        precioMaxPant:=precioPant;
        codigoMaxPant:=codigoPant;
    end;
end;

procedure ProdBaratos (codigo:integer; precio:real; var codigoMin1:integer; var codigoMin2:integer; var precioMin1:real; var precioMin2:real);
begin
    if (precio<precioMin1) then
    begin
        precioMin2:=precioMin1;
        precioMin1:=precio;

        codigoMin2:=codigoMin1;
        codigoMin1:=codigo;
    end

    else if (precio<precioMin2) then
    begin
        precioMin2:=precio;
        codigoMin2:=codigo;
    end;
end;

function PrecioProm (monto:real):real;
begin
    PrecioProm:=monto/CantProd;
end;

var
    tipoProducto:string;
    precioProductos,precioMinimo1,precioMinimo2,precioMaximoPant,sumaMontos:real;
    codigoProductos, codigoMinimo1, codigoMinimo2, codigoMaximoPant, i:integer;
begin
    precioMinimo1:=99999;
    precioMaximoPant:=-1;
    codigoMinimo1:=0;
    sumaMontos:=0;

    for i:=0 to CantProd do
    begin
            writeln('Ingrese el codigo del producto: '); readln(codigoProductos);
            writeln('Ingrese el tipo de producto: '); readln(tipoProducto);
            writeln('Ingrese el precio del producto: '); readln(precioProductos);

            ProdBaratos(codigoProductos,precioProductos,codigoMinimo1,codigoMinimo2,precioMinimo1,precioMinimo2);
            PantCaro(tipoProducto,codigoMaximoPant,precioMaximoPant,precioProductos,codigoProductos);
            sumaMontos:=sumaMontos+precioProductos;
    end;

    writeln('Los dos productos mas baratos son los de codigo: ',codigoMinimo1,' y ',codigoMinimo2);
    writeln('El codigo del pantalon mas caro es: ',codigoMaximoPant);
    writeln('El promedio de precios es: $',PrecioProm(sumaMontos):1:2);
end.

    
