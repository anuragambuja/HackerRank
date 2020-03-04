-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

select distinct city from station where regexp_like(lower(substr(city,length(city),1)),'[aeiou]');
select distinct city from station where lower(substr(city,length(city),1)) in ('a','e','i','o','u');
