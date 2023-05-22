set serveroutput on;
--Variable compuesta basada a nivel de cursor
declare
    cursor cu_productos is
        select * from productos;
    var_productos cu_productos%rowtype;
    
begin
    open cu_productos;
    loop
        fetch cu_productos into var_productos;
        exit when cu_productos%notfound;
        dbms_output.put_line(var_productos.codigo || ' ' || var_productos.nombre);
    end loop;    
end;