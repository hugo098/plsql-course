set serveroutput on;

begin
    for f in reverse 0..5 loop        
        dbms_output.put_line('f value is ' || f);
    end loop;
end;