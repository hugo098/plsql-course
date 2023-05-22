set serveroutput on;
--Variable compuesta basada en una tabla
declare
    reg_productos productos%rowtype;
begin
    select * into reg_productos from productos
    where codigo=3;
    dbms_output.put_line('CARACTERISTICA DEL PRODUCTO');
    dbms_output.put_line('codigo de producto: ' || reg_productos.codigo);
    dbms_output.put_line('nombre de producto: ' || reg_productos.nombre);
    dbms_output.put_line('precio de producto: ' || reg_productos.precio);
    dbms_output.put_line('serial de producto: ' || reg_productos.codigo_fabricante);
end;