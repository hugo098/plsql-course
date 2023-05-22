create or replace type producto as object(
    --ATRIBUTOS
    codigo number,
    nombre varchar2(100),
    precio number,
    
    --METODOS
    member function ver_producto return varchar2,
    member function ver_precio return number,
    member procedure cambiar_precio (precio number),
    static procedure auditoria
);

create or replace type body producto as
    member function ver_producto return varchar2 as
    begin
        return 'codigo: ' || codigo || 'nombre: ' || nombre || ' precio: ' || precio;
    end ver_producto;
    ---------------------------------------------------------
    member function ver_precio return number as
    begin
        return precio;
    end ver_precio;
    ---------------------------------------------------------
    member procedure cambiar_precio(precio number) as
    begin
        self.precio:=precio;
    end cambiar_precio;
    ---------------------------------------------------------
    static procedure auditoria as
    begin
        insert into auditoria values(user, sysdate);
    end;
end;


DECLARE
    prod1 producto;
BEGIN
    producto.auditoria();
END;

select * from auditoria;
