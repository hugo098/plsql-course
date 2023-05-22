create or replace trigger tr_actualiza_datos
before insert
on empleados
for each row
begin
    :new.apellido := upper(:new.apellido);
    if :new.sueldo is null then
        :new.sueldo := 0;
    end if;
end tr_actualiza_datos;


select * from empleados;

insert into empleados values('25666777', 'lopez', 'luisa', 'secretaria', null);