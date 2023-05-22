--JSON_VALUE(campo_json.expresion_json);

select json_value(prod.datos, '$.direccion.calle') from productos1 prod;

select json_value(prod.datos, '$.telefonos[0]') from productos1 prod;

--JSON_QUERY(campo_json.expresion_json.on error);

select prod.datos from productos1 prod;

select JSON_QUERY(prod.datos,'$.direccion.piso') from productos1 prod;

select JSON_QUERY(prod.datos,'$.telefonos[0]') from productos1 prod;