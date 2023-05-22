set serveroutput on;

select nombre, id_puesto, level
from empleados
start with nombre = 'Miguel Gonzales'
connect by prior id_empleado = id_supervisor;


select level, nombre, id_puesto,
sys_connect_by_path(nombre, ' > ') jerarquia
from empleados
start with id_supervisor is null
connect by prior id_empleado = id_supervisor;


select * from empleados;