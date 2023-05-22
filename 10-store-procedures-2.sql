create or replace procedure increase_price
as
begin
    update books set price = price + (price * 0.1);
end increase_price;

select * from books;

execute increase_price;

select * from user_objects where object_type = 'PROCEDURE';

select * from user_objects where object_name like '%INCREASE_PRICE%';

DROP PROCEDURE GREETING;
