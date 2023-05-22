create or replace trigger tr_employee_admission
before insert 
on employees
for each row
begin
    insert into control values(user, sysdate);
end tr_employee_admission;

select * from control;

insert into employees values('22333444','ACOSTA','Ana',null,current_date);
insert into employees values('22777888','DOMINGUEZ','Daniel',null,current_date);
insert into employees values('22999000','FUENTES','Federico',null,current_date);
insert into employees values('22555666','CASEROS','Carlos',null,current_date);
insert into employees values('23444555','GOMEZ','Gabriela',null,current_date);
insert into employees values('23666777','JUAREZ','Juan',null,current_date);

drop trigger tr_employee_admission;
