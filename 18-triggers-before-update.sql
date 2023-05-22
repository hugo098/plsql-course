create or replace trigger tr_update
before update
on empleados
for each row
begin
    insert into control values (user, sysdate);
end tr_update;

update empleados set sueldo = sueldo + sueldo*0.1 where seccion='Secretaria';
select * from control;

select * from empleados;