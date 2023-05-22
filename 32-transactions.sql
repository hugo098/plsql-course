select * from clientes;
rollback;
commit;


insert into  clientes values (7,'Esther Sanchez',27,'Calle sexta numero 006',5500.00 ); 
insert into  clientes values (8,'Antonio Peralta',21,'Calle septima numero 007',4500.00 ); 

savepoint punto1;

update clientes
set salario = salario+100;
commit;

rollback to punto1;