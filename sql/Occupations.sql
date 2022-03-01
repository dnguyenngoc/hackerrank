-- https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

select 
    max(if(t.occupation = 'Doctor', t.name, NULL)) AS Doctor,
    max(if(t.occupation = 'Professor', t.name, NULL)) AS Professor,
    max(if(t.occupation = 'Singer', t.name, NULL)) AS Singer,
    max(if(t.occupation = 'Actor', t.name, NULL)) AS Actor
from (
    select 
        *, 
        row_number() over (partition by occupation order by name) as rn -- tạo phân vùng occupation và đánh số dựa theo order by
    from OCCUPATIONS 
) as t group by rn    

