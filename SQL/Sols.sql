set serveroutput on;

-- New Companies -  https://www.hackerrank.com/challenges/the-company/problem

select c.company_code, c.founder, count(distinct l.lead_manager_code),  count(distinct s.senior_manager_code),  count(distinct m.manager_code),  count(distinct e.employee_code) 
from company c
left join lead_manager l 
on c.company_code = l.company_code
left join senior_manager s
on l.lead_manager_code = s.lead_manager_code
left join manager m
on s.senior_manager_code = m.senior_manager_code
left join employee e
on m.manager_code = e.manager_code
group by c.company_code, c.founder order by c.company_code;

-- 15 Days of Learning SQL - https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem






