select trigger_name, triggering_event, table_name, status
from user_triggers
where table_name='EMPLEADOS';

alter trigger tr_aumentasuledo disable;

alter trigger tr_aumentasuledo enable;


select * from empleados;

select * from control;

update empleados set sueldo=2000 where documento='22333444';
