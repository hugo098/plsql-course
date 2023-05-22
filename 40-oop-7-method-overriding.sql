create or replace type comestibles under producto(
    caducidad date,
    
    member function ver_caducidad return varchar2,
    overriding member function ver_precio return number
);


create or replace type body comestibles as
    member function ver_caducidad return varchar2 as
    begin   
        return caducidad;
    end;
    ---------------------------------------------
    overriding member function ver_precio return number as
    begin
        return precio + 10;
    
    end;
end;


DECLARE
    valor1 comestibles:=comestibles(500, 'manzana', 50, sysdate());
BEGIN
    dbms_output.put_line(valor1.ver_caducidad());
    dbms_output.put_line(valor1.ver_producto());
    dbms_output.put_line(valor1.ver_precio());
END;

