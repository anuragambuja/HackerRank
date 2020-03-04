-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select c.Continent, floor(avg(ci.population))
from country c, city ci
where c.code=ci.CountryCode
group by c.continent;
