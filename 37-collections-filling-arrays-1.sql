set serveroutput on;

declare 
    type departamentos is table of departments.department_name%type
    index by pls_integer;
    
    depa departamentos;
    
    cursor cur_dep is select * from departments;
    f pls_integer:=1;
    
begin
    for dep in cur_dep loop
        depa(f):=dep.department_name;
        f:=f+1;
    end LOOP;
    
    for i in 1..f-1 loop
        dbms_output.put_line(depa(i));
    end loop;
end;