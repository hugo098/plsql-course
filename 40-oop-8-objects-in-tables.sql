create table tienda(
    codigo number,
    estanteria number,
    producto producto
);

desc producto;

insert into tienda values(1,10,producto(100, 'limon',90));

select * from tienda;

select t.producto.precio from tienda t;

select t.producto.ver_producto() from tienda t;

