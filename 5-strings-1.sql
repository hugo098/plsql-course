set serveroutput on;

declare
    name        varchar2(20);
    address     varchar2(30);
    details     clob;
    election    char(1);

begin
    name:= 'hugo ivan';
    address:= 'first avenue';
    details:= 'This is the clob detail
                and this is a new line';
    election:= 'y';
    
    
    if (election = 'y') then
        dbms_output.put_line(name);
        dbms_output.put_line(address);
        dbms_output.put_line(details);
    end if;

end;