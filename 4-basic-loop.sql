set serveroutput on;

declare
    value number :=10;

begin
    loop
        dbms_output.put_line(value);
        value := value + 10;
--        if (value > 50) then
--            exit;
--        end if;
        exit when value > 50;
    end loop;
    dbms_output.put_line('final value is: ' || value);
end;