CREATE TABLE EJEMPLO(
    codigo int,
    fichero clob
);


insert into ejemplo values(1, '{"columna1": "prueba"}');
insert into ejemplo values(2, '{"columna1": "test"}');
insert into ejemplo values(3, '<doc><col1>prueba</col1></doc>');


select * from ejemplo where fichero is not json;

select * from ejemplo;