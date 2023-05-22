set serveroutput on;

declare
    message constant varchar2(30) := 'Good morning';
    number_ constant number(6)    := 30000;
    
begin
    message := 'goodbye';
    dbms_output.put_line(message);
    dbms_output.put_line(number_);
end;