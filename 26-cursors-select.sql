set serveroutput on;

declare
    v_empleados empleados%rowtype;
begin
    for v_empleados in (select * from empleados) loop
        dbms_output.put_line(v_empleados.nombre || v_empleados.sueldo);
    end loop;
end;

select * from empleados;