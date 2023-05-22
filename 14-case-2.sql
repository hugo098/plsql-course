create or replace function f_quarter(date date)
return varchar2
is
month varchar2(20);
quarter number;
begin
    month:=extract(month from date);
    quarter:=0;
    case month
        when 1 then quarter:=1;
        when 2 then quarter:=1;
        when 3 then quarter:=1;
        when 4 then quarter:=2;
        when 5 then quarter:=2;
        when 6 then quarter:=2;
        when 7 then quarter:=3;
        when 8 then quarter:=3;
        when 9 then quarter:=3;
        else quarter:=4;
    end case;
    return quarter;
end;


select f_quarter(to_date('2023/05/20', 'yyyy/mm/dd')) from dual;

