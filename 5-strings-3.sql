set serveroutput on;

declare
    greeting varchar2(30) := '####hello world####';

begin
    dbms_output.put_line(LTRIM(greeting, '#'));
    dbms_output.put_line(RTRIM(greeting, '#'));
    dbms_output.put_line(TRIM('#' from greeting));
end;