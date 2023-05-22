set serveroutput on;

declare
   type a_countries is varray(5) of varchar2(20);
   name_ a_countries;
    
begin
    name_:=a_countries('Argentina', 'Peru', 'Suiza', 'Togo', 'Belice');
    for f in 1..5 loop
        dbms_output.put_line('Name:' || name_(f));
    end loop;
end;