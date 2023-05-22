create or replace trigger tr_actualizalibros
before update of precio
on libros
for each row
begin
    if(:old.precio<=30) and (:new.precio>30) then
        delete from ofertas where codigo=:old.codigo;
    end if;
    if(:old.precio>30) and (:new.precio<=30) then
        insert into ofertas values(:new.codigo, :new.precio, user, sysdate);
    end if;
end tr_actualizalibros;

select * from libros;
select * from ofertas;

update libros set precio=30 where codigo=155;