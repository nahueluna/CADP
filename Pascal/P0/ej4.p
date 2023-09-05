program ej4;
const
    pi=3.14;
var
    D, radio, area, perim:real;
begin
    writeln('Ingrese el diametro del circulo:');
    readln(D);

    radio:=D/2;
    area:=pi*(radio*radio);
    perim:=D*pi;

    writeln('El circulo de diametro ',D:1:2,' tiene un radio de ',radio:1:2,', un area de ',area:1:2,' y un perimetro de ',perim:1:2);
end.