-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

select salary*months, count(1) from employee where salary*months in (select max(salary*months) m_earn from employee) group by salary*months;
