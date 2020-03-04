-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem

select round(LONG_W,4) from station where LAT_N in (select max(LAT_N) from station where LAT_N < 137.2345);
