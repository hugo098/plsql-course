create or replace trigger tr_control_empleados
before insert or update or delete
on empleados
for each row
begin
    if inserting then
        if(:new.sueldo>5000)then
            raise_application_error(-20000, 'SUELDO NO PUEDE SUPERAR LOS $5000.00');
        else
            insert into control values(user, sysdate, 'INSERCION');
        end IF;
     end IF;
    if(deleting) then
        if(:old.seccion='Gerencia') then
            raise_application_error(-20000, 'NO SE PUEDE ELIMINAR PUESTO DE GERENCIA');
        end if;
        insert into control values(user, sysdate, 'BORRADO');
    end if;
        
    if updating('documento') then
         raise_application_error(-20000, 'NO SE PUEDE ACTUALIZAR NUMERO DE DOCUMENTO');
    end if;
end tr_control_empleados;


select * from empleados;
select * from control;

TRUNCATE table control

insert into empleados values('594841', 'hugo', 'hugo', 'test', 'INFORMATICA', 4000);
update empleados set documento = 'dsa';

delete from empleados where seccion= 'Gerencia'