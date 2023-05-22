create table productos(
    codigo int,
    nombre varchar2(200),
    datos json
)

desc productos;

insert into productos values(1, 'ejemplo3', '{
                                            "pais": "china",
                                            "direccion": {
                                                "calle": "1234"
                                            },
                                            "telefonos":[
                                                "123456",
                                                "546163",
                                                "4875415"                                            
                                                ]
                                            }');

select * from productos;

select p.datos.pais from productos p;

select p.datos.direccion.calle from productos p;

select p.datos.telefonos from productos p;

select p.datos.telefonos[0] from productos p;