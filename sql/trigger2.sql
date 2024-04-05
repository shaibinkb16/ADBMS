declare
id constant number:=1;
sname student.Name%type;
m1 student.Mark1%type;
m2 student.Mark2%type;
total number:=0;
begin
select Name,Mark1,Mark2 into sname,m1,m2 from student where id=ID;
total:=m1+m2;
dbms_output.put_line('Total marks of student'||sname||'with id'||id||'is:'||total);
end;
/