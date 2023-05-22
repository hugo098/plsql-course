--CLAUSULA UNDER
--EL CLASE PADRE DEBE SER DE TIPO NOT FINAL
create or replace type comestibles under producto(
    caducidad date,
    
    member function ver_caducidad return varchar2
);


create or replace type body comestibles as
    member function ver_caducidad return varchar2 as
    begin   
        return caducidad;
    end;
end;


DECLARE
    valor1 comestibles:=comestibles(500, 'manzana', 50, sysdate());
BEGIN
    dbms_output.put_line(valor1.ver_caducidad());
    dbms_output.put_line(valor1.ver_producto());
END;

--------------------------------------------------------

create or replace type producto as object(
    --ATRIBUTOS
    codigo number,
    nombre varchar2(100),
    precio number,
    
    --METODOS
    member function ver_producto return varchar2,
    member function ver_precio return number,
    member function ver_precio(impuesto number) return number,
    member procedure cambiar_precio (precio number),
    static procedure auditoria,
    constructor function producto (n1 varchar2) return self as result
)
not final
;


