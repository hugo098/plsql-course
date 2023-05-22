create or replace package los_productos as
procedure caracteristicas(v_codigo productos.codigo%type);
function f_precio(v_codigo int)
return number;

end los_productos;


create or replace package body los_productos as
    procedure caracteristicas(v_codigo productos.codigo%type) is
        v_producto productos.nombre%type;
        v_precio productos.precio%type;
    begin
        select nombre, precio into v_producto, v_precio
        from productos where codigo = v_codigo;
        dbms_output.put_line('Articulo ' || v_producto);
        dbms_output.put_line('Precio ' || v_precio);
    end caracteristicas;
    ---------------------------------------------------------
    function f_precio(v_codigo int)
    return number 
    as
        v_precio number;
    begin
        select precio into v_precio
        from productos where codigo = v_codigo;
        return v_precio;
    end f_precio;
  
end los_productos;


select los_productos.f_precio(4) as Precio from dual;
