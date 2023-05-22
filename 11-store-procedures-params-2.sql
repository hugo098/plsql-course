create or replace procedure employee_admission(
document in char,
first_name in varchar2,
last_name in varchar2
)
as
begin
    insert into employees 
    values(document, first_name, last_name, null, current_date);
end employee_admission;


execute employee_admission('3333333', 'Hugo', 'Rodriguez');

select * from employees;

drop procedure employee_admission;