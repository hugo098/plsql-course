--JSON_EXISTS(campo_json.expresion_json.on_error);

select datos from productos1;

select p1.datos from productos1 p1 where json_exists(p1.datos, '$.ciudad');

select p1.datos from productos1 p1 where json_exists(p1.datos, '$.direccion.calle');

select p1.datos from productos1 p1 where json_exists(p1.datos, '$.telefonos[0]');

