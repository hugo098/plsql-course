set serveroutput on;

declare
    v_nom productos.nombre_producto%type;
    v_pre productos.precio%type;
    
    cursor c_productos (idprod productos.id_producto%type)
    is
    select nombre_producto, precio from productos
    where id_producto = idprod;

begin
    open c_productos(2);
    loop
        fetch c_productos into v_nom, v_pre;
        exit when c_productos%notfound;
        dbms_output.put_line('Articulo: ' || v_nom || ', precio: ' || v_pre);
    end loop;
    close c_productos;
end;


