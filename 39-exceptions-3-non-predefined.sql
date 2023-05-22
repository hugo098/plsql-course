set serveroutput on;
declare
    miexcep exception;
    pragma exception_init(miexcep, -937);
    valor1 number;
    valor2 number;
    
begin
    select employee_id, sum(salary) into valor1, valor2 from employees;
    dbms_output.put_line(valor1);
    exception
        when miexcep then
            dbms_output.put_line('FUNCION DE GRUPO INCORRECTA');
        when others then
            dbms_output.put_line('ERROR INDEFINIDO');
end;