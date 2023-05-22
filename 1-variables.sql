set serveroutput on

DECLARE
    id              integer         := 50;
    name            varchar2(25)    := 'Hugo Rodriguez';
    nickname        char(10)        := 'hugo';
    salary          number(5)       := 30000;
    commission      decimal(4,2)    := 50.20;
    current_date    date            := (sysdate);
    date_           date            := to_date('2023/12/20', 'yyyy/mm/dd');
    greeting        varchar2(50)    default 'Buenos dias a todos';
    

BEGIN
    dbms_output.put_line('The variable value is: ' || id);
    dbms_output.put_line('The user name is: ' || name);
    dbms_output.put_line('The user nickname is: ' || nickname);
    dbms_output.put_line('The user salary is: ' || salary);
    dbms_output.put_line('The user comission is: ' || commission);
    dbms_output.put_line('The current date is: ' || current_date);
    dbms_output.put_line('The manual date is: ' || date_);
    dbms_output.put_line('Greeting is: ' || greeting);
END;