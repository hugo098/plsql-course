set serveroutput on;

begin
    update empleados set sueldo = 10000
    where documento = '23333333';
    if sql%notfound then
        dbms_output.put_line('NO EXISTE REGISTRO PARA MODIFICAR');
    END IF;
end;

select * from empleados;