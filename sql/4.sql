SET SERVEROUTPUT ON;
DECLARE
n NUMBER(5):=&n;
s NUMBER:=0;
r NUMBER(2):=0;
BEGIN
WHILE n!=0
LOOP
r:=mod(n,10);
s:=s+r;
n:=trunc(n/10);
END LOOP;
DBMS_OUTPUT.PUT_LINE(' sum of digitss of given number is' ||s);
END;
/