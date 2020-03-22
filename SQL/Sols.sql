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

-- The Report  https://www.hackerrank.com/challenges/the-report/problem

select case when grade > 7 then s.name
            else NULL
        end name, grade, marks
from grades g, students s
where s.marks between min_mark and max_mark
order by grade desc,name, marks asc;

-- Top Competitors  https://www.hackerrank.com/challenges/full-score/problem

select h.hacker_id, h.name
from submissions s, challenges c, difficulty d, hackers h
where s.challenge_id = c.challenge_id 
      and c.difficulty_level = d.difficulty_level
      and s.score = d.score 
      and s.hacker_id = h.hacker_id
group by h.hacker_id, h.name
having count(*)>1
order by count(*) desc, h.hacker_id;

-- Ollivander's Inventory  https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

select id, age, coins_needed, power 
from (select w.id, p.age, w.coins_needed, w.power
, rank() over (partition by w.power, p.age order by w.coins_needed ) rnk
from wands w, wands_property p
where p.is_evil = 0 and p.code = w.code
) 
where rnk =1
order by power desc, age desc;

-- Challenges https://www.hackerrank.com/challenges/challenges/problem

select hacker_id, name, cnt 
from 
(select h.hacker_id, h.name, count(1) cnt
from hackers h, challenges c
where h.hacker_id = c.hacker_id 
group by h.hacker_id, h.name) x
where cnt in (select ct from (select ct, count(*) cst from (select hacker_id, count(*) ct from challenges group by hacker_id) group by ct) where cst =1 ) or cnt in (select max(ct) from (select count(*) ct from challenges group by hacker_id))
order by cnt desc, hacker_id asc;

-- Contest Leaderboard  https://www.hackerrank.com/challenges/contest-leaderboard/problem

select s.hacker_id, h.name, s.tot
from 
(select hacker_id, sum(scores) tot
 from 
(select hacker_id, max(score) scores
from submissions
group by hacker_id, challenge_id)
group by hacker_id) s, hackers h
where (s.hacker_id = h.hacker_id) and (s.tot > 0)
order by s.tot desc, s.hacker_id;

-- 











