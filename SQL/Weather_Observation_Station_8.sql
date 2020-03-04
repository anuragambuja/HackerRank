-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

select distinct city from station where regexp_like(lower(substr(city,length(city),1)),'[aeiou]') and regexp_like(lower(substr(city,1,1)),'[aeiou]');


select distinct city from station where lower(substr(city,length(city),1)) in ('a','e','i','o','u') and lower(substr(city,1,1)) in ('a','e','i','o','u');
