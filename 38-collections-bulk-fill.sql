set SERVEROUTPUT on;

declare
       
    type empleados is table of employees%rowtype
    index by pls_integer;
    
    emples empleados;  
    
BEGIN    
   select * bulk collect into emples
   from employees where salary>5000;
    
    for i in 1..emples.count() loop
        dbms_output.put_line(emples(i).first_name);
    end loop;
end;