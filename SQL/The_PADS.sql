--https://www.hackerrank.com/challenges/the-pads/problem

select concat(concat(name,'('),concat(substr(occupation,1,1),')')) from occupations order by name asc;
select concat(concat('There are a total of ', count(1)),concat(' ',concat(lower(occupation), 's.'))) from occupations group by occupation order by count(occupation), occupation;
