set serveroutput on;
create or replace trigger stud_trig after insert on student
for each row
declare
tot number:=0;
begin
tot:=:new.Mark1+:new.Mark2;
insert into stud_mark values(:new.ID,tot);
dbms_output.put_line('After insert triger activated:');
end;
/
