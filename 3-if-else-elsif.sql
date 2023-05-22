set serveroutput on;

declare
--    a  number(2) := 10;
--    b  number(2) := 30;
    number_ number(3) := 100;
begin
--    if (a > b) then
--        dbms_output.put_line(a || ' is bigger than ' || b );
--    else
--        dbms_output.put_line(b || ' is bigger than ' || a );
--    end if;
    if (number_ = 10) then
        dbms_output.put_line('number is 10');
    elsif (number_ = 20) then
        dbms_output.put_line('number is 20');
    elsif (number_ = 30) then
        dbms_output.put_line('number is 30');
    else
        dbms_output.put_line('none of the values were found');
    end if;
    dbms_output.put_line('The exact value of the variable is: ' || number_);
end;