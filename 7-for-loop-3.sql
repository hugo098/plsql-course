set serveroutput on;

begin
    for f in 0..10 loop        
        dbms_output.put_line('2x' || f || '=' || (f*2));
    end loop;
end;