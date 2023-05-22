create table productos(
    codigo int,
    nombre varchar2(200),
    datos json
)

desc productos;

insert into productos values(1, 'ejemplo3', '{
                                            "pais": "belice",
                                            "direccion": {
                                                "calle": "1234"
                                                }
                                            }');

select * from productos;

select p.datos.pais from productos p;

select p.datos.direccion.calle from productos p;