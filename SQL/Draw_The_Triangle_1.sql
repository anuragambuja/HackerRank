-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

set serveroutput on;
declare
x varchar(60);
begin
    for i in reverse 1..20 loop
      select rpad('*',i*2-1,' *') into x from dual;
      dbms_output.put_line(x);
    end loop;
end;
/
