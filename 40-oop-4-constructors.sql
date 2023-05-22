create or replace type producto as object(
    --ATRIBUTOS
    codigo number,
    nombre varchar2(100),
    precio number,
    
    --METODOS
    member function ver_producto return varchar2,
    member function ver_precio return number,
    member procedure cambiar_precio (precio number),
    static procedure auditoria,
    constructor function producto (n1 varchar2) return self as result
);

create or replace type body producto as
    member function ver_producto return varchar2 as
    begin
        return 'codigo: ' || codigo || ' nombre: ' || nombre || ' precio: ' || precio;
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
    ---------------------------------------------------------
    constructor function producto (n1 varchar2) return self as result
    is
    begin
        self.nombre:=n1;
        self.precio:=null;
        self.codigo:=sq1.nextval;
        return;
    end;
end;


DECLARE
    valor1 producto;
BEGIN
    valor1:=producto('manzanas');
    dbms_output.put_line(valor1.ver_precio());
    dbms_output.put_line(valor1.ver_producto());
    valor1.cambiar_precio(20);
    dbms_output.put_line(valor1.ver_precio());
END;

