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

select t.submission_date, t.cnt, b.hacker_id, b.name
from 
(select submission_date, count(distinct hacker_id) as cnt
from 
(select s.*, dense_rank() over(order by submission_date) as date_rank, 
dense_rank() over(partition by hacker_id order by submission_date) as hacker_rank 
from submissions s ) a 
where date_rank = hacker_rank 
group by submission_date
) t , 
(select submission_date, hacker_id, name 
from 
 (
select f.submission_date, f.name, f.hacker_id, row_number() over(partition by f.submission_date order by f.cnt desc, f.hacker_id asc) rnk from
(
    select s.submission_date , s.hacker_id , h.name, count(1) cnt
    from submissions s , hackers h
    where s.hacker_id = h.hacker_id
    group by s.submission_date, s.hacker_id, h.name
) f
)
where rnk =1) b
where t.submission_date = b.submission_date
order by submission_date;

-- 




