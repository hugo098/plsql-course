create or replace trigger tr_delete_student
before delete
on alumnos
for each row
begin
    insert into control values(user, sysdate);
end tr_delete_student;


select * from control;

delete from alumnos where curso=5