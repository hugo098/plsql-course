set serveroutput on;

declare
    number_ number(2);

begin
    for number_ in 10..20 loop        
        dbms_output.put_line('number value is ' || number_);
    end loop;
end;