-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem

select round(sqrt((a-b)*(a-b)+(c-d)*(c-d)), 4)
from (select min(LAT_N) a, max(LAT_N) b, min(LONG_W) c, max(LONG_W) d from station);
