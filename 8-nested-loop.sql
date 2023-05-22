set serveroutput on;

declare
    loop1 number:=0;
    loop2 number;
    
begin
    loop
        dbms_output.put_line('-------------------------');
        dbms_output.put_line('External loop value = ' || loop1);
        dbms_output.put_line('-------------------------');
        loop2:=0;
        loop
            dbms_output.put_line('Nested loop value = ' || loop2);
            loop2:=loop2+1;
            exit when loop2=5;
        end loop;
        loop1:=loop1+1;
        exit when loop1=3;
    end loop;
end;