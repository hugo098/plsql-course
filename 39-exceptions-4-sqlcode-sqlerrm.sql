set serveroutput on;
declare
   emple employees%rowtype;
   codigo number;
   mensaje varchar2(100);
begin
    select * into emple from employees;
    dbms_output.put_line(emple.salary);
    exception
        when others then
            dbms_output.put_line(sqlcode);
            dbms_output.put_line(sqlerrm);
            codigo:=sqlcode;
            mensaje:=sqlerrm;
            INSERT INTO hr.ERRORES VALUES(codigo, mensaje);
            COMMIT;
end;

select * from errores;