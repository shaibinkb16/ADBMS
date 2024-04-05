set serveroutput on;
declare
cursor stud_cursor is select * from student;
stud_rec stud_cursor%rowtype;
total number:=0;
begin
open stud_cursor;
loop
fetch stud_cursor into stud_rec;
exit when stud_cursor%notfound;
total:=stud_rec.Mark1+stud_rec.Mark2;
dbms_output.put_line('Total marks of student '||stud_rec.Name||' is: '||total);
end loop;
end;
/