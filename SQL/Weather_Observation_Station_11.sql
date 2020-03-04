-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem

select distinct city from station where regexp_like(lower(substr(city,length(city),1)),'[^aeiou]') or regexp_like(lower(substr(city,1,1)),'[^aeiou]');

select distinct city from station where lower(substr(city,length(city),1)) not in ('a','e','i','o','u') or lower(substr(city,1,1)) not in ('a','e','i','o','u');
