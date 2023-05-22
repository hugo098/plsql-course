set serveroutput on;

declare
    greeting varchar2(12) := 'hello world';

begin
    dbms_output.put_line(UPPER(greeting));
    dbms_output.put_line(LOWER(greeting));
    dbms_output.put_line(INITCAP(greeting));
    
    dbms_output.put_line(SUBSTR(greeting, 1, 4));
    dbms_output.put_line(SUBSTR(greeting, 7));
    
    dbms_output.put_line(INSTR(greeting, 'd'));
end;