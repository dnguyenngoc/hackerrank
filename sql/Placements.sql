-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
select s.name
from friends as f
left join students as s on (s.id = f.id)
left join packages as p on (p.id = f.id)
left join packages as pp on (pp.id = friend_id)
where pp.salary > p.salary
order by pp.salary