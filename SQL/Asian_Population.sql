-- https://www.hackerrank.com/challenges/asian-population/problem

select sum(population) from city where countrycode in (select code from country where lower(continent) = 'asia');
