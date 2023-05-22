create or replace procedure proc_01
is
begin
    null;
end;

select * from user_objects where object_name like '%PROC%';


create or replace procedure proc_02
is
begin
    proc_01;
end;

alter procedure proc_02 compile;