create or replace trigger tr_control_empleados
before insert or update or delete
on empleados
begin
    if inserting then
        insert into control_empleados values(user,sysdate,'ingreso');
    end if;
    if deleting then
        insert into control_empleados values(user,sysdate,'borrado');
    end if;
    if updating then
        insert into control_empleados values(user,sysdate,'actualizacion');
    end if;
end tr_control_empleados;

select * from empleados;
select * from control_empleados;

insert into empleados values(22656698,'GONZALES','JOSE','GERENCIA',3000);
insert into empleados values(22655568,'RODRIGUEZ','MANUEL','TALLER',1000);
update empleados set sueldo=2000 where documento=23444555;
delete from empleados where documento=23666777;