-- https://www.hackerrank.com/challenges/occupations/problem

select doc, prof, sin, act from 
(select row_number() over (partition by occupation order by name) rn,
        name, 
        occupation
from occupations) 
pivot (max(name) for occupation in ('Doctor' as doc, 
                                    'Professor' as prof, 
                                    'Singer' as sin, 
                                    'Actor' as act))
order by rn;
