create or replace package paq01 is
function fun01 return number;
procedure proc01;
procedure pro02;
end;

select * from user_objects where object_name='PAQ01';


create or replace package body paq01
is
    function fun01 return number is
    begin
        return 0;
    end;
    ------------------------------------
    procedure proc01 is
    begin
        null;        
    end;
    ----------------------------
    procedure pro02 is
    begin
        null;
    end;
end;
    

