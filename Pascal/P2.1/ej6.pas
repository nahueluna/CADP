program ej6;
procedure ParMayor;
var
  num,mayorPar:integer;
begin
  mayorPar:=-1;
  write('Ingrese un numero entero: '); readln(num);
  while(num>=0) do
    begin
      if ((num>mayorPar) and (num MOD 2 = 0)) then
        mayorPar:=num;
      write('Ingrese un numero entero: '); readln(num);
    end;
  write('El mayor par fue: ',mayorPar)
end;

begin
  ParMayor;
end.