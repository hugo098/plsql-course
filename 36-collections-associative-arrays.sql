set serveroutput on;
declare
    type departamentos is table of departments.department_name%type
    index by pls_integer;
    
    depto departamentos;
    
    type empleados is table of employees%rowtype
    index by pls_integer;
    
    emple empleados;
    
    type nombre is table of employees.first_name%type
    index by varchar2(2);
    
    nom nombre;
    
begin
    depto(1):='Hola';
    depto(2):='Adios';
    depto(50):='otro valor';
    depto(-150):='next valor';
    
    nom('aa'):='hola mundo';
    
    dbms_output.put_line(nom('aa'));
    dbms_output.put_line(depto(-150));
    
end;
    
    select * from departments;
    select * from employees;