-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
select f.x as x, f.y as y
from functions as f
inner join functions as f1 on (f1.x = f.y and f1.y = f.x)
where f1.x is not null and f1.y is not null
group by f.x, f.y
having count(f.x)>1 or f.x<f.y
order by f.x asc