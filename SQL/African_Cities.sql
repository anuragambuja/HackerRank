-- https://www.hackerrank.com/challenges/african-cities/problem

select name from city where CountryCode in (select code from country where lower(continent) = 'africa');
