create or replace procedure increase_salary(year in number, percentage in number)
as
begin
    update employees set salary=salary+(salary*percentage/100)
    where (extract(year from current_date)-extract(year from admission_date)) > year;
end increase_salary;


execute increase_salary(10, 20);

select * from employees;