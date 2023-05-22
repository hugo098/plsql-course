set serveroutput on;

declare
    filas number(2);

begin
    update empleados set sueldo = sueldo + 500
    where sueldo >=3000;
    
    if sql%notfound then
        dbms_output.put_line('==NO HAY EMPLEADOS DISPONIBLES==');
    elsif sql%found then
        filas:=sql%rowcount;
        dbms_output.put_line(filas || ': EMPLEADOS ACTUALIZADOS');
    end if;
end;

select * from empleados;