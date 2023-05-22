create or replace function f_datoempleados(v_doc1 in number, v_doc2 in number)
return sys_refcursor
is
v_ref sys_refcursor;
begin
    open v_ref for select * from empleados
    where documento in (v_doc1,v_doc2);
    return v_ref;
end;

select f_datoempleados(22222222, 23333333) from dual;

var rc1 refcursor;
exec :rc1:=f_datoempleados(22222222, 23333333);
print rc1;

select * from empleados;