select * from user_dependencies;

select * from user_dependencies where name = 'EMPLOYEES';

select * from user_dependencies where name = 'EMP_DETAILS_VIEW';

select * from user_dependencies where referenced_name = 'EMPLOYEES';

select * from user_objects;

select status, count(*) from user_objects
group by status;


create table prueba(
    campo1 number,
    campo2 number
);

select * from user_objects where object_name like '%V_PRUEBA%';


create or replace view v_prueba
as
select campo1 from prueba;


ALTER TABLE PRUEBA MODIFY CAMPO2 VARCHAR2(200);

select * from v_prueba;

alter table prueba drop column campo1;
