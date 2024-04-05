SET SERVEROUTPUT ON;
DECLARE
a number(2):=&valueofa;
b number(2):=&valueofb;
begin
if a<b then
dbms_output.put_line('Smaller Value is'||a);
elsif a>b then
dbms_output.put_line('Smaller Value is'||b);
else
dbms_output.put_line('Both no.are equal');
end if;
END;
/