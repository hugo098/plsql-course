set serveroutput on;

declare 
    type empleados is table of employees%rowtype
    index by pls_integer;
    
    emple empleados;
    
    cursor cur_empl is select * from employees where salary>5000;
    z pls_integer:=1;
    
    
begin

    for emp in cur_empl loop
        emple(z):=emp;
        z:=z+1;
    end loop;
    
    for i in 1..z-1 loop
        dbms_output.put_line(emple(i).first_name);
    end loop;
    
end;
