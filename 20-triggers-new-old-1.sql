create or replace trigger tr_ingresalibros
before insert
on libros
for each row
begin
    if (:new.precio<=30) then
        insert into ofertas values(:new.codigo, :new.precio, user, sysdate);
    end if;
end tr_ingresalibros;


select * from libros;

select * from ofertas;

insert into libros values(155, 'Libro xd', 'hugo', 'test',28);