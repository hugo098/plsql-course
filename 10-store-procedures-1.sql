set serveroutput on;

create or replace procedure greeting
as
begin
    dbms_output.put_line('Hello world');
end greeting;


begin
    greeting;
end;

execute greeting;