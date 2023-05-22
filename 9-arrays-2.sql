set serveroutput on;

declare
   type names_array is varray(5) of varchar2(20);
   type age_array is varray(5) of integer;
   name_ names_array;
   age age_array;
   total integer;
    
begin
    name_:=names_array('Hugo', 'Ivan', 'pepe', 'Marta', 'hugo');
    age:=age_array(24,38,69,47,12);
    total:=name_.count;
    for f in 1..total loop
        dbms_output.put_line('Name='|| name_(f));
        dbms_output.put_line('Age='|| age(f));
    end loop;
end;