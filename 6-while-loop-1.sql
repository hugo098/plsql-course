set serveroutput on;

declare
    value number(2):=10;

begin

    while value < 20 loop
        dbms_output.put_line('Value is: ' || value);
        value := value + 1;
    end loop;    
end;