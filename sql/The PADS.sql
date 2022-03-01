-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

select CONCAT(o.name, '(', LEFT(o.occupation, 1), ')')  from OCCUPATIONS as o order by o.name asc;

select temp.total
from 
(
    select 
        concat('There are a total of ', count(o.occupation), ' ', lower(o.occupation), 's.') as total,
        case 
            when o.occupation = 'Doctor' then 1
            when o.occupation = 'Singer' then 2
            when o.occupation = 'Actor' then 3
            else 4
        end as order_stt
    from OCCUPATIONS as o 
    group by o.occupation
) as temp 
order by temp.total, temp.order_stt;
