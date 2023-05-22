create or replace procedure author_book(atitle in varchar2)
as
v_author varchar2(20);
begin
  select author into v_author from books where title=atitle;
  insert into table1
    select title, price from books
    where author=v_author;
end author_book;

execute author_book('El quijote');

select * from table1;