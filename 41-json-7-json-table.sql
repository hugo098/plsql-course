JSON_TABLE(campo_json.mapeo_de_columnas);

select j_pais from productos1 prod, json_table(prod.datos, '$' columns(j_pais path '$.pais'));


select j_pais from productos1 prod,
json_table(prod.datos, '$' columns(j_pais path '$.pais'));


select j_pais, j_ciudad, j_direccion from productos1 prod,
json_table(prod.datos, '$' columns(j_pais path '$.pais',
                                   j_ciudad path '$.ciudad',
                                   j_direccion path '$.direccion.calle'));
                                   
                                   
create view datos_direccion as                                    
select j_pais, j_ciudad, j_direccion from productos1 prod,
json_table(prod.datos, '$' columns(j_pais path '$.pais',
                                   j_ciudad path '$.ciudad',
                                   j_direccion path '$.direccion.calle'));
                                
select * from datos_direccion;
  