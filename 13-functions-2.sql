create or replace function f_cost(value number)
return varchar
is
cost varchar(20);
begin
    cost:='';
    if value<=500 then
        cost:='eco';
    else cost:='expensive';
    end if;
    return cost;
end;
    


select title, author, price, f_cost(price) from books;