create or replace function f_day_of_week(number int)
return varchar2
is
day varchar2(25);
begin
    day:='';
    case number
        when 1 then day:='Monday';
        when 2 then day:='Thursday';
        when 3 then day:='Wednesday';
        when 4 then day:='Tuesday';
        when 5 then day:='Friday';
        when 6 then day:='Saturday';
        when 7 then day:='Sunday';
        else day:='INCORRECT NUMBER';
    end case;
    return day;
end;


select f_day_of_week(1) from dual;