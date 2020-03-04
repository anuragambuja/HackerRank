-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem

select * from (select city, length(city) from station order by length(city) desc, city asc ) where rownum < 2 ;
select * from (select city, length(city) from station order by length(city) asc, city asc ) where rownum < 2 ;
