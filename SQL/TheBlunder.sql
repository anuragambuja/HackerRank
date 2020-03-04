-- https://www.hackerrank.com/challenges/the-blunder/problem

select ceil(avg(salary) - avg(regexp_replace(salary,0,''))) from employees;
