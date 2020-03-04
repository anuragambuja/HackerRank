-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select case 
        when (a+b <= c) or (a+c <= b) or (b+c <= a) then 'Not A Triangle'
        when a=b and b=c then 'Equilateral'
        when a=b or c=b or a=c  then 'Isosceles'
        else 'Scalene'
     end
from triangles;
