create or replace trigger tr_newbooks
before insert
on books
begin
    insert into control values(user, sysdate);
end tr_newbooks;

SELECT * FROM USER_TRIGGERS WHERE TRIGGER_NAME='TR_NEWBOOKS';