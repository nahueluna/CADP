program ej9;
var
    signo:char;
    num,resultado:integer;
begin
    resultado:=0;
    
    write('Ingrese el signo de la operacion (solo suma o resta): '); readln(signo);

    case signo of
    '+':begin
            write('Ingrese un numero: '); readln(num);
            while(num<>0) do
                begin
                    resultado:=resultado+num;
                    write('Ingrese un numero: '); readln(num);
                end;
            writeln('El resultado de la secuencia es: ',resultado);
        end;
    
    '-':begin
            write('Ingrese un numero: '); readln(num);
            resultado:=num;
            while(num<>0) do
                begin
                    write('Ingrese un numero: '); readln(num);
                    resultado:=resultado-num;
                end;
            writeln('El resultado de la secuencia es: ',resultado);
        end
    else
        writeln('El signo ingresado no corresponde a los permitidos');
    end;
end.