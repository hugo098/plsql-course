set serveroutput on;
declare
    region1 regions%rowtype;
    region_control regions.region_id%type;
    
begin
    region1.region_id:=100;
    region1.region_name:='Africa';
    select region_id into region_control from regions
    where region_id = region1.region_id;
    dbms_output.put_line('LA REGION YA EXISTE');
    EXCEPTION
        when no_data_found then
            insert into regions values(region1.region_id, region1.region_name);
            commit;
end;
