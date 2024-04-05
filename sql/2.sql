SET SERVEROUTPUT ON;
DECLARE
a number;
b number;
c number;
begin
a:=&a;
b:=&b;
c:=&c;
if(a>b and a>c)then
dbms_output.put_line('a is maximum'||a);
elsif(b>a and b>c)then
dbms_output.put_line('b is maximum'||b);
else
dbms_output.put_line('c is maximum'||c);
end if;
end;
/