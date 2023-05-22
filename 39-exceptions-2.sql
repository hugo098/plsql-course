set serveroutput on;
declare
    emple employees%rowtype;
    
begin
--    select * into emple from employees
--    where employee_id>1;
    INSERT INTO DEPARTMENTS VALUES(10, 'prueba', 300, 2000);
    dbms_output.put_line(10/0);
    
    
    exception
        WHEN NO_DATA_FOUND then
            dbms_output.put_line('ERROR: EMPLEADO NO EXISTE');
        WHEN TOO_MANY_ROWS then
            dbms_output.put_line('ERROR: DEMASIADOS EMPLEADOS');
        WHEN ZERO_DIVIDE then
            dbms_output.put_line('ERROR: DIVISION ENTRE 0 NO ES POSIBLE');
        WHEN DUP_VAL_ON_INDEX then
            dbms_output.put_line('ERROR: ESTE VALOR YA EXISTE');
        when others then
            dbms_output.put_line('ERROR NO DEFINIDO');
end;