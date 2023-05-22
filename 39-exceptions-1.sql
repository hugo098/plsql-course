set serveroutput on;
declare
    emple employees%rowtype;
    
begin
    select * into emple from employees
    where employee_id=1000;
    dbms_output.put_line(emple.first_name);
    
    exception
        WHEN NO_DATA_FOUND then
            dbms_output.put_line('ERROR: EMPLEADO NO EXISTE');
        when others then
            null;
end;