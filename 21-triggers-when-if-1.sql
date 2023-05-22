create or replace trigger tr_aumentasuledo
before update of sueldo
on empleados
for each row when(new.sueldo > old.sueldo)
begin
    insert into control values(user, sysdate, :old.documento, :old.sueldo, :new.sueldo);
end tr_aumentasuledo;

select * from empleados;
select * from control;

update empleados set sueldo=501 where documento='22333444';