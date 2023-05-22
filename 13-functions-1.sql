create or replace function f_test(value number)
return number
is
begin
    return value*2;
end;

select f_test(2) as total from dual;