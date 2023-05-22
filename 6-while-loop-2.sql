set serveroutput on;

declare
    number_ number(2):=0;
    result_ number;

begin
    while number_ <= 10 loop
        result_:= 3 * number_;
        dbms_output.put_line('3x' || number_ || ' = ' || result_);
        number_:=number_+1;
    end loop;
end;