CREATE TABLE productos (
    codigo INT,
    nombre VARCHAR2(2000),
    datos  VARCHAR(4000)
);

--BLOB
--CLOB

INSERT INTO productos VALUES (
    1,
    'ejemplo',
    '{
        "pais": "argentina",
        "ciudad": "buenos aires",
        "poblacion": 50000000        
    }'
);

select * from productos;